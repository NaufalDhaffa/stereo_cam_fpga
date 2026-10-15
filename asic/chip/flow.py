#!/usr/bin/env python3
"""Hardening of the stand-alone slice chip after asic/chip/plan.py (runs inside WSL).

    python3 /mnt/d/stereo-depth-cam/asic/chip/flow.py [blocks] [core] [ctrl cost ...]

  blocks   each module from its gate-level netlist (asic/chip/synth.sh: clock gating included),
           as a macro exactly the size of the plan; routing on met1 to met3; power straps met2
           (vertical) and met3 (horizontal); signal pins on the edge that faces the partner
  core     the five macros at their places in the core (slice_core): the glue, the reset
           synchroniser, a power ring on met4/met5 with straps over the macros, and the 26
           signal pins on the edges facing their pads (ui west, uio north, uo east, clk/rst south)

The pad ring around the core is asic/chip/padring.py. Work folder ~/ic/chip; results in
asic/chip/out/.
"""
import glob
import json
import os
import shutil
import sys

WIN = "/mnt/d/stereo-depth-cam"
sys.path.insert(0, WIN + "/asic")
import hier  # noqa: E402  (run, brief)

WORK = os.path.expanduser("~/ic/chip")
OUT = WIN + "/asic/chip/out"
BLOCKS = ("ctrl", "cost", "path", "pick", "up")
PLACED_GROWTH = 1.25

# ports of each module: name -> (width, partners); "padW" etc. = the core edge towards those pads
PORTS = {
    "ctrl": {"clk": (1, ["padS"]), "rst": (1, ["padS"]), "ui": (8, ["padW"]), "pos_in": (3, ["up"]),
             "run": (1, ["up"]), "pos": (3, ["pick", "up"]), "n": (3, ["pick", "up"]), "p1": (7, ["path"]),
             "p2": (7, ["path"]), "uq": (4, ["up"]), "gmin": (7, ["path"]), "kstar": (7, ["pick"]),
             "up_edge": (7, ["path"]), "in_left": (45, ["cost"]), "in_right": (45, ["cost"]),
             "load": (1, ["cost", "path", "pick", "up"]), "sg_first": (1, ["cost"]), "act": (1, ["up"]),
             "uc": (7, ["up"]), "scan": (1, ["cost", "path", "pick"]), "j": (4, ["cost", "path", "pick"]),
             "w_real": (1, ["cost"]), "b_v": (1, ["pick"]), "b_first": (1, ["cost", "path"]),
             "b_real": (1, ["path", "pick"]), "b_use": (1, ["pick"])},
    "cost": {"clk": (1, ["padS"]), "load": (1, ["ctrl"]), "first": (1, ["ctrl"]), "in_left": (45, ["ctrl"]),
             "in_right": (45, ["ctrl"]), "scan": (1, ["ctrl"]), "j": (4, ["ctrl"]), "w_real": (1, ["ctrl"]),
             "b_first": (1, ["ctrl"]), "cost": (6, ["path"])},
    "path": {"clk": (1, ["padS"]), "load": (1, ["ctrl"]), "scan": (1, ["ctrl"]), "j": (4, ["ctrl"]),
             "b_first": (1, ["ctrl"]), "b_real": (1, ["ctrl"]), "cost": (6, ["cost"]), "gmin": (7, ["ctrl"]),
             "p1": (7, ["ctrl"]), "p2": (7, ["ctrl"]), "dn_edge": (7, ["up"]), "up_edge": (7, ["ctrl"]),
             "old": (7, ["pick"]), "l_new": (7, ["pick"]), "lmin": (7, ["up"]), "l_bot": (7, ["up"]),
             "l_top": (7, ["up"]), "best_s": (8, ["up"]), "best_j": (4, ["up"])},
    "pick": {"clk": (1, ["padS"]), "load": (1, ["ctrl"]), "scan": (1, ["ctrl"]), "j": (4, ["ctrl"]),
             "g": (7, ["ctrl"]), "old": (7, ["path"]), "l_new": (7, ["path"]), "kstar": (7, ["ctrl"]),
             "n": (3, ["ctrl"]), "b_v": (1, ["ctrl"]), "b_use": (1, ["ctrl"]), "b_real": (1, ["ctrl"]),
             "rec_in": (15, ["up"]), "sec": (8, ["up"]), "s0": (8, ["up"]), "s2": (8, ["up"]), "rec_top": (15, ["up"])},
    "up": {"clk": (1, ["padS"]), "rst": (1, ["padS"]), "uio": (8, ["padN"]), "uo": (8, ["padE"]), "uio_r": (8, ["ctrl"]),
           "run": (1, ["ctrl"]), "act": (1, ["ctrl"]), "load": (1, ["ctrl"]), "uc": (7, ["ctrl"]), "pos": (3, ["ctrl"]),
           "n": (3, ["ctrl"]), "uq": (4, ["ctrl"]), "lmin": (7, ["path"]), "best_s": (8, ["path"]),
           "best_k": (7, ["path"]), "l_bot": (7, ["path"]), "l_top": (7, ["path"]), "rec_top": (15, ["pick"]),
           "sec": (8, ["pick"]), "s0": (8, ["pick"]), "s2": (8, ["pick"]), "dn_edge": (7, ["path"]), "rec_in": (15, ["pick"])},
}


