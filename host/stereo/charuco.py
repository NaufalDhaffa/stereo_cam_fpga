"""The wall-test target: a chessboard whose white squares carry numbered markers (ChArUco).

    python -m stereo.charuco [paper]       write the printable pattern to calib/

Every inner corner has a number, known from the markers next to it. So a
corner is the same corner in the left and the right picture, at every
distance and in every recording, even when only part of the board is in view
(up close the board is larger than what both cameras share).

Taped flat to the wall, the board gives two distances to that wall:

    stereo   every corner is triangulated from the two cameras; a plane is
             fitted and its distance from the left camera taken. This is the
             figure the depth map depends on (focal length, baseline, yaw).
    mono     the board's pose from the left camera alone, from the known size
             of the squares. Depends on the left focal length only.

Both are perpendicular distances from the camera to the wall, which is what a
ruler held square to the wall measures, and neither depends on which corners
happened to be visible.
"""
import os
import sys
import zlib

import cv2
import numpy as np

COLS, ROWS = 8, 5                 # squares; 7 x 4 = 28 numbered inner corners
SQUARE_MM = 38.0                  # nominal; measure the print
MARKER_RATIO = 0.75
MIN_CORNERS = 6                   # fewer shared corners than this give no distance

from . import calibrate  # noqa: E402  (calibrate -> target reads the constants above)

_board = None
_detector = None


def board():
    global _board
    if _board is None:
        _board = cv2.aruco.CharucoBoard((COLS, ROWS), SQUARE_MM, SQUARE_MM * MARKER_RATIO,
                                        cv2.aruco.getPredefinedDictionary(cv2.aruco.DICT_4X4_50))
    return _board


def object_points(square_mm=SQUARE_MM):
    """Corner coordinates on the board in mm, indexed by corner number."""
    return np.asarray(board().getChessboardCorners(), np.float64) * (square_mm / SQUARE_MM)


def detect_interpolated(gray):
    """{corner number: (x, y)} as OpenCV's ChArUco detector gives them: corner positions
    interpolated from the markers around them. Kept for comparison; see detect()."""
    global _detector
    if _detector is None:
        _detector = cv2.aruco.CharucoDetector(board())
    corners, ids, _, _ = _detector.detectBoard(gray)
    if ids is None:
        return {}
    return {int(i): (float(c[0]), float(c[1])) for i, c in zip(ids.ravel(), corners.reshape(-1, 2))}


METHOD = "anchored"               # "anchored" (detect_anchored) or "interpolated" (OpenCV's own)
_markers = None
_layout = None


def _board_layout():
    """Board geometry in units of squares: marker corners by marker id, and the inner corners."""
    global _layout
    if _layout is None:
        b = board()
        obj = [np.asarray(o, np.float64)[:, :2] / SQUARE_MM for o in b.getObjPoints()]
        ids = [int(i) for i in np.asarray(b.getIds()).ravel()]
        inner = np.asarray(b.getChessboardCorners(), np.float64)[:, :2] / SQUARE_MM
        _layout = (dict(zip(ids, obj)), inner)
    return _layout


