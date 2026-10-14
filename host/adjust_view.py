"""Live guide for turning a camera back to where the calibration expects it.

    camadjust                     live cameras
    camadjust --source data/x     replay a recording
    camadjust --square 27

Hold the calibration board (9 x 6 inner corners) in front of both cameras.
The window then says, for pitch, yaw and roll, which way the chosen camera has
to be turned and by how much, and turns green when it is within tolerance.

Without the board only pitch and roll are shown, from features in the scene;
yaw cannot be told apart from distance that way.
"""
import argparse
import collections
import sys

import cv2
import numpy as np
from PyQt5.QtCore import Qt, QThread, pyqtSignal
from PyQt5.QtGui import QImage, QPixmap
from PyQt5.QtWidgets import (QApplication, QComboBox, QDoubleSpinBox, QGridLayout, QHBoxLayout, QLabel,
                             QMainWindow, QVBoxLayout, QWidget)

from source import open_source
from stereo import adjust, calibrate, target

OK_DEG = 0.10            # within this: leave it
NEAR_DEG = 0.30          # within this: a very small turn
AVERAGE = 12             # measurements in the running median

# axis -> (name, text for a positive correction, text for a negative one)
AXES = (("pitch", "PITCH", "dongakkan (lensa ke ATAS)", "tundukkan (lensa ke BAWAH)"),
        ("yaw", "YAW", "putar ke KANAN", "putar ke KIRI"),
        ("roll", "ROLL", "putar SEARAH jarum jam", "putar BERLAWANAN jarum jam"))


def advice(value, positive, negative):
    """(text, colour) for one axis."""
    if value is None:
        return "butuh papan catur", "#808080"
    if abs(value) <= OK_DEG:
        return "OK", "#2e9d48"
    text = positive if value > 0 else negative
    return ("sedikit " + text if abs(value) <= NEAR_DEG else text), ("#c98a00" if abs(value) <= NEAR_DEG else "#d03b3b")


class Worker(QThread):
    frame = pyqtSignal(np.ndarray, np.ndarray, object)
    failed = pyqtSignal(str)

    def __init__(self, cal, source_spec):
        super().__init__()
        self.cal, self.spec = cal, source_spec
        self.square = target.square_for(cal["target"], cal)
        self.running = True
        self.history = collections.deque(maxlen=AVERAGE)
        self.mode = None

    def measure(self, pair):
        """(mode, values, corners): mode 'board' or 'scene', values None when nothing was found."""
        gl = cv2.cvtColor(pair.left, cv2.COLOR_RGB2GRAY)
        gr = cv2.cvtColor(pair.right, cv2.COLOR_RGB2GRAY)
        values, found = adjust.from_board(self.cal, gl, gr, self.square)
        if found is not None:
            return "board", values, found
        maps = self.cal["maps"]
        rl = cv2.remap(gl, maps[0][0], maps[0][1], cv2.INTER_LINEAR)
        rr = cv2.remap(gr, maps[1][0], maps[1][1], cv2.INTER_LINEAR)
        return "scene", adjust.from_scene(self.cal, rl, rr), None

    def run(self):
        try:
            with open_source(self.spec) as src:
                for pair in src.pairs():
                    if not self.running:
                        break
                    mode, values, found = self.measure(pair)
                    if mode != self.mode:
                        self.history.clear()
                        self.mode = mode
                    if values is not None:
                        self.history.append(values)
                    left, right = pair.left.copy(), pair.right.copy()
                    if found is not None:
                        target.draw(left, found, 0)
                        target.draw(right, found, 1)
                    out = None
                    if self.history:
                        keys = self.history[0].keys()
                        out = {k: float(np.median([h[k] for h in self.history])) for k in keys}
                        out["spread"] = {k: float(np.std([h[k] for h in self.history])) for k in ("pitch", "roll")}
                        out["mode"], out["count"] = mode, len(self.history)
                    self.frame.emit(left, right, out)
        except (SystemExit, Exception) as e:
            self.failed.emit(str(e))

    def stop(self):
        self.running = False
        self.wait(5000)


