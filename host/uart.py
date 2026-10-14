"""Talk to the board's serial console (115200 8N1).

    python uart.py [--port COM3] [--wait seconds] [command ...]

Without a command: listens and prints what arrives. With commands: sends each
one, a line at a time, and prints the answers. Logs in as root when a login prompt shows.
"""
import argparse
import sys
import time

import serial


def read(s, seconds, until=None):
    t0, buf = time.time(), b""
    while time.time() - t0 < seconds:
        d = s.read(4096)
        buf += d
        if until and until in buf[-200:] and not d:
            break
    return buf


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--port", default="COM3")
    ap.add_argument("--wait", type=float, default=3.0)
    ap.add_argument("cmd", nargs="*")
    a = ap.parse_args()
    s = serial.Serial(a.port, 115200, timeout=0.2)
    out = read(s, 0.5)
    s.write(b"\r")
    out += read(s, a.wait if not a.cmd else 1.5)
    if b"login:" in out[-80:]:
        s.write(b"root\r")
        out += read(s, 2.0)
    for c in a.cmd:
        s.write(c.encode() + b"\r")
        out += read(s, a.wait, b"# ")
    s.close()
    sys.stdout.write(out.decode("utf-8", "replace").replace("\r", ""))
    return 0


if __name__ == "__main__":
    sys.exit(main())
