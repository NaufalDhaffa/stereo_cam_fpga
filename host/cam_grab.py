"""Grab frames from the two-camera FPGA stream and save one per camera as PNG.

    python cam_grab.py                     # 2 s of stream, saves frame_cam0.png / frame_cam1.png
    python cam_grab.py --seconds 4 --out shot
    python cam_grab.py --no-load           # keep the FX2LP firmware as is
"""
import argparse
import sys
import time

from PIL import Image

from camlink import CamLink, rgb565_to_rgb
from fx2_stream import Fx2, build_firmware


def capture(seconds, load=True):
    dev = Fx2()
    try:
        if load:
            dev.load_firmware(build_firmware())
            time.sleep(0.2)
        dev.select_bulk_alt()
        chunks, t0 = [], time.perf_counter()
        for data in dev.stream():
            chunks.append(data)
            if time.perf_counter() - t0 >= seconds:
                break
        return b"".join(chunks), time.perf_counter() - t0
    finally:
        dev.close()


def main():
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("--seconds", type=float, default=2)
    ap.add_argument("--out", default="frame", help="file name prefix (default frame)")
    ap.add_argument("--no-load", action="store_true")
    ap.add_argument("--le", action="store_true", help="RGB565 low byte first")
    ap.add_argument("--raw", metavar="FILE", help="also dump the raw stream")
    ap.add_argument("--show", type=int, default=3, help="frames to list per camera (default 3)")
    args = ap.parse_args()

    data, dt = capture(args.seconds, load=not args.no_load)
    print(f"received {len(data) / 1e6:.2f} MB in {dt:.2f} s ({len(data) / dt / 1e6:.1f} MB/s)")
    if args.raw:
        open(args.raw, "wb").write(data)
    if not data:
        print("no data: are the sensors configured and capture enabled (cam.tcl)?")
        return 2

    link = CamLink()
    stats = {0: [0, 0, 0, None], 1: [0, 0, 0, None]}       # ok, bad, listed, first good
    for cam, payload, info in link.feed(data):
        s = stats[cam]
        s[0 if payload else 1] += 1
        if s[2] < args.show:
            s[2] += 1
            size = len(payload) if payload else info["got"]
            print(f"cam {cam} frame: {size:8d} bytes, {info['bpl']} bytes/line x "
                  f"{info['lines']} lines, PCLK {info['pclk_mhz']:.2f} MHz, {info['frame_ms']:.1f} ms"
                  f"{' TRUNCATED' if info['truncated'] else ''}{'' if payload else '  <-- incomplete'}")
        if payload and s[3] is None:
            s[3] = (payload, info["bpl"] // 2, info["lines"])
    if not link.demux.synced:
        print("chunk boundaries not found; first bytes:", data[:32].hex(" "))
    print(f"chunk resyncs: {link.demux.resyncs}")

    rc = 0
    for cam, (ok, bad, _, good) in stats.items():
        print(f"cam {cam}: {ok} complete frames, {bad} incomplete")
        if good is None:
            rc = 1
            continue
        payload, width, height = good
        name = f"{args.out}_cam{cam}.png"
        Image.fromarray(rgb565_to_rgb(payload, width, height, args.le)).save(name)
        print(f"saved {name}: {width}x{height}")
    return rc


if __name__ == "__main__":
    sys.exit(main())
