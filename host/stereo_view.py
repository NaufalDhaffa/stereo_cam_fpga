"""Live stereo view: rectified pair, depth map, laser dot and ToF distance.

    camstereo

The depth shown live comes from OpenCV's matcher, because the FPGA-style
model in stereo/disparity.py needs a few seconds per frame. "Freeze + FPGA
model" stops on the current pair and runs that model on it, so the two can be
compared on exactly the same picture.

Click in the left picture or the depth map to read the distance there.
"Measure ToF" switches the ToF sensor on for a moment (its emitter is visible
to the cameras, so it is off otherwise).
"""
import csv
import os
import sys
import threading
import time

import cv2
import numpy as np
from PIL import Image
from PyQt5.QtCore import Qt, QThread, QTimer, pyqtSignal
from PyQt5.QtGui import QImage, QPixmap
from PyQt5.QtWidgets import (QApplication, QComboBox, QGridLayout, QHBoxLayout, QLabel,
                             QMainWindow, QPushButton, QVBoxLayout, QWidget)

from pslink import ROOT
from record import FIELDS
from source import LiveSource
from stereo import calibrate, disparity, laser, reconstruct, rectify, stream
from stereo import params as P


# Live matchers (OpenCV), fastest first. The frame rate shown can never exceed
# what the cameras deliver.
MODES = {
    "fpga": "model FPGA langsung (persis yang dihitung RTL, lambat)",
    "half": "8 arah, 1/2 resolusi (cepat, tanpa coretan)",
    "hh4": "8 arah, resolusi penuh (detail, ~12 fps)",
    "hh": "8 arah teliti (paling lambat, ~4 fps)",
    "fast": "3 arah (cepat, ada coretan horizontal)",
}


class ClickLabel(QLabel):
    """Picture that reports clicks in image coordinates."""
    clicked = pyqtSignal(int, int)

    def __init__(self, title):
        super().__init__(title, alignment=Qt.AlignCenter)
        self.setMinimumSize(400, 300)
        self.setStyleSheet("background-color: #202020; color: #808080;")
        self.img_size = None

    def show_image(self, img):
        h, w, _ = img.shape
        self.img_size = (w, h)
        pix = QPixmap.fromImage(QImage(img.data, w, h, 3 * w, QImage.Format_RGB888))
        self.setPixmap(pix.scaled(self.size(), Qt.KeepAspectRatio, Qt.FastTransformation))

    def mousePressEvent(self, event):
        if self.img_size is None or self.pixmap() is None:
            return
        pw, ph = self.pixmap().width(), self.pixmap().height()
        x = event.x() - (self.width() - pw) // 2
        y = event.y() - (self.height() - ph) // 2
        if 0 <= x < pw and 0 <= y < ph:
            self.clicked.emit(int(x * self.img_size[0] / pw), int(y * self.img_size[1] / ph))


def cross(img, x, y, color, r=12):
    x, y = int(round(x)), int(round(y))
    cv2.line(img, (x - r, y), (x - 3, y), color, 2)
    cv2.line(img, (x + 3, y), (x + r, y), color, 2)
    cv2.line(img, (x, y - r), (x, y - 3), color, 2)
    cv2.line(img, (x, y + 3), (x, y + r), color, 2)


RAW_NEAR_MM, RAW_FAR_MM = 300, 2000


def raw_view(depth):
    """The 16-bit depth (mm) as a plain grey picture: nearer is brighter, unmeasured is black.

    No colour map and no smoothing: one grey level is (RAW_FAR_MM - RAW_NEAR_MM) / 255 mm.
    """
    g = 255.0 - (depth.astype(np.float32) - RAW_NEAR_MM) * (254.0 / (RAW_FAR_MM - RAW_NEAR_MM))
    g = np.where(depth > 0, np.clip(g, 1, 255), 0).astype(np.uint8)
    return cv2.cvtColor(g, cv2.COLOR_GRAY2RGB)


