"""A chain of small matcher slices that together behave as one matcher.

    python -m stereo.chain data/scene_1013_b 1            4 slices of 16 disparities
    python -m stereo.chain data/scene_1013_b 1 --slices 2

Concept check for the Tiny Tapeout version of the matcher ("matcher mini"):
every chip handles SLICE consecutive disparities and one SGM direction
(left to right). This model computes a row the way the chain would, each
slice seeing nothing but its own costs and the few values it exchanges, and
compares the result with the ordinary model (cost_volume, hbox, sgm with
PATHS = LR, pick) for all the disparities at once. They must be identical;
then the list of exchanged values below is complete.

Per pixel a slice needs from outside:
    gmin      lowest path cost of the previous pixel over the whole chain
    dn, up    path cost of the previous pixel just below / above its window
    kstar     the chain's winner of the previous pixel (for the runner-up pass)
    rec_in    the right image's running winner coming up from the slice below
and gives:
    lmin      its own lowest path cost                      (reduced: minimum)
    l_top     its path cost at the top of its window         (to the slice above)
    l_bot     ... at the bottom                             (to the slice below)
    best      its lowest sum with its index                 (reduced: lower one, lower index first)
    second    its lowest sum outside kstar - 1 .. kstar + 1  (reduced: minimum)
    s0, s2    its sums at kstar - 1 and kstar + 1, if it holds them
    rec_out   the running winner leaving its window          (to the slice above)
"""
import os
import sys

import numpy as np

from . import disparity
from . import params as P

BIG = 1 << 20
PBIG = 1000


class Slice:
    """One chip: `n` disparities starting at window index `base`."""

    def __init__(self, base, n, rows):
        self.base, self.n = base, n
        self.path = np.zeros((rows, n), np.int32)           # path cost of the previous pixel
        self.sums = np.zeros((rows, n), np.int32)           # sums of the previous pixel (runner-up pass)
        self.rec_s = np.full((rows, n), BIG, np.int32)      # right image's running winner: sum
        self.rec_k = np.zeros((rows, n), np.int32)          # ... and its index

    def step(self, cost, first, gmin, dn, up, p1, p2, lmax, usable, rec_in):
        """The path step of one pixel. cost: (rows, n). Returns what the slice sends on."""
        if first:
            path = np.minimum(cost, lmax)
        else:
            a = np.concatenate((self.path[:, 1:], up[:, None]), axis=1) + p1
            b = np.concatenate((dn[:, None], self.path[:, :-1]), axis=1) + p1
            m = np.minimum(np.minimum(self.path, a), np.minimum(b, gmin[:, None] + p2))
            path = np.minimum(cost + m - gmin[:, None], lmax)
        self.path = path
        self.sums = path                                    # one direction: the sum is the path cost
        k = path.argmin(axis=1)
        rows = np.arange(len(path))
        # right image: every entry moves up one disparity and meets this pixel's sum there
        s_use = np.where(usable, path, BIG)
        prev_s = np.concatenate((rec_in[0][:, None], self.rec_s[:, :-1]), axis=1)
        prev_k = np.concatenate((rec_in[1][:, None], self.rec_k[:, :-1]), axis=1)
        out = (self.rec_s[:, -1].copy(), self.rec_k[:, -1].copy())
        take = s_use < prev_s
        idx = self.base + np.arange(self.n)[None, :]
        self.rec_s = np.where(take, s_use, prev_s)
        self.rec_k = np.where(take, idx, prev_k)
        return dict(lmin=path.min(axis=1), l_bot=path[:, 0], l_top=path[:, -1],
                    best=(path[rows, k], self.base + k), rec_out=out)

    def idle(self, rec_in):
        """A slot after the end of the row: only the right image's entries move on."""
        out = (self.rec_s[:, -1].copy(), self.rec_k[:, -1].copy())
        self.rec_s = np.concatenate((rec_in[0][:, None], self.rec_s[:, :-1]), axis=1)
        self.rec_k = np.concatenate((rec_in[1][:, None], self.rec_k[:, :-1]), axis=1)
        return out

    def runner_up(self, kstar, total):
        """Second pass, for the pixel whose sums are held: (second, s0, has0, s2, has2)."""
        idx = self.base + np.arange(self.n)[None, :]
        lo = np.clip(kstar - 1, 0, total - 1)[:, None]
        hi = np.clip(kstar + 1, 0, total - 1)[:, None]
        outside = (idx < kstar[:, None] - 1) | (idx > kstar[:, None] + 1)
        second = np.where(outside, self.sums, BIG).min(axis=1)
        h0, h2 = (idx == lo), (idx == hi)
        return (second, np.where(h0, self.sums, 0).sum(axis=1), h0.any(axis=1),
                np.where(h2, self.sums, 0).sum(axis=1), h2.any(axis=1))


