/* OV2640: identification and the mode the depth logic works with. */
#ifndef OV2640_H
#define OV2640_H

#include "xil_types.h"

int ov2640_detect(int cam, u8 *pid, u8 *ver);
int ov2640_mode_cif(int cam);                       /* 400 x 296, RGB565, 15 fps */
int ov2640_put(int cam, u8 reg, u8 val);            /* one register of the sensor bank */

#endif
