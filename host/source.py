"""One interface for stereo data, live from the EZ-USB stream or from a recording.

    with LiveSource() as src:                # or FileSource("data/wall_1m")
        for pair in src.pairs():
            pair.left, pair.right            # RGB uint8 arrays (H, W, 3)
            pair.tof_mm                      # ToF distance, None if out of range
            pair.phase_us                    # right start minus left start

Everything arrives through the USB stream: both images, their start times and
the ToF distance (stamped into the frame headers by the FPGA). LiveSource
also runs the board service: a background xsdb session that keeps the two
sensors frame-locked and feeds ToF readings to the FPGA. That service is the
only thing that still goes over JTAG; a small PS program can replace it later
without any change here.
"""
import csv
import os
import queue
import subprocess
import threading
import time
from dataclasses import dataclass

import numpy as np
from PIL import Image

from camlink import CamLink, rgb565_to_rgb
from fx2_stream import Fx2, build_firmware
from genlock import PhaseMeter, lock
from pslink import ROOT, XSDB, PsLink
from tof import Tof
import genlock as _genlock
from stereo import params as P

# Sensor mode used when the board has to be initialised or is found in another
# mode: size, format, CLKRC, R_DVP_SP of the resolution profile in use.
SENSOR_MODE = list(P.SENSOR_MODE)
_genlock.LINE_US, _genlock.PIXEL_US, _genlock.FRAME_S = P.LINE_US, P.PIXEL_US, P.FRAME_S
_genlock.EXTRA_LINES = P.EXTRA_LINES


def fit_profile(rgb):
    """A picture in the size of the profile in use. An 800 x 600 recording is binned 2 x 2 and
    cut to 296 lines when the profile is the sensor's 400 x 296 mode (which bins the same way)."""
    w, h = P.WIDTH * P.BIN, P.HEIGHT * P.BIN            # what the sensor delivers for this profile
    if rgb.shape[1] == w:
        return rgb[:h]
    if rgb.shape[1] != 2 * w:
        raise SystemExit(f"picture is {rgb.shape[1]} wide, the profile '{P.PROFILE}' needs {w}")
    a = rgb.astype(np.uint16)
    b = (a[0::2, 0::2] + a[0::2, 1::2] + a[1::2, 0::2] + a[1::2, 1::2] + 2) >> 2
    return b[:h].astype(np.uint8)


# Rig geometry (measured by the user). The ToF sensor sits 13.5 mm behind the
# camera sensors, so an object is that much closer to the cameras than the
# ToF reading says. Left camera = camera 0, right = camera 1.
BASELINE_MM = 55.0
TOF_BEHIND_CAMERAS_MM = 13.5


@dataclass
class Pair:
    index: int
    left: np.ndarray
    right: np.ndarray
    t_left_us: int
    t_right_us: int
    phase_us: int               # right start minus left start
    tof_mm: object              # raw ToF reading; None when out of range / no reading
    tof_age_ms: float           # how old the ToF reading was at the left frame start
    disp: object = None         # depth mode: disparity the FPGA computed from this very pair (uint16, 1/16 px)

    @property
    def dist_mm(self):
        """Distance from the camera sensors to the measured object, or None."""
        return None if self.tof_mm is None else self.tof_mm - TOF_BEHIND_CAMERAS_MM


def genlock_lead_us():
    """Phase the depth build expects (right start minus left start), from the tables it was built with."""
    import re
    from genlock import LINE_US
    text = open(os.path.join(ROOT, os.environ.get("CAM_GOLDEN", "build/golden"), "rect_cfg.vh")).read()
    # rows of the rectifier's input: P.BIN sensor lines each
    return int(round(int(re.search(r"GENLOCK_LEAD = (-?\d+)", text).group(1)) * P.BIN * LINE_US))


def _wrap(d):
    return ((d + 0x80000000) & 0xFFFFFFFF) - 0x80000000


