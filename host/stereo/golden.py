"""Test vectors for the RTL: what every stage must produce for one recorded pair.

    python -m stereo.golden data/scene_1013_b 1
    python -m stereo.golden data/scene_1013_b 1 --out build/golden_alt --set D_MIN=20 --set P1_48=24

Writes build/golden/. The testbenches in rtl/tb read these files and compare
bit for bit; the Python model is the reference, the logic has to match it.

  cam<N>_luma.hex    raw luma of camera N, one byte per line, row by row
  cam<N>_nodes.hex   rectification node table, one 32-bit word {y, x} per line
  cam<N>_rect.hex    rectified luma, 3 hex digits per pixel: {valid, luma}
  cam<N>_need.hex    input rows that must be complete before each output row
  cam<N>_census.hex  12 hex digits per pixel: {window valid, census signature}
  rect_cfg.vh        line buffer sizes and table dimensions for this calibration
"""
import os
import sys

import numpy as np

from . import calibrate, disparity, rectify, stream
from . import params as P

OUT = os.path.join(calibrate.ROOT, "build", "golden")


def write_hex(path, values, digits):
    with open(path, "w") as f:
        f.write("\n".join(f"{int(v):0{digits}x}" for v in np.asarray(values).ravel()) + "\n")


def rectifiers(cal):
    """Both cameras' GridMaps with their schedule: [(grid, need, lines)], and the genlock lead.

    The lead is how many rows the left camera's frame should start before the
    right one's, so that the rows both rectifiers need for the same output
    row arrive at the same time. With the cameras pitched against each other
    by 3 degrees that is some 50 rows; without it one line buffer would have
    to hold them. It also makes matching points be exposed at the same moment.
    """
    g = [rectify.GridMap(*cal["maps"][cam]) for cam in (0, 1)]
    need = [x.window()[0] for x in g]
    def total(lead):
        return g[0].window(need[1], lead)[1] + g[1].window(need[0], -lead)[1]

    lead = min(range(-100, 101), key=lambda k: (total(k), abs(k)))     # fewest buffered rows in all
    out = []
    for cam in (0, 1):
        n, lines = g[cam].window(need[1 - cam], lead if cam == 0 else -lead)
        out.append((g[cam], n, lines))
    return out, lead


def fit_profile(rgb):
    """A recorded picture in the size of the profile in use: an 800 x 600 recording is binned
    2 x 2 and cut to the sensor's 296 lines, as its CIF mode does (close enough for test vectors)."""
    w, h = P.WIDTH * P.BIN, P.HEIGHT * P.BIN            # what the sensor delivers for this profile
    if rgb.shape[1] == w:
        return rgb[:h]
    if rgb.shape[1] != 2 * w:
        raise SystemExit(f"recording is {rgb.shape[1]} wide, profile needs {w}")
    a = rgb.astype(np.uint16)
    b = (a[0::2, 0::2] + a[0::2, 1::2] + a[1::2, 0::2] + a[1::2, 1::2] + 2) >> 2
    return b[:h].astype(np.uint8)


