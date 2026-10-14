/* CY7C68013A (FX2LP) as a USB Video Class camera for the stereo depth board.
 *
 * The FPGA writes the video into EP6 through the slave FIFO, already as UVC
 * payloads: per picture line a 2-byte payload header, the line's YUY2 bytes,
 * then PKTEND (a short packet ends the payload). This program only answers
 * the USB requests; no video byte passes through the 8051.
 *
 *   one configuration, a video function of two interfaces:
 *     0  VideoControl    camera terminal (1) -> output terminal (2), no controls
 *     1  VideoStreaming  bulk IN endpoint 6, one format: YUY2 WIDTH x HEIGHT at FPS
 *
 * Built with SDCC (see build.sh). Loaded into RAM by host/fx2_uvc.py, or
 * stored in the board's EEPROM so the chip starts it by itself.
 *
 * DEV_SECONDS > 0 makes a test build: after that many seconds it gives the
 * chip back to its built-in loader (04B4:8613), so that a new program can be
 * loaded without unplugging the cable.
 */
#include <stdint.h>

#ifndef WIDTH
#define WIDTH  400              /* left picture and depth side by side */
#endif
#ifndef HEIGHT
#define HEIGHT 148
#endif
#ifndef FPS
#define FPS    15
#endif
#ifndef DEV_SECONDS
#define DEV_SECONDS 0
#endif
#define VID 0x1209              /* pid.codes */
#define PID 0x0001              /* its test PID: a private device, not for distribution */

#define FRAME_BYTES   ((uint32_t)WIDTH * HEIGHT * 2)
#define INTERVAL      (10000000UL / FPS)                 /* in 100 ns */
#define BITRATE       (FRAME_BYTES * 8 * FPS)
#define PAYLOAD_MAX   1024UL                             /* a line with its header is shorter: every payload ends short */

/* ---- registers ------------------------------------------------------------ */
#define XREG(a) (*(__xdata volatile uint8_t *)(a))
#define CPUCS         XREG(0xE600)
#define IFCONFIG      XREG(0xE601)
#define PINFLAGSAB    XREG(0xE602)
#define FIFORESET     XREG(0xE604)
#define FIFOPINPOLAR  XREG(0xE609)
#define REVCTL        XREG(0xE60B)
#define EP2CFG        XREG(0xE612)
#define EP4CFG        XREG(0xE613)
#define EP6CFG        XREG(0xE614)
#define EP8CFG        XREG(0xE615)
#define EP2FIFOCFG    XREG(0xE618)
#define EP4FIFOCFG    XREG(0xE619)
#define EP6FIFOCFG    XREG(0xE61A)
#define EP8FIFOCFG    XREG(0xE61B)
#define EP6AUTOINLENH XREG(0xE624)
#define EP6AUTOINLENL XREG(0xE625)
#define PORTACFG      XREG(0xE670)
#define USBIE         XREG(0xE65C)
#define USBIRQ        XREG(0xE65D)
#define EPIRQ         XREG(0xE65F)
#define USBCS         XREG(0xE680)
#define TOGCTL        XREG(0xE683)
#define EP0BCH        XREG(0xE68A)
#define EP0BCL        XREG(0xE68B)
#define EP0CS         XREG(0xE6A0)
#define EP6CS         XREG(0xE6A5)
#define SUDPTRH       XREG(0xE6B3)
#define SUDPTRL       XREG(0xE6B4)
#define SUDPTRCTL     XREG(0xE6B5)
#define SETUPDAT      ((__xdata volatile uint8_t *)0xE6B8)
#define EP0BUF        ((__xdata volatile uint8_t *)0xE740)

__sfr __at(0x88) TCON;
__sfr __at(0x89) TMOD;
__sfr __at(0x8A) TL0;
__sfr __at(0x8C) TH0;
__sfr __at(0x8E) CKCON;

#define SYNCDELAY do { __asm__("nop"); __asm__("nop"); __asm__("nop"); __asm__("nop"); } while (0)

#define bmSUDAV   0x01
#define bmURES    0x10
#define bmHSGRANT 0x20
#define bmHSNAK   0x80
#define bmEP0BUSY 0x02
#define bmSTALL   0x01
#define bmDISCON  0x08
#define bmRENUM   0x02

