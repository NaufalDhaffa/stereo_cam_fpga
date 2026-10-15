"""Floor plan of the stand-alone slice chip: five hard macros in a square core, a ring of 32
sky130 IO pads around it, every pad bonded to the pin of a QFN-32 package facing it.

    python asic/chip/plan.py

1. Macro sizes: the logic area of each module (asic/chip/synth.sh: with clock gating and the
   short sub-pixel division), times the growth of place and route, divided by the utilisation
   a block routed on met1 to met3 reaches. Shapes come from the search, not by hand.
2. The pads: 26 signals (ui 8, uio 8, uo 8, clk, rst_n) and 6 power pads (VCCD, VSSD twice for
   the 1.8 V core, VDDIO, VSSIO for the 3.3 V pad ring) = 32 = 8 per side, the pin count of a
   QFN-32. Each group of signals sits on the side of the core whose module uses it.
3. Arrangement of the macros: every order and grouping into columns, scored by the wiring
   between the modules, the wiring to their pads and the clock; the block of macros is kept
   as square and small as the shapes allow.
4. Die: corner cells + 8 pads per side; the core is whatever the ring leaves inside.

Output in asic/chip/out/: plan.json (input of the hardening scripts), plan.png, plan.md.
"""
import itertools
import json
import os

import cv2
import numpy as np

HERE = os.path.dirname(os.path.abspath(__file__))
OUT = os.path.join(HERE, "out")

# ------------------------------------------------------------------ inputs
SYNTH = {"ctrl": 6287.3, "cost": 27179.8, "path": 6538.8, "pick": 8784.7, "up": 8211.6}   # um2, asic/chip/synth.sh
GROWTH = 1.25            # tap cells, clock tree, timing and hold buffers (blocks hardened before: 1.03 to 1.33)
UTIL = 0.50              # of the macro's whole area. The die is set by the pad ring (32 pads of 80 um), not by
                         # the logic: the ring leaves about 650 um inside, so the macros may as well have room
                         # for clean routing and timing (at 0.62 to 0.66 the small blocks failed to place or route)
NETS = {("ctrl", "cost"): 99, ("ctrl", "path"): 36, ("ctrl", "pick"): 22, ("ctrl", "up"): 23,
        ("cost", "path"): 6, ("path", "pick"): 14, ("path", "up"): 40, ("pick", "up"): 54}
PINS = {"ctrl": 170, "cost": 106, "path": 97, "pick": 95, "up": 143}
SITE, ROW = 0.46, 2.72
GAP, SPINE, MARGIN = 8.0, 16.0, 12.0     # between macros side by side, stacked; macro block to core edge

# sky130 IO cells (sky130_ef_io.lef)
PAD_W, PAD_H = 80.0, 197.965             # sky130_ef_io__gpiov2_pad
PWR_W = 75.0                             # sky130_ef_io__vccd_lvc_clamped_pad and the other supply pads
CORNER = 204.0                           # sky130_ef_io__corner_pad (200 x 204)
SEAL = 20.0                              # die edge to the ring (scribe and seal)

# pads per side, in package order (QFN-32: pin 1 at the top of the left side, counter-clockwise)
SIDES = {
    "W": [f"ui_in[{i}]" for i in range(8)],
    "S": ["VSSD", "VCCD", "clk", "rst_n", "VSSIO", "VDDIO", "VCCD2", "VSSD2"],
    "E": [f"uo_out[{i}]" for i in range(8)],
    "N": [f"uio_in[{i}]" for i in range(8)],
}
POWER = {"VCCD", "VCCD2", "VSSD", "VSSD2", "VDDIO", "VSSIO"}
# the 1.8 V clamp pads carry an overlay (lvc_vccdx_overlay) that reaches 11.3 µm past the left
# edge of the cell, into whatever stands there: each needs that much free room on its left
LEFT_REACH = {"VCCD": 11.3, "VCCD2": 11.3, "VSSD": 11.3, "VSSD2": 11.3}


