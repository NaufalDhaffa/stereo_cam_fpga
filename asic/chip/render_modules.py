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
    if os.path.exists(os.path.join(d, "chip.png")):
        annotate(os.path.join(d, "chip.png"), os.path.join(d, "chip_annotated.png"))


def annotate(src, dst):
    """The whole chip with its parts named: macros, pads, core ring, supply slice and jumpers."""
    from PIL import Image, ImageDraw, ImageFont
    plan = json.load(open(os.path.join(OUT, "plan.json")))
    die = plan["die"]
    im = Image.open(src).convert("RGB")
    px = im.size[0]
    k = px / die
    P = lambda x, y: (x * k, px - y * k)                       # die um -> picture
    d = ImageDraw.Draw(im)
    try:
        big = ImageFont.truetype("DejaVuSans-Bold.ttf", 30)
        mid = ImageFont.truetype("DejaVuSans-Bold.ttf", 20)
        small = ImageFont.truetype("DejaVuSans.ttf", 16)
    except OSError:
        big = mid = small = ImageFont.load_default()

    def label(xy, text, font, box=(255, 255, 255), fg=(0, 0, 0), anchor="mm"):
        l, t, r, b = d.multiline_textbbox(xy, text, font=font, anchor=anchor, align="center")
        d.rectangle([l - 6, t - 4, r + 6, b + 4], fill=box, outline=fg, width=1)
        d.multiline_text(xy, text, font=font, fill=fg, anchor=anchor, align="center")

    ox, oy = plan["core_origin"]
    # macros
    for b, (x, y, w, h) in plan["macros"].items():
        d.rectangle([*P(ox + x, oy + y + h), *P(ox + x + w, oy + y)], outline=(0, 0, 0), width=5)
        label(P(ox + x + w / 2, oy + y + h / 2), f"{b}\n{w:.0f} x {h:.0f} um", big)
    # the core power ring (4 + 10 + 3 + 10 um outside the core, which starts 40 um past the pads)
    inner = 20 + 197.965 + 40
    for off, name in ((4 + 5, "vssd"), (4 + 10 + 3 + 5, "vccd")):
        e = inner - off
        d.rectangle([*P(e, die - e), *P(die - e, e)], outline=(30, 90, 200), width=2)
    label(P(die / 2, die - inner + 13.5), "core power ring: VCCD (outer) / VSSD (inner), met4 + met5", mid,
          box=(225, 235, 255), fg=(20, 60, 160))
    # pads
    for p in plan["pads"]:
        label(P(p["x"], p["y"]), f"{p['pin']}\n{p['name']}", small)
    # supply slice and VDDA / VSSA jumpers on the south row
    for r in plan["ring"]:
        x0, x1 = r["x"], r["x"] + r["width"]
        y0, y1 = 20, 20 + 197.965
        d.rectangle([*P(x0, y1), *P(x1, y0)], outline=(200, 30, 30), width=4)
        text = "VCCHIB->VCCD\nVSWITCH->VDDIO\nslice" if r["kind"] == "slice" else "VDDA->VDDIO\nVSSA->VSSIO\njumper"
        label(P((x0 + x1) / 2, y1 + 30), text, small, box=(255, 230, 230), fg=(170, 20, 20))
    # corners and the die
    for cx, cy in ((120, 122), (die - 120, 122), (120, die - 122), (die - 120, die - 122)):
        label(P(cx, cy), "corner", small, box=(240, 240, 240))
    label(P(die / 2, die - 8), f"stereo_slice_chip  {die:.0f} x {die:.0f} um  sky130A  QFN-32", mid,
          box=(255, 255, 210))
    im.save(dst)
    print("ANNOTATED", dst)


if __name__ == "__main__":
    main()
