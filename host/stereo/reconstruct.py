"""From disparity to distance and 3D points, the way the FPGA can do it.

  Z = f * B / d      one table lookup: 2048 entries (disparity in 1/16 px),
                     16-bit millimetres, 32 kbit of block RAM
  X = (x - cx) * Z / f,  Y = (y - cy) * Z / f
                     one multiply by the pixel offset and one by the constant
                     1/f in fixed point; no divider anywhere

cv2.reprojectImageTo3D with the calibration's Q matrix is the reference.

    python -m stereo.reconstruct data/scene_1 1

writes, next to the recording: depth_0001.png (distance as colour),
cloud_0001.ply (coloured point cloud, opens in MeshLab, CloudCompare or the
Windows 3D Viewer) and cloud_0001_top.png (the cloud seen from above).
"""
import os
import sys

import cv2
import numpy as np

from . import params as P

INV_F_BITS = 20          # 1/f as an unsigned fixed-point constant
Z_MAX_MM = 65535


def depth_table(f_px, baseline_mm):
    """Z in mm for every disparity code; code 0 (invalid) maps to 0.

    Indexed by the disparity itself here. The FPGA table only needs the
    window's DISPARITIES * 16 entries, addressed with D_MIN * 16 subtracted.
    """
    d16 = np.arange((P.D_MIN + P.DISPARITIES) << P.SUBPIXEL_BITS, dtype=np.float64)
    z = np.zeros_like(d16)
    z[1:] = f_px * baseline_mm * (1 << P.SUBPIXEL_BITS) / d16[1:]
    return np.clip(np.round(z), 0, Z_MAX_MM).astype(np.uint16)


def depth_mm(disp, table):
    """Distance per pixel in mm (uint16, 0 = no measurement)."""
    return table[np.minimum(disp, len(table) - 1)]


def points(depth, f_px, cx, cy):
    """X, Y, Z in mm per pixel (int32); X to the right, Y down, Z forward."""
    h, w = depth.shape
    inv_f = int(round((1 << INV_F_BITS) / f_px))
    half = 1 << (INV_F_BITS - 1)
    z = depth.astype(np.int64)
    xo = (np.arange(w, dtype=np.int64) - int(round(cx)))[None, :]
    yo = (np.arange(h, dtype=np.int64) - int(round(cy)))[:, None]
    x = (xo * z * inv_f + half) >> INV_F_BITS
    y = (yo * z * inv_f + half) >> INV_F_BITS
    return np.dstack((x, y, np.broadcast_to(z, (h, w)))).astype(np.int32)


def colorize_depth(depth, near=300, far=2000):
    """Distance as a colour picture: near is warm, far is cool, invalid black."""
    v = np.clip((far - depth.astype(np.float32)) / (far - near) * 255, 0, 255).astype(np.uint8)
    out = cv2.applyColorMap(v, cv2.COLORMAP_TURBO)
    out[depth == 0] = 0
    return cv2.cvtColor(out, cv2.COLOR_BGR2RGB)


def write_ply(path, xyz, rgb, mask):
    """Binary PLY with one coloured vertex per valid pixel; coordinates in metres."""
    n = int(mask.sum())
    v = np.empty(n, dtype=[("x", "<f4"), ("y", "<f4"), ("z", "<f4"),
                           ("r", "u1"), ("g", "u1"), ("b", "u1")])
    p = xyz[mask].astype(np.float32) / 1000.0
    v["x"], v["y"], v["z"] = p[:, 0], -p[:, 1], -p[:, 2]     # y up, looking down -z, as viewers expect
    c = rgb[mask]
    v["r"], v["g"], v["b"] = c[:, 0], c[:, 1], c[:, 2]
    header = ("ply\nformat binary_little_endian 1.0\n"
              f"element vertex {n}\n"
              "property float x\nproperty float y\nproperty float z\n"
              "property uchar red\nproperty uchar green\nproperty uchar blue\nend_header\n")
    with open(path, "wb") as f:
        f.write(header.encode())
        f.write(v.tobytes())
    return n


