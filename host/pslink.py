"""A persistent xsdb session to the Zynq PS (scripts/cam.tcl serve).

Everything the PC does on the board besides reading the USB stream goes
through here: sensor registers of both cameras, the ToF sensor on camera 0's
bus, and the PS GPIOs that feed values into the PL. One process should own
one PsLink; access is serialised with a lock so threads can share it.
"""
import os
import subprocess
import threading

ROOT = os.path.normpath(os.path.join(os.path.dirname(os.path.abspath(__file__)), ".."))
XSDB = os.environ.get("XSDB", r"D:/Xilinx/2025.2/Vitis/bin/xsdb.bat")


class PsLink:
    def __init__(self):
        self.lock = threading.Lock()
        self.p = subprocess.Popen(
            [XSDB, os.path.join(ROOT, "scripts", "cam.tcl"), "serve"],
            stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
            text=True, bufsize=1, creationflags=subprocess.CREATE_NO_WINDOW)
        while True:
            line = self.p.stdout.readline()
            if not line:
                raise SystemExit("xsdb did not start (is the JTAG cable connected?)")
            if line.startswith("READY"):
                break

    def cmd(self, text):
        """Run one Tcl command in the session and return its result string."""
        with self.lock:
            self.p.stdin.write(text + "\n")
            self.p.stdin.flush()
            while True:
                line = self.p.stdout.readline()
                if not line:
                    raise RuntimeError(f"{text}: xsdb session ended")
                line = line.strip()
                if line.startswith("OK"):
                    return line[3:]
                if line.startswith("ERR"):
                    raise RuntimeError(f"{text}: {line[4:]}")

    # camera sensor registers (bank 1 = sensor, 0 = DSP)
    def put(self, cam, reg, val, bank=1):
        self.cmd(f"sput {cam} {bank} 0x{reg:02X} 0x{val:02X}")

    def get(self, cam, reg, bank=1):
        return int(self.cmd(f"sget {cam} {bank} 0x{reg:02X}"), 16)

    # any I2C device: bus 0 is camera 0's SCCB bus, bus 1 camera 1's
    def iw(self, bus, addr, reg, *data):
        self.cmd(f"iw {bus} 0x{addr:02X} 0x{reg:02X} " + " ".join(f"0x{b:02X}" for b in data))

    def ir(self, bus, addr, reg, n=1):
        return [int(x) for x in self.cmd(f"ir {bus} 0x{addr:02X} 0x{reg:02X} {n}").split()]

    def close(self):
        try:
            with self.lock:
                self.p.stdin.write("quit\n")
                self.p.stdin.flush()
            self.p.wait(5)
        except Exception:
            self.p.kill()
