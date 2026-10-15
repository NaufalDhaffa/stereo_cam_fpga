"""Where the area of each slice module goes, from the yosys reports of asic/area/synth_stat.sh.

    python asic/area/breakdown.py [recipe ...]       (default: every recipe folder in asic/area)

Groups the sky130_fd_sc_hd cells by kind and prints area and share per module.
"""
import os
import re
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
KINDS = [("flip-flop", r"df|edf|sdf"), ("latch", r"dl[xr]|dlrtp|dlxtp|dlxbn"), ("mux", r"mux"),
         ("xor", r"xor|xnor"), ("adder", r"^fa_|^ha_|^maj"), ("and-or", r"^a\d|^o\d|and|or\d|nand|nor"),
         ("inv/buf", r"inv|buf|clkbuf"), ("other", r".")]


def read(path):
    """{cell: (count, area per cell)} from one stat report."""
    cells, text = {}, open(path).read()
    for name, count in re.findall(r"sky130_fd_sc_hd__(\w+)\s+(\d+)", text):
        cells[name] = cells.get(name, 0) + int(count)
    return cells


def areas():
    lib = {}
    lp = os.environ.get("SKY130_LIB")
    if lp and os.path.exists(lp):
        name = None
        for line in open(lp):
            m = re.match(r"\s*cell\s*\(\"?sky130_fd_sc_hd__(\w+)\"?\)", line)
            if m:
                name = m.group(1)
            m = re.match(r"\s*area\s*:\s*([\d.]+)", line)
            if m and name:
                lib[name] = float(m.group(1))
                name = None
    return lib


KINDS.insert(0, ("clock gate", r"dlclkp"))


def table(folder, area):
    rows = {}
    for m in ("ms_ctrl", "ms_cost", "ms_path", "ms_pick", "ms_up"):
        path = os.path.join(folder, m + ".stat")
        if not os.path.exists(path):
            continue
        by = {k: [0, 0.0] for k, _ in KINDS}
        for name, count in read(path).items():
            kind = next(k for k, pat in KINDS if re.search(pat, name))
            by[kind][0] += count
            by[kind][1] += count * area[name]
        rows[m] = by
    return rows


def main():
    area = {}
    for line in open(os.path.join(HERE, "cell_area.txt")):
        name, a = line.split()
        area[name.replace("sky130_fd_sc_hd__", "")] = float(a)
    recipes = sys.argv[1:] or sorted(d for d in os.listdir(HERE) if os.path.isdir(os.path.join(HERE, d)))
    results = {r: table(os.path.join(HERE, r), area) for r in recipes}
    for r, rows in results.items():
        print(f"\n== {r}")
        print(f"{'module':8s} {'um2':>7s}  " + "".join(f"{k:>17s}" for k, _ in KINDS))
        for m, by in rows.items():
            total = sum(v[1] for v in by.values())
            print(f"{m:8s} {total:7.0f}  " + "".join(f"{by[k][0]:5d} {100 * by[k][1] / total:5.1f}%     " for k, _ in KINDS))
    if len(results) > 1:
        base = recipes[0]
        print(f"\n{'module':8s} " + "".join(f"{r:>16s}" for r in recipes))
        tot = {r: 0.0 for r in recipes}
        for m in results[base]:
            line = f"{m:8s} "
            for r in recipes:
                a = sum(v[1] for v in results[r][m].values())
                tot[r] += a
                b = sum(v[1] for v in results[base][m].values())
                line += f"{a:9.0f} ({100 * (a - b) / b:+4.0f}%)"
            print(line)
        print(f"{'jumlah':8s} " + "".join(f"{tot[r]:9.0f} ({100 * (tot[r] - tot[base]) / tot[base]:+4.0f}%)" for r in recipes))


if __name__ == "__main__":
    main()
