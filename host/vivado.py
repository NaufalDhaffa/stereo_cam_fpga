"""Open the Vivado GUI on the project of the system, with its block design.

    python vivado.py 2        chain of 2 slices (hw/projects/stereo_2slice), the default
    python vivado.py 1        chain of 1 slice  (hw/projects/stereo_1slice)

The block design "system" opens at once; the matcher slices (the module that is taped out)
are the blocks inside "tapeout_chain". Works from any directory.
"""
import os
import sys

import xilinx


def main():
    n = xilinx.slices(sys.argv[1:])
    name = f"stereo_{n}slice"
    xpr = os.path.join(xilinx.ROOT, "hw", "projects", name, name + ".xpr")
    if not os.path.exists(xpr):
        raise SystemExit(f"{xpr} not found: make it with\n  vivado -mode batch -source hw/scripts/create_project.tcl -tclargs {n}")
    vivado = xilinx.find("Vivado")
    xilinx.start([vivado, xpr, "-nolog", "-nojournal", "-source", os.path.join(xilinx.ROOT, "hw", "scripts", "open_bd.tcl")],
                 cwd=os.path.join(xilinx.ROOT, "build", "gui"))
    print(f"Vivado is opening {name} ({n} slice{'s' if n > 1 else ''}, {16 * n} disparities): {xpr}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
