#!/usr/bin/env python3
"""Runs on the board (Linux on the Zynq PS): what the PC did over JTAG so far.

    stereo_cam.py            configure both sensors, then keep them in step (genlock) for good
    stereo_cam.py init       configure the sensors and stop
    stereo_cam.py status     sensor ids and the phase between the cameras
    stereo_cam.py fclk1 25   set the processing clock (MHz) before another bitstream is loaded

A port of scripts/cam.tcl and host/genlock.py. The sensors' SCCB goes through
the PS I2C controllers, driven register by register through /dev/mem exactly
as cam.tcl does it (the Linux I2C driver is switched off in the device tree):
the bus only has weak pull-ups, so it runs at 50 kHz and every access is
retried. The phase between the two cameras comes from the PL through EMIO
GPIO (see depth_top.v). Only the Python standard library is used.

Settings come from stereo.conf next to this file (KEY=value lines).
"""
import mmap
import os
import re
import struct
import sys
import time

HERE = os.path.dirname(os.path.abspath(__file__))
CONF = dict(SIZE="cif", FORMAT="rgb565", CLKRC="0x83", DVP="0x82", VFLIP="1", HMIRROR="1",
            LINE_US="198.4", PIXEL_US="112", FRAME_LINES="336", EXTRA_LINES="0",
            GENLOCK_LEAD_US="4365", DEPTH_STREAM="1", UVC="1")
SIZES = {"uxga": (1600, 1200), "svga": (800, 600), "cif": (400, 296)}
OV2640 = 0x30
I2C_DIV = (3 << 14) | (24 << 8)         # 111.1 MHz / (22 * 4 * 25) = 50.5 kHz


def load_conf():
    path = os.path.join(HERE, "stereo.conf")
    if os.path.exists(path):
        for line in open(path):
            line = line.split("#")[0].strip()
            if "=" in line:
                k, v = line.split("=", 1)
                CONF[k.strip()] = v.strip()


class Mem:
    """A page of physical memory, read and written one 32-bit word at a time. (struct's "<I"
    goes byte by byte: four accesses to a FIFO register push or pop four entries.)"""

    def __init__(self, fd, base):
        self.m = mmap.mmap(fd, 0x1000, mmap.MAP_SHARED, mmap.PROT_READ | mmap.PROT_WRITE, offset=base)
        self.v = memoryview(self.m).cast("I")

    def r(self, off):
        return self.v[off >> 2]

    def w(self, off, val):
        self.v[off >> 2] = val & 0xFFFFFFFF


