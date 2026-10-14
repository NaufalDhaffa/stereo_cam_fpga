"""The calibration target: a chessboard with 9 x 6 inner corners (10 x 7 squares).

    python -m stereo.chessboard            write the printable pattern to calib/

Print it at 100 % (no "fit to page"), glue it to something flat and rigid,
then measure one square with a ruler and give that number to the calibration.
"""
import os
import sys

import cv2
import numpy as np

COLS, ROWS = 9, 6                 # inner corners
SQUARE_MM = 25.0                  # nominal size in the printable file


def object_points(square_mm):
    """Corner coordinates on the board, in mm, in detection order."""
    p = np.zeros((COLS * ROWS, 3), np.float32)
    p[:, :2] = np.mgrid[0:COLS, 0:ROWS].T.reshape(-1, 2) * square_mm
    return p


def find(gray, fast=False):
    """Corners as an (N, 2) float32 array, or None. `fast` is for live preview."""
    if fast:
        ok, c = cv2.findChessboardCorners(
            gray, (COLS, ROWS),
            flags=cv2.CALIB_CB_ADAPTIVE_THRESH | cv2.CALIB_CB_NORMALIZE_IMAGE | cv2.CALIB_CB_FAST_CHECK)
        if not ok:
            return None
        c = cv2.cornerSubPix(gray, c, (5, 5), (-1, -1),
                             (cv2.TERM_CRITERIA_EPS | cv2.TERM_CRITERIA_MAX_ITER, 20, 0.01))
    else:
        ok, c = cv2.findChessboardCornersSB(
            gray, (COLS, ROWS), flags=cv2.CALIB_CB_EXHAUSTIVE | cv2.CALIB_CB_ACCURACY)
        if not ok:
            return None
    return c.reshape(-1, 2).astype(np.float32)


def find_pair(left_gray, right_gray, fast=False):
    """Corners in both images with the same ordering, or None."""
    a, b = find(left_gray, fast), find(right_gray, fast)
    if a is None or b is None:
        return None
    # The detector may number the corners from either end of the board. Both
    # cameras look at it from nearly the same side, so the first-to-last
    # direction must agree.
    if np.dot(a[-1] - a[0], b[-1] - b[0]) < 0:
        b = b[::-1].copy()
    return a, b


def tilt(corners, size=(800, 600), focal_px=950.0):
    """How the board is turned away from facing the camera: (sideways, updown) in degrees.

    sideways > 0: the board's right edge (as seen in the picture) is nearer
    than its left edge; updown > 0: its top edge is nearer. Uses a nominal lens, good to a few degrees, which is
    all that is needed to tell a tilted pose from a flat one.
    """
    k = np.array([[focal_px, 0, size[0] / 2], [0, focal_px, size[1] / 2], [0, 0, 1.0]])
    ok, rvec, _ = cv2.solvePnP(object_points(1.0).astype(np.float64),
                               np.asarray(corners, np.float64).reshape(-1, 1, 2), k, None)
    if not ok:
        return 0.0, 0.0
    n = cv2.Rodrigues(rvec)[0][:, 2]
    n = n * np.sign(n[2])                      # the normal pointing away from the camera
    return float(np.degrees(np.arctan2(n[0], n[2]))), float(np.degrees(np.arctan2(-n[1], n[2])))


def render(square_px, margin=1):
    """The pattern as a uint8 image with a white margin of `margin` squares."""
    img = np.full(((ROWS + 1 + 2 * margin) * square_px, (COLS + 1 + 2 * margin) * square_px), 255, np.uint8)
    for j in range(ROWS + 1):
        for i in range(COLS + 1):
            if (i + j) % 2 == 0:
                y, x = (j + margin) * square_px, (i + margin) * square_px
                img[y:y + square_px, x:x + square_px] = 0
    return img


PAPER_MM = {"a4": (297, 210), "f4": (330, 215), "letter": (279.4, 215.9), "legal": (355.6, 215.9)}


def write_pdf(path, square_mm=SQUARE_MM, paper=(297, 210)):
    """Landscape page with the board drawn as vector squares (exact size)."""
    pt = 72 / 25.4                                     # points per mm
    page_w, page_h = paper[0] * pt, paper[1] * pt
    x0 = (paper[0] - (COLS + 1) * square_mm) / 2
    y0 = (paper[1] - (ROWS + 1) * square_mm) / 2
    if x0 < 8 or y0 < 8:
        raise SystemExit(f"{square_mm:g} mm squares do not fit this paper with a printable margin")
    ops = ["0 g"]
    for j in range(ROWS + 1):
        for i in range(COLS + 1):
            if (i + j) % 2 == 0:
                ops.append(f"{(x0 + i * square_mm) * pt:.3f} {(y0 + j * square_mm) * pt:.3f} "
                           f"{square_mm * pt:.3f} {square_mm * pt:.3f} re f")
    ops.append(f"BT /F1 9 Tf {x0 * pt:.1f} {(y0 - 7) * pt:.1f} Td "
               f"(9x6 inner corners, {square_mm:g} mm squares. Print at 100% - no fit to page - "
               f"then measure one square.) Tj ET")
    stream = "\n".join(ops).encode()
    objs = [b"<< /Type /Catalog /Pages 2 0 R >>",
            b"<< /Type /Pages /Kids [3 0 R] /Count 1 >>",
            (f"<< /Type /Page /Parent 2 0 R /MediaBox [0 0 {page_w:.2f} {page_h:.2f}] "
             f"/Contents 4 0 R /Resources << /Font << /F1 5 0 R >> >> >>").encode(),
            b"<< /Length " + str(len(stream)).encode() + b" >>\nstream\n" + stream + b"\nendstream",
            b"<< /Type /Font /Subtype /Type1 /BaseFont /Helvetica >>"]
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
    root = os.path.normpath(os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", ".."))
    out = os.path.join(root, "calib")
    os.makedirs(out, exist_ok=True)
    # python -m stereo.chessboard [paper] [square_mm], e.g. "f4 27"
    paper = sys.argv[1].lower() if len(sys.argv) > 1 else "a4"
    square = float(sys.argv[2]) if len(sys.argv) > 2 else SQUARE_MM
    if paper not in PAPER_MM:
        raise SystemExit("paper must be one of: " + ", ".join(PAPER_MM))
    name = os.path.join(out, f"chessboard_9x6_{square:g}mm_{paper.upper()}.pdf")
    write_pdf(name, square, PAPER_MM[paper])
    w, h = PAPER_MM[paper]
    print(f"wrote {name}")
    print(f"  {paper.upper()} landscape {w:g} x {h:g} mm, board {(COLS + 1) * square:g} x {(ROWS + 1) * square:g} mm, "
          f"margins {(w - (COLS + 1) * square) / 2:g} / {(h - (ROWS + 1) * square) / 2:g} mm")


if __name__ == "__main__":
    sys.exit(main())