MIN_GAP = 2.0       # between two pads at least: abutting IO cells overlap along their shared edge
# the gpio pad's deep n-well reaches 0.3 µm past its sides (n-well and hvi up to 0.94 µm): next to
# another gpio pad, or a corner, it needs 6.3 µm of deep n-well spacing (dnwell.2) plus both overhangs
GPIO_GAP = 7.0
# ring slices that need a place of their own between two pads (left pad: name, width): the PDK
# slice that ties VCCHIB to VCCD and VSWITCH to VDDIO, with 1 µm of filler on each side
SLICES = {"VSSIO": ("sky130_ef_io__connect_vcchib_vccd_and_vswitch_vddio_slice_20um", 20.0)}
# met3 jumpers from VDDA to VDDIO and from VSSA to VSSIO across the ring buses, 4 µm wide, in the
# gap right of this pad (no own pads for the analog supplies: QFN-32 stays)
JUMPER_AFTER, JUMPER_W = "clk", 4.0


def gap(left, right):
    """Free room between two neighbours on a row (None: the corner)."""
    g = MIN_GAP
    if left in SLICES:
        g = max(g, SLICES[left][1] + 2.0)
    if left == JUMPER_AFTER:
        g = max(g, JUMPER_W + 2 * MIN_GAP)
    if right in LEFT_REACH:
        g = max(g, LEFT_REACH[right] + 0.7)
    if (left is None or left not in POWER) and (right is None or right not in POWER):
        g = max(g, GPIO_GAP)
    return g


def gaps(names):
    """The n + 1 gaps of a row, corner to corner."""
    return [gap(a, b) for a, b in zip([None] + names, names + [None])]


# which module each pad group feeds
EXT = {"ctrl": ("W", 10), "up": ("N", 8), "up_out": ("E", 8)}


# per macro, after the search: cost gets more room, wider at the same height, and the columns
# right of it move over. With the buffers on long wires, the repair after global routing and the
# antenna diodes it reached 63% and its detailed routing no longer converged
UTIL_OF = {"cost": 0.40}


def macro_area(b):
    return SYNTH[b] * GROWTH / UTIL


def widen(rects):
    """Make the macros of UTIL_OF wider (same height, width on the site grid); move what is
    right of them. Returns the extra width of the block."""
    extra = 0.0
    for b, util in UTIL_OF.items():
        x, y, w, h = rects[b]
        new_w = grid(SYNTH[b] * GROWTH / util / h + SITE / 2, SITE)
        d = round(new_w - w, 2)
        rects[b] = (x, y, new_w, h)
        for o, (ox, oy, ow, oh) in list(rects.items()):
            if o != b and ox >= x + w - 1e-6:
                rects[o] = (round(ox + d, 2), oy, ow, oh)
        extra += d
    return extra


def grid(v, step):
    return round(v / step) * step


def die_size():
    side_len = max(sum(PWR_W if p in POWER else PAD_W for p in pads) + sum(gaps(pads)) for pads in SIDES.values())
    return 2 * SEAL + 2 * CORNER + side_len


def ring_extras(pad_list):
    """Where the connect slices and the supply jumpers go (south row, die x of their left edge)."""
    by = {p["name"]: p for p in pad_list}
    out = []
    for left, (cell, w) in SLICES.items():
        p = by[left]
        assert p["side"] == "S"
        out.append(dict(kind="slice", cell=cell, name="slice_after_" + left.lower(),
                        x=round(p["x"] + p["width"] / 2 + 1.0, 3), width=w))
    p = by[JUMPER_AFTER]
    assert p["side"] == "S"
    out.append(dict(kind="jumper", name="jumper_after_" + JUMPER_AFTER.lower(),
                    x=round(p["x"] + p["width"] / 2 + MIN_GAP, 3), width=JUMPER_W))
    return out


def pads(die):
    """Every pad: name, side, centre of its bond pad (x, y), cell."""
    out, n = [], 1
    inner = die - 2 * SEAL - 2 * CORNER
    for side in ("W", "S", "E", "N"):
        names = SIDES[side]
        widths = [PWR_W if p in POWER else PAD_W for p in names]
        # what is left after the pads and their gaps, shared by all the gaps
        need = gaps(names)
        spare = (inner - sum(widths) - sum(need)) / (len(names) + 1)
        pos = SEAL + CORNER
        for name, w, g in zip(names, widths, need):
            pos += g + spare
            c = pos + w / 2
            # QFN order: W top to bottom, S left to right, E bottom to top, N right to left
            if side == "W":
                x, y = SEAL + PAD_H / 2, die - c
            elif side == "S":
                x, y = c, SEAL + PAD_H / 2
            elif side == "E":
                x, y = die - SEAL - PAD_H / 2, c
            else:
                x, y = die - c, die - SEAL - PAD_H / 2
            cell = ("sky130_ef_io__gpiov2_pad" if name not in POWER else
                    {"VCCD": "sky130_ef_io__vccd_lvc_clamped_pad", "VCCD2": "sky130_ef_io__vccd_lvc_clamped_pad",
                     "VSSD": "sky130_ef_io__vssd_lvc_clamped_pad", "VSSD2": "sky130_ef_io__vssd_lvc_clamped_pad",
                     "VDDIO": "sky130_ef_io__vddio_hvc_clamped_pad", "VSSIO": "sky130_ef_io__vssio_hvc_clamped_pad"}[name])
            out.append(dict(pin=n, name=name, side=side, x=round(x, 2), y=round(y, 2), cell=cell, width=w))
            pos += w
            n += 1
    return out


