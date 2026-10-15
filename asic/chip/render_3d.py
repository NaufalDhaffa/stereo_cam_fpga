#!/usr/bin/env python3
"""An isometric 3D picture of the finished chip, made from its GDS (runs inside WSL):

    python3 /mnt/d/stereo-depth-cam/asic/chip/render_3d.py

KLayout draws every fabrication layer of the merged GDS on its own (from the transistors up
to the pad openings); each picture is turned to the isometric view and the layers are stacked
apart above a silicon slab, so that the whole layer stack of the layout can be seen.
Output: out/modules/chip_3d.png
"""
import glob
import json
import os
import subprocess

HERE = os.path.dirname(os.path.abspath(__file__))
OUT = os.path.join(HERE, "out", "modules")
GDS = os.path.expanduser("~/ic/chip/top/stereo_slice_chip.gds")
KLAYOUT = sorted(glob.glob("/nix/store/*klayout*/bin/klayout"))[0]
PX = 1100
# bottom to top: name, GDS layers (sky130), colour
LAYERS = [
    ("diffusion + poly", ["65/20", "65/44", "66/20"], (110, 170, 90)),
    ("li1", ["67/20"], (150, 120, 200)),
    ("met1", ["68/20"], (60, 110, 220)),
    ("met2", ["69/20"], (220, 70, 160)),
    ("met3", ["70/20"], (60, 190, 210)),
    ("met4", ["71/20"], (230, 150, 40)),
    ("met5", ["72/20"], (200, 60, 60)),
    ("pad openings", ["76/20"], (235, 215, 60)),
]

KL = """
# every layer rasterised from its polygons onto the same grid over the die, written as a mask
import json
import pya
c = json.load(open(cfg))
ly = pya.Layout()
ly.read(c["gds"])
top = ly.top_cell()
box = top.bbox()
n = c["px"]
step = max(box.width(), box.height()) // n + 1
for i, (name, sources, colour) in enumerate(c["layers"]):
    reg = pya.Region()
    for s in sources:
        l, d = map(int, s.split("/"))
        reg.insert(top.begin_shapes_rec(ly.layer(l, d)))
    reg.merge()
    area = reg.rasterize(box.p1, pya.Vector(step, step), n, n)
    rows = bytearray()
    for j in range(n - 1, -1, -1):                 # the picture starts at the top
        rows += bytes(0 if a > 0 else 255 for a in area[j])
    with open(c["out"] + f"/layer{i}.pgm", "wb") as f:
        f.write(f"P5 {n} {n} 255\\n".encode() + bytes(rows))
    print("LAYER", name)
"""


def iso(img, w):
    """A square top view turned to the isometric view: 45 degrees, half the height."""
    from PIL import Image
    r = img.rotate(45, resample=Image.BICUBIC, expand=True)
    return r.resize((w, w // 2), Image.LANCZOS)


def main():
    from PIL import Image, ImageDraw, ImageFont
    tmp = os.path.join(OUT, "3d")
    os.makedirs(tmp, exist_ok=True)
    cfg = os.path.join(tmp, "cfg.json")
    json.dump(dict(gds=GDS, out=tmp, px=PX, layers=LAYERS), open(cfg, "w"))
    open(os.path.join(tmp, "kl.py"), "w").write(KL)
    subprocess.run([KLAYOUT, "-z", "-r", os.path.join(tmp, "kl.py"), "-rd", f"cfg={cfg}"],
                   capture_output=True, text=True)
    W = 1800
    gap = 170                                   # height between two layers in the exploded view
    H = W // 2 + gap * (len(LAYERS) + 1) + 260
    canvas = Image.new("RGBA", (W + 500, H), (250, 250, 252, 255))
    d = ImageDraw.Draw(canvas)
    try:
        font = ImageFont.truetype("DejaVuSans-Bold.ttf", 26)
        title = ImageFont.truetype("DejaVuSans-Bold.ttf", 38)
        note = ImageFont.truetype("DejaVuSans.ttf", 22)
    except OSError:
        font = title = note = ImageFont.load_default()
    base_y = H - W // 2 - 60
    # the silicon slab: a diamond with two visible sides
    cx, top = W // 2, base_y
    diamond = [(cx, top), (W, top + W // 4), (cx, top + W // 2), (0, top + W // 4)]
    t = 30
    d.polygon([(0, top + W // 4), (cx, top + W // 2), (cx, top + W // 2 + t), (0, top + W // 4 + t)], fill=(90, 90, 100))
    d.polygon([(cx, top + W // 2), (W, top + W // 4), (W, top + W // 4 + t), (cx, top + W // 2 + t)], fill=(70, 70, 80))
    d.polygon(diamond, fill=(150, 150, 160))
    for i, (name, _, colour) in enumerate(LAYERS):
        src = Image.open(os.path.join(tmp, f"layer{i}.pgm")).convert("L")
        mask = src.point(lambda v: 255 if v < 128 else 0)
        layer = Image.new("RGBA", src.size, colour + (255,))
        layer.putalpha(mask)
        layer = iso(layer, W)
        y = base_y - gap * (i + 1)
        # a faint plate under each layer, so that its outline stays visible where it is empty
        plate = [(cx, y), (W, y + W // 4), (cx, y + W // 2), (0, y + W // 4)]
        ov = Image.new("RGBA", canvas.size, (0, 0, 0, 0))
        ImageDraw.Draw(ov).polygon(plate, fill=colour + (28,), outline=colour + (160,))
        canvas = Image.alpha_composite(canvas, ov)
        ov = Image.new("RGBA", canvas.size, (0, 0, 0, 0))
        ov.paste(layer, (0, y), layer)
        canvas = Image.alpha_composite(canvas, ov)
        d = ImageDraw.Draw(canvas)
        ly = y + W // 4
        d.line([(W - 10, ly), (W + 40, ly)], fill=colour + (255,), width=4)
        d.text((W + 50, ly - 15), name, font=font, fill=colour + (255,))
    d.text((W + 50, base_y + W // 4 - 15), "silicon", font=font, fill=(90, 90, 100))
    plan = json.load(open(os.path.join(HERE, "out", "plan.json")))
    d.text((30, 25), f"stereo_slice_chip  -  GDS  {plan['die']:.0f} x {plan['die']:.0f} um, sky130A", font=title, fill=(20, 20, 30))
    d.text((30, 75), "layers drawn from the merged GDS and pulled apart (exploded view); 5 macros, 32 IO pads, QFN-32",
           font=note, fill=(60, 60, 70))
    canvas.convert("RGB").save(os.path.join(OUT, "chip_3d.png"))
    for f in glob.glob(os.path.join(tmp, "*")):
        os.remove(f)
    os.rmdir(tmp)
    print("WROTE", os.path.join(OUT, "chip_3d.png"))


if __name__ == "__main__":
    main()
