"""Grab frames from the OV2640 -> FPGA -> FX2LP stream and save one as PNG.

    python cam_grab.py                     # 2 s of stream, saves frame.png
    python cam_grab.py --seconds 4 --out shot.png
    python cam_grab.py --no-load           # keep the FX2LP firmware as is

Stream format (see rtl/cam_capture.v): a 24-byte header before every frame,
carrying the measured size of the PREVIOUS frame.
"""
import argparse
import ctypes as C
import struct
import sys
import time

import numpy as np
from PIL import Image

from fx2_stream import Fx2, build_firmware

MAGIC = b"\xAA\x55\xF0\x0FCAM0"
HDR_LEN = 24


def parse_header(buf, pos):
    frame_no, bpl, lines, pclk, ticks, flags = struct.unpack_from("<HHHHHB", buf, pos + 8)
    return dict(frame_no=frame_no, bpl=bpl, lines=lines, pclk_mhz=pclk * 0.002,
                frame_ms=ticks * 0.5, truncated=bool(flags & 1))


def split_frames(data):
    """Yield (header, payload, next_header) for every frame bounded by two headers."""
    pos = data.find(MAGIC)
    while pos >= 0:
        nxt = data.find(MAGIC, pos + HDR_LEN)
        if nxt < 0 or nxt + HDR_LEN > len(data):
            return
        yield parse_header(data, pos), data[pos + HDR_LEN:nxt], parse_header(data, nxt)
        pos = nxt


def rgb565_to_rgb(payload, width, height, little_endian=False):
    raw = np.frombuffer(payload, dtype="<u2" if little_endian else ">u2",
                        count=width * height).reshape(height, width)
    r = ((raw >> 11) & 0x1F).astype(np.uint8)
    g = ((raw >> 5) & 0x3F).astype(np.uint8)
    b = (raw & 0x1F).astype(np.uint8)
    return np.dstack(((r << 3) | (r >> 2), (g << 2) | (g >> 4), (b << 3) | (b >> 2)))


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
    ap.add_argument("--out", default="frame.png")
    ap.add_argument("--no-load", action="store_true")
    ap.add_argument("--le", action="store_true", help="RGB565 low byte first")
    ap.add_argument("--raw", metavar="FILE", help="also dump the raw stream")
    ap.add_argument("--show", type=int, default=8, help="frames to list (default 8)")
    args = ap.parse_args()

    data, dt = capture(args.seconds, load=not args.no_load)
    print(f"received {len(data) / 1e6:.2f} MB in {dt:.2f} s ({len(data) / dt / 1e6:.1f} MB/s)")
    if args.raw:
        open(args.raw, "wb").write(data)
    if not data:
        print("no data: is the sensor configured and capture enabled (cam.tcl)?")
        return 2

    good, shown, n_ok, n_bad = None, 0, 0, 0
    for hdr, payload, nxt in split_frames(data):
        expect = nxt["bpl"] * nxt["lines"]
        ok = len(payload) == expect and not nxt["truncated"] and expect > 0
        n_ok += ok
        n_bad += not ok
        if shown < args.show:
            shown += 1
            print(f"frame {hdr['frame_no']:5d}: {len(payload):8d} bytes, "
                  f"{nxt['bpl']} bytes/line x {nxt['lines']} lines, "
                  f"PCLK {nxt['pclk_mhz']:.2f} MHz, {nxt['frame_ms']:.1f} ms"
                  f"{' TRUNCATED' if nxt['truncated'] else ''}{'' if ok else '  <-- incomplete'}")
        if ok and good is None:
            good = (payload, nxt["bpl"] // 2, nxt["lines"])
    print(f"{n_ok} complete frames, {n_bad} incomplete")
    if good is None:
        print("no complete frame found")
        print("first bytes:", data[:48].hex(" "))
        return 1

    payload, width, height = good
    Image.fromarray(rgb565_to_rgb(payload, width, height, args.le)).save(args.out)
    print(f"saved {args.out}: {width}x{height}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