class Window(QMainWindow):
    def __init__(self, cal, source_spec, square):
        super().__init__()
        self.setWindowTitle("Penyetelan arah kamera terhadap kalibrasi")
        self.resize(1300, 820)
        self.cal = cal
        self.views = [QLabel(alignment=Qt.AlignCenter), QLabel(alignment=Qt.AlignCenter)]
        for v in self.views:
            v.setMinimumSize(400, 300)
            v.setStyleSheet("background-color: #202020;")
        self.status = QLabel("memulai...")
        self.status.setStyleSheet("font-size: 12pt;")
        self.which = QComboBox()
        self.which.addItems(["kamera KANAN (cam1)", "kamera KIRI (cam0)"])
        self.square = QDoubleSpinBox(decimals=2, minimum=5, maximum=100, value=square, suffix=" mm")

        grid = QGridLayout()
        self.rows = {}
        for i, (key, title, _, _) in enumerate(AXES):
            name = QLabel(title)
            name.setStyleSheet("font-size: 16pt; font-weight: bold;")
            value = QLabel("-")
            value.setStyleSheet("font-size: 16pt; font-family: Consolas;")
            value.setMinimumWidth(260)
            text = QLabel("-")
            text.setStyleSheet("font-size: 16pt; font-weight: bold; color: white; background-color: #808080; padding: 6px;")
            grid.addWidget(name, i, 0)
            grid.addWidget(value, i, 1)
            grid.addWidget(text, i, 2)
            self.rows[key] = (value, text)
        grid.setColumnStretch(2, 1)

        pictures = QHBoxLayout()
        for v in self.views:
            pictures.addWidget(v, 1)
        options = QHBoxLayout()
        options.addWidget(QLabel("Yang diatur:"))
        options.addWidget(self.which)
        kind = "bernomor (ChArUco)" if cal["target"] == "charuco" else "catur 9x6"
        other = "catur 9x6: 27 mm" if cal["target"] == "charuco" else f"bernomor: {target.DEFAULT_SQUARE['charuco']:g} mm"
        options.addWidget(QLabel(f"Kotak papan {kind}:"))
        self.square.setToolTip(f"ukuran kotak papan yang dipakai saat kalibrasi; papan lain memakai ukuran bawaannya ({other})")
        options.addWidget(self.square)
        options.addStretch(1)
        options.addWidget(QLabel(f"toleransi {OK_DEG:g} derajat = {adjust.pixels(cal, OK_DEG):.1f} px"))
        layout = QVBoxLayout()
        layout.addLayout(pictures, 1)
        layout.addWidget(self.status)
        layout.addLayout(grid)
        layout.addLayout(options)
        central = QWidget()
        central.setLayout(layout)
        self.setCentralWidget(central)

        self.worker = Worker(cal, source_spec)
        self.square.valueChanged.connect(lambda v: setattr(self.worker, "square", v))
        self.worker.frame.connect(self.on_frame)
        self.worker.failed.connect(lambda m: self.status.setText(f"berhenti: {m}"))
        self.worker.start()

    def on_frame(self, left, right, out):
        for view, img in zip(self.views, (left, right)):
            h, w, _ = img.shape
            pix = QPixmap.fromImage(QImage(img.data, w, h, 3 * w, QImage.Format_RGB888))
            view.setPixmap(pix.scaled(view.size(), Qt.KeepAspectRatio, Qt.FastTransformation))
        if out is None:
            self.status.setText("belum ada ukuran: perlihatkan papan catur ke kedua kamera, atau adegan bertekstur")
            for value, text in self.rows.values():
                value.setText("-")
                text.setText("-")
            return
        # Turning the left camera the other way has the same effect on the pair.
        sign = 1.0 if self.which.currentIndex() == 0 else -1.0
        for key, _, positive, negative in AXES:
            v = out.get(key)
            v = None if v is None else sign * v
            value, text = self.rows[key]
            value.setText("-" if v is None else f"{v:+.2f} derajat ({adjust.pixels(self.cal, v):+.1f} px)")
            words, colour = advice(v, positive, negative)
            text.setText(words)
            text.setStyleSheet(f"font-size: 16pt; font-weight: bold; color: white; background-color: {colour}; padding: 6px;")
        if out["mode"] == "board":
            self.status.setText(f"papan terlihat pada {out['distance']:.0f} mm ({out['corners']:.0f} sudut), "
                                f"rata-rata {out['count']} ukuran, "
                                f"sisa {out['residual']:.2f} px" +
                                ("  -  sisa besar: kamera mungkin juga bergeser, kalibrasi ulang" if out["residual"] > 1.0 else ""))
        else:
            self.status.setText(f"tanpa papan: {out['matches']:.0f} fitur adegan, selisih baris {out['row_offset']:+.2f} px "
                                "(yaw butuh papan catur)")

    def closeEvent(self, event):
        self.worker.stop()
        event.accept()


def main():
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("--source", help="replay a recording instead of the live cameras")
    ap.add_argument("--square", type=float, help="board square in mm (default: the one used for calibration)")
    ap.add_argument("--calib", default=calibrate.OUT_NPZ)
    args = ap.parse_args()
    cal = calibrate.load(args.calib)
    square = args.square or target.square_for(cal["target"], cal)
    app = QApplication(sys.argv[:1])
    win = Window(cal, args.source, square)
    win.worker.square = square
    win.show()
    sys.exit(app.exec_())


if __name__ == "__main__":
    main()
