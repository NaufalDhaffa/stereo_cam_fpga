"""Record stereo pairs (with ToF distance and timing) for offline work.

    python record.py wall_1m                 20 pairs, one every 0.5 s
    python record.py board --count 40 --every 1.0
    python record.py test --no-genlock --no-tof

Writes data/<name>/L_0000.png, R_0000.png, ... and index.csv. A recording is
replayed with source.FileSource("data/<name>"), which yields exactly what the
live stream did, so every algorithm can be developed and re-run on the same
input.
"""
import argparse
import csv
import os
import sys
import time

from PIL import Image

from source import TOF_BEHIND_CAMERAS_MM, LiveSource

ROOT = os.path.normpath(os.path.join(os.path.dirname(os.path.abspath(__file__)), ".."))
FIELDS = ["index", "t_left_us", "t_right_us", "phase_us", "tof_mm", "tof_age_ms"]


def main():
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("name")
    ap.add_argument("--count", type=int, default=20)
    ap.add_argument("--every", type=float, default=0.5, help="seconds between saved pairs")
    ap.add_argument("--settle", type=float, default=4.0,
                    help="seconds to wait for genlock and ToF before the first pair")
    ap.add_argument("--no-genlock", action="store_true")
    ap.add_argument("--no-tof", action="store_true")
    args = ap.parse_args()

    folder = os.path.join(ROOT, "data", args.name)
    os.makedirs(folder, exist_ok=True)
    # The ToF emitter is visible to the cameras: it stays off while a pair is
    # taken and is switched on briefly afterwards to measure the distance.
    with LiveSource(genlock=not args.no_genlock, tof="off") as src, \
            open(os.path.join(folder, "index.csv"), "w", newline="") as f:
        out = csv.DictWriter(f, FIELDS)
        out.writeheader()
        t_first = time.time() + args.settle
        saved, t_next = 0, 0
        for pair in src.pairs():
            now = time.time()
            if now < t_first or now < t_next:
                continue
            t_next = now + args.every
            Image.fromarray(pair.left).save(os.path.join(folder, f"L_{saved:04d}.png"))
            Image.fromarray(pair.right).save(os.path.join(folder, f"R_{saved:04d}.png"))
            t_shot = time.time()
            mm = None if args.no_tof else src.service.measure_distance()
            age = -(time.time() - t_shot) * 1000          # negative: measured after the picture
            out.writerow(dict(index=saved, t_left_us=pair.t_left_us, t_right_us=pair.t_right_us,
                              phase_us=pair.phase_us, tof_mm="" if mm is None else mm,
                              tof_age_ms=f"{age:.1f}"))
            print(f"{saved:4d}  phase {pair.phase_us:+6d} us   ToF {'--' if mm is None else mm} mm"
                  f"   camera-to-object {'--' if mm is None else f'{mm - TOF_BEHIND_CAMERAS_MM:.1f}'} mm")
            saved += 1
            if saved >= args.count:
                break
            t_next = time.time() + args.every             # the measurement took time too
    print(f"saved {saved} pairs to {folder}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
