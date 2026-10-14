"""The board as a webcam: read "Stereo Depth Camera" like any camera and take the picture apart.

    python webcam.py             live view: left picture, depth, distance under the cross
    python webcam.py --probe     find the camera, grab a few frames, save build/webcam_probe.png
    python webcam.py --slices 1  the board runs a chain of 1 slice (16 disparities): range and colours to match
    python webcam.py --slices 1  the board runs a chain of 1 slice (16 disparities): distance range for that

A frame is 400 x 148 YUY2: the left 200 columns are the left camera's
picture (grey), the right 200 the disparity, exact to 1/16 pixel:
d = Y << 2 | (colour byte & 3). The frames are read raw (no colour
conversion), so nothing is lost on the way.
"""
import os
import sys
import time

import cv2
import numpy as np

os.environ.setdefault("STEREO_PROFILE", "mini")
from stereo import calibrate, reconstruct, stream
from stereo import params as P

ROOT = os.path.normpath(os.path.join(os.path.dirname(os.path.abspath(__file__)), ".."))
W, H = 2 * P.WIDTH, P.HEIGHT


def open_camera(log=print):
    """The first camera that delivers W x H raw YUY2."""
    for index in range(6):
        cap = cv2.VideoCapture(index, cv2.CAP_MSMF)       # this backend hands out the frame as it came
        if not cap.isOpened():
            continue
        cap.set(cv2.CAP_PROP_FRAME_WIDTH, W)
        cap.set(cv2.CAP_PROP_FRAME_HEIGHT, H)
        cap.set(cv2.CAP_PROP_CONVERT_RGB, 0)
        size = (int(cap.get(cv2.CAP_PROP_FRAME_WIDTH)), int(cap.get(cv2.CAP_PROP_FRAME_HEIGHT)))
        if size == (W, H):
            log(f"kamera {index}: {size[0]} x {size[1]}")
            return cap
        cap.release()
    raise SystemExit(f"tidak ada kamera {W} x {H}: apakah 'Stereo Depth Camera' terlihat di Windows?")


def split(frame):
    """(left luma, disparity in 1/16 px) from one raw frame."""
    raw = np.asarray(frame, np.uint8).reshape(H, W, 2)
    left = raw[:, :P.WIDTH, 0].copy()
    d = raw[:, P.WIDTH:, :]
    disp = (d[:, :, 0].astype(np.uint16) << 2) | (d[:, :, 1] & 3)
    return left, disp, raw


def main():
    cal = calibrate.load(os.path.join(ROOT, "calib", P.CALIB))
    f, base = float(cal["P1"][0, 0]), float(np.linalg.norm(cal["T"]))
    table = reconstruct.depth_table(f, base)
    okl = stream.left_mask(cal)
    if "--slices" in sys.argv:
        P.DISPARITIES = 16 * int(sys.argv[sys.argv.index("--slices") + 1])
    slices = int(sys.argv[sys.argv.index("--slices") + 1]) if "--slices" in sys.argv else P.DISPARITIES // 16
    near, far = int(f * base / (P.D_MIN + 16 * slices - 1)), int(f * base / P.D_MIN)
    cap = open_camera()
    probe = "--probe" in sys.argv
    t0, n, shown, rate = time.time(), 0, 0, 0.0
    bad_colour = 0
    while True:
        ok, frame = cap.read()
        if not ok or frame is None:
            if time.time() - t0 > 8 and n == 0:
                raise SystemExit("kamera terbuka tetapi tidak ada frame yang datang")
            continue
        if frame.size != W * H * 2:
            raise SystemExit(f"frame berukuran {frame.shape}, bukan {W} x {H} YUY2 mentah")
        left, disp, raw = split(frame)
        n += 1
        # the colour bytes are 0x80 on the left and 0x80 .. 0x83 on the right when nothing was lost
        bad_colour += int((raw[:, :P.WIDTH, 1] != 0x80).sum() + ((raw[:, P.WIDTH:, 1] & 0xFC) != 0x80).sum())
        depth = reconstruct.depth_mm(stream.finished(disp, okl), table)
        view = np.hstack((cv2.cvtColor(left, cv2.COLOR_GRAY2BGR),
                          cv2.cvtColor(reconstruct.colorize_depth(depth, near, far), cv2.COLOR_RGB2BGR)))
        view = cv2.resize(view, None, fx=4, fy=4, interpolation=cv2.INTER_NEAREST)
        if time.time() - t0 >= 1.0 and not probe:
            rate, shown, t0 = (n - shown) / (time.time() - t0), n, time.time()
        cy, cx = P.HEIGHT // 2, P.WIDTH // 2
        patch = depth[cy - 3:cy + 4, cx - 3:cx + 4]
        mid = int(np.median(patch[patch > 0])) if (patch > 0).sum() >= 10 else 0
        if probe:
            if n >= 20:
                dt = time.time() - t0
                out = os.path.join(ROOT, "build", "webcam_probe.png")
                cv2.imwrite(out, view)
                valid = disp > 0
                print(f"{n} frame dalam {dt:.1f} s ({n / dt:.1f} fps); piksel dengan disparitas {100 * valid.mean():.1f}%, "
                      f"disparitas {int(disp[valid].min()) / 16 if valid.any() else 0:.1f}-{int(disp.max()) / 16:.1f} px; "
                      f"byte warna yang rusak: {bad_colour}; kecerahan kiri {left.mean():.0f}")
                print(out)
                break
            continue
        for ox in (0, P.WIDTH * 4):
            cv2.drawMarker(view, (ox + cx * 4, cy * 4), (255, 255, 255), cv2.MARKER_CROSS, 18, 1)
        cv2.rectangle(view, (0, 0), (view.shape[1], 24), (0, 0, 0), -1)
        cv2.putText(view, f"{rate:4.1f} fps   valid {100 * (depth > 0).mean():3.0f}%   tengah: "
                    + (f"{mid / 1000:.2f} m" if mid else "-") + f"   jangkauan {near / 1000:.2f}-{far / 1000:.2f} m",
                    (8, 17), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (240, 240, 240), 1, cv2.LINE_AA)
        cv2.imshow(f"Stereo Depth Camera (webcam), {slices} irisan - q keluar", view)
        if (cv2.waitKey(1) & 0xFF) in (ord("q"), 27):
            break
    cap.release()
    cv2.destroyAllWindows()
    return 0


if __name__ == "__main__":
    sys.exit(main())
