"""Automatic search for the best disparity pipeline that fits the FPGA.

    python -m stereo.autotune                         default recordings, 30 minutes
    python -m stereo.autotune --minutes 60 data/a:0 data/b:2

Tries combinations of the building blocks in stereo/disparity.py, scores each
on recorded pairs, estimates what it would need in the FPGA, and keeps the
best one that fits. Two phases: a greedy pass through the groups of settings,
then random changes of one or two settings around the best found so far,
until the time is up. The winner goes to stereo/params_auto.json, which
stereo/params.py loads.

A candidate must fit (stereo.disparity.fpga_cost):
    block RAM of the matcher  <= BUDGET_KBIT
    logic of the whole design <= BUDGET_LUT
    frame rate                >= params.FPS_MIN (sets the number of parallel
                                 disparity evaluators, and through it the logic)

Score. There is no ground truth for these scenes; OpenCV's 8-direction
matcher with its left-right check stands in for it. On the pixels where that
reference is valid:

    good    share where ours is valid and within 1 px of it
    edge    the same, but only near depth edges of the reference: this is
            the "detail" term, it drops when edges are smeared or eaten
    bad     share where ours is valid and more than 2 px off
    streak  how much more often ours jumps between rows than between columns
            (1 = no direction preferred)

    score = 0.5 * good + 0.5 * edge - 2 * bad - 0.1 * |log2(streak)|

It is a guide, not a proof: the reference is itself imperfect, and the result
depends on the recordings it is given.
"""
import json
import os
import random
import sys
import time

import cv2
import numpy as np

from . import disparity as D
from . import params as P

# Block RAM left for the matcher: 2160 kbit in the XC7Z010, used to at most
# 90 %, minus rectification with only the luma of both cameras buffered
# (about 600 kbit; colour then has to be straightened on the PC or go
# through DDR), the USB FIFO (262) and everything else (100).
BUDGET_KBIT = 980
BUDGET_LUT = 14000          # 80 % of the 17600 in the XC7Z010

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.normpath(os.path.join(HERE, "..", ".."))
# Recorded 2026-10-13 with the calibration then in use: plain cloth with a head
# behind it, a cluttered shelf, a pillow at 0.4 m, a wall and door at 1.5 m,
# the numbered board on a wall at 0.75 m.
DEFAULT_SCENES = [f"data/scene_1013_{n}:1" for n in "abcde"]

PATH_SETS = [("TB",), ("LR", "TB"), ("LR", "RL", "TB"), ("TB", "D1", "D2"),
             ("LR", "TB", "D1", "D2"), ("LR", "RL", "TB", "D1", "D2")]
SPACE = dict(
    PREFILTER=[True, False], CENSUS_KIND=list(D.CENSUS_SHAPES), HBOX=[1, 3, 5], PATHS=PATH_SETS,
    P1_48=[4, 6, 8, 12, 16], P2_48=[24, 32, 40, 56, 64, 80, 96], P2_EDGE_48=[0, 16, 24, 32],
    L_BITS=[6, 7], UNIQUENESS_16=[1, 2, 3, 4], LR_CHECK=[True, False],
    MEDIAN=[1, 3, 5], MEDIAN_V=[1, 3, 5], DESPECKLE=[0, 6, 10, 14])
POST = ("UNIQUENESS_16", "LR_CHECK", "MEDIAN", "MEDIAN_V", "DESPECKLE")


class Scene:
    def __init__(self, spec, cal):
        sys.path.insert(0, os.path.join(HERE, ".."))
        from source import FileSource
        from stereo import rectify
        folder, _, idx = spec.partition(":")
        if not os.path.isabs(folder):
            folder = os.path.join(ROOT, folder)
        pair = next(p for p in FileSource(folder).pairs() if p.index == int(idx or 0))
        self.left = rectify.rectify_ref(pair.left, *cal["maps"][0])
        self.right = rectify.rectify_ref(pair.right, *cal["maps"][1])
        self.vl, self.vr = D.valid_mask(*cal["maps"][0]), D.valid_mask(*cal["maps"][1])
        self.gt = D.reference(self.left, self.right, quality=True)
        g = self.gt.astype(np.int32)
        step = np.zeros(g.shape, bool)
        step[:, 1:] |= (np.abs(g[:, 1:] - g[:, :-1]) > 32) & (g[:, 1:] > 0) & (g[:, :-1] > 0)
        step[1:] |= (np.abs(g[1:] - g[:-1]) > 32) & (g[1:] > 0) & (g[:-1] > 0)
        self.edges = cv2.dilate(step.astype(np.uint8), np.ones((9, 9), np.uint8)).astype(bool) & (self.gt > 0)
        self.vol_key = self.total_key = None


def breaks(disp):
    d = disp.astype(np.int32)
    v = (d[1:] > 0) & (d[:-1] > 0)
    h = (d[:, 1:] > 0) & (d[:, :-1] > 0)
    bv = (np.abs(d[1:] - d[:-1])[v] > 16).mean() if v.any() else 1.0
    bh = (np.abs(d[:, 1:] - d[:, :-1])[h] > 16).mean() if h.any() else 1.0
    return float(bv), float(bh)


