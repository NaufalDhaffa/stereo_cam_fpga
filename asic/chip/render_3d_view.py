#!/usr/bin/env python3
"""3D views of the finished chip from its GDS, seen from the side with depth (as GDS3D shows a
layout): every layer extruded between its real heights in the sky130 stack, vias included.

  1. inside WSL (KLayout reads the merged GDS):
       python3 /mnt/d/stereo-depth-cam/asic/chip/render_3d_view.py extract
     writes the boxes of every layer in each window to out/3d_boxes/<view>.txt
  2. on Windows (PyVista / VTK draw them):
       python asic/chip/render_3d_view.py render
     writes out/modules/chip_3d_<view>.png and removes out/3d_boxes

Views: "cells", 30 x 30 um inside a macro (transistors, li1, metal and vias of the standard
cells); "channels", 90 x 90 um where the channels between the macros meet (the planned wires
between them over the cells, power straps on met4 / met5).
"""
import glob
import json
import os
import subprocess
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
OUT = os.path.join(HERE, "out")
BOXES = os.path.join(OUT, "3d_boxes")
Z_SCALE = 2.0
# sky130 layer stack: GDS layer, bottom and top in um, colour (the cross section of the PDK)
STACK = [
    ("diff", "65/20", 0.00, 0.12, (60, 160, 70)),
    ("tap", "65/44", 0.00, 0.12, (60, 140, 120)),
    ("poly", "66/20", 0.33, 0.51, (200, 50, 50)),
    ("licon", "66/44", 0.12, 0.94, (150, 150, 150)),
    ("li1", "67/20", 0.94, 1.04, (160, 110, 210)),
    ("mcon", "67/44", 1.04, 1.38, (150, 150, 150)),
    ("met1", "68/20", 1.38, 1.74, (60, 110, 230)),
    ("via", "68/44", 1.74, 2.00, (170, 170, 170)),
    ("met2", "69/20", 2.00, 2.36, (230, 70, 160)),
    ("via2", "69/44", 2.36, 2.79, (170, 170, 170)),
    ("met3", "70/20", 2.79, 3.63, (50, 190, 210)),
    ("via3", "70/44", 3.63, 4.02, (180, 180, 180)),
    ("met4", "71/20", 4.02, 4.87, (235, 155, 40)),
    ("via4", "71/44", 4.87, 5.37, (190, 190, 190)),
    ("met5", "72/20", 5.37, 6.63, (215, 70, 60)),
]

KL = """
import json
import pya
c = json.load(open(cfg))
ly = pya.Layout()
ly.read(c["gds"])
top = ly.top_cell()
dbu = ly.dbu
for view in c["views"]:
    x0, y0, x1, y1 = view["box"]
    win = pya.DBox(x0, y0, x1, y1).to_itype(dbu)
    with open(view["out"], "w") as f:
        for name, src, z0, z1, col in c["stack"]:
            l, d = map(int, src.split("/"))
            reg = pya.Region(top.begin_shapes_rec_touching(ly.layer(l, d), win)) & pya.Region(win)
            reg.merge()
            n = 0
            for p in reg.each():
                for t in p.decompose_trapezoids(0):
                    b = t.bbox()
                    f.write(f"{name} {b.left * dbu - x0:.3f} {b.bottom * dbu - y0:.3f} {b.right * dbu - x0:.3f} {b.top * dbu - y0:.3f}\\n")
                    n += 1
            print("BOXES", view["name"], name, n)
"""


def views():
    plan = json.load(open(os.path.join(OUT, "plan.json")))
    ox, oy = plan["core_origin"]
    x, y, w, h = plan["macros"]["ctrl"]
    jx, jy = ox + x + w + 4, oy + y + h + 8              # where the channels meet
    px, py, pw, ph = plan["macros"]["pick"]
    cx, cy = ox + px + pw / 2, oy + py + ph / 2          # inside a macro
    return [dict(name="cells", box=[cx - 15, cy - 15, cx + 15, cy + 15]),
            dict(name="channels", box=[jx - 45, jy - 45, jx + 45, jy + 45])]


