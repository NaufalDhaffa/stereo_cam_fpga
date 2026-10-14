"""The depth chain exactly as the FPGA computes it, from two raw camera pictures.

disparity.compute() works on pictures rectified by OpenCV in floating point;
the logic rectifies the luma itself with the coarse grid map and fixed-point
blending. This module strings the same model functions together in the
logic's order, so its result can be compared with the FPGA's bit for bit:

    raw RGB -> luma -> GridMap rectification -> smoothing -> census
            -> cost -> 3-pixel mean -> SGM -> pick()         (the FPGA's output)
            -> post() and the valid-window mask               (still on the PC)
"""
import numpy as np

from . import disparity, rectify
from . import params as P


def bin2(luma):
    """The luma binned 2 x 2 as rtl/luma_bin2.v does it: mean of four, rounded."""
    a = luma.astype(np.uint16)
    return ((a[0::2, 0::2] + a[0::2, 1::2] + a[1::2, 0::2] + a[1::2, 1::2] + 2) >> 2).astype(np.uint8)


def front(raw_rgb, cal, cam):
    """Census signature and valid-window mask of one camera, from its raw picture."""
    g = rectify.GridMap(*cal["maps"][cam])
    luma = disparity.luma(raw_rgb)
    if P.BIN == 2:
        luma = bin2(luma)
    luma = g.remap(luma)
    if P.PREFILTER:
        luma = disparity.binomial3(luma)
    return disparity.census(luma), disparity.window_ok(g.valid())


def matched(left_raw, right_raw, cal):
    """What the FPGA sends: the chosen disparity per pixel (1/16 px, 0 = none), unfiltered.

    Also returns the left valid-window mask, which finished() needs.
    """
    nbits = len(disparity.census_offsets(P.CENSUS_KIND))
    (cl, okl), (cr, okr) = front(left_raw, cal, 0), front(right_raw, cal, 1)
    vol = disparity.cost_volume(cl, cr, nbits, okl, okr)
    return disparity.pick(disparity.sgm(disparity.hbox(vol, P.HBOX), nbits)), okl


def left_mask(cal):
    return disparity.window_ok(rectify.GridMap(*cal["maps"][0]).valid())


def finished(picked, okl):
    """The filters that follow the FPGA's output, as disparity.finish() applies them."""
    out = disparity.post(np.asarray(picked, np.uint16).copy())
    out[~okl] = P.INVALID
    return out
