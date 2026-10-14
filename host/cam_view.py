"""Live preview of both OV2640 cameras (EBAZ4205 + FX2LP), PyQt5.

    python cam_view.py            (or just `camview` from any directory)

Streaming starts at once. "Init cameras" detects and configures both sensors
through the Zynq PS; use it after a power cycle or after swapping a module.
The sharpness figure under each picture is for focusing the lens: turn the
lens until the number stops rising.
"""
import os
import subprocess
import sys
import time

import cv2
import numpy as np
from PyQt5.QtCore import Qt, QThread, pyqtSignal
from PyQt5.QtGui import QImage, QPixmap
from PyQt5.QtWidgets import (QApplication, QCheckBox, QHBoxLayout, QLabel,
                             QMainWindow, QPushButton, QVBoxLayout, QWidget)

from camlink import CamLink, rgb565_to_rgb
from fx2_stream import Fx2, build_firmware

ROOT = os.path.normpath(os.path.join(os.path.dirname(os.path.abspath(__file__)), ".."))
XSDB = os.environ.get("XSDB", r"D:/Xilinx/2025.2/Vitis/bin/xsdb.bat")

# Sensor mode used by "Init cameras": size, format, CLKRC, R_DVP_SP.
SENSOR_MODE = ["svga", "rgb565", "0x81", "0x82"]
# Seen from behind the cameras, looking the way they face: camera 0 is the
# left one, camera 1 the right one, 55 mm apart.
CAM_NAMES = {0: "Camera 0 - left (DATA1)", 1: "Camera 1 - right (DATA3)"}


class InitThread(QThread):
    """Detects and configures the camera modules through the Zynq PS (xsdb)."""
    finished_text = pyqtSignal(bool, str)

    def run(self):
        # "reinit" only talks to the sensors. If the PS or PL lost their state
        # (board power cycled), fall back to "all", which also programs the PL.
        text = ""
        for cmd in ("reinit", "all"):
            try:
                out = subprocess.run(
                    [XSDB, os.path.join(ROOT, "scripts", "cam.tcl"), cmd, *SENSOR_MODE],
                    capture_output=True, text=True, timeout=240,
                    creationflags=subprocess.CREATE_NO_WINDOW).stdout
            except (OSError, subprocess.TimeoutExpired) as e:
                self.finished_text.emit(False, f"xsdb failed: {e}")
                return
            lines = [l.strip() for l in out.splitlines()]
            ready = next((l for l in lines if l.startswith("cameras ready:")), "")
            if ready and not ready.endswith(" 0"):
                found = [l for l in lines if l.startswith("sensor ") and "PID=" in l]
                missing = [l for l in lines if "not responding" in l]
                self.finished_text.emit(not missing, "  |  ".join(found + missing))
                return
            text = next((l for l in lines if "not responding" in l or "SCCB" in l),
                        "no answer from the sensors")
        self.finished_text.emit(False, f"camera init failed: {text}")


