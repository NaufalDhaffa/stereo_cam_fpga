"""Chain of 1 slice against chain of 2 slices, measured on the board with the same scene.

    python compare_slices.py capture slices2      30 frames of the bitstream that is loaded now
    python compare_slices.py capture slices1      (load the other bitstream first: board.py try ...)
    python compare_slices.py report               docs/comparison.md and docs/img/compare_slices.png

"capture" reads the webcam (see webcam.py) and keeps the left picture and the disparity of every
frame in build/compare/<label>.npz. "report" puts the two side by side: how much of the picture
got a disparity, over which distances, how steady it is, and what each build costs in the FPGA
(from the Vivado reports in hw/export).
"""
import os
import re
import sys
import time

import cv2
import numpy as np

os.environ.setdefault("STEREO_PROFILE", "mini")
import webcam
from stereo import calibrate, reconstruct, stream
from stereo import params as P

ROOT = webcam.ROOT
OUT = os.path.join(ROOT, "build", "compare")
FRAMES = 30
SLICES = {"slices1": 1, "slices2": 2}


def capture(label):
    os.makedirs(OUT, exist_ok=True)
    cap = webcam.open_camera()
    left, disp, t0 = [], [], time.time()
    while len(left) < FRAMES + 5:
        ok, frame = cap.read()
        if not ok or frame is None:
            if time.time() - t0 > 10 and not left:
                raise SystemExit("kamera terbuka tetapi tidak ada frame yang datang")
            continue
        l, d, _ = webcam.split(frame)
        left.append(l)
        disp.append(d)
    cap.release()
    dt = time.time() - t0
    left, disp = np.array(left[5:]), np.array(disp[5:])         # the first frames may be from before
    np.savez_compressed(os.path.join(OUT, label + ".npz"), left=left, disp=disp, fps=len(left) / dt)
    v = disp > 0
    print(f"{label}: {len(left)} frame, valid {100 * v.mean():.1f}%, disparitas "
          f"{disp[v].min() / 16:.1f}-{disp.max() / 16:.1f} px")


def vivado(name):
    """LUTs, flip-flops, block RAM and the worst slack of one Vivado project's export."""
    d = os.path.join(ROOT, "hw", "export", name)
    util = open(os.path.join(d, "utilization.rpt")).read()
    hier = open(os.path.join(d, "utilization_hier.rpt")).read()

    def row(pattern, text=util):
        m = re.search(pattern, text, re.M)
        return float(m.group(1)) if m else 0.0
    slack = re.search(r"^\s*(-?\d+\.\d+)\s+-?\d+\.\d+\s+\d+\s+\d+\s+(-?\d+\.\d+)", open(os.path.join(d, "timing.rpt")).read(), re.M)
    chain = sum(float(m.group(1)) for m in re.finditer(r"^\|\s+slice_\d+\s+\|[^|]*\|\s*(\d+)\s*\|", hier, re.M))
    return dict(lut=int(row(r"\| Slice LUTs\s*\|\s*(\d+)")), ff=int(row(r"\| Slice Registers\s*\|\s*(\d+)")),
                bram=row(r"\| Block RAM Tile\s*\|\s*([\d.]+)"), wns=float(slack.group(1)), whs=float(slack.group(2)),
                chain_lut=int(chain))


