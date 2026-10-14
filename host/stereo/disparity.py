"""Disparity from a rectified pair, the way the FPGA will compute it.

Stages, each written as the streaming recurrence the logic implements
(integer arithmetic only, saturating at the stated widths):

  luma      Y = (77 R + 150 G + 29 B) >> 8, optional 3 x 3 smoothing
  census    one bit per compared neighbour, "neighbour darker than centre"
  cost      Hamming distance of left census and right census shifted by d,
            optionally averaged over a few pixels of the same row
  sgm       path costs along the chosen directions, summed
  select    lowest summed cost, parabola through its neighbours for 1/16
            pixel, runner-up test, left-right test, median filters

Which variant of each stage is used comes from stereo/params.py.
cv2.StereoSGBM is run next to it as a yardstick, not as part of the design.

    python -m stereo.disparity data/scene_1          first pair of a recording
    python -m stereo.disparity data/scene_1 3        pair number 3
"""
import os
import sys
import time

import cv2
import numpy as np

from . import params as P

_POP8 = np.array([bin(i).count("1") for i in range(256)], np.uint8)
WIDTH, HEIGHT = 800, 600                 # for the FPGA cost estimate

CENSUS_SHAPES = {                        # half height, half width, step
    "d7": (3, 3, 1),
    "d9x7": (3, 4, 1),
    "s9": (4, 4, 2),
    "s13x9": (4, 6, 2),
    "s17x9": (4, 8, 2),                  # 44 bits, 8 lines
    "s13x13": (6, 6, 2),                 # 48 bits, 12 lines
}


def census_offsets(kind):
    ry, rx, step = CENSUS_SHAPES[kind]
    return [(dy, dx) for dy in range(-ry, ry + 1, step) for dx in range(-rx, rx + 1, step)
            if (dy, dx) != (0, 0)]


def luma(rgb):
    r, g, b = (rgb[:, :, i].astype(np.uint16) for i in range(3))
    return ((77 * r + 150 * g + 29 * b) >> 8).astype(np.uint8)


def binomial3(gray):
    """3 x 3 smoothing with weights 1-2-1 in both directions (two adders and a shift)."""
    g = np.pad(gray.astype(np.uint16), 1, mode="edge")
    h = (g[:, :-2] + 2 * g[:, 1:-1] + g[:, 2:] + 2) >> 2
    return ((h[:-2] + 2 * h[1:-1] + h[2:] + 2) >> 2).astype(np.uint8)


def census(gray, kind=None):
    """Census signature per pixel (uint64); 0 where the window leaves the image."""
    kind = kind or P.CENSUS_KIND
    ry, rx, _ = CENSUS_SHAPES[kind]
    h, w = gray.shape
    out = np.zeros((h, w), np.uint64)
    centre = gray[ry:h - ry, rx:w - rx]
    acc = np.zeros(centre.shape, np.uint64)
    for dy, dx in census_offsets(kind):
        nb = gray[ry + dy:h - ry + dy, rx + dx:w - rx + dx]
        acc = (acc << np.uint64(1)) | (nb < centre)
    out[ry:h - ry, rx:w - rx] = acc
    return out


def window_ok(valid, kind=None):
    """Pixels whose whole census window is valid image, given a validity mask."""
    ry, rx, _ = CENSUS_SHAPES[kind or P.CENSUS_KIND]
    k = np.ones((2 * ry + 1, 2 * rx + 1), np.uint8)
    return cv2.erode(valid.astype(np.uint8), k, borderValue=0).astype(bool)


def cost_volume(cl, cr, nbits, ok_l=None, ok_r=None):
    """C[y, x, k] = Hamming(census_left[y, x], census_right[y, x - d]), uint8, d = P.D_MIN + k.

    ok_l / ok_r mark pixels whose census window lies inside the rectified
    image; anywhere else the cost is the maximum, so the black margins that
    rectification leaves cannot win a match.
    """
    h, w = cl.shape
    vol = np.full((h, w, P.DISPARITIES), nbits, np.uint8)
    for k in range(P.DISPARITIES):
        d = P.D_MIN + k
        x = cl[:, d:] ^ cr[:, :w - d]
        c = _POP8[x.view(np.uint8).reshape(h, w - d, 8)].sum(axis=2, dtype=np.uint8)
        if ok_l is not None:
            c[~(ok_l[:, d:] & ok_r[:, :w - d])] = nbits
        vol[:, d:, k] = c
    return vol


