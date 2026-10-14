/*
 * SCCB on the Cadence I2C controllers of the PS, register by register.
 *
 * The bus only has the FPGA's weak internal pull-ups: it runs at 50 kHz, and
 * now and then a transfer is not acknowledged. Every access is therefore
 * retried a few times, with the controller reset in between.
 *
 * A read is two transfers with a stop in between (write the register
 * number, then read one byte): SCCB has no repeated start.
 */
#include "xil_io.h"
#include "xiltimer.h"
#include "sleep.h"

#include "sccb.h"

#define I2C0_BASE       0xE0004000u
#define I2C1_BASE       0xE0005000u
#define I2C_CR          0x00
#define I2C_SR          0x04
#define I2C_ADDR        0x08
#define I2C_DATA        0x0C
#define I2C_ISR         0x10
#define I2C_XFER        0x14
/* 111.1 MHz / (22 * 4 * 25) = 50.5 kHz */
#define I2C_DIV         ((3u << 14) | (24u << 8))
#define SLCR_UNLOCK     0xF8000008u
#define SLCR_I2C_RST    0xF8000224u

static u32 base(int cam)
{
    return cam ? I2C1_BASE : I2C0_BASE;
}

static void i2c_reset(int cam)
{
    Xil_Out32(SLCR_UNLOCK, 0xDF0D);
    Xil_Out32(SLCR_I2C_RST, 1u << cam);
    Xil_Out32(SLCR_I2C_RST, 0);
}

/* 0 when the transfer completed, -1 on no acknowledge or timeout */
static int wait_done(u32 c)
{
    XTime t0, t;

    XTime_GetTime(&t0);
    for (;;) {
        u32 isr = Xil_In32(c + I2C_ISR);

        if (isr & 0x204) {                          /* NACK or arbitration lost */
            Xil_Out32(c + I2C_ISR, 0x2FF);
            return -1;
        }
        if (isr & 0x001) {
            /* complete is flagged before the stop condition is over */
            while (Xil_In32(c + I2C_SR) & 0x100) {
                XTime_GetTime(&t);
                if (t - t0 > COUNTS_PER_SECOND / 20)
                    break;
            }
            return 0;
        }
        XTime_GetTime(&t);
        if (t - t0 > COUNTS_PER_SECOND / 20)        /* 50 ms */
            return -1;
    }
}

static int write_once(int cam, u8 reg, u8 val)
{
    u32 c = base(cam);

    Xil_Out32(c + I2C_CR, I2C_DIV | 0x4E);          /* master, transmit, ack, clear FIFO */
    Xil_Out32(c + I2C_ISR, 0x2FF);
    Xil_Out32(c + I2C_DATA, reg);
    Xil_Out32(c + I2C_DATA, val);
    Xil_Out32(c + I2C_ADDR, OV2640_ADDR);
    return wait_done(c);
}

static int read_once(int cam, u8 reg, u8 *val)
{
    u32 c = base(cam);

    Xil_Out32(c + I2C_CR, I2C_DIV | 0x4E);
    Xil_Out32(c + I2C_ISR, 0x2FF);
    Xil_Out32(c + I2C_DATA, reg);
    Xil_Out32(c + I2C_ADDR, OV2640_ADDR);
    if (wait_done(c) != 0)
        return -1;
    Xil_Out32(c + I2C_CR, I2C_DIV | 0x4F);          /* master, receive */
    Xil_Out32(c + I2C_ISR, 0x2FF);
    Xil_Out32(c + I2C_XFER, 1);
    Xil_Out32(c + I2C_ADDR, OV2640_ADDR);
    if (wait_done(c) != 0)
        return -1;
    *val = (u8)Xil_In32(c + I2C_DATA);
    return 0;
}

int sccb_write(int cam, u8 reg, u8 val)
{
    for (int try = 0; try < 5; try++) {
        if (write_once(cam, reg, val) == 0)
            return 0;
        i2c_reset(cam);
        usleep(5000);
    }
    return -1;
}

int sccb_read(int cam, u8 reg, u8 *val)
{
    for (int try = 0; try < 5; try++) {
        if (read_once(cam, reg, val) == 0)
            return 0;
        i2c_reset(cam);
        usleep(5000);
    }
    return -1;
}
