#!/usr/bin/env python3
"""Two block diagrams for the documents, in the style of block_diagram.py:

    python asic/chip/system_diagram.py

  out/system_diagram.png   the system: two cameras, the FPGA front end (capture, luma and binning,
                           line buffer, rectification, census, hub), the chain of chips, the
                           left-right check and the USB camera stream
  out/module_diagram.png   the chip as modules: pad ring (cells of the PDK) around the core, the
                           five macros of the slice and the glue, with the numbers of each
"""
import os

import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt                      # noqa: E402
from matplotlib.patches import FancyBboxPatch, Rectangle   # noqa: E402

OUT = os.path.join(os.path.dirname(os.path.abspath(__file__)), "out")
LW = 1.4


def box(ax, x0, y0, x1, y1, text, size=9, fc="white", ls="-", bold=False):
    ax.add_patch(Rectangle((x0, y0), x1 - x0, y1 - y0, fc=fc, ec="black", lw=LW, ls=ls, zorder=3))
    ax.text((x0 + x1) / 2, (y0 + y1) / 2, text, ha="center", va="center", fontsize=size, zorder=4,
            fontweight="bold" if bold else "normal")


def arrow(ax, pts, label=None, ls="-", lpos=0.5, dy=0.9):
    xs, ys = zip(*pts)
    ax.plot(xs, ys, color="black", lw=LW, ls=ls, zorder=2)
    (xa, ya), (xb, yb) = pts[-2], pts[-1]
    ax.annotate("", xy=(xb, yb), xytext=(xa + (xb - xa) * 0.7, ya + (yb - ya) * 0.7),
                arrowprops=dict(arrowstyle="-|>", color="black", lw=LW, mutation_scale=13), zorder=2)
    if label:
        (xa, ya), (xb, yb) = pts[0], pts[1]
        ax.text(xa + (xb - xa) * lpos, ya + (yb - ya) * lpos + dy, label, ha="center", fontsize=7.5, zorder=4)


def system():
    fig, ax = plt.subplots(figsize=(16, 7.6))
    ax.set_xlim(0, 112)
    ax.set_ylim(0, 52)
    ax.axis("off")
    ax.text(1, 50, "System block diagram - stereo depth camera with the stereo_slice_chip", fontsize=13, fontweight="bold")
    # cameras
    box(ax, 1, 33, 11, 40, "OV2640\nleft camera", 8.5)
    box(ax, 1, 20, 11, 27, "OV2640\nright camera", 8.5)
    # FPGA
    ax.add_patch(FancyBboxPatch((14, 8), 66, 38, boxstyle="round,pad=0.3", fc="#f4f6fb", ec="0.4", lw=1.2, ls=(0, (5, 3))))
    ax.text(15, 44.6, "FPGA (Zynq XC7Z010, EBAZ4205): front end and hub", fontsize=9.5, color="0.25")
    stages = ["capture\n(cam_capture)\n200 MHz", "luma + 2x2\nbinning\n200 x 148",
              "line buffer\n16-line ring\n(rect_linebuf)", "rectification\n(bilinear,\ntables)",
              "census\n44-bit signature\n(9 x 17 window)"]
    for y0 in (33, 20):
        for k, t in enumerate(stages):
            x0 = 15.5 + k * 10.4
            box(ax, x0, y0, x0 + 8.6, y0 + 7, t, 7.4)
            if k:
                arrow(ax, [(x0 - 1.8, y0 + 3.5), (x0, y0 + 3.5)])
        arrow(ax, [(11, y0 + 3.5), (15.5, y0 + 3.5)], "DVP 8 bit")
    box(ax, 69, 18, 78.5, 42, "FIFO 256\n+\nchain_hub\n\ndown-link\n7 bit / clock\n\nleft-right\ncheck", 7.8)
    arrow(ax, [(65.7, 36.5), (69, 36.5)])
    arrow(ax, [(65.7, 23.5), (69, 23.5)])
    # chips
    ax.add_patch(FancyBboxPatch((84, 22), 15, 22, boxstyle="round,pad=0.3", fc="#fff7e6", ec="#b06d00", lw=1.4))
    ax.text(91.5, 42.4, "chain of N chips", ha="center", fontsize=8.5, color="#8a5200")
    box(ax, 85.5, 34, 97.5, 40, "stereo_slice_chip\nslice 1: d 23-38", 7.8, fc="#ffe9bf", bold=True)
    box(ax, 85.5, 25, 97.5, 31, "stereo_slice_chip\nslice 0: d 7-22", 7.8, fc="#ffe9bf", bold=True)
    arrow(ax, [(78.5, 33), (85.5, 37)])
    ax.text(79, 34.6, "ui_in\n(down-link)", fontsize=7.5)
    arrow(ax, [(78.5, 31), (85.5, 28)])
    arrow(ax, [(91.5, 31), (91.5, 34)])
    ax.text(92.2, 32.2, "up-link", fontsize=7.5)
    arrow(ax, [(97.5, 37), (100.5, 37), (100.5, 46.5), (73.75, 46.5), (73.75, 42)], None)
    ax.text(101, 41, "uo_out\n(disparity)", fontsize=7.5)
    # output
    box(ax, 84, 8, 99, 15, "payload (frame_format)\n-> USB FX2LP (UVC)\n-> PC: depth image", 7.8)
    arrow(ax, [(73.75, 18), (73.75, 11.5), (84, 11.5)])
    ax.text(1, 3, "The chip holds no image and no line memory: the hub on the FPGA keeps the rows (16-line ring buffers) and "
            "sends each slice the signatures it needs; each slice adds 16 disparities.", fontsize=8.5, color="0.3")
    fig.savefig(os.path.join(OUT, "system_diagram.png"), dpi=170, bbox_inches="tight", facecolor="white")


