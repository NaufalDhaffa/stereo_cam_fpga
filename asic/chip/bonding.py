"""Wire bonding of the slice chip into a QFN-32 package, and its xschem symbol.

    python asic/chip/bonding.py

From asic/chip/out/plan.json (pad ring of asic/chip/plan.py):

  bonding.csv / bonding.md     every pad: package pin, signal, direction, bond pad centre on the die
                               (um, origin bottom left), lead it is bonded to, wire length
  bonding.png                  bonding diagram: die on the exposed pad, 32 leads, bond wires
  xschem/stereo_slice_chip.sym the packaged chip as an xschem symbol (QFN-32 pin numbers)
  xschem/stereo_slice_chip_tb.sch  a schematic around it: supplies with decoupling, the
                               signal groups as labelled buses, ready to open in xschem

Package: QFN-32, 5 x 5 mm, 0.5 mm pitch, exposed pad 3.45 mm (JEDEC MO-220 VHHD-2 style);
pin 1 at the top of the left side, counted counter-clockwise, as plan.py orders the pads.
"""
import csv
import json
import math
import os

import cv2
import numpy as np

HERE = os.path.dirname(os.path.abspath(__file__))
OUT = os.path.join(HERE, "out")

# bond pad inside the sky130 IO cells: PAD (met5) at x 11.2 .. 73.8, y 102.5 .. 165 of the
# 197.965 um tall cell whose core side is y = 0 (sky130_ef_io.lef)
PAD_CELL_H = 197.965
BOND_FROM_CORE_SIDE = (102.525 + 164.975) / 2           # 133.75 um
BOND_SIZE = 62.45                                       # opening edge, um
SEAL = 20.0

PKG = 5000.0              # body, um
PITCH = 500.0
LEAD_LEN = 400.0          # lead (bond finger) length from the package edge inwards
LEAD_TIP = PKG / 2 - LEAD_LEN
EPAD = 3450.0

DIR = {"ui_in": "masuk", "uio_in": "masuk", "uo_out": "keluar", "clk": "masuk", "rst_n": "masuk (aktif rendah)"}
SUPPLY = {"VCCD": "daya inti 1,8 V", "VCCD2": "daya inti 1,8 V", "VSSD": "ground inti", "VSSD2": "ground inti",
          "VDDIO": "daya pad 3,3 V", "VSSIO": "ground pad"}


def bond_centre(p, die):
    """Centre of the bond pad of a pad cell placed by plan.py (its x, y are the cell centre)."""
    out = SEAL + PAD_CELL_H - BOND_FROM_CORE_SIDE         # distance of the bond pad centre to the die edge
    if p["side"] == "W":
        return out, p["y"]
    if p["side"] == "E":
        return die - out, p["y"]
    if p["side"] == "S":
        return p["x"], out
    return p["x"], die - out


def lead(pin):
    """Inner end of lead `pin` (1..32), package coordinates with the centre at 0, 0."""
    side, k = (pin - 1) // 8, (pin - 1) % 8
    t = (k - 3.5) * PITCH
    if side == 0:                                  # left, top to bottom
        return -LEAD_TIP, -t
    if side == 1:                                  # bottom, left to right
        return t, -LEAD_TIP
    if side == 2:                                  # right, bottom to top
        return LEAD_TIP, t
    return -t, LEAD_TIP                            # top, right to left


def direction(name):
    if name in SUPPLY:
        return SUPPLY[name]
    return DIR[name.split("[")[0]]


def table(plan):
    die = plan["die"]
    rows = []
    for p in plan["pads"]:
        bx, by = bond_centre(p, die)
        lx, ly = lead(p["pin"])
        wx, wy = bx - die / 2, by - die / 2               # die centred on the package
        rows.append(dict(pin=p["pin"], signal=p["name"], fungsi=direction(p["name"]), sisi=p["side"],
                         sel=p["cell"], bond_x=round(bx, 1), bond_y=round(by, 1),
                         lead_x=round(lx + PKG / 2, 1), lead_y=round(ly + PKG / 2, 1),
                         kawat_um=round(math.hypot(lx - wx, ly - wy))))
    return rows


