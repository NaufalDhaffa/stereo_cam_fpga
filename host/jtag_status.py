"""Where the stream stands, read from the PL over JTAG (EMIO GPIO 31..24, see depth_top.v).

    python jtag_status.py [seconds, default 2]

Samples the status many times and says which flags were set and which
counters moved: webcam rows produced, bytes handed to the FX2LP, packet ends.
"""
import sys
import time

from pslink import PsLink

NAMES = ["packet-end toggle", "4096-byte toggle", "row toggle", "USB FIFO empty", "row FIFO empty",
         "USB FIFO nearly full", "row FIFO nearly full", "overrun seen"]


def main():
    seconds = float(sys.argv[1]) if len(sys.argv) > 1 else 2.0
    ps = PsLink()
    try:
        out = int(ps.cmd("reg_r 0xE000A048"), 0)
        t0, samples, frames = time.time(), [], []
        while time.time() - t0 < seconds:
            samples.append((int(ps.cmd("reg_r 0xE000A068"), 0) >> 24) & 0xFF)
            frames.append(int(ps.cmd("reg_r 0xE000A06C"), 0) >> 24)
        print(f"GPIO keluar 0x{out:06X}: cap_en {(out >> 1) & 1}, depth {(out >> 20) & 1}, webcam {(out >> 21) & 1}; "
              f"{len(samples)} cuplikan dalam {seconds:.0f} s; frame sensor {(frames[-1] - frames[0]) & 255}")
        for bit, name in enumerate(NAMES):
            v = [(s >> bit) & 1 for s in samples]
            changes = sum(a != b for a, b in zip(v, v[1:]))
            print(f"  {name:22s}: {'1' if all(v) else '0' if not any(v) else 'berubah'}"
                  + (f" ({changes} perubahan terlihat)" if changes else ""))
        # the other pages: scheduler / hub state, the scheduler's row, FIFO level before the hub (mini build)
        sched = {0: "IDLE", 1: "WAIT", 2: "ROW", 5: "END"}
        hub = ["RST", "CFG", "PIX", "FRAME", "TAIL", "OUT0", "OUT1", "OUT2", "DONE"]
        seen = {1: set(), 2: set(), 3: set()}
        for _ in range(40):
            for page in (1, 2, 3):
                ps.cmd(f"reg_w 0xE000A048 [expr {{([reg_r 0xE000A048] & 0x3FFFFF) | ({page} << 22)}}]")
                seen[page].add((int(ps.cmd("reg_r 0xE000A068"), 0) >> 24) & 0xFF)
        ps.cmd("reg_w 0xE000A048 [expr {[reg_r 0xE000A048] & 0x3FFFFF}]")
        st = sorted({(v >> 5, (v >> 4) & 1, v & 15) for v in seen[1]})
        print("  penjadwal / flushing / hub:", ", ".join(f"{sched.get(a, a)}/{b}/{hub[c] if c < len(hub) else c}" for a, b, c in st))
        print("  baris penjadwal:", sorted(seen[2])[:12], "..." if len(seen[2]) > 12 else "")
        print("  isi FIFO sebelum hub:", sorted(2 * v for v in seen[3])[:12])
    finally:
        ps.close()
    return 0


if __name__ == "__main__":
    sys.exit(main())