def centre(plan, who):
    cw, ch = plan["core"]
    if who.startswith("pad"):
        return {"W": (0, ch / 2), "E": (cw, ch / 2), "N": (cw / 2, ch), "S": (cw / 2, 0)}[who[3]]
    x, y, w, h = plan["macros"][who]
    return x + w / 2, y + h / 2


def side_order(b, partners, plan):
    """The edges of macro b, best first, for pins that go to the given partners."""
    x, y, w, h = plan["macros"][b]
    cx, cy = x + w / 2, y + h / 2
    pts = [centre(plan, p) for p in partners]
    dx = sum(p[0] for p in pts) / len(pts) - cx
    dy = sum(p[1] for p in pts) / len(pts) - cy
    # how well each edge faces the partners, the edge's aspect taken into account
    score = {"E": dx / w, "W": -dx / w, "N": dy / h, "S": -dy / h}
    return sorted(score, key=lambda k: -score[k])


def capacity(side, w, h):
    """Pin places on an edge: met2 tracks on top and bottom (0.46 um apart, every other one
    used), met3 tracks on left and right (0.68 um, every other one)."""
    length = (w if side in "NS" else h) - 8
    return int(length / (0.92 if side in "NS" else 1.36))


def pin_cfg(b, plan):
    x, y, w, h = plan["macros"][b]
    sides = {"N": [], "S": [], "E": [], "W": []}
    used = {s: 0 for s in sides}
    for port, (width, partners) in sorted(PORTS[b].items(), key=lambda kv: -kv[1][0]):
        for side in side_order(b, partners, plan):
            if used[side] + width <= capacity(side, w, h):
                break
        else:
            raise SystemExit(f"{b}: no edge has room for {port}")
        used[side] += width
        sides[side].append(f"^{port}$" if width == 1 else f"^{port}\\[\\d+\\]$")
    nl = chr(10)
    return "".join(f"#{s}{nl}" + nl.join(p) + nl for s, p in sides.items() if p), sides


MARGIN_X, MARGIN_Y = 10 * 0.46, 2 * 2.72      # core of a macro to its edge (LEFT/RIGHT, TOP/BOTTOM_MARGIN_MULT)


def density(b, w, h):
    synth = float(open(f"{WORK}/net/slice_{b}.log").read().split("Chip area for module")[-1].split(":")[1].split()[0])
    core = (w - 2 * MARGIN_X) * (h - 2 * MARGIN_Y)
    return int(min(92, 100 * synth * PLACED_GROWTH / core + 10))


# per macro: cost, the largest, has the longest met3 runs; one fanout net still ended at 598 of
# the 400 allowed after detailed routing (a wider antenna margin only added diodes and slew):
# a buffer at least every 100 um keeps every wire shorter
SHORT_WIRES = {"DESIGN_REPAIR_MAX_WIRE_LENGTH": 100, "GRT_DESIGN_REPAIR_MAX_WIRE_LENGTH": 100}
BLOCK_CFG = {"cost": SHORT_WIRES, "up": SHORT_WIRES}       # up: one fanout net at 442 of 400


