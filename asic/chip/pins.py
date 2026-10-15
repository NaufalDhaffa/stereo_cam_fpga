#!/usr/bin/env python3
"""Pin plan of the five slice macros, made before hardening (runs inside WSL):

    python3 /mnt/d/stereo-depth-cam/asic/chip/pins.py

Every pin is given its place from the chip plan (out/plan.json) and the real connections of
the chip (out/conn.txt, every net bit by bit, from the synthesised top):

  1. pairs of facing edges (macros side by side or stacked): the nets between the two macros
     are given the same place on both edges, in the same order, so that each one is a straight
     wire across the channel
  2. the other pins go to the edge that faces their partners (macros, pads, glue cells), at the
     point of that edge nearest to them
  3. every pin sits on a routing track (every other one: met3 1.36 um apart on the left and
     right edges, met2 0.92 um on top and bottom) and inside the edge, clear of the corners

Output: out/pins/slice_<b>.def (DEF templates for OpenLane's FP_DEF_TEMPLATE), out/pins.json,
out/pins.png (the macros, their pins and the nets between them) and the total wire length the
plan gives, against the macros as they are (half perimeter of every net, chip coordinates).
"""
import glob
import json
import os
import re
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
OUT = os.path.join(HERE, "out")
WORK = os.path.expanduser("~/ic/chip")
BLOCKS = ("ctrl", "cost", "path", "pick", "up")
# tracks (sky130_fd_sc_hd tech LEF): met2 vertical from 0.23 every 0.46, met3 horizontal from
# 0.34 every 0.68; a pin on every other track leaves one free between neighbours
TRACK = {"NS": (0.23, 0.92), "EW": (0.34, 1.36)}
CLEAR = {"NS": 6.0, "EW": 7.0}          # no pin this close to a corner (margins, PDN rails)
PIN_LEN = 4.0
FACING = 30.0                           # two edges face each other when at most this far apart


def load():
    plan = json.load(open(os.path.join(OUT, "plan.json")))
    conn = []
    for line in open(os.path.join(OUT, "conn.txt")):
        net, ends = line.rstrip("\n").split("\t")
        conn.append((net, [tuple(e.rsplit(":", 2)) for e in ends.split()]))
    return plan, conn


def lef_pins(b):
    """[(pin, direction)] of a hardened macro, power pins left out."""
    path = glob.glob(f"{WORK}/runs/slice_{b}/final/lef/slice_{b}.lef")[0]
    pins, pin = [], None
    for line in open(path):
        w = line.split()
        if w[:1] == ["PIN"]:
            pin = w[1]
        elif pin and w[:1] == ["DIRECTION"]:
            pins.append((pin, w[1]))
        elif pin and w[:1] == ["USE"] and w[1].rstrip(";") in ("POWER", "GROUND"):
            pins.pop()
            pin = None
        elif w[:1] == ["END"] and pin and len(w) > 1 and w[1] == pin:
            pin = None
    return pins


def lef_positions(b):
    """{pin: (x, y)} centres of the pins of a hardened macro (the plan before this one)."""
    path = glob.glob(f"{WORK}/runs/slice_{b}/final/lef/slice_{b}.lef")[0]
    out, pin = {}, None
    for line in open(path):
        w = line.split()
        if w[:1] == ["PIN"]:
            pin = w[1]
        elif pin and w[:1] == ["RECT"] and pin not in out:
            x1, y1, x2, y2 = map(float, w[1:5])
            out[pin] = ((x1 + x2) / 2, (y1 + y2) / 2)
        elif w[:1] == ["END"] and pin and len(w) > 1 and w[1] == pin:
            pin = None
    return out


def edges(rect):
    """The four edges of a macro in core coordinates: side -> (fixed coordinate, lo, hi)."""
    x, y, w, h = rect
    return {"W": (x, y, y + h), "E": (x + w, y, y + h), "S": (y, x, x + w), "N": (y + h, x, x + w)}


def facing_pairs(plan):
    """Pairs of macro edges that face each other across a channel, with their common span."""
    m = plan["macros"]
    pairs = []
    for a in BLOCKS:
        for b in BLOCKS:
            if a >= b:
                continue
            ea, eb = edges(m[a]), edges(m[b])
            for sa, sb in (("E", "W"), ("W", "E"), ("N", "S"), ("S", "N")):
                fa, la, ha = ea[sa]
                fb, lb, hb = eb[sb]
                gap = (fb - fa) if sa in "EN" else (fa - fb)
                lo, hi = max(la, lb), min(ha, hb)
                if 0 <= gap <= FACING and hi - lo > 20:
                    pairs.append((a, sa, b, sb, lo, hi))
    return pairs