def detect_anchored(gray, stats=None):
    """{corner number: (x, y)}: the numbered markers say WHICH corner is where, the
    chessboard corner itself is then located in the picture.

    1. The markers are found and identified (their own corners are only good
       to a pixel or so, their identity is certain).
    2. For every inner corner of the board, the markers within reach around
       it give a local mapping board -> picture, and with it where the corner
       should be. One marker is enough, so corners at the edge of the view
       are found too.
    3. From that prediction the true corner (the saddle point where four
       squares meet) is searched in the picture itself, in a window sized by
       the local square size, to a fraction of a pixel.
    4. A corner is kept only if the search stayed near the prediction and the
       four squares around it really alternate dark and light.
    """
    global _markers
    if _markers is None:
        _markers = cv2.aruco.ArucoDetector(cv2.aruco.getPredefinedDictionary(cv2.aruco.DICT_4X4_50))
    found, ids, _ = _markers.detectMarkers(gray)
    if ids is None:
        return {}
    marker_obj, inner = _board_layout()
    seen = {int(i): np.asarray(c, np.float64).reshape(4, 2) for i, c in zip(ids.ravel(), found) if int(i) in marker_obj}
    if not seen:
        return {}
    centres = {i: marker_obj[i].mean(axis=0) for i in seen}
    h, w = gray.shape
    out = {}
    smooth = None
    for n, c in enumerate(inner):
        near = [i for i in seen if np.abs(centres[i] - c).max() < 1.1]          # markers in the squares touching the corner
        if not near:
            near = [i for i in seen if np.abs(centres[i] - c).max() < 2.1]      # or one square further out
        if not near:
            continue
        src = np.concatenate([marker_obj[i] for i in near])
        dst = np.concatenate([seen[i] for i in near])
        hom = cv2.getPerspectiveTransform(src.astype(np.float32), dst.astype(np.float32)) if len(src) == 4 \
            else cv2.findHomography(src, dst)[0]
        if hom is None:
            continue

        def project(p):
            q = hom @ np.array([p[0], p[1], 1.0])
            return q[:2] / q[2]

        guess = project(c)
        square = min(np.linalg.norm(project(c + [0.5, 0]) - project(c - [0.5, 0])),
                     np.linalg.norm(project(c + [0, 0.5]) - project(c - [0, 0.5])))   # pixels per square here
        # The search window must stay inside the white rim around the markers (an eighth of a
        # square wide): a marker's own edges inside the window pull the result off the corner.
        win = int(np.clip(int(WINDOW * square), 2, 11))
        if square < 7 or not (win + 2 <= guess[0] < w - win - 2 and win + 2 <= guess[1] < h - win - 2):
            continue
        p = cv2.cornerSubPix(gray, np.float32([[guess]]), (win, win), (-1, -1),
                             (cv2.TERM_CRITERIA_EPS | cv2.TERM_CRITERIA_MAX_ITER, 40, 0.005))[0, 0].astype(np.float64)
        moved = float(np.linalg.norm(p - guess))
        # Is it a saddle? Where four squares meet, the brightness curves up along
        # one diagonal and down along the other: the determinant of its second
        # derivatives is clearly negative. (The squares themselves cannot be
        # sampled for this: the light ones are filled with the markers.)
        xi, yi = int(round(p[0])), int(round(p[1]))
        if not (2 <= xi < w - 2 and 2 <= yi < h - 2):
            continue
        if smooth is None:
            smooth = cv2.GaussianBlur(gray, (0, 0), 1.2).astype(np.float32)
        s = smooth[yi - 1:yi + 2, xi - 1:xi + 2]
        ixx = s[1, 0] - 2 * s[1, 1] + s[1, 2]
        iyy = s[0, 1] - 2 * s[1, 1] + s[2, 1]
        ixy = (s[0, 0] + s[2, 2] - s[0, 2] - s[2, 0]) / 4
        saddle = float(ixy * ixy - ixx * iyy)               # > 0 at a saddle, in (grey levels per pixel^2)^2
        if stats is not None:
            stats.append((n, moved, square, saddle))
        if moved > 0.3 * square or saddle < SADDLE_MIN:
            continue
        out[n] = (float(p[0]), float(p[1]))
    return out


WINDOW = 0.11                     # half size of the search window, in squares
SADDLE_MIN = 10.0                 # weakest saddle accepted as a chessboard corner (real ones: 35 and up)


def detect(gray):
    """{corner number: (x, y)} of the corners found in one picture (possibly empty)."""
    return detect_anchored(gray) if METHOD == "anchored" else detect_interpolated(gray)


def find_pair(left_gray, right_gray):
    """{corner number: (xl, yl, xr, yr)} for the corners both cameras see."""
    a, b = detect(left_gray), detect(right_gray)
    return {i: a[i] + b[i] for i in sorted(a.keys() & b.keys())}


