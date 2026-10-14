"""Guided wall test: laser dot, ToF and ruler at a list of distances.

    camwall                         distances 400 550 700 850 1000 mm
    camwall 400 600 800 1000        your own list

Point the rig squarely at a flat wall and put it at each listed distance,
measured with a ruler from the front of the camera modules to the wall. The
live ToF reading helps to find the spot. A sample is taken with the button of
its row (or, with "Ambil otomatis" ticked, by itself when the rig stands still
within reach of a distance that is not done yet):
the ToF is switched off, the laser dot is located in both cameras over 30
frames, then the ToF measures. When every distance is done the result is
saved as the alignment reference (calib/align_ref.json, the file `camalign`
checks against) and the three distance sources are compared.
"""
import contextlib
import io
import json
import os
import sys
import time
from collections import deque

import cv2
import numpy as np
from PyQt5.QtCore import Qt, QThread, pyqtSignal
from PyQt5.QtGui import QImage, QPixmap
from PyQt5.QtWidgets import (QApplication, QCheckBox, QDoubleSpinBox, QHBoxLayout, QLabel, QMainWindow,
                             QPlainTextEdit, QPushButton, QVBoxLayout, QWidget)

import align_check
from source import LiveSource
from stereo import charuco
from stereo.laser import measure

DEFAULT_TARGETS = [400, 550, 700, 850, 1000]
REACH_MM = 60            # ToF reading this close to a target counts as "there"
STILL_COUNT = 8          # ToF readings the position estimate is the median of
STILL_FRAMES = 25        # frames (about 1.7 s) the laser dot must stay put
STILL_PX = 1.5


def cross(img, x, y, color=(0, 255, 0), r=14):
    x, y = int(round(x)), int(round(y))
    for a, b in (((x - r, y), (x - 4, y)), ((x + 4, y), (x + r, y)),
                 ((x, y - r), (x, y - 4)), ((x, y + 4), (x, y + r))):
        cv2.line(img, a, b, color, 2)