class Worker(QThread):
    frame = pyqtSignal(np.ndarray, np.ndarray, np.ndarray, np.ndarray, str)
    failed = pyqtSignal(str)

    def __init__(self):
        super().__init__()
        self.cal = calibrate.load()
        c = self.cal
        self.f, self.base = float(c["P1"][0, 0]), float(np.linalg.norm(c["T"]))
        self.cx, self.cy = float(c["P1"][0, 2]), float(c["P1"][1, 2])
        self.table = reconstruct.depth_table(self.f, self.base)
        self.valid = (disparity.valid_mask(*c["maps"][0]), disparity.valid_mask(*c["maps"][1]))
        self.running = True
        self.frozen = False
        self.want_fpga = False
        # which matcher runs live (see MODES); at 400 x 296 the full-size one is fast enough
        self.mode = "half" if P.WIDTH > 400 else "hh"
        self.okl = stream.left_mask(c)  # where the FPGA chain can produce a result at all
        self.probe = None               # (x, y) in the rectified left image
        self.tof = None                 # (mm, time)
        self.src = None
        self.last = None                # (pair, left, right, depth, method)
        self.fps = 0.0

    def measure_tof(self):
        def job():
            if self.src is not None:
                self.tof = (self.src.measure_distance(8), time.time())
        threading.Thread(target=job, daemon=True).start()

    def _depth_at(self, depth, x, y, r=4):
        p = depth[max(y - r, 0):y + r + 1, max(x - r, 0):x + r + 1]
        return float(np.median(p[p > 0])) if (p > 0).any() else None

    def _show(self, pair, left, right, depth, method, disp):
        lv, rv = left.copy(), right.copy()
        dv = reconstruct.colorize_depth(depth)
        raw = raw_view(depth)
        notes = [f"{method}  {self.fps:.1f} fps  valid {100 * (depth > 0).mean():.0f}%"]
        m = laser.measure(pair.left, pair.right)
        if m is not None:
            pl = calibrate.rectify_points(self.cal, [[m["xl"], m["yl"]]], 0)[0]
            pr = calibrate.rectify_points(self.cal, [[m["xr"], m["yr"]]], 1)[0]
            d = pl[0] - pr[0]
            z_map = self._depth_at(depth, int(round(pl[0])), int(round(pl[1])))
            # After rectification the same point lies on the same row in both
            # images. If the two detections are rows apart, they are not the
            # same point: the dot is smeared (grazing surface, motion) and its
            # distance must not be trusted.
            sure = abs(pl[1] - pr[1]) <= 3.0 and d > 1
            color = (0, 255, 0) if sure else (255, 160, 0)
            cross(lv, pl[0], pl[1], color)
            cross(rv, pr[0], pr[1], color)
            cross(dv, pl[0], pl[1], (255, 255, 255))
            notes.append(f"laser: titik {self.f * self.base / d:.0f} mm" if sure
                         else f"laser: tidak pasti (selisih baris {pl[1] - pr[1]:+.1f} px)")
            notes.append("peta di laser: " + ("--" if z_map is None else f"{z_map:.0f} mm"))
        else:
            notes.append("laser: tidak terlihat")
        if self.tof is not None:
            mm, when = self.tof
            notes.append("ToF: " + ("di luar jangkauan" if mm is None else f"{mm:.0f} mm")
                         + f" ({time.time() - when:.0f} dtk lalu)")
        if self.probe is not None:
            x, y = self.probe
            z = self._depth_at(depth, x, y)
            for v in (lv, dv, raw):
                cross(v, x, y, (255, 255, 0))
            notes.append(f"klik ({x},{y}): " + ("--" if z is None else f"{z:.0f} mm"))
            # the numbers exactly as they would leave the FPGA, at that one pixel
            notes.append(f"raw di piksel itu: depth {int(depth[y, x])} mm (uint16), disparitas {int(disp[y, x])} "
                         f"(= {disp[y, x] / 16:.2f} px)" if disp[y, x] else "raw di piksel itu: 0 (tidak terukur)")
        ok = depth[depth > 0]
        if ok.size:
            notes.append(f"raw depth: min {ok.min()}, median {int(np.median(ok))}, maks {ok.max()} mm")
        self.frame.emit(lv, rv, dv, raw, "   |   ".join(notes))

    def run(self):
        c = self.cal
        try:
            with LiveSource(log=lambda m: None) as src:
                self.src = src
                t_prev = time.time()
                for pair in src.pairs():
                    if not self.running:
                        break
                    if self.frozen:
                        if self.want_fpga and self.last is not None:
                            self.want_fpga = False
                            p, left, right = self.last[:3]
                            t0 = time.time()
                            # from the raw pair, through the logic's own rectification
                            d = stream.finished(stream.matched(p.left, p.right, c)[0], self.okl)
                            depth = reconstruct.depth_mm(d, self.table)
                            self.last = (p, left, right, depth, f"model FPGA ({time.time() - t0:.1f} dtk)", d)
                        if self.last is not None:
                            self._show(*self.last)
                        continue
                    left = rectify.rectify_ref(pair.left, *c["maps"][0])
                    right = rectify.rectify_ref(pair.right, *c["maps"][1])
                    mode = self.mode
                    if mode == "fpga":
                        d = stream.finished(stream.matched(pair.left, pair.right, c)[0], self.okl)
                    else:
                        d = disparity.reference(left, right, mode=mode)
                        d[~self.valid[0]] = 0
                    depth = reconstruct.depth_mm(d, self.table)
                    now = time.time()
                    self.fps = 0.8 * self.fps + 0.2 / max(now - t_prev, 1e-3)
                    t_prev = now
                    self.last = (pair, left, right, depth, MODES[mode], d)
                    self._show(*self.last)
        except (SystemExit, Exception) as e:
            self.failed.emit(str(e))

    def save(self):
        """Current pair, its depth picture and point cloud into data/snap_<time>/."""
        if self.last is None:
            return None
        pair, left, _, depth, _, disp = self.last
        folder = os.path.join(ROOT, "data", time.strftime("snap_%Y%m%d_%H%M%S"))
        os.makedirs(folder, exist_ok=True)
        Image.fromarray(pair.left).save(os.path.join(folder, "L_0000.png"))
        Image.fromarray(pair.right).save(os.path.join(folder, "R_0000.png"))
        raw_tof = None
        if self.tof is not None and self.tof[0] is not None and time.time() - self.tof[1] < 30:
            raw_tof = round(self.tof[0] + (pair.tof_mm - pair.dist_mm if pair.dist_mm is not None else 13.5))
        with open(os.path.join(folder, "index.csv"), "w", newline="") as f:
            out = csv.DictWriter(f, FIELDS)
            out.writeheader()
            out.writerow(dict(index=0, t_left_us=pair.t_left_us, t_right_us=pair.t_right_us,
                              phase_us=pair.phase_us, tof_mm="" if raw_tof is None else raw_tof,
                              tof_age_ms="0.0"))
        xyz = reconstruct.points(depth, self.f, self.cx, self.cy)
        mask = (depth > 0) & (depth < 5000)
        Image.fromarray(np.hstack((left, reconstruct.colorize_depth(depth)))).save(
            os.path.join(folder, "depth.png"))
        reconstruct.write_ply(os.path.join(folder, "cloud.ply"), xyz, left, mask)
        # The raw numbers, unscaled: depth in mm and disparity in 1/16 pixel,
        # both 16-bit with 0 = not measured, on the rectified left picture's grid.
        cv2.imwrite(os.path.join(folder, "depth_mm.png"), depth.astype(np.uint16))
        cv2.imwrite(os.path.join(folder, "disparity_q4.png"), disp.astype(np.uint16))
        np.save(os.path.join(folder, "depth_mm.npy"), depth.astype(np.uint16))
        Image.fromarray(left).save(os.path.join(folder, "left_rect.png"))
        with open(os.path.join(folder, "raw.txt"), "w") as f:
            f.write(f"depth_mm.png / depth_mm.npy : uint16, millimetres, 0 = not measured, {depth.shape[1]} x {depth.shape[0]}\n"
                    f"disparity_q4.png            : uint16, 1/16 pixel, 0 = not measured\n"
                    f"left_rect.png               : rectified left picture, same pixel grid\n"
                    f"focal_px {self.f:.3f}  baseline_mm {self.base:.3f}  cx {self.cx:.2f}  cy {self.cy:.2f}\n"
                    f"depth_mm = focal_px * baseline_mm * 16 / disparity_q4\n")
        return folder

    def stop(self):
        self.running = False
        self.wait(5000)


