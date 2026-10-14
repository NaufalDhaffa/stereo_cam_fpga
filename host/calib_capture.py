"""Collects chessboard pairs for stereo calibration, with live feedback.

    camcalib                      new set data/calib_<date>_<time>
    camcalib my_set               named set
    camcalib my_set --square 38     square size as measured on the print (38 is the default)

Hold the printed 9 x 6 chessboard (27 mm squares) in front of both cameras,
completely in view. The numbered board (calib/charuco_*.pdf, 38 mm) works
too and may be partly out of view; set the square size to match. One set must
use one kind of board. When the board is held still, the pair is saved automatically,
provided it differs enough from the ones already taken. Move and tilt the
board until the dots of the saved corners cover the whole of both pictures,
including the edges; about 20 pairs is enough. "Calibrate" then runs the
calibration on the set and shows the result.
"""
import argparse
import csv
import os
import sys
import time

import cv2
import numpy as np
from PIL import Image
from PyQt5.QtCore import Qt, QThread, pyqtSignal
from PyQt5.QtGui import QImage, QPixmap
from PyQt5.QtWidgets import (QApplication, QDoubleSpinBox, QHBoxLayout, QLabel, QMainWindow,
                             QPlainTextEdit, QPushButton, QVBoxLayout, QWidget)

from pslink import ROOT
from record import FIELDS
from source import open_source
from stereo import calibrate, charuco, target
from stereo import params as P

SCALE = P.WIDTH / 800.0   # the pixel thresholds below were chosen at 800 pixels width
STILL_PX = 1.5 * SCALE  # corners may move this much between detections and count as still
STILL_COUNT = 4         # detections in a row
NOVEL_PX = 30.0 * SCALE  # mean corner distance to every saved pose
TARGET = 20
FLAT_DEG = 12.0         # both tilts below this: the board faces the cameras
STEEP_DEG = 45.0        # tilted further than this the corners are read poorly: aim for 25 to 40 degrees
# Poses the set must contain: name -> (test on (sideways, updown) tilt, how many).
# Without the tilted ones the focal length cannot be told apart from the distance.
WANTED = {
    "datar (jarak berbeda-beda)": (lambda s, u: abs(s) < FLAT_DEG and abs(u) < FLAT_DEG, 6),
    "sisi KANAN lebih dekat 25-40": (lambda s, u: calibrate.TILTED_DEG <= s <= STEEP_DEG, 3),
    "sisi KIRI lebih dekat 25-40": (lambda s, u: calibrate.TILTED_DEG <= -s <= STEEP_DEG, 3),
    "sisi ATAS lebih dekat 25-40": (lambda s, u: calibrate.TILTED_DEG <= u <= STEEP_DEG, 3),
    "sisi BAWAH lebih dekat 25-40": (lambda s, u: calibrate.TILTED_DEG <= -u <= STEEP_DEG, 3),
}


