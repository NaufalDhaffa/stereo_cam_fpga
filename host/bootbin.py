"""Change the board's BOOT.BIN over the network: chain of 1 slice or of 2 slices.

    python bootbin.py status         which BOOT.BIN is on the SD card, and what runs in the FPGA now
    python bootbin.py 1              install build/bootbin/BOOT_1slice.BIN and reboot
    python bootbin.py 2              install build/bootbin/BOOT_2slices.BIN and reboot
    python bootbin.py 2 --dry-run    upload and check only: BOOT.BIN is not touched, no reboot
    python bootbin.py restore        put back the BOOT.BIN that was there before the last change, and reboot

The board must be up (Linux from the SD card, see board.py for its address). The file is
uploaded next to the old one as BOOT.NEW, with the progress shown; only when its checksum
on the card equals the local one does it replace BOOT.BIN (the old one stays as BOOT.BIN.bak).
Then the board reboots and this waits until it answers again.

A BOOT.BIN that does not boot cannot be repaired from here: take the card out and copy
BOOT.BIN.bak over BOOT.BIN on a PC. The files of build/bootbin differ from the working one in
the bitstream only (board/petalinux/bootbin.sh).
"""
import hashlib
import os
import subprocess
import sys
import time

from board import IP, OPTS, ROOT, SD

CARD = "/mnt/sd"
FILES = {"1": "BOOT_1slice.BIN", "2": "BOOT_2slices.BIN"}
FIRST = "build/sdcard/BOOT.BIN"
TEXT = {"BOOT_1slice.BIN": "1 slice (16 disparities)", "BOOT_2slices.BIN": "2 slices (32 disparities)",
        FIRST: "2 slices (32 disparities), the build before the Vivado projects"}
CHUNK = 64 * 1024


def run(command, check=True):
    """One command on the board; its output as text."""
    p = subprocess.run(["ssh", *OPTS, f"root@{IP}", command], capture_output=True, text=True)
    if check and p.returncode:
        raise SystemExit(f"board ({IP}): {p.stderr.strip() or 'command failed'}: {command}")
    return p.stdout.strip()


def md5(path):
    h = hashlib.md5()
    with open(path, "rb") as f:
        for block in iter(lambda: f.read(1 << 20), b""):
            h.update(block)
    return h.hexdigest()


def known():
    """{md5: file name} of the BOOT.BIN files this project has built."""
    out = {}
    for name in FILES.values():
        path = os.path.join(ROOT, "build", "bootbin", name)
        if os.path.exists(path):
            out[md5(path)] = name
    first = os.path.join(ROOT, "build", "sdcard", "BOOT.BIN")      # the card's first content
    if os.path.exists(first):
        out.setdefault(md5(first), FIRST)
    return out


def describe(digest, names):
    name = names.get(digest)
    return f"{name}: {TEXT[name]}" if name else f"not one of build/bootbin (md5 {digest})"


def status():
    names = known()
    text = run(f"md5sum {CARD}/BOOT.BIN 2>/dev/null | cut -d' ' -f1; echo ---; "
               f"md5sum {CARD}/BOOT.BIN.bak 2>/dev/null | cut -d' ' -f1; echo ---; "
               f"cat /tmp/stereo_bitstream 2>/dev/null; echo ---; "
               f"ls {SD}/bitstream/default.bit.bin 2>/dev/null; echo ---; "
               f"cat /sys/class/fpga_manager/fpga0/state; echo ---; cut -d. -f1 /proc/uptime")
    boot, bak, loaded, default, state, up = [s.strip() for s in text.split("---")]
    print(f"board {IP}, up for {int(up) // 60} min {int(up) % 60} s")
    print("BOOT.BIN on the card :", describe(boot, names) if boot else "missing!")
    if bak:
        print("BOOT.BIN.bak         :", describe(bak, names))
    if loaded:
        print(f"in the FPGA now      : {loaded.split()[0]}, loaded after boot over ssh (FPGA {state})")
        print("                       the next boot uses", "the saved bitstream below" if default else "BOOT.BIN's bitstream")
    elif default:
        print(f"in the FPGA now      : the bitstream saved with 'board.py save' (FPGA {state}); it overrides BOOT.BIN's at every boot")
    else:
        print(f"in the FPGA now      : BOOT.BIN's bitstream, {describe(boot, names).split(': ')[-1]} (FPGA {state})")
        print("                       (if BOOT.BIN was replaced by hand since the boot, this is the one before)")
    return 0


