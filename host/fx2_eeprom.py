"""Read (and back up) the boot EEPROM on the CY7C68013A board, over its own USB cable.

    python fx2_eeprom.py              look for the EEPROM and save its contents
    python fx2_eeprom.py --probe      only show which I2C addresses answer
    python fx2_eeprom.py --write-uvc  store the webcam firmware (fx2/uvc/uvc.ihx): the chip starts it by itself
    python fx2_eeprom.py --erase      blank the start of the EEPROM again

Without --write-uvc / --erase nothing is written to the EEPROM. The FX2LP's built-in USB core lets the PC
load a small program into the chip's RAM (as fx2_stream.py does for the
stream); that program reads the EEPROM through the chip's I2C controller into
RAM, and the PC reads the RAM back. The program is gone at the next power
cycle or when another program is loaded (the camera tools load theirs again
by themselves).

Only operations that cannot change an EEPROM are used: an address-only
"write" (device address, then at most the address bytes, never data), and
reads. A two-byte address is only sent once the reads have shown that the
device is not a one-byte-address type, for which the second byte would be
data.

Backups go to fx2/eeprom_<time>_<address>.bin with a .txt next to them.
"""
import os
import sys
import time

from fx2_stream import Fx2

ROOT = os.path.normpath(os.path.join(os.path.dirname(os.path.abspath(__file__)), ".."))
I2CS, I2DAT = 0xE678, 0xE679
RES, BUF = 0x0F00, 0x1000           # results and data buffer in the FX2LP's RAM
CHUNK = 0x1000


class Asm:
    """Just enough of an 8051 assembler for the programs below."""

    def __init__(self):
        self.code, self.labels, self.fix = bytearray(), {}, []

    def label(self, name):
        self.labels[name] = len(self.code)

    def raw(self, *b):
        self.code += bytes(b)

    def rel(self, name):
        self.fix.append((len(self.code), name, "rel"))
        self.code.append(0)

    def abs16(self, name):
        self.fix.append((len(self.code), name, "abs"))
        self.code += b"\x00\x00"

    def dptr(self, addr):
        self.raw(0x90, addr >> 8, addr & 0xFF)

    def lcall(self, name):
        self.raw(0x12)
        self.abs16(name)

    def ljmp(self, name):
        self.raw(0x02)
        self.abs16(name)

    def store(self, addr):                  # A -> RAM, keeps A
        self.dptr(addr)
        self.raw(0xF0)

    def build(self):
        for pos, name, kind in self.fix:
            target = self.labels[name]
            if kind == "abs":
                self.code[pos:pos + 2] = bytes([target >> 8, target & 0xFF])
            else:
                d = target - (pos + 1)
                assert -128 <= d <= 127, name
                self.code[pos] = d & 0xFF
        return bytes(self.code)


def common(a):
    """Subroutines: wait for the I2C byte, start + address byte, stop."""
    a.label("wait")                         # returns I2CS in A once DONE is set
    a.dptr(I2CS)
    a.label("wait1")
    a.raw(0xE0)                             # MOVX A,@DPTR
    a.raw(0x30, 0xE0); a.rel("wait1")       # JNB ACC.0
    a.raw(0x22)
    a.label("start")                        # device address byte in R2
    a.dptr(I2CS); a.raw(0x74, 0x80, 0xF0)   # START
    a.dptr(I2DAT); a.raw(0xEA, 0xF0)        # I2DAT = R2
    a.ljmp("wait")
    a.label("send")                         # byte in A
    a.dptr(I2DAT); a.raw(0xF0)
    a.ljmp("wait")
    a.label("stop")
    a.dptr(I2CS); a.raw(0x74, 0x40, 0xF0)   # STOP
    a.label("stop1")
    a.raw(0xE0)
    a.raw(0x20, 0xE6); a.rel("stop1")       # JB ACC.6: until the stop is out
    a.raw(0x22)


def probe_program():
    """I2CS as found, then for each of 0xA0 .. 0xAE: start, address, stop; status to RAM."""
    a = Asm()
    a.ljmp("main")
    common(a)
    a.label("main")
    a.raw(0x75, 0x81, 0x30)                 # MOV SP,#30h
    a.dptr(I2CS); a.raw(0xE0); a.store(RES + 3)
    for i in range(8):
        a.raw(0x7A, 0xA0 + 2 * i)           # MOV R2,#dev
        a.lcall("start")
        a.store(RES + 0x10 + i)
        a.lcall("stop")
    a.raw(0x74, 0xDD); a.store(RES + 2)
    a.label("end"); a.raw(0x80); a.rel("end")
    return a.build()


