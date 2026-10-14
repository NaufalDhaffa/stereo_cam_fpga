/*
 * OV2640 set-up: software reset, base table, CIF frame size, clock dividers, RGB565.
 * The sequence and the tables follow espressif/esp32-camera; the frame is
 * 400 x 296 taken from the sensor's CIF mode, at 15 fps (CLKRC 0x83).
 */
#include "sleep.h"

#include "sccb.h"
#include "ov2640.h"
#include "ov2640_tables.h"

#define BANK_DSP        0x00
#define BANK_SENSOR     0x01
#define CLKRC_15FPS     0x83        /* doubler on, divide by 4 */
#define R_DVP_SP        0x82        /* PCLK divider */
#define OUT_W           400
#define OUT_H           296

#define W(reg, val) do { if (sccb_write(cam, (reg), (val)) != 0) return -1; } while (0)

static int table(int cam, const u8 t[][2], unsigned n)
{
    for (unsigned i = 0; i < n; i++)
        W(t[i][0], t[i][1]);
    return 0;
}
#define TABLE(t) do { if (table(cam, (t), sizeof(t) / sizeof((t)[0])) != 0) return -1; } while (0)

int ov2640_detect(int cam, u8 *pid, u8 *ver)
{
    W(0xFF, BANK_SENSOR);
    if (sccb_read(cam, 0x0A, pid) != 0 || sccb_read(cam, 0x0B, ver) != 0)
        return -1;
    return 0;
}

int ov2640_put(int cam, u8 reg, u8 val)
{
    W(0xFF, BANK_SENSOR);
    W(reg, val);
    return 0;
}

int ov2640_mode_cif(int cam)
{
    const unsigned qx = OUT_W / 4, qy = OUT_H / 4;

    W(0xFF, BANK_SENSOR);
    W(0x12, 0x80);                                  /* COM7: software reset */
    usleep(50000);
    TABLE(ov2640_settings_cif);
    W(0xFF, BANK_SENSOR);
    W(0x09, 0x00);                                  /* COM2: 1x output drive (3x rings on jumper wires) */
    W(0xFF, BANK_DSP);
    W(0x05, 0x01);                                  /* R_BYPASS: DSP bypassed while changing */
    TABLE(ov2640_settings_to_cif);
    W(0xFF, BANK_DSP);
    W(0x51, qx & 0xFF);                             /* HSIZE, VSIZE and the output size */
    W(0x52, qy & 0xFF);
    W(0x53, 0x00);
    W(0x54, 0x00);
    W(0x55, ((qy >> 1) & 0x80) | ((qx >> 5) & 0x08));
    W(0x57, (qx >> 2) & 0x80);
    W(0x5A, qx & 0xFF);
    W(0x5B, qy & 0xFF);
    W(0x5C, ((qy >> 6) & 0x04) | ((qx >> 8) & 0x03));
    W(0xFF, BANK_SENSOR);
    W(0x11, CLKRC_15FPS);
    W(0xFF, BANK_DSP);
    W(0xD3, R_DVP_SP);
    W(0x05, 0x00);                                  /* R_BYPASS: DSP on */
    usleep(20000);
    TABLE(ov2640_settings_rgb565);
    W(0xFF, BANK_SENSOR);
    W(0x04, 0x28 | 0x50 | 0x80);                    /* REG04: vertical flip and mirror, as the calibration was taken */
    return 0;
}
