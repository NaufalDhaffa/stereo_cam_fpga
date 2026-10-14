"""PC side of the stand-alone board (Linux from its SD card), over ssh.

    python board.py status                    what is loaded, sensors, genlock
    python board.py app                       copy board/*.py, *.sh, *.conf to the SD card and restart the camera program
    python board.py try  [build/mini]         load that build's bitstream now (the next boot is as before)
    python board.py save [build/mini]         load it now and at every boot from now on
    python board.py factory                   back to the bitstream inside BOOT.BIN (after a reboot)
    python board.py ssh [command]             a shell on the board, or one command
    python board.py reboot

The board's address is BOARD_IP (default 192.168.2.10). Its ssh host key is
new at every boot (the root file system is in RAM), so it is not checked.
The genlock lead of a build's tables is written to stereo.conf with "try"/"save".
"""
import os
import re
import subprocess
import sys

ROOT = os.path.normpath(os.path.join(os.path.dirname(os.path.abspath(__file__)), ".."))
IP = os.environ.get("BOARD_IP", "192.168.2.10")
OPTS = ["-o", "StrictHostKeyChecking=no", "-o", "UserKnownHostsFile=NUL", "-o", "LogLevel=ERROR", "-o", "ConnectTimeout=5"]
SD = "/mnt/sd/stereo"
# build folder -> (golden folder with its tables, processing clock in MHz, sensor lines per rectifier row, line time)
BUILDS = {"build/mini": ("build/golden_minisys", 25, 2, 198.4), "build/depth": ("build/golden", 62.5, 1, 99.2)}


def ssh(command, check=True):
    return subprocess.run(["ssh", *OPTS, f"root@{IP}", command], check=check).returncode


def scp(files, dest):
    subprocess.run(["scp", *OPTS, *files, f"root@{IP}:{dest}"], check=True)


def main():
    cmd = sys.argv[1] if len(sys.argv) > 1 else "status"
    if cmd == "status":
        return ssh(f"sh {SD}/fpga.sh status", check=False)
    if cmd == "ssh":
        return subprocess.run(["ssh", *OPTS, f"root@{IP}", *sys.argv[2:]]).returncode
    if cmd == "reboot":
        return ssh("sync; reboot", check=False)
    if cmd == "factory":
        return ssh(f"sh {SD}/fpga.sh factory")
    if cmd == "app":
        b = os.path.join(ROOT, "board")
        scp([os.path.join(b, f) for f in ("stereo_cam.py", "autorun.sh", "fpga.sh")]
            + [os.path.join(ROOT, "sensor", "ov2640_tables.tcl")], SD + "/")
        return ssh(f"sync; sh {SD}/fpga.sh status")
    if cmd in ("try", "save"):
        build = (sys.argv[2] if len(sys.argv) > 2 else "build/mini").replace("\\", "/").rstrip("/")
        gold, mhz, rows, line_us = BUILDS[build]
        bit = os.path.join(ROOT, build, "cam_usb_top.bit.bin")
        if not os.path.exists(bit):
            raise SystemExit(f"{bit} not found: build it first (scripts/build_depth.tcl)")
        lead = int(re.search(r"GENLOCK_LEAD = (-?\d+)", open(os.path.join(ROOT, gold, "rect_cfg.vh")).read()).group(1))
        lead_us = int(round(lead * rows * line_us))
        name = build.replace("/", "_") + ".bit.bin"
        scp([bit], f"/tmp/{name}")
        ssh(f"mkdir -p {SD}/bitstream && cp /tmp/{name} {SD}/bitstream/{name} && "
            f"sed -i 's/^GENLOCK_LEAD_US=.*/GENLOCK_LEAD_US={lead_us}/' {SD}/stereo.conf && sync && "
            f"sh {SD}/fpga.sh {cmd} {SD}/bitstream/{name} {mhz}")
        return 0
    raise SystemExit(__doc__)


if __name__ == "__main__":
    sys.exit(main())
