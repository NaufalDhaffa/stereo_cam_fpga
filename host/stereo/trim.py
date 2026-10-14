"""Small correction of the cameras' relative direction from the wall test.

    python -m stereo.trim            show the correction, write calib/stereo_trimmed.npz
    python -m stereo.trim --apply    also make it the calibration in use (the old one is kept)

The numbered board on the wall gives every corner's distance twice: from the
two cameras together, and from the left camera alone through the known size
of the squares. A camera turned sideways (yaw) by a few hundredths of a degree
against the calibration shifts all disparities by the same fraction of a
pixel, which the two distances then show as a difference growing with range;
one tilted up or down (pitch) shifts the rows. Both are measured over all
samples of calib/align_ref.json and taken out by turning the calibrated pose
of the right camera. The lenses and the baseline are left alone.
"""
import argparse
import json
import os
import shutil
import sys
import time

import cv2
import numpy as np

from . import calibrate, charuco

REF = os.path.join(calibrate.ROOT, "calib", "align_ref.json")
OUT = os.path.join(calibrate.ROOT, "calib", "stereo_trimmed.npz")
STEP = np.radians(0.05)


def offsets(cal, boards):
    """(disparity offset, row offset) in pixels: measured minus what the left camera alone implies.

    Also returns the per-sample disparity offsets, to judge how constant it is.
    """
    f, base = float(cal["P1"][0, 0]), float(np.linalg.norm(cal["T"]))
    r1 = np.asarray(cal["R1"], float)
    dd, dy, per = [], [], []
    for b in boards:
        ids, pts = np.array(b["ids"]), np.array(b["pts"], float)
        obj = charuco.object_points(b["square_mm"])[ids]
        a = calibrate.rectify_points(cal, pts[:, :2], 0)
        c = calibrate.rectify_points(cal, pts[:, 2:], 1)
        und = (cv2.fisheye.undistortPoints if cal["model"] == "fisheye" else cv2.undistortPoints)(
            pts[:, :2].reshape(-1, 1, 2), cal["K1"], cal["D1"]).reshape(-1, 2)
        ok, rv, tv = cv2.solvePnP(obj, und, np.eye(3), None, flags=cv2.SOLVEPNP_ITERATIVE)
        z = (((cv2.Rodrigues(rv)[0] @ obj.T).T + tv.ravel()) @ r1.T)[:, 2]      # depth along the rectified axis
        d = (a[:, 0] - c[:, 0]) - f * base / z
        dd.append(d)
        dy.append(a[:, 1] - c[:, 1])
        per.append(float(d.mean()))
    return float(np.concatenate(dd).mean()), float(np.concatenate(dy).mean()), per


def turned(cal, rvec):
    """The calibration with the right camera's pose turned by this rotation vector (radians)."""
    r = cv2.Rodrigues(np.asarray(rvec, float))[0] @ np.asarray(cal["R"], float)
    out = dict(cal)
    out.update(calibrate.rectification(cal, r, np.asarray(cal["T"], float)))
    return out


def solve(cal, boards):
    """Pitch, yaw and roll (radians) of the right camera against the calibration.

    The same fit `camadjust` shows live (adjust.turn_only): the camera keeps
    its calibrated place and only its direction is free. Averaged over the
    boards, weighted by their number of corners.
    """
    from . import adjust
    turns, weights = [], []
    for b in boards:
        ids, pts = np.array(b["ids"]), np.array(b["pts"], float)
        t = adjust.turn_only(cal, pts[:, :2], pts[:, 2:], charuco.object_points(b["square_mm"])[ids])
        if t is not None:
            turns.append([t["pitch"], t["yaw"], t["roll"]])
            weights.append(len(ids))
    return np.radians(np.average(np.array(turns), axis=0, weights=weights))