class BoardService:
    """Genlock and ToF feed, running in the background over one PsLink."""

    def __init__(self, meter, genlock=True, tof="off", log=print, depth=False, target_us=0):
        self.meter, self.log = meter, log
        self.depth, self.target_us = depth, target_us
        self.want_genlock, self.tof_mode = genlock, tof
        self.stopping = False
        self.ps = None
        self.tof = None                 # initialised sensor, or None if it did not answer
        self.tof_lock = threading.Lock()
        self.tof_paused = False         # mode "on" only: continuous ranging held off
        self.tof_ranging = False
        self.tof_errors = 0             # transfers that failed even after the retries
        self.threads = []

    def start(self):
        self.ps = PsLink()
        self.ps.cmd(f"depth_mode {int(self.depth)}")    # what the second USB stream carries
        # The sensor may still be ranging from an earlier session. Its infrared
        # emitter shows up in the camera images, so it is always initialised
        # here and switched off; it only ranges continuously in mode "on".
        self.tof_state = "unknown"      # "off" once the sensor has confirmed that it stopped ranging
        try:
            tof = Tof(self.ps)
            tof.init()
            tof.stop()
            self.tof = tof
            self.tof_state = "off"
        except Exception as e:
            # It may still be ranging from an earlier session even though the
            # initialisation failed: tell it to stop anyway. A sensor that does
            # not acknowledge its address at all is not connected.
            try:
                Tof(self.ps).stop()
                self.tof_state = "off"
                self.log(f"ToF did not initialise ({e}); it was told to stop")
            except Exception:
                self.tof_state = "absent"
                self.log("ToF sensor not connected")
        if self.tof and self.tof_mode == "on":
            self.threads.append(threading.Thread(target=self._tof_loop, daemon=True))
        if self.want_genlock:
            self.threads.append(threading.Thread(target=self._genlock_loop, daemon=True))
        for t in self.threads:
            t.start()

    def measure_distance(self, n=8):
        """Switch the ToF on for n readings and off again; raw median in mm or None.

        Images taken while this runs contain the emitter's light; callers take
        their pictures first and measure afterwards.
        """
        if self.tof is None:
            return None
        with self.tof_lock:
            try:
                mm = self.tof.measure(n)
            except Exception as e:
                self.log(f"ToF reading failed: {e}")
                return None
            self.ps.cmd(f"tof_out {0xFFFF if mm is None else mm}")
            return mm

    def pause_tof(self, paused=True, wait=1.0):
        """In mode "on": stop (or resume) continuous ranging. Returns once the
        emitter is really off, so pictures taken afterwards are clean."""
        self.tof_paused = paused
        t_end = time.time() + wait
        while paused and self.tof_ranging and time.time() < t_end:
            time.sleep(0.02)

    def _tof_loop(self):
        """Continuous ranging. A failed transfer must never end this loop: the
        bus is shared and marginal, so errors are expected now and then. After
        one, ranging is restarted; after several in a row the sensor is
        initialised again."""
        failures = 0
        while not self.stopping:
            try:
                if self.tof_paused:
                    if self.tof_ranging:
                        with self.tof_lock:
                            self.tof.stop()
                        self.tof_ranging = False
                    time.sleep(0.03)
                    continue
                with self.tof_lock:
                    if not self.tof_ranging:
                        self.tof.start()
                        self.tof_ranging = True
                    mm = self.tof.read_mm()
                self.ps.cmd(f"tof_out {0xFFFF if mm is None else mm}")
                failures = 0
            except Exception as e:
                if self.stopping:
                    break
                failures += 1
                self.tof_errors += 1
                self.tof_ranging = False            # forces a fresh start next time round
                self.log(f"ToF error ({failures} in a row), recovering: {e}")
                time.sleep(0.2)
                if failures >= 3:
                    try:
                        with self.tof_lock:
                            self.tof.init()
                        failures = 0
                    except Exception as e2:
                        self.log(f"ToF re-initialisation failed: {e2}")
                        time.sleep(1.0)

    def _genlock_loop(self):
        try:
            lock(self.meter, self.ps, None, log=self.log, should_stop=lambda: self.stopping,
                 target_us=self.target_us)
        except (Exception, SystemExit) as e:
            if not self.stopping:
                self.log(f"genlock stopped: {e}")

    def stop(self):
        self.stopping = True
        for t in self.threads:
            t.join(3)
        if self.ps:
            if self.tof:
                try:
                    self.tof.stop()                 # never leave the emitter on
                except Exception:
                    pass
            try:
                self.ps.cmd("depth_mode 0")         # leave the board in raw mode for the other tools
            except Exception:
                pass
            self.ps.close()


