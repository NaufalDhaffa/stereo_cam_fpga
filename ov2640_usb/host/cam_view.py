"""Live preview of the OV2640 -> FPGA -> FX2LP stream (PyQt5).

Counterpart of stream_gui.py from OV2640_RED_ESP32, with the serial port
replaced by the FX2LP bulk endpoint. Frames arrive continuously; there is no
trigger byte.

    python cam_view.py

Streaming starts at once. The sharpness figure is for focusing the lens:
turn the lens until the number stops rising.
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

from cam_grab import HDR_LEN, MAGIC, parse_header, rgb565_to_rgb
from fx2_stream import Fx2, build_firmware


ROOT = os.path.normpath(os.path.join(os.path.dirname(os.path.abspath(__file__)), ".."))
XSDB = os.environ.get("XSDB", r"D:/Xilinx/2025.2/Vitis/bin/xsdb.bat")


class InitThread(QThread):
    """Detects and configures the camera module through the Zynq PS (xsdb)."""
    finished_text = pyqtSignal(bool, str)

    def run(self):
        # "reinit" only talks to the sensor. If the PS or PL lost their state
        # (board power cycled), fall back to "all", which also programs the PL.
        text = ""
        for cmd in ("reinit", "all"):
            try:
                out = subprocess.run(
                    [XSDB, os.path.join(ROOT, "scripts", "cam.tcl"), cmd, "uxga", "rgb565"],
                    capture_output=True, text=True, timeout=180,
                    creationflags=subprocess.CREATE_NO_WINDOW).stdout
            except (OSError, subprocess.TimeoutExpired) as e:
                self.finished_text.emit(False, f"xsdb failed: {e}")
                return
            lines = [l.strip() for l in out.splitlines()]
            ident = next((l for l in lines if l.startswith("sensor: ")), "")
            done = next((l for l in lines if l.startswith("sensor configured")), "")
            if done:
                self.finished_text.emit(True, f"{ident}  |  {done}")
                return
            text = next((l for l in lines if "SCCB" in l), "no answer from the sensor")
        self.finished_text.emit(False, f"camera init failed: {text}")


class CaptureThread(QThread):
    frame_ready = pyqtSignal(np.ndarray, dict)
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
            data = bytearray()
            stats = dict(frames=0, dropped=0, bytes=0, t0=time.perf_counter(), fps=0.0, mbps=0.0)
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
                        self.status.emit("no data: configure the sensor with scripts/cam.tcl")
                    continue
                data += chunk
                stats["bytes"] += len(chunk)
                while True:
                    start = data.find(MAGIC)
                    if start < 0:
                        del data[:-len(MAGIC)]
                        break
                    nxt = data.find(MAGIC, start + HDR_LEN)
                    if nxt < 0 or nxt + HDR_LEN > len(data):
                        del data[:start]
                        break
                    info = parse_header(data, nxt)
                    payload = bytes(data[start + HDR_LEN:nxt])
                    del data[:nxt]
                    size = info["bpl"] * info["lines"]
                    if size == 0 or len(payload) != size or info["truncated"]:
                        stats["dropped"] += 1
                        continue
                    stats["frames"] += 1
                    dt = time.perf_counter() - stats["t0"]
                    if dt >= 1.0:
                        stats["fps"] = stats["frames"] / dt
                        stats["mbps"] = stats["bytes"] / dt / 1e6
                        stats.update(frames=0, bytes=0, t0=time.perf_counter())
                    info.update(fps=stats["fps"], mbps=stats["mbps"], dropped=stats["dropped"])
                    rgb = rgb565_to_rgb(payload, info["bpl"] // 2, info["lines"])
                    self.frame_ready.emit(np.ascontiguousarray(rgb), info)
            stream.close()
        except OSError as e:
            self.error_occurred.emit(str(e))
        finally:
            dev.close()

    def stop(self):
        self._running = False
        self.wait(3000)


class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("OV2640 Live Preview (EBAZ4205 + FX2LP)")
        self.resize(840, 700)
        self.image_label = QLabel(alignment=Qt.AlignCenter)
        self.image_label.setMinimumSize(320, 240)
        self.image_label.setStyleSheet("background-color: #202020;")
        self.status_label = QLabel("Stopped")
        self.start_button = QPushButton("Start")
        self.stop_button = QPushButton("Stop", enabled=False)
        self.save_button = QPushButton("Save PNG", enabled=False)
        self.start_button.clicked.connect(self.start_stream)
        self.stop_button.clicked.connect(self.stop_stream)
        self.save_button.clicked.connect(self.save_frame)
        self.init_button = QPushButton("Init camera")
        self.init_button.clicked.connect(self.init_camera)
        self.init_thread = None
        self.zoom_box = QCheckBox("1:1 centre (for focusing)")
        self.focus_label = QLabel("")
        self.focus_label.setStyleSheet("font-size: 16pt; font-weight: bold;")
        self._best = 0.0

        buttons = QHBoxLayout()
        for b in (self.start_button, self.stop_button, self.init_button,
                  self.save_button, self.zoom_box):
            buttons.addWidget(b)
        layout = QVBoxLayout()
        layout.addWidget(self.image_label, 1)
        layout.addWidget(self.focus_label)
        layout.addWidget(self.status_label)
        layout.addLayout(buttons)
        central = QWidget()
        central.setLayout(layout)
        self.setCentralWidget(central)
        self.thread = None
        self._last = None

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
        self.focus_label.setText("Initialising camera...")
        self.init_thread = InitThread()
        self.init_thread.finished_text.connect(self.init_done)
        self.init_thread.start()

    def init_done(self, ok, text):
        self.init_button.setEnabled(True)
        self._best = 0.0
        self.focus_label.setText("Camera ready" if ok else "Camera init FAILED")
        self.status_label.setText(text)

    def stop_stream(self):
        if self.thread:
            self.thread.stop()
            self.thread = None
        self.start_button.setEnabled(True)
        self.stop_button.setEnabled(False)

    def update_image(self, arr, info):
        self._last = arr
        h, w, _ = arr.shape
        # Sharpness of the centre: variance of the Laplacian. It peaks when
        # the lens is in focus; turn the lens until the number stops rising.
        cy, cx = h // 2, w // 2
        centre = arr[cy - h // 4:cy + h // 4, cx - w // 4:cx + w // 4]
        sharp = cv2.Laplacian(cv2.cvtColor(centre, cv2.COLOR_RGB2GRAY), cv2.CV_64F).var()
        self._best = max(self._best, sharp)
        self.focus_label.setText(f"Sharpness {sharp:8.1f}    best {self._best:8.1f}")

        view = arr
        if self.zoom_box.isChecked():
            vh, vw = min(h, self.image_label.height()), min(w, self.image_label.width())
            view = np.ascontiguousarray(arr[cy - vh // 2:cy + vh // 2, cx - vw // 2:cx + vw // 2])
        vh, vw, _ = view.shape
        img = QImage(view.data, vw, vh, 3 * vw, QImage.Format_RGB888)
        pix = QPixmap.fromImage(img)
        if not self.zoom_box.isChecked():
            pix = pix.scaled(self.image_label.size(), Qt.KeepAspectRatio, Qt.FastTransformation)
        self.image_label.setPixmap(pix)
        self.save_button.setEnabled(True)
        self.status_label.setText(
            f"{w}x{h}  {info['fps']:.1f} fps  {info['mbps']:.1f} MB/s  "
            f"PCLK {info['pclk_mhz']:.1f} MHz  dropped {info['dropped']}")
        if LOG:
            LOG.write(f"{time.time():.1f} {w}x{h} fps={info['fps']:.1f} dropped={info['dropped']} sharp={sharp:.1f}\n")
            LOG.flush()

    def save_frame(self):
        if self._last is not None:
            from PIL import Image
            name = time.strftime("capture_%Y%m%d_%H%M%S.png")
            Image.fromarray(self._last).save(name)
            self.status_label.setText(f"saved {name}")

    def handle_error(self, msg):
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