def main():
    sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), ".."))
    from source import FileSource
    global OUT
    argv, sets = [], []
    it = iter(sys.argv[1:])
    for a in it:
        if a == "--out":
            OUT = os.path.join(calibrate.ROOT, next(it))
        elif a == "--set":
            sets.append(next(it))
        else:
            argv.append(a)
    sys.argv[1:] = argv
    args = [a for a in sys.argv[1:] if not a.startswith("--")]
    if "--profile" in sys.argv:
        P.use(sys.argv[sys.argv.index("--profile") + 1])
        args.remove(sys.argv[sys.argv.index("--profile") + 1])
    for s in sets:                       # other settings of the model, for vectors that exercise the chip's registers
        name, value = s.split("=")
        setattr(P, name, type(getattr(P, name))(float(value)))
    folder = args[0]
    want = int(args[1]) if len(args) > 1 else 0
    if not os.path.isabs(folder):
        folder = os.path.join(calibrate.ROOT, folder)
    cal = calibrate.load(os.path.join(calibrate.ROOT, "calib", P.CALIB))
    pair = next(p for p in FileSource(folder).pairs() if p.index == want)
    pair.left, pair.right = fit_profile(pair.left), fit_profile(pair.right)
    print(f"profil {P.PROFILE}: {P.WIDTH} x {P.HEIGHT}, disparitas {P.D_MIN}-{P.D_MIN + P.DISPARITIES - 1}, "
          f"{P.UNITS} unit pencocok")
    os.makedirs(OUT, exist_ok=True)
    rects, lead = rectifiers(cal)
    ry, rx, step = disparity.CENSUS_SHAPES[P.CENSUS_KIND]
    nbits = len(disparity.census_offsets(P.CENSUS_KIND))
    stages = []
    print(f"genlock: frame kamera kiri harus mendahului kanan {lead} baris")
    for cam, raw in enumerate((pair.left, pair.right)):
        raw_luma = disparity.luma(raw)
        luma = stream.bin2(raw_luma) if P.BIN == 2 else raw_luma        # what the rectifier works on
        g, need, lines = rects[cam]
        alone = g.window()[1]
        unsynced = g.window(rects[1 - cam][1], 0)[1]
        out, ok = g.remap(luma), g.valid()
        write_hex(os.path.join(OUT, f"cam{cam}_luma.hex"), raw_luma, 2)
        write_hex(os.path.join(OUT, f"cam{cam}_nodes.hex"), g.node_words(), 8)
        write_hex(os.path.join(OUT, f"cam{cam}_need.hex"), need, 3)
        write_hex(os.path.join(OUT, f"cam{cam}_rect.hex"), ok.astype(np.int32) << 8 | out, 3)
        smooth = disparity.binomial3(out) if P.PREFILTER else out
        cen = disparity.census(smooth).astype(object)            # Python integers: 45 bits with the flag
        okw = disparity.window_ok(ok)
        write_hex(os.path.join(OUT, f"cam{cam}_census.hex"), cen + (okw.astype(object) << nbits), 12)
        stages.append((disparity.census(smooth), okw))
        ref = rectify.rectify_ref(luma, *cal["maps"][cam])
        diff = np.abs(ref.astype(int) - out.astype(int))[ok]
        print(f"kamera {cam}: penyangga {lines} baris = {lines * g.w * 8 / 1000:.0f} kbit (sendirian {alone}, "
              f"tanpa geser genlock {unsynced}); valid {100 * ok.mean():.1f}%; terhadap cv2.remap beda rata-rata "
              f"{diff.mean():.2f}, terburuk {diff.max()} tingkat")
    # the matcher: both census streams in, the chosen disparity before any filter out
    (cl, okl), (cr, okr) = stages
    vol = disparity.cost_volume(cl, cr, nbits, okl, okr)
    picked = disparity.pick(disparity.sgm(disparity.hbox(vol, P.HBOX), nbits))
    write_hex(os.path.join(OUT, "match.hex"), picked, 3)
    print(f"pencocok: {100 * (picked > 0).mean():.1f}% piksel mendapat disparitas sebelum penyaring")
    p1, p2 = disparity.penalties(nbits)
    if tuple(P.PATHS) == ("LR",) and not P.P2_EDGE_48 and P.L_BITS == 7:
        print(f"untuk matcher mini: {P.DISPARITIES // 16} irisan x 16 disparitas, satu arah")
    elif P.TB_CODEC != "cap" or P.TB_SHIFT or not P.TB_BITS or tuple(P.PATHS) != ("LR", "TB") or P.P2_EDGE_48:
        print("PERINGATAN: rtl/matcher.v hanya mendukung jalur LR+TB dengan TB_CODEC cap; vektor ini tidak akan cocok")
    with open(os.path.join(OUT, "match_cfg.vh"), "w") as f:
        f.write(f"localparam DMIN = {P.D_MIN};\nlocalparam NDISP = {P.DISPARITIES};\nlocalparam UNITS = {P.UNITS};\n"
                f"localparam HBOX = {P.HBOX};\nlocalparam SGM_P1 = {p1};\n"
                f"localparam SGM_P2 = {p2};\nlocalparam LMAX = {(1 << P.L_BITS) - 1};\n"
                f"localparam TBCAP = {(1 << P.TB_BITS) - 1};\nlocalparam UNIQ = {P.UNIQUENESS_16};\n"
                f"localparam SLICES = {P.DISPARITIES // 16};\n")
    g = rects[0][0]
    with open(os.path.join(OUT, "rect_cfg.vh"), "w") as f:
        f.write(f"localparam LINES0 = {rects[0][2]};\nlocalparam LINES1 = {rects[1][2]};\n"
                f"localparam NODES_X = {g.nx.shape[1]};\nlocalparam NODES_Y = {g.nx.shape[0]};\n"
                f"localparam GENLOCK_LEAD = {lead};\nlocalparam IMG_W = {P.WIDTH};\nlocalparam IMG_H = {P.HEIGHT};\n"
                f"localparam PREFILTER = {int(P.PREFILTER)};\nlocalparam CENSUS_RY = {ry};\nlocalparam CENSUS_RX = {rx};\n"
                f"localparam CENSUS_STEP = {step};\nlocalparam CENSUS_BITS = {nbits};\n"
                f"localparam BIN = {P.BIN};\nlocalparam RAW_W = {P.WIDTH * P.BIN};\nlocalparam RAW_H = {P.HEIGHT * P.BIN};\n"
                f"localparam MINI = {int(tuple(P.PATHS) == ('LR',))};\n")
    print(f"vektor uji: {OUT}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
