"""Every number the disparity pipeline depends on, in one place.

These are the values that get frozen and copied into the RTL once the
software results are accepted. Bit widths are stated because the Python
model saturates exactly where the logic would.

The defaults below are overridden by params_auto.json next to this file,
which stereo/autotune.py writes: the best combination it found that fits the
FPGA's block RAM.
"""
import json
import os

DISPARITIES = 128        # width of the search window in pixels
# First disparity of the window. The window is D_MIN .. D_MIN + DISPARITIES - 1:
# with 27 that is 27..154 px, about 0.35 m to 2 m with this rig (f 983 px,
# baseline 55.4 mm), instead of 0.43 m to infinity. In the FPGA it is a delay
# of D_MIN pixels on the right camera's census stream and costs no memory;
# anything further away than the far end has no match inside the window.
D_MIN = 27

PREFILTER = True         # 3 x 3 binomial smoothing of the luma before the census

# Census: which neighbours are compared with the centre pixel.
#   d7     dense 7 x 7              48 bits, 6 image lines buffered
#   d9x7   dense 9 wide, 7 tall     62 bits, 6 lines
#   s9     9 x 9, every 2nd pixel   24 bits, 8 lines: wider support, fewer bits
#   s13x9  13 x 9, every 2nd pixel  34 bits, 8 lines
CENSUS_KIND = "d7"

# Local aggregation of the matching cost before SGM: mean over HBOX pixels of
# the same row (1 = off). Only horizontal: that needs a short delay line of
# costs, whereas a vertical window would need whole lines of the cost volume.
HBOX = 1

# Semi-global aggregation: which directions the cost is propagated along.
#   LR left to right     free: only the previous pixel's costs
#   TB top to bottom     one line memory of path costs
#   D1, D2 diagonals from above, one line memory each
#   RL right to left     the line has to be aggregated twice: one line memory
#                        of partial sums, and the costs are computed twice
PATHS = ("LR", "TB")
P1_48 = 8                # penalty for a disparity change of 1, for a 48-bit census
P2_48 = 40               # penalty for any larger change (scaled to the census size)
L_BITS = 6               # a path cost saturates at 2**L_BITS - 1
# Edge-aware smoothing: where the image itself has an edge along the path
# (luma step above EDGE_STEP), use this smaller P2 instead, so that a depth
# edge is allowed exactly where an object boundary is likely. 0 = off.
P2_EDGE_48 = 0
EDGE_STEP = 12

# How the top-to-bottom path costs are kept from one image line to the next
# (the largest memory of the design: width x DISPARITIES x L_BITS).
#   none  every value as it is
#   cap   relative to the line's minimum and limited to P2: lossless, because
#         the recurrence never uses a value above minimum + P2
#   pair  as cap, one value (the lower) for every two neighbouring disparities
# With cap or pair, TB_BITS > 0 stores each value in that many bits after
# dropping TB_SHIFT low bits (saturating): 6 bits pack three to an 18-bit
# memory word, 4 bits nine to a 36-bit word.
# (Keeping only the few lowest values per pixel was tried and rejected: with
# P2 above the largest matching cost, a third of all disparities lie below
# minimum + P2, and cutting them lost most of the valid pixels.)
# Chosen 2026-10-13: relative to the minimum, 6 bits (0..63). Measured cost on
# four scenes: 3 % of the valid pixels change to invalid, 0.1 % change value.
TB_CODEC = "cap"
TB_BITS = 6
TB_SHIFT = 0
LUMA_BITS = 8            # bits of luma kept in the rectification line buffers and for the census

SUBPIXEL_BITS = 4        # disparity is reported in 1/16 pixel
UNIQUENESS_16 = 2        # best must beat the runner-up by this many 16ths of it
LR_CHECK = True          # reject pixels whose match, seen from the right image, disagrees
MEDIAN = 3               # 3 x 3 median on the result
MEDIAN_V = 1             # then a median over this many rows of each column (1 = off)
# Speckle removal that does not blur edges: keep a pixel only if at least
# this many of its 24 neighbours in a 5 x 5 window are valid and within one
# pixel of its disparity. 0 = off.
DESPECKLE = 0

# What the FPGA has to deliver, used by the cost estimate and the search.
FPS_MIN = 15             # the sensors deliver 15 fps at 800 x 600; agreed as the target
PROC_CLOCK_HZ = 100e6

