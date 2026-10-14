"""Where Vivado and Vitis are installed, and how the GUI openers start them.

The newest version found is used: under XILINX_VIVADO / XILINX_VITIS when set, else
<drive>:\\Xilinx\\<version>\\{Vivado,Vitis} (and \\AMD\\...) on the drives C to F.
"""
import glob
import os
import subprocess

ROOT = os.path.normpath(os.path.join(os.path.dirname(os.path.abspath(__file__)), ".."))


def find(tool):
    """Full path of vivado.bat or vitis.bat ("Vivado" / "Vitis")."""
    exe = tool.lower() + ".bat"
    env = os.environ.get("XILINX_" + tool.upper())
    if env and os.path.exists(os.path.join(env, "bin", exe)):
        return os.path.join(env, "bin", exe)
    found = []
    for drive in "CDEF":
        for vendor in ("Xilinx", "AMD"):
            found += glob.glob(f"{drive}:\\{vendor}\\*\\{tool}\\bin\\{exe}")
            found += glob.glob(f"{drive}:\\{vendor}\\{tool}\\*\\bin\\{exe}")
    if not found:
        raise SystemExit(f"{tool} not found: set XILINX_{tool.upper()} to its folder (the one with bin\\{exe})")
    return sorted(found)[-1]


def slices(argv, default="2"):
    """The chain length asked for on the command line: 1 or 2."""
    n = next((a for a in argv if a in ("1", "2")), default)
    return int(n)


def start(command, cwd):
    """A GUI program on its own: this script ends, the program stays. (Through "start": the
    tools' launchers are batch files that want a console of their own, minimised here.)"""
    os.makedirs(cwd, exist_ok=True)
    subprocess.Popen(["cmd", "/c", "start", "", "/min", *command], cwd=cwd,
                     stdin=subprocess.DEVNULL, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