class Board:
    def __init__(self):
        fd = os.open("/dev/mem", os.O_RDWR | os.O_SYNC)
        self.gpio = Mem(fd, 0xE000A000)
        self.i2c = [Mem(fd, 0xE0004000), Mem(fd, 0xE0005000)]
        self.slcr = Mem(fd, 0xF8000000)
        self.cam = 0
        # the I2C controllers' clocks may be gated when no Linux driver uses them
        self.slcr.w(0x008, 0xDF0D)
        self.slcr.w(0x12C, self.slcr.r(0x12C) | (1 << 18) | (1 << 19) | (1 << 22))    # I2C0, I2C1, GPIO
        # Linux stops the PL clocks nobody claims in the device tree (fclk-enable): FCLK0, FCLK1 on again
        self.slcr.w(0x178, 0)
        self.slcr.w(0x188, 0)

    # ---- EMIO GPIO: bank 2 = outputs to the PL, bank 3 = status from the PL ----
    def gpio_setup(self):
        self.gpio.w(0x284, 0xFFFFFF)        # DIRM_2
        self.gpio.w(0x288, 0xFFFFFF)        # OEN_2

    def capture_enable(self, on):
        self.gpio_setup()
        self.gpio.w(0x048, (self.gpio.r(0x048) & 0xFFFFF8) | (int(on) << 1))

    def depth_stream(self, on):
        self.gpio.w(0x048, (self.gpio.r(0x048) & 0xEFFFFF) | ((int(on) & 1) << 20))

    def uvc(self, on):
        """Webcam mode: the FX2LP gets video payloads instead of the PC tools' three streams."""
        self.gpio.w(0x048, (self.gpio.r(0x048) & 0xDFFFFF) | ((int(on) & 1) << 21))

    def phase_raw(self):
        """(frame counter of camera 1, start of its frame minus camera 0's, microseconds mod 2^24)."""
        while True:
            a, b = self.gpio.r(0x06C), self.gpio.r(0x06C)
            if a == b:
                return a >> 24, a & 0xFFFFFF

    # ---- SCCB --------------------------------------------------------------------
    def i2c_reset(self):
        self.slcr.w(0x008, 0xDF0D)
        self.slcr.w(0x224, 1 << self.cam)
        self.slcr.w(0x224, 0)

    def _wait(self, what):
        c = self.i2c[self.cam]
        t_end = time.time() + 0.05
        while True:
            isr = c.r(0x10)
            if isr & 0x204:
                c.w(0x10, 0x2FF)
                raise IOError(f"SCCB {what}: no acknowledge (ISR=0x{isr:03X})")
            if isr & 0x001:
                # complete is flagged before the stop condition is over: the next transfer
                # must not start while the bus is still active (Linux is fast enough to do that)
                while c.r(0x04) & 0x100 and time.time() < t_end:
                    pass
                return
            if time.time() > t_end:
                raise IOError(f"SCCB {what}: timeout (ISR=0x{isr:03X})")

    def _retry(self, fn, *args):
        err = None
        for _ in range(5):
            try:
                return fn(*args)
            except IOError as e:
                err = e
                self.i2c_reset()
                time.sleep(0.005)
        raise err

    def _w_once(self, addr, reg, *data):
        c = self.i2c[self.cam]
        c.w(0x00, I2C_DIV | 0x4E)           # master, transmit, ack, clear FIFO
        c.w(0x10, 0x2FF)
        c.w(0x0C, reg)
        for b in data:
            c.w(0x0C, b)
        c.w(0x08, addr)
        self._wait(f"write 0x{reg:02X}")

    def _r_once(self, addr, reg, n):
        c = self.i2c[self.cam]
        c.w(0x00, I2C_DIV | 0x4E)
        c.w(0x10, 0x2FF)
        c.w(0x0C, reg)
        c.w(0x08, addr)
        self._wait(f"address 0x{reg:02X}")
        c.w(0x00, I2C_DIV | 0x4F)           # master, receive
        c.w(0x10, 0x2FF)
        c.w(0x14, n)
        c.w(0x08, addr)
        self._wait(f"read 0x{reg:02X}")
        return [c.r(0x0C) & 0xFF for _ in range(n)]

    def sccb_w(self, reg, val):
        self._retry(self._w_once, OV2640, reg, val)

    def sccb_r(self, reg):
        return self._retry(self._r_once, OV2640, reg, 1)[0]

    def put(self, cam, reg, val, bank=1):
        self.cam = cam
        self.sccb_w(0xFF, bank)
        self.sccb_w(reg, val)

    def table(self, t):
        for reg, val in t:
            self.sccb_w(reg, val)

    # ---- sensors --------------------------------------------------------------------
    def detect(self):
        self.sccb_w(0xFF, 0x01)
        pid, ver = self.sccb_r(0x0A), self.sccb_r(0x0B)
        print(f"sensor {self.cam}: PID=0x{pid:02X} VER=0x{ver:02X} " + ("(OV2640)" if pid == 0x26 else "(NOT an OV2640 id)"))
        return pid

    def mode(self, tables):
        """The sequence of cam.tcl's cam_mode: reset, base table, frame size, pixel format."""
        mx, my = SIZES[CONF["SIZE"]]
        qx, qy = mx // 4, my // 4
        self.sccb_w(0xFF, 0x01)
        self.sccb_w(0x12, 0x80)             # COM7: software reset
        time.sleep(0.05)
        self.table(tables["ov2640_settings_cif"])
        self.sccb_w(0xFF, 0x01)
        self.sccb_w(0x09, 0x00)             # COM2: 1x output drive (the 3x of the table rings on jumper wires)
        self.sccb_w(0xFF, 0x00)
        self.sccb_w(0x05, 0x01)             # R_BYPASS: DSP bypassed while changing
        self.table(tables["ov2640_settings_to_" + CONF["SIZE"]])
        self.sccb_w(0xFF, 0x00)
        for reg, val in ((0x51, qx & 0xFF), (0x52, qy & 0xFF), (0x53, 0x00), (0x54, 0x00),
                         (0x55, ((qy >> 1) & 0x80) | ((qx >> 5) & 0x08)), (0x57, (qx >> 2) & 0x80),
                         (0x5A, qx & 0xFF), (0x5B, qy & 0xFF), (0x5C, ((qy >> 6) & 0x04) | ((qx >> 8) & 0x03))):
            self.sccb_w(reg, val)
        self.sccb_w(0xFF, 0x01)
        self.sccb_w(0x11, int(CONF["CLKRC"], 0))
        self.sccb_w(0xFF, 0x00)
        self.sccb_w(0xD3, int(CONF["DVP"], 0))      # R_DVP_SP: PCLK divider
        self.sccb_w(0x05, 0x00)                     # R_BYPASS: DSP on
        time.sleep(0.02)
        self.table(tables["ov2640_settings_" + CONF["FORMAT"]])
        self.sccb_w(0xFF, 0x01)
        self.sccb_w(0x04, 0x28 | (0x50 if int(CONF["VFLIP"]) else 0) | (0x80 if int(CONF["HMIRROR"]) else 0))
        print(f"sensor {self.cam} configured: {CONF['SIZE']} {CONF['FORMAT']} ({mx}x{my}) CLKRC={CONF['CLKRC']} R_DVP_SP={CONF['DVP']}")

    def setup(self, tables):
        """Both sensors configured with the capture logic held in reset meanwhile."""
        self.capture_enable(0)
        time.sleep(0.02)
        found = 0
        for n in (0, 1):
            self.cam = n
            try:
                self.detect()
                try:
                    self.mode(tables)
                except IOError:
                    self.mode(tables)       # one retry of the whole sequence
                found += 1
            except IOError as e:
                print(f"sensor {n}: not responding ({e})")
        time.sleep(0.3)
        self.capture_enable(1)
        self.depth_stream(int(CONF["DEPTH_STREAM"]))
        self.uvc(int(CONF["UVC"]))
        print(f"cameras ready: {found}")
        return found

    def fclk1(self, mhz):
        """Processing clock from the 1000 MHz IO PLL: two dividers of 1 .. 63."""
        want = 1000.0 / mhz
        d0, d1 = min(((a, b) for a in range(1, 64) for b in range(1, 64)), key=lambda p: (abs(p[0] * p[1] - want), p[1]))
        self.slcr.w(0x008, 0xDF0D)
        self.slcr.w(0x180, (self.slcr.r(0x180) & ~0x03F03F00) | (d1 << 20) | (d0 << 8))
        print(f"FCLK1 = {1000.0 / (d0 * d1):.3f} MHz")


