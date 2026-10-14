"""The flat Tiny Tapeout layout with every block's cells tinted in the block's colour, the
block names where their cells lie, and a legend: as on an annotated die photo.

    python asic/annotate_tt.py [tiles, default 4x2]

Reads asic/out_tt_<tiles>/layout.png and cells.json (made by asic/tt.py in WSL);
writes layout_annotated.png (title, legend) and layout_blocks.png (the layout and the block
names only), each with a small copy.
"""
import json
import os
import sys

import cv2
import numpy as np

HERE = os.path.dirname(os.path.abspath(__file__))
TILES = sys.argv[1] if len(sys.argv) > 1 else "4x2"
OUT = os.path.join(HERE, "out_tt_" + TILES)
COLOURS = [(80, 200, 255), (90, 255, 140), (255, 190, 80), (255, 120, 200), (120, 160, 255)]      # BGR
FONT = cv2.FONT_HERSHEY_SIMPLEX


def main():
    d = json.load(open(os.path.join(OUT, "cells.json")))
    img = cv2.imread(os.path.join(OUT, "layout.png"))
    if img is None:
        raise SystemExit(OUT + "/layout.png not found: run asic/tt.py in WSL first")
    die_w, die_h = d["die"]
    h, w = img.shape[:2]
    sx, sy = w / die_w, h / die_h
    k = w / 3200
    tint = np.zeros_like(img)
    mask = np.zeros((h, w), np.uint8)
    cells = np.array(d["cells"], float)
    for x, y, cw, ch, b in cells:
        if b < 0:
            continue
        p0, p1 = (int(x * sx), h - int((y + ch) * sy)), (int((x + cw) * sx), h - int(y * sy))
        cv2.rectangle(tint, p0, p1, COLOURS[int(b)], -1)
        cv2.rectangle(mask, p0, p1, 255, -1)
    grey = cv2.cvtColor(cv2.cvtColor(img, cv2.COLOR_BGR2GRAY), cv2.COLOR_GRAY2BGR)
    out = (grey * 0.45).astype(np.uint8)
    m = mask > 0
    out[m] = (grey[m] * 0.45 + tint[m] * 0.55).astype(np.uint8)
    stats = []
    for i, name in enumerate(d["blocks"]):
        c = cells[cells[:, 4] == i]
        area = float((c[:, 2] * c[:, 3]).sum())
        stats.append((len(c), area))
        if not len(c):
            continue
        cx, cy = np.median(c[:, 0]), np.median(c[:, 1])
        s = 1.5 * k
        (tw, th), _ = cv2.getTextSize(name, FONT, s, 3)
        x0, y0 = int(cx * sx - tw / 2), h - int(cy * sy)
        x0 = min(max(x0, 10), w - tw - 20)
        cv2.rectangle(out, (x0 - 10, y0 - th - 12), (x0 + tw + 10, y0 + 12), (0, 0, 0), -1)
        cv2.rectangle(out, (x0 - 10, y0 - th - 12), (x0 + tw + 10, y0 + 12), COLOURS[i], 3)
        cv2.putText(out, name, (x0, y0), FONT, s, COLOURS[i], 3, cv2.LINE_AA)
    cv2.rectangle(out, (0, 0), (w - 1, h - 1), (230, 230, 230), 4)
    # the layout with its block names only, no title and no legend
    cv2.imwrite(os.path.join(OUT, "layout_blocks.png"), out)
    cv2.imwrite(os.path.join(OUT, "layout_blocks_small.png"), cv2.resize(out, (w // 2, h // 2), interpolation=cv2.INTER_AREA))
    top = np.zeros((int(190 * k), w, 3), np.uint8)
    cv2.putText(top, "Irisan matcher stereo  (tt_um_stereo_slice)", (30, int(80 * k)), FONT, 1.8 * k, (240, 240, 240), 3, cv2.LINE_AA)
    n_all, a_all = sum(s[0] for s in stats), sum(s[1] for s in stats)
    cv2.putText(top, f"SkyWater 130 nm  -  Tiny Tapeout {TILES} petak  -  {die_w:.2f} x {die_h:.2f} um  -  "
                f"{n_all} sel, {a_all / 1000:.0f}k um2 ({100 * a_all / (die_w * die_h):.0f}% die)",
                (30, int(150 * k)), FONT, 1.0 * k, (190, 190, 190), 2, cv2.LINE_AA)
    bot = np.zeros((int(70 * k) * (len(stats) + 1) + 40, w, 3), np.uint8)
    y = int(60 * k)
    for i, (name, text) in enumerate(zip(d["blocks"], d["text"])):
        cv2.rectangle(bot, (30, y - int(34 * k)), (30 + int(60 * k), y + int(6 * k)), COLOURS[i], -1)
        cv2.putText(bot, f"{name}   {text}   -   {stats[i][0]} sel, {stats[i][1] / 1000:.1f}k um2",
                    (50 + int(60 * k), y), FONT, 1.0 * k, (235, 235, 235), 2, cv2.LINE_AA)
        y += int(70 * k)
    bar = int(100 * sx)
    cv2.rectangle(bot, (w - bar - 240, 40), (w - 240, 52), (240, 240, 240), -1)
    cv2.putText(bot, "100 um", (w - 220, 58), FONT, 1.0 * k, (240, 240, 240), 2, cv2.LINE_AA)
    cv2.putText(bot, "pin proyek: tepi atas (met4)", (w - bar - 240, 110), FONT, 0.8 * k, (190, 190, 190), 2, cv2.LINE_AA)
    full = np.vstack((top, out, bot))
    path = os.path.join(OUT, "layout_annotated.png")
    cv2.imwrite(path, full)
    cv2.imwrite(os.path.join(OUT, "layout_annotated_small.png"),
                cv2.resize(full, (w // 2, full.shape[0] // 2), interpolation=cv2.INTER_AREA))
    print(path)


if __name__ == "__main__":
    main()
