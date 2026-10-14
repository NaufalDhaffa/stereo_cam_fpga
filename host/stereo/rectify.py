"""Rectification: the OpenCV reference and the version an FPGA can do.

Reference: cv2.remap with the full floating-point maps from calibration.

FPGA-style (GridMap): the map is stored only at a coarse grid (every 16
pixels, 51 x 39 nodes for 800 x 600) as fixed-point source coordinates with 4
fraction bits. Per pixel the logic interpolates the four surrounding nodes,
then blends the four source pixels with 4-bit weights. Everything is integer
arithmetic with shifts, no divider.

    python -m stereo.rectify data/some_recording       compare both on a recording
"""
import os
import sys

import cv2
import numpy as np

GRID = 16            # node spacing in pixels (a power of two: interpolation is a shift)
FRAC = 4             # fraction bits of a source coordinate (1/16 pixel)


def rectify_ref(img, map_x, map_y):
    return cv2.remap(img, map_x, map_y, cv2.INTER_LINEAR, borderMode=cv2.BORDER_CONSTANT, borderValue=0)


def _extend(a, rows, cols):
    """Continue a map linearly past its bottom and right edges."""
    h, w = a.shape
    out = np.empty((rows, cols), np.float64)
    out[:h, :w] = a
    for x in range(w, cols):
        out[:h, x] = a[:, -1] + (x - w + 1) * (a[:, -1] - a[:, -2])
    for y in range(h, rows):
        out[y, :] = out[h - 1, :] + (y - h + 1) * (out[h - 1, :] - out[h - 2, :])
    return out