def read_program(dev, naddr, addr, count):
    """Set the address with `naddr` bytes (0: read on from where the device is), then read
    `count` bytes in one go into RAM at BUF."""
    assert 1 <= count <= 0x3000 - 0x1000 + 0x1000
    a = Asm()
    a.ljmp("main")
    common(a)
    a.label("main")
    a.raw(0x75, 0x81, 0x30)
    a.raw(0x74, 0x00); a.store(RES); a.store(RES + 1)
    if naddr:
        a.raw(0x7A, dev)
        a.lcall("start"); a.store(RES)
        if naddr == 2:
            a.raw(0x74, addr >> 8); a.lcall("send")
        a.raw(0x74, addr & 0xFF); a.lcall("send")
    a.raw(0x7A, dev | 1)
    a.lcall("start"); a.store(RES + 1)
    a.raw(0x20, 0xE1); a.rel("acked")       # JB ACC.1: the device answered
    a.lcall("stop")
    a.raw(0x74, 0xEE); a.store(RES + 2)
    a.label("dead"); a.raw(0x80); a.rel("dead")
    a.label("acked")
    a.raw(0x7C, BUF >> 8, 0x7D, BUF & 0xFF)             # R4:R5 = where the next byte goes
    a.raw(0x7E, count >> 8, 0x7F, count & 0xFF)         # R6:R7 = bytes still to read
    if count == 1:
        a.dptr(I2CS); a.raw(0x74, 0x20, 0xF0)           # LASTRD before the first clocks
    a.dptr(I2DAT); a.raw(0xE0)                          # dummy read: starts the first byte
    a.lcall("wait")
    a.label("loop")
    a.raw(0xBE, 0x00); a.rel("many")                    # CJNE R6,#0: more than 255 left
    a.raw(0xBF, 0x02); a.rel("not2")                    # CJNE R7,#2
    a.dptr(I2CS); a.raw(0x74, 0x20, 0xF0)               # two left: the next one is the last
    a.label("not2")
    a.raw(0xBF, 0x01); a.rel("many")                    # CJNE R7,#1
    a.dptr(I2CS); a.raw(0x74, 0x40, 0xF0)               # one left: stop, then take it
    a.dptr(I2DAT); a.raw(0xE0)
    a.raw(0x8C, 0x83, 0x8D, 0x82, 0xF0)                 # DPTR = R4:R5; store
    a.dptr(I2CS)
    a.label("stopw")
    a.raw(0xE0)
    a.raw(0x20, 0xE6); a.rel("stopw")
    a.raw(0x74, 0xDD); a.store(RES + 2)
    a.label("end"); a.raw(0x80); a.rel("end")
    a.label("many")
    a.dptr(I2DAT); a.raw(0xE0)                          # take a byte: the next one starts
    a.raw(0x8C, 0x83, 0x8D, 0x82, 0xF0)
    a.raw(0x0D)                                         # INC R5
    a.raw(0xBD, 0x00); a.rel("nocarry")                 # CJNE R5,#0
    a.raw(0x0C)                                         # INC R4
    a.label("nocarry")
    a.raw(0xEF); a.raw(0x70); a.rel("nob")              # MOV A,R7; JNZ: no borrow
    a.raw(0x1E)                                         # DEC R6
    a.label("nob")
    a.raw(0x1F)                                         # DEC R7
    a.lcall("wait")
    a.ljmp("loop")
    return a.build()