def blocks(plan, only):
    res = {}
    for b in BLOCKS:
        if only and b not in only:
            continue
        name = f"slice_{b}"
        x, y, w, h = plan["macros"][b]
        # every pin at the place pins.py planned (facing its partner), from a DEF template
        template = f"{OUT}/pins/{name}.def"
        if not os.path.exists(template):
            raise SystemExit(f"{template} missing: run pins.py first")
        sides = {}
        for line in open(template):
            if "+ PLACED" in line:
                sides.setdefault("pins", []).append(line)
        cfg = {"DESIGN_NAME": name, "VERILOG_FILES": [f"dir::net/{name}.v"], "SYNTH_ELABORATE_ONLY": True,
               "CLOCK_PORT": "clk", "CLOCK_PERIOD": 40, "RUN_LINTER": False,
               "FP_SIZING": "absolute", "DIE_AREA": [0, 0, w, h], "PL_TARGET_DENSITY_PCT": density(b, w, h),
               "RT_MAX_LAYER": "met4", "GRT_ALLOW_CONGESTION": True, "FP_DEF_TEMPLATE": template,
               # the pins are 4 µm long: the margin keeps them clear of the via stacks where the met4
               # straps meet the outer rails (a pin over one is shorted to VPWR/VGND)
               "TOP_MARGIN_MULT": 2, "BOTTOM_MARGIN_MULT": 2, "LEFT_MARGIN_MULT": 10, "RIGHT_MARGIN_MULT": 10,
               # the ports only face short wires to the next macro: no buffer on every pin (they crowd
               # the edge where many pins meet and leave the detailed placement no room)
               "DESIGN_REPAIR_BUFFER_INPUT_PORTS": False, "DESIGN_REPAIR_BUFFER_OUTPUT_PORTS": False,
               "VDD_PIN": "VPWR", "GND_PIN": "VGND",
               # power: vertical met4 straps only; the core's horizontal met5 straps land on them
               "FP_PDN_MULTILAYER": False, "FP_PDN_VPITCH": 40, "FP_PDN_VOFFSET": 10,
               "MAGIC_DEF_LABELS": False, "MAGIC_WRITE_LEF_PINONLY": True,
               # sign-off DRC is Magic's; KLayout's deck still reports npc.2 where two standard cells
               # abut (Magic finds none there), so its count is reported, not a stop
               "ERROR_ON_KLAYOUT_DRC": False,
               # antennas: the global router's repair, with a margin of 50%: it repairs nets
               # from their estimated routes, and detailed routing makes some met3 runs longer
               # (the default 10% left 7 nets in cost at 470 of the 400 allowed). Diodes only
               # where a net needs one: diodes put in ahead of routing on every long net load
               # gates after they were sized
               "GRT_ANTENNA_ITERS": 10, "GRT_ANTENNA_MARGIN": 50,
               # slew: a buffer at least every 150 µm, and the design repaired once more with the
               # global routes (the placement estimate left long nets above the 0.75 ns limit)
               "DESIGN_REPAIR_MAX_WIRE_LENGTH": 150, "GRT_DESIGN_REPAIR_MAX_WIRE_LENGTH": 150,
               "RUN_POST_GRT_DESIGN_REPAIR": True,
               # a diode on each input: the wire from the macro's edge to its gates is only
               # joined to the driving macro's diffusion at the top, after these layers are made
               "DIODE_ON_PORTS": "in"}
        cfg.update(BLOCK_CFG.get(b, {}))
        json.dump(cfg, open(f"{WORK}/{name}.json", "w"), indent=1)
        code = hier.run(WORK, name, f"{name}.json", f"{WORK}/{name}.log")
        res[b] = dict(exit=code, size=[w, h], pins={s: len(p) for s, p in sides.items()}, **hier.brief(WORK, name))
        print(b, res[b], flush=True)
        if code:
            err = f"{WORK}/runs/{name}/error.log"
            print(open(err).read()[:800] if os.path.exists(err) else "(no error.log)")
    return res


CORE_V = """// Core of the stand-alone slice chip: the five macros (one slice of the chained matcher,
// rtl/mini/mini_slice.v) and the reset synchroniser of the Tiny Tapeout top.
module slice_core (
    input  wire       clk,
    input  wire       rst_n,
    input  wire [7:0] ui,
    input  wire [7:0] uio,
    output wire [7:0] uo
);
    reg [1:0] rs;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) rs <= 2'b00;
        else        rs <= {rs[0], 1'b1};
    end
    wire rst = !rs[1];
"""


