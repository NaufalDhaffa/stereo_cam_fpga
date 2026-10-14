"""Frame synchronisation of the two free-running OV2640 modules.

Neither module takes an external clock, so the two sensors drift against
each other. The FPGA stamps the start of every frame with a shared
microsecond counter; this module turns those stamps into a phase and adjusts
sensor timing registers through the Zynq PS until both VSYNCs coincide, then
keeps them there.

    python genlock.py probe [seconds]        measure frame periods and phase
    python genlock.py poke <cam> <reg> <val> [seconds]
                                             write a sensor-bank register and
                                             show what it does to the period
    python genlock.py lock [seconds]         run the control loop

Phase is "camera 1 start minus camera 0 start", wrapped to half a frame:
positive means camera 1 (right) starts later than camera 0 (left).
"""
import sys
import threading
import time
from collections import deque

from camlink import CamLink
from fx2_stream import Fx2, build_firmware
from pslink import PsLink

LINE_US = 99.2          # one extra line per frame (register 0x46, FLL)
PIXEL_US = 56.0         # one extra dummy pixel per line (register 0x2B, EXHCL)
FRAME_S = 0.0666
EXTRA_LINES = 0         # lines added to every frame for good: sets the frame rate below the mode's own


class PhaseMeter:
    """Recent frame start times of both cameras and what follows from them."""

    def __init__(self):
        self.starts = {0: deque(maxlen=64), 1: deque(maxlen=64)}
        self.lock = threading.Lock()
        self.error = None

    def add(self, cam, start_us):
        with self.lock:
            self.starts[cam].append(start_us)

    def clear(self):
        with self.lock:
            self.starts[0].clear()
            self.starts[1].clear()

    def snapshot(self):
        """(period0, period1, phase) in microseconds, or None if not enough data."""
        with self.lock:
            s0, s1 = list(self.starts[0]), list(self.starts[1])
        if len(s0) < 4 or len(s1) < 4:
            return None

        def period(s):
            d = sorted((b - a) & 0xFFFFFFFF for a, b in zip(s[-9:], s[-8:]))
            return d[len(d) // 2]

        t0, t1 = period(s0), period(s1)
        if t0 == 0:
            return None
        phase = ((s1[-1] - s0[-1]) & 0xFFFFFFFF) % t0
        if phase > t0 // 2:
            phase -= t0
        return t0, t1, phase

    def phase(self, pairs=5):
        """Median phase over the last few frame pairs, or None.

        Every camera-1 start is paired with the nearest camera-0 start, so a
        dropped or glitched frame on one side does not shift the result.
        """
        with self.lock:
            s0, s1 = list(self.starts[0]), list(self.starts[1])
        if len(s0) < pairs + 1 or len(s1) < pairs:
            return None
        out = []
        for b in s1[-pairs:]:
            d = min((((b - a + 0x80000000) & 0xFFFFFFFF) - 0x80000000 for a in s0), key=abs)
            out.append(d)
        return sorted(out)[len(out) // 2]


class Timing(threading.Thread):
    """Stand-alone reader for the command line: feeds a PhaseMeter from USB."""

    def __init__(self):
        super().__init__(daemon=True)
        self.meter = PhaseMeter()
        self.running = True

    def run(self):
        try:
            dev = Fx2()
        except SystemExit as e:
            self.meter.error = str(e)
            return
        try:
            dev.select_bulk_alt()
            link, loaded = CamLink(), False
            stream = dev.stream()
            while self.running:
                chunk = next(stream)
                if not chunk:
                    if not loaded:
                        stream.close()
                        dev.load_firmware(build_firmware())
                        time.sleep(0.2)
                        dev.select_bulk_alt()
                        stream, loaded = dev.stream(), True
                    continue
                for cam, _, info in link.feed(chunk):
                    self.meter.add(cam, info["start_us"])
            stream.close()
        finally:
            dev.close()

    def stop(self):
        self.running = False
        self.join(3)


def wait_data(meter, seconds=6):
    t_end = time.time() + seconds
    while time.time() < t_end:
        if meter.error:
            raise SystemExit(meter.error)
        snap = meter.snapshot()
        if snap:
            return snap
        time.sleep(0.1)
    raise SystemExit("no frames from both cameras; run scripts/cam.tcl all ... first")


def probe(meter, seconds, label=""):
    first = wait_data(meter)
    t_start, rows = time.time(), []
    while time.time() - t_start < seconds:
        time.sleep(0.5)
        snap = meter.snapshot()
        if snap:
            rows.append((time.time() - t_start, *snap))
            print(f"{label}t={rows[-1][0]:5.1f}s  period0={snap[0]} us  period1={snap[1]} us  "
                  f"phase={snap[2]:+7d} us")
    if len(rows) > 2:
        drift = (rows[-1][3] - rows[0][3]) / (rows[-1][0] - rows[0][0])
        print(f"{label}phase drift {drift:+.0f} us/s (unwrapped only if it did not cross half a frame)")
    return rows or [(0, *first)]


def lock(meter, ps, seconds=None, log=print, should_stop=lambda: False, target_us=0):
    """Pull camera 1 onto camera 0 and hold it there.

    target_us: the phase to hold instead of zero (camera 1 start minus camera 0
    start). The depth build wants the left frame a few lines ahead.

    A sensor's frame can only be made longer, never shorter, so whichever
    camera is ahead gets delayed: camera 0 if the phase is positive, camera 1
    if it is negative. Coarse moves use extra lines for a few frames, the
    last step a single frame of one dummy pixel per line. Runs for `seconds`
    (forever if None) or until should_stop() is true.
    """
    def fresh_phase():
        meter.clear()
        t_end = time.time() + 3
        while time.time() < t_end and not should_stop():
            time.sleep(0.05)
            p = meter.phase()
            if p is not None:
                return p
        return None

    def pulse(cam, reg, val, hold):
        base = EXTRA_LINES if reg == 0x46 else 0
        ps.put(cam, reg, base + val)
        time.sleep(hold)
        ps.put(cam, reg, base)
        time.sleep(4 * FRAME_S)             # let the change work through

    wait_data(meter)
    for cam in (0, 1):
        for reg in (0x46, 0x47, 0x2D, 0x2B):
            ps.put(cam, reg, EXTRA_LINES if reg == 0x46 else 0)
    t_start, t_report, worst, moves = time.time(), 0, 0, 0
    locked_at = None
    while (seconds is None or time.time() - t_start < seconds) and not should_stop():
        e = fresh_phase()
        if e is None:
            continue                         # stream paused; try again
        e -= target_us
        cam = 0 if e > 0 else 1
        mag = abs(e)
        if mag > 3000:                      # coarse: many lines for ~6 frames
            k = max(1, min(255 - EXTRA_LINES, int(mag / LINE_US / 6)))
            pulse(cam, 0x46, k, 6 * FRAME_S)
            moves += 1
        elif mag > 250:                     # one line per frame
            n = max(1, min(30, round(mag / LINE_US) - 1))
            pulse(cam, 0x46, 1, n * FRAME_S)
            moves += 1
        elif mag > 70:                      # finest step
            pulse(cam, 0x2B, 1, 0.5 * FRAME_S)
            moves += 1
        else:
            time.sleep(0.3)
        if locked_at is None and mag <= 100:
            locked_at = time.time() - t_start
            log(f"genlock: locked after {locked_at:.1f} s")
            worst = 0
        if locked_at is not None:
            worst = max(worst, mag)
        if log is print and time.time() - t_report >= 2:
            t_report = time.time()
            log(f"t={time.time() - t_start:6.1f}s  phase={e:+7d} us ({e / LINE_US:+6.1f} lines)  "
                f"corrections={moves}" + (f"  worst since lock={worst} us" if locked_at is not None else ""))
    return locked_at, worst


def main():
    args = sys.argv[1:]
    mode = args[0] if args else "probe"
    timing = Timing()
    timing.start()
    meter = timing.meter
    try:
        if mode == "probe":
            probe(meter, float(args[1]) if len(args) > 1 else 5)
        elif mode == "poke":
            cam, reg, val = int(args[1]), int(args[2], 0), int(args[3], 0)
            seconds = float(args[4]) if len(args) > 4 else 3
            ps = PsLink()
            try:
                old = ps.get(cam, reg)
                print(f"camera {cam} register 0x{reg:02X}: 0x{old:02X}")
                probe(meter, 2, "before  ")
                ps.put(cam, reg, val)
                print(f"camera {cam} register 0x{reg:02X} <- 0x{val:02X}")
                time.sleep(0.5)
                probe(meter, seconds, "with    ")
                ps.put(cam, reg, old)
                time.sleep(0.5)
                probe(meter, 2, "restored ")
            finally:
                ps.close()
        elif mode == "lock":
            ps = PsLink()
            try:
                locked_at, worst = lock(meter, ps, float(args[1]) if len(args) > 1 else 60)
                if locked_at is None:
                    print("did not reach lock")
                else:
                    print(f"RESULT: locked after {locked_at:.1f} s, worst phase since then "
                          f"{worst} us ({worst / LINE_US:.1f} lines)")
            finally:
                ps.close()
        else:
            raise SystemExit(__doc__)
    finally:
        timing.stop()


if __name__ == "__main__":
    main()