def metrics(disp, s):
    g = s.gt > 0
    ours = disp > 0
    diff = np.abs(disp.astype(np.int32) - s.gt.astype(np.int32))
    hit = ours & (diff <= 16)
    good = float(hit[g].mean())
    edge = float(hit[s.edges].mean()) if s.edges.any() else good
    bad = float((ours & (diff > 32))[g].mean())
    bv, bh = breaks(disp)
    streak = bv / max(bh, 1e-6)
    score = 0.5 * good + 0.5 * edge - 2 * bad - 0.1 * abs(np.log2(max(streak, 1e-3)))
    return dict(score=score, good=good, edge=edge, bad=bad, streak=streak, valid=float(ours.mean()))


def evaluate(scenes, params):
    """Mean metrics of a parameter set over the scenes (caches what it can)."""
    P.apply(params)
    rows = []
    for s in scenes:
        vkey = (P.CENSUS_KIND, P.PREFILTER)
        if s.vol_key != vkey:
            s.vol, s.nbits, s.ok, s.gray = D.prepare(s.left, s.right, s.vl, s.vr)
            s.vol_key, s.total_key = vkey, None
        tkey = vkey + (P.HBOX, P.PATHS, P.P1_48, P.P2_48, P.P2_EDGE_48, P.L_BITS)
        if s.total_key != tkey:
            s.total = D.sgm(D.hbox(s.vol, P.HBOX), s.nbits, s.gray)
            s.total_key = tkey
        d = D.select(s.total)
        d[~s.ok] = P.INVALID
        rows.append(metrics(d, s))
    return {k: float(np.mean([r[k] for r in rows])) for k in rows[0]}


def fits(cost):
    return cost["total"] <= BUDGET_KBIT and cost["lut"] <= BUDGET_LUT


def line(name, m, cost):
    return (f"  {name:44s} skor {m['score']:+.3f}  baik {100 * m['good']:5.1f}%  tepi {100 * m['edge']:5.1f}%  "
            f"salah {100 * m['bad']:4.1f}%  streak {m['streak']:.2f}  valid {100 * m['valid']:4.1f}%  "
            f"{cost['total']:5.0f} kbit {cost['lut'] / 1000:4.1f}k LUT {cost['fps']:3.0f} fps")


class Search:
    def __init__(self, scenes):
        self.scenes = scenes
        self.best = None                    # (score, params, metrics, cost)
        self.tried = {}
        self.count = 0

    def key(self, p):
        return tuple(p[k] for k in P.TUNABLE)

    def try_one(self, name, p, quiet=False):
        """Evaluate p unless it cannot fit or was seen before; update the best."""
        cost = D.fpga_cost(p)
        k = self.key(p)
        if k in self.tried:
            return self.tried[k]
        if not fits(cost):
            if not quiet:
                print(f"  {name:44s} tidak muat: {cost['total']:.0f} kbit, {cost['lut'] / 1000:.1f}k LUT", flush=True)
            self.tried[k] = None
            return None
        m = evaluate(self.scenes, p)
        self.count += 1
        self.tried[k] = m
        better = self.best is None or m["score"] > self.best[0]
        if better:
            self.best = (m["score"], dict(p), m, cost)
        if not quiet or better:
            print(line(name, m, cost) + ("  *" if better else ""), flush=True)
        return m

    def stage(self, title, changes_list):
        print(f"\n{title}", flush=True)
        base = dict(self.best[1])
        for name, changes in changes_list:
            self.try_one(name, {**base, **changes})
        print(f"  -> terbaik sejauh ini: skor {self.best[0]:+.3f}", flush=True)


def describe(p):
    return ", ".join(f"{k}={'+'.join(v) if k == 'PATHS' else v}" for k, v in p.items())