INVALID = 0              # disparity value that means "no measurement"

TUNABLE = ("PREFILTER", "CENSUS_KIND", "HBOX", "PATHS", "P1_48", "P2_48", "P2_EDGE_48", "L_BITS",
           "UNIQUENESS_16", "LR_CHECK", "MEDIAN", "MEDIAN_V", "DESPECKLE")

_AUTO = os.path.join(os.path.dirname(os.path.abspath(__file__)), "params_auto.json")


def current():
    return {k: globals()[k] for k in TUNABLE}


def apply(values):
    for k, v in values.items():
        if k in TUNABLE:
            globals()[k] = tuple(v) if k == "PATHS" else v


if os.path.exists(_AUTO):
    apply(json.load(open(_AUTO))["params"])

# ---- resolution profiles -----------------------------------------------------
# "svga": 800 x 600 as recorded so far, 128 disparities from 27.
# "cif":  the sensor's 400 x 296 mode (the SVGA pixels binned 2 x 2), chosen
#         for the FPGA / IC design: half the disparities for the same range of
#         distances, an eighth of the work. Its calibration is derived from
#         the SVGA one (calibrate.binned) and lives in calib/stereo_cif.npz.
PROFILES = {
    # SENSOR_MODE: arguments of scripts/cam.tcl (size, format, CLKRC, R_DVP_SP).
    # LINE_US / PIXEL_US: what one extra line per frame / one dummy pixel per line adds (genlock).
    # FRAME_S: frame period. In dim light the sensor exposes for the whole frame period, and
    # anything that moves then leaves a trail of ghost images; CIF therefore runs at 30 fps
    # (33 ms at most) rather than 15 (CLKRC 0x83, 66 ms: LINE_US 198.4, PIXEL_US 112).
    # EXTRA_LINES: lines the genlock adds to every frame for good (register 0x46), which lowers
    # the frame rate without changing the line timing: 336 + 84 lines of 99.2 us = 24 fps.
    "svga": dict(WIDTH=800, HEIGHT=600, DISPARITIES=128, D_MIN=27, UNITS=16, CALIB="stereo.npz",
                 SENSOR_MODE=("svga", "rgb565", "0x81", "0x82"), LINE_US=99.2, PIXEL_US=56.0, FRAME_S=0.0666, EXTRA_LINES=0),
    "cif":  dict(WIDTH=400, HEIGHT=296, DISPARITIES=64,  D_MIN=14, UNITS=8,  CALIB="stereo_cif.npz",
                 SENSOR_MODE=("cif", "rgb565", "0x81", "0x82"), LINE_US=99.2, PIXEL_US=56.0, FRAME_S=0.0417, EXTRA_LINES=84),
    # "mini": the chained matcher mini (rtl/mini). The sensor stays in its 400 x 296 mode and the
    # logic bins the luma 2 x 2 (BIN); 2 slices of 16 disparities, one SGM direction. The hub
    # needs 355 us per row at 25 MHz, so the sensor runs at 15 fps (two lines of 198.4 us per row).
    "mini": dict(WIDTH=200, HEIGHT=148, DISPARITIES=32,  D_MIN=7,  UNITS=2,  CALIB="stereo_mini.npz", BIN=2,
                 PATHS=("LR",),
                 SENSOR_MODE=("cif", "rgb565", "0x83", "0x82"), LINE_US=198.4, PIXEL_US=112.0, FRAME_S=0.0666, EXTRA_LINES=0),
}
DEFAULT_PROFILE = "cif"          # the resolution the FPGA / IC design works at (chosen 2026-10-13)
PROFILE = "svga"
WIDTH, HEIGHT, UNITS, CALIB = 800, 600, 16, "stereo.npz"
SENSOR_MODE, LINE_US, PIXEL_US, FRAME_S, EXTRA_LINES = ("svga", "rgb565", "0x81", "0x82"), 99.2, 56.0, 0.0666, 0
BIN = 1                          # the logic bins the sensor's luma BIN x BIN before anything else
_TUNED_PATHS = PATHS             # the SGM directions of the tuned parameter set


def use(profile):
    """Switch every module that reads these parameters to another resolution profile."""
    global PROFILE
    PROFILE = profile
    globals().update(BIN=1, PATHS=_TUNED_PATHS)
    globals().update(PROFILES[profile])


use(os.environ.get("STEREO_PROFILE", DEFAULT_PROFILE))
