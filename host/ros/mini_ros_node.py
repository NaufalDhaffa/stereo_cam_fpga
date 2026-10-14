#!/usr/bin/env python3
"""ROS 2 side of the live 3D view: runs inside WSL (ROS 2 Jazzy).

Listens on TCP port 5600 for the frames host/mini_rviz.py sends from Windows
(where the USB link to the board is) and publishes them:

    /stereo/points        sensor_msgs/PointCloud2   coloured points, metres, frame "camera"
    /stereo/left          sensor_msgs/Image         left picture as the logic sees it
    /stereo/depth_color   sensor_msgs/Image         distance as colours

Frame "camera" follows the ROS convention: x forward, y to the left, z up.
"""
import socket
import struct
import threading

import numpy as np
import rclpy
from rclpy.node import Node
from sensor_msgs.msg import Image, PointCloud2, PointField

PORT = 5600
MAGIC = b"STM1"


def read_exact(conn, n):
    buf = bytearray()
    while len(buf) < n:
        part = conn.recv(n - len(buf))
        if not part:
            raise ConnectionError("sender closed")
        buf += part
    return bytes(buf)


class Bridge(Node):
    def __init__(self):
        super().__init__("stereo_mini_bridge")
        self.pub_points = self.create_publisher(PointCloud2, "/stereo/points", 5)
        self.pub_left = self.create_publisher(Image, "/stereo/left", 5)
        self.pub_depth = self.create_publisher(Image, "/stereo/depth_color", 5)
        self.fields = [PointField(name=n, offset=o, datatype=PointField.FLOAT32, count=1)
                       for n, o in (("x", 0), ("y", 4), ("z", 8), ("rgb", 12))]
        threading.Thread(target=self.serve, daemon=True).start()

    def image(self, data, w, h, stamp):
        m = Image()
        m.header.stamp, m.header.frame_id = stamp, "camera"
        m.width, m.height, m.encoding, m.step, m.is_bigendian = w, h, "rgb8", 3 * w, 0
        m.data = data
        return m

    def serve(self):
        srv = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        srv.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
        srv.bind(("0.0.0.0", PORT))
        srv.listen(1)
        self.get_logger().info(f"waiting for host/mini_rviz.py on port {PORT}")
        while rclpy.ok():
            conn, addr = srv.accept()
            self.get_logger().info(f"sender connected from {addr[0]}")
            n_frames = 0
            try:
                while rclpy.ok():
                    magic, n, w, h = struct.unpack("<4sIHH", read_exact(conn, 12))
                    if magic != MAGIC:
                        raise ConnectionError("bad frame")
                    cloud = read_exact(conn, 16 * n)
                    left = read_exact(conn, 3 * w * h)
                    depth = read_exact(conn, 3 * w * h)
                    stamp = self.get_clock().now().to_msg()
                    m = PointCloud2()
                    m.header.stamp, m.header.frame_id = stamp, "camera"
                    m.height, m.width = 1, n
                    m.fields, m.is_bigendian, m.point_step, m.row_step, m.is_dense = self.fields, False, 16, 16 * n, True
                    m.data = cloud
                    self.pub_points.publish(m)
                    self.pub_left.publish(self.image(left, w, h, stamp))
                    self.pub_depth.publish(self.image(depth, w, h, stamp))
                    n_frames += 1
                    if n_frames % 60 == 1:
                        self.get_logger().info(f"frame {n_frames}: {n} points")
            except (ConnectionError, OSError) as e:
                self.get_logger().info(f"sender gone ({e}); waiting again")
            finally:
                conn.close()


def main():
    rclpy.init()
    node = Bridge()
    try:
        rclpy.spin(node)
    except KeyboardInterrupt:
        pass


if __name__ == "__main__":
    main()