def layout(columns, hs):
    rects, x = {}, 0.0
    for col in columns:
        h_all = hs - SPINE * (len(col) - 1)
        tot = sum(macro_area(b) for b in col)
        w = grid(tot / h_all + SITE / 2, SITE)
        y = hs
        for b in col:
            h = grid(h_all * macro_area(b) / tot, ROW)
            y -= h
            rects[b] = [round(x, 2), round(y, 2), round(w, 2), round(h, 2)]
            y -= SPINE
        x += w + GAP
    return rects, x - GAP


def score(rects, bw, bh):
    c = {b: (r[0] + r[2] / 2, r[1] + r[3] / 2) for b, r in rects.items()}
    wire = sum(bits * (abs(c[a][0] - c[b][0]) + abs(c[a][1] - c[b][1])) for (a, b), bits in NETS.items())
    side_pt = {"W": (0, bh / 2), "E": (bw, bh / 2), "N": (bw / 2, bh), "S": (bw / 2, 0)}
    ext = 0.0
    for key, (side, bits) in EXT.items():
        b = key.split("_")[0]
        p = side_pt[side]
        ext += bits * (abs(c[b][0] - p[0]) + abs(c[b][1] - p[1]))
    clk = side_pt["S"]
    d = [abs(c[b][0] - clk[0]) + abs(c[b][1] - clk[1]) for b in rects]
    pen = 0.0
    for b, (x, y, w, h) in rects.items():
        ar = max(w / h, h / w)
        if ar > 3:
            pen += 2e4 * (ar - 3)
        if w < 45 or h < 30:
            pen += 5e4
        if PINS[b] > w / 0.92 + h / 1.36:
            pen += 1e4
    total = wire + ext + 20 * sum(d) + 20 * (max(d) - min(d)) + pen + 0.5 * bw * bh + 400 * abs(bw - bh)
    return total, dict(wire=wire, ext=ext, clock=sum(d), skew=max(d) - min(d), penalty=pen)


def search():
    names = list(SYNTH)
    best = []
    seen = set()
    for perm in itertools.permutations(names):
        for cuts in itertools.product([0, 1], repeat=len(names) - 1):
            cols, cur = [], [perm[0]]
            for b, cut in zip(perm[1:], cuts):
                if cut:
                    cols.append(cur)
                    cur = [b]
                else:
                    cur.append(b)
            cols.append(cur)
            if max(len(c) for c in cols) > 3:
                continue
            key = tuple(tuple(c) for c in cols)
            if key in seen:
                continue
            seen.add(key)
            for hs in range(150, 601, 4):
                rects, bw = layout(cols, hs)
                total, parts = score(rects, bw, hs)
                best.append((total, cols, rects, bw, hs, parts))
    best.sort(key=lambda r: r[0])
    return best


