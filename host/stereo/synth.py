"""Synthetic chessboard recordings with known camera parameters.

    python -m stereo.synth data/synth_calib

Renders the calibration board as two different wide-angle cameras 55 mm apart
would see it, in the same folder format record.py writes. Used to test the
calibration program before a real board is available, and afterwards as a
regression test: the calibration must recover the parameters stored in
truth.json.
"""
import csv
import json
import os
import sys

import cv2
import numpy as np
from PIL import Image

from . import chessboard

SIZE = (800, 600)
SQUARE = 25.0
# Two deliberately different lenses, not parallel, right camera slightly off.
K1 = np.array([[520.0, 0, 410.0], [0, 520.0, 295.0], [0, 0, 1]])
D1 = np.array([-0.32, 0.12, 0.001, -0.0005, -0.02])
K2 = np.array([[480.0, 0, 395.0], [0, 480.0, 310.0], [0, 0, 1]])
D2 = np.array([-0.28, 0.09, 0.0, 0.0, -0.01])
R = cv2.Rodrigues(np.array([0.030, -0.020, 0.010]))[0]
T = np.array([-55.0, 1.5, 2.0])


def render_view(k, d, rb, tb, texture, px_per_mm):
    """Image of the board (pose rb, tb in this camera's frame) through lens k, d."""
    w, h = SIZE
    grid = np.stack(np.meshgrid(np.arange(w, dtype=np.float64), np.arange(h, dtype=np.float64)), -1)
    rays = cv2.undistortPoints(grid.reshape(-1, 1, 2), k, d).reshape(-1, 2)
    rays = np.column_stack((rays, np.ones(len(rays))))
    # intersect each ray with the board plane z_board = 0
    rt = rb.T
    s = (rt @ tb)[2] / (rays @ rt.T)[:, 2]
    xb = (rays * s[:, None] - tb) @ rt.T
    # board coordinates (mm, origin at the first inner corner) -> texture pixels
    mx = ((xb[:, 0] + 2 * SQUARE) * px_per_mm).reshape(h, w).astype(np.float32)
    my = ((xb[:, 1] + 2 * SQUARE) * px_per_mm).reshape(h, w).astype(np.float32)
    img = cv2.remap(texture, mx, my, cv2.INTER_LINEAR, borderMode=cv2.BORDER_CONSTANT, borderValue=120)
    img[(s <= 0).reshape(h, w)] = 120
    return cv2.GaussianBlur(img, (3, 3), 0.7)


def main():
    folder = sys.argv[1]
    os.makedirs(folder, exist_ok=True)
    rng = np.random.default_rng(7)
    px_per_mm = 4
    texture = chessboard.render(int(SQUARE * px_per_mm))
    rows = []
    n = 0
    while n < 24:
        rvec = rng.uniform(-0.45, 0.45, 3) * np.array([1, 1, 0.3])
        rb = cv2.Rodrigues(rvec)[0]
        tb = np.array([rng.uniform(-170, -20), rng.uniform(-130, 0), rng.uniform(300, 520)])
        # keep the pose only if every corner lands inside both images
        obj = chessboard.object_points(SQUARE).astype(np.float64)
        p1 = cv2.projectPoints(obj, rvec, tb, K1, D1)[0].reshape(-1, 2)
        p2 = cv2.projectPoints(obj, cv2.Rodrigues(R @ rb)[0], R @ tb + T, K2, D2)[0].reshape(-1, 2)
        if min(p1.min(), p2.min()) < 15 or max(p1[:, 0].max(), p2[:, 0].max()) > SIZE[0] - 15 \
                or max(p1[:, 1].max(), p2[:, 1].max()) > SIZE[1] - 15:
            continue
        left = render_view(K1, D1, rb, tb, texture, px_per_mm)
        right = render_view(K2, D2, R @ rb, R @ tb + T, texture, px_per_mm)
        for name, img in (("L", left), ("R", right)):
            noisy = np.clip(img.astype(np.float32) + rng.normal(0, 2.0, img.shape), 0, 255).astype(np.uint8)
            Image.fromarray(np.dstack([noisy] * 3)).save(os.path.join(folder, f"{name}_{n:04d}.png"))
        rows.append(dict(index=n, t_left_us=n * 66638, t_right_us=n * 66638, phase_us=0,
                         tof_mm="", tof_age_ms="0.0"))
        n += 1
    with open(os.path.join(folder, "index.csv"), "w", newline="") as f:
        out = csv.DictWriter(f, list(rows[0]))
        out.writeheader()
        out.writerows(rows)
    json.dump(dict(square_mm=SQUARE, fx_left=K1[0, 0], fx_right=K2[0, 0], cx_left=K1[0, 2], cy_left=K1[1, 2],
                   cx_right=K2[0, 2], cy_right=K2[1, 2], baseline_mm=float(np.linalg.norm(T)),
                   T_mm=T.tolist(), rotation_deg=np.degrees(cv2.Rodrigues(R)[0]).ravel().tolist()),
              open(os.path.join(folder, "truth.json"), "w"), indent=1)
    print(f"wrote {n} synthetic pairs to {folder}")


if __name__ == "__main__":
    main()
