/* SCCB (the OV2640's register bus) on the PS I2C controllers, I2C0 = camera 0, I2C1 = camera 1. */
#ifndef SCCB_H
#define SCCB_H

#include "xil_types.h"

#define OV2640_ADDR 0x30

int sccb_write(int cam, u8 reg, u8 val);
int sccb_read(int cam, u8 reg, u8 *val);

#endif