def write_program(dev, addr, count):
    """Write `count` bytes waiting in RAM at BUF to the EEPROM (two address bytes) from `addr`
    on, 16 at a time (inside any page size); each page waits until the device answers again."""
    a = Asm()
    a.ljmp("main")
    common(a)
    a.label("main")
    a.raw(0x75, 0x81, 0x30)
    a.raw(0x75, 0x20, BUF >> 8, 0x75, 0x21, BUF & 0xFF)     # 20h:21h = where the next byte comes from
    a.raw(0x7C, addr >> 8, 0x7D, addr & 0xFF)               # R4:R5 = EEPROM address
    a.raw(0x7E, count >> 8, 0x7F, count & 0xFF)             # R6:R7 = bytes left
    a.label("page")
    a.raw(0x7B, 0x00)                                       # R3: tries
    a.label("poll")
    a.raw(0x7A, dev)
    a.lcall("start")
    a.raw(0x20, 0xE1); a.rel("ready")                       # JB ACC.1: answered, the last page is written
    a.lcall("stop")
    a.raw(0xDB); a.rel("poll")                              # DJNZ R3
    a.raw(0x74, 0xEE); a.store(RES + 2)                     # never answered
    a.label("dead"); a.raw(0x80); a.rel("dead")
    a.label("ready")
    a.raw(0xEC); a.lcall("send")                            # address high (MOV A,R4)
    a.raw(0xED); a.lcall("send")                            # address low
    a.raw(0x78, 16)                                         # R0: bytes in this page
    a.label("byte")
    a.raw(0x85, 0x20, 0x83, 0x85, 0x21, 0x82)               # DPTR = 20h:21h
    a.raw(0xE0, 0xA3)                                       # MOVX A,@DPTR; INC DPTR
    a.raw(0x85, 0x83, 0x20, 0x85, 0x82, 0x21)
    a.lcall("send")
    a.raw(0x0D, 0xBD, 0x00); a.rel("nc")                    # INC R5; CJNE R5,#0
    a.raw(0x0C)
    a.label("nc")
    a.raw(0xEF, 0x70); a.rel("nb")                          # MOV A,R7; JNZ
    a.raw(0x1E)
    a.label("nb")
    a.raw(0x1F)
    a.raw(0xEE, 0x4F, 0x60); a.rel("last")                  # MOV A,R6; ORL A,R7; JZ: all written
    a.raw(0xED, 0x54, 0x0F, 0x60); a.rel("pagedone")        # MOV A,R5; ANL A,#0Fh; JZ: page boundary
    a.raw(0xD8); a.rel("byte")                              # DJNZ R0
    a.label("pagedone")
    a.lcall("stop")
    a.ljmp("page")
    a.label("last")
    a.lcall("stop")
    a.raw(0x7B, 0x00)                                       # wait for the last page as well
    a.label("poll2")
    a.raw(0x7A, dev)
    a.lcall("start")
    a.raw(0x20, 0xE1); a.rel("fin")
    a.lcall("stop")
    a.raw(0xDB); a.rel("poll2")
    a.label("fin")
    a.lcall("stop")
    a.raw(0x74, 0xDD); a.store(RES + 2)
    a.label("end"); a.raw(0x80); a.rel("end")
    return a.build()


def write(dev, i2c, addr, data):
    """Write and read back; returns True when the EEPROM holds the data."""
    for off in range(0, len(data), CHUNK):
        part = data[off:off + CHUNK]
        n = len(part)
        part += bytes(n & 1)                                # RAM is loaded in even pieces
        dev.ram_write(0xE600, bytes([1]))
        for i in range(0, len(part), 64):
            dev.ram_write(BUF + i, part[i:i + 64])
        res = run(dev, write_program(i2c, addr + off, n), 0.3 + n / 16 * 0.012)
        if res[2] != 0xDD:
            raise SystemExit(f"writing at 0x{addr + off:04X} did not finish (flag 0x{res[2]:02X})")
    return read_long(dev, i2c, addr, len(data)) == data


def read_long(dev, i2c, addr, n):
    out = bytes()
    while len(out) < n:
        out += read(dev, i2c, 2, addr + len(out), min(CHUNK, n - len(out)))
    return out


def c2_image(ihx_path, vid=0x1209, pid=0x0001, did=0x0100):
    """The firmware as the FX2LP's boot EEPROM wants it ("C2 load")."""
    mem = {}
    for line in open(ihx_path):
        line = line.strip()
        if line.startswith(":"):
            raw = bytes.fromhex(line[1:])
            if raw[3] == 0:
                for i in range(raw[0]):
                    mem[(raw[1] << 8 | raw[2]) + i] = raw[4 + i]
    img = bytearray([0xC2, vid & 0xFF, vid >> 8, pid & 0xFF, pid >> 8, did & 0xFF, did >> 8, 0x00])
    run_start = None
    addrs = sorted(mem)
    for k, a in enumerate(addrs):
        if run_start is None:
            run_start = a
        if (k + 1 == len(addrs)) or addrs[k + 1] != a + 1 or a + 1 - run_start >= 1023:
            n = a + 1 - run_start
            img += bytes([n >> 8, n & 0xFF, run_start >> 8, run_start & 0xFF]) + bytes(mem[x] for x in range(run_start, a + 1))
            run_start = None
    img += bytes([0x80, 0x01, 0xE6, 0x00, 0x00])            # last record: release the 8051's reset
    return bytes(img)