class Worker(QThread):
    frame = pyqtSignal(np.ndarray, np.ndarray, object, bool, str)     # left, right, ToF mm, dot seen, note
    sampled = pyqtSignal(int, dict)                                   # target index, sample
    failed = pyqtSignal(str)

    def __init__(self, targets):
        super().__init__()
        self.targets = targets
        self.done = [None] * len(targets)
        self.ruler = {}                 # target index -> ruler value typed by the user
        self.running = True
        self.force = None               # target index to take now, regardless of the ToF reading
        self.recent = deque(maxlen=STILL_COUNT)
        self.dots = deque(maxlen=STILL_FRAMES)
        self.auto = False               # take a sample by itself when the rig stands still at a target
        self.square = charuco.SQUARE_MM  # measured square of the wall board
        self.corners = 0                # board corners both cameras see in the latest frame

    def pending_near(self, dist):
        """Index of the nearest unfinished target within reach of this distance, or None."""
        best = None
        for i, t in enumerate(self.targets):
            if self.done[i] is None and abs(dist - t) <= REACH_MM:
                if best is None or abs(dist - t) < abs(dist - self.targets[best]):
                    best = i
        return best

    def run(self):
        try:
            with LiveSource(tof="on", log=lambda m: None) as src:
                prev_age = 0.0
                for pair in src.pairs():
                    if not self.running:
                        break
                    m = measure(pair.left, pair.right)
                    left, right = pair.left.copy(), pair.right.copy()
                    board = charuco.find_pair(cv2.cvtColor(pair.left, cv2.COLOR_RGB2GRAY),
                                              cv2.cvtColor(pair.right, cv2.COLOR_RGB2GRAY))
                    charuco.draw(left, board, 0)
                    charuco.draw(right, board, 1)
                    self.corners = len(board)
                    if m is not None:
                        cross(left, m["xl"], m["yl"])
                        cross(right, m["xr"], m["yr"])
                    dist = pair.dist_mm if pair.tof_age_ms < 600 else None
                    # a reading is new when its age dropped since the previous frame
                    if dist is not None and pair.tof_age_ms < prev_age:
                        self.recent.append(dist)
                    elif dist is None:
                        self.recent.clear()
                    prev_age = pair.tof_age_ms

                    # Standing still is judged by the laser dot, which is steady to a
                    # fraction of a pixel; the ToF reading itself wanders by a
                    # centimetre or two and only says roughly where the rig is.
                    # Without the dot, a numbered corner of the wall board serves:
                    # the same corner must stay put (the number is part of the
                    # entry, so a change of corner also counts as movement).
                    if m is not None:
                        self.dots.append((-1000, m["xl"], m["yl"]))
                    elif len(board) >= charuco.MIN_CORNERS:
                        i = min(board)
                        self.dots.append((1000 * i, board[i][0], board[i][1]))
                    else:
                        self.dots.clear()
                    still = (len(self.dots) == self.dots.maxlen
                             and np.ptp(np.array(self.dots), axis=0).max() <= STILL_PX)

                    take, note = self.force, ""
                    self.force = None
                    if pair.tof_age_ms >= 600:
                        note = "ToF belum mengirim bacaan baru - sedang dipulihkan"
                    if self.auto and take is None and dist is not None and len(self.recent) == STILL_COUNT:
                        near = self.pending_near(float(np.median(self.recent)))
                        if near is not None and still:
                            take = near
                        elif near is not None:
                            note = f"di posisi {self.targets[near]} mm - tahan diam..."
                    if take is None:
                        self.frame.emit(left, right, dist, m is not None, note)
                        continue

                    self.frame.emit(left, right, dist, m is not None,
                                    f"MENGAMBIL sampel untuk {self.targets[take]} mm - jangan digerakkan")
                    src.service.pause_tof(True)            # emitter off: clean pictures
                    s = align_check.collect(src, 30, settle=0.4, board_square=self.square)
                    src.service.pause_tof(False)
                    self.recent.clear()
                    self.dots.clear()
                    if s is None:
                        self.frame.emit(left, right, dist, False, "titik laser maupun papan tidak terlihat; sampel batal")
                        continue
                    w = align_check.board_distance(s)
                    if w is not None:
                        s["board_stereo_mm"], s["board_mono_mm"], s["board_corners"] = w["stereo_mm"], w["mono_mm"], w["corners"]
                    s["target_mm"] = self.targets[take]
                    s["ruler_mm"] = float(self.ruler.get(take, self.targets[take]))
                    self.done[take] = s
                    self.sampled.emit(take, s)
        except (SystemExit, Exception) as e:
            self.failed.emit(str(e))

    def stop(self):
        self.running = False
        self.wait(6000)