def _plane(points):
    """Distance of the fitted plane from the origin, its tilt against the view axis, flatness (rms)."""
    centre = points.mean(axis=0)
    normal = np.linalg.svd(points - centre)[2][2]
    return (abs(float(normal @ centre)), float(np.degrees(np.arccos(min(1.0, abs(normal[2]))))),
            float(np.sqrt((((points - centre) @ normal) ** 2).mean())))


def wall(cal, ids, pts, square_mm=SQUARE_MM, only=None):
    """Distances to the board from shared corners; None when there are too few.

    ids: corner numbers; pts: rows of (xl, yl, xr, yr) in the raw pictures.
    `only` restricts the evaluation to these corner numbers, to compare
    recordings on exactly the same corners.
    """
    ids, pts = np.asarray(ids, int), np.asarray(pts, np.float64).reshape(-1, 4)
    if only is not None:
        keep = np.isin(ids, list(only))
        ids, pts = ids[keep], pts[keep]
    if len(ids) < MIN_CORNERS:
        return None
    f, cx, cy = float(cal["P1"][0, 0]), float(cal["P1"][0, 2]), float(cal["P1"][1, 2])
    base = float(np.linalg.norm(cal["T"]))
    a = calibrate.rectify_points(cal, pts[:, :2], 0)
    b = calibrate.rectify_points(cal, pts[:, 2:], 1)
    disp, dy = a[:, 0] - b[:, 0], a[:, 1] - b[:, 1]
    out = dict(corners=int(len(ids)), dy=float(dy.mean()), dy_abs=float(np.abs(dy).mean()),
               stereo_mm=None, tilt_deg=None, flat_mm=None, mono_mm=None)
    k, d = cal["K1"], cal["D1"]
    und = (cv2.fisheye.undistortPoints if cal["model"] == "fisheye" else cv2.undistortPoints)(
        pts[:, :2].reshape(-1, 1, 2), k, d).reshape(-1, 2)
    ok, rvec, tvec = cv2.solvePnP(object_points(square_mm)[ids], und, np.eye(3), None, flags=cv2.SOLVEPNP_ITERATIVE)
    normal = None
    if ok:
        normal = cv2.Rodrigues(rvec)[0][:, 2]
        normal = normal * np.sign(normal[2])
        out["mono_mm"] = abs(float(normal @ tvec.ravel()))
        out["tilt_deg"] = float(np.degrees(np.arccos(min(1.0, normal[2]))))
    if (disp > 1).all():
        z = f * base / disp
        xyz = np.column_stack(((a[:, 0] - cx) * z / f, (a[:, 1] - cy) * z / f, z)) @ np.asarray(cal["R1"], float)
        # (rows times R1 = R1^T applied: from the rectified to the left camera's own frame)
        if normal is not None:
            # The wall's direction is taken from the board's shape, which pins
            # it down far better than a plane through a few noisy points does
            # when the board is small in the picture; the triangulated points
            # then only say how far away along that direction they are.
            along = xyz @ normal
            out["stereo_mm"], out["flat_mm"] = float(along.mean()), float(along.std())
        else:
            out["stereo_mm"], out["tilt_deg"], out["flat_mm"] = _plane(xyz)
    return out


def draw(img, found, cam=0):
    """Marks the found corners with their numbers. found: {id: (x, y)} or {id: (xl, yl, xr, yr)}."""
    for i, p in found.items():
        x, y = (p[0], p[1]) if len(p) == 2 or cam == 0 else (p[2], p[3])
        cv2.circle(img, (int(round(x)), int(round(y))), 4, (0, 255, 0), 1)
        cv2.putText(img, str(i), (int(x) + 5, int(y) - 5), cv2.FONT_HERSHEY_SIMPLEX, 0.4, (0, 255, 0), 1)
    return img