/* ---- descriptors: at even addresses, as the chip's descriptor pointer wants ---- */
#define W(x)  ((x) & 0xFF), (((x) >> 8) & 0xFF)
#define D(x)  ((x) & 0xFF), (((x) >> 8) & 0xFF), (((x) >> 16) & 0xFF), (((x) >> 24) & 0xFF)

__code __at(0x2000) uint8_t dev_desc[18] = {
    18, 1, W(0x0200), 0xEF, 0x02, 0x01, 64, W(VID), W(PID), W(0x0100), 1, 2, 0, 1
};
__code __at(0x2020) uint8_t qual_desc[10] = {
    10, 6, W(0x0200), 0xEF, 0x02, 0x01, 64, 1, 0
};
#define VC_TOTAL (13 + 18 + 9)
#define VS_TOTAL (14 + 27 + 30 + 6)
#define CFG_TOTAL (9 + 8 + 9 + VC_TOTAL + 9 + VS_TOTAL + 7)
__code __at(0x2040) uint8_t cfg_desc[CFG_TOTAL] = {
    9, 2, W(CFG_TOTAL), 2, 1, 0, 0x80, 250,                    /* configuration: bus powered, 500 mA */
    8, 11, 0, 2, 0x0E, 0x03, 0x00, 2,                          /* interface association: video */
    9, 4, 0, 0, 0, 0x0E, 0x01, 0x00, 2,                        /* VideoControl interface */
    13, 0x24, 0x01, W(0x0100), W(VC_TOTAL), D(48000000UL), 1, 1,
    18, 0x24, 0x02, 1, W(0x0201), 0, 0, W(0), W(0), W(0), 3, 0, 0, 0,     /* camera terminal, id 1 */
    9, 0x24, 0x03, 2, W(0x0101), 0, 1, 0,                      /* output terminal, id 2, fed by 1 */
    9, 4, 1, 0, 1, 0x0E, 0x02, 0x00, 0,                        /* VideoStreaming interface, one bulk endpoint */
    14, 0x24, 0x01, 1, W(VS_TOTAL), 0x86, 0, 2, 0, 0, 0, 1, 0,
    27, 0x24, 0x04, 1, 1,                                      /* format 1: uncompressed YUY2 */
        0x59, 0x55, 0x59, 0x32, 0x00, 0x00, 0x10, 0x00, 0x80, 0x00, 0x00, 0xAA, 0x00, 0x38, 0x9B, 0x71,
        16, 1, 0, 0, 0, 0,
    30, 0x24, 0x05, 1, 0, W(WIDTH), W(HEIGHT), D(BITRATE), D(BITRATE), D(FRAME_BYTES), D(INTERVAL), 1, D(INTERVAL),
    6, 0x24, 0x0D, 1, 1, 4,                                    /* colour matching */
    7, 5, 0x86, 2, W(512), 0                                   /* endpoint 6 IN, bulk */
};
__code __at(0x2100) uint8_t str0[4] = { 4, 3, 0x09, 0x04 };
__code __at(0x2110) uint8_t str1[2 + 2 * 15] = { 2 + 2 * 15, 3,
    'E',0,'B',0,'A',0,'Z',0,'4',0,'2',0,'0',0,'5',0,' ',0,'s',0,'t',0,'e',0,'r',0,'e',0,'o',0 };
__code __at(0x2140) uint8_t str2[2 + 2 * 19] = { 2 + 2 * 19, 3,
    'S',0,'t',0,'e',0,'r',0,'e',0,'o',0,' ',0,'D',0,'e',0,'p',0,'t',0,'h',0,' ',0,'C',0,'a',0,'m',0,'e',0,'r',0,'a',0 };

/* probe / commit answer (UVC 1.0, 26 bytes): there is exactly one choice */
static __code uint8_t probe[26] = {
    W(0), 1, 1, D(INTERVAL), W(0), W(0), W(0), W(0), W(0), D(FRAME_BYTES), D(PAYLOAD_MAX)
};

static uint8_t configuration, alt_vs;

static void delay_ms(uint16_t ms)
{
    uint16_t i;
    while (ms--)
        for (i = 0; i < 1000; i++) ;            /* roughly, at 48 MHz */
}

