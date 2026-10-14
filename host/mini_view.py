"""Live view of the chained matcher mini running in the FPGA (build/mini).

    python mini_view.py

Left: the left camera's picture as the logic sees it (200 x 148, rectified).
Right: the distance from the disparity the FPGA sends for that very frame,
after the median and speckle filters on the PC; near is warm, far is cool.
The number in the middle is the distance under the cross. Keys: q or Esc to
quit, s to save the current view to build/.
"""
import os
import sys
import time

os.environ["CAM_BUILD"] = "build/mini"
os.environ["STEREO_PROFILE"] = "mini"
os.environ["CAM_GOLDEN"] = "build/golden_minisys"
if "--standalone" in sys.argv:        # the board booted from its SD card: no JTAG
    os.environ["CAM_STANDALONE"] = "1"

import cv2
import numpy as np

from pslink import ROOT
from source import LiveSource
from stereo import calibrate, reconstruct, rectify, stream
from stereo import params as P

SCALE = 4
WINDOW = "Matcher mini di FPGA (200 x 148, 2 irisan, 32 disparitas) - q keluar, s simpan"


def main():
    cal = calibrate.load(os.path.join(ROOT, "calib", P.CALIB))
    f, base = float(cal["P1"][0, 0]), float(np.linalg.norm(cal["T"]))
    table = reconstruct.depth_table(f, base)
    okl = stream.left_mask(cal)
    near, far = int(f * base / (P.D_MIN + P.DISPARITIES - 1)), int(f * base / P.D_MIN)
    cv2.namedWindow(WINDOW, cv2.WINDOW_AUTOSIZE)
    t_last, rate, n = time.time(), 0.0, 0
    with LiveSource(mode="depth", log=lambda m: print("  " + m)) as src:
        for pair in src.pairs(timeout=120.0):
            depth = reconstruct.depth_mm(stream.finished(pair.disp, okl), table)
            small = np.dstack([stream.bin2(pair.left[:, :, c]) for c in range(3)])
            left = rectify.rectify_ref(small, *cal["maps"][0])
            view = np.hstack((left, reconstruct.colorize_depth(depth, near, far)))
            view = cv2.cvtColor(cv2.resize(view, None, fx=SCALE, fy=SCALE, interpolation=cv2.INTER_NEAREST), cv2.COLOR_RGB2BGR)
            n += 1
            if time.time() - t_last >= 1.0:
                rate, n, t_last = n / (time.time() - t_last), 0, time.time()
            cy, cx = P.HEIGHT // 2, P.WIDTH // 2
            patch = depth[cy - 3:cy + 4, cx - 3:cx + 4]
            mid = int(np.median(patch[patch > 0])) if (patch > 0).sum() >= 10 else 0
            for ox in (0, P.WIDTH * SCALE):
                cv2.drawMarker(view, (ox + cx * SCALE, cy * SCALE), (255, 255, 255), cv2.MARKER_CROSS, 18, 1)
            text = (f"{rate:4.1f} fps   valid {100 * (depth > 0).mean():3.0f}%   tengah: "
                    + (f"{mid / 1000:.2f} m" if mid else "-") + f"   jangkauan {near / 1000:.2f}-{far / 1000:.2f} m")
            cv2.rectangle(view, (0, 0), (view.shape[1], 24), (0, 0, 0), -1)
            cv2.putText(view, text, (8, 17), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (240, 240, 240), 1, cv2.LINE_AA)
            cv2.imshow(WINDOW, view)
            key = cv2.waitKey(1) & 0xFF
            if key in (ord("q"), 27) or cv2.getWindowProperty(WINDOW, cv2.WND_PROP_VISIBLE) < 1:
                break
            if key == ord("s"):
                out = os.path.join(ROOT, "build", time.strftime("mini_view_%Y%m%d_%H%M%S.png"))
                cv2.imwrite(out, view)
                print("tersimpan:", out)
    cv2.destroyAllWindows()
    return 0


if __name__ == "__main__":
    sys.exit(main())