def upload(path, dest):
    """The file through ssh, with the progress shown; True when the checksum on the card matches."""
    size, sent, t0 = os.path.getsize(path), 0, time.time()
    p = subprocess.Popen(["ssh", *OPTS, f"root@{IP}", f"cat > {dest} && sync"], stdin=subprocess.PIPE,
                         stdout=subprocess.DEVNULL, stderr=subprocess.PIPE)
    try:
        with open(path, "rb") as f:
            for block in iter(lambda: f.read(CHUNK), b""):
                p.stdin.write(block)
                p.stdin.flush()
                sent += len(block)
                bar = int(30 * sent / size)
                print(f"\rupload  [{'#' * bar}{'.' * (30 - bar)}] {100 * sent / size:5.1f} %  "
                      f"{sent / 1024:6.0f} / {size / 1024:.0f} KiB", end="", flush=True)
        p.stdin.close()
    except (BrokenPipeError, OSError):
        pass
    code = p.wait()
    print(f"  ({time.time() - t0:.1f} s)")
    if code:
        print("upload failed:", p.stderr.read().decode(errors="replace").strip())
        return False
    remote = run(f"md5sum {dest} | cut -d' ' -f1")
    ok = remote == md5(path)
    print("check   md5 on the card", remote, "= local" if ok else "DIFFERS from local " + md5(path))
    return ok


def wait_for_board(seconds=150):
    """After a reboot: until the board has gone down and answers again."""
    t0, down = time.time(), False
    while time.time() - t0 < seconds:
        up = subprocess.run(["ssh", *OPTS, "-o", "ConnectTimeout=3", f"root@{IP}", "cut -d. -f1 /proc/uptime"],
                            capture_output=True, text=True)
        alive = up.returncode == 0 and up.stdout.strip().isdigit()
        if not alive:
            down = True
        elif down or int(up.stdout) < 120:
            print(f"\rreboot  the board answers again after {time.time() - t0:.0f} s" + " " * 20)
            return True
        print(f"\rreboot  waiting for the board ... {time.time() - t0:3.0f} s", end="", flush=True)
        time.sleep(2)
    print("\nreboot  the board does NOT answer. If it stays that way: take the card out and copy BOOT.BIN.bak over BOOT.BIN.")
    return False


def reboot_and_report():
    run("sync; (sleep 1; reboot) >/dev/null 2>&1 &", check=False)
    if not wait_for_board():
        return 1
    time.sleep(3)
    return status()


def install(choice, dry_run):
    name = FILES[choice]
    path = os.path.join(ROOT, "build", "bootbin", name)
    if not os.path.exists(path):
        raise SystemExit(f"{path} not found: make it with board/petalinux/bootbin.sh (in WSL)")
    print(f"{name}: {TEXT[name]}, {os.path.getsize(path)} bytes")
    if run(f"md5sum {CARD}/BOOT.BIN | cut -d' ' -f1") == md5(path) and not dry_run:
        print("this BOOT.BIN is on the card already: nothing to do")
        return status()
    if not upload(path, f"{CARD}/BOOT.NEW"):
        run(f"rm -f {CARD}/BOOT.NEW; sync", check=False)
        print("BOOT.BIN was not changed.")
        return 1
    if dry_run:
        run(f"rm -f {CARD}/BOOT.NEW; sync")
        print("dry run: BOOT.BIN was not changed, no reboot.")
        return 0
    # a bitstream saved with "board.py save" would be loaded over BOOT.BIN's at every boot: set it aside
    aside = run(f"cd {SD}/bitstream 2>/dev/null && [ -f default.bit.bin ] && mv default.bit.bin default.bit.bin.off && "
                f"echo moved || true")
    if aside:
        print(f"note    the bitstream saved with 'board.py save' was set aside ({SD}/bitstream/default.bit.bin.off)")
    run(f"cp {CARD}/BOOT.BIN {CARD}/BOOT.BIN.bak && mv {CARD}/BOOT.NEW {CARD}/BOOT.BIN && sync")
    print("install BOOT.BIN replaced (the one before is BOOT.BIN.bak)")
    return reboot_and_report()


def restore():
    if not run(f"ls {CARD}/BOOT.BIN.bak 2>/dev/null", check=False):
        raise SystemExit("no BOOT.BIN.bak on the card")
    run(f"cp {CARD}/BOOT.BIN {CARD}/BOOT.TMP && cp {CARD}/BOOT.BIN.bak {CARD}/BOOT.BIN && "
        f"mv {CARD}/BOOT.TMP {CARD}/BOOT.BIN.bak && sync")
    print("restore BOOT.BIN and BOOT.BIN.bak exchanged")
    return reboot_and_report()


def main():
    args = [a for a in sys.argv[1:] if not a.startswith("--")]
    cmd = args[0] if args else "status"
    if cmd == "status":
        return status()
    if cmd == "restore":
        return restore()
    if cmd in FILES:
        return install(cmd, "--dry-run" in sys.argv)
    raise SystemExit(__doc__)


if __name__ == "__main__":
    sys.exit(main())
