#!/usr/bin/env python3
"""Pictures of the five hardened macros, drawn by KLayout with the PDK's layer colours (runs
inside WSL):

    python3 /mnt/d/stereo-depth-cam/asic/chip/render_modules.py

For each macro (asic/chip/out/gds/slice_<b>.gds): out/modules/<b>.png, the whole macro, and
out/modules/<b>_zoom.png, a ZOOM x ZOOM um window at its centre (cell rows, rails, wires, vias).
"""
import glob
import json
import os
import subprocess

HERE = os.path.dirname(os.path.abspath(__file__))
OUT = os.path.join(HERE, "out")
PDK = glob.glob(os.path.expanduser("~/.volare/volare/sky130/versions/*/sky130A"))[0]
KLAYOUT = sorted(glob.glob("/nix/store/*klayout*/bin/klayout"))[0]
BLOCKS = ("ctrl", "cost", "path", "pick", "up")
ZOOM = 12.0

SCRIPT = """
import json
import pya
c = json.load(open(cfg))
for job in c["jobs"]:
    view = pya.LayoutView()
    view.load_layout(job["gds"], False)
    view.load_layer_props(c["lyp"])
    view.set_config("background-color", "#ffffff")
    view.set_config("grid-visible", "false")
    view.set_config("text-visible", "false")
    view.max_hier()
    top = view.active_cellview().layout().top_cell()
    box = top.dbbox()
    view.zoom_box(box)
    view.save_image(job["full"], job["px"], int(job["px"] * box.height() / box.width()))
    for z in job.get("zooms") or [dict(png=job["zoom"], centre=[box.center().x, box.center().y], size=c["zoom"])]:
        (cx, cy), h = z["centre"], z["size"] / 2
        view.zoom_box(pya.DBox(cx - h, cy - h, cx + h, cy + h))
        view.save_image(z["png"], 900, 900)
    print("RENDERED", job["full"])
"""


def main():
    d = os.path.join(OUT, "modules")
    os.makedirs(d, exist_ok=True)
    jobs = [dict(gds=os.path.join(OUT, "gds", f"slice_{b}.gds"), full=os.path.join(d, f"{b}.png"),
                 zoom=os.path.join(d, f"{b}_zoom.png"), px=1400) for b in BLOCKS]
    # the whole chip: all of it, the junction of the channels between the macros (the planned,
    # straight wires) and a ZOOM window there
    chip_gds = os.path.expanduser("~/ic/chip/top/stereo_slice_chip.gds")
    if os.path.exists(chip_gds):
        plan = json.load(open(os.path.join(OUT, "plan.json")))
        ox, oy = plan["core_origin"]
        x, y, w, h = plan["macros"]["ctrl"]            # its top right corner: where the channels meet
        jx, jy = ox + x + w + 4, oy + y + h + 8
        jobs.append(dict(gds=chip_gds, full=os.path.join(d, "chip.png"), px=2400, zooms=[
            dict(png=os.path.join(d, "chip_channels.png"), centre=[jx, jy], size=120.0),
            dict(png=os.path.join(d, "chip_zoom.png"), centre=[jx, jy], size=ZOOM)]))
    cfg = os.path.join(d, "render.json")
    json.dump(dict(lyp=f"{PDK}/libs.tech/klayout/tech/sky130A.lyp", zoom=ZOOM, jobs=jobs), open(cfg, "w"))
    script = os.path.join(d, "render.py")
    open(script, "w").write(SCRIPT)
    r = subprocess.run([KLAYOUT, "-z", "-r", script, "-rd", f"cfg={cfg}"], capture_output=True, text=True)
    print("\n".join(l for l in (r.stdout + r.stderr).splitlines() if "RENDERED" in l or "rror" in l))
    os.remove(cfg)
    os.remove(script)


if __name__ == "__main__":
    main()
