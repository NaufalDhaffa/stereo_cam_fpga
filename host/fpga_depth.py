"""Check the depth build on the board against the Python model.

    python fpga_depth.py              load the build, compare on the scene in front of the cameras
    python fpga_depth.py --frames 8   more frames from the FPGA
    python fpga_depth.py --no-init    the depth build is loaded and the sensors are in CIF mode already

The depth build works on the sensor's 400 x 296 mode (profile "cif"). This
program loads build/depth, puts both sensors into that mode at the profile's frame rate (24 fps),
takes both raw pictures together with the disparity the FPGA computed from that
very frame (the build sends all three), runs the model on the raw pair and
compares bit for bit.

Writes build/fpga_depth.png: left picture, FPGA depth, model depth.
"""
import argparse
import os
import subprocess
import sys
import time

MINI = "--mini" in sys.argv          # the chained matcher mini: build/mini, 200 x 148, 15 fps
os.environ["CAM_BUILD"] = "build/mini" if MINI else "build/depth"
os.environ["STEREO_PROFILE"] = "mini" if MINI else "cif"
os.environ["CAM_GOLDEN"] = "build/golden_minisys" if MINI else "build/golden"

import cv2
import numpy as np

import genlock
from pslink import ROOT, XSDB
from source import LiveSource
from stereo import calibrate, reconstruct, rectify, stream
from stereo import params as P

# The sensor mode and frame rate of the profile (source.py hands the line timing and the
# standing extra lines to the genlock): the depth build keeps up with a 99.2 us line.
SENSOR_MODE = list(P.SENSOR_MODE)


def board_init(log=print):
    log(f"memuat {os.environ['CAM_BUILD']} dan menyetel sensor ke CIF {1 / P.FRAME_S:.0f} fps (sekitar satu menit)...")
    out = subprocess.run([XSDB, os.path.join(ROOT, "scripts", "cam.tcl"), "all", *SENSOR_MODE],
                         capture_output=True, text=True, timeout=300).stdout
    if "cameras ready: 2" not in out:
        tail = [l for l in out.splitlines() if l.strip()][-4:]
        raise SystemExit("inisialisasi board gagal: " + " | ".join(tail))


def grab(mode, count, settle=3.0, log=print):
    out = []
    with LiveSource(mode=mode, log=lambda m: log("  " + m), auto_init=False) as src:
        t0 = time.time()
        for pair in src.pairs(timeout=15.0):
            if time.time() - t0 < settle:
                continue
            out.append(pair)
            if len(out) >= count:
                break
    return out


def main():
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("--frames", type=int, default=3)
    ap.add_argument("--no-init", action="store_true")
    ap.add_argument("--mini", action="store_true", help="build/mini: the chained matcher mini at 200 x 148")
    args = ap.parse_args()
    cal = calibrate.load(os.path.join(ROOT, "calib", P.CALIB))
    f, base = float(cal["P1"][0, 0]), float(np.linalg.norm(cal["T"]))
    table = reconstruct.depth_table(f, base)
    okl = stream.left_mask(cal)
    if not args.no_init:
        board_init()

    print("mengambil pasangan mentah beserta disparitas FPGA dari frame yang sama...")
    frames = grab("depth", args.frames, settle=8.0)
    if not frames:
        raise SystemExit("tidak ada frame disparitas dari FPGA")
    if frames[0].left.shape[:2] != (P.HEIGHT * P.BIN, P.WIDTH * P.BIN):
        raise SystemExit(f"sensor tidak dalam mode {P.WIDTH * P.BIN} x {P.HEIGHT * P.BIN}")
    if frames[0].disp.shape != (P.HEIGHT, P.WIDTH):
        raise SystemExit(f"disparitas dari FPGA berukuran {frames[0].disp.shape[1]} x {frames[0].disp.shape[0]}, "
                         f"profil {P.PROFILE} mengharapkan {P.WIDTH} x {P.HEIGHT}")
    rows, model = [], None
    for p in frames:
        model, _ = stream.matched(p.left, p.right, cal)
        d = p.disp
        same = d == model
        both = (d > 0) & (model > 0)
        rows.append((100 * (d > 0).mean(), 100 * (model > 0).mean(), int((~same).sum()), p.phase_us))
        print(f"  frame {p.index}: FPGA valid {rows[-1][0]:5.1f}%, model {rows[-1][1]:5.1f}%; piksel berbeda {rows[-1][2]} dari {d.size}"
              f" ({100 * same.mean():.3f}% identik); fase {rows[-1][3]:+d} us")
        if rows[-1][2]:
            ys, xs = np.nonzero(~same)
            print(f"     berbeda di baris {ys.min()}-{ys.max()}, kolom {xs.min()}-{xs.max()}; contoh (y,x,FPGA,model): "
                  + ", ".join(f"({y},{x},{d[y, x]},{model[y, x]})" for y, x in list(zip(ys, xs))[:4]))
    a = np.array(rows)
    verdict = "IDENTIK bit demi bit" if a[:, 2].sum() == 0 else "BERBEDA"
    print(f"{len(a)} frame: {verdict}; total piksel berbeda {int(a[:, 2].sum())}")
    last = frames[-1]
    shown = last.left
    if P.BIN == 2:                       # the picture in the size the logic works on
        a = shown.astype(np.uint16)
        shown = ((a[0::2, 0::2] + a[0::2, 1::2] + a[1::2, 0::2] + a[1::2, 1::2] + 2) >> 2).astype(np.uint8)
    left = rectify.rectify_ref(shown, *cal["maps"][0])
    view = np.hstack((left,
                      reconstruct.colorize_depth(reconstruct.depth_mm(stream.finished(last.disp, okl), table)),
                      reconstruct.colorize_depth(reconstruct.depth_mm(stream.finished(model, okl), table))))
    view = cv2.resize(view, None, fx=2 * P.BIN, fy=2 * P.BIN, interpolation=cv2.INTER_NEAREST)
    out = os.path.join(ROOT, "build", "fpga_depth.png")
    cv2.imwrite(out, cv2.cvtColor(view, cv2.COLOR_RGB2BGR))
    np.save(os.path.join(ROOT, "build", "fpga_disp.npy"), last.disp)
    np.save(os.path.join(ROOT, "build", "model_disp.npy"), model)
    print(f"gambar: {out} (kiri terektifikasi | depth dari FPGA | depth dari model)")
    return 0


if __name__ == "__main__":
    sys.exit(main())
