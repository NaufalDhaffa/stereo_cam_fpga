"""Stereo calibration from chessboard pairs.

    python -m stereo.calibrate data/calib_1 [--square 38]

Reads a recording (source.FileSource), finds the chessboard in every pair,
calibrates both cameras and their relative pose, and computes the
rectification. Two lens models are tried, the ordinary one (with the rational
terms) and the fisheye one for very wide lenses; the one with the smaller
stereo error is kept.

Writes calib/stereo.npz (everything, including the rectification maps) and
calib/stereo.json (the numbers worth reading). The report ends with what the
result means for the FPGA: focal length after rectification, nearest
measurable distance for a 128-pixel disparity range, and how many image
lines the rectifier has to buffer.
"""
import argparse
import json
import os
import sys

import cv2
import numpy as np

from . import chessboard
from . import params as P

ROOT = os.path.normpath(os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", ".."))
# the calibration of the resolution profile in use (stereo.npz for 800 x 600, stereo_cif.npz for 400 x 296)
OUT_NPZ = os.path.join(ROOT, "calib", P.CALIB)
OUT_JSON = os.path.splitext(OUT_NPZ)[0] + ".json"
SVGA_NPZ = os.path.join(ROOT, "calib", "stereo.npz")
DISPARITIES = 128
NOMINAL_BASELINE_MM = 55.0

from . import target  # noqa: E402  (target -> charuco -> this module: import it once the names above exist)


def detect_all(pairs, log=print, views=None):
    """Corner lists for every pair in which both cameras see the board.

    With `views` (a list) the full detections (kind, ids, left, right) are
    appended to it, for callers that need to know which corners were seen.
    The numbered board may be seen in part; the plain chessboard only whole.
    """
    pl, pr, used, size = [], [], [], None
    for pair in pairs:
        gl = cv2.cvtColor(pair.left, cv2.COLOR_RGB2GRAY)
        gr = cv2.cvtColor(pair.right, cv2.COLOR_RGB2GRAY)
        size = (gl.shape[1], gl.shape[0])
        found = target.find_pair(gl, gr, fast=False)
        if found is None:
            log(f"  pair {pair.index:3d}: board not found in both images")
            continue
        pl.append(found[2])
        pr.append(found[3])
        used.append(pair.index)
        if views is not None:
            views.append(found)
    return pl, pr, used, size


TILTED_DEG = 20.0          # a pose counts as tilted from here
TILTED_NEEDED = 8          # fewer tilted poses than this leave the focal length undetermined
MAX_TILT_DEG = 50.0        # beyond this the corners are read poorly (noted in the report)


def pose_spread(views):
    """Number of poses tilted sideways and up/down, and the largest tilt, from the left corners."""
    t = np.array([target.tilt(kind, ids, left) for kind, ids, left, _ in views])
    side = int((np.abs(t[:, 0]) >= TILTED_DEG).sum())
    updown = int((np.abs(t[:, 1]) >= TILTED_DEG).sum())
    return side, updown, float(np.abs(t).max())


def _pinhole(obj, pl, pr, size, flags=cv2.CALIB_RATIONAL_MODEL, lens=None):
    """lens = (obj, left, right) of the views the two lenses are fitted on, when that is
    more than the views the relative pose is taken from (see calibrate(), `extra`)."""
    lo, ll, lr = lens or (obj, pl, pr)
    e1, k1, d1, _, _ = cv2.calibrateCamera(lo, ll, size, None, None, flags=flags)
    e2, k2, d2, _, _ = cv2.calibrateCamera(lo, lr, size, None, None, flags=flags)
    es, k1, d1, k2, d2, r, t, _, _ = cv2.stereoCalibrate(
        obj, pl, pr, k1, d1, k2, d2, size, flags=cv2.CALIB_FIX_INTRINSIC | flags,
        criteria=(cv2.TERM_CRITERIA_EPS | cv2.TERM_CRITERIA_MAX_ITER, 200, 1e-7))
    r1, r2, p1, p2, q, _, _ = cv2.stereoRectify(k1, d1, k2, d2, size, r, t,
                                                flags=cv2.CALIB_ZERO_DISPARITY, alpha=0)
    maps = [cv2.initUndistortRectifyMap(k, d, rr, p, size, cv2.CV_32FC1)
            for k, d, rr, p in ((k1, d1, r1, p1), (k2, d2, r2, p2))]
    return dict(model="pinhole", rms=(e1, e2, es), K1=k1, D1=d1, K2=k2, D2=d2, R=r, T=t,
                R1=r1, R2=r2, P1=p1, P2=p2, Q=q, maps=maps)


def _pinhole5(obj, pl, pr, size, lens=None):
    """The ordinary five-coefficient lens: the right one for a lens that is not really wide."""
    return _pinhole(obj, pl, pr, size, flags=0, lens=lens)


def _fisheye(obj, pl, pr, size, lens=None):
    o = [x.reshape(1, -1, 3).astype(np.float64) for x in obj]
    a = [x.reshape(1, -1, 2).astype(np.float64) for x in pl]
    b = [x.reshape(1, -1, 2).astype(np.float64) for x in pr]
    lo, ll, lr = lens or (obj, pl, pr)
    lo = [x.reshape(1, -1, 3).astype(np.float64) for x in lo]
    ll = [x.reshape(1, -1, 2).astype(np.float64) for x in ll]
    lr = [x.reshape(1, -1, 2).astype(np.float64) for x in lr]
    flags = cv2.fisheye.CALIB_RECOMPUTE_EXTRINSIC | cv2.fisheye.CALIB_FIX_SKEW
    e1, k1, d1, _, _ = cv2.fisheye.calibrate(lo, ll, size, None, None, flags=flags)
    e2, k2, d2, _, _ = cv2.fisheye.calibrate(lo, lr, size, None, None, flags=flags)
    out = cv2.fisheye.stereoCalibrate(o, a, b, k1, d1, k2, d2, size,
                                      flags=cv2.fisheye.CALIB_FIX_INTRINSIC)
    es, r, t = out[0], out[5], out[6]
    r1, r2, p1, p2, q = cv2.fisheye.stereoRectify(k1, d1, k2, d2, size, r, t,
                                                  flags=cv2.CALIB_ZERO_DISPARITY,
                                                  newImageSize=size, balance=0.0, fov_scale=1.0)
    maps = [cv2.fisheye.initUndistortRectifyMap(k, d, rr, p, size, cv2.CV_32FC1)
            for k, d, rr, p in ((k1, d1, r1, p1), (k2, d2, r2, p2))]
    return dict(model="fisheye", rms=(e1, e2, es), K1=k1, D1=d1, K2=k2, D2=d2, R=r, T=t,
                R1=r1, R2=r2, P1=p1, P2=p2, Q=q, maps=maps)


def rectify_points(c, pts, cam):
    """Image points of one camera (0 = left) in rectified pixel coordinates."""
    k, d, r, p = (c["K1"], c["D1"], c["R1"], c["P1"]) if cam == 0 else (c["K2"], c["D2"], c["R2"], c["P2"])
    pts = np.asarray(pts, np.float64).reshape(-1, 1, 2)
    fn = cv2.fisheye.undistortPoints if c["model"] == "fisheye" else cv2.undistortPoints
    return fn(pts, k, d, R=r, P=p).reshape(-1, 2)


def epipolar_error(c, pl, pr):
    """Mean and worst |y_left - y_right| of the corners after rectification."""
    dy = np.concatenate([np.abs(rectify_points(c, a, 0)[:, 1] - rectify_points(c, b, 1)[:, 1])
                         for a, b in zip(pl, pr)])
    return float(dy.mean()), float(dy.max())


def line_window(map_y):
    """Image lines a streaming rectifier must hold to produce any output row.

    Output row y reads source rows from min(map_y[y]) to max(map_y[y]) + 1
    (bilinear). Rows arrive in order, so everything from the earliest row
    still needed up to the latest one has to be in the buffer.
    """
    h = map_y.shape[0]
    inside = (map_y >= 0) & (map_y <= h - 1)
    lo = np.where(inside, map_y, np.inf).min(axis=1)
    hi = np.where(inside, map_y, -np.inf).max(axis=1)
    ok = np.isfinite(lo) & np.isfinite(hi)
    if not ok.any():
        return 0
    return int(np.ceil((hi[ok] - lo[ok]).max())) + 2


def calibrate(pairs, square_mm, log=print, extra=None, all_models=False):
    """pairs: the set that defines where the cameras stand now.

    extra: further sets as (pairs, square_mm) taken with the same lenses and
    focus, possibly with the cameras standing differently and with the other
    kind of board. Their views are added when the two lenses are fitted (more
    views, more of the picture covered), but the relative pose of the cameras
    comes from `pairs` alone.
    """
    views = []
    pl, pr, used, size = detect_all(pairs, log, views)
    if len(used) < 8:
        raise SystemExit(f"only {len(used)} usable pairs; at least 8 are needed, about 20 recommended")
    kinds = {v[0] for v in views}
    if len(kinds) > 1:
        raise SystemExit("the set mixes the numbered board and the plain chessboard; use one of them")
    kind = kinds.pop()
    if not square_mm:
        square_mm = target.DEFAULT_SQUARE[kind]
    steep = sum(max(abs(a) for a in target.tilt(k, ids, left)) > MAX_TILT_DEG for k, ids, left, _ in views)
    if steep:
        log(f"  catatan: {steep} pasangan dengan papan miring lebih dari {MAX_TILT_DEG:.0f} derajat; sudut papan terbaca "
            "kurang teliti di sana (2-3 px), 25-40 derajat lebih baik")
    obj = [target.object_points(kind, ids, square_mm) for _, ids, _, _ in views]
    log(f"  papan: {kind}, {sum(len(v[1]) for v in views)} sudut dalam {len(views)} pasangan "
        f"(paling sedikit {min(len(v[1]) for v in views)} per pasangan)")
    lens = None
    if extra:
        lens = (list(obj), list(pl), list(pr))
        for more, more_square in extra:
            seen = []
            detect_all(more, lambda *_: None, seen)
            for k, ids, left, right in seen:
                lens[0].append(target.object_points(k, ids, more_square))
                lens[1].append(left)
                lens[2].append(right)
            log(f"  ditambah untuk lensa: {len(seen)} pasangan {seen[0][0] if seen else '-'} (kotak {more_square:g} mm); "
                "posisi antar kamera tetap dari set utama")
    results = []
    # These lenses are about 45 degrees wide and the five-coefficient model has
    # won every comparison; the rational model takes many minutes on a large
    # set and the fisheye one cannot use partial board views. They are only
    # tried on request.
    for fn in ((_pinhole5, _pinhole, _fisheye) if all_models else (_pinhole5,)):
        try:
            c = fn(obj, pl, pr, size, lens=lens)
            c["epipolar"] = epipolar_error(c, pl, pr)
            c["variant"] = fn.__name__[1:]
            results.append(c)
            log(f"  {c['variant']:8s} model: reprojection {c['rms'][0]:.3f} / {c['rms'][1]:.3f} px, "
                f"stereo {c['rms'][2]:.3f} px, rows differ by {c['epipolar'][0]:.3f} px after rectification, "
                f"baseline {np.linalg.norm(c['T']):.1f} mm")
        except cv2.error as e:
            log(f"  {fn.__name__[1:]:8s} model: failed ({str(e).splitlines()[-1].strip()[:80]})")
    if not results:
        raise SystemExit("calibration failed with all lens models")
    # A model whose baseline is far from the ruler has fitted something else
    # than the lens; it only wins when no model gets the baseline right.
    sane = [r for r in results if abs(np.linalg.norm(r["T"]) - NOMINAL_BASELINE_MM) < 0.05 * NOMINAL_BASELINE_MM]
    pool = sane or results
    best = min(r["epipolar"][0] for r in pool)
    # The models are tried simplest first, and the simplest one that is about
    # as good as the best is kept: the extra terms of the richer models are
    # free to do anything where no corner was seen, and then bend the picture
    # edges (and the line buffer the FPGA needs) for no measurable gain.
    c = next(r for r in pool if r["epipolar"][0] <= max(1.15 * best, best + 0.05))
    c.update(size=size, used=used, square_mm=square_mm, spread=pose_spread(views), target=kind)
    return c


def warnings(c):
    """Reasons not to trust this calibration, as text lines (empty when there are none)."""
    out = []
    side, updown, most = c["spread"]
    if side + updown < TILTED_NEEDED or min(side, updown) < 2:
        out.append(f"PERINGATAN: hanya {side} pose miring ke samping dan {updown} miring atas/bawah "
                   f"(paling miring {most:.0f} derajat). Tanpa papan yang dimiringkan {TILTED_DEG:.0f}-45 derajat "
                   "panjang fokus tidak terkunci, dan skala jarak bisa salah beberapa persen sampai puluhan persen.")
    t = np.ravel(c["T"])
    baseline = float(np.linalg.norm(t))
    if abs(baseline - NOMINAL_BASELINE_MM) > 0.03 * NOMINAL_BASELINE_MM:
        out.append(f"PERINGATAN: baseline {baseline:.1f} mm, penggaris {NOMINAL_BASELINE_MM:g} mm.")
    if abs(t[2]) > 5 or abs(t[1]) > 5:
        out.append(f"PERINGATAN: kamera kanan terhitung {t[2]:+.1f} mm di depan/belakang dan {t[1]:+.1f} mm di atas/bawah "
                   "kamera kiri; pada breadboard seharusnya mendekati nol.")
    window = max(line_window(m[1]) for m in c["maps"])
    if window > 100:
        out.append(f"PERINGATAN: rektifikasi butuh jendela {window} baris; model lensa melengkung liar di tepi gambar, "
                   "biasanya karena tepi dan pojok gambar tidak tertutup sudut papan.")
    if c["epipolar"][0] > 0.5:
        out.append(f"PERINGATAN: selisih baris setelah rektifikasi {c['epipolar'][0]:.2f} px (seharusnya di bawah 0,5).")
    return out


def report(c, log=print):
    f = float(c["P1"][0, 0])
    baseline = float(np.linalg.norm(c["T"]))
    win = [line_window(m[1]) for m in c["maps"]]
    from . import params
    z_min = f * baseline / (params.D_MIN + params.DISPARITIES - 1)
    z_max = f * baseline / params.D_MIN if params.D_MIN else float("inf")
    summary = dict(
        model=c["model"], target=c.get("target", "chessboard"), pairs_used=len(c["used"]), square_mm=c["square_mm"],
        reprojection_px=[float(x) for x in c["rms"]],
        epipolar_px=dict(mean=c["epipolar"][0], worst=c["epipolar"][1]),
        focal_px=dict(left=float(c["K1"][0, 0]), right=float(c["K2"][0, 0]), rectified=f),
        baseline_mm=baseline, T_mm=[float(x) for x in np.ravel(c["T"])],
        rotation_deg=[float(x) for x in np.degrees(cv2.Rodrigues(c["R"])[0]).ravel()],
        nearest_mm_at_128=z_min, line_window=dict(left=win[0], right=win[1]),
        depth_step_mm={str(z): z * z / (f * baseline) * 0.25 for z in (500, 1000, 2000)})
    log("")
    log(f"model lensa terpilih      : {c['variant']} ({len(c['used'])} pasangan)")
    log(f"galat reproyeksi          : kiri {c['rms'][0]:.3f}, kanan {c['rms'][1]:.3f}, stereo {c['rms'][2]:.3f} px")
    log(f"selisih baris terektifikasi: rata-rata {c['epipolar'][0]:.3f}, terburuk {c['epipolar'][1]:.3f} px")
    log(f"panjang fokus             : kiri {c['K1'][0, 0]:.1f}, kanan {c['K2'][0, 0]:.1f}, terektifikasi {f:.1f} px")
    log(f"baseline terukur          : {baseline:.2f} mm (penggaris: {NOMINAL_BASELINE_MM:g} mm)")
    log("rotasi kanan thd kiri     : " + ", ".join(f"{x:+.2f}" for x in summary["rotation_deg"]) + " derajat (x, y, z)")
    log(f"jangkauan (disparitas {params.D_MIN}-{params.D_MIN + params.DISPARITIES - 1}): {z_min:.0f} mm sampai "
        + ("tak terbatas" if z_max == float("inf") else f"{z_max:.0f} mm"))
    log("langkah depth pada 1/4 px : " + ", ".join(f"{v:.1f} mm di {k} mm" for k, v in summary["depth_step_mm"].items()))
    log(f"jendela baris rektifikasi : kiri {win[0]}, kanan {win[1]} baris (rancangan FPGA: 32)")
    summary["warnings"] = warnings(c)
    for w in summary["warnings"]:
        log(w)
    if not summary["warnings"]:
        log("tidak ada peringatan: pose cukup beragam dan baseline cocok dengan penggaris")
    return summary


def rectification(c, r, t):
    """R1, R2, P1, P2, Q and the maps of calibration c for another relative pose (r, t)."""
    size, k1, d1, k2, d2 = tuple(c["size"]), c["K1"], c["D1"], c["K2"], c["D2"]
    if c["model"] == "fisheye":
        r1, r2, p1, p2, q = cv2.fisheye.stereoRectify(k1, d1, k2, d2, size, r, t, flags=cv2.CALIB_ZERO_DISPARITY,
                                                      newImageSize=size, balance=0.0, fov_scale=1.0)
        init = cv2.fisheye.initUndistortRectifyMap
    else:
        r1, r2, p1, p2, q, _, _ = cv2.stereoRectify(k1, d1, k2, d2, size, r, t, flags=cv2.CALIB_ZERO_DISPARITY, alpha=0)
        init = cv2.initUndistortRectifyMap
    maps = [init(k, d, rr, p, size, cv2.CV_32FC1) for k, d, rr, p in ((k1, d1, r1, p1), (k2, d2, r2, p2))]
    return dict(R=r, T=t, R1=r1, R2=r2, P1=p1, P2=p2, Q=q, maps=maps)

def binned(c, factor=2):
    """The calibration of the same cameras read out with factor x factor binning.

    A binned pixel covers factor x factor of the original ones, so its centre
    is at (x - (factor - 1) / 2) / factor of the original grid: focal lengths
    divide by the factor, the principal point moves accordingly, distortion
    and the relative pose stay. Measured on this rig for the sensor's CIF
    mode against SVGA: scale 0.4997 / 0.5009, offset -0.3 / 0.0 pixels.
    The height is whatever the sensor mode delivers (CIF: 296 lines, the top
    592 of the 600), given by the caller through c["size"] of the result.
    """
    out = dict(c)
    for key in ("K1", "K2"):
        k = np.array(c[key], np.float64)
        k[0, 0] /= factor
        k[1, 1] /= factor
        k[0, 2] = (k[0, 2] - (factor - 1) / 2) / factor
        k[1, 2] = (k[1, 2] - (factor - 1) / 2) / factor
        out[key] = k
    return out


def make_cif(path=None):
    """Derive calib/stereo_cif.npz (400 x 296) from the SVGA calibration."""
    c = load(SVGA_NPZ)
    b = binned(c, 2)
    b["size"] = (400, 296)
    b.update(rectification(b, np.asarray(c["R"], np.float64), np.asarray(c["T"], np.float64)))
    b["epipolar"] = c.get("epipolar", (0.0, 0.0))
    f = float(b["P1"][0, 0])
    summary = dict(model=b["model"], derived_from="stereo.npz, binned 2 x 2", size=[400, 296],
                   focal_px=dict(left=float(b["K1"][0, 0]), right=float(b["K2"][0, 0]), rectified=f),
                   baseline_mm=float(np.linalg.norm(b["T"])),
                   line_window=dict(left=line_window(b["maps"][0][1]), right=line_window(b["maps"][1][1])))
    out = path or os.path.join(ROOT, "calib", "stereo_cif.npz")
    save(b, summary, out)
    return b, summary, out


def make_mini(path=None):
    """Derive calib/stereo_mini.npz (200 x 148: the 400 x 296 luma binned 2 x 2 in the logic)
    from the 400 x 296 calibration in use."""
    c = load(os.path.join(ROOT, "calib", "stereo_cif.npz"))
    b = binned(c, 2)
    b["size"] = (200, 148)
    b.update(rectification(b, np.asarray(c["R"], np.float64), np.asarray(c["T"], np.float64)))
    summary = dict(model=b["model"], derived_from="stereo_cif.npz, binned 2 x 2", size=[200, 148],
                   focal_px=dict(left=float(b["K1"][0, 0]), right=float(b["K2"][0, 0]), rectified=float(b["P1"][0, 0])),
                   baseline_mm=float(np.linalg.norm(b["T"])),
                   line_window=dict(left=line_window(b["maps"][0][1]), right=line_window(b["maps"][1][1])))
    out = path or os.path.join(ROOT, "calib", "stereo_mini.npz")
    save(b, summary, out)
    return b, summary, out


def save(c, summary, path=None):
    """Writes the calibration (default: calib/stereo.npz) and its summary as .json next to it."""
    out_npz = path or OUT_NPZ
    out_json = os.path.splitext(out_npz)[0] + ".json"
    os.makedirs(os.path.dirname(out_npz), exist_ok=True)
    np.savez_compressed(
        out_npz, model=c["model"], size=np.array(c["size"]), square_mm=c["square_mm"],
        target=c.get("target", "chessboard"),
        K1=c["K1"], D1=c["D1"], K2=c["K2"], D2=c["D2"], R=c["R"], T=c["T"],
        R1=c["R1"], R2=c["R2"], P1=c["P1"], P2=c["P2"], Q=c["Q"],
        map_lx=c["maps"][0][0], map_ly=c["maps"][0][1],
        map_rx=c["maps"][1][0], map_ry=c["maps"][1][1])
    json.dump(summary, open(out_json, "w"), indent=1)


def load(path=OUT_NPZ):
    z = np.load(path)
    c = {k: z[k] for k in z.files}
    c["model"] = str(c["model"])
    c["target"] = str(c["target"]) if "target" in c else "chessboard"
    c["size"] = tuple(int(x) for x in c["size"])
    c["maps"] = [(c["map_lx"], c["map_ly"]), (c["map_rx"], c["map_ry"])]
    return c


def main():
    sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), ".."))
    from source import FileSource
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("folder")
    ap.add_argument("--square", type=float,
                    help="measured square size in mm (default: 27 for the chessboard, 38 for the numbered board)")
    ap.add_argument("--no-save", action="store_true")
    ap.add_argument("--with", dest="extra", action="append", default=[], metavar="FOLDER:SQUARE",
                    help="another set with the same lenses, used for the lens fit only, e.g. data/calib_x:27")
    ap.add_argument("--all-models", action="store_true", help="also try the rational and fisheye lens models (slow)")
    args = ap.parse_args()
    extra = []
    for spec in args.extra:
        folder, _, sq = spec.rpartition(":")
        extra.append((FileSource(folder).pairs(), float(sq)))
    c = calibrate(FileSource(args.folder).pairs(), args.square, extra=extra, all_models=args.all_models)
    summary = report(c)
    if not args.no_save:
        save(c, summary)
        print(f"\ndisimpan: {OUT_NPZ}\n          {OUT_JSON}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