def hbox(vol, n):
    """Mean of the cost over n pixels of the same row, same disparity."""
    if n <= 1:
        return vol
    r = n // 2
    p = np.pad(vol.astype(np.uint16), ((0, 0), (r, r), (0, 0)), mode="edge")
    acc = np.cumsum(p, axis=1, dtype=np.int32)
    acc = np.concatenate((np.zeros_like(acc[:, :1]), acc), axis=1)
    s = acc[:, n:] - acc[:, :-n]
    return ((s + n // 2) // n).astype(np.uint8)


def _path_step(prev, cost, lmax, p1, p2):
    """One step of an SGM path: prev and cost are (n, D); returns the new (n, D)."""
    best = prev.min(axis=1, keepdims=True)
    big = np.int16(1000)
    up = np.concatenate((prev[:, 1:], np.full((len(prev), 1), big, np.int16)), axis=1) + p1
    dn = np.concatenate((np.full((len(prev), 1), big, np.int16), prev[:, :-1]), axis=1) + p1
    m = np.minimum(np.minimum(prev, up), np.minimum(dn, best + p2))
    return np.minimum(cost + m - best, lmax)


def penalties(nbits):
    """P1, P2 for a census of nbits bits (the stored values are for 48 bits)."""
    return max(1, round(P.P1_48 * nbits / 48)), max(2, round(P.P2_48 * nbits / 48))


def tb_store(path, p2, stats=None):
    """The top-to-bottom path costs of one line as the line memory hands them to the next line.

    path: (pixels, D) int16. See P.TB_CODEC, P.TB_BITS, P.TB_SHIFT. stats, a
    dict, collects how many values per pixel lie below P2.
    """
    if P.TB_CODEC == "none":
        return path
    rel = np.minimum(path - path.min(axis=1, keepdims=True), np.int16(p2))
    if stats is not None:
        stats.setdefault("below_p2", []).append((rel < p2).sum(axis=1))
    if P.TB_CODEC == "pair":
        rel = np.repeat(rel.reshape(len(rel), -1, 2).min(axis=2), 2, axis=1)
    if P.TB_BITS:                                       # fewer bits: drop low bits, saturate at the top
        top = np.int16((1 << P.TB_BITS) - 1)
        rel = np.minimum(rel >> P.TB_SHIFT, top) << P.TB_SHIFT
    return rel


def tb_bits(p=None):
    """Bits of line memory per pixel for the top-to-bottom path with the given codec."""
    p = p or P.current()
    nbits = len(census_offsets(p["CENSUS_KIND"]))
    p2 = max(2, round(p["P2_48"] * nbits / 48))
    codec = p.get("TB_CODEC", P.TB_CODEC)
    if codec == "none":
        return P.DISPARITIES * p["L_BITS"]
    value = p.get("TB_BITS", P.TB_BITS) or int(np.ceil(np.log2(p2 + 1)))     # a value limited to P2
    return (P.DISPARITIES // 2 if codec == "pair" else P.DISPARITIES) * value


def sgm(vol, nbits, gray=None, stats=None):
    """Sum of the path costs along the directions in P.PATHS, int16.

    gray: the left luma, needed only for edge-aware smoothing (P2_EDGE_48).
    """
    h, w, _ = vol.shape
    lmax = np.int16((1 << P.L_BITS) - 1)
    p1, p2 = penalties(nbits)
    c = vol.astype(np.int16)
    total = np.zeros(vol.shape, np.int16)

    # P2 per pixel and direction: the normal value, or the smaller one where
    # the image has a step along that direction.
    p2x = p2y = np.full((h, w), p2, np.int16)
    if P.P2_EDGE_48 and gray is not None:
        low = np.int16(max(p1 + 1, round(P.P2_EDGE_48 * nbits / 48)))
        g = gray.astype(np.int16)
        gx = np.abs(np.diff(g, axis=1, prepend=g[:, :1]))
        gy = np.abs(np.diff(g, axis=0, prepend=g[:1]))
        p2x = np.where(gx > P.EDGE_STEP, low, np.int16(p2)).astype(np.int16)
        p2y = np.where(gy > P.EDGE_STEP, low, np.int16(p2)).astype(np.int16)

    if "LR" in P.PATHS:                                 # all rows at once, column by column
        path = np.minimum(c[:, 0, :], lmax)
        total[:, 0, :] += path
        for x in range(1, w):
            path = _path_step(path, c[:, x, :], lmax, p1, p2x[:, x, None])
            total[:, x, :] += path
    if "RL" in P.PATHS:
        path = np.minimum(c[:, w - 1, :], lmax)
        total[:, w - 1, :] += path
        for x in range(w - 2, -1, -1):
            path = _path_step(path, c[:, x, :], lmax, p1, p2x[:, x + 1, None])
            total[:, x, :] += path
    if "TB" in P.PATHS:                                 # all columns at once, row by row
        path = np.minimum(c[0], lmax)
        total[0] += path
        for y in range(1, h):
            # what the previous line left in the line memory, not the line itself
            path = _path_step(tb_store(path, p2, stats), c[y], lmax, p1, p2y[y, :, None])
            total[y] += path
    for name, step in (("D1", 1), ("D2", -1)):          # the diagonals coming from above
        if name not in P.PATHS:
            continue
        path = np.minimum(c[0], lmax)
        total[0] += path
        edge = 0 if step == 1 else w - 1
        for y in range(1, h):
            prev = np.roll(path, step, axis=0)          # predecessor is one column over
            prev[edge] = c[y, edge]
            path = _path_step(prev, c[y], lmax, p1, np.minimum(p2x[y], p2y[y])[:, None])
            path[edge] = np.minimum(c[y, edge], lmax)   # a path starts fresh at the image edge
            total[y] += path
    return total


def despeckle(disp, need):
    """Drop pixels with fewer than `need` of their 24 neighbours (5 x 5) valid
    and within one pixel of their disparity. Four line buffers of disparity
    and a counter per pixel; unlike a median it leaves depth edges alone."""
    d = np.pad(disp.astype(np.int32), 2, mode="constant")
    h, w = disp.shape
    centre = d[2:2 + h, 2:2 + w]
    count = np.zeros((h, w), np.int32)
    for dy in range(5):
        for dx in range(5):
            if dy == 2 and dx == 2:
                continue
            nb = d[dy:dy + h, dx:dx + w]
            count += (nb > 0) & (np.abs(nb - centre) <= (1 << P.SUBPIXEL_BITS))
    return np.where(count >= need, disp, P.INVALID).astype(np.uint16)


def vertical_median(disp, n):
    """Median over n rows of the same column (n - 1 line buffers of disparity).

    A wrong match dragged along a row is only a row or two tall, so the
    pixels above and below outvote it. Invalid pixels take part as zeros: a
    pixel survives only if most of its column neighbours are valid too.
    """
    r = n // 2
    p = np.pad(disp, ((r, r), (0, 0)), mode="edge")
    stack = np.stack([p[i:i + disp.shape[0]] for i in range(n)])
    return np.sort(stack, axis=0)[r]


def select(total, kind=None):
    """Disparity in 1/16 pixel (uint16, 0 = invalid) from the summed costs."""
    return post(pick(total, kind))


def pick(total, kind=None):
    """The winning disparity per pixel with its acceptance tests, before any filtering."""
    h, w, dn = total.shape
    s = total.astype(np.int32)
    d = s.argmin(axis=2)
    yy, xx = np.mgrid[0:h, 0:w]
    s1 = s[yy, xx, d]
    s0 = s[yy, xx, np.clip(d - 1, 0, dn - 1)]
    s2 = s[yy, xx, np.clip(d + 1, 0, dn - 1)]

    # parabola through the three points: offset = (s0 - s2) / (2 (s0 - 2 s1 + s2))
    den = 2 * (s0 - 2 * s1 + s2)
    num = (s0 - s2) << P.SUBPIXEL_BITS
    half = 1 << (P.SUBPIXEL_BITS - 1)
    off = np.where(den > 0, (2 * num + np.sign(num) * den) // np.maximum(2 * den, 1), 0)
    off = np.clip(off, -half, half)
    true = d + P.D_MIN                               # index in the window -> disparity in pixels
    disp = (true << P.SUBPIXEL_BITS) + off

    # runner-up: lowest cost that is not the winner or one of its two neighbours
    masked = s.copy()
    for k in (-1, 0, 1):
        np.put_along_axis(masked, np.clip(d + k, 0, dn - 1)[:, :, None], 1 << 20, axis=2)
    second = masked.min(axis=2)
    ok = (second - s1) * 16 >= second * P.UNIQUENESS_16

    ry, rx, _ = CENSUS_SHAPES[kind or P.CENSUS_KIND]
    if P.LR_CHECK:
        # The same costs seen from the right image: right pixel xr matches left
        # pixel xr + d. Keep a left pixel only if the right image agrees.
        # Only left columns that can hold a result take part (the others are
        # never output, and leaving them out spares the logic their line
        # memory).
        usable = s.copy()
        usable[:, :P.D_MIN + rx] = 1 << 20
        usable[:, w - rx:] = 1 << 20
        right = np.full_like(s, 1 << 20)
        for k in range(dn):
            right[:, :w - k - P.D_MIN, k] = usable[:, k + P.D_MIN:, k]
        dr = right.argmin(axis=2)
        ok &= np.abs(dr[yy, np.clip(xx - true, 0, w - 1)] - d) <= 1

    # The first and last entry of the window are never accepted: a minimum
    # there usually belongs to something nearer or further than the window
    # reaches, and has no neighbour on one side for the parabola.
    ok &= (d >= 1) & (d <= dn - 2) & (xx >= true + rx) & (xx < w - rx) & (yy >= ry) & (yy < h - ry)
    return np.where(ok, disp, P.INVALID).astype(np.uint16)


def post(disp):
    """The filters after the selection: medians and speckle removal."""
    if P.MEDIAN > 1:
        disp = cv2.medianBlur(disp, P.MEDIAN)
    if P.MEDIAN_V > 1:
        disp = vertical_median(disp, P.MEDIAN_V)
    if P.DESPECKLE:
        disp = despeckle(disp, P.DESPECKLE)
    return disp


def prepare(left_rect, right_rect, valid_l=None, valid_r=None):
    """Raw cost volume of a pair for the current census settings (before HBOX).

    Returns (volume, census bits, valid-window mask or None, left luma).
    """
    gl, gr = luma(left_rect), luma(right_rect)
    if P.LUMA_BITS < 8:                                 # the low bits are not stored in the line buffers
        drop = 8 - P.LUMA_BITS
        gl, gr = (gl >> drop) << drop, (gr >> drop) << drop
    if P.PREFILTER:
        gl, gr = binomial3(gl), binomial3(gr)
    nbits = len(census_offsets(P.CENSUS_KIND))
    ok_l = ok_r = None
    if valid_l is not None:
        ok_l, ok_r = window_ok(valid_l), window_ok(valid_r)
    return cost_volume(census(gl), census(gr), nbits, ok_l, ok_r), nbits, ok_l, gl


def finish(vol, nbits, ok_l=None, gray=None, stats=None):
    """Aggregation and selection on a raw cost volume."""
    disp = select(sgm(hbox(vol, P.HBOX), nbits, gray, stats))
    if ok_l is not None:
        disp[~ok_l] = P.INVALID
    return disp


def compute(left_rect, right_rect, valid_l=None, valid_r=None):
    """FPGA-style disparity (1/16 pixel, uint16, 0 = invalid) of a rectified RGB pair.

    valid_l / valid_r: where the rectified images contain real picture.
    """
    return finish(*prepare(left_rect, right_rect, valid_l, valid_r))


def fpga_cost(p=None):
    """Rough FPGA need of the matcher for a parameter set.

    Block RAM in kbit by block (what scales with the image: line buffers and
    line memories), plus "units" (parallel disparity evaluators needed to
    reach P.FPS_MIN at the processing clock), "lut" (logic estimate for the
    whole design) and "fps" (what that many units deliver). Rough numbers for
    comparing variants before any synthesis, not a substitute for it.
    """
    p = p or P.current()
    w, d = WIDTH, P.DISPARITIES
    ry, _, _ = CENSUS_SHAPES[p["CENSUS_KIND"]]
    nbits = len(census_offsets(p["CENSUS_KIND"]))
    line = w * tb_bits(p)                               # one line of top-to-bottom path costs as stored
    ram = {
        "census": 2 * (2 * ry + (2 if p["PREFILTER"] else 0)) * w * 8,
        "sgm": line * sum(k in p["PATHS"] for k in ("TB", "D1", "D2")),
        # right-to-left: partial sums of a whole line, plus both census lines to recompute costs
        "sgm_rl": (w * d * (p["L_BITS"] + 1) + 2 * w * nbits) if "RL" in p["PATHS"] else 0,
        "post": ((p["MEDIAN"] - 1) + (p["MEDIAN_V"] - 1) + (4 if p.get("DESPECKLE") else 0)) * w * 11,
        "depth_table": 32768,
    }
    out = {k: v / 1000 for k, v in ram.items()}
    out["total"] = sum(out.values())

    # Throughput: every pixel needs all D disparities, evaluated `units` at a
    # time; a right-to-left path means each line is processed twice. 10 % of
    # the frame time is left for blanking.
    passes = 2 if "RL" in p["PATHS"] else 1
    px_rate = w * HEIGHT * P.FPS_MIN * 1.1
    units = 8
    while P.PROC_CLOCK_HZ * units / (d * passes) < px_rate:
        units *= 2
    out["units"] = units
    out["fps"] = P.PROC_CLOCK_HZ * units / (d * passes) / (w * HEIGHT * 1.1)
    # Logic: per unit a popcount and one min-and-add block per path; the
    # census comparators of both cameras; everything else that exists already
    # (capture, USB, rectification, control) as a lump.
    out["lut"] = (units * (1.1 * nbits + 45 * len(p["PATHS"]) + 30 + 6 * (p["HBOX"] > 1))
                  + 2 * 5 * nbits + 400 * bool(p.get("DESPECKLE")) + 150 * (p["MEDIAN_V"] > 1) + 5500)
    return out


def valid_mask(map_x, map_y):
    """Where a rectification map reads from inside the source image."""
    h, w = map_x.shape
    return (map_x >= 0) & (map_y >= 0) & (map_x <= w - 1) & (map_y <= h - 1)


REFERENCE_MODES = {
    # name: (OpenCV mode, downscale). Measured on this PC at 800 x 600:
    "hh": (cv2.STEREO_SGBM_MODE_HH, 1),          # 8 directions, ~240 ms, no streaks: the yardstick
    "hh4": (cv2.STEREO_SGBM_MODE_HH4, 1),        # 4 two-pass directions, ~90 ms, no streaks
    "half": (cv2.STEREO_SGBM_MODE_HH, 2),        # 8 directions at half size, ~25 ms, coarser
    "fast": (cv2.STEREO_SGBM_MODE_SGBM_3WAY, 1),  # 3 directions, ~20 ms, horizontal streaks
}


def reference(left_rect, right_rect, quality=True, mode=None):
    """OpenCV's semi-global block matcher on the same pair, same units.

    mode: one of REFERENCE_MODES; by default "hh" (or "fast" if quality is False).
    """
    cv_mode, scale = REFERENCE_MODES[mode or ("hh" if quality else "fast")]
    gl = cv2.cvtColor(left_rect, cv2.COLOR_RGB2GRAY)
    gr = cv2.cvtColor(right_rect, cv2.COLOR_RGB2GRAY)
    if scale > 1:
        size = (gl.shape[1] // scale, gl.shape[0] // scale)
        gl = cv2.resize(gl, size, interpolation=cv2.INTER_AREA)
        gr = cv2.resize(gr, size, interpolation=cv2.INTER_AREA)
    low = P.D_MIN // scale
    m = cv2.StereoSGBM_create(minDisparity=low, numDisparities=P.DISPARITIES // scale, blockSize=5,
                              P1=8 * 25, P2=32 * 25, disp12MaxDiff=1, uniquenessRatio=10,
                              speckleWindowSize=200 // scale, speckleRange=2, mode=cv_mode)
    d = m.compute(gl, gr)
    # OpenCV marks "no match" with one below the window's first disparity,
    # which is positive once the window does not start at zero.
    d = np.where(d >= max(low * 16, 1), d, 0).astype(np.uint16)
    if scale > 1:                                   # back to full size, disparities in full-size pixels
        d = cv2.resize(d * scale, (left_rect.shape[1], left_rect.shape[0]), interpolation=cv2.INTER_NEAREST)
    return d


def colorize(disp):
    """Disparity as a colour picture; invalid pixels black."""
    v = np.clip(disp.astype(np.float32) / ((P.D_MIN + P.DISPARITIES) << P.SUBPIXEL_BITS) * 255, 0, 255).astype(np.uint8)
    out = cv2.applyColorMap(v, cv2.COLORMAP_TURBO)
    out[disp == 0] = 0
    return cv2.cvtColor(out, cv2.COLOR_BGR2RGB)


def agreement(a, b):
    """How two disparity maps compare where both are valid."""
    both = (a > 0) & (b > 0)
    diff = np.abs(a.astype(np.int32) - b.astype(np.int32))[both] / (1 << P.SUBPIXEL_BITS)
    if diff.size == 0:
        return dict(both=0.0, within_1px=0.0, median=float("nan"))
    return dict(both=float(both.mean()), within_1px=float((diff <= 1).mean()), median=float(np.median(diff)))


def main():
    sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), ".."))
    from source import FileSource
    from stereo import calibrate, laser, rectify
    folder = sys.argv[1]
    want = int(sys.argv[2]) if len(sys.argv) > 2 else 0
    c = calibrate.load()
    f, base = float(c["P1"][0, 0]), float(np.linalg.norm(c["T"]))
    pair = next(p for p in FileSource(folder).pairs() if p.index == want)
    left = rectify.rectify_ref(pair.left, *c["maps"][0])
    right = rectify.rectify_ref(pair.right, *c["maps"][1])

    t0 = time.time()
    mine = compute(left, right, valid_mask(*c["maps"][0]), valid_mask(*c["maps"][1]))
    t1 = time.time()
    ref = reference(left, right)
    t2 = time.time()
    a = agreement(mine, ref)
    cost = fpga_cost()
    print("parameter: " + ", ".join(f"{k}={v}" for k, v in P.current().items()))
    print(f"perkiraan FPGA: memori blok pencocok {cost['total']:.0f} kbit, {cost['units']} unit paralel "
          f"-> {cost['fps']:.0f} fps, logika total sekitar {cost['lut']:.0f} LUT")
    print(f"gaya-FPGA : {100 * (mine > 0).mean():5.1f}% piksel valid, {t1 - t0:.1f} s")
    print(f"OpenCV 8 arah: {100 * (ref > 0).mean():5.1f}% piksel valid, {t2 - t1:.2f} s")
    print(f"keduanya valid di {100 * a['both']:.1f}% piksel; di sana {100 * a['within_1px']:.1f}% "
          f"berbeda kurang dari 1 piksel, median beda {a['median']:.2f} piksel")

    m = laser.measure(pair.left, pair.right)
    if m is not None:
        pl = calibrate.rectify_points(c, [[m["xl"], m["yl"]]], 0)[0]
        pr = calibrate.rectify_points(c, [[m["xr"], m["yr"]]], 1)[0]
        x, y = int(round(pl[0])), int(round(pl[1]))
        patch = mine[max(y - 6, 0):y + 7, max(x - 6, 0):x + 7]
        d_map = np.median(patch[patch > 0]) / 16 if (patch > 0).any() else float("nan")
        d_dot = pl[0] - pr[0]
        print(f"titik laser di ({x}, {y}) terektifikasi: disparitas titik {d_dot:.2f} px -> {f * base / d_dot:.0f} mm; "
              f"peta disparitas di sekitarnya {d_map:.2f} px -> {f * base / d_map:.0f} mm; "
              f"ToF {'--' if pair.dist_mm is None else f'{pair.dist_mm:.0f} mm'}")

    out = np.vstack((np.hstack((left, right)), np.hstack((colorize(mine), colorize(ref)))))
    name = os.path.join(folder, f"disparity_{want:04d}.png")
    cv2.imwrite(name, cv2.cvtColor(out, cv2.COLOR_RGB2BGR))
    print(f"gambar: {name} (atas: kiri/kanan terektifikasi; bawah: gaya-FPGA / OpenCV 8 arah)")


if __name__ == "__main__":
    main()