def diagram(plan, rows, path):
    die = plan["die"]
    s = 0.16                                        # pixels per um
    n = int(PKG * s) + 120
    img = np.full((n + 40, n, 3), 255, np.uint8)
    c = n // 2
    P = lambda x, y: (int(c + x * s), int(c + 40 - y * s))
    cv2.rectangle(img, P(-PKG / 2, PKG / 2), P(PKG / 2, -PKG / 2), (90, 90, 90), 2)
    cv2.rectangle(img, P(-EPAD / 2, EPAD / 2), P(EPAD / 2, -EPAD / 2), (205, 205, 205), -1)
    for pin in range(1, 33):
        lx, ly = lead(pin)
        side = (pin - 1) // 8
        L = PKG / 2 - LEAD_TIP
        dx, dy = [(-1, 0), (0, -1), (1, 0), (0, 1)][side]
        w = 125
        x0, y0 = lx, ly
        x1, y1 = lx + dx * L, ly + dy * L
        a, b = (P(min(x0, x1) - (w if dx == 0 else 0), max(y0, y1) + (w if dy == 0 else 0)),
                P(max(x0, x1) + (w if dx == 0 else 0), min(y0, y1) - (w if dy == 0 else 0)))
        cv2.rectangle(img, a, b, (150, 170, 190), -1)
        tx, ty = lx + dx * (L + 170), ly + dy * (L + 170)
        cv2.putText(img, str(pin), (P(tx, ty)[0] - 8, P(tx, ty)[1] + 5), cv2.FONT_HERSHEY_SIMPLEX, 0.38, (40, 40, 40), 1)
    cv2.rectangle(img, P(-die / 2, die / 2), P(die / 2, -die / 2), (60, 110, 60), -1)
    cx0, cy0 = plan["core_origin"]
    cw, ch = plan["core"]
    cv2.rectangle(img, P(cx0 - die / 2, cy0 + ch - die / 2), P(cx0 + cw - die / 2, cy0 - die / 2), (120, 200, 120), -1)
    for r in rows:
        bx, by = r["bond_x"] - die / 2, r["bond_y"] - die / 2
        lx, ly = r["lead_x"] - PKG / 2, r["lead_y"] - PKG / 2
        power = r["signal"] in SUPPLY
        col = (40, 40, 200) if power else (30, 140, 230)
        cv2.line(img, P(bx, by), P(lx, ly), col, 1, cv2.LINE_AA)
        h = BOND_SIZE / 2
        cv2.rectangle(img, P(bx - h, by + h), P(bx + h, by - h), (0, 215, 255), -1)
    cv2.putText(img, "stereo_slice_chip  -  QFN-32 5x5 mm, die %.2f x %.2f mm" % (die / 1000, die / 1000),
                (20, 26), cv2.FONT_HERSHEY_SIMPLEX, 0.55, (0, 0, 0), 1, cv2.LINE_AA)
    cv2.putText(img, "merah: daya/ground   biru: sinyal   pin 1 kiri atas, berlawanan arah jarum jam",
                (20, n + 30), cv2.FONT_HERSHEY_SIMPLEX, 0.42, (60, 60, 60), 1, cv2.LINE_AA)
    cv2.imwrite(path, img)


# ------------------------------------------------------------------ xschem
SYM_HEAD = """v {xschem version=3.4.7 file_version=1.2}
G {}
K {type=subcircuit
format="@name @pinlist @symname"
template="name=x1"
}
V {}
S {}
E {}
"""


def symbol(rows, path):
    """QFN-32 shaped symbol: pins 1-8 left, 9-16 bottom, 17-24 right, 25-32 top."""
    half, step, stub = 400, 80, 40
    lines = [SYM_HEAD, f"P 4 5 {-half} {-half} {half} {-half} {half} {half} {-half} {half} {-half} {-half} {{}}",
             "A 4 -380 -380 8 0 360 {fill=true}",
             "T {@symname} -150 -30 0 0 0.4 0.4 {}", "T {@name} -40 10 0 0 0.3 0.3 {}",
             "T {QFN-32} -55 50 0 0 0.3 0.3 {}"]
    for r in rows:
        pin, name = r["pin"], r["signal"]
        side, k = (pin - 1) // 8, (pin - 1) % 8
        t = (k - 3.5) * step
        d = "out" if name.startswith("uo_out") else ("inout" if name in SUPPLY else "in")
        if side == 0:
            x0, y0, x1, y1, px, py = -half - stub, t, -half, t, -half - stub, t
            tx, ty, rot, flip = -half + 6, t - 8, 0, 0
            nx, ny = -half - stub + 2, t - 22
        elif side == 1:
            x0, y0, x1, y1, px, py = t, half + stub, t, half, t, half + stub
            tx, ty, rot, flip = t - 8, half - 6, 3, 0
            nx, ny = t + 4, half + stub - 14
        elif side == 2:
            x0, y0, x1, y1, px, py = half + stub, -t, half, -t, half + stub, -t
            tx, ty, rot, flip = half - 6, -t - 8, 0, 1
            nx, ny = half + 4, -t - 22
        else:
            x0, y0, x1, y1, px, py = -t, -half - stub, -t, -half, -t, -half - stub
            tx, ty, rot, flip = -t + 8, -half + 6, 1, 0
            nx, ny = -t + 4, -half - stub + 2
        lines.append(f"L 4 {x0} {y0} {x1} {y1} {{}}")
        lines.append(f"B 5 {px - 2.5} {py - 2.5} {px + 2.5} {py + 2.5} {{name={name} dir={d} pinnumber={pin}}}")
        lines.append(f"T {{{name}}} {tx} {ty} {rot} {flip} 0.2 0.2 {{}}")
        lines.append(f"T {{{pin}}} {nx} {ny} 0 0 0.15 0.15 {{}}")
    open(path, "w", newline="\n").write("\n".join(lines) + "\n")