class CaptureLogic:
    """Decides when a pair is worth saving, and saves it. No GUI in here."""

    def __init__(self, folder):
        self.folder = folder
        os.makedirs(folder, exist_ok=True)
        self.saved = []                 # (left corners, right corners) of every saved pair
        self.tilts = []                 # (sideways, updown) tilt of the board in every saved pair
        self.too_steep = False          # the board in the latest frame is tilted beyond STEEP_DEG
        self.prev = None
        self.still = 0
        self.rows = []

    @staticmethod
    def _distance(a, b):
        """How far each corner both {corner number: position} views have has moved, or None if too few."""
        common = a.keys() & b.keys()
        if len(common) < 4:
            return None
        return np.array([np.linalg.norm(a[i] - b[i]) for i in common])

    def offer(self, pair, corners, force=False):
        """corners = a target detection (kind, ids, left, right) or None. Returns True when the pair was saved."""
        if corners is None or (self.saved and corners[0] != self.saved[0][0]):     # never mix the two boards
            self.prev, self.still = None, 0
            return False
        kind, ids, left, _ = corners
        now = dict(zip(ids.tolist(), left))
        # The numbered board may show different corners from frame to frame,
        # so movement and novelty are judged on the corners two views share.
        moved = self._distance(now, self.prev) if self.prev is not None else None
        self.still = self.still + 1 if moved is not None and moved.max() < STILL_PX else 0
        self.prev = now
        novel = True
        for s in self.saved:
            d = self._distance(now, dict(zip(s[1].tolist(), s[2])))
            if d is not None and d.mean() <= NOVEL_PX:
                novel = False
        tilt = target.tilt(kind, ids, left)
        self.too_steep = max(abs(tilt[0]), abs(tilt[1])) > STEEP_DEG
        # A board held very obliquely is not taken by itself: its corners are
        # read poorly and the calibration would leave the pair out anyway.
        if not force and not (self.still >= STILL_COUNT and novel and not self.too_steep):
            return False
        i = len(self.saved)
        Image.fromarray(pair.left).save(os.path.join(self.folder, f"L_{i:04d}.png"))
        Image.fromarray(pair.right).save(os.path.join(self.folder, f"R_{i:04d}.png"))
        self.rows.append(dict(index=i, t_left_us=pair.t_left_us, t_right_us=pair.t_right_us,
                              phase_us=pair.phase_us,
                              tof_mm="" if pair.tof_mm is None else pair.tof_mm,
                              tof_age_ms=f"{pair.tof_age_ms:.1f}"))
        self.saved.append(corners)
        self.tilts.append(tilt)
        self._write_index()
        self.still = 0
        return True

    def undo(self):
        if not self.saved:
            return
        i = len(self.saved) - 1
        for name in (f"L_{i:04d}.png", f"R_{i:04d}.png"):
            os.remove(os.path.join(self.folder, name))
        self.saved.pop()
        self.tilts.pop()
        self.rows.pop()
        self._write_index()

    def missing(self):
        """Poses still wanted, as 'name (have/needed)' strings; empty when the set is complete."""
        out = []
        for name, (test, needed) in WANTED.items():
            have = sum(1 for s, u in self.tilts if test(s, u))
            if have < needed:
                out.append(f"{name} {have}/{needed}")
        return out

    def _write_index(self):
        with open(os.path.join(self.folder, "index.csv"), "w", newline="") as f:
            out = csv.DictWriter(f, FIELDS)
            out.writeheader()
            out.writerows(self.rows)

    def overlay(self, img, corners, cam):
        """The picture with the current board and the corners already covered."""
        out = img.copy()
        for s in self.saved:
            for x, y in s[2 + cam][::3]:
                cv2.circle(out, (int(x), int(y)), 2, (0, 200, 255), -1)
        if corners is not None:
            target.draw(out, corners, cam)
        return out


class Worker(QThread):
    frame = pyqtSignal(np.ndarray, np.ndarray, object, bool, int)
    failed = pyqtSignal(str)

    def __init__(self, logic, source_spec):
        super().__init__()
        self.logic, self.spec = logic, source_spec
        self.tof_state = "..."
        self.running = True
        self.force = False

    def run(self):
        try:
            # The ToF emitter shows in the pictures and would disturb the corner
            # detection: it is never switched on here (tof="off" stops it at start).
            kw = {} if self.spec not in (None, "live") else dict(tof="off")
            with open_source(self.spec, **kw) as src:
                service = getattr(src, "service", None)
                self.tof_state = getattr(service, "tof_state", "n/a")
                for pair in src.pairs():
                    if not self.running:
                        break
                    gl = cv2.cvtColor(pair.left, cv2.COLOR_RGB2GRAY)
                    gr = cv2.cvtColor(pair.right, cv2.COLOR_RGB2GRAY)
                    corners = target.find_pair(gl, gr, fast=True)
                    saved = self.logic.offer(pair, corners, self.force)
                    self.force = False
                    self.frame.emit(self.logic.overlay(pair.left, corners, 0),
                                    self.logic.overlay(pair.right, corners, 1),
                                    None if corners is None else
                                    target.tilt(*corners[:3]) + (len(corners[1]), target.TOTAL[corners[0]]),
                                    saved, len(self.logic.saved))
        except (SystemExit, Exception) as e:
            self.failed.emit(str(e))

    def stop(self):
        self.running = False
        self.wait(5000)


