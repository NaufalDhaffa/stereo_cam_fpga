"""Checks whether the two cameras still sit where they did at reference time.

The cameras stand on a breadboard and can shift between power-ups. This
program is meant to be run after every power-up, before any measurement:

    camalign --save-reference     once, right after calibration
    camalign                      every power-up: prints the pixel shift in
                                  X and Y of each camera against the reference

How it works. The laser marks the spot the ToF sensor measures. Seen from a
camera, that spot moves along a straight line in the image as the distance
changes (parallax between laser and camera). The reference stores where the
dot was at several distances; a check predicts where it should be now and
reports the difference.

The distance comes from the ToF sensor. Without a valid ToF reading the dot's
own disparity is used in its place: the vertical shift of each camera and a
shift common to both are still measured, but a horizontal shift of one camera
against the other cannot be told apart from a change of distance.
"""
import argparse
import json
import os
import sys
import time

import numpy as np

from pslink import ROOT
from source import LiveSource
from stereo.laser import measure

REF_PATH = os.path.join(ROOT, "calib", "align_ref.json")
OUT_PATH = os.path.join(ROOT, "build", "alignment.json")
OK_PX, WARN_PX = 0.5, 2.0
KEYS = ("xl", "yl", "xr", "yr")


def collect(src, frames=30, settle=1.0, board_square=None):
    """Median dot position over `frames` pairs, with spread and ToF distance.

    When the numbered wall board (stereo/charuco.py) is in view, its corners
    are collected too, under "board". A sample needs the laser dot or the
    board; the dot's fields are None when only the board was seen.
    """
    import cv2
    from stereo import charuco
    t0 = time.time()
    rows, corners, seen = [], {}, 0
    for pair in src.pairs():
        if time.time() - t0 < settle:
            continue
        seen += 1
        m = measure(pair.left, pair.right)
        if m is not None:
            rows.append([m[k] for k in KEYS])
        found = charuco.find_pair(cv2.cvtColor(pair.left, cv2.COLOR_RGB2GRAY), cv2.cvtColor(pair.right, cv2.COLOR_RGB2GRAY))
        for i, p in found.items():
            corners.setdefault(i, []).append(p)
        if len(rows) >= frames or seen >= 2 * frames or time.time() - t0 > settle + 10:
            break
    # A corner counts when it was found in at least half of the frames; its
    # position is the median, so one bad detection does not matter.
    steady = {i: np.median(np.array(p), axis=0) for i, p in corners.items() if len(p) >= max(3, seen // 2)}
    has_dot, has_board = len(rows) >= frames // 2, len(steady) >= charuco.MIN_CORNERS
    if not has_dot and not has_board:
        return None
    sample = dict.fromkeys(KEYS)
    sample.update(spread=None, frames=len(rows))
    if has_dot:
        a = np.array(rows)
        sample.update({k: float(np.median(a[:, i])) for i, k in enumerate(KEYS)})
        sample["spread"] = float(a.std(axis=0).max())
    if has_board:
        ids = sorted(steady)
        sample["board"] = dict(square_mm=float(board_square or charuco.SQUARE_MM), ids=ids,
                               pts=[[float(v) for v in steady[i]] for i in ids])
    # The ToF emitter shows in the pictures, so it is off while the dot is
    # located and only switched on now for the distance.
    sample["dist_mm"] = src.measure_distance(10) if hasattr(src, "measure_distance") else None
    sample.update(stereo_distance(sample))
    return sample


def board_distance(sample, only=None):
    """Wall distances from the stored board corners with the present calibration, or None."""
    from stereo import calibrate, charuco
    b = sample.get("board")
    if not b or not os.path.exists(calibrate.OUT_NPZ):
        return None
    return charuco.wall(calibrate.load(), b["ids"], b["pts"], b["square_mm"], only)


def stereo_distance(s):
    """Distance of the laser dot from the calibrated stereo pair, if there is a calibration.

    Returns stereo_mm (None when the two detections are not on the same row
    after rectification, i.e. are not the same point) and rect_dy.
    """
    from stereo import calibrate
    if not os.path.exists(calibrate.OUT_NPZ) or s.get("xl") is None:
        return dict(stereo_mm=None, rect_dy=None)
    c = calibrate.load()
    f, base = float(c["P1"][0, 0]), float(np.linalg.norm(c["T"]))
    pl = calibrate.rectify_points(c, [[s["xl"], s["yl"]]], 0)[0]
    pr = calibrate.rectify_points(c, [[s["xr"], s["yr"]]], 1)[0]
    d, dy = float(pl[0] - pr[0]), float(pl[1] - pr[1])
    return dict(stereo_mm=f * base / d if d > 1 and abs(dy) <= 3 else None, rect_dy=dy)


def analyze_board(samples, relate):
    """The numbered wall board: stereo and mono distance to the wall against ruler and ToF."""
    with_board = [s for s in samples if s.get("board")]
    if not with_board:
        return
    # Corners every sample has, so that all distances can also be compared on
    # exactly the same points of the board.
    common = set(with_board[0]["board"]["ids"])
    for s in with_board[1:]:
        common &= set(s["board"]["ids"])
    print()
    print("papan bernomor di dinding (jarak tegak lurus kamera kiri ke dinding, kalibrasi sekarang):")
    # The reference is the ruler where one was entered, otherwise the ToF
    # reading of the sample (already reduced by the 13.5 mm sensor offset).
    by_ruler = all(s.get("ruler_mm") for s in with_board)
    ref_name = "penggaris" if by_ruler else "ToF"
    print(f"acuan jarak: {ref_name}" + ("" if by_ruler else " (VL53L0X: galat khas beberapa persen, jadi selisih"
                                         " di bawah itu tidak membuktikan apa-apa tentang stereo)"))
    print(f"{'#':>2s}{'sudut':>7s}{'stereo':>8s}{'sama':>7s}{'mono':>7s}{'penggaris':>11s}{'ToF':>6s}"
          f"{'st-acuan':>10s}{'mono-acuan':>12s}{'miring':>8s}{'rata':>7s}{'dy px':>8s}")
    f = lambda v, n=0: "--" if v is None else f"{v:.{n}f}"
    diff = lambda a, b: "--" if a is None or b is None else f"{a - b:+.0f}"
    got = []
    for i, s in enumerate(samples):
        w = board_distance(s)
        if w is None:
            continue
        same = board_distance(s, common) if len(common) >= 6 else None
        ru, tf = s.get("ruler_mm"), s.get("dist_mm")
        ref = ru if by_ruler else tf
        print(f"{i:2d}{w['corners']:7d}{f(w['stereo_mm']):>8s}{f(same and same['stereo_mm']):>7s}{f(w['mono_mm']):>7s}"
              f"{f(ru):>11s}{f(tf):>6s}{diff(w['stereo_mm'], ref):>10s}{diff(w['mono_mm'], ref):>12s}"
              f"{f(w['tilt_deg'], 1):>8s}{f(w['flat_mm'], 1):>7s}{w['dy']:+8.2f}")
        got.append((w, ref))
    print(f"  'sama' = hanya dari {len(common)} sudut yang ada di semua sampel; 'miring' = sudut dinding terhadap"
          " arah pandang (derajat); 'rata' = simpangan titik dari bidang (mm)")
    ruled = [(w, ru) for w, ru in got if ru]
    for key, name in (("stereo_mm", "papan-stereo"), ("mono_mm", "papan-mono")):
        rows = [(w[key], ru) for w, ru in ruled if w[key]]
        if len(rows) >= 2:
            relate(name, [r[0] for r in rows], ref_name, [r[1] for r in rows])
    rows = [(w["stereo_mm"], w["mono_mm"]) for w, _ in got if w["stereo_mm"] and w["mono_mm"]]
    if len(rows) >= 2:
        relate("papan-stereo", [r[0] for r in rows], "papan-mono", [r[1] for r in rows])


def _relate(name_y, y, name_x, x):
    x, y = np.array(x), np.array(y)
    if np.ptp(x) < 100:
        print(f"{name_y} terhadap {name_x}: rentang jarak terlalu sempit ({np.ptp(x):.0f} mm) untuk "
              f"memisahkan skala dari offset; selisih rata-rata {np.mean(y - x):+.0f} mm")
        return
    a, b = np.polyfit(x, y, 1)
    res = y - (a * x + b)
    print(f"{name_y} = {a:.3f} x {name_x} {b:+.0f} mm   (sisa {np.abs(res).max():.0f} mm)")
    if abs(a - 1) < 0.02 and abs(b) > 8:
        print(f"   -> selisih tetap sekitar {b:+.0f} mm pada semua jarak: itu offset, bukan skala")
    elif abs(a - 1) >= 0.02 and abs(b) <= 8:
        print(f"   -> selisih tumbuh dengan jarak ({100 * (a - 1):+.1f}%): itu skala")
    elif abs(a - 1) >= 0.02:
        print(f"   -> ada skala ({100 * (a - 1):+.1f}%) dan offset ({b:+.0f} mm) sekaligus")
    else:
        print("   -> keduanya sepakat")


def analyze(samples):
    """Compares the distance sources over the samples and says what the differences look like."""
    analyze_board(samples, _relate)
    rows = [s for s in samples if s.get("stereo_mm") and s.get("dist_mm")]
    print()
    print("titik laser:")
    print(f"{'#':>2s}{'stereo':>9s}{'ToF-13,5':>10s}{'penggaris':>11s}{'ToF-stereo':>12s}{'stereo-pgr':>12s}{'ToF-pgr':>9s}")
    for i, s in enumerate(samples):
        st, tf, ru = s.get("stereo_mm"), s.get("dist_mm"), s.get("ruler_mm")
        f = lambda v: "--" if v is None else f"{v:.0f}"
        diff = lambda a, b: "--" if a is None or b is None else f"{a - b:+.0f}"
        print(f"{i:2d}{f(st):>9s}{f(tf):>10s}{f(ru):>11s}{diff(tf, st):>12s}{diff(st, ru):>12s}{diff(tf, ru):>9s}")
    if len(rows) < 2:
        print("perlu minimal dua sampel titik laser dengan stereo dan ToF untuk menilai selisihnya")
        return

    relate = _relate
    relate("ToF", [s["dist_mm"] for s in rows], "stereo", [s["stereo_mm"] for s in rows])
    ruled = [s for s in samples if s.get("ruler_mm")]
    if len(ruled) >= 2:
        st = [s for s in ruled if s.get("stereo_mm")]
        tf = [s for s in ruled if s.get("dist_mm")]
        if len(st) >= 2:
            relate("stereo", [s["stereo_mm"] for s in st], "penggaris", [s["ruler_mm"] for s in st])
        if len(tf) >= 2:
            relate("ToF", [s["dist_mm"] for s in tf], "penggaris", [s["ruler_mm"] for s in tf])
    else:
        print("tanpa ukuran penggaris tidak bisa diputuskan mana yang benar, stereo atau ToF.")


def predictor(sample, use_tof):
    """The quantity the dot position is linear in: 1/distance, or disparity."""
    return 1000.0 / sample["dist_mm"] if use_tof else sample["xl"] - sample["xr"]


def fit(samples, use_tof):
    """Per coordinate: position = p0 + p1 * predictor. Constant if one distance only."""
    t = np.array([predictor(s, use_tof) for s in samples])
    span = t.max() - t.min()
    enough = span > (0.3 if use_tof else 8.0) and len(samples) >= 2
    model = {}
    for k in KEYS:
        v = np.array([s[k] for s in samples])
        if enough:
            p1, p0 = np.polyfit(t, v, 1)
        else:
            p1, p0 = 0.0, float(v.mean())
        model[k] = (float(p0), float(p1))
    return model, enough


def status(px):
    return "OK" if abs(px) < OK_PX else ("PERINGATAN" if abs(px) < WARN_PX else "GAGAL")


def save_reference(src, args):
    samples = []
    if args.append and os.path.exists(REF_PATH):
        samples = json.load(open(REF_PATH))["samples"]
    print("Hadapkan rig tegak lurus ke dinding datar. Ambil 3 jarak atau lebih (mis. 0,4 / 0,7 / 1,0 m).")
    print("Di tiap posisi: ukur jarak dari permukaan depan modul kamera ke dinding dengan penggaris,")
    print("ketik angkanya dalam mm lalu Enter (Enter saja bila tidak diukur). Ketik s untuk selesai.")
    n = args.samples
    while True:
        ruler = None
        if n is None:
            ans = input(f"[{len(samples)} tersimpan] jarak penggaris (mm) / Enter / s: ").strip().lower()
            if ans == "s":
                break
            try:
                ruler = float(ans.replace(",", ".")) if ans else None
            except ValueError:
                print("  bukan angka; sampel diambil tanpa ukuran penggaris")
        s = collect(src, args.frames)
        if s is None or s["xl"] is None:
            print("  titik laser tidak terlihat di kedua kamera; tidak disimpan")
        else:
            s["ruler_mm"] = ruler
            samples.append(s)
            d = "ToF tidak valid" if s["dist_mm"] is None else f"ToF-13,5 {s['dist_mm']:.0f} mm"
            st = ("stereo tidak pasti" if s.get("stereo_mm") is None else f"stereo {s['stereo_mm']:.0f} mm")
            print(f"  kiri ({s['xl']:.2f}, {s['yl']:.2f})  kanan ({s['xr']:.2f}, {s['yr']:.2f})  "
                  f"disparitas {s['xl'] - s['xr']:.2f}  {d}  {st}  sebaran {s['spread']:.2f} px")
        if n is not None:
            n -= 1
            if n <= 0:
                break
            time.sleep(args.interval)
    if not samples:
        raise SystemExit("tidak ada sampel; acuan tidak disimpan")
    os.makedirs(os.path.dirname(REF_PATH), exist_ok=True)
    json.dump(dict(saved=time.strftime("%Y-%m-%d %H:%M:%S"), samples=samples), open(REF_PATH, "w"), indent=1)
    with_tof = sum(s["dist_mm"] is not None for s in samples)
    print(f"acuan disimpan: {REF_PATH} ({len(samples)} sampel, {with_tof} dengan jarak ToF)")
    _, enough = fit(samples, with_tof == len(samples))
    if not enough:
        print("catatan: sampel hanya mencakup satu jarak, jadi pemeriksaan nanti hanya sah pada jarak itu.")
    analyze(samples)


def check(src, args):
    if not os.path.exists(REF_PATH):
        raise SystemExit(f"belum ada acuan ({REF_PATH}); jalankan: camalign --save-reference")
    ref = json.load(open(REF_PATH))
    now = collect(src, args.frames)
    if now is None or now["xl"] is None:
        raise SystemExit("titik laser tidak terlihat di kedua kamera")
    samples = [s for s in ref["samples"] if s.get("xl") is not None]
    if not samples:
        raise SystemExit("acuan tidak memuat titik laser (hanya papan); ambil acuan dengan laser terlihat")
    use_tof = now["dist_mm"] is not None and all(s["dist_mm"] is not None for s in samples)
    model, enough = fit(samples, use_tof)
    t = predictor(now, use_tof)
    d = {k: now[k] - (model[k][0] + model[k][1] * t) for k in KEYS}

    print(f"acuan: {ref['saved']}, {len(samples)} sampel")
    print(f"sekarang: kiri ({now['xl']:.2f}, {now['yl']:.2f})  kanan ({now['xr']:.2f}, {now['yr']:.2f})  "
          f"disparitas {now['xl'] - now['xr']:.2f}  "
          + ("ToF tidak valid" if now["dist_mm"] is None else f"jarak {now['dist_mm']:.0f} mm")
          + f"  sebaran {now['spread']:.2f} px ({now['frames']} frame)")
    print()
    print(f"{'':22s}{'dX (piksel)':>12s}{'dY (piksel)':>13s}   status")
    rows = [("Kamera kiri", d["xl"], d["yl"]), ("Kamera kanan", d["xr"], d["yr"]),
            ("Relatif kiri-kanan", d["xl"] - d["xr"], d["yl"] - d["yr"])]
    worst = 0.0
    for name, dx, dy in rows:
        x_known = use_tof or name != "Relatif kiri-kanan"
        mag = max(abs(dx) if x_known else 0.0, abs(dy))
        worst = max(worst, mag)
        print(f"{name:22s}{(f'{dx:+.2f}' if x_known else 'n/a'):>12s}{dy:+13.2f}   {status(mag)}")
    print()
    if not use_tof:
        print("ToF tidak memberi jarak yang sah, jadi disparitas titik dipakai sebagai gantinya:")
        print("  dX tiap kamera hanya menunjukkan geseran yang sama pada keduanya, dan geseran")
        print("  horizontal satu kamera terhadap yang lain tidak dapat diukur (n/a).")
    if not enough:
        print("Acuan hanya punya satu jarak: hasil ini sah bila jarak sekarang sama dengan saat acuan.")
    print(f"HASIL: {status(worst)} (terbesar {worst:.2f} piksel; ambang {OK_PX} / {WARN_PX})")

    os.makedirs(os.path.dirname(OUT_PATH), exist_ok=True)
    json.dump(dict(checked=time.strftime("%Y-%m-%d %H:%M:%S"), reference=ref["saved"],
                   used_tof=use_tof, status=status(worst),
                   left=dict(dx=d["xl"], dy=d["yl"]), right=dict(dx=d["xr"], dy=d["yr"]),
                   relative=dict(dx=(d["xl"] - d["xr"]) if use_tof else None, dy=d["yl"] - d["yr"]),
                   now=now), open(OUT_PATH, "w"), indent=1)
    return 0 if abs(worst) < WARN_PX else 1


def main():
    ap = argparse.ArgumentParser(description="Periksa kesejajaran kedua kamera terhadap acuan.")
    ap.add_argument("--save-reference", action="store_true", help="simpan acuan baru")
    ap.add_argument("--append", action="store_true", help="tambahkan ke acuan yang ada")
    ap.add_argument("--frames", type=int, default=30, help="frame yang dirata-rata per pengukuran")
    ap.add_argument("--samples", type=int, help="ambil sejumlah sampel otomatis, tanpa menunggu Enter")
    ap.add_argument("--interval", type=float, default=3.0, help="jeda antar sampel otomatis (detik)")
    ap.add_argument("--analyze", action="store_true",
                    help="bandingkan stereo, ToF dan penggaris dari acuan yang tersimpan (tanpa kamera)")
    args = ap.parse_args()
    if args.analyze:
        if not os.path.exists(REF_PATH):
            raise SystemExit(f"belum ada acuan ({REF_PATH})")
        ref = json.load(open(REF_PATH))
        print(f"acuan: {ref['saved']}, {len(ref['samples'])} sampel")
        analyze(ref["samples"])
        return 0
    with LiveSource(log=lambda m: print("  " + m)) as src:
        if args.save_reference or args.append:
            save_reference(src, args)
            return 0
        return check(src, args)


if __name__ == "__main__":
    sys.exit(main())