class GridMap:
    def __init__(self, map_x, map_y, grid=GRID, frac=FRAC):
        self.h, self.w = map_x.shape
        self.grid, self.frac = grid, frac
        ny, nx = -(-self.h // grid) + 1, -(-self.w // grid) + 1
        rows, cols = (ny - 1) * grid + 1, (nx - 1) * grid + 1
        scale = 1 << frac
        self.nx = np.round(_extend(map_x, rows, cols)[::grid, ::grid] * scale).astype(np.int32)
        self.ny = np.round(_extend(map_y, rows, cols)[::grid, ::grid] * scale).astype(np.int32)

    @property
    def table_bits(self):
        """Storage for the node table of this camera, 16 bits per coordinate."""
        return self.nx.size * 2 * 16

    def _interp(self, nodes):
        g = self.grid
        shift = 2 * int(np.log2(g))
        wx = np.arange(g, dtype=np.int64)
        # horizontal blend of each node pair, then vertical
        top = nodes[:-1, :-1, None].astype(np.int64) * (g - wx) + nodes[:-1, 1:, None] * wx
        bot = nodes[1:, :-1, None].astype(np.int64) * (g - wx) + nodes[1:, 1:, None] * wx
        top = top.reshape(top.shape[0], -1)            # (cells_y, cells_x * g)
        bot = bot.reshape(bot.shape[0], -1)
        full = top[:, None, :] * (g - wx)[None, :, None] + bot[:, None, :] * wx[None, :, None]
        full = (full.reshape(-1, full.shape[2]) + (1 << (shift - 1))) >> shift
        return full[:self.h, :self.w]

    def coords(self):
        """Per-pixel source coordinates in 1/16 pixel, as the logic computes them."""
        return self._interp(self.nx), self._interp(self.ny)

    def valid(self):
        """Where the logic reads four real source pixels (elsewhere the output is 0)."""
        sx, sy = self.coords()
        x0, y0 = sx >> self.frac, sy >> self.frac
        return (x0 >= 0) & (y0 >= 0) & (x0 < self.w - 1) & (y0 < self.h - 1)

    def rows_used(self):
        """Per output row: (first, last) source row it reads (last includes the +1 of the bilinear blend)."""
        _, sy = self.coords()
        y0 = sy >> self.frac
        ok = self.valid()
        first = np.where(ok, y0, self.h).min(axis=1)
        last = np.where(ok, y0 + 1, -1).max(axis=1)
        empty = last < 0                                  # a row with no valid pixel reads nothing
        first[empty], last[empty] = 0, 0
        return first, last

    def window(self, other_need=None, lead=0):
        """What a streaming rectifier needs: (need, lines).

        need[y]: input rows that must be complete before output row y can be
        produced (never decreasing, at most the image height). The scheduler
        starts row y when the camera has that many rows.
        lines: rows the line buffer must hold, so that the row being written
        while row y is produced (and one more, as margin) does not overwrite
        the oldest row still read.

        other_need: the other camera's `need`. Both rectifiers produce row y
        together, so a camera also waits for the other one. `lead` is how many
        rows this camera's frame is ahead of the other's in time (genlock
        offset); waiting costs buffer rows, the right lead removes the wait.
        """
        first, last = self.rows_used()
        need = np.minimum(np.maximum.accumulate(last + 1), self.h)
        have = need if other_need is None else np.maximum(need, np.minimum(other_need + lead, self.h))
        have = np.maximum.accumulate(have)
        return need, int((have + 2 - first).max())

    def node_words(self):
        """The node table as the logic stores it: one 32-bit word {y, x} per node, row by row."""
        return ((self.ny.astype(np.int64) & 0xFFFF) << 16 | (self.nx.astype(np.int64) & 0xFFFF)).ravel()

    def remap(self, img):
        sx, sy = self.coords()
        one = 1 << self.frac
        x0, fx = sx >> self.frac, (sx & (one - 1))
        y0, fy = sy >> self.frac, (sy & (one - 1))
        ok = (x0 >= 0) & (y0 >= 0) & (x0 < img.shape[1] - 1) & (y0 < img.shape[0] - 1)
        x0c, y0c = np.clip(x0, 0, img.shape[1] - 2), np.clip(y0, 0, img.shape[0] - 2)
        src = img.astype(np.int32)
        if src.ndim == 2:
            src = src[:, :, None]
        fx, fy = fx[:, :, None], fy[:, :, None]
        a, b = src[y0c, x0c], src[y0c, x0c + 1]
        c, d = src[y0c + 1, x0c], src[y0c + 1, x0c + 1]
        top = a * (one - fx) + b * fx
        bot = c * (one - fx) + d * fx
        out = (top * (one - fy) + bot * fy + (1 << (2 * self.frac - 1))) >> (2 * self.frac)
        out = np.where(ok[:, :, None], out, 0).astype(np.uint8)
        return out[:, :, 0] if img.ndim == 2 else out


def compare(img, map_x, map_y):
    """How far the FPGA-style result is from the reference, in useful numbers."""
    g = GridMap(map_x, map_y)
    ref = rectify_ref(img, map_x, map_y)
    out = g.remap(img)
    sx, sy = g.coords()
    inside = (map_x >= 0) & (map_y >= 0) & (map_x <= img.shape[1] - 2) & (map_y <= img.shape[0] - 2)
    cerr = np.hypot(sx / (1 << FRAC) - map_x, sy / (1 << FRAC) - map_y)[inside]
    diff = np.abs(ref.astype(np.int16) - out.astype(np.int16))[inside]
    return dict(coord_err_mean=float(cerr.mean()), coord_err_max=float(cerr.max()),
                pixel_diff_mean=float(diff.mean()), pixel_diff_max=int(diff.max()),
                table_bits=g.table_bits, valid_fraction=float(inside.mean())), ref, out


def main():
    sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), ".."))
    from source import FileSource
    from stereo import calibrate
    c = calibrate.load()
    pair = next(FileSource(sys.argv[1]).pairs())
    for name, img, (mx, my) in (("kiri", pair.left, c["maps"][0]), ("kanan", pair.right, c["maps"][1])):
        r, ref, out = compare(img, mx, my)
        print(f"{name:5s}: galat koordinat rata-rata {r['coord_err_mean']:.3f} px, terburuk {r['coord_err_max']:.3f} px; "
              f"beda piksel rata-rata {r['pixel_diff_mean']:.2f}, terburuk {r['pixel_diff_max']} (dari 255); "
              f"tabel {r['table_bits'] / 1000:.0f} kbit; area terpakai {100 * r['valid_fraction']:.0f}%; "
              f"jendela {calibrate.line_window(my)} baris")
        cv2.imwrite(os.path.join(sys.argv[1], f"rect_{name}_ref.png"), cv2.cvtColor(ref, cv2.COLOR_RGB2BGR))
        cv2.imwrite(os.path.join(sys.argv[1], f"rect_{name}_fpga.png"), cv2.cvtColor(out, cv2.COLOR_RGB2BGR))


if __name__ == "__main__":
    main()
