"""The board's own genlock program (board/stereo_cam.py), run from the PC over JTAG.

    python jtag_genlock.py [seconds to hold after locking, default 5]

Tests, before Linux runs on the board, what Linux will do there: it reads the
phase between the two cameras from the PL (EMIO GPIO, see depth_top.v) and
moves the sensors with the same register pulses. Useful also in webcam mode,
where the PC tools' genlock (which reads time stamps from the USB stream)
has nothing to read.
"""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "board"))
import stereo_cam
from pslink import PsLink


class JtagBoard:
    def __init__(self):
        self.ps = PsLink()

    def put(self, cam, reg, val, bank=1):
        self.ps.put(cam, reg, val, bank)

    def phase_raw(self):
        while True:
            a = int(self.ps.cmd("reg_r 0xE000A06C"), 0)
            b = int(self.ps.cmd("reg_r 0xE000A06C"), 0)
            if a == b:
                return a >> 24, a & 0xFFFFFF


def main():
    stereo_cam.HERE = os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "board")
    stereo_cam.load_conf()
    b = JtagBoard()
    try:
        period = int(round((int(stereo_cam.CONF["FRAME_LINES"]) + int(stereo_cam.CONF["EXTRA_LINES"])) * float(stereo_cam.CONF["LINE_US"])))
        print("fase sebelum:", stereo_cam.median_phase(b, period), "us; target", stereo_cam.CONF["GENLOCK_LEAD_US"])
        e = stereo_cam.genlock(b, hold=float(sys.argv[1]) if len(sys.argv) > 1 else 5.0)
        print("fase sesudah:", stereo_cam.median_phase(b, period), "us; selisih terakhir dari target", e, "us")
    finally:
        b.ps.close()
    return 0


if __name__ == "__main__":
    sys.exit(main())
