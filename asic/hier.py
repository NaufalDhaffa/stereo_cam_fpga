#!/usr/bin/env python3
"""The matcher slice as a tidy floor plan: every block hardened on its own into a rectangle
(OpenLane 2, SkyWater 130 nm), then placed in the chip's area. Runs inside WSL:

    python3 /mnt/d/stereo-depth-cam/asic/hier.py square [blocks] [top] [render] [ms_xxx ...]
    python3 /mnt/d/stereo-depth-cam/asic/hier.py strip  ...

  square   compact, about 500 x 490 um: the big cost block across the top, the other four in a
           row below it. Not a Tiny Tapeout shape (their blocks are at most two tiles high).
  strip    1380 x 226 um, about 8 x 2 Tiny Tapeout tiles, the five blocks in one row.

Naming blocks (ms_cost ...) redoes only those. Work folder ~/ic/hier_<shape>; what matters is
copied to asic/out_<shape>/ of the Windows project (floorplan.json, GDS, layout.png, summary.txt).
"""
import glob
import json
import os
import shutil
import subprocess
import sys

WIN = "/mnt/d/stereo-depth-cam"
OL = sorted(glob.glob("/nix/store/*-python3.11-openlane-2.3.10/bin/openlane"))[0]
PDK = os.path.expanduser("~/.volare")
B = r"\[\d+\]"
SLOT_V, SLOT_H = 0.92, 1.36             # distance of pin places along a top / bottom edge, a left / right edge

TEXT = {"ms_ctrl": "Penerima & kendali", "ms_cost": "Riwayat tanda tangan + biaya Hamming",
        "ms_path": "Biaya jalur (SGM)", "ms_pick": "Runner-up + pemenang kanan", "ms_up": "Rantai naik + sub-piksel"}
CTRL_SHARED = ["run", "pos" + B, "n" + B, "p1" + B, "p2" + B, "uq" + B, "gmin" + B, "kstar" + B, "up_edge" + B,
               "load", "sg_first", "act", "uc" + B, "scan", "j" + B, "w_real", "b_v", "b_first", "b_real", "b_use"]
COST_CTL = ["clk", "load", "first", "scan", "j" + B, "w_real", "b_first"]
PATH_IN = ["clk", "load", "scan", "j" + B, "b_first", "b_real", "gmin" + B, "p1" + B, "p2" + B, "dn_edge" + B, "up_edge" + B]
PATH_OUT = ["old" + B, "l_new" + B, "lmin" + B, "l_bot" + B, "l_top" + B, "best_s" + B, "best_j" + B]
PICK_IN = ["clk", "load", "scan", "j" + B, "g" + B, "old" + B, "l_new" + B, "kstar" + B, "n" + B, "b_v", "b_use", "b_real", "rec_in" + B]
PICK_OUT = ["sec" + B, "s0" + B, "s2" + B, "rec_top" + B]
UP_IN = ["clk", "rst", "uio" + B, "run", "act", "load", "uc" + B, "pos" + B, "n" + B, "uq" + B, "lmin" + B, "best_s" + B,
         "best_k" + B, "l_bot" + B, "l_top" + B, "rec_top" + B, "sec" + B, "s0" + B, "s2" + B]
UP_OUT = ["uo" + B, "uio_r" + B, "dn_edge" + B, "rec_in" + B]


def strip():
    h, y, gap, x = 170.0, 28.0, 45.0, 40.0
    pins = {"ms_ctrl": dict(W=["clk", "rst", "ui" + B, "pos_in" + B], E=["in_left" + B, "in_right" + B], N=CTRL_SHARED),
            "ms_cost": dict(W=COST_CTL + ["in_left" + B, "in_right" + B], E=["cost" + B]),
            "ms_path": dict(W=PATH_IN + ["cost" + B], E=PATH_OUT),
            "ms_pick": dict(W=PICK_IN, E=PICK_OUT), "ms_up": dict(W=UP_IN, E=UP_OUT)}
    blocks = []
    for name, w in (("ms_ctrl", 105.0), ("ms_cost", 560.0), ("ms_path", 115.0), ("ms_pick", 150.0), ("ms_up", 180.0)):
        blocks.append(dict(name=name, x=x, y=y, w=w, h=h, pins=pins[name]))
        x += w + gap
    return dict(die=(1379.76, 225.76), blocks=blocks, density=66, halo=4, pitch=60)


