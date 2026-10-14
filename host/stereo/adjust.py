"""How far the cameras have turned against each other since calibration.

The calibration holds the pose of the right camera relative to the left one
(R, T). With the calibration board visible in both cameras, the present pose
follows from one view: the board's position in the left camera (solvePnP)
gives its corners in 3D, and those corners seen by the right camera give
where the right camera is now. The difference to R is what has to be undone.

Angles are those the RIGHT camera has to be turned by to be back where the
calibration expects it, seen from behind the camera, looking the way it looks:

    pitch  + = tilt up (nose up)        - = tilt down
    yaw    + = turn to the right        - = turn to the left
    roll   + = rotate clockwise         - = rotate anticlockwise

Only the relative pose can be measured; turning the left camera the opposite
way has the same effect.

Without the board, matched scene features on the rectified pair still give
pitch and roll (rows must agree), but not yaw: a yaw error looks exactly like
a change of distance.
"""
import cv2
import numpy as np

from . import calibrate, chessboard, target


def normalized(cal, pts, cam):
    """Image points of one camera as ideal (undistorted, focal length 1) coordinates."""
    k, d = (cal["K1"], cal["D1"]) if cam == 0 else (cal["K2"], cal["D2"])
    pts = np.asarray(pts, np.float64).reshape(-1, 1, 2)
    fn = cv2.fisheye.undistortPoints if cal["model"] == "fisheye" else cv2.undistortPoints
    return fn(pts, k, d).reshape(-1, 2)


def relative_pose(cal, corners_l, corners_r, square_mm):
    """Present (R, T) of the right camera relative to the left, from one board view."""
    obj = chessboard.object_points(square_mm).astype(np.float64)
    eye, none = np.eye(3), None
    ok, rvec, tvec = cv2.solvePnP(obj, normalized(cal, corners_l, 0), eye, none, flags=cv2.SOLVEPNP_ITERATIVE)
    if not ok:
        return None
    in_left = (cv2.Rodrigues(rvec)[0] @ obj.T).T + tvec.ravel()       # corners in the left camera frame
    ok, rvec, tvec = cv2.solvePnP(in_left, normalized(cal, corners_r, 1), eye, none, flags=cv2.SOLVEPNP_ITERATIVE)
    if not ok:
        return None
    return cv2.Rodrigues(rvec)[0], tvec.ravel(), float(in_left[:, 2].mean())


def correction(cal, r_now, t_now):
    """What to do to the right camera: dict with pitch, yaw, roll in degrees
    (signs as in the module text) and the change of the baseline in mm."""
    r_cal = np.asarray(cal["R"], np.float64)
    # r_now = Q^T r_cal when the camera has physically turned by Q, so the
    # turn that undoes it is r_now r_cal^T.
    rvec = cv2.Rodrigues(r_now @ r_cal.T)[0].ravel()
    deg = np.degrees(rvec)
    return dict(pitch=float(deg[0]), yaw=float(deg[1]), roll=float(deg[2]),
                baseline=float(np.linalg.norm(t_now) - np.linalg.norm(cal["T"])))


