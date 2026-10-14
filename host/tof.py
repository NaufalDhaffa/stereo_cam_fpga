"""VL53L0X time-of-flight sensor, read through the Zynq PS.

The sensor sits between the two cameras and shares the I2C bus of camera 0
(address 0x29, the camera answers at 0x30). The initialisation is the
standard VL53L0X sequence (reference SPADs, tuning table, reference
calibration); ranging then runs back to back and each reading is a status
poll plus a two-byte read.

    python tof.py            print the distance until interrupted
    python tof.py 20         print 20 readings
"""
import sys
import time

from pslink import PsLink

ADDR = 0x29
BUS = 0
OUT_OF_RANGE = 8190          # the sensor reports 8190/8191 when it sees nothing

# Default tuning settings of the VL53L0X (register, value), from the ST API.
TUNING = [
    0xFF, 0x01, 0x00, 0x00, 0xFF, 0x00, 0x09, 0x00, 0x10, 0x00, 0x11, 0x00,
    0x24, 0x01, 0x25, 0xFF, 0x75, 0x00, 0xFF, 0x01, 0x4E, 0x2C, 0x48, 0x00,
    0x30, 0x20, 0xFF, 0x00, 0x30, 0x09, 0x54, 0x00, 0x31, 0x04, 0x32, 0x03,
    0x40, 0x83, 0x46, 0x25, 0x60, 0x00, 0x27, 0x00, 0x50, 0x06, 0x51, 0x00,
    0x52, 0x96, 0x56, 0x08, 0x57, 0x30, 0x61, 0x00, 0x62, 0x00, 0x64, 0x00,
    0x65, 0x00, 0x66, 0xA0, 0xFF, 0x01, 0x22, 0x32, 0x47, 0x14, 0x49, 0xFF,
    0x4A, 0x00, 0xFF, 0x00, 0x7A, 0x0A, 0x7B, 0x00, 0x78, 0x21, 0xFF, 0x01,
    0x23, 0x34, 0x42, 0x00, 0x44, 0xFF, 0x45, 0x26, 0x46, 0x05, 0x40, 0x40,
    0x0E, 0x06, 0x20, 0x1A, 0x43, 0x40, 0xFF, 0x00, 0x34, 0x03, 0x35, 0x44,
    0xFF, 0x01, 0x31, 0x04, 0x4B, 0x09, 0x4C, 0x05, 0x4D, 0x04, 0xFF, 0x00,
    0x44, 0x00, 0x45, 0x20, 0x47, 0x08, 0x48, 0x28, 0x67, 0x00, 0x70, 0x04,
    0x71, 0x01, 0x72, 0xFE, 0x76, 0x00, 0x77, 0x00, 0xFF, 0x01, 0x0D, 0x01,
    0xFF, 0x00, 0x80, 0x01, 0x01, 0xF8, 0xFF, 0x01, 0x8E, 0x01, 0x00, 0x01,
    0xFF, 0x00, 0x80, 0x00,
]


