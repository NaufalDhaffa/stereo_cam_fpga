"""One interface to the two printed targets.

The numbered board (charuco.py) is looked for first: its corners carry
numbers, so a partial view is enough. The plain 9 x 6 chessboard
(chessboard.py) is still accepted when the numbered board is not in view; it
must be seen completely.

A detection is (kind, ids, left, right): the corner numbers and their pixel
positions in both pictures, same order.
"""
import cv2
import numpy as np

from . import charuco, chessboard
from . import params as P

MIN_CORNERS = 8                    # shared corners a view needs to be of use
DEFAULT_SQUARE = {"charuco": charuco.SQUARE_MM, "chessboard": 27.0}
TOTAL = {"charuco": (charuco.COLS - 1) * (charuco.ROWS - 1), "chessboard": chessboard.COLS * chessboard.ROWS}


def find_pair(left_gray, right_gray, fast=True):
    """The target as both cameras see it, or None."""
    found = charuco.find_pair(left_gray, right_gray)
    if len(found) >= MIN_CORNERS:
        ids = np.array(sorted(found))
        pts = np.array([found[i] for i in ids], np.float32)
        return "charuco", ids, pts[:, :2].copy(), pts[:, 2:].copy()
    plain = chessboard.find_pair(left_gray, right_gray, fast=fast)
    if plain is None:
        return None
    return "chessboard", np.arange(len(plain[0])), plain[0], plain[1]


def object_points(kind, ids, square_mm):
    """Board coordinates (mm) of the given corners."""
    if kind == "charuco":
        return charuco.object_points(square_mm)[ids].astype(np.float32)
    return chessboard.object_points(square_mm)[ids]


def square_for(kind, cal=None, given=None):
    """Square size to assume for this kind of board.

    `given` (typed by the user) and the calibration's own value apply to the
    kind of board the calibration was made with; the other kind falls back to
    its usual size.
    """
    if cal is not None and str(cal.get("target", "chessboard")) != kind:
        return DEFAULT_SQUARE[kind]
    if given:
        return float(given)
    return float(cal["square_mm"]) if cal is not None and "square_mm" in cal else DEFAULT_SQUARE[kind]


def tilt(kind, ids, corners, size=None, focal_px=None):
    """How the board is turned away from facing the camera: (sideways, updown) in degrees.

    sideways > 0: the board's right edge (as seen in the picture) is nearer
    than its left edge; updown > 0: its top edge is nearer. Uses a nominal
    lens, good to a few degrees, which is all that is needed to tell a tilted
    pose from a flat one.
    """
    size = size or (P.WIDTH, P.HEIGHT)
    focal_px = focal_px or 950.0 * size[0] / 800          # these lenses: about 950 px at 800 wide
    k = np.array([[focal_px, 0, size[0] / 2], [0, focal_px, size[1] / 2], [0, 0, 1.0]])
    ok, rvec, _ = cv2.solvePnP(object_points(kind, ids, 1.0).astype(np.float64),
                               np.asarray(corners, np.float64).reshape(-1, 1, 2), k, None)
    if not ok:
        return 0.0, 0.0
    n = cv2.Rodrigues(rvec)[0][:, 2]
    n = n * np.sign(n[2])                      # the normal pointing away from the camera
    return float(np.degrees(np.arctan2(n[0], n[2]))), float(np.degrees(np.arctan2(-n[1], n[2])))


def draw(img, found, cam):
    """Marks the detected corners in the picture of camera `cam` (0 = left)."""
    kind, ids, left, right = found
    pts = left if cam == 0 else right
    if kind == "chessboard":
        cv2.drawChessboardCorners(img, (chessboard.COLS, chessboard.ROWS), pts.reshape(-1, 1, 2), True)
    else:
        charuco.draw(img, {int(i): (float(p[0]), float(p[1])) for i, p in zip(ids, pts)})
    return img
