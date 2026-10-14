"""Live 3D view of the matcher mini in RViz (ROS 2 inside WSL).

    python mini_rviz.py            starts RViz in WSL as well
    python mini_rviz.py --no-rviz  RViz and the bridge node are running already

Windows has the USB link to the board, ROS runs in WSL. This program takes
the pictures and the FPGA's disparity from the board, turns them into
coloured 3D points and sends them over TCP (localhost:5600) to
host/ros/mini_ros_node.py, which publishes /stereo/points, /stereo/left and
/stereo/depth_color. Stop with Ctrl+C or by closing RViz.
"""
import os
import socket
import struct
import subprocess
import sys
import time

os.environ["CAM_BUILD"] = "build/mini"
os.environ["STEREO_PROFILE"] = "mini"
os.environ["CAM_GOLDEN"] = "build/golden_minisys"
if "--standalone" in sys.argv:        # the board booted from its SD card: no JTAG
    os.environ["CAM_STANDALONE"] = "1"

import numpy as np

from pslink import ROOT
from source import LiveSource
from stereo import calibrate, reconstruct, rectify, stream
from stereo import params as P

PORT = 5600
DISTRO = "Ubuntu-24.04"


def wsl_path(path):
    drive, rest = os.path.splitdrive(os.path.abspath(path))
    return "/mnt/" + drive[0].lower() + rest.replace("\\", "/")


def connect(timeout=40.0):
    t_end = time.time() + timeout
    while time.time() < t_end:
        try:
            return socket.create_connection(("127.0.0.1", PORT), timeout=2.0)
        except OSError:
            time.sleep(0.5)
    raise SystemExit("node ROS di WSL tidak menjawab di port 5600 (jalankan host/ros/start_rviz.sh di WSL)")


def main():
    rviz = None
    if "--no-rviz" not in sys.argv:
        script = wsl_path(os.path.join(ROOT, "host", "ros", "start_rviz.sh"))
        rviz = subprocess.Popen(["wsl", "-d", DISTRO, "--", "bash", script], cwd=ROOT)
        print("membuka RViz di WSL...")
    cal = calibrate.load(os.path.join(ROOT, "calib", P.CALIB))
    f, base = float(cal["P1"][0, 0]), float(np.linalg.norm(cal["T"]))
    cx, cy = float(cal["P1"][0, 2]), float(cal["P1"][1, 2])
    table = reconstruct.depth_table(f, base)
    okl = stream.left_mask(cal)
    near, far = int(f * base / (P.D_MIN + P.DISPARITIES - 1)), int(f * base / P.D_MIN)
    conn = connect()
    conn.settimeout(5.0)
    print("terhubung ke node ROS; mengirim titik 3D")
    n, t_last = 0, time.time()
    try:
        with LiveSource(mode="depth", log=lambda m: print("  " + m)) as src:
            for pair in src.pairs(timeout=120.0):
                if rviz is not None and rviz.poll() is not None:
                    break                                    # RViz was closed
                depth = reconstruct.depth_mm(stream.finished(pair.disp, okl), table)
                small = np.dstack([stream.bin2(pair.left[:, :, c]) for c in range(3)])
                left = rectify.rectify_ref(small, *cal["maps"][0])
                xyz = reconstruct.points(depth, f, cx, cy)          # mm; x right, y down, z forward
                m = depth > 0
                p, c = xyz[m].astype(np.float32) / 1000.0, left[m].astype(np.uint32)
                cloud = np.empty(len(p), dtype=[("x", "<f4"), ("y", "<f4"), ("z", "<f4"), ("rgb", "<u4")])
                cloud["x"], cloud["y"], cloud["z"] = p[:, 2], -p[:, 0], -p[:, 1]     # ROS: x forward, y left, z up
                cloud["rgb"] = (c[:, 0] << 16) | (c[:, 1] << 8) | c[:, 2]
                colour = reconstruct.colorize_depth(depth, near, far)
                try:
                    conn.sendall(struct.pack("<4sIHH", b"STM1", len(p), P.WIDTH, P.HEIGHT) + cloud.tobytes()
                                 + np.ascontiguousarray(left).tobytes() + np.ascontiguousarray(colour).tobytes())
                except OSError:
                    print("node ROS berhenti")
                    break
                n += 1
                if time.time() - t_last >= 5.0:
                    print(f"  {n / (time.time() - t_last):.1f} frame/dtk, {len(p)} titik")
                    n, t_last = 0, time.time()
    except KeyboardInterrupt:
        pass
    finally:
        conn.close()
    return 0


if __name__ == "__main__":
    sys.exit(main())