class LiveSource:
    def __init__(self, genlock=True, tof="off", queue_size=4, log=print, auto_init=True, mode="raw"):
        """tof: "off" = emitter off, distance only on request (measure_distance);
        "on" = ranging continuously, every frame header carries a fresh
        distance but the emitter's light is in the pictures."""
        self.log, self.auto_init = log, auto_init
        self.meter = PhaseMeter()
        # the lambda keeps genlock's periodic progress lines out of the log
        # mode "depth" (depth build only): a third stream carries the FPGA's disparity,
        # and the genlock holds the left frame ahead by the lines the build expects.
        self.mode = mode
        self.service = BoardService(self.meter, genlock, tof, lambda m: log(m), depth=(mode == "depth"),
                                    target_us=genlock_lead_us() if mode == "depth" else 0)
        if os.environ.get("CAM_STANDALONE") == "1":
            # The board runs by itself (Linux from its SD card configures the sensors and keeps
            # them in step, see board/): nothing is done over JTAG, the PC only reads the USB stream.
            self.service, self.auto_init = None, False
        self.q = queue.Queue(maxsize=queue_size)
        self.running = False
        self.error = None
        self.dropped_pairs = 0
        self.frame_size = None           # (width, height) of the frames arriving
        self.thread = threading.Thread(target=self._reader, daemon=True)

    def __enter__(self):
        self.start()
        return self

    def __exit__(self, *exc):
        self.stop()

    def start(self):
        self.running = True
        self.thread.start()
        if self.auto_init and self._frames_within(4.0) and self._other_mode():
            # The sensors run in another mode (size or frame rate left by an earlier tool): switch them.
            self.log(f"sensors deliver {self.frame_size[0]} x {self.frame_size[1]} at {self.frame_rate:.0f} fps; "
                     f"switching to {P.WIDTH} x {P.HEIGHT} at {1 / P.FRAME_S:.0f} fps...")
            out = subprocess.run([XSDB, os.path.join(ROOT, "scripts", "cam.tcl"), "mode", *SENSOR_MODE],
                                 capture_output=True, text=True, timeout=300,
                                 creationflags=subprocess.CREATE_NO_WINDOW).stdout
            if "cameras ready: 2" not in out:
                self.running = False
                raise SystemExit("could not switch the sensor mode: " + " | ".join(out.splitlines()[-3:]))
            self.meter.clear()
            time.sleep(1.0)
        if self.auto_init and not self._frames_within(4.0):
            # Nothing is streaming: the board was power cycled. Program the
            # PL, initialise the PS and configure both sensors.
            self.log("no frames; initialising the board (about a minute)...")
            out = subprocess.run([XSDB, os.path.join(ROOT, "scripts", "cam.tcl"), "all", *SENSOR_MODE],
                                 capture_output=True, text=True, timeout=300,
                                 creationflags=subprocess.CREATE_NO_WINDOW).stdout
            if "cameras ready: 2" not in out:
                self.running = False
                tail = [l for l in out.splitlines() if l.strip()][-3:]
                raise SystemExit("board initialisation failed: " + " | ".join(tail))
        if self.service:
            self.service.start()

    def _other_mode(self):
        """True when the frames arriving are not the profile's size or frame rate."""
        t_end = time.time() + 2.0
        while self.frame_size is None and time.time() < t_end:
            time.sleep(0.05)
        snap = self.meter.snapshot()
        self.frame_rate = 1e6 / snap[0] if snap else 0.0
        wrong_rate = snap is not None and abs(snap[0] / 1e6 - P.FRAME_S) > 0.2 * P.FRAME_S
        return self.frame_size not in (None, (P.WIDTH * P.BIN, P.HEIGHT * P.BIN)) or wrong_rate

    def measure_distance(self, n=8):
        """ToF distance measured now (emitter on only for this), corrected to
        camera-to-object millimetres; None when nothing is in range."""
        mm = self.service.measure_distance(n)
        return None if mm is None else mm - TOF_BEHIND_CAMERAS_MM

    def _frames_within(self, seconds):
        t_end = time.time() + seconds
        while time.time() < t_end:
            if self.error:
                raise SystemExit(self.error)
            if self.meter.snapshot():
                return True
            time.sleep(0.1)
        return False

    def stop(self):
        self.running = False
        if self.service:
            self.service.stop()
        self.thread.join(3)

    def _reader(self):
        try:
            dev = Fx2()
        except SystemExit as e:
            self.error = self.meter.error = str(e)
            return
        try:
            dev.select_bulk_alt()
            link, loaded, index = CamLink(), False, 0
            pending = {0: None, 1: None}
            held, early = {}, {}                 # depth mode: pairs / disparity frames waiting for the other
            stream = dev.stream()
            while self.running:
                chunk = next(stream)
                if not chunk:
                    if not loaded:           # FX2LP lost its firmware (power cycle)
                        stream.close()
                        dev.load_firmware(build_firmware())
                        time.sleep(0.2)
                        dev.select_bulk_alt()
                        stream, loaded = dev.stream(), True
                    continue
                for cam, payload, info in link.feed(chunk):
                    if cam == 2:
                        # Disparity from the depth build. Its header carries the start time of the
                        # right-camera frame it was computed from: it belongs to exactly that pair.
                        # Either of the two may arrive first.
                        if payload is not None:
                            d = np.frombuffer(payload, "<u2").reshape(info["lines"], info["bpl"] // 2)
                            pair = held.pop(info["start_us"], None)
                            if pair is not None:
                                pair.disp = d
                                self._put(pair)
                            else:
                                early[info["start_us"]] = d
                                while len(early) > 3:
                                    early.pop(next(iter(early)))
                        continue
                    self.meter.add(cam, info["start_us"])
                    if payload is None:
                        continue
                    self.frame_size = (info["bpl"] // 2, info["lines"])
                    pending[cam] = (payload, info)
                    if pending[0] is None or pending[1] is None:
                        continue
                    (pl, il), (pr, ir) = pending[0], pending[1]
                    phase = _wrap(ir["start_us"] - il["start_us"])
                    if abs(phase) > 500000 * P.FRAME_S:   # more than half a frame apart: keep the newer one
                        pending[0 if phase > 0 else 1] = None
                        continue
                    pending = {0: None, 1: None}
                    pair = Pair(index,
                                rgb565_to_rgb(pl, il["bpl"] // 2, il["lines"]),
                                rgb565_to_rgb(pr, ir["bpl"] // 2, ir["lines"]),
                                il["start_us"], ir["start_us"], phase, il["tof_mm"],
                                _wrap(il["start_us"] - il["tof_us"]) / 1000.0)
                    index += 1
                    if self.mode == "depth":
                        if pair.t_right_us in early:
                            pair.disp = early.pop(pair.t_right_us)
                            self._put(pair)
                        else:                    # goes out when its disparity frame has arrived
                            held[pair.t_right_us] = pair
                            while len(held) > 3:
                                held.pop(next(iter(held)))
                    else:
                        self._put(pair)
            stream.close()
        except OSError as e:
            self.error = str(e)
        finally:
            dev.close()

    def _put(self, pair):
        if self.q.full():                    # consumer is slower than the cameras
            try:
                self.q.get_nowait()
                self.dropped_pairs += 1
            except queue.Empty:
                pass
        self.q.put(pair)

    def pairs(self, timeout=5.0):
        """Yield pairs as they arrive; stops if none arrives for `timeout` seconds."""
        while self.running:
            try:
                yield self.q.get(timeout=timeout)
            except queue.Empty:
                raise SystemExit(self.error or "no frame pairs: run scripts/cam.tcl all svga rgb565 0x81 0x82")


class FileSource:
    """Replays a recording made by record.py."""

    def __init__(self, folder):
        self.folder = folder
        with open(os.path.join(folder, "index.csv"), newline="") as f:
            self.rows = list(csv.DictReader(f))

    def __enter__(self):
        return self

    def __exit__(self, *exc):
        pass

    def __len__(self):
        return len(self.rows)

    def pairs(self):
        for r in self.rows:
            i = int(r["index"])
            yield Pair(i,
                       fit_profile(np.asarray(Image.open(os.path.join(self.folder, f"L_{i:04d}.png")).convert("RGB"))),
                       fit_profile(np.asarray(Image.open(os.path.join(self.folder, f"R_{i:04d}.png")).convert("RGB"))),
                       int(r["t_left_us"]), int(r["t_right_us"]), int(r["phase_us"]),
                       int(r["tof_mm"]) if r["tof_mm"] else None, float(r["tof_age_ms"]))


def open_source(spec=None, **kw):
    """LiveSource when spec is None or 'live', otherwise a recording folder."""
    return LiveSource(**kw) if spec in (None, "live") else FileSource(spec)