class Tof:
    def __init__(self, ps, bus=BUS, addr=ADDR):
        self.ps, self.bus, self.addr = ps, bus, addr
        self.stop_variable = 0

    def wr(self, reg, *data):
        self.ps.iw(self.bus, self.addr, reg, *data)

    def rd(self, reg, n=1):
        data = self.ps.ir(self.bus, self.addr, reg, n)
        return data[0] if n == 1 else data

    def model_id(self):
        return self.rd(0xC0)

    def _wait(self, reg, mask, timeout=1.0):
        t_end = time.time() + timeout
        while not self.rd(reg) & mask:
            if time.time() > t_end:
                raise RuntimeError(f"VL53L0X: timeout waiting on register 0x{reg:02X}")

    def _ref_calibration(self, vhv_init):
        self.wr(0x00, 0x01 | vhv_init)
        self._wait(0x13, 0x07)
        self.wr(0x0B, 0x01)
        self.wr(0x00, 0x00)

    def init(self):
        mid = self.model_id()
        if mid != 0xEE:
            raise RuntimeError(f"VL53L0X not found: model id 0x{mid:02X} (expected 0xEE)")
        # Soft reset first: the sensor keeps its state between our sessions
        # (it is only power cycled with the board), and the sequence below
        # assumes power-on defaults.
        self.wr(0xBF, 0x00)
        time.sleep(0.05)
        self.wr(0xBF, 0x01)
        t_end = time.time() + 1.0
        while self.model_id() != 0xEE:
            if time.time() > t_end:
                raise RuntimeError("VL53L0X did not come back from reset")
        time.sleep(0.05)
        self.wr(0x89, self.rd(0x89) | 0x01)           # 2.8 V I/O mode
        self.wr(0x88, 0x00)
        self.wr(0x80, 0x01); self.wr(0xFF, 0x01); self.wr(0x00, 0x00)
        self.stop_variable = self.rd(0x91)
        self.wr(0x00, 0x01); self.wr(0xFF, 0x00); self.wr(0x80, 0x00)
        self.wr(0x60, self.rd(0x60) | 0x12)           # no MSRC / pre-range signal limit
        self.wr(0x44, 0x00, 0x20)                     # signal rate limit 0.25 MCPS
        self.wr(0x01, 0xFF)

        # reference SPAD count and type, from the factory NVM
        self.wr(0x80, 0x01); self.wr(0xFF, 0x01); self.wr(0x00, 0x00)
        self.wr(0xFF, 0x06); self.wr(0x83, self.rd(0x83) | 0x04)
        self.wr(0xFF, 0x07); self.wr(0x81, 0x01)
        self.wr(0x80, 0x01)
        self.wr(0x94, 0x6B); self.wr(0x83, 0x00)
        self._wait(0x83, 0xFF)
        self.wr(0x83, 0x01)
        tmp = self.rd(0x92)
        spad_count, aperture = tmp & 0x7F, bool(tmp & 0x80)
        self.wr(0x81, 0x00); self.wr(0xFF, 0x06)
        self.wr(0x83, self.rd(0x83) & ~0x04 & 0xFF)
        self.wr(0xFF, 0x01); self.wr(0x00, 0x01)
        self.wr(0xFF, 0x00); self.wr(0x80, 0x00)

        spad_map = self.rd(0xB0, 6)
        self.wr(0xFF, 0x01); self.wr(0x4F, 0x00); self.wr(0x4E, 0x2C)
        self.wr(0xFF, 0x00); self.wr(0xB6, 0xB4)
        first, enabled = (12 if aperture else 0), 0
        for i in range(48):
            bit = 1 << (i % 8)
            if i < first or enabled == spad_count:
                spad_map[i // 8] &= ~bit & 0xFF
            elif spad_map[i // 8] & bit:
                enabled += 1
        self.wr(0xB0, *spad_map)

        for reg, val in zip(TUNING[0::2], TUNING[1::2]):
            self.wr(reg, val)

        self.wr(0x0A, 0x04)                           # interrupt on new sample
        self.wr(0x84, self.rd(0x84) & ~0x10 & 0xFF)
        self.wr(0x0B, 0x01)
        self.wr(0x01, 0x01); self._ref_calibration(0x40)
        self.wr(0x01, 0x02); self._ref_calibration(0x00)
        self.wr(0x01, 0xE8)

    def start(self):
        """Back-to-back continuous ranging."""
        self.wr(0x80, 0x01); self.wr(0xFF, 0x01); self.wr(0x00, 0x00)
        self.wr(0x91, self.stop_variable)
        self.wr(0x00, 0x01); self.wr(0xFF, 0x00); self.wr(0x80, 0x00)
        self.wr(0x00, 0x02)

    def stop(self):
        """Stop ranging. The infrared emitter is visible to the cameras, so it
        must be off whenever images are taken for calibration or matching."""
        self.wr(0x00, 0x01)
        self.wr(0xFF, 0x01); self.wr(0x00, 0x00); self.wr(0x91, 0x00)
        self.wr(0x00, 0x01); self.wr(0xFF, 0x00)
        self.wr(0x0B, 0x01)

    def measure(self, n=8):
        """Range for n readings, stop again, return the median in mm (or None)."""
        self.start()
        try:
            self.read_mm()                            # first one after a start is discarded
            vals = [v for v in (self.read_mm() for _ in range(n)) if v is not None]
        finally:
            self.stop()
        return None if len(vals) < max(1, n // 2) else sorted(vals)[len(vals) // 2]

    def read_mm(self, timeout=1.0):
        """Next reading in millimetres, or None when nothing is in range."""
        self._wait(0x13, 0x07, timeout)
        hi, lo = self.rd(0x1E, 2)
        self.wr(0x0B, 0x01)
        mm = (hi << 8) | lo
        return None if mm >= OUT_OF_RANGE else mm


def main():
    count = int(sys.argv[1]) if len(sys.argv) > 1 else None
    ps = PsLink()
    try:
        tof = Tof(ps)
        print(f"model id 0x{tof.model_id():02X}")
        t0 = time.time()
        tof.init()
        print(f"initialised in {time.time() - t0:.1f} s")
        tof.start()
        n, t0 = 0, time.time()
        while count is None or n < count:
            mm = tof.read_mm()
            n += 1
            print(f"{n:4d}  {'out of range' if mm is None else f'{mm} mm'}"
                  f"   ({n / (time.time() - t0):.1f} readings/s)")
    finally:
        try:
            tof.stop()                                # leave the emitter off
        except Exception:
            pass
        ps.close()


if __name__ == "__main__":
    main()