def report():
    cal = calibrate.load(os.path.join(ROOT, "calib", P.CALIB))
    f, base = float(cal["P1"][0, 0]), float(np.linalg.norm(cal["T"]))
    table = reconstruct.depth_table(f, base)
    okl = stream.left_mask(cal)
    rows, pictures = [], []
    near2, far = int(f * base / (P.D_MIN + 31)), int(f * base / P.D_MIN)
    for label, n in sorted(SLICES.items(), reverse=True):
        d = np.load(os.path.join(OUT, label + ".npz"))
        disp, left = d["disp"], d["left"]
        fin = np.array([stream.finished(x, okl) for x in disp])
        valid = fin > 0
        often = valid.mean(axis=0) >= 0.8                       # pixels that nearly always have a value
        spread = np.where(valid, fin, np.nan)[:, often].astype(float) / 16
        noise = float(np.nanmedian(np.nanstd(spread, axis=0))) if often.any() else 0.0
        mid = len(disp) // 2
        depth = reconstruct.depth_mm(fin[mid], table)
        hw = vivado(f"stereo_{n}slice")
        near = int(f * base / (P.D_MIN + 16 * n - 1))
        rows.append(dict(label=label, n=n, valid=100 * valid[:, okl].mean(), often=100 * often[okl].mean(), noise=noise,
                         dmin=P.D_MIN, dmax=P.D_MIN + 16 * n - 1, near=near, far=far, fps=float(d["fps"]), **hw))
        pictures.append((n, left[mid], depth, valid[mid]))
    # one picture: left image, then the depth of both chains on the same colour scale
    tiles = [cv2.cvtColor(pictures[0][1], cv2.COLOR_GRAY2BGR)]
    for n, _, depth, _ in pictures:
        tiles.append(cv2.cvtColor(reconstruct.colorize_depth(depth, near2, far), cv2.COLOR_RGB2BGR))
    view = cv2.resize(np.hstack(tiles), None, fx=4, fy=4, interpolation=cv2.INTER_NEAREST)
    w = P.WIDTH * 4
    bar = np.zeros((34, view.shape[1], 3), np.uint8)
    for i, text in enumerate(["left camera (rectified)"] + [f"depth, {n} slice{'s' if n > 1 else ''} ({16 * n} disparities)" for n, *_ in pictures]):
        cv2.putText(bar, text, (i * w + 10, 23), cv2.FONT_HERSHEY_SIMPLEX, 0.6, (240, 240, 240), 1, cv2.LINE_AA)
    os.makedirs(os.path.join(ROOT, "docs", "img"), exist_ok=True)
    cv2.imwrite(os.path.join(ROOT, "docs", "img", "compare_slices.png"), np.vstack((bar, view)))

    a, b = rows                                                 # 2 slices, 1 slice
    both = pictures[0][3] & ~pictures[1][3]
    lines = ["# Chain of 1 slice against chain of 2 slices", "",
             "Measured on the board with the same scene (30 frames each, webcam output, 200 x 148 at 15 fps);",
             "FPGA figures from the two Vivado projects (`hw/export/*/utilization.rpt`, `timing.rpt`).", "",
             "![left picture and the depth of both chains](img/compare_slices.png)", "",
             "| | 2 slices | 1 slice |", "|---|---|---|",
             f"| Disparities | {16 * a['n']} ({a['dmin']} to {a['dmax']} px) | {16 * b['n']} ({b['dmin']} to {b['dmax']} px) |",
             f"| Distance covered | {a['near'] / 1000:.2f} m to {a['far'] / 1000:.2f} m | {b['near'] / 1000:.2f} m to {b['far'] / 1000:.2f} m |",
             f"| Pixels with a depth (mean of the frames) | {a['valid']:.1f} % | {b['valid']:.1f} % |",
             f"| Pixels with a depth in at least 80 % of the frames | {a['often']:.1f} % | {b['often']:.1f} % |",
             f"| Frame-to-frame spread of the disparity (median) | {a['noise']:.2f} px | {b['noise']:.2f} px |",
             f"| Frame rate at the PC | {a['fps']:.1f} fps | {b['fps']:.1f} fps |",
             f"| Slice LUTs, whole design | {a['lut']} | {b['lut']} |",
             f"| of which the slices (tape-out module) | {a['chain_lut']} | {b['chain_lut']} |",
             f"| Flip-flops, whole design | {a['ff']} | {b['ff']} |",
             f"| Block RAM tiles | {a['bram']:g} | {b['bram']:g} |",
             f"| Worst setup / hold slack | {a['wns']:.3f} / {a['whs']:.3f} ns | {b['wns']:.3f} / {b['whs']:.3f} ns |",
             f"| Chips needed (one slice per chip) | {a['n']} | {b['n']} |", "",
             f"In the middle frame, {100 * both[okl].mean():.1f} % of the picture has a depth with 2 slices and none with 1 slice.", ""]
    path = os.path.join(ROOT, "docs", "comparison.md")
    open(path, "w", encoding="utf-8", newline="\n").write("\n".join(lines))
    print("\n".join(lines[7:]))
    print(path)


if __name__ == "__main__":
    if len(sys.argv) > 2 and sys.argv[1] == "capture" and sys.argv[2] in SLICES:
        capture(sys.argv[2])
    elif sys.argv[1:] == ["report"]:
        report()
    else:
        raise SystemExit(__doc__)