def square():
    """Cost block across the top; control, path, pick, up in a row below, in the order the data
    takes. The signatures leave the control block upwards, straight into the cost block above it;
    the cost comes down into the path block. Everything else runs left to right along the row."""
    m, gap, gy = 14.0, 20.0, 44.0           # margin to the die edge, channel between blocks, channel under the cost block
    # the halo takes the cell rows out of the margins and of the narrow channels (no room for both
    # supply straps there); the wide channel under the cost block keeps rows for the few top cells
    hb, ht = 222.0, 222.0                   # heights of the bottom row and of the top block
    widths = [("ms_ctrl", 96.0), ("ms_path", 92.0), ("ms_pick", 122.0), ("ms_up", 144.0)]
    inner = sum(w for _, w in widths) + gap * (len(widths) - 1)
    yb, yt = m, m + hb + gy
    xs, x = {}, m
    for name, w in widths:
        xs[name] = x
        x += w + gap
    slots = int(inner / SLOT_V)
    # along the cost block's bottom edge, left to right: what comes from the control block right
    # above it, then the cost over the path block, the rest empty
    sig = 2 * 45 + 13
    to_path = int((xs["ms_path"] - m + 30.0) / SLOT_V)
    cost_s = COST_CTL + ["in_left" + B, "in_right" + B, f"${max(1, to_path - sig)}", "cost" + B,
                         f"${max(1, slots - max(to_path, sig) - 8)}"]
    pins = {"ms_ctrl": dict(W=["clk", "rst", "ui" + B, "pos_in" + B], N=["in_left" + B, "in_right" + B, "$10"], E=CTRL_SHARED),
            "ms_cost": dict(S=cost_s),
            "ms_path": dict(W=PATH_IN, N=["$30", "cost" + B, "$58"], E=PATH_OUT),
            "ms_pick": dict(W=PICK_IN, E=PICK_OUT), "ms_up": dict(W=UP_IN, E=UP_OUT)}
    blocks = [dict(name=n, x=xs[n], y=yb, w=w, h=hb, pins=pins[n]) for n, w in widths]
    blocks.insert(1, dict(name="ms_cost", x=m, y=yt, w=inner, h=ht, pins=pins["ms_cost"]))
    return dict(die=(inner + 2 * m, yt + ht + m), blocks=blocks, density=64, halo=10, pitch=30)


def run(work, tag, config, log):
    with open(log, "w") as f:
        return subprocess.call([OL, "--pdk-root", PDK, "--run-tag", tag, "--overwrite", config], stdout=f, stderr=subprocess.STDOUT, cwd=work)


def brief(work, tag):
    f = sorted(glob.glob(f"{work}/runs/{tag}/final/metrics.json"))
    m = json.load(open(f[0])) if f else {}
    keys = ("design__instance__count", "design__instance__area", "design__instance__utilization",
            "timing__setup__ws", "timing__hold__ws", "route__wirelength", "route__drc_errors",
            "magic__drc_error__count", "klayout__drc_error__count", "design__lvs_error__count",
            "antenna__violating__nets", "design__max_slew_violation__count", "design__max_cap_violation__count")
    return {k: m[k] for k in keys if k in m}


def blocks(work, plan, only):
    os.makedirs(work + "/src", exist_ok=True)
    for f in glob.glob(WIN + "/rtl/mini/*.v"):
        shutil.copy(f, work + "/src/")
    res = {}
    for b in plan["blocks"]:
        name = b["name"]
        if only and name not in only:
            continue
        cfg = {"DESIGN_NAME": name, "VERILOG_FILES": [f"dir::src/{name}.v"], "CLOCK_PORT": "clk", "CLOCK_PERIOD": 100,
               "RUN_LINTER": False, "FP_SIZING": "absolute", "DIE_AREA": [0, 0, b["w"], b["h"]],
               "PL_TARGET_DENSITY_PCT": plan["density"], "FP_PDN_MULTILAYER": False, "RT_MAX_LAYER": "met3",
               "FP_PDN_VPITCH": 40, "FP_PDN_VOFFSET": 12, "FP_PIN_ORDER_CFG": f"dir::{name}.pins",
               "GRT_ALLOW_CONGESTION": True}
        nl = chr(10)
        open(f"{work}/{name}.pins", "w").write("".join("#" + side + nl + nl.join(p) + nl for side, p in b["pins"].items()))
        json.dump(cfg, open(f"{work}/{name}.json", "w"), indent=1)
        code = run(work, name, f"{name}.json", f"{work}/{name}.log")
        res[name] = dict(exit=code, **brief(work, name))
        print(name, res[name], flush=True)
    return res


