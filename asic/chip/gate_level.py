#!/usr/bin/env python3
"""Gate-level picture of one piece of the chip's logic (runs inside WSL):

    python3 /mnt/d/stereo-depth-cam/asic/chip/gate_level.py

The heart of the Hamming cost in ms_cost: 6 bits of the left signature XOR 6 bits of the right
one, and the count of the ones (`ones6` in rtl/mini/ms_cost.v; the 44-bit cost is 8 of these
added up). Synthesised as the chip is (yosys + abc, sky130_fd_sc_hd), drawn with Graphviz.
Output: out/gate_level.png, out/gate_level.svg and out/gate_level.txt (cells and area).
"""
import glob
import os
import subprocess

HERE = os.path.dirname(os.path.abspath(__file__))
OUT = os.path.join(HERE, "out")
VERILOG = """
// from rtl/mini/ms_cost.v: one sixth-chunk of the Hamming distance between two signatures
module hamming6 (input wire [5:0] left, input wire [5:0] right, output wire [2:0] ones);
    wire [5:0] v = left ^ right;
    assign ones = v[0] + v[1] + v[2] + v[3] + v[4] + v[5];
endmodule
"""


def main():
    yosys = sorted(glob.glob("/nix/store/*-yosys/bin/yosys"))[0]
    lib = glob.glob(os.path.expanduser(
        "~/.volare/volare/sky130/versions/*/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib"))[0]
    work = os.path.join(OUT, "gate")
    os.makedirs(work, exist_ok=True)
    src = os.path.join(work, "hamming6.v")
    open(src, "w").write(VERILOG)
    script = f"""
read_liberty -lib {lib}
read_verilog {src}
synth -flatten -top hamming6
abc -liberty {lib}
opt_clean -purge
tee -o {OUT}/gate_level.txt stat -liberty {lib}
show -format dot -prefix {work}/hamming6 -notitle -width -stretch hamming6
"""
    r = subprocess.run([yosys, "-q", "-p", script], capture_output=True, text=True)
    if r.returncode:
        raise SystemExit(r.stdout + r.stderr)
    dot = os.path.join(work, "hamming6.dot")
    text = open(dot).read()
    # left to right, cell names without the library prefix
    text = text.replace("rankdir=\"LR\"", "rankdir=\"LR\"").replace("sky130_fd_sc_hd__", "")
    open(dot, "w").write(text)
    for fmt in ("png", "svg"):
        subprocess.run(["dot", f"-T{fmt}", "-Gdpi=170", dot, "-o", os.path.join(OUT, f"gate_level.{fmt}")], check=True)
    for f in glob.glob(os.path.join(work, "*")):
        os.remove(f)
    os.rmdir(work)
    print(open(os.path.join(OUT, "gate_level.txt")).read())


if __name__ == "__main__":
    main()