class Window(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("Stereo depth (EBAZ4205 + 2x OV2640)")
        self.resize(1320, 900)
        self.left = ClickLabel("starting (up to a minute after power-up)...")
        self.right = ClickLabel("")
        self.depth = ClickLabel("")
        self.raw = ClickLabel("")
        self.legend = QLabel("Kiri bawah: peta jarak berwarna (merah = dekat 0,3 m, biru = jauh 2 m). "
                             "Kanan bawah: depth raw 16-bit dalam mm sebagai abu-abu (terang = dekat, hitam = tidak terukur). "
                             "Klik gambar untuk membaca jarak dan angka raw di titik itu. "
                             "Silang hijau = titik laser; jingga = tidak pasti. Save juga menyimpan depth_mm.png/.npy.",
                             alignment=Qt.AlignCenter)
        self.legend.setWordWrap(True)
        self.status = QLabel("")
        self.status.setStyleSheet("font-size: 11pt; font-weight: bold;")
        self.status.setWordWrap(True)
        self.freeze = QPushButton("Freeze + FPGA model")
        self.live = QPushButton("Live", enabled=False)
        self.tof = QPushButton("Measure ToF")
        self.save = QPushButton("Save")
        self.fast = QComboBox()
        for key, text in MODES.items():
            self.fast.addItem(text, key)
        self.fast.currentIndexChanged.connect(
            lambda i: setattr(self.worker, "mode", self.fast.itemData(i)))

        grid = QGridLayout()
        grid.addWidget(self.left, 0, 0)
        grid.addWidget(self.right, 0, 1)
        grid.addWidget(self.depth, 1, 0)
        grid.addWidget(self.raw, 1, 1)
        buttons = QHBoxLayout()
        for b in (self.freeze, self.live, self.tof, self.save, self.fast):
            buttons.addWidget(b)
        layout = QVBoxLayout()
        layout.addLayout(grid, 1)
        layout.addWidget(self.legend)
        layout.addWidget(self.status)
        layout.addLayout(buttons)
        central = QWidget()
        central.setLayout(layout)
        self.setCentralWidget(central)

        self.worker = Worker()

        self.fast.setCurrentIndex(self.fast.findData(self.worker.mode))
        self.worker.frame.connect(self.on_frame)
        self.worker.failed.connect(lambda m: self.status.setText(f"berhenti: {m}"))
        self.left.clicked.connect(self.on_click)
        self.depth.clicked.connect(self.on_click)
        self.raw.clicked.connect(self.on_click)
        self.freeze.clicked.connect(self.on_freeze)
        self.live.clicked.connect(self.on_live)
        self.tof.clicked.connect(self.worker.measure_tof)
        self.save.clicked.connect(self.on_save)
        self.note = ""
        self.worker.start()

    def on_frame(self, left, right, depth, raw, text):
        self.left.show_image(left)
        self.right.show_image(right)
        self.depth.show_image(depth)
        self.raw.show_image(raw)
        self.status.setText(text + (f"\n{self.note}" if self.note else ""))

    def on_click(self, x, y):
        self.worker.probe = (x, y)

    def on_freeze(self):
        self.worker.frozen = True
        self.worker.want_fpga = True
        self.live.setEnabled(True)
        self.note = "dibekukan; model FPGA sedang dihitung (beberapa detik)..."

    def on_live(self):
        self.worker.frozen = False
        self.live.setEnabled(False)
        self.note = ""

    def on_save(self):
        folder = self.worker.save()
        self.note = "belum ada frame" if folder is None else f"disimpan: {folder}"

    def closeEvent(self, event):
        self.worker.stop()
        event.accept()


def main():
    if not os.path.exists(calibrate.OUT_NPZ):
        raise SystemExit(f"belum ada kalibrasi ({calibrate.OUT_NPZ}); jalankan camcalib dulu")
    app = QApplication(sys.argv[:1])
    win = Window()
    win.show()
    if "--shot" in sys.argv:                 # for testing: save a screenshot and quit
        path = sys.argv[sys.argv.index("--shot") + 1]
        QTimer.singleShot(14000, lambda: (win.grab().save(path), win.close()))
    sys.exit(app.exec_())


if __name__ == "__main__":
    main()
