/*
 * Stereo depth camera on the EBAZ4205: bare-metal application for the PS.
 *
 * The depth is computed in the PL (block design "system"). The PS only has to
 *   1. configure the two OV2640 over SCCB (the PS I2C controllers through EMIO),
 *   2. release the PL's capture logic and choose the output (webcam or PC tools' stream),
 *   3. keep the two cameras in step (genlock), for good.
 *
 * EMIO GPIO, bank 2 (outputs to the PL):
 *   0  PWDN camera 0      1  capture enable      2  PWDN camera 1
 *   20 send the disparity stream      21 webcam (UVC) output
 * EMIO GPIO, bank 3 (inputs from the PL):
 *   31..24  frames of camera 1, counted
 *   23..0   start of camera 1's frame minus camera 0's, microseconds
 */
#include "xil_printf.h"
#include "xil_io.h"
#include "sleep.h"

#include "sccb.h"
#include "ov2640.h"
#include "genlock.h"
#include "stereo_cfg.h"

static void gpio_setup(void)
{
    Xil_Out32(GPIO_BASE + GPIO_DIRM_2, 0x00FFFFFF);
    Xil_Out32(GPIO_BASE + GPIO_OEN_2, 0x00FFFFFF);
}

static void gpio_bit(int bit, int on)
{
    u32 v = Xil_In32(GPIO_BASE + GPIO_DATA_2) & 0x00FFFFFF;

    v = on ? (v | (1u << bit)) : (v & ~(1u << bit));
    Xil_Out32(GPIO_BASE + GPIO_DATA_2, v);
}

/* Both sensors configured while the capture logic is held in reset. */
static int cameras_setup(void)
{
    int found = 0;

    gpio_setup();
    Xil_Out32(GPIO_BASE + GPIO_DATA_2, 0);          /* PWDN low, capture off */
    usleep(20000);
    for (int cam = 0; cam < 2; cam++) {
        u8 pid = 0, ver = 0;

        if (ov2640_detect(cam, &pid, &ver) != 0) {
            xil_printf("sensor %d: not responding\r\n", cam);
            continue;
        }
        xil_printf("sensor %d: PID=0x%02X VER=0x%02X %s\r\n", cam, pid, ver,
                   pid == 0x26 ? "(OV2640)" : "(NOT an OV2640 id)");
        if (ov2640_mode_cif(cam) != 0 && ov2640_mode_cif(cam) != 0) {   /* one retry of the whole sequence */
            xil_printf("sensor %d: configuration failed\r\n", cam);
            continue;
        }
        xil_printf("sensor %d configured: CIF RGB565 (400x296), 15 fps\r\n", cam);
        found++;
    }
    usleep(300000);
    gpio_bit(GPIO_BIT_CAPTURE, 1);
    gpio_bit(GPIO_BIT_DEPTH, 1);
    gpio_bit(GPIO_BIT_UVC, STEREO_UVC);
    return found;
}

/* The stream to the FX2LP is started once more on cameras that are in step. */
static void stream_restart(void)
{
    gpio_bit(GPIO_BIT_CAPTURE, 0);
    usleep(200000);
    gpio_bit(GPIO_BIT_CAPTURE, 1);
    xil_printf("stream restarted on locked cameras\r\n");
}

int main(void)
{
    xil_printf("\r\nStereo depth camera (EBAZ4205): %d slice(s), %d disparities\r\n",
               STEREO_SLICES, 16 * STEREO_SLICES);

    int found = cameras_setup();

    xil_printf("cameras ready: %d\r\n", found);
    if (found < 2) {
        xil_printf("stopped: both cameras are needed\r\n");
        return 1;
    }
    genlock_run(stream_restart);                    /* does not return */
    return 0;
}