def read_tables(path):
    """The register tables of sensor/ov2640_tables.tcl: {name: [(reg, value), ...]}."""
    out = {}
    for name, body in re.findall(r"set\s+(\w+)\s*\{([^}]*)\}", open(path).read()):
        v = [int(x, 0) for x in body.split()]
        out[name] = list(zip(v[0::2], v[1::2]))
    return out


def phase_us(b, period):
    """Camera 1's frame start minus camera 0's, wrapped to half a frame either way; None if no new frame came."""
    seq0, _ = b.phase_raw()
    t_end = time.time() + 3 * period / 1e6 + 0.2
    while time.time() < t_end:
        seq, d = b.phase_raw()
        if seq != seq0:
            return ((d + period // 2) % period) - period // 2
        time.sleep(0.002)
    return None


def median_phase(b, period, n=5):
    v = [p for p in (phase_us(b, period) for _ in range(n)) if p is not None]
    return sorted(v)[len(v) // 2] if len(v) >= 3 else None


def genlock(b, hold=None, restart=None):
    """Pull camera 1 onto camera 0 (plus the lead the depth build wants) and hold it there:
    host/genlock.py's lock(), with the phase taken from the PL instead of the USB stream."""
    line, pixel = float(CONF["LINE_US"]), float(CONF["PIXEL_US"])
    e = None
    extra = int(CONF["EXTRA_LINES"])
    period = int(round((int(CONF["FRAME_LINES"]) + extra) * line))
    frame_s = period / 1e6
    target = int(CONF["GENLOCK_LEAD_US"])

    def pulse(cam, reg, val, hold):
        base = extra if reg == 0x46 else 0
        b.put(cam, reg, base + val)
        time.sleep(hold)
        b.put(cam, reg, base)
        time.sleep(4 * frame_s)

    for cam in (0, 1):
        for reg in (0x46, 0x47, 0x2D, 0x2B):
            b.put(cam, reg, extra if reg == 0x46 else 0)
    locked, t_report, t_locked, started_clean = False, 0, None, False
    while True:
        if hold is not None and t_locked is not None and time.time() - t_locked > hold:
            return e                                # asked to hold the lock for a while only (tests)
        e = median_phase(b, period)
        if e is None:
            print("genlock: no frames from the cameras")
            time.sleep(1.0)
            continue
        e -= target
        cam, mag = (0 if e > 0 else 1), abs(e)
        try:
            if mag > 3000:
                pulse(cam, 0x46, max(1, min(255 - extra, int(mag / line / 6))), 6 * frame_s)
            elif mag > 250:
                pulse(cam, 0x46, 1, max(1, min(30, round(mag / line) - 1)) * frame_s)
            elif mag > 70:
                pulse(cam, 0x2B, 1, 0.5 * frame_s)
            else:
                time.sleep(0.3)
        except IOError as err:
            print("genlock:", err)
            time.sleep(0.5)
        if not locked and mag <= 100:
            locked = True
            t_locked = time.time()
            if not started_clean and restart is not None:
                restart()                       # see main(): the pipeline starts again on locked cameras
                started_clean = True
            print(f"genlock: locked ({e:+d} us from the target of {target} us)", flush=True)
        if locked and mag > 2000:
            locked = False
            print(f"genlock: lost ({e:+d} us)", flush=True)
        if time.time() - t_report > 60:
            t_report = time.time()
            print(f"genlock: phase {e:+d} us from target", flush=True)


def main():
    load_conf()
    cmd = sys.argv[1] if len(sys.argv) > 1 else "run"
    b = Board()
    if cmd == "fclk1":
        b.fclk1(float(sys.argv[2]))
        return 0
    if cmd == "status":
        for n in (0, 1):
            b.cam = n
            try:
                b.detect()
            except IOError as e:
                print(f"sensor {n}: not responding ({e})")
        period = int(round((int(CONF["FRAME_LINES"]) + int(CONF["EXTRA_LINES"])) * float(CONF["LINE_US"])))
        print("phase (camera 1 minus camera 0):", median_phase(b, period), "us; wanted", CONF["GENLOCK_LEAD_US"])
        return 0
    tables = read_tables(os.path.join(HERE, "ov2640_tables.tcl"))
    found = b.setup(tables)
    if cmd == "init" or found < 2:
        return 0 if found == 2 else 1
    def restart():
        # After the first enable following a bitstream load the stream to the FX2LP has been seen
        # to stay silent until the capture logic was reset once more (cause not found yet); doing
        # that once the cameras are in step costs a few frames and makes the start reliable.
        b.capture_enable(0)
        time.sleep(0.2)
        b.capture_enable(1)
        print("stream restarted on locked cameras", flush=True)

    genlock(b, restart=restart)
    return 0


if __name__ == "__main__":
    sys.exit(main())