def store(dev, erase):
    """--write-uvc / --erase: the EEPROM must be the two-byte-address kind at 0xA2."""
    mark = bytes([0xA5, 0x5A, 0xC3, 0x3C])
    # Is it a two-byte-address device? Four bytes at 0x0100; nothing else may change.
    if not write(dev, 0xA2, 0x0100, mark) or read_long(dev, 0xA2, 0x0000, 8) != bytes([0xFF] * 8):
        raise SystemExit("this does not behave like an EEPROM with two address bytes; nothing more was written")
    size = next((s for s in (0x0200, 0x0400, 0x0800, 0x1000, 0x2000, 0x4000, 0x8000)
                 if read_long(dev, 0xA2, 0x0100 + s, 4) == mark), None)
    print("EEPROM dua byte alamat, ukuran", f"{size} byte" if size else "di atas 32768 byte")
    if erase:
        img = bytes([0xFF] * 0x0800)
    else:
        img = c2_image(os.path.join(ROOT, "fx2", "uvc", "uvc.ihx"))
        if size and len(img) > size:
            raise SystemExit(f"the firmware image ({len(img)} bytes) does not fit")
        img += bytes([0xFF] * max(0, 0x0104 - len(img)))    # covers the test mark as well
    ok = write(dev, 0xA2, 0x0000, img)
    print(f"{len(img)} byte ditulis ke EEPROM; baca ulang {'cocok' if ok else 'TIDAK COCOK'}")
    print("isi sekarang:", describe(read_long(dev, 0xA2, 0, max(64, len(img)))))
    return 0 if ok else 1


def run(dev, code, seconds):
    """Load a program, let it run, stop the CPU, return the result bytes."""
    dev.ram_write(0xE600, bytes([1]))
    dev.ram_write(RES, bytes(0x20))
    code += bytes(len(code) & 1)
    for i in range(0, len(code), 64):                       # even addresses, one control packet each
        dev.ram_write(i, code[i:i + 64])
        if dev.ram_read(i, len(code[i:i + 64])) != code[i:i + 64]:
            raise SystemExit("program read-back mismatch")
    dev.ram_write(0xE600, bytes([0]))
    time.sleep(seconds)
    dev.ram_write(0xE600, bytes([1]))
    return dev.ram_read(RES, 0x20)


def ram(dev, addr, n):
    out = b""
    while len(out) < n:
        out += dev.ram_read(addr + len(out), min(512, n - len(out)))
    return out


def read(dev, i2c, naddr, addr, count):
    res = run(dev, read_program(i2c, naddr, addr, count), 0.2 + count * 9 * 11e-6)
    if res[2] != 0xDD:
        raise SystemExit(f"reading 0x{i2c:02X} did not finish (flag 0x{res[2]:02X}, status 0x{res[0]:02X}/0x{res[1]:02X})")
    return ram(dev, BUF, count)


def describe(data):
    """What the FX2LP would do with these bytes at power-on."""
    if all(b == 0xFF for b in data[:8]):
        return "kosong (FF): FX2 memakai identitas bawaan 04B4:8613"
    if data[0] == 0xC0:
        vid, pid, did = (data[1] | data[2] << 8), (data[3] | data[4] << 8), (data[5] | data[6] << 8)
        return f"C0: hanya identitas USB, VID {vid:04X} PID {pid:04X} DID {did:04X}; firmware dikirim oleh PC"
    if data[0] == 0xC2:
        vid, pid, did = (data[1] | data[2] << 8), (data[3] | data[4] << 8), (data[5] | data[6] << 8)
        n, pos = 0, 8
        while pos + 4 <= len(data):
            ln, ad = (data[pos] << 8 | data[pos + 1]), (data[pos + 2] << 8 | data[pos + 3])
            if ln & 0x8000:
                break
            n, pos = n + (ln & 0x3FF), pos + 4 + (ln & 0x3FF)
        return f"C2: firmware di EEPROM ({n} byte), VID {vid:04X} PID {pid:04X} DID {did:04X}"
    return f"byte pertama 0x{data[0]:02X}: bukan format boot FX2 (diabaikan saat menyala)"


