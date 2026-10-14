"""Open the Vitis GUI on the workspace of the bare-metal application.

    python vitis.py 2        workspace of the 2-slice platform (sw/workspace_2slice), the default
    python vitis.py 1        workspace of the 1-slice platform (sw/workspace_1slice)

Both workspaces hold the same application (sw/apps/stereo_cam). They differ in the platform:
its hardware description (XSA) carries the bitstream of that Vivado project, and the
application prints the number of slices at start (STEREO_SLICES). Works from any directory.
"""
import os
import sys

import xilinx


def main():
    n = xilinx.slices(sys.argv[1:])
    ws = os.path.join(xilinx.ROOT, "sw", f"workspace_{n}slice")
    if not os.path.isdir(ws):
        raise SystemExit(f"{ws} not found: make it with\n  vitis -s sw/scripts/create_workspace.py {n}")
    vitis = xilinx.find("Vitis")
    xilinx.start([vitis, "-w", ws], cwd=os.path.join(xilinx.ROOT, "build", "gui"))
    print(f"Vitis is opening {ws} (platform of {n} slice{'s' if n > 1 else ''})")
    return 0


if __name__ == "__main__":
    sys.exit(main())
