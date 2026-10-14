"""boot.scr for a board with 256 MB of memory.

    python3 bootscr.py boot.scr

PetaLinux's boot script loads image.ub at 0x10000000, which is the end of the EBAZ4205's
memory ("Reading file would overwrite reserved memory"). This rewrites the script image in
place with 0x04000000 instead (the image is 27 MB; kernel and device tree go below it).
"""
import struct
import sys
import zlib

OLD, NEW = b"0x10000000", b"0x04000000"


def main():
    path = sys.argv[1]
    d = open(path, "rb").read()
    magic, _, t, size, load, ep, _, os_, arch, typ, comp, name = struct.unpack(">IIIIIIIBBBB32s", d[:64])
    if magic != 0x27051956 or typ != 6:
        raise SystemExit("not a U-Boot script image")
    text = d[72:64 + size].replace(OLD, NEW)
    body = struct.pack(">II", len(text), 0) + text
    head = struct.pack(">IIIIIIIBBBB32s", magic, 0, t, len(body), load, ep, zlib.crc32(body) & 0xFFFFFFFF, os_, arch, typ, comp, name)
    head = head[:4] + struct.pack(">I", zlib.crc32(head) & 0xFFFFFFFF) + head[8:]
    open(path, "wb").write(head + body)
    print(f"{path}: {text.count(NEW)} addresses at {NEW.decode()}")


if __name__ == "__main__":
    main()