def main():
    dev = Fx2()
    try:
        res = run(dev, probe_program(), 0.3)
        if res[2] != 0xDD:
            raise SystemExit("the probe program did not finish: is the I2C bus held low?")
        i2cs = res[3]
        kinds = {0: "tidak ada EEPROM yang terbaca saat menyala", 1: "EEPROM alamat 1 byte (di 0xA0)",
                 2: "EEPROM alamat 2 byte (di 0xA2)", 3: "?"}
        print(f"deteksi FX2 saat menyala: {kinds[(i2cs >> 3) & 3]}")
        found = [0xA0 + 2 * i for i in range(8) if res[0x10 + i] & 0x02]
        print("alamat I2C yang menjawab:", ", ".join(f"0x{d:02X}" for d in found) or "tidak ada")
        if "--probe" in sys.argv or not found:
            return 0
        if "--write-uvc" in sys.argv or "--erase" in sys.argv:
            if found != [0xA2]:
                raise SystemExit("the EEPROM must answer at 0xA2 (the address the FX2LP boots from): jumper J2 off")
            return store(dev, "--erase" in sys.argv)
        os.makedirs(os.path.join(ROOT, "fx2"), exist_ok=True)
        stamp = time.strftime("%Y%m%d_%H%M%S")
        for i2c in found:
            # which kind? only address-only operations with ONE address byte, and reads
            at0 = read(dev, i2c, 1, 0x00, 32)
            at1 = read(dev, i2c, 1, 0x01, 32)
            again = read(dev, i2c, 1, 0x00, 32)
            flat = len(set(at0 + at1)) == 1
            one_byte = (at0 == again) and (at0[1:] == at1[:-1]) and not flat
            if flat:
                # all the same either way: read on from wherever the device stands, never send a second byte
                data = read(dev, i2c, 0, 0, CHUNK)
                kind = "isi seragam, jenis alamat tidak dapat ditentukan tanpa menulis"
            elif one_byte:
                data = read(dev, i2c, 1, 0x00, 256)
                kind = "alamat 1 byte (256 byte per alamat I2C)"
            else:
                data, size = b"", None
                while len(data) < 0x10000:
                    data += read(dev, i2c, 2, len(data), CHUNK)
                    half = len(data) // 2
                    if len(data) >= 2 * CHUNK and data[:half] == data[half:]:
                        size, data = half, data[:half]          # the address wrapped: that is the size
                        while size > CHUNK and data[:size // 2] == data[size // 2:]:
                            size //= 2
                            data = data[:size]
                        break
                kind = f"alamat 2 byte, {'ukuran ' + str(size) + ' byte' if size else 'ukuran tidak terdeteksi (64K dibaca)'}"
            check = read(dev, i2c, 2 if "2 byte" in kind else (1 if one_byte else 0), 0, min(len(data), CHUNK))
            same = flat or check == data[:len(check)]
            name = os.path.join(ROOT, "fx2", f"eeprom_{stamp}_{i2c:02X}.bin")
            open(name, "wb").write(data)
            used = len(data.rstrip(b"\xff"))
            text = (f"EEPROM papan CY7C68013A, alamat I2C 0x{i2c:02X}\n{kind}\n{len(data)} byte dibaca, "
                    f"{used} byte sampai byte bukan-FF terakhir\nisi: {describe(data)}\n"
                    f"baca ulang {'cocok' if same else 'TIDAK COCOK'}\n16 byte pertama: {data[:16].hex(' ')}\n")
            open(os.path.splitext(name)[0] + ".txt", "w").write(text)
            print(f"\n0x{i2c:02X}: {kind}\n  {len(data)} byte, terpakai {used} byte; {describe(data)}\n"
                  f"  16 byte pertama: {data[:16].hex(' ')}\n  baca ulang {'cocok' if same else 'TIDAK COCOK'}\n  cadangan: {name}")
        return 0
    finally:
        dev.close()


if __name__ == "__main__":
    sys.exit(main())