def main():
    from stereo import calibrate
    t_start = time.time()
    args = sys.argv[1:]
    minutes = float(args[args.index("--minutes") + 1]) if "--minutes" in args else 30
    specs = [a for i, a in enumerate(args) if not a.startswith("--") and (i == 0 or args[i - 1] != "--minutes")]
    specs = specs or DEFAULT_SCENES
    cal = calibrate.load()
    scenes = [Scene(s, cal) for s in specs]
    print(f"adegan: {', '.join(specs)}")
    print(f"syarat: memori pencocok <= {BUDGET_KBIT} kbit, logika <= {BUDGET_LUT} LUT, >= {P.FPS_MIN} fps; "
          f"waktu pencarian {minutes:g} menit")

    start = dict(PREFILTER=True, CENSUS_KIND="d7", HBOX=1, PATHS=("LR", "TB"), P1_48=8, P2_48=40,
                 P2_EDGE_48=0, L_BITS=6, UNIQUENESS_16=2, LR_CHECK=True, MEDIAN=3, MEDIAN_V=1, DESPECKLE=0)
    search = Search(scenes)
    print("\nTitik awal dan hasil pencarian sebelumnya")
    first = search.try_one("titik awal (census 7x7, 2 arah)", start)
    previous = os.path.join(HERE, "params_auto.json")
    if os.path.exists(previous):
        old = json.load(open(previous))["params"]
        old = {**start, **{k: tuple(v) if k == "PATHS" else v for k, v in old.items() if k in start}}
        search.try_one("hasil pencarian sebelumnya", old)

    search.stage("1. Census", [(f"census {k}{', prafilter' if pf else ''}", dict(CENSUS_KIND=k, PREFILTER=pf))
                                for k in D.CENSUS_SHAPES for pf in (True, False)])
    search.stage("2. Rata-rata biaya horizontal", [(f"rata-rata {n} px", dict(HBOX=n)) for n in (3, 5)])
    search.stage("3. Arah agregasi SGM", [("arah " + "+".join(s), dict(PATHS=s)) for s in PATH_SETS])
    search.stage("4. Penalti", [(f"P1={a} P2={b}, jalur {lb} bit", dict(P1_48=a, P2_48=b, L_BITS=lb))
                                for a, b in ((4, 24), (8, 40), (8, 64), (12, 64), (12, 96), (16, 80))
                                for lb in (6, 7)])
    search.stage("5. P2 lebih kecil di tepi gambar", [(f"P2 di tepi = {e}", dict(P2_EDGE_48=e)) for e in (16, 24, 32)])
    search.stage("6. Uji keunikan dan kiri-kanan",
                 [(f"keunikan {u}/16, uji kiri-kanan {'ya' if lr else 'tidak'}", dict(UNIQUENESS_16=u, LR_CHECK=lr))
                  for u in (1, 2, 3, 4) for lr in (True, False)])
    search.stage("7. Penyaring akhir",
                 [(f"median {md}, median vertikal {mv}, buang bintik {ds}", dict(MEDIAN=md, MEDIAN_V=mv, DESPECKLE=ds))
                  for md in (1, 3, 5) for mv in (1, 3, 5) for ds in (0, 6, 10, 14)])

    print(f"\n8. Perubahan acak di sekitar yang terbaik (sampai menit ke-{minutes:g}; hanya perbaikan yang dicetak)",
          flush=True)
    rng = random.Random(1)
    n_before = search.count
    while (time.time() - t_start) / 60 < minutes:
        p = dict(search.best[1])
        # mostly cheap post-filter changes, sometimes one that needs the full pipeline again
        keys = rng.sample(POST, rng.choice((1, 2))) if rng.random() < 0.5 else \
            rng.sample(list(SPACE), rng.choice((1, 2)))
        for k in keys:
            p[k] = rng.choice(SPACE[k])
        search.try_one("acak: " + ", ".join(f"{k}={'+'.join(p[k]) if k == 'PATHS' else p[k]}" for k in keys),
                       p, quiet=True)
    print(f"  {search.count - n_before} kombinasi acak dinilai", flush=True)

    score, best, m, cost = search.best
    print("\nHASIL")
    print(line("titik awal", first, D.fpga_cost(start)))
    print(line("terpilih", m, cost))
    for k in P.TUNABLE:
        mark = "" if best[k] == start[k] else "   <- berubah dari titik awal"
        print(f"    {k:14s} = {'+'.join(best[k]) if k == 'PATHS' else best[k]}{mark}")
    print("    memori blok: " + ", ".join(f"{k} {cost[k]:.0f}" for k in ("census", "sgm", "sgm_rl", "post", "depth_table"))
          + f" = {cost['total']:.0f} dari {BUDGET_KBIT} kbit")
    print(f"    {cost['units']} unit paralel -> {cost['fps']:.0f} fps pada {P.PROC_CLOCK_HZ / 1e6:.0f} MHz; "
          f"logika sekitar {cost['lut']:.0f} dari {BUDGET_LUT} LUT")
    print(f"    {search.count} kombinasi dinilai dalam {(time.time() - t_start) / 60:.1f} menit")

    json.dump(dict(params={k: list(v) if isinstance(v, tuple) else v for k, v in best.items()},
                   score=m, fpga=cost, scenes=specs, budget_kbit=BUDGET_KBIT, budget_lut=BUDGET_LUT,
                   fps_min=P.FPS_MIN, evaluated=search.count, date=time.strftime("%Y-%m-%d %H:%M:%S")),
              open(previous, "w"), indent=1)

    s = scenes[0]
    P.apply(start)
    a = D.compute(s.left, s.right, s.vl, s.vr)
    P.apply(best)
    b = D.compute(s.left, s.right, s.vl, s.vr)
    pic = np.hstack((D.colorize(a), D.colorize(b), D.colorize(s.gt)))
    for i, t in enumerate(("titik awal", "hasil pencarian otomatis", "OpenCV 8 arah (pembanding)")):
        cv2.putText(pic, t, (i * 800 + 12, 28), cv2.FONT_HERSHEY_SIMPLEX, 0.8, (255, 255, 255), 2)
    out = os.path.join(ROOT, "build", "autotune_compare.png")
    cv2.imwrite(out, cv2.cvtColor(pic, cv2.COLOR_RGB2BGR))
    print(f"\nditulis: {previous}\n         {out}")


if __name__ == "__main__":
    main()