def turn_only(cal, corners_l, corners_r, obj):
    """Correction when the right camera has kept its place and only turned.

    obj: board coordinates (mm) of the corners, in the order of the two lists.

    A free pose from one board view is poor: a small turn and a small shift of
    the camera look almost alike, and the angles scatter by 0.2 degrees. On
    the breadboard a module tilts in its socket but stays where it is, so the
    calibrated position is kept and only the three angles are fitted, together
    with the board's pose. That brings the scatter down to about 0.01 degrees.
    Returns the dict of correction() plus the fit residual in pixels.
    """
    obj = np.asarray(obj, np.float64)
    a, b = normalized(cal, corners_l, 0), normalized(cal, corners_r, 1)
    r_cal, t_cal = np.asarray(cal["R"], np.float64), np.asarray(cal["T"], np.float64).ravel()
    ok, rvec, tvec = cv2.solvePnP(obj, a, np.eye(3), None, flags=cv2.SOLVEPNP_ITERATIVE)
    if not ok:
        return None

    def residual(p):
        x = (cv2.Rodrigues(p[:3])[0] @ obj.T).T + p[3:6]                  # board in the left camera
        y = (cv2.Rodrigues(p[6:9])[0] @ r_cal @ x.T).T + t_cal            # and in the turned right one
        return np.concatenate(((x[:, :2] / x[:, 2:] - a).ravel(), (y[:, :2] / y[:, 2:] - b).ravel()))

    p = np.concatenate((rvec.ravel(), tvec.ravel(), np.zeros(3)))
    for _ in range(8):                                                    # Gauss-Newton, numeric Jacobian
        r0 = residual(p)
        jac = np.empty((len(r0), 9))
        for i in range(9):
            step = np.zeros(9)
            step[i] = 1e-6
            jac[:, i] = (residual(p + step) - r0) / 1e-6
        p = p - np.linalg.lstsq(jac, r0, rcond=None)[0]
    deg = np.degrees(p[6:9])
    return dict(pitch=float(deg[0]), yaw=float(deg[1]), roll=float(deg[2]), distance=float(p[5]),
                residual=float(np.sqrt((residual(p) ** 2).mean()) * cal["P1"][0, 0]))


def from_board(cal, left_gray, right_gray, square_mm=None, fast=True):
    """Correction from one image pair showing a board: (dict or None, detection or None).

    Either board will do (see target.py). square_mm applies to the kind of
    board the calibration was made with; None takes the calibration's value.
    """
    found = target.find_pair(left_gray, right_gray, fast=fast)
    if found is None:
        return None, None
    kind, ids, left, right = found
    out = turn_only(cal, left, right, target.object_points(kind, ids, target.square_for(kind, cal, square_mm)))
    if out is not None:
        out["corners"] = len(ids)
    return out, found


def from_scene(cal, left_rect_gray, right_rect_gray):
    """Pitch and roll (degrees) from scene features on a rectified pair, or None.

    The rows of matched points must agree. A constant row difference is a
    pitch error; one that grows from left to right is a roll error.
    """
    orb = cv2.ORB_create(3000)
    ka, da = orb.detectAndCompute(left_rect_gray, None)
    kb, db = orb.detectAndCompute(right_rect_gray, None)
    if da is None or db is None:
        return None
    m = cv2.BFMatcher(cv2.NORM_HAMMING, crossCheck=True).match(da, db)
    if len(m) < 40:
        return None
    a = np.array([ka[i.queryIdx].pt for i in m])
    b = np.array([kb[i.trainIdx].pt for i in m])
    d, dy = a[:, 0] - b[:, 0], a[:, 1] - b[:, 1]
    ok = (d > 1) & (d < 140) & (np.abs(dy) < 15)
    if ok.sum() < 40:
        return None
    a, dy = a[ok], dy[ok]
    f = float(cal["P1"][0, 0])
    cx, cy = float(cal["P1"][0, 2]), float(cal["P1"][1, 2])
    design = np.column_stack((np.ones(len(a)), a[:, 0] - cx, a[:, 1] - cy))
    k = np.linalg.lstsq(design, dy, rcond=None)[0]
    for _ in range(2):                                   # drop the worst mismatches and refit
        res = dy - design @ k
        keep = np.abs(res) < 2.5 * max(np.median(np.abs(res)), 0.3)
        k = np.linalg.lstsq(design[keep], dy[keep], rcond=None)[0]
    # A right camera that points too far down shows the scene too high: rows
    # in the left image are then larger (dy > 0) and the camera must tilt up.
    return dict(pitch=float(np.degrees(k[0] / f)), roll=float(np.degrees(k[1])),
                row_offset=float(k[0]), matches=int(keep.sum()),
                residual=float(np.median(np.abs((dy - design @ k)[keep]))))


def pixels(cal, degrees):
    """Roughly how many pixels a turn of this many degrees moves the image centre."""
    return float(cal["P1"][0, 0]) * np.tan(np.radians(degrees))
