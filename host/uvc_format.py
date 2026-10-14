"""The bytes the board sends to the PC as a webcam, written and read back, with dummy data.

    python uvc_format.py              a dummy row as it goes over USB, and how it is read back
    python uvc_format.py --frame      a whole dummy frame through the same reader webcam.py uses

The writer here does what the logic does (rtl/uvc_lines.v): one USB Video Class payload per
picture row,

    2 bytes     payload header: 0x02, then 0x80 | end-of-frame << 1 | frame bit
    2 W bytes   left picture row (rectified luma), YUY2: luma, 0x80 per pixel
    2 W bytes   disparity row, YUY2: d >> 2, 0x80 | (d & 3) per pixel; d in 1/16 pixel, 0 = none

with W = 200. The FX2LP sends it in USB packets of at most 512 bytes; the short packet at the
end closes the payload. Windows hands a program the frame without the headers: 400 x 148 YUY2.
"""
import os
import sys

import numpy as np

W, H = 200, 148
F_PX, BASE_MM = 262.5, 54.45            # calibration (calib/stereo_mini.npz): focal length, baseline


def payload(row_y, luma, disp16, fid):
    """The bytes of one row's payload, as rtl/uvc_lines.v puts them out."""
    eof = row_y == H - 1
    out = bytearray([0x02, 0x80 | (eof << 1) | fid])
    for v in luma:
        out += bytes([v & 0xFF, 0x80])
    for d in disp16:
        out += bytes([(d >> 2) & 0xFF, 0x80 | (d & 3)])
    return bytes(out)


def usb_packets(data, size=512):
    """How the FX2LP cuts a payload into bulk packets (the last one short)."""
    return [data[i:i + size] for i in range(0, len(data), size)]


def read_row(pl):
    """What a reader does with one payload: header, left luma, disparity in 1/16 px."""
    head, body = pl[:2], np.frombuffer(pl[2:], np.uint8).reshape(2 * W, 2)
    luma = body[:W, 0]
    disp16 = (body[W:, 0].astype(np.uint16) << 2) | (body[W:, 1] & 3)
    return dict(end_of_frame=bool(head[1] & 2), frame_bit=head[1] & 1), luma, disp16


def distance_mm(disp16):
    """Distance from disparity: Z = f * B / d (d in pixels); 0 where there is no disparity."""
    d = np.asarray(disp16, float) / 16
    return np.where(d > 0, F_PX * BASE_MM / np.maximum(d, 1e-9), 0)


def dummy_row():
    """A made-up row: a grey ramp, no disparity on the left edge, a near object in the middle."""
    luma = np.linspace(40, 200, W).astype(np.uint8)
    disp16 = np.full(W, 7 * 16 + 8, np.uint16)          # 7.5 px: about 1.9 m
    disp16[:30] = 0                                     # no match (left edge, outside the window)
    disp16[80:120] = 21 * 16 + 9                        # 21.5625 px: about 0.66 m
    return luma, disp16


def hexdump(data, start=0, n=48):
    return "\n".join(f"  {start + i:04x}: " + " ".join(f"{b:02x}" for b in data[start + i:start + i + 16])
                     for i in range(0, n, 16))


def show_row():
    luma, disp16 = dummy_row()
    pl = payload(10, luma, disp16, fid=1)
    pk = usb_packets(pl)
    print(f"row 10 as one payload: {len(pl)} bytes = 2 header + {2 * W} left + {2 * W} disparity")
    print(f"over USB in {len(pk)} bulk packets: " + " + ".join(str(len(p)) for p in pk) + " bytes")
    print("\nstart of the payload (header, then the left picture):")
    print(hexdump(pl, 0, 32))
    print(f"\nthe disparity part, pixels 78 to 85 (byte {2 + 2 * W + 2 * 78}):")
    print(hexdump(pl, 2 + 2 * W + 2 * 78, 16))
    head, l, d = read_row(pl)
    print("\nread back:", head)
    for x in (0, 29, 30, 79, 80, 100, 119, 120):
        z = distance_mm(d[x])
        print(f"  x={x:3d}  luma {l[x]:3d}  disparity {d[x]:4d}/16 = {d[x] / 16:6.3f} px  "
              + (f"distance {z / 1000:.2f} m" if d[x] else "no disparity"))
    assert (l == luma).all() and (d == disp16).all()


def show_frame():
    """A whole frame through webcam.split(), the reader of the live tools."""
    sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
    os.environ.setdefault("STEREO_PROFILE", "mini")
    import webcam
    luma, disp16 = dummy_row()
    payloads = [payload(y, luma, disp16, fid=0) for y in range(H)]
    frame = np.frombuffer(b"".join(p[2:] for p in payloads), np.uint8)   # Windows strips the headers
    left, disp, _ = webcam.split(frame)
    print(f"frame of {len(frame)} bytes = {2 * W} x {H} YUY2; left {left.shape}, disparity {disp.shape}")
    print("identical to what was sent:", bool((left == luma).all() and (disp == disp16).all()))
    print(f"data rate at 15 fps: {sum(map(len, payloads)) * 15 / 1e6:.2f} MB/s")


if __name__ == "__main__":
    show_frame() if "--frame" in sys.argv else show_row()