def top(work, out, plan):
    macros, drawn = {}, []
    for b in plan["blocks"]:
        name = b["name"]
        fin = f"{work}/runs/{name}/final"
        macros[name] = {"gds": [f"{fin}/gds/{name}.gds"], "lef": [f"{fin}/lef/{name}.lef"], "vh": [f"{fin}/vh/{name}.vh"],
                        "nl": [f"{fin}/nl/{name}.nl.v"], "pnl": [f"{fin}/pnl/{name}.pnl.v"],
                        "spef": {"nom_*": [f"{fin}/spef/nom/{name}.nom.spef"], "min_*": [f"{fin}/spef/min/{name}.min.spef"],
                                 "max_*": [f"{fin}/spef/max/{name}.max.spef"]},
                        "instances": {f"u_slice.u_{name[3:]}": {"location": [b["x"], b["y"]], "orientation": "N"}}}
        m = brief(work, name)
        drawn.append(dict(name=name, text=TEXT[name], x=b["x"], y=b["y"], w=b["w"], h=b["h"],
                          cells=m.get("design__instance__count", 0), area=m.get("design__instance__area", 0)))
    # the hardened blocks have their parameters fixed: the top refers to them without
    text = open(work + "/src/mini_slice.v").read().replace(" #(.NBITS(NBITS))", "")
    open(work + "/src/mini_slice_top.v", "w").write(text)
    die = plan["die"]
    cfg = {"DESIGN_NAME": "tt_um_stereo_slice",
           "VERILOG_FILES": ["dir::src/mini_slice_top.v", "dir::src/tt_um_stereo_slice.v"],
           "CLOCK_PORT": "clk", "CLOCK_PERIOD": 100, "RUN_LINTER": False,
           "FP_SIZING": "absolute", "DIE_AREA": [0, 0, die[0], die[1]], "PL_TARGET_DENSITY_PCT": 20,
           "MACROS": macros, "GRT_ALLOW_CONGESTION": True,
           "PDN_MACRO_CONNECTIONS": [f"u_slice.u_{b['name'][3:]} VPWR VGND VPWR VGND" for b in plan["blocks"]],
           "FP_MACRO_HORIZONTAL_HALO": plan["halo"], "FP_MACRO_VERTICAL_HALO": plan["halo"],
           "FP_PDN_VPITCH": plan["pitch"], "FP_PDN_HPITCH": plan["pitch"], "FP_PDN_VOFFSET": 8, "FP_PDN_HOFFSET": 8}
    json.dump(cfg, open(f"{work}/top.json", "w"), indent=1)
    code = run(work, "top", "top.json", f"{work}/top.log")
    os.makedirs(out + "/blocks", exist_ok=True)
    json.dump(dict(die=die, blocks=drawn), open(out + "/floorplan.json", "w"), indent=1)
    res = dict(exit=code, **brief(work, "top"))
    print("top", res, flush=True)
    for f in glob.glob(f"{work}/runs/top/final/gds/*.gds"):
        shutil.copy(f, out + "/")
    for b in plan["blocks"]:
        for f in glob.glob(f"{work}/runs/{b['name']}/final/gds/*.gds"):
            shutil.copy(f, out + "/blocks/")
    if code:
        err = f"{work}/runs/top/error.log"
        print(open(err).read()[:600] if os.path.exists(err) else "(no error.log)")
    return res


def render(work, out, plan):
    """The final layout as a picture exactly the size of the die (so boxes can be drawn on it)."""
    kl = sorted(glob.glob("/nix/store/*klayout*/bin/klayout"))
    gds = sorted(glob.glob(f"{work}/runs/top/final/gds/*.gds"))
    if not kl or not gds:
        print("render: klayout or GDS missing", kl[:1], gds[:1])
        return
    lyp = sorted(glob.glob(PDK + "/volare/sky130/versions/*/sky130A/libs.tech/klayout/tech/sky130A.lyp"))
    die = plan["die"]
    px = 5520 if die[0] > 2 * die[1] else 3200
    script = f"{work}/render.py"
    open(script, "w").write(f'''
import pya
lv = pya.LayoutView()
lv.load_layout("{gds[0]}", True)
{"lv.load_layer_props('" + lyp[0] + "')" if lyp else ""}
lv.max_hier()
lv.set_config("background-color", "#000000")
lv.set_config("grid-visible", "false")
lv.set_config("text-visible", "false")
lv.zoom_box(pya.DBox(0, 0, {die[0]}, {die[1]}))
lv.save_image_with_options("{out}/layout.png", {px}, {int(px * die[1] / die[0])}, 0, 0, 0, pya.DBox(0, 0, {die[0]}, {die[1]}), False)
''')
    print("render:", subprocess.call([kl[0], "-b", "-r", script], env=dict(os.environ, QT_QPA_PLATFORM="offscreen")))


def main():
    args = sys.argv[1:]
    shape = args.pop(0) if args and args[0] in ("square", "strip") else "square"
    plan = square() if shape == "square" else strip()
    only = [a for a in args if a.startswith("ms_")]
    steps = [a for a in args if not a.startswith("ms_")] or ["blocks", "top", "render"]
    work, out = os.path.expanduser(f"~/ic/hier_{shape}"), f"{WIN}/asic/out_{shape}"
    os.makedirs(work, exist_ok=True)
    os.makedirs(out, exist_ok=True)
    print(f"{shape}: die {plan['die'][0]:.2f} x {plan['die'][1]:.2f} um", flush=True)
    summary = {}
    if "blocks" in steps:
        summary["blocks"] = blocks(work, plan, only)
    if "top" in steps:
        summary["top"] = top(work, out, plan)
    if "render" in steps:
        render(work, out, plan)
    with open(out + "/summary.txt", "a") as f:
        f.write(json.dumps(summary, indent=1) + "\n")
    print("HIER_DONE")


if __name__ == "__main__":
    main()
