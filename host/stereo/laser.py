"""Finds the red laser dot (KY-008, 650 nm) in a camera image.

The dot marks where the ToF sensor measures. In an image it is a saturated,
nearly white core with a red halo. Two detectors:

  find_dot        reference: connected components, then an intensity-weighted
                  centroid of the core (sub-pixel).
  find_dot_fpga   what the same job looks like in logic: one pass over the
                  pixels, a per-pixel test and three accumulators (count,
                  sum of x, sum of y), restricted to a window around where
                  the dot was last seen. Used to judge how much the simple
                  version loses against the reference.

    python -m stereo.laser data/laser_b            annotate a recording
"""
import os
import sys

import cv2
import numpy as np

CORE_MIN = 235          # red channel of the saturated core
HALO_MIN = 18           # mean redness (R - (G+B)/2) around a real dot
AREA_MIN, AREA_MAX = 6, 4000


def redness(rgb):
    r = rgb[:, :, 0].astype(np.int16)
    g = rgb[:, :, 1].astype(np.int16)
    b = rgb[:, :, 2].astype(np.int16)
    return np.clip(r - (g + b) // 2, 0, 255).astype(np.uint8)


def find_dot(rgb):
    """Returns (x, y, score) of the laser dot, or None.

    x, y are sub-pixel image coordinates; score is the mean redness of the
    halo, useful to reject a bright red object that is not the laser.
    """
    red = redness(rgb)
    halo = cv2.blur(red, (15, 15))
    mask = ((rgb[:, :, 0] >= CORE_MIN) & (halo >= HALO_MIN)).astype(np.uint8)
    mask = cv2.morphologyEx(mask, cv2.MORPH_CLOSE, np.ones((3, 3), np.uint8))
    n, labels, stats, _ = cv2.connectedComponentsWithStats(mask, connectivity=8)
    best, best_score = None, 0.0
    for i in range(1, n):
        x, y, w, h, area = stats[i]
        if not AREA_MIN <= area <= AREA_MAX or max(w, h) > 4 * min(w, h):
            continue
        score = float(halo[labels == i].mean()) * min(area, 200) ** 0.5
        if score > best_score:
            best, best_score = i, score
    if best is None:
        return None
    x, y, w, h, _ = stats[best]
    # Position = centroid of the red halo around the core. The core itself is
    # white and merges with any bright white surface next to it (a fold in
    # cloth, paper), which would drag a brightness centroid off the dot; the
    # halo is red on all sides and such surfaces are not.
    cx, cy = x + w // 2, y + h // 2
    pad = max(w, h) // 2 + 10
    x0, y0 = max(cx - pad, 0), max(cy - pad, 0)
    x1, y1 = min(cx + pad + 1, rgb.shape[1]), min(cy + pad + 1, rgb.shape[0])
    win = red[y0:y1, x0:x1].astype(np.float32)
    wgt = np.clip(win - 0.4 * win.max(), 0, None)
    if wgt.sum() <= 0:
        wgt = (labels[y0:y1, x0:x1] == best).astype(np.float32)
    ys, xs = np.mgrid[y0:y1, x0:x1]
    hx, hy = (wgt * xs).sum() / wgt.sum(), (wgt * ys).sum() / wgt.sum()
    # Refine with the core: the disc where every channel clips. A lit fold of
    # white cloth is bright but does not clip, so it stays out. Among the
    # clipped regions the one nearest the halo centre is the dot.
    low = rgb[y0:y1, x0:x1].min(axis=2)
    disc = (low >= max(int(low.max()) - 6, 200)).astype(np.uint8)
    m, dl, ds, dc = cv2.connectedComponentsWithStats(disc, connectivity=8)
    if m > 1:
        k = 1 + int(np.argmin([(dc[i][0] + x0 - hx) ** 2 + (dc[i][1] + y0 - hy) ** 2
                               for i in range(1, m)]))
        if ds[k][4] >= 4 and abs(dc[k][0] + x0 - hx) < 12 and abs(dc[k][1] + y0 - hy) < 12:
            return float(dc[k][0] + x0), float(dc[k][1] + y0), float(halo[labels == best].mean())
    return (float((wgt * xs).sum() / wgt.sum()), float((wgt * ys).sum() / wgt.sum()),
            float(halo[labels == best].mean()))


def find_dot_fpga(rgb, near=None, window=64):
    """Single-pass, accumulator-only version. Returns (x, y, count) or None.

    A pixel counts when its red channel is saturated and it is redder than
    it is green. Only pixels inside a window around `near` (the last known
    position) are considered; without `near` the whole frame is used.
    """
    r = rgb[:, :, 0].astype(np.int16)
    g = rgb[:, :, 1].astype(np.int16)
    hit = (r >= 248) & (r - g >= 24)
    if near is not None:
        x, y = int(near[0]), int(near[1])
        box = np.zeros_like(hit)
        box[max(y - window, 0):y + window, max(x - window, 0):x + window] = True
        hit &= box
    count = int(hit.sum())
    if count < AREA_MIN:
        return None
    ys, xs = np.nonzero(hit)
    return float(xs.sum()) / count, float(ys.sum()) / count, count


def measure(left, right):
    """Dot in both images: dict with positions, disparity and vertical offset, or None."""
    a, b = find_dot(left), find_dot(right)
    if a is None or b is None:
        return None
    return dict(xl=a[0], yl=a[1], xr=b[0], yr=b[1], disparity=a[0] - b[0], dy=a[1] - b[1],
                score=min(a[2], b[2]))


def annotate(rgb, dot, color=(0, 255, 0)):
    out = rgb.copy()
    if dot is not None:
        x, y = int(round(dot[0])), int(round(dot[1]))
        cv2.line(out, (x - 14, y), (x - 4, y), color, 1)
        cv2.line(out, (x + 4, y), (x + 14, y), color, 1)
        cv2.line(out, (x, y - 14), (x, y - 4), color, 1)
        cv2.line(out, (x, y + 4), (x, y + 14), color, 1)
    return out


def main():
    sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), ".."))
    from source import FileSource
    folder = sys.argv[1]
    rows = []
    for pair in FileSource(folder).pairs():
        m = measure(pair.left, pair.right)
        fl = find_dot_fpga(pair.left, None if m is None else (m["xl"], m["yl"]))
        fr = find_dot_fpga(pair.right, None if m is None else (m["xr"], m["yr"]))
        if m is None:
            print(f"{pair.index:3d}  no dot")
            continue
        rows.append(m)
        extra = ""
        if fl and fr:
            extra = (f"   fpga-style differs by L({fl[0] - m['xl']:+.2f},{fl[1] - m['yl']:+.2f}) "
                     f"R({fr[0] - m['xr']:+.2f},{fr[1] - m['yr']:+.2f})")
        print(f"{pair.index:3d}  L({m['xl']:7.2f},{m['yl']:7.2f})  R({m['xr']:7.2f},{m['yr']:7.2f})  "
              f"disparity {m['disparity']:7.2f}  dy {m['dy']:+6.2f}  score {m['score']:.0f}{extra}")
        if pair.index == 0:
            both = np.hstack((annotate(pair.left, (m["xl"], m["yl"])),
                              annotate(pair.right, (m["xr"], m["yr"]))))
            cv2.imwrite(os.path.join(folder, "laser_annotated.png"), cv2.cvtColor(both, cv2.COLOR_RGB2BGR))
    if rows:
        for key in ("xl", "yl", "xr", "yr", "disparity", "dy"):
            v = np.array([r[key] for r in rows])
            print(f"  {key:9s} mean {v.mean():8.2f}  spread (std) {v.std():.2f} px")


if __name__ == "__main__":
    main()