static void fifo_flush(void)
{
    FIFORESET = 0x80; SYNCDELAY;                /* NAK everything while the FIFO is reset */
    FIFORESET = 0x06; SYNCDELAY;
    FIFORESET = 0x00; SYNCDELAY;
}

static void fifo_setup(void)
{
    CPUCS = 0x10; SYNCDELAY;                    /* 48 MHz */
    IFCONFIG = 0xE3; SYNCDELAY;                 /* internal 48 MHz IFCLK, driven out, synchronous slave FIFO */
    PORTACFG = 0x00; SYNCDELAY;
    FIFOPINPOLAR = 0x00; SYNCDELAY;             /* all control pins active low */
    PINFLAGSAB = 0xE0; SYNCDELAY;               /* FLAGB = EP6 full */
    REVCTL = 0x00; SYNCDELAY;
    EP2CFG = 0x22; SYNCDELAY;                   /* the other endpoints off */
    EP4CFG = 0x20; SYNCDELAY;
    EP8CFG = 0x60; SYNCDELAY;
    EP6CFG = 0xE2; SYNCDELAY;                   /* valid, IN, bulk, 512 bytes, double buffered */
    FIFORESET = 0x80; SYNCDELAY;
    FIFORESET = 0x02; SYNCDELAY;
    FIFORESET = 0x04; SYNCDELAY;
    FIFORESET = 0x06; SYNCDELAY;
    FIFORESET = 0x08; SYNCDELAY;
    FIFORESET = 0x00; SYNCDELAY;
    EP2FIFOCFG = 0x00; SYNCDELAY;               /* WORDWIDE off everywhere: port D stays free */
    EP4FIFOCFG = 0x00; SYNCDELAY;
    EP8FIFOCFG = 0x00; SYNCDELAY;
    EP6FIFOCFG = 0x00; SYNCDELAY;
    EP6FIFOCFG = 0x0C; SYNCDELAY;               /* 8 bit, AUTOIN, ZEROLENIN */
    EP6AUTOINLENH = 0x02; SYNCDELAY;            /* packets of 512 */
    EP6AUTOINLENL = 0x00; SYNCDELAY;
}

static void send_ep0(const uint8_t *p, uint8_t n)
{
    uint8_t i, want = SETUPDAT[6];
    if (SETUPDAT[7] == 0 && want < n)
        n = want;
    for (i = 0; i < n; i++)
        EP0BUF[i] = p[i];
    EP0BCH = 0; SYNCDELAY;
    EP0BCL = n; SYNCDELAY;
}

static void send_desc(const uint8_t *p)
{
    SUDPTRH = (uint8_t)((uint16_t)p >> 8); SYNCDELAY;
    SUDPTRL = (uint8_t)(uint16_t)p; SYNCDELAY;  /* the chip sends it, as long as the descriptor says */
}