def core(plan):
    """slice_core: the glue of mini_slice.v around the macros."""
    body = open(f"{WIN}/rtl/mini/mini_slice.v").read()
    body = body[body.index("    wire        run"):body.index("endmodule")]
    for b in BLOCKS:
        body = body.replace(f"ms_{b} #(.NBITS(NBITS))", f"slice_{b}").replace(f"ms_{b} ", f"slice_{b} ")
    body = body.replace("NBITS", "44")
    open(f"{WORK}/net/slice_core.v", "w").write(CORE_V + body + "endmodule\n")
    macros = {}
    for b in BLOCKS:
        name = f"slice_{b}"
        fin = f"{WORK}/runs/{name}/final"
        x, y, w, h = plan["macros"][b]
        macros[name] = {"gds": [f"{fin}/gds/{name}.gds"], "lef": [f"{fin}/lef/{name}.lef"],
                        "nl": [f"{fin}/nl/{name}.nl.v"], "pnl": [f"{fin}/pnl/{name}.pnl.v"],
                        "spef": {"nom_*": [f"{fin}/spef/nom/{name}.nom.spef"], "min_*": [f"{fin}/spef/min/{name}.min.spef"],
                                 "max_*": [f"{fin}/spef/max/{name}.max.spef"]},
                        "instances": {f"u_{b}": {"location": [x, y], "orientation": "N"}}}
    nl = chr(10)
    pins = {"W": ["^ui\\[\\d+\\]$"], "N": ["^uio\\[\\d+\\]$"], "E": ["^uo\\[\\d+\\]$"], "S": ["^clk$", "^rst_n$"]}
    open(f"{WORK}/slice_core.pins", "w").write("".join(f"#{s}{nl}" + nl.join(p) + nl for s, p in pins.items()))
    cw, ch = plan["core"]
    cfg = {"DESIGN_NAME": "slice_core", "VERILOG_FILES": ["dir::net/slice_core.v"],
           "VERILOG_BLACKBOX_FILES" if False else "EXTRA_VERILOG_MODELS": [f"dir::runs/slice_{b}/final/nl/slice_{b}.nl.v" for b in BLOCKS],
           "CLOCK_PORT": "clk", "CLOCK_PERIOD": 40, "RUN_LINTER": False,
           "FP_SIZING": "absolute", "DIE_AREA": [0, 0, cw, ch], "PL_TARGET_DENSITY_PCT": 40,
           "MACROS": macros, "FP_PIN_ORDER_CFG": "dir::slice_core.pins", "VDD_PIN": "VPWR", "GND_PIN": "VGND",
           "RT_MAX_LAYER": "met5", "GRT_ALLOW_CONGESTION": True,
           "PDN_MACRO_CONNECTIONS": [f"u_{b} VPWR VGND VPWR VGND" for b in BLOCKS],
           "FP_PDN_MULTILAYER": True, "FP_PDN_CORE_RING": True,
           "FP_PDN_VPITCH": 40, "FP_PDN_HPITCH": 40, "FP_PDN_VOFFSET": 10, "FP_PDN_HOFFSET": 10,
           "FP_PDN_CORE_RING_VWIDTH": 3.1, "FP_PDN_CORE_RING_HWIDTH": 3.1,
           "FP_PDN_CORE_RING_VOFFSET": 2.0, "FP_PDN_CORE_RING_HOFFSET": 2.0,
           "FP_PDN_CORE_RING_VSPACING": 1.7, "FP_PDN_CORE_RING_HSPACING": 1.7,
           "FP_MACRO_HORIZONTAL_HALO": 4, "FP_MACRO_VERTICAL_HALO": 4}
    json.dump(cfg, open(f"{WORK}/slice_core.json", "w"), indent=1)
    code = hier.run(WORK, "slice_core", "slice_core.json", f"{WORK}/slice_core.log")
    res = dict(exit=code, **hier.brief(WORK, "slice_core"))
    print("core", res, flush=True)
    if code:
        err = f"{WORK}/runs/slice_core/error.log"
        print(open(err).read()[:1500] if os.path.exists(err) else "(no error.log)")
    return res


def collect():
    os.makedirs(OUT + "/gds", exist_ok=True)
    for f in glob.glob(f"{WORK}/runs/*/final/gds/*.gds"):
        shutil.copy(f, OUT + "/gds/")


def main():
    args = sys.argv[1:]
    only = [a for a in args if a in BLOCKS]
    steps = [a for a in args if a in ("blocks", "core")] or ["blocks", "core"]
    plan = json.load(open(OUT + "/plan.json"))
    os.makedirs(WORK, exist_ok=True)
    summary = {}
    if "blocks" in steps:
        summary["blocks"] = blocks(plan, only)
    if "core" in steps:
        summary["core"] = core(plan)
    collect()
    with open(OUT + "/summary.txt", "a") as f:
        f.write(json.dumps(summary, indent=1) + "\n")
    print("CHIP_FLOW_DONE")


if __name__ == "__main__":
    main()