class CaptureThread(QThread):
    frame_ready = pyqtSignal(int, np.ndarray, dict)
    error_occurred = pyqtSignal(str)
    status = pyqtSignal(str)

    def __init__(self):
        super().__init__()
        self._running = False

    def run(self):
        self._running = True
        try:
            dev = Fx2()
        except SystemExit as e:
            self.error_occurred.emit(str(e))
            return
        try:
            dev.select_bulk_alt()
            link = CamLink()
            stats = {c: dict(frames=0, t0=time.perf_counter(), fps=0.0) for c in (0, 1)}
            nbytes, tb, mbps = 0, time.perf_counter(), 0.0
            loaded = False
            stream = dev.stream()
            while self._running:
                chunk = next(stream)
                if not chunk:
                    # Nothing for a second. The FX2LP forgets its firmware on
                    # every power cycle, so load it once and try again.
                    if not loaded:
                        stream.close()
                        dev.load_firmware(build_firmware())
                        time.sleep(0.2)
                        dev.select_bulk_alt()
                        stream = dev.stream()
                        loaded = True
                    else:
                        self.status.emit("no data: click Init cameras")
                    continue
                nbytes += len(chunk)
                now = time.perf_counter()
                if now - tb >= 1.0:
                    mbps, nbytes, tb = nbytes / (now - tb) / 1e6, 0, now
                for cam, payload, info in link.feed(chunk):
                    if payload is None:
                        continue
                    s = stats[cam]
                    s["frames"] += 1
                    dt = time.perf_counter() - s["t0"]
                    if dt >= 1.0:
                        s.update(fps=s["frames"] / dt, frames=0, t0=time.perf_counter())
                    info.update(fps=s["fps"], mbps=mbps, dropped=link.cams[cam].dropped)
                    rgb = rgb565_to_rgb(payload, info["bpl"] // 2, info["lines"])
                    self.frame_ready.emit(cam, np.ascontiguousarray(rgb), info)
            stream.close()
        except OSError as e:
            self.error_occurred.emit(str(e))
        finally:
            dev.close()

    def stop(self):
        self._running = False
        self.wait(3000)


class CamPanel(QWidget):
    """One camera: picture, sharpness and stream figures."""

    def __init__(self, cam):
        super().__init__()
        self.cam = cam
        self.last = None
        self.best = 0.0
        self.title = QLabel(CAM_NAMES[cam], alignment=Qt.AlignCenter)
        self.title.setStyleSheet("font-weight: bold;")
        self.image = QLabel("no frames yet", alignment=Qt.AlignCenter)
        self.image.setMinimumSize(400, 300)
        self.image.setStyleSheet("background-color: #202020; color: #808080;")
        self.focus = QLabel("", alignment=Qt.AlignCenter)
        self.focus.setStyleSheet("font-size: 13pt; font-weight: bold;")
        self.info = QLabel("", alignment=Qt.AlignCenter)
        layout = QVBoxLayout(self)
        layout.addWidget(self.title)
        layout.addWidget(self.image, 1)
        layout.addWidget(self.focus)
        layout.addWidget(self.info)

    def show_frame(self, arr, info, zoom):
        self.last = arr
        h, w, _ = arr.shape
        # Sharpness of the centre: variance of the Laplacian. It peaks when
        # the lens is in focus.
        cy, cx = h // 2, w // 2
        centre = arr[cy - h // 4:cy + h // 4, cx - w // 4:cx + w // 4]
        sharp = cv2.Laplacian(cv2.cvtColor(centre, cv2.COLOR_RGB2GRAY), cv2.CV_64F).var()
        self.best = max(self.best, sharp)
        self.focus.setText(f"Sharpness {sharp:7.1f}   best {self.best:7.1f}")

        view = arr
        if zoom:
            vh, vw = min(h, self.image.height()), min(w, self.image.width())
            view = np.ascontiguousarray(arr[cy - vh // 2:cy + vh // 2, cx - vw // 2:cx + vw // 2])
        vh, vw, _ = view.shape
        pix = QPixmap.fromImage(QImage(view.data, vw, vh, 3 * vw, QImage.Format_RGB888))
        if not zoom:
            pix = pix.scaled(self.image.size(), Qt.KeepAspectRatio, Qt.FastTransformation)
        self.image.setPixmap(pix)
        self.info.setText(f"{w}x{h}  {info['fps']:.1f} fps  PCLK {info['pclk_mhz']:.1f} MHz  "
                          f"dropped {info['dropped']}")
        return sharp


class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("OV2640 Stereo Preview (EBAZ4205 + FX2LP)")
        self.resize(1280, 640)
        self.panels = {c: CamPanel(c) for c in (0, 1)}
        self.status_label = QLabel("Stopped")
        self.start_button = QPushButton("Start")
        self.stop_button = QPushButton("Stop", enabled=False)
        self.init_button = QPushButton("Init cameras")
        self.save_button = QPushButton("Save PNG", enabled=False)
        self.zoom_box = QCheckBox("1:1 centre (for focusing)")
        self.start_button.clicked.connect(self.start_stream)
        self.stop_button.clicked.connect(self.stop_stream)
        self.init_button.clicked.connect(self.init_camera)
        self.save_button.clicked.connect(self.save_frame)

        pictures = QHBoxLayout()
        for p in self.panels.values():
            pictures.addWidget(p, 1)
        buttons = QHBoxLayout()
        for b in (self.start_button, self.stop_button, self.init_button,
                  self.save_button, self.zoom_box):
            buttons.addWidget(b)
        layout = QVBoxLayout()
        layout.addLayout(pictures, 1)
        layout.addWidget(self.status_label)
        layout.addLayout(buttons)
        central = QWidget()
        central.setLayout(layout)
        self.setCentralWidget(central)
        self.thread = None
        self.init_thread = None
        self.sticky = False          # status line holds an init/save message

    def start_stream(self):
        self.thread = CaptureThread()
        self.thread.frame_ready.connect(self.update_image)
        self.thread.error_occurred.connect(self.handle_error)
        self.thread.status.connect(self.status_label.setText)
        self.thread.start()
        self.start_button.setEnabled(False)
        self.stop_button.setEnabled(True)
        self.status_label.setText("Waiting for frames...")

    def init_camera(self):
        self.init_button.setEnabled(False)
        self.sticky = True
        self.status_label.setText("Initialising cameras (up to a minute)...")
        self.init_thread = InitThread()
        self.init_thread.finished_text.connect(self.init_done)
        self.init_thread.start()

    def init_done(self, ok, text):
        self.init_button.setEnabled(True)
        for p in self.panels.values():
            p.best = 0.0
        self.status_label.setText(("Cameras ready:  " if ok else "PROBLEM:  ") + text)

    def stop_stream(self):
        if self.thread:
            self.thread.stop()
            self.thread = None
        self.start_button.setEnabled(True)
        self.stop_button.setEnabled(False)

    def update_image(self, cam, arr, info):
        sharp = self.panels[cam].show_frame(arr, info, self.zoom_box.isChecked())
        self.save_button.setEnabled(True)
        if not self.sticky:
            self.status_label.setText(f"USB {info['mbps']:.1f} MB/s")
        if LOG:
            LOG.write(f"{time.time():.1f} cam{cam} {arr.shape[1]}x{arr.shape[0]} "
                      f"fps={info['fps']:.1f} dropped={info['dropped']} sharp={sharp:.1f}\n")
            LOG.flush()

    def save_frame(self):
        from PIL import Image
        stamp = time.strftime("%Y%m%d_%H%M%S")
        names = []
        for cam, p in self.panels.items():
            if p.last is not None:
                names.append(f"capture_{stamp}_cam{cam}.png")
                Image.fromarray(p.last).save(names[-1])
        self.sticky = True
        self.status_label.setText("saved " + ", ".join(names))

    def handle_error(self, msg):
        self.sticky = True
        self.status_label.setText(f"Error: {msg}")
        self.stop_stream()

    def closeEvent(self, event):
        self.stop_stream()
        event.accept()


LOG = None


def main():
    global LOG
    if "--log" in sys.argv:
        LOG = open(sys.argv[sys.argv.index("--log") + 1], "w")
    app = QApplication(sys.argv[:1])
    win = MainWindow()
    win.show()
    win.start_stream()
    sys.exit(app.exec_())


if __name__ == "__main__":
    main()