def extract():
    klayout = sorted(glob.glob("/nix/store/*klayout*/bin/klayout"))[0]
    os.makedirs(BOXES, exist_ok=True)
    vs = views()
    for v in vs:
        v["out"] = os.path.join(BOXES, v["name"] + ".txt")
    cfg = os.path.join(BOXES, "cfg.json")
    json.dump(dict(gds=os.path.expanduser("~/ic/chip/top/stereo_slice_chip.gds"), views=vs, stack=STACK), open(cfg, "w"))
    script = os.path.join(BOXES, "kl.py")
    open(script, "w").write(KL)
    r = subprocess.run([klayout, "-z", "-r", script, "-rd", f"cfg={cfg}"], capture_output=True, text=True)
    print("\n".join(l for l in (r.stdout + r.stderr).splitlines() if "BOXES" in l or "rror" in l))
    os.remove(cfg)
    os.remove(script)


def cuboids(rows, z0, z1):
    """One mesh of all the boxes of a layer (8 corners and 6 faces each)."""
    import numpy as np
    import pyvista as pv
    b = np.array(rows, dtype=float)
    n = len(b)
    x0, y0, x1, y1 = b.T
    z0, z1 = z0 * Z_SCALE, z1 * Z_SCALE
    pts = np.stack([np.stack([x0, y0, np.full(n, z0)], 1), np.stack([x1, y0, np.full(n, z0)], 1),
                    np.stack([x1, y1, np.full(n, z0)], 1), np.stack([x0, y1, np.full(n, z0)], 1),
                    np.stack([x0, y0, np.full(n, z1)], 1), np.stack([x1, y0, np.full(n, z1)], 1),
                    np.stack([x1, y1, np.full(n, z1)], 1), np.stack([x0, y1, np.full(n, z1)], 1)], 1).reshape(-1, 3)
    quads = np.array([[0, 1, 2, 3], [4, 5, 6, 7], [0, 1, 5, 4], [1, 2, 6, 5], [2, 3, 7, 6], [3, 0, 4, 7]])
    base = (np.arange(n) * 8)[:, None, None]
    faces = (quads[None] + base).reshape(-1, 4)
    faces = np.hstack([np.full((len(faces), 1), 4), faces]).ravel()
    return pv.PolyData(pts, faces)


def render():
    import pyvista as pv
    pv.OFF_SCREEN = True
    for v in views():
        path = os.path.join(BOXES, v["name"] + ".txt")
        rows = {}
        for line in open(path):
            name, *xy = line.split()
            rows.setdefault(name, []).append(list(map(float, xy)))
        size = v["box"][2] - v["box"][0]
        p = pv.Plotter(off_screen=True, window_size=(2000, 1400))
        p.set_background("#0d1117", top="#2b3240")
        for name, src, z0, z1, col in STACK:
            if name not in rows:
                continue
            via = name in ("licon", "mcon", "via", "via2", "via3", "via4")
            p.add_mesh(cuboids(rows[name], z0, z1), color=[c / 255 for c in col], smooth_shading=False,
                       specular=0.25 if not via else 0.0, ambient=0.25, diffuse=0.8,
                       opacity=1.0 if name not in ("diff", "tap") else 0.9)
        # silicon below
        p.add_mesh(pv.Box(bounds=(0, size, 0, size, -0.6 * Z_SCALE, 0)), color=(0.35, 0.36, 0.42))
        p.enable_anti_aliasing("ssaa")
        p.camera_position = [(size * 1.55, -size * 0.85, size * 0.95), (size * 0.5, size * 0.45, 1.0), (0, 0, 1)]
        p.camera.view_angle = 30
        p.add_text(f"stereo_slice_chip  -  {v['name']}: {size:.0f} x {size:.0f} um from the GDS, "
                   f"sky130 stack (height x{Z_SCALE:.0f})", position="upper_left", font_size=14, color="white")
        legend = [[n, [c / 255 for c in col]] for n, _, _, _, col in STACK if n in rows and n not in ("licon", "mcon", "via", "via2", "via3", "via4", "tap")]
        p.add_legend(legend, bcolor=(0.08, 0.09, 0.12), border=False, size=(0.08, 0.22), loc="upper right")
        out = os.path.join(OUT, "modules", f"chip_3d_{v['name']}.png")
        p.screenshot(out)
        p.close()
        print("WROTE", out)
    for f in glob.glob(os.path.join(BOXES, "*")):
        os.remove(f)
    os.rmdir(BOXES)


if __name__ == "__main__":
    {"extract": extract, "render": render}[sys.argv[1]]()