def boards_from_recording(folder, square_mm=charuco.SQUARE_MM):
    """One board per recorded pair in which the numbered board shows."""
    sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), ".."))
    from source import FileSource
    out = []
    for p in FileSource(folder).pairs():
        found = charuco.find_pair(cv2.cvtColor(p.left, cv2.COLOR_RGB2GRAY), cv2.cvtColor(p.right, cv2.COLOR_RGB2GRAY))
        if len(found) >= charuco.MIN_CORNERS:
            ids = sorted(found)
            out.append(dict(square_mm=square_mm, ids=ids, pts=[list(found[i]) for i in ids]))
    return out


def main():
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("--apply", action="store_true", help="make the trimmed calibration the one in use")
    ap.add_argument("--from", dest="recording", metavar="FOLDER",
                    help="take the board from a recording (data/<name>) instead of the last wall test")
    args = ap.parse_args()
    cal = calibrate.load()
    if args.recording:
        boards = boards_from_recording(args.recording)
        samples = [dict(board=b) for b in boards]
        if not boards:
            raise SystemExit("papan bernomor tidak terlihat di rekaman itu")
    else:
        samples = json.load(open(REF))["samples"]
        boards = [s["board"] for s in samples if s.get("board")]
        if len(boards) < 2:
            raise SystemExit("perlu minimal dua sampel uji dinding dengan papan bernomor (jalankan camwall)")
    d0, y0, per = offsets(cal, boards)
    print(f"sebelum: disparitas {d0:+.2f} px (per sampel: " + ", ".join(f"{p:+.2f}" for p in per) + f"), baris {y0:+.2f} px")
    if np.ptp(per) > 0.6:
        print("PERINGATAN: selisih disparitas tidak sama di semua jarak; itu bukan sekadar putaran kamera, "
              "koreksi ini tidak akan menghilangkannya.")
    rvec = solve(cal, boards)
    pitch, yaw = float(rvec[0]), float(rvec[1])
    new = turned(cal, rvec)
    d1, y1, per1 = offsets(new, boards)
    print(f"koreksi: pitch {np.degrees(pitch):+.3f}, yaw {np.degrees(yaw):+.3f}, roll {np.degrees(rvec[2]):+.3f} derajat "
          "pada pose kamera kanan")
    print(f"sesudah: disparitas {d1:+.2f} px (per sampel: " + ", ".join(f"{p:+.2f}" for p in per1) + f"), baris {y1:+.2f} px")
    print("\njarak ke dinding (mm):  penggaris   mono   stereo sebelum -> sesudah")
    for s in samples:
        b = s.get("board")
        if not b:
            continue
        w0 = charuco.wall(cal, b["ids"], b["pts"], b["square_mm"])
        w1 = charuco.wall(new, b["ids"], b["pts"], b["square_mm"])
        ruler = "--" if not s.get("ruler_mm") else f"{s['ruler_mm']:.0f}"
        print(f"{ruler:>31s} {w1['mono_mm']:6.1f}   {w0['stereo_mm']:6.1f} -> {w1['stereo_mm']:6.1f}")
    summary = json.load(open(calibrate.OUT_JSON)) if os.path.exists(calibrate.OUT_JSON) else {}
    summary["trim"] = dict(pitch_deg=float(np.degrees(pitch)), yaw_deg=float(np.degrees(yaw)),
                           roll_deg=float(np.degrees(rvec[2])), samples=len(boards),
                           disparity_px_before=d0, rows_px_before=y0, made=time.strftime("%Y-%m-%d %H:%M:%S"))
    summary["rotation_deg"] = [float(x) for x in np.degrees(cv2.Rodrigues(new["R"])[0]).ravel()]
    calibrate.save(new, summary, OUT)
    print(f"\ndisimpan: {OUT}")
    if args.apply:
        keep = os.path.join(calibrate.ROOT, "calib", time.strftime("stereo_before_trim_%Y%m%d_%H%M.npz"))
        shutil.copyfile(calibrate.OUT_NPZ, keep)
        calibrate.save(new, summary)
        print(f"dipakai sekarang: {calibrate.OUT_NPZ}\nyang lama: {keep}")
    else:
        print("belum dipakai; jalankan dengan --apply untuk memakainya")
    return 0


if __name__ == "__main__":
    sys.exit(main())