def schematic(rows, path):
    """The symbol with a label on every pin, two 100 nF decoupling capacitors per supply."""
    half, step, stub, lead = 400, 80, 40, 100
    parts = ["v {xschem version=3.4.7 file_version=1.2}", "G {}", "K {}", "V {}", "S {}", "E {}",
             "T {Irisan matcher stereo: chip dalam QFN-32 (asic/chip/bonding.py)} -460 -660 0 0 0.5 0.5 {}",
             "C {stereo_slice_chip.sym} 0 0 0 0 {name=U1}"]
    for r in rows:
        pin, name = r["pin"], r["signal"]
        side, k = (pin - 1) // 8, (pin - 1) % 8
        t = (k - 3.5) * step
        (px, py), (dx, dy), rot = [((-half - stub, t), (-1, 0), 2), ((t, half + stub), (0, 1), 1),
                                   ((half + stub, -t), (1, 0), 0), ((-t, -half - stub), (0, -1), 3)][side]
        net = name.replace("VCCD2", "VCCD").replace("VSSD2", "VSSD")
        x, y = px + dx * lead, py + dy * lead
        parts.append(f"N {min(px, x)} {min(py, y)} {max(px, x)} {max(py, y)} {{lab={net}}}")
        parts.append(f"C {{lab_pin.sym}} {x} {y} {rot} 0 {{name=l{pin} sig_type=std_logic lab={net}}}")
    for i, (sup, gnd) in enumerate((("VCCD", "VSSD"), ("VDDIO", "VSSIO"))):
        x = -260 + 520 * i
        parts.append(f"C {{capa.sym}} {x} 740 0 0 {{name=C{i + 1} m=1 value=100n footprint=0402 device=\"ceramic capacitor\"}}")
        parts.append(f"C {{lab_pin.sym}} {x} 710 3 0 {{name=ls{i} sig_type=std_logic lab={sup}}}")
        parts.append(f"C {{lab_pin.sym}} {x} 770 1 0 {{name=lg{i} sig_type=std_logic lab={gnd}}}")
        parts.append(f"T {{{sup} - {gnd}: 100 nF dekat pin}} {x - 120} 800 0 0 0.25 0.25 {{}}")
    open(path, "w", newline="\n").write("\n".join(parts) + "\n")


def main():
    plan = json.load(open(os.path.join(OUT, "plan.json")))
    rows = table(plan)
    with open(os.path.join(OUT, "bonding.csv"), "w", newline="", encoding="utf-8") as f:
        w = csv.DictWriter(f, fieldnames=list(rows[0]))
        w.writeheader()
        w.writerows(rows)
    md = ["# Wire bonding: stereo_slice_chip dalam QFN-32", "",
          f"Die {plan['die']:.1f} x {plan['die']:.1f} um di tengah pad ekspos QFN-32 5 x 5 mm (pitch 0,5 mm). "
          "Koordinat bond pad dari pojok kiri bawah die; koordinat lead dari pojok kiri bawah paket.", "",
          "| Pin | Sinyal | Fungsi | Sisi die | Sel IO | Bond pad (um) | Lead (um) | Kawat (um) |",
          "|---|---|---|---|---|---|---|---|"]
    for r in rows:
        md.append(f"| {r['pin']} | {r['signal']} | {r['fungsi']} | {r['sisi']} | {r['sel']} | "
                  f"{r['bond_x']}, {r['bond_y']} | {r['lead_x']}, {r['lead_y']} | {r['kawat_um']} |")
    longest = max(r["kawat_um"] for r in rows)
    md += ["", f"Kawat terpanjang {longest} um (emas 25 um umumnya sampai sekitar 3 mm). "
           "Pad ekspos (bawah paket) disambung ke VSSD/VSSIO di PCB."]
    open(os.path.join(OUT, "bonding.md"), "w", encoding="utf-8").write("\n".join(md) + "\n")
    diagram(plan, rows, os.path.join(OUT, "bonding.png"))
    xs = os.path.join(OUT, "xschem")
    os.makedirs(xs, exist_ok=True)
    symbol(rows, os.path.join(xs, "stereo_slice_chip.sym"))
    schematic(rows, os.path.join(xs, "stereo_slice_chip_tb.sch"))
    open(os.path.join(xs, "xschemrc"), "w", newline="\n").write(
        "# xschem -r xschemrc stereo_slice_chip_tb.sch  (from this folder)\n"
        "append XSCHEM_LIBRARY_PATH :[file dirname [info script]]\n")
    print("\n".join(md[:8]))
    print(f"... {len(rows)} pad, kawat terpanjang {longest} um")


if __name__ == "__main__":
    main()
