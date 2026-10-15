#!/usr/bin/env python3
"""Functional block diagram of the chip, in the style of a datasheet:

    python asic/chip/block_diagram.py

The chip outline with its QFN-32 pins, the five blocks of the slice with what each does, the
pad buffers, clock, reset and supplies; every arrow carries the number of bits that flow that
way, counted from the chip's own connections (out/conn.txt). Output: out/block_diagram.png, .svg
"""
import collections
import os

import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt                      # noqa: E402
from matplotlib.patches import Rectangle            # noqa: E402

OUT = os.path.join(os.path.dirname(os.path.abspath(__file__)), "out")


def flows():
    """{(from, to): bits} between the blocks, from out/conn.txt."""
    f = collections.Counter()
    for line in open(os.path.join(OUT, "conn.txt")):
        _, ends = line.rstrip("\n").split("\t")
        ends = [e.rsplit(":", 2) for e in ends.split()]
        drv = [i for i, p, k in ends if k == "OUTPUT" and i.startswith("u_")]
        for i, p, k in ends:
            if drv and k == "INPUT" and i.startswith("u_"):
                f[(drv[0][2:], i[2:])] += 1
            if drv and k == "PAD" and p == "OUT":
                f[(drv[0][2:], "out")] += 1
    return f


def main():
    f = flows()
    fig, ax = plt.subplots(figsize=(15, 10.5))
    ax.set_xlim(0, 100)
    ax.set_ylim(0, 75)
    ax.axis("off")
    ax.set_aspect("equal")
    lw = 1.4

    def box(x0, y0, x1, y1, text, size=9.5, bold=False, ls="-"):
        ax.add_patch(Rectangle((x0, y0), x1 - x0, y1 - y0, fill=True, fc="white", ec="black", lw=lw, ls=ls, zorder=3))
        ax.text((x0 + x1) / 2, (y0 + y1) / 2, text, ha="center", va="center", fontsize=size,
                fontweight="bold" if bold else "normal", zorder=4, family="DejaVu Sans")

    def wire(pts, bits=None, at=None, arrow=True, ls="-", color="black", frac=0.5):
        xs, ys = zip(*pts)
        ax.plot(xs[:-1] + (xs[-1],), ys, color=color, lw=lw, ls=ls, zorder=2, solid_capstyle="butt")
        if arrow:
            (xa, ya), (xb, yb) = pts[-2], pts[-1]
            ax.annotate("", xy=(xb, yb), xytext=(xa + (xb - xa) * 0.6, ya + (yb - ya) * 0.6),
                        arrowprops=dict(arrowstyle="-|>", color=color, lw=lw, mutation_scale=14), zorder=2)
        if bits:
            (xa, ya), (xb, yb) = pts[at or 0], pts[(at or 0) + 1]
            mx, my = xa + (xb - xa) * frac, ya + (yb - ya) * frac
            dx, dy = (0.7, 0.7) if xa == xb else (0.5, 0.9)
            ax.plot([mx - dx * 0.6, mx + dx * 0.6], [my - 0.6, my + 0.6], color=color, lw=1.1, zorder=2)
            ax.text(mx + (1.0 if xa == xb else 0), my + (0 if xa == xb else 1.2), str(bits),
                    fontsize=8.5, ha="left" if xa == xb else "center", va="center", color=color, zorder=4)

    def pin(x, y, side, name, num):
        ax.add_patch(Rectangle((x - 0.8, y - 0.8), 1.6, 1.6, fc="white", ec="black", lw=lw, zorder=5))
        off = {"L": (-1.6, 0, "right", "center"), "R": (1.6, 0, "left", "center"),
               "T": (0, 1.6, "center", "bottom"), "B": (0, -1.6, "center", "top")}[side]
        rot = 90 if side in "TB" else 0
        ax.text(x + off[0], y + off[1], f"{name}" + (f" ({num})" if num else ""), ha=off[2] if not rot else "center",
                va=off[3] if not rot else ("bottom" if side == "T" else "top"), rotation=rot, fontsize=9, zorder=5)

    # chip outline
    ax.add_patch(Rectangle((8, 6), 84, 58, fill=False, ec="black", lw=2.2, zorder=1))
    ax.text(8, 73, "Functional Block Diagram - stereo_slice_chip (sky130A, 1151 x 1151 um, QFN-32)",
            fontsize=14, fontweight="bold", ha="left")
    # the core power ring around the blocks
    ax.add_patch(Rectangle((22.5, 15), 64, 44.5, fill=False, ec="0.45", lw=1.2, ls=(0, (5, 3)), zorder=1))
    ax.text(23.2, 58.6, "core power ring VCCD 1.8 V / VSSD (met4 + met5)", fontsize=8.5, color="0.35")

    # blocks of the slice
    box(25, 41, 40, 55, "DOWN-LINK\nRECEIVER\nAND CONTROL\n\n(ctrl)", bold=False)
    box(25, 18, 40, 33, "SIGNATURE\nHISTORY AND\nHAMMING COST\n16 disparities\n(cost)")
    box(48, 18, 62, 33, "SGM\nPATH COST\n\n(path)")
    box(48, 41, 62, 55, "WINNER AND\nRUNNER-UP\n\n(pick)")
    box(70, 28, 84, 51, "UP-LINK,\nSUB-PIXEL\nOFFSET AND\nUNIQUENESS\n\n(up)")
    # pad buffers
    box(12, 43.5, 20, 50.5, "INPUT\nBUFFER\nx8", 8.5)
    box(73.5, 53.5, 82.5, 58.5, "INPUT BUFFER x8", 8.5)
    box(85, 36.5, 90.5, 43.5, "OUTPUT\nDRIVER\nx8", 7.5)
    box(26, 8, 34, 12.5, "CLOCK\nTREE", 8.5)
    box(37, 8, 46, 12.5, "RESET SYNC\n2 FF", 8.5)
    box(11, 8, 23, 12.5, "1.8 V CORE\nSUPPLY", 8.5)
    box(52, 8, 86, 12.5, "PAD RING SUPPLY 3.3 V + 1.8 V\n(VCCHIB->VCCD, VSWITCH->VDDIO, VDDA->VDDIO, VSSA->VSSIO)", 8)

    # pins (QFN-32 numbers)
    pin(8, 47, "L", "ui_in[7:0]", "1-8")
    pin(78, 64, "T", "", "")
    ax.text(79.4, 65.0, "uio_in[7:0] (25-32)", fontsize=9, ha="left", va="bottom")
    pin(92, 40, "R", "uo_out[7:0]", "17-24")
    for x, name, num in ((14, "VSSD", 9), (20, "VCCD", 10), (30, "CLK", 11), (41.5, "RST_N", 12),
                         (56, "VSSIO", 13), (63, "VDDIO", 14), (74, "VCCD2", 15), (81, "VSSD2", 16)):
        pin(x, 6, "B", name, num)
        top = 8
        ax.plot([x, x], [6.8, top], color="black", lw=lw, zorder=2)

    # pad paths
    wire([(8.8, 47), (12, 47)], arrow=True)
    wire([(20, 47), (25, 47)], bits=8)
    wire([(78, 63.2), (78, 58.5)])
    wire([(78, 53.5), (78, 51)], bits=8)
    wire([(84, 40), (85, 40)], arrow=True)
    wire([(90.5, 40), (91.2, 40)], arrow=True)
    ax.text(87.75, 44.3, "8", fontsize=8.5, ha="center")
    # between the blocks (bits counted from the netlist)
    wire([(32.5, 41), (32.5, 33)], bits=f[("ctrl", "cost")])
    wire([(40, 25.5), (48, 25.5)], bits=f[("cost", "path")])
    wire([(40, 44), (44, 44), (44, 30), (48, 30)], bits=f[("ctrl", "path")], at=1)
    wire([(40, 51), (48, 51)], bits=f[("ctrl", "pick")])
    wire([(55, 33), (55, 41)], bits=f[("path", "pick")])
    wire([(62, 22), (66, 22), (66, 31), (70, 31)], bits=f[("path", "up")], at=1)
    wire([(62, 47), (70, 47)], bits=f[("pick", "up")])
    wire([(70, 43), (62, 43)], bits=f[("up", "pick")])
    wire([(77, 28), (77, 20), (62, 20)], bits=f[("up", "path")], at=1)
    wire([(32.5, 55), (32.5, 57), (71.5, 57), (71.5, 51)], bits=f[("ctrl", "up")], at=1)
    wire([(70, 35.5), (45.5, 35.5), (45.5, 38), (38, 38), (38, 41)], bits=f[("up", "ctrl")], at=0, frac=0.2)
    # clock and reset
    wire([(30, 12.5), (30, 14.2)], arrow=False, ls=(0, (2, 2)))
    ax.text(30.6, 13.6, "clk to every block", fontsize=8, va="center")
    rst = (0, (6, 2))
    wire([(41.5, 12.5), (41.5, 16.2), (46.5, 16.2), (46.5, 39.5), (65, 39.5), (65, 37.5), (70, 37.5)], ls=rst)
    wire([(41.5, 15.2), (23.6, 15.2), (23.6, 43), (25, 43)], ls=rst)
    ax.text(47, 16.8, "rst to up", fontsize=8)
    ax.text(24.1, 39.5, "rst", fontsize=8, rotation=90)
    fig.text(0.5, 0.02, "Bus widths are counted from the chip netlist (asic/chip/out/conn.txt). "
             "Signal pads: sky130_ef_io__gpiov2_pad; supplies tie the pad-ring buses as shown.",
             ha="center", fontsize=9, color="0.3")
    for ext in ("png", "svg"):
        fig.savefig(os.path.join(OUT, f"block_diagram.{ext}"), dpi=170, bbox_inches="tight", facecolor="white")
    print("block diagram:", os.path.join(OUT, "block_diagram.png"))


if __name__ == "__main__":
    main()
