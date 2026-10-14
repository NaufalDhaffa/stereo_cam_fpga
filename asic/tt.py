#!/usr/bin/env python3
"""The matcher slice hardened the Tiny Tapeout way: the project in asic/tt (their template:
src/config.json, info.yaml, docs/info.md) run flat through OpenLane 2 with the die outline and
the pin places of their DEF template. Runs inside WSL:

    python3 /mnt/d/stereo-depth-cam/asic/tt.py [4x2] [3x4 ...]

Does what tt-support-tools' project.py does before hardening (create_user_config): the template
config plus DESIGN_NAME, sources, DIE_AREA, FP_DEF_TEMPLATE, VDD/GND pin names, RT_MAX_LAYER met4.
Their files are read from ~/ic/tt_ref/tt-support-tools (a clone, nothing of it is run).
Work folder ~/ic/tt_<tiles>; results in asic/out_tt_<tiles>/ of the Windows project:
GDS, layout.png, cells.json (where every cell is and which block it belongs to), summary.txt.
"""
import glob
import json
import os
import re
import shutil
import sys

import hier

WIN = hier.WIN
REF = os.path.expanduser("~/ic/tt_ref/tt-support-tools/tech/sky130A")
TOP = "tt_um_stereo_slice"                    # the name on the shuttle (Tiny Tapeout suggests adding a GitHub user name)
RTL_TOP = "tt_um_stereo_slice"                # the name in rtl/mini, as the FPGA build uses it
BLOCKS = ("ctrl", "cost", "path", "pick", "up")


def cells(work, out, die):
    """Every placed cell with its block, from the final DEF; cell sizes from the library's LEF."""
    size, name = {}, None
    for lef in glob.glob(hier.PDK + "/volare/sky130/versions/*/sky130A/libs.ref/sky130_fd_sc_hd/lef/sky130_fd_sc_hd.lef")[:1]:
        for line in open(lef):
            p = line.split()
            if len(p) == 2 and p[0] == "MACRO":
                name = p[1]
            elif len(p) >= 4 and p[0] == "SIZE" and name:
                size[name] = (float(p[1]), float(p[3]))
    defs = glob.glob(f"{work}/runs/top/final/def/*.def")
    if not defs:
        return
    rows, inside = [], False
    pat = re.compile(r"-\s+(\S+)\s+(\S+).*?(?:PLACED|FIXED)\s+\(\s*(-?\d+)\s+(-?\d+)\s*\)")
    blk = re.compile(r"u_slice\W+u_(" + "|".join(BLOCKS) + r")\W")
    for line in open(defs[0]):
        if line.startswith("COMPONENTS"):
            inside = True
        elif line.startswith("END COMPONENTS"):
            break
        elif inside:
            m = pat.search(line)
            if not m or re.search(r"__(fill|decap|tapvpwrvgnd)", m.group(2)):
                continue
            b = blk.search(m.group(1))
            w, h = size.get(m.group(2), (1.0, 2.72))
            rows.append([int(m.group(3)) / 1000, int(m.group(4)) / 1000, w, h, BLOCKS.index(b.group(1)) if b else -1])
    json.dump(dict(die=die, blocks=["ms_" + b for b in BLOCKS], text=[hier.TEXT["ms_" + b] for b in BLOCKS], cells=rows),
              open(out + "/cells.json", "w"))
    print("cells:", len(rows), "per block:", [sum(1 for r in rows if r[4] == i) for i in range(-1, len(BLOCKS))], flush=True)


def sync_sources():
    """asic/tt/src/*.v are copies of rtl/mini (the hub stays outside); only the top's name differs."""
    src = WIN + "/asic/tt/src"
    for f in glob.glob(src + "/*.v"):
        os.remove(f)
    for f in glob.glob(WIN + "/rtl/mini/*.v"):
        name = os.path.basename(f)
        if name == "mini_hub.v":
            continue
        text = open(f).read()
        if name == RTL_TOP + ".v":
            name, text = TOP + ".v", text.replace("module " + RTL_TOP, "module " + TOP)
        open(f"{src}/{name}", "w").write(text)


def one(tiles):
    die = [float(v) for v in open(REF + "/tile_sizes.yaml").read().split(tiles + ': "')[1].split('"')[0].split()]
    work, out = os.path.expanduser(f"~/ic/tt_{tiles}"), f"{WIN}/asic/out_tt_{tiles}"
    shutil.rmtree(work + "/src", ignore_errors=True)
    os.makedirs(work, exist_ok=True)
    os.makedirs(out, exist_ok=True)
    sync_sources()
    shutil.copytree(WIN + "/asic/tt/src", work + "/src")
    shutil.copy(f"{REF}/def/tt_block_{tiles}_pg.def", work + "/template.def")
    cfg = {k: v for k, v in json.load(open(work + "/src/config.json")).items() if k != "//"}
    cfg.update({"DESIGN_NAME": TOP, "VERILOG_FILES": sorted("dir::src/" + os.path.basename(f) for f in glob.glob(work + "/src/*.v")),
                "DIE_AREA": die, "FP_DEF_TEMPLATE": "dir::template.def", "VDD_PIN": "VPWR", "GND_PIN": "VGND",
                "RT_MAX_LAYER": "met4"})
    json.dump(cfg, open(work + "/top.json", "w"), indent=1)
    print(f"{tiles}: die {die[2]} x {die[3]} um", flush=True)
    code = hier.run(work, "top", "top.json", work + "/top.log")
    res = dict(tiles=tiles, exit=code, **hier.brief(work, "top"))
    print(res, flush=True)
    if code:
        err = f"{work}/runs/top/error.log"
        print(open(err).read()[:1500] if os.path.exists(err) else "(no error.log)")
    for f in glob.glob(f"{work}/runs/top/final/gds/*.gds") + glob.glob(f"{work}/runs/top/final/metrics.json"):
        shutil.copy(f, out + "/")
    plan = dict(die=(die[2], die[3]))
    hier.render(work, out, plan)
    cells(work, out, plan["die"])
    with open(out + "/summary.txt", "a") as f:
        f.write(json.dumps(res, indent=1) + "\n")


if __name__ == "__main__":
    for t in sys.argv[1:] or ["4x2"]:
        one(t)
    print("TT_DONE")