def modules():
    fig, ax = plt.subplots(figsize=(15, 9))
    ax.set_xlim(0, 100)
    ax.set_ylim(0, 60)
    ax.axis("off")
    ax.text(1, 58, "Module diagram - stereo_slice_chip (top level, 1151 x 1151 um)", fontsize=13, fontweight="bold")
    ax.add_patch(Rectangle((1, 2), 98, 53, fc="none", ec="black", lw=2.2))
    # pad ring
    ax.add_patch(Rectangle((3, 4), 94, 49, fc="#eef2f7", ec="0.35", lw=1.2))
    ax.text(4, 50.8, "pad ring (sky130_ef_io, cells of the PDK)", fontsize=9, color="0.25")
    box(ax, 4, 41, 22, 49.5, "26 x gpiov2_pad\n(8 ui_in, 8 uio_in,\n8 uo_out, clk, rst_n)\n+ 26 tie cells", 8)
    box(ax, 4, 30, 22, 38.5, "6 supply pads\n2 VCCD, 2 VSSD (1.8 V)\nVDDIO, VSSIO (3.3 V)", 8)
    box(ax, 4, 19, 22, 27.5, "connect slice 20 um\nVCCHIB->VCCD\nVSWITCH->VDDIO\n+ met3 jumpers\nVDDA->VDDIO, VSSA->VSSIO", 7.5)
    box(ax, 4, 8, 22, 16.5, "4 corners\n113 ring fillers\n(com_bus slices)", 8)
    # core
    ax.add_patch(Rectangle((25, 6), 70, 45, fc="white", ec="0.3", lw=1.3, ls=(0, (5, 3))))
    ax.text(26, 49, "core: power ring VCCD / VSSD (met4 + met5, 10 um), straps every 60 um", fontsize=9, color="0.25")
    specs = [("slice_ctrl", "down-link receiver, settings,\nslot clock and flags", "549 cells, 174 FF, 10 ICG\n86.0 x 182.2 um"),
             ("slice_cost", "16 right signatures, Hamming\ncost, mean of 3 pixels", "1984 cells, 957 FF, 17 ICG\n218.5 x 389.0 um"),
             ("slice_path", "SGM path cost (left to right),\nminimum, best sum", "642 cells, 138 FF, 18 ICG\n86.0 x 190.4 um"),
             ("slice_pick", "runner-up, sums beside winner,\nright image's running winner", "759 cells, 279 FF, 16 ICG\n114.1 x 193.1 um"),
             ("slice_up", "up-link, sub-pixel offset,\nuniqueness, output register", "1077 cells, 102 FF, 9 ICG\n113.6 x 179.5 um")]
    for k, (name, what, num) in enumerate(specs):
        x0 = 27 + (k % 3) * 22.5
        y0 = 30 if k < 3 else 13
        ax.add_patch(Rectangle((x0, y0), 20.5, 15, fc="#fff7e6", ec="black", lw=LW))
        ax.text(x0 + 10.25, y0 + 12.6, name, ha="center", fontsize=10, fontweight="bold")
        ax.text(x0 + 10.25, y0 + 8.3, what, ha="center", va="center", fontsize=7.8)
        ax.text(x0 + 10.25, y0 + 3.0, num, ha="center", va="center", fontsize=7.6, color="0.25")
    box(ax, 72, 13, 92.5, 28, "glue at the top\nreset synchroniser (2 FF)\nclock tree (13 buffers)\n71 hold buffers\n21 363 fill / decap / tap", 7.8)
    ax.text(26, 8, "macros: OpenLane 2.3.10, each its own rectangle; synthesis Yosys 0.46 + ABC with clock gating "
            "(cells, FF = flip-flops, ICG = integrated clock gates)", fontsize=7.8, color="0.3")
    fig.savefig(os.path.join(OUT, "module_diagram.png"), dpi=170, bbox_inches="tight", facecolor="white")


if __name__ == "__main__":
    system()
    modules()
    print("written: out/system_diagram.png, out/module_diagram.png")