def write_pdf(path, paper=(330, 215), px_per_mm=20):
    """Landscape page with the board at its exact size (bitmap, 0.05 mm pixels)."""
    w_mm, h_mm = COLS * SQUARE_MM, ROWS * SQUARE_MM
    x0, y0 = (paper[0] - w_mm) / 2, (paper[1] - h_mm) / 2
    if x0 < 8 or y0 < 8:
        raise SystemExit(f"the {w_mm:g} x {h_mm:g} mm board does not fit this paper with a printable margin")
    img = board().generateImage((int(w_mm * px_per_mm), int(h_mm * px_per_mm)), marginSize=0, borderBits=1)
    img = np.where(img > 127, 255, 0).astype(np.uint8)
    data = zlib.compress(img.tobytes(), 9)
    pt = 72 / 25.4
    content = (f"q {w_mm * pt:.3f} 0 0 {h_mm * pt:.3f} {x0 * pt:.3f} {y0 * pt:.3f} cm /Im0 Do Q\n"
               f"BT /F1 9 Tf {x0 * pt:.1f} {(y0 - 7) * pt:.1f} Td "
               f"(ChArUco {COLS}x{ROWS}, {SQUARE_MM:g} mm squares. Print at 100% - no fit to page - "
               f"then measure one square.) Tj ET").encode()
    objs = [b"<< /Type /Catalog /Pages 2 0 R >>",
            b"<< /Type /Pages /Kids [3 0 R] /Count 1 >>",
            (f"<< /Type /Page /Parent 2 0 R /MediaBox [0 0 {paper[0] * pt:.2f} {paper[1] * pt:.2f}] /Contents 4 0 R "
             f"/Resources << /Font << /F1 5 0 R >> /XObject << /Im0 6 0 R >> >> >>").encode(),
            b"<< /Length " + str(len(content)).encode() + b" >>\nstream\n" + content + b"\nendstream",
            b"<< /Type /Font /Subtype /Type1 /BaseFont /Helvetica >>",
            (f"<< /Type /XObject /Subtype /Image /Width {img.shape[1]} /Height {img.shape[0]} /ColorSpace /DeviceGray "
             f"/BitsPerComponent 8 /Interpolate false /Filter /FlateDecode /Length {len(data)} >>\nstream\n").encode()
            + data + b"\nendstream"]
    out, offsets = bytearray(b"%PDF-1.4\n"), []
    for n, body in enumerate(objs, 1):
        offsets.append(len(out))
        out += f"{n} 0 obj\n".encode() + body + b"\nendobj\n"
    xref = len(out)
    out += f"xref\n0 {len(objs) + 1}\n0000000000 65535 f \n".encode()
    out += b"".join(f"{o:010d} 00000 n \n".encode() for o in offsets)
    out += f"trailer\n<< /Size {len(objs) + 1} /Root 1 0 R >>\nstartxref\n{xref}\n%%EOF\n".encode()
    open(path, "wb").write(out)


def main():
    from .chessboard import PAPER_MM
    paper = sys.argv[1].lower() if len(sys.argv) > 1 else "f4"
    if paper not in PAPER_MM:
        raise SystemExit("paper must be one of: " + ", ".join(PAPER_MM))
    name = os.path.join(calibrate.ROOT, "calib", f"charuco_{COLS}x{ROWS}_{SQUARE_MM:g}mm_{paper.upper()}.pdf")
    write_pdf(name, PAPER_MM[paper])
    w, h = PAPER_MM[paper]
    print(f"wrote {name}")
    print(f"  {paper.upper()} landscape {w:g} x {h:g} mm, board {COLS * SQUARE_MM:g} x {ROWS * SQUARE_MM:g} mm, "
          f"margins {(w - COLS * SQUARE_MM) / 2:g} / {(h - ROWS * SQUARE_MM) / 2:g} mm")


if __name__ == "__main__":
    sys.exit(main())