def top_view(xyz, rgb, mask, span_mm=1500, far_mm=2000, size=600):
    """The cloud seen from above: X across, distance upwards, camera at the bottom centre."""
    img = np.full((size, size, 3), 30, np.uint8)
    p, c = xyz[mask], rgb[mask]
    u = ((p[:, 0] + span_mm / 2) / span_mm * (size - 1)).astype(int)
    v = (size - 1 - p[:, 2] / far_mm * (size - 1)).astype(int)
    ok = (u >= 0) & (u < size) & (v >= 0) & (v < size)
    order = np.argsort(p[ok, 1])[::-1]                   # draw low points first, high ones on top
    img[v[ok][order], u[ok][order]] = c[ok][order]
    for z in range(500, far_mm, 500):                    # range rings every 0.5 m
        y = size - 1 - int(z / far_mm * (size - 1))
        cv2.line(img, (0, y), (size - 1, y), (90, 90, 90), 1)
        cv2.putText(img, f"{z / 1000:.1f} m", (4, y - 3), cv2.FONT_HERSHEY_SIMPLEX, 0.4, (160, 160, 160), 1)
    return img


def main():
    sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), ".."))
    from source import FileSource
    from stereo import calibrate, disparity, laser, rectify
    folder = sys.argv[1]
    want = int(sys.argv[2]) if len(sys.argv) > 2 else 0
    c = calibrate.load()
    f, base = float(c["P1"][0, 0]), float(np.linalg.norm(c["T"]))
    cx, cy = float(c["P1"][0, 2]), float(c["P1"][1, 2])
    pair = next(p for p in FileSource(folder).pairs() if p.index == want)
    left = rectify.rectify_ref(pair.left, *c["maps"][0])
    right = rectify.rectify_ref(pair.right, *c["maps"][1])
    disp = disparity.compute(left, right, disparity.valid_mask(*c["maps"][0]),
                             disparity.valid_mask(*c["maps"][1]))

    table = depth_table(f, base)
    depth = depth_mm(disp, table)
    xyz = points(depth, f, cx, cy)
    mask = (depth > 0) & (depth < 5000)

    # reference: OpenCV's reprojection of the same disparity
    ref = cv2.reprojectImageTo3D(disp.astype(np.float32) / 16, c["Q"].astype(np.float32))
    ref = ref * np.sign(np.median(ref[mask][:, 2]))      # sign convention of Q
    err = np.abs(xyz[mask].astype(np.float64) - ref[mask])
    z = depth[mask]
    print(f"f {f:.1f} px, baseline {base:.2f} mm, pusat ({cx:.1f}, {cy:.1f}); tabel jarak {table.size} x 16 bit")
    print(f"titik 3D: {int(mask.sum())} ({100 * mask.mean():.1f}% piksel); jarak 5% / median / 95%: "
          f"{np.percentile(z, 5):.0f} / {np.median(z):.0f} / {np.percentile(z, 95):.0f} mm")
    print(f"gaya-FPGA vs cv2.reprojectImageTo3D: beda median {np.median(err):.2f} mm, "
          f"99% di bawah {np.percentile(err, 99):.1f} mm")

    m = laser.measure(pair.left, pair.right)
    if m is not None:
        pl = calibrate.rectify_points(c, [[m["xl"], m["yl"]]], 0)[0]
        x, y = int(round(pl[0])), int(round(pl[1]))
        patch = depth[max(y - 6, 0):y + 7, max(x - 6, 0):x + 7]
        if (patch > 0).any():
            zc = float(np.median(patch[patch > 0]))
            px = xyz[y, x] if depth[y, x] else None
            print(f"di titik laser: jarak {zc:.0f} mm"
                  + ("" if px is None else f", posisi X {px[0]:+d} Y {px[1]:+d} Z {px[2]} mm")
                  + f"; ToF {'--' if pair.dist_mm is None else f'{pair.dist_mm:.0f} mm'}")

    base_name = os.path.join(folder, "{}_" + f"{want:04d}")
    cv2.imwrite(base_name.format("depth") + ".png",
                cv2.cvtColor(np.hstack((left, colorize_depth(depth))), cv2.COLOR_RGB2BGR))
    n = write_ply(base_name.format("cloud") + ".ply", xyz, left, mask)
    cv2.imwrite(base_name.format("cloud") + "_top.png",
                cv2.cvtColor(top_view(xyz, left, mask), cv2.COLOR_RGB2BGR))
    print(f"ditulis: {base_name.format('depth')}.png, {base_name.format('cloud')}.ply ({n} titik), "
          f"{base_name.format('cloud')}_top.png")


if __name__ == "__main__":
    main()
