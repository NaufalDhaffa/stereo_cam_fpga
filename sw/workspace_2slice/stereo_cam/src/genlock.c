/*
 * Genlock without a common clock: each OV2640 runs on its own 12 MHz
 * oscillator. The PL measures when each camera's frame starts; this loop
 * pulls camera 1 to GENLOCK_LEAD_US after camera 0 by lengthening the frames
 * of the camera that is ahead for a while:
 *
 *   far off (> 3 ms)     many dummy lines (register 0x46) for six frames
 *   near    (> 250 us)   one dummy line for as many frames as lines are missing
 *   close   (> 70 us)    one dummy pixel per line (register 0x2B) for half a frame
 */
#include "xil_printf.h"
#include "xil_io.h"
#include "xiltimer.h"
#include "sleep.h"

#include "ov2640.h"
#include "genlock.h"
#include "stereo_cfg.h"

#define REG_FLL     0x46            /* frame length adjustment, low byte: dummy lines */
#define REG_FLH     0x47
#define REG_ADDVSL  0x2D            /* dummy lines in the vertical blanking */
#define REG_EXHCL   0x2B            /* dummy pixels per line */

static void phase_raw(u32 *seq, u32 *diff)
{
    u32 a, b;

    do {                                            /* the value changes at a frame start */
        a = Xil_In32(GPIO_BASE + GPIO_DATA_3_RO);
        b = Xil_In32(GPIO_BASE + GPIO_DATA_3_RO);
    } while (a != b);
    *seq = a >> 24;
    *diff = a & 0x00FFFFFF;
}

/* Camera 1's frame start minus camera 0's, wrapped to half a frame either way. 0 = a new frame came. */
static int phase_us(int *phase)
{
    u32 seq0, seq, d;
    XTime t0, t;

    phase_raw(&seq0, &d);
    XTime_GetTime(&t0);
    for (;;) {
        phase_raw(&seq, &d);
        if (seq != seq0) {
            *phase = (int)((d + FRAME_US / 2) % FRAME_US) - FRAME_US / 2;
            return 0;
        }
        XTime_GetTime(&t);
        if (t - t0 > (XTime)COUNTS_PER_SECOND * (3 * FRAME_US + 200000) / 1000000)
            return -1;
        usleep(2000);
    }
}

/* median of five measurements; -1 when fewer than three frames came */
static int median_phase(int *phase)
{
    int v[5], n = 0;

    for (int i = 0; i < 5; i++)
        if (phase_us(&v[n]) == 0)
            n++;
    if (n < 3)
        return -1;
    for (int i = 1; i < n; i++)
        for (int j = i; j > 0 && v[j - 1] > v[j]; j--) {
            int t = v[j];
            v[j] = v[j - 1];
            v[j - 1] = t;
        }
    *phase = v[n / 2];
    return 0;
}

static void pulse(int cam, u8 reg, u8 val, unsigned hold_us)
{
    ov2640_put(cam, reg, val);
    usleep(hold_us);
    ov2640_put(cam, reg, 0);
    usleep(4 * FRAME_US);
}

void genlock_run(void (*on_first_lock)(void))
{
    int locked = 0, started = 0;
    unsigned since_report = 0;

    for (int cam = 0; cam < 2; cam++) {
        ov2640_put(cam, REG_FLL, 0);
        ov2640_put(cam, REG_FLH, 0);
        ov2640_put(cam, REG_ADDVSL, 0);
        ov2640_put(cam, REG_EXHCL, 0);
    }
    for (;;) {
        int e;

        if (median_phase(&e) != 0) {
            xil_printf("genlock: no frames from the cameras\r\n");
            sleep(1);
            continue;
        }
        e -= GENLOCK_LEAD_US;

        int cam = e > 0 ? 0 : 1;                    /* the camera that is ahead is slowed down */
        int mag = e > 0 ? e : -e;
        int lines = mag * 10 / LINE_TENTH_US;

        if (mag > 3000) {
            int n = lines / 6;

            pulse(cam, REG_FLL, n < 1 ? 1 : n > 255 ? 255 : n, 6 * FRAME_US);
        } else if (mag > 250) {
            int n = (mag * 10 + LINE_TENTH_US / 2) / LINE_TENTH_US - 1;

            pulse(cam, REG_FLL, 1, (n < 1 ? 1 : n > 30 ? 30 : n) * FRAME_US);
        } else if (mag > 70) {
            pulse(cam, REG_EXHCL, 1, FRAME_US / 2);
        } else {
            usleep(300000);
        }

        if (!locked && mag <= 100) {
            locked = 1;
            if (!started && on_first_lock) {
                on_first_lock();
                started = 1;
            }
            xil_printf("genlock: locked (%d us from the target of %d us)\r\n", e, GENLOCK_LEAD_US);
        }
        if (locked && mag > 2000) {
            locked = 0;
            xil_printf("genlock: lost (%d us)\r\n", e);
        }
        if (++since_report >= 100) {
            since_report = 0;
            xil_printf("genlock: phase %d us from target\r\n", e);
        }
    }
}