def draw(plan, path):
    die = plan["die"]
    s = 1.0
    img = np.full((int(die * s) + 20, int(die * s) + 20, 3), 255, np.uint8)
    o = 10
    Y = lambda y: o + int((die - y) * s)
    cv2.rectangle(img, (o, o), (o + int(die * s), o + int(die * s)), (40, 40, 40), 2)
    for p in plan["pads"]:
        w, h = p["width"], PAD_H
        if p["side"] in ("W", "E"):
            w, h = h, w
        col = (60, 60, 200) if p["name"] in POWER else (200, 140, 60)
        cv2.rectangle(img, (o + int((p["x"] - w / 2) * s), Y(p["y"] + h / 2)), (o + int((p["x"] + w / 2) * s), Y(p["y"] - h / 2)), col, 1)
        cv2.putText(img, p["name"], (o + int((p["x"] - w / 2 + 3) * s), Y(p["y"])), cv2.FONT_HERSHEY_SIMPLEX, 0.32, col, 1, cv2.LINE_AA)
    cx0, cy0 = plan["core_origin"]
    colours = {"ctrl": (80, 200, 255), "cost": (90, 220, 140), "path": (255, 190, 80), "pick": (255, 120, 200), "up": (120, 160, 255)}
    for b, (x, y, w, h) in plan["macros"].items():
        X0, Y0 = cx0 + x, cy0 + y
        cv2.rectangle(img, (o + int(X0 * s), Y(Y0 + h)), (o + int((X0 + w) * s), Y(Y0)), colours[b], -1)
        cv2.rectangle(img, (o + int(X0 * s), Y(Y0 + h)), (o + int((X0 + w) * s), Y(Y0)), (40, 40, 40), 1)
        cv2.putText(img, f"{b} {w:.0f}x{h:.0f}", (o + int((X0 + 4) * s), Y(Y0 + h - 14)), cv2.FONT_HERSHEY_SIMPLEX, 0.4, (0, 0, 0), 1, cv2.LINE_AA)
    bw, bh = plan["core"]
    cv2.rectangle(img, (o + int(cx0 * s), Y(cy0 + bh)), (o + int((cx0 + bw) * s), Y(cy0)), (120, 120, 120), 1)
    cv2.imwrite(path, img)


def main():
    best = search()
    total, cols, rects, bw, bh, parts = best[0]
    rects = dict(rects)
    bw += widen(rects)
    die = die_size()
    core_w, core_h = bw + 2 * MARGIN, bh + 2 * MARGIN
    core_origin = ((die - core_w) / 2, (die - core_h) / 2)
    macros = {b: [round(r[0] + MARGIN, 2), round(r[1] + MARGIN, 2), r[2], r[3]] for b, r in rects.items()}
    plan = dict(die=round(die, 2), core=[round(core_w, 2), round(core_h, 2)],
                core_origin=[round(core_origin[0], 2), round(core_origin[1], 2)],
                columns=cols, macros=macros, pads=pads(die), parts=parts, sides=SIDES)
    plan["ring"] = ring_extras(plan["pads"])
    os.makedirs(OUT, exist_ok=True)
    json.dump(plan, open(os.path.join(OUT, "plan.json"), "w"), indent=1)
    draw(plan, os.path.join(OUT, "plan.png"))
    md = ["# Rencana chip irisan matcher (die bebas, pad untuk wire bonding)", "",
          "| Modul | Logika (um2) | Makro (um) | Luas makro (um2) | Isi perkiraan |", "|---|---|---|---|---|"]
    for b in SYNTH:
        x, y, w, h = macros[b]
        md.append(f"| {b} | {SYNTH[b]:.0f} | {w:.2f} x {h:.2f} | {w * h:.0f} | {100 * SYNTH[b] * GROWTH / (w * h):.0f}% |")
    md += ["", f"Blok makro {bw:.1f} x {bh:.1f} um; inti {core_w:.1f} x {core_h:.1f} um; die {die:.1f} x {die:.1f} um "
           f"({die * die / 1e6:.2f} mm2). Susunan kolom: " + " / ".join("+".join(c) for c in cols) + ".", "",
           "Lima susunan terbaik:", "", "| # | Kolom | Blok (um) | Kawat (bit x um) | Pad (bit x um) | Skor |", "|---|---|---|---|---|---|"]
    shown = []
    for t, c, r, w, h, p in best:
        d = " / ".join("+".join(x) for x in c)
        if d in shown:
            continue
        shown.append(d)
        md.append(f"| {len(shown)} | {d} | {w:.0f} x {h:.0f} | {p['wire'] / 1000:.0f}k | {p['ext'] / 1000:.1f}k | {t / 1000:.0f}k |")
        if len(shown) == 5:
            break
    md += ["", "Pad (urutan pin QFN-32):", "", "| Pin | Pad | Sisi | Sel | Pusat bond pad (um) |", "|---|---|---|---|---|"]
    for p in plan["pads"]:
        md.append(f"| {p['pin']} | {p['name']} | {p['side']} | {p['cell']} | {p['x']:.1f}, {p['y']:.1f} |")
    open(os.path.join(OUT, "plan.md"), "w", encoding="utf-8").write("\n".join(md) + "\n")
    print("\n".join(md[:16]))


if __name__ == "__main__":
    main()