/* returns 0 to stall */
static uint8_t setup(void)
{
    uint8_t type = SETUPDAT[0], req = SETUPDAT[1];
    uint8_t vl = SETUPDAT[2], vh = SETUPDAT[3], il = SETUPDAT[4], ih = SETUPDAT[5];
    static __xdata uint8_t two[2];

    if ((type & 0x60) == 0x00) {                /* standard requests */
        switch (req) {
        case 0x06:                              /* GET_DESCRIPTOR */
            switch (vh) {
            case 1: send_desc(dev_desc); return 1;
            case 2: send_desc(cfg_desc); return 1;
            case 6: send_desc(qual_desc); return 1;
            case 3:
                if (vl == 0) { send_desc(str0); return 1; }
                if (vl == 1) { send_desc(str1); return 1; }
                if (vl == 2) { send_desc(str2); return 1; }
                return 0;
            default: return 0;                  /* no other-speed configuration: high speed only */
            }
        case 0x00:                              /* GET_STATUS */
            two[0] = 0; two[1] = 0;
            if ((type & 0x1F) == 2 && (il & 0x7F) == 6)
                two[0] = EP6CS & bmSTALL;
            send_ep0(two, 2);
            return 1;
        case 0x08: two[0] = configuration; send_ep0(two, 1); return 1;
        case 0x09: configuration = vl; return 1;                    /* SET_CONFIGURATION */
        case 0x0A: two[0] = (il == 1) ? alt_vs : 0; send_ep0(two, 1); return 1;
        case 0x0B: if (vl != 0) return 0; if (il == 1) alt_vs = 0; return 1;    /* SET_INTERFACE: only setting 0 */
        case 0x01:                              /* CLEAR_FEATURE */
            if ((type & 0x1F) == 2 && vl == 0 && (il & 0x7F) == 6) {
                TOGCTL = 0x16; SYNCDELAY;       /* endpoint 6 IN: data toggle back to 0 */
                TOGCTL = 0x36; SYNCDELAY;
                EP6CS &= ~bmSTALL; SYNCDELAY;
                fifo_flush();
            }
            return 1;
        case 0x03:                              /* SET_FEATURE */
            if ((type & 0x1F) == 2 && vl == 0 && (il & 0x7F) == 6)
                EP6CS |= bmSTALL;
            return 1;
        default: return 0;
        }
    }
    if ((type & 0x7F) == 0x21 && il == 1 && (vh == 1 || vh == 2)) {     /* VideoStreaming probe / commit */
        switch (req) {
        case 0x81: case 0x82: case 0x83: case 0x87:                     /* GET_CUR / MIN / MAX / DEF */
            send_ep0(probe, 26);
            return 1;
        case 0x84:                                                      /* GET_RES: nothing can be varied */
            { uint8_t i; for (i = 0; i < 26; i++) EP0BUF[i] = 0; }
            EP0BCH = 0; SYNCDELAY; EP0BCL = 26; SYNCDELAY;
            return 1;
        case 0x85: two[0] = 26; two[1] = 0; send_ep0(two, 2); return 1; /* GET_LEN */
        case 0x86: two[0] = 0x03; send_ep0(two, 1); return 1;           /* GET_INFO: get and set */
        case 0x01:                                                      /* SET_CUR: take the data, keep our values */
            EP0BCL = 0; SYNCDELAY;                                      /* arm the data stage */
            while (EP0CS & bmEP0BUSY) ;
            if (vh == 2)
                fifo_flush();                                           /* commit: the stream starts on fresh data */
            return 1;
        default: return 0;
        }
    }
    return 0;                                   /* no controls on the terminals */
}

void main(void)
{
#if DEV_SECONDS > 0
    uint16_t ticks = 0;
#endif
    fifo_setup();
    /* take over from the built-in loader: off the bus, then back with our descriptors */
    USBCS |= bmDISCON; SYNCDELAY;
    USBCS |= bmRENUM; SYNCDELAY;
    delay_ms(1500);
    USBIE = 0x00;
    USBIRQ = 0xFF; SYNCDELAY;
    EPIRQ = 0xFF; SYNCDELAY;
    SUDPTRCTL = 0x01; SYNCDELAY;
    USBCS &= ~bmDISCON; SYNCDELAY;

    CKCON &= ~0x08;                             /* timer 0 counts CPU clock / 12 */
    TMOD = (TMOD & 0xF0) | 0x01;
    TH0 = 0; TL0 = 0;
    TCON |= 0x10;

    for (;;) {
        uint8_t irq = USBIRQ;
        if (irq & bmSUDAV) {
            USBIRQ = bmSUDAV;
            if (!setup())
                EP0CS |= bmSTALL;
            EP0CS |= bmHSNAK;                   /* let the status stage through */
        }
        if (irq & bmURES) {
            USBIRQ = bmURES;
            configuration = 0;
        }
        if (irq & bmHSGRANT)
            USBIRQ = bmHSGRANT;
#if DEV_SECONDS > 0
        if (TCON & 0x20) {                      /* timer 0 overflow: 16.4 ms */
            TCON &= ~0x20;
            if (++ticks >= (uint16_t)(DEV_SECONDS * 61U)) {
                USBCS |= bmDISCON; SYNCDELAY;
                USBCS &= ~bmRENUM; SYNCDELAY;
                delay_ms(1500);
                USBCS &= ~bmDISCON; SYNCDELAY;
                for (;;) ;                      /* the built-in loader answers from here on */
            }
        }
#endif
    }
}