class Window(QMainWindow):
    def __init__(self, targets):
        super().__init__()
        self.setWindowTitle("Uji dinding: laser, ToF dan penggaris")
        self.resize(1400, 780)
        self.targets = targets
        self.views = [QLabel(alignment=Qt.AlignCenter), QLabel(alignment=Qt.AlignCenter)]
        for v in self.views:
            v.setMinimumSize(400, 300)
            v.setStyleSheet("background-color: #202020;")
        self.tof = QLabel("ToF: --", alignment=Qt.AlignCenter)
        self.tof.setStyleSheet("font-size: 34pt; font-weight: bold;")
        self.hint = QLabel("menyiapkan kamera (hingga satu menit setelah power-up)...", alignment=Qt.AlignCenter)
        self.hint.setStyleSheet("font-size: 13pt;")
        self.hint.setWordWrap(True)
        self.rows = []
        self.spins = []
        self.buttons = []
        self.oks = []
        self.confirmed = [False] * len(targets)
        side = QVBoxLayout()
        side.addWidget(self.tof)
        side.addWidget(self.hint)
        self.truth = QCheckBox("Acuan jarak = bacaan ToF (tanpa penggaris, sampel langsung dikonfirmasi)")
        self.truth.toggled.connect(lambda on: [w.setEnabled(not on) for w in self.spins])
        side.addWidget(self.truth)
        self.auto = QCheckBox("Ambil otomatis saat rig diam di dekat jarak target")
        self.auto.toggled.connect(lambda on: setattr(self.worker, "auto", on))
        side.addWidget(self.auto)
        side.addWidget(QLabel("Jarak yang harus diambil (dengan penggaris: dari depan modul kamera ke dinding):"))
        for i, t in enumerate(targets):
            row = QHBoxLayout()
            label = QLabel(f"[  ]  {t} mm")
            label.setStyleSheet("font-size: 13pt;")
            spin = QDoubleSpinBox(decimals=0, minimum=100, maximum=3000, value=t, suffix=" mm")
            spin.setToolTip("ukuran penggaris sebenarnya di posisi ini, bila tidak tepat sama dengan target")
            btn = QPushButton("Ambil sekarang")
            btn.clicked.connect(lambda _, k=i: self.take(k))
            spin.valueChanged.connect(lambda v, k=i: self.worker.ruler.__setitem__(k, v))
            ok = QPushButton("Konfirmasi", enabled=False)
            ok.setToolTip("angka penggaris di baris ini sudah sesuai dengan posisi rig saat sampel diambil")
            ok.clicked.connect(lambda _, k=i: self.confirm(k))
            row.addWidget(label, 1)
            row.addWidget(QLabel("penggaris:"))
            row.addWidget(spin)
            row.addWidget(btn)
            row.addWidget(ok)
            side.addLayout(row)
            self.rows.append(label)
            self.spins.append(spin)
            self.buttons.append(btn)
            self.oks.append(ok)
        self.finish = QPushButton("Selesai sekarang dan simpan")
        self.finish.clicked.connect(self.complete)
        side.addWidget(self.finish)
        board_row = QHBoxLayout()
        self.board = QLabel("papan bernomor: belum terlihat")
        self.square = QDoubleSpinBox(decimals=1, minimum=10, maximum=100, value=charuco.SQUARE_MM, suffix=" mm")
        self.square.setToolTip("ukuran satu kotak papan bernomor pada cetakan, diukur dengan penggaris")
        self.square.valueChanged.connect(lambda v: setattr(self.worker, "square", v))
        board_row.addWidget(self.board, 1)
        board_row.addWidget(QLabel("kotak papan:"))
        board_row.addWidget(self.square)
        side.addLayout(board_row)
        self.report = QPlainTextEdit(readOnly=True)
        self.report.setStyleSheet("font-family: Consolas, monospace;")
        side.addWidget(self.report, 1)

        pictures = QVBoxLayout()
        for v in self.views:
            pictures.addWidget(v, 1)
        layout = QHBoxLayout()
        layout.addLayout(pictures, 1)
        layout.addLayout(side, 1)
        central = QWidget()
        central.setLayout(layout)
        self.setCentralWidget(central)

        self.saved = False
        self.worker = Worker(targets)
        self.worker.frame.connect(self.on_frame)
        self.worker.sampled.connect(self.on_sample)
        self.worker.failed.connect(lambda m: self.hint.setText(f"berhenti: {m}"))
        self.worker.start()

    def take(self, k):
        self.worker.ruler[k] = self.spins[k].value()
        self.worker.force = k

    def next_target(self):
        return next((t for t, d in zip(self.targets, self.worker.done) if d is None), None)

    def on_frame(self, left, right, dist, dot, note):
        for view, img in zip(self.views, (left, right)):
            h, w, _ = img.shape
            pix = QPixmap.fromImage(QImage(img.data, w, h, 3 * w, QImage.Format_RGB888))
            view.setPixmap(pix.scaled(view.size(), Qt.KeepAspectRatio, Qt.FastTransformation))
        if dist is not None:
            self.tof.setText(f"ToF: {dist:.0f} mm")
        else:
            self.tof.setText("ToF: --" if note.startswith("ToF") else "ToF: di luar jangkauan")
        n = self.worker.corners
        self.board.setText(f"papan bernomor: {n} dari {(charuco.COLS - 1) * (charuco.ROWS - 1)} sudut terlihat di kedua kamera"
                           if n else "papan bernomor: belum terlihat")
        if self.saved:
            return
        nxt = self.next_target()
        if note:
            self.hint.setText(note)
        elif nxt is None:
            self.hint.setText("semua jarak sudah terambil - periksa angka penggaris tiap baris lalu Konfirmasi")
        elif not dot and n < charuco.MIN_CORNERS:
            self.hint.setText("titik laser maupun papan bernomor belum terlihat di kedua kamera")
        elif dist is None:
            self.hint.setText(f"berikutnya {nxt} mm - ToF belum membaca dinding")
        else:
            k = self.worker.pending_near(dist)
            if k is not None:
                self.hint.setText(f"di posisi {self.targets[k]} mm - " + ("tahan diam, sampel diambil otomatis"
                                  if self.auto.isChecked() else "tekan 'Ambil sekarang' di baris itu"))
            else:
                delta = nxt - dist
                self.hint.setText(f"berikutnya {nxt} mm: " + (f"mundur sekitar {delta:.0f} mm" if delta > 0
                                                              else f"maju sekitar {-delta:.0f} mm"))

    def on_sample(self, k, s):
        # The sample was taken where the ToF said "near the target", which can
        # be several centimetres off. The ruler value therefore only counts
        # once the user has checked it against the rig's actual position.
        st = "--" if s.get("stereo_mm") is None else f"{s['stereo_mm']:.0f}"
        tf = "--" if s.get("dist_mm") is None else f"{s['dist_mm']:.0f}"
        if s.get("board_stereo_mm"):
            st += f", papan {s['board_stereo_mm']:.0f} ({s['board_corners']} sudut)"
        self.rows[k].setText(f"[ ? ]  {self.targets[k]} mm   stereo {st}, ToF {tf} - periksa angka penggaris")
        self.rows[k].setStyleSheet("font-size: 13pt; color: #b06000; font-weight: bold;")
        self.buttons[k].setText("Ulangi")
        self.oks[k].setEnabled(True)
        self.confirmed[k] = False
        self.worker.done[k] = s
        if self.truth.isChecked():          # nothing for the user to check: the ToF reading is the reference
            self.confirm(k)

    def confirm(self, k):
        s = self.worker.done[k]
        if s is None:
            return
        use_tof = self.truth.isChecked()
        if use_tof and s.get("dist_mm") is None:
            self.hint.setText("ToF tidak memberi bacaan pada sampel ini - tekan Ulangi, atau isi penggaris dan matikan acuan ToF")
            return
        # With the ToF as the reference there is no ruler value: the analysis
        # then compares against the ToF reading of the sample itself.
        s["ruler_mm"] = None if use_tof else float(self.spins[k].value())
        self.confirmed[k] = True
        st = "--" if s.get("stereo_mm") is None else f"{s['stereo_mm']:.0f}"
        if s.get("board_stereo_mm"):
            st += f", papan {s['board_stereo_mm']:.0f}"
        tf = "--" if s.get("dist_mm") is None else f"{s['dist_mm']:.0f}"
        ref = "acuan ToF" if use_tof else f"penggaris {s['ruler_mm']:.0f}"
        self.rows[k].setText(f"[OK]  {self.targets[k]} mm   stereo {st}, ToF {tf}, {ref}")
        self.rows[k].setStyleSheet("font-size: 13pt; color: #0a7a0a; font-weight: bold;")
        if all(self.confirmed):
            self.complete()

    def complete(self):
        samples = [d for d, c in zip(self.worker.done, self.confirmed) if d is not None and c]
        if not samples:
            self.hint.setText("belum ada sampel yang dikonfirmasi")
            return
        os.makedirs(os.path.dirname(align_check.REF_PATH), exist_ok=True)
        json.dump(dict(saved=time.strftime("%Y-%m-%d %H:%M:%S"), samples=samples),
                  open(align_check.REF_PATH, "w"), indent=1)
        out = io.StringIO()
        with contextlib.redirect_stdout(out):
            align_check.analyze(samples)
        self.report.setPlainText(f"acuan disimpan: {align_check.REF_PATH} ({len(samples)} sampel)\n" + out.getvalue())
        self.saved = len(samples) == len(self.targets)
        self.hint.setText("SELESAI - acuan tersimpan, hasil perbandingan di bawah" if self.saved
                          else "tersimpan sebagian; lanjutkan jarak yang belum, atau tutup jendela")

    def closeEvent(self, event):
        self.worker.stop()
        event.accept()


def main():
    targets = [int(a) for a in sys.argv[1:] if a.isdigit()] or DEFAULT_TARGETS
    app = QApplication(sys.argv[:1])
    win = Window(sorted(targets))
    win.show()
    if "--shot" in sys.argv:                 # for testing: save a screenshot and quit
        from PyQt5.QtCore import QTimer
        path = sys.argv[sys.argv.index("--shot") + 1]
        QTimer.singleShot(16000, lambda: (win.grab().save(path), win.close()))
    sys.exit(app.exec_())


if __name__ == "__main__":
    main()
