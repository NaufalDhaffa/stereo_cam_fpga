"""Wiring check for the FX2LP Slave FIFO link, using the FX2LP as the probe.

Loads the normal Slave FIFO configuration followed by code that copies pin
states and FIFO status registers into the FX2LP's RAM, then reads that RAM
back over USB and interprets it. Three phases:

  A  Slave FIFO mode: FIFO status, port A (tie-offs) and port B (FD bus).
  B  GPIF mode with CTL1 driven high ("not full"): the FPGA should write,
     so RDY1 (SLWR) should be mostly low and FD should change.
  C  GPIF mode with CTL1 driven low ("full"): the FPGA should stop, so
     RDY1 should stay high and FD should freeze.

Run fx2_stream.py afterwards; it reloads the normal configuration.

    python fx2_diag.py
"""
import sys
import time

from fx2_stream import Fx2, FX2_REGS

DUMP = 0x1000
N = 40

REGS = [
    ("EP6FIFOFLGS", 0xE6A9), ("EP6FIFOBCH", 0xE6AF), ("EP6FIFOBCL", 0xE6B0),
    ("EP8FIFOFLGS", 0xE6AA), ("EP8FIFOBCH", 0xE6B1), ("EP8FIFOBCL", 0xE6B2),
]
SFR_IOA, SFR_IOB = 0x80, 0x90
IFCONFIG, GPIFIDLECTL, GPIFREADYSTAT = 0xE601, 0xE6C2, 0xE6F4

DELAY = bytes([0x7F, 0x00, 0x7E, 0x00, 0xDE, 0xFE, 0xDF, 0xFC])   # ~40 ms


def poke(addr, val):
    return bytes([0x90, addr >> 8, addr & 0xFF, 0x74, val, 0xF0, 0, 0, 0, 0])


def store(addr):
    return bytes([0x90, addr >> 8, addr & 0xFF, 0xF0])


def peek(addr):
    return bytes([0x90, addr >> 8, addr & 0xFF, 0xE0])


def build():
    code = bytearray()
    for addr, val in FX2_REGS:
        code += poke(addr, val)
    code += DELAY
    dst = DUMP
    for _, addr in REGS:
        code += peek(addr) + store(dst)
        dst += 1
    for _ in range(N):
        code += bytes([0xE5, SFR_IOA]) + store(dst)
        code += bytes([0xE5, SFR_IOB]) + store(dst + 1)
        dst += 2
    for ctl in (0xFF, 0xFD):
        code += poke(IFCONFIG, 0xE2) + poke(GPIFIDLECTL, ctl) + DELAY
        for _ in range(N):
            code += peek(GPIFREADYSTAT) + store(dst)
            code += bytes([0xE5, SFR_IOB]) + store(dst + 1)
            dst += 2
    code += poke(GPIFIDLECTL, 0xFF) + poke(IFCONFIG, 0xE3)
    code += bytes([0x80, 0xFE])
    return bytes(code), dst - DUMP


def describe(samples, bit):
    hi = sum((s >> bit) & 1 for s in samples)
    if hi == len(samples):
        return "always high"
    if hi == 0:
        return "always low"
    return f"toggling ({100 * hi // len(samples)}% high)"


def main():
    dev = Fx2()
    try:
        code, n = build()
        dev.ram_write(DUMP, bytes(n))
        dev.load_firmware(code)
        time.sleep(0.5)
        # RAM can only be read back cleanly while the 8051 is halted;
        # halting it does not disturb the FIFO configuration.
        dev.ram_write(0xE600, b"\x01")
        raw = dev.ram_read(DUMP, n)
    finally:
        dev.close()

    vals = dict(zip((r[0] for r in REGS), raw))
    rest = raw[len(REGS):]
    a = rest[:2 * N]
    b = rest[2 * N:4 * N]
    c = rest[4 * N:6 * N]
    ioa, iob_a = a[0::2], a[1::2]
    rdy_b, iob_b = b[0::2], b[1::2]
    rdy_c, iob_c = c[0::2], c[1::2]

    print("A. Slave FIFO mode")
    for ep in (6, 8):
        f = vals[f"EP{ep}FIFOFLGS"]
        bc = vals[f"EP{ep}FIFOBCH"] << 8 | vals[f"EP{ep}FIFOBCL"]
        print(f"   EP{ep} FIFO: {bc} bytes, full={f & 1} empty={(f >> 1) & 1}")
    print("   (a floating pin reads high, so only a LOW reading proves a tie-off)")
    for bit, name, want in ((2, "PA2 SLOE", "high"), (4, "PA4 FIFOADR0", "low"),
                            (5, "PA5 FIFOADR1", "high"), (6, "PA6 PKTEND", "high")):
        got = describe(ioa, bit)
        flag = "" if got == "always " + want else "   <-- WRONG"
        print(f"   {name:13s}: {got:22s} want {want}{flag}")
    print("   FD samples:", " ".join(f"{x:02X}" for x in iob_a[:24]))

    print("\nB. CTL1 driven HIGH (FPGA is told: not full, keep writing)")
    print(f"   RDY1 / SLWR  : {describe(rdy_b, 1):22s} want mostly low")
    print(f"   RDY0 / SLRD  : {describe(rdy_b, 0):22s} want high")
    print(f"   FD bus       : {'changing' if len(set(iob_b)) > 1 else 'static'}")

    print("\nC. CTL1 driven LOW (FPGA is told: full, stop)")
    print(f"   RDY1 / SLWR  : {describe(rdy_c, 1):22s} want always high")
    print(f"   RDY0 / SLRD  : {describe(rdy_c, 0):22s} want high")
    print("   raw GPIFREADYSTAT:", " ".join(f"{x:02X}" for x in rdy_b[:8]),
          "|", " ".join(f"{x:02X}" for x in rdy_c[:8]))
    print(f"   FD bus       : {'changing' if len(set(iob_c)) > 1 else 'static':22s} want static")
    return 0


if __name__ == "__main__":
    sys.exit(main())