class Window(QMainWindow):
    def __init__(self, folder, square, source_spec):
        super().__init__()
        self.setWindowTitle(f"Stereo calibration capture - {os.path.basename(folder)}")
        self.resize(1300, 760)
        self.folder = folder
        self.logic = CaptureLogic(folder)
        self.views = [QLabel(alignment=Qt.AlignCenter), QLabel(alignment=Qt.AlignCenter)]
        for v in self.views:
            v.setMinimumSize(400, 300)
            v.setStyleSheet("background-color: #202020;")
        self.status = QLabel("starting...")
        self.status.setStyleSheet("font-size: 13pt; font-weight: bold;")
        self.need = QLabel("")
        self.need.setWordWrap(True)
        self.square = QDoubleSpinBox(decimals=2, minimum=5, maximum=100, value=square, suffix=" mm")
        self.take = QPushButton("Capture now")
        self.undo = QPushButton("Undo last")
        self.calib = QPushButton("Calibrate")
        self.report = QPlainTextEdit(readOnly=True)
        self.report.setMaximumHeight(220)
        self.report.hide()
        self.take.clicked.connect(self.on_take)
        self.undo.clicked.connect(self.on_undo)
        self.calib.clicked.connect(self.on_calibrate)

        pictures = QHBoxLayout()
        for v in self.views:
            pictures.addWidget(v, 1)
        buttons = QHBoxLayout()
        buttons.addWidget(QLabel("Square size:"))
        buttons.addWidget(self.square)
        for b in (self.take, self.undo, self.calib):
            buttons.addWidget(b)
        layout = QVBoxLayout()
        layout.addLayout(pictures, 1)
        layout.addWidget(self.status)
        layout.addWidget(self.need)
        layout.addLayout(buttons)
        layout.addWidget(self.report)
        central = QWidget()
        central.setLayout(layout)
        self.setCentralWidget(central)

        self.flash_until = 0
        self.worker = Worker(self.logic, source_spec)
        self.worker.frame.connect(self.on_frame)
        self.worker.failed.connect(lambda m: self.status.setText(f"stopped: {m}"))
        self.worker.start()

    def on_frame(self, left, right, tilt, saved, count):
        found = tilt is not None
        missing = self.logic.missing()
        state = {"off": "ToF mati", "absent": "ToF tidak terpasang", "n/a": "rekaman"}
        self.setWindowTitle(f"Stereo calibration capture - {os.path.basename(self.folder)} - "
                            + state.get(self.worker.tof_state, "memeriksa ToF..."))
        self.need.setText("Masih perlu: " + ", ".join(missing) if missing
                          else "Semua jenis pose sudah ada - tekan Calibrate")
        self.need.setStyleSheet("font-size: 12pt; color: %s;" % ("#d03b3b" if missing else "#2e9d48"))
        for view, img in zip(self.views, (left, right)):
            h, w, _ = img.shape
            pix = QPixmap.fromImage(QImage(img.data, w, h, 3 * w, QImage.Format_RGB888))
            view.setPixmap(pix.scaled(view.size(), Qt.KeepAspectRatio, Qt.FastTransformation))
        if saved:
            self.flash_until = time.time() + 1.0
        if time.time() < self.flash_until:
            self.status.setText(f"SAVED pair {count} of about {TARGET} - move the board")
        elif found and max(abs(tilt[0]), abs(tilt[1])) > STEEP_DEG:
            self.status.setText(f"{count} saved - TERLALU MIRING ({tilt[0]:+.0f} samping, {tilt[1]:+.0f} atas/bawah derajat): "
                                f"kurangi ke 25-40 derajat")
        elif found:
            self.status.setText(f"{count} saved - {tilt[2]} of {tilt[3]} corners, board tilted {tilt[0]:+.0f} sideways, "
                                f"{tilt[1]:+.0f} up/down degrees; hold it still (or it is too close to one already taken)")
        else:
            self.status.setText(f"{count} saved - board not visible in both cameras")

    def on_take(self):
        self.worker.force = True

    def on_undo(self):
        self.logic.undo()

    def on_calibrate(self):
        from source import FileSource
        self.report.show()
        lines = []
        try:
            c = calibrate.calibrate(FileSource(self.folder).pairs(), self.square.value(), lines.append)
            summary = calibrate.report(c, lines.append)
            calibrate.save(c, summary)
            lines.append(f"\ndisimpan: {calibrate.OUT_NPZ}")
        except (SystemExit, Exception) as e:
            lines.append(f"kalibrasi gagal: {e}")
        self.report.setPlainText("\n".join(lines))

    def closeEvent(self, event):
        self.worker.stop()
        event.accept()


def main():
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("name", nargs="?", default=time.strftime("calib_%Y%m%d_%H%M"))
    ap.add_argument("--square", type=float, default=target.DEFAULT_SQUARE["chessboard"],
                    help="measured square of the board in mm (9x6 chessboard: 27, numbered board: 38)")
    ap.add_argument("--source", help="replay a recording instead of the live cameras")
    args = ap.parse_args()
    app = QApplication(sys.argv[:1])
    win = Window(os.path.join(ROOT, "data", args.name), args.square, args.source)
    win.show()
    sys.exit(app.exec_())


if __name__ == "__main__":
    main()