def match(vol, nbits, slices):
    """Disparity per pixel (1/16 px, 0 = none) from the cost volume, computed by a chain."""
    h, w, total = vol.shape
    n = total // slices
    assert n * slices == total
    lmax = (1 << P.L_BITS) - 1
    p1, p2 = disparity.penalties(nbits)
    ry, rx, _ = disparity.CENSUS_SHAPES[P.CENSUS_KIND]
    chain = [Slice(i * n, n, h) for i in range(slices)]
    c = vol.astype(np.int32)
    win_s = np.zeros((h, w), np.int32)
    win_k = np.zeros((h, w), np.int32)
    second = np.zeros((h, w), np.int32)
    s0 = np.zeros((h, w), np.int32)
    s2 = np.zeros((h, w), np.int32)
    dr = np.zeros((h, w), np.int32)                         # right image's winner by right pixel
    none = (np.full(h, BIG, np.int32), np.zeros(h, np.int32))
    gmin = np.zeros(h, np.int32)
    edge = [np.full(h, PBIG, np.int32) for _ in range(slices + 1)]     # edge[i]: top of slice i - 1
    bot = [np.full(h, PBIG, np.int32) for _ in range(slices + 1)]      # bot[i]: bottom of slice i
    for x in range(w + total):
        if x < w:
            usable = (P.D_MIN + rx <= x < w - rx)
            got, rec = [], none
            for i, sl in enumerate(chain):                  # the reduce chain runs upwards
                r = sl.step(c[:, x, i * n:(i + 1) * n], x == 0, gmin, edge[i], bot[i + 1],
                            p1, p2, lmax, usable, rec)
                rec = r["rec_out"]
                got.append(r)
            # what the hub hands back for the next pixel
            gmin = np.minimum.reduce([r["lmin"] for r in got])
            edge = [np.full(h, PBIG, np.int32)] + [r["l_top"] for r in got]
            bot = [r["l_bot"] for r in got] + [np.full(h, PBIG, np.int32)]
            bs, bk = got[0]["best"]
            for r in got[1:]:
                better = r["best"][0] < bs                  # the lower slice wins a tie: lowest index first
                bs, bk = np.where(better, r["best"][0], bs), np.where(better, r["best"][1], bk)
            win_s[:, x], win_k[:, x] = bs, bk
            # runner-up pass with the winner just found (the chips do it one pixel later)
            parts = [sl.runner_up(bk, total) for sl in chain]
            second[:, x] = np.minimum.reduce([p[0] for p in parts])
            s0[:, x] = sum(np.where(p[2], p[1], 0) for p in parts)
            s2[:, x] = sum(np.where(p[4], p[3], 0) for p in parts)
        else:
            rec = none
            for sl in chain:
                rec = sl.idle(rec)
        xr = x - P.D_MIN - (total - 1)                      # right pixel whose entry has just left the chain
        if 0 <= xr - 1 < w:
            dr[:, xr - 1] = rec[1]
    # ---- what the top chip and the hub finish: the tests of pick() ---------------
    yy, xx = np.mgrid[0:h, 0:w]
    d, s1 = win_k, win_s
    den = 2 * (s0 - 2 * s1 + s2)
    num = (s0 - s2) << P.SUBPIXEL_BITS
    half = 1 << (P.SUBPIXEL_BITS - 1)
    off = np.clip(np.where(den > 0, (2 * num + np.sign(num) * den) // np.maximum(2 * den, 1), 0), -half, half)
    true = d + P.D_MIN
    ok = (second - s1) * 16 >= second * P.UNIQUENESS_16
    if P.LR_CHECK:
        ok &= np.abs(dr[yy, np.clip(xx - true, 0, w - 1)] - d) <= 1
    ok &= (d >= 1) & (d <= total - 2) & (xx >= true + rx) & (xx < w - rx) & (yy >= ry) & (yy < h - ry)
    return np.where(ok, (true << P.SUBPIXEL_BITS) + off, P.INVALID).astype(np.uint16)


def main():
    sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), ".."))
    from source import FileSource
    from . import calibrate, golden, stream
    args = [a for a in sys.argv[1:] if not a.startswith("--")]
    slices = int(sys.argv[sys.argv.index("--slices") + 1]) if "--slices" in sys.argv else 4
    if "--slices" in sys.argv:
        args.remove(str(slices))
    if "--golden" in sys.argv:
        args.remove(sys.argv[sys.argv.index("--golden") + 1])
    folder = args[0] if os.path.isabs(args[0]) else os.path.join(calibrate.ROOT, args[0])
    want = int(args[1]) if len(args) > 1 else 0
    cal = calibrate.load(os.path.join(calibrate.ROOT, "calib", "stereo_cif_derived_20261013.npz"))
    pair = next(p for p in FileSource(folder).pairs() if p.index == want)
    left, right = golden.fit_profile(pair.left), golden.fit_profile(pair.right)
    P.PATHS = ("LR",)
    gold = sys.argv[sys.argv.index("--golden") + 1] if "--golden" in sys.argv else None
    if gold:
        P.DISPARITIES = 16 * slices          # vectors for a chain of this many 16-disparity slices
    nbits = len(disparity.census_offsets(P.CENSUS_KIND))
    (cl, okl), (cr, okr) = stream.front(left, cal, 0), stream.front(right, cal, 1)
    vol = disparity.hbox(disparity.cost_volume(cl, cr, nbits, okl, okr), P.HBOX)
    whole = disparity.pick(disparity.sgm(vol, nbits))
    chained = match(vol, nbits, slices)
    diff = int((whole != chained).sum())
    print(f"{os.path.basename(folder)} pasangan {want}: {P.DISPARITIES} disparitas satu arah; satu matcher: "
          f"{100 * (whole > 0).mean():.1f}% valid; rantai {slices} x {P.DISPARITIES // slices}: "
          f"{100 * (chained > 0).mean():.1f}% valid; piksel berbeda {diff} dari {whole.size}")
    if gold and not diff:
        out = os.path.join(calibrate.ROOT, gold)
        os.makedirs(out, exist_ok=True)
        for cam, (c, ok) in enumerate(((cl, okl), (cr, okr))):
            golden.write_hex(os.path.join(out, f"cam{cam}_census.hex"), c.astype(object) + (ok.astype(object) << nbits), 12)
        golden.write_hex(os.path.join(out, "match.hex"), whole, 3)
        ry, rx, _ = disparity.CENSUS_SHAPES[P.CENSUS_KIND]
        p1, p2 = disparity.penalties(nbits)
        cfg = dict(IMG_W=whole.shape[1], IMG_H=whole.shape[0], CENSUS_BITS=nbits, CENSUS_RX=rx, CENSUS_RY=ry,
                   SLICES=slices, DMIN=P.D_MIN, SGM_P1=p1, SGM_P2=p2, UNIQ=P.UNIQUENESS_16)
        with open(os.path.join(out, "mini_cfg.vh"), "w") as f:
            f.write("".join(f"localparam {k} = {v};\n" for k, v in cfg.items()))
        print("vektor uji:", out)
    if diff:
        ys, xs = np.nonzero(whole != chained)
        print("   contoh (y, x, satu, rantai):", [(int(y), int(x), int(whole[y, x]), int(chained[y, x])) for y, x in list(zip(ys, xs))[:6]])
    return 1 if diff else 0


if __name__ == "__main__":
    sys.exit(main())
