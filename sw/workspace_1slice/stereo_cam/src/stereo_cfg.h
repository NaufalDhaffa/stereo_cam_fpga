/* Settings of the application: must match the bitstream it runs with. */
#ifndef STEREO_CFG_H
#define STEREO_CFG_H

/* slices in the matcher chain of the bitstream (information only: printed at start) */
#ifndef STEREO_SLICES
#define STEREO_SLICES       2
#endif

/* 1: webcam (USB Video Class) output; 0: the three streams of the PC tools */
#define STEREO_UVC          1

/* Sensor timing in the CIF mode at 15 fps (CLKRC 0x83): 336 lines of 198.4 us */
#define LINE_TENTH_US       1984
#define FRAME_LINES         336
#define FRAME_US            ((FRAME_LINES * LINE_TENTH_US + 5) / 10)

/* Camera 1's frame start minus camera 0's that the rectification tables expect:
 * GENLOCK_LEAD (rect_cfg.vh) = 11 rows of two sensor lines each. */
#define GENLOCK_LEAD_US     4365

/* Zynq PS registers used directly */
#define GPIO_BASE           0xE000A000u
#define GPIO_DATA_2         0x048
#define GPIO_DATA_3_RO      0x06C
#define GPIO_DIRM_2         0x284
#define GPIO_OEN_2          0x288
#define GPIO_BIT_CAPTURE    1
#define GPIO_BIT_DEPTH      20
#define GPIO_BIT_UVC        21

#endif