class Edge:
    """Track slots along one edge of one macro (local coordinates along the edge)."""

    def __init__(self, side, length):
        self.side = side
        kind = "NS" if side in "NS" else "EW"
        off, pitch = TRACK[kind]
        lo, hi = CLEAR[kind], length - CLEAR[kind]
        k0 = int((lo - off) // pitch) + 1
        self.slots = [round(off + k * pitch, 3) for k in range(k0, 10 ** 6) if off + k * pitch <= hi]
        self.free = set(range(len(self.slots)))
        self.pins = {}                  # pin -> slot index

    def take(self, pin, want):
        """The free slot nearest to the wanted place."""
        if not self.free:
            raise SystemExit(f"edge {self.side} is full")
        i = min(self.free, key=lambda k: abs(self.slots[k] - want))
        self.free.discard(i)
        self.pins[pin] = i
        return self.slots[i]


def natural(name):
    base, _, idx = name.partition("[")
    return (base, int(idx[:-1]) if idx else -1)


def plan_pins(plan, conn):
    m = plan["macros"]
    cx, cy = plan["core_origin"]
    pads = {p["name"]: (p["x"] - cx, p["y"] - cy) for p in plan["pads"]}
    pad_of = {f"pad_{n.replace('[', '_').replace(']', '')}": n for n in pads}
    # every macro pin: its net and the places it connects to
    where = {}                          # (macro, pin) -> [partner points]
    pair_nets = {}                      # (a, b) -> [(net, pin_a, pin_b)]
    for net, ends in conn:
        mac = [(i[2:], p) for i, p, _ in ends if i.startswith("u_")]
        others = []
        for inst, pin, kind in ends:
            if inst.startswith("u_"):
                continue
            if kind == "PAD":
                others.append(pads[pad_of[inst]])
            else:                       # glue cells: the reset synchroniser near the south pads
                others.append(pads["rst_n"])
        for b, pin in mac:
            pts = [(m[o][0] + m[o][2] / 2, m[o][1] + m[o][3] / 2) for o, _ in mac if o != b] + others
            where[(b, pin)] = pts
        if len(mac) == 2 and not others:
            (a, pa), (b, pb) = sorted(mac)
            pair_nets.setdefault((a, b), []).append((net, pa, pb))
    edge = {b: {s: Edge(s, m[b][2] if s in "NS" else m[b][3]) for s in "NSEW"} for b in BLOCKS}
    place = {}                          # (macro, pin) -> (side, local coordinate along the edge)
    # 1. facing edges: the nets between the two macros straight across, the largest group first
    pairs = sorted(facing_pairs(plan), key=lambda p: -len(pair_nets.get(tuple(sorted(p[::2][:2])), [])))
    for a, sa, b, sb, lo, hi in pairs:
        key = (a, b) if a < b else (b, a)
        nets = sorted(pair_nets.get(key, []), key=lambda t: natural(t[0]))
        nets = [t for t in nets if (a, t[1] if key[0] == a else t[2]) not in place]
        if not nets:
            continue
        pitch = TRACK["NS" if sa in "NS" else "EW"][1]
        mid = (lo + hi) / 2
        for i, (net, p1, p2) in enumerate(nets):
            pa, pb = (p1, p2) if key[0] == a else (p2, p1)
            want = mid + (i - (len(nets) - 1) / 2) * pitch          # core coordinate along the edge
            base_a = m[a][1] if sa in "EW" else m[a][0]
            base_b = m[b][1] if sb in "EW" else m[b][0]
            got = edge[a][sa].take(pa, want - base_a)
            place[(a, pa)] = (sa, got)
            got_b = edge[b][sb].take(pb, got + base_a - base_b)
            place[(b, pb)] = (sb, got_b)
    # 2. the rest: the edge facing the partners, at the nearest point, in order along the edge
    rest = []
    for b in BLOCKS:
        x, y, w, h = m[b]
        for pin, _ in lef_pins(b):
            if (b, pin) in place:
                continue
            pts = where.get((b, pin)) or [(x + w / 2, y + h / 2)]
            px = sum(p[0] for p in pts) / len(pts)
            py = sum(p[1] for p in pts) / len(pts)
            dx, dy = px - (x + w / 2), py - (y + h / 2)
            order = sorted("NSEW", key=lambda s: -{"E": dx / w, "W": -dx / w, "N": dy / h, "S": -dy / h}[s])
            rest.append((b, pin, order, px - x, py - y))
    for b, pin, order, lx, ly in sorted(rest, key=lambda r: (r[0], r[3], r[4])):
        for s in order:
            if edge[b][s].free:
                want = lx if s in "NS" else ly
                place[(b, pin)] = (s, edge[b][s].take(pin, want))
                break
    return place


def write_def(b, rect, pins, place):
    w, h = rect[2], rect[3]
    dbu = 1000
    lines = ["VERSION 5.8 ;", 'DIVIDERCHAR "/" ;', 'BUSBITCHARS "[]" ;', f"DESIGN slice_{b} ;",
             f"UNITS DISTANCE MICRONS {dbu} ;", f"DIEAREA ( 0 0 ) ( {round(w * dbu)} {round(h * dbu)} ) ;",
             f"PINS {len(pins)} ;"]
    half = round(PIN_LEN * dbu / 2)
    for pin, d in pins:
        s, t = place[(b, pin)]
        if s in "NS":
            layer, shape = "met2", f"( -140 -{half} ) ( 140 {half} )"
            x, y = t, (h - PIN_LEN / 2 if s == "N" else PIN_LEN / 2)
        else:
            layer, shape = "met3", f"( -{half} -300 ) ( {half} 300 )"
            x, y = (w - PIN_LEN / 2 if s == "E" else PIN_LEN / 2), t
        lines += [f"    - {pin} + NET {pin} + DIRECTION {d} + USE SIGNAL",
                  f"      + PORT + LAYER {layer} {shape}",
                  f"        + PLACED ( {round(x * dbu)} {round(y * dbu)} ) N ;"]
    lines += ["END PINS", "END DESIGN", ""]
    os.makedirs(os.path.join(OUT, "pins"), exist_ok=True)
    open(os.path.join(OUT, "pins", f"slice_{b}.def"), "w").write("\n".join(lines))


def chip_xy(plan, b, s, t):
    x, y, w, h = plan["macros"][b]
    return {"N": (x + t, y + h), "S": (x + t, y), "E": (x + w, y + t), "W": (x, y + t)}[s]


def hpwl(conn, plan, pos):
    """Half perimeter of every net between macros and pads, in um."""
    cx, cy = plan["core_origin"]
    pads = {f"pad_{p['name'].replace('[', '_').replace(']', '')}": (p["x"] - cx, p["y"] - cy) for p in plan["pads"]}
    total = 0.0
    for net, ends in conn:
        pts = [pos[(i[2:], p)] for i, p, _ in ends if i.startswith("u_") and (i[2:], p) in pos]
        pts += [pads[i] for i, _, k in ends if k == "PAD"]
        if len(pts) > 1:
            xs, ys = [p[0] for p in pts], [p[1] for p in pts]
            total += max(xs) - min(xs) + max(ys) - min(ys)
    return total


def draw(plan, conn, pos, path):
    try:
        from PIL import Image, ImageDraw
    except ImportError:
        return
    cw, ch = plan["core"]
    k = 1800 / max(cw, ch)
    im = Image.new("RGB", (int(cw * k) + 40, int(ch * k) + 40), "white")
    d = ImageDraw.Draw(im)
    P = lambda x, y: (20 + x * k, 20 + (ch - y) * k)
    for b, (x, y, w, h) in plan["macros"].items():
        d.rectangle([*P(x, y + h), *P(x + w, y)], outline="black", width=3)
        d.text(P(x + w / 2 - 10, y + h / 2), b, fill="black")
    for net, ends in conn:
        pts = [pos[(i[2:], p)] for i, p, _ in ends if i.startswith("u_") and (i[2:], p) in pos]
        for a, b2 in zip(pts, pts[1:]):
            d.line([*P(*a), *P(*b2)], fill=(30, 110, 220), width=1)
    for (b, pin), p in pos.items():
        d.ellipse([P(*p)[0] - 2, P(*p)[1] - 2, P(*p)[0] + 2, P(*p)[1] + 2], fill=(200, 40, 40))
    im.save(path)


def main():
    plan, conn = load()
    place = plan_pins(plan, conn)
    after = {(b, p): chip_xy(plan, b, s, t) for (b, p), (s, t) in place.items()}
    before = {}
    for b in BLOCKS:
        x, y, w, h = plan["macros"][b]
        for pin, (px, py) in lef_positions(b).items():
            before[(b, pin)] = (x + px, y + py)
    for b in BLOCKS:
        pins = lef_pins(b)
        missing = [p for p, _ in pins if (b, p) not in place]
        if missing:
            raise SystemExit(f"{b}: no place for {missing[:5]}")
        write_def(b, plan["macros"][b], pins, place)
    json.dump({f"{b}/{p}": [s, t] for (b, p), (s, t) in sorted(place.items())},
              open(os.path.join(OUT, "pins.json"), "w"), indent=0)
    draw(plan, conn, after, os.path.join(OUT, "pins.png"))
    hb, ha = hpwl(conn, plan, before), hpwl(conn, plan, after)
    per = {b: {s: sum(1 for (bb, _), (ss, _) in place.items() if bb == b and ss == s) for s in "NSEW"} for b in BLOCKS}
    for b in BLOCKS:
        print(f"{b:5s} pins per edge {per[b]}")
    print(f"half-perimeter wire length between macros and pads: {hb / 1000:.1f} mm before, {ha / 1000:.1f} mm planned")


if __name__ == "__main__":
    sys.exit(main())
