"""Load the webcam firmware (fx2/uvc) into the FX2LP's RAM and start it.

    python fx2_uvc.py              fx2/uvc/uvc.ihx: a webcam until the cable is unplugged
    python fx2_uvc.py --dev        fx2/uvc/uvc_dev.ihx: gives the chip back to its loader after a while
    python fx2_uvc.py --list       cameras Windows knows right now

The chip must show its built-in identity (04B4:8613) for this; once the
firmware runs it leaves the bus and comes back as "Stereo Depth Camera"
(1209:0001), a USB Video Class device that needs no driver.
"""
import os
import subprocess
import sys
import time

from fx2_stream import Fx2

ROOT = os.path.normpath(os.path.join(os.path.dirname(os.path.abspath(__file__)), ".."))


def read_ihx(path):
    """Intel HEX -> [(address, bytes)]: the bytes of the file as a few runs that start at even
    addresses (the chip's loader request misplaces data sent to an odd address), gaps filled with 0."""
    mem = {}
    for line in open(path):
        line = line.strip()
        if not line.startswith(":"):
            continue
        raw = bytes.fromhex(line[1:])
        n, addr, kind = raw[0], raw[1] << 8 | raw[2], raw[3]
        if kind == 0:
            for i in range(n):
                mem[addr + i] = raw[4 + i]
    out = []
    for a in sorted(mem):
        if out and a - (out[-1][0] + len(out[-1][1])) < 64:
            start, data = out[-1]
            out[-1] = (start, data + bytes(a - start - len(data)) + bytes([mem[a]]))
        else:
            start = a & ~1
            out.append((start, bytes(a - start) + bytes([mem[a]])))
    return [(a, d + bytes(len(d) & 1)) for a, d in out]


def cameras():
    ps = ("Get-PnpDevice -PresentOnly | Where-Object { $_.Class -in 'Camera','Image' -or $_.InstanceId -match 'VID_1209' } | "
          "ForEach-Object { $_.Status + ' | ' + $_.Class + ' | ' + $_.FriendlyName + ' | ' + $_.InstanceId }")
    return subprocess.run(["powershell", "-NoProfile", "-Command", ps], capture_output=True, text=True).stdout.strip()


def main():
    if "--list" in sys.argv:
        print(cameras() or "(tidak ada kamera)")
        return 0
    name = "uvc_dev.ihx" if "--dev" in sys.argv else "uvc.ihx"
    blocks = read_ihx(os.path.join(ROOT, "fx2", "uvc", name))
    dev = Fx2()
    try:
        dev.ram_write(0xE600, b"\x01")
        for addr, data in blocks:
            for i in range(0, len(data), 64):          # one packet of the control endpoint at a time
                dev.ram_write(addr + i, data[i:i + 64])
                if dev.ram_read(addr + i, len(data[i:i + 64])) != data[i:i + 64]:
                    raise SystemExit(f"read-back mismatch at 0x{addr + i:04X}")
        print(f"{name}: {sum(len(d) for _, d in blocks)} byte dimuat; menjalankan")
        dev.ram_write(0xE600, b"\x00")
    finally:
        dev.close()
    time.sleep(6)
    print(cameras() or "(belum ada kamera yang muncul)")
    return 0


if __name__ == "__main__":
    sys.exit(main())
