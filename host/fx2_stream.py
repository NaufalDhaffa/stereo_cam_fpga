"""Configure a CY7C68013A (FX2LP) as a Slave FIFO bridge and read EP6 IN.

Uses WinUSB directly through ctypes, so it needs no extra packages and no
8051 compiler: the firmware is just a list of register writes, assembled
here and loaded into the FX2LP's RAM (it is gone after a power cycle).

The FX2LP is left on its built-in default USB descriptors (no
re-enumeration); alternate setting 1 of those exposes EP6 as a 512-byte
bulk IN endpoint.

    python fx2_stream.py                 # load firmware, verify, measure
    python fx2_stream.py --no-load       # reuse firmware already in RAM
    python fx2_stream.py --dump out.bin --mb 16
"""
import argparse
import ctypes as C
import ctypes.wintypes as W
import sys
import time
import winreg

import numpy as np

VID_PID = "VID_04B4&PID_8613"
EP6_IN = 0x86

# (register, value) in the order the FX2LP TRM asks for.
FX2_REGS = [
    (0xE600, 0x10),  # CPUCS: 48 MHz CPU clock, CLKOUT off
    (0xE601, 0xE3),  # IFCONFIG: internal 48 MHz IFCLK, driven out, sync slave FIFO
    (0xE670, 0x00),  # PORTACFG: PA7 stays a GPIO (no SLCS#)
    (0xE609, 0x00),  # FIFOPINPOLAR: all control pins active low
    (0xE602, 0xE0),  # PINFLAGSAB: FLAGB = EP6 full
    (0xE614, 0xE2),  # EP6CFG: valid, IN, bulk, 512 bytes, double buffered
    (0xE604, 0x80),  # FIFORESET: NAK all, reset each FIFO, release
    (0xE604, 0x02),
    (0xE604, 0x04),
    (0xE604, 0x06),
    (0xE604, 0x08),
    (0xE604, 0x00),
    (0xE618, 0x00),  # EP2/4/8FIFOCFG: WORDWIDE off so port D is not FD[15:8]
    (0xE619, 0x00),
    (0xE61B, 0x00),
    (0xE61A, 0x00),  # EP6FIFOCFG: 8-bit, then AUTOIN + ZEROLENIN
    (0xE61A, 0x0C),
    (0xE624, 0x02),  # EP6AUTOINLEN = 512
    (0xE625, 0x00),
]


def build_firmware():
    code = bytearray()
    for addr, val in FX2_REGS:
        code += bytes([0x90, addr >> 8, addr & 0xFF])  # MOV DPTR,#addr
        code += bytes([0x74, val])                     # MOV A,#val
        code += bytes([0xF0])                          # MOVX @DPTR,A
        code += bytes([0x00] * 4)                      # NOPs (SYNCDELAY)
    code += bytes([0x80, 0xFE])                        # SJMP $
    return bytes(code)


class SetupPacket(C.Structure):
    _pack_ = 1
    _fields_ = [("RequestType", C.c_ubyte), ("Request", C.c_ubyte),
                ("Value", C.c_ushort), ("Index", C.c_ushort),
                ("Length", C.c_ushort)]


class PipeInfo(C.Structure):
    _fields_ = [("PipeType", C.c_int), ("PipeId", C.c_ubyte),
                ("MaximumPacketSize", C.c_ushort), ("Interval", C.c_ubyte)]


k32 = C.WinDLL("kernel32", use_last_error=True)
wusb = C.WinDLL("winusb", use_last_error=True)

k32.CreateFileW.restype = C.c_void_p
k32.CreateFileW.argtypes = [W.LPCWSTR, W.DWORD, W.DWORD, C.c_void_p,
                            W.DWORD, W.DWORD, C.c_void_p]
k32.CloseHandle.argtypes = [C.c_void_p]
wusb.WinUsb_Initialize.argtypes = [C.c_void_p, C.POINTER(C.c_void_p)]
wusb.WinUsb_Free.argtypes = [C.c_void_p]
wusb.WinUsb_ControlTransfer.argtypes = [C.c_void_p, SetupPacket, C.c_void_p,
                                        W.ULONG, C.POINTER(W.ULONG), C.c_void_p]
wusb.WinUsb_SetCurrentAlternateSetting.argtypes = [C.c_void_p, C.c_ubyte]
wusb.WinUsb_QueryPipe.argtypes = [C.c_void_p, C.c_ubyte, C.c_ubyte,
                                  C.POINTER(PipeInfo)]
wusb.WinUsb_QueryDeviceInformation.argtypes = [C.c_void_p, W.ULONG,
                                               C.POINTER(W.ULONG), C.c_void_p]
wusb.WinUsb_SetPipePolicy.argtypes = [C.c_void_p, C.c_ubyte, W.ULONG, W.ULONG,
                                      C.c_void_p]
wusb.WinUsb_ReadPipe.argtypes = [C.c_void_p, C.c_ubyte, C.c_void_p, W.ULONG,
                                 C.POINTER(W.ULONG), C.c_void_p]
wusb.WinUsb_ResetPipe.argtypes = [C.c_void_p, C.c_ubyte]

class Overlapped(C.Structure):
    _fields_ = [("Internal", C.c_void_p), ("InternalHigh", C.c_void_p),
                ("Offset", W.DWORD), ("OffsetHigh", W.DWORD),
                ("hEvent", C.c_void_p)]


k32.CreateEventW.restype = C.c_void_p
k32.CreateEventW.argtypes = [C.c_void_p, W.BOOL, W.BOOL, W.LPCWSTR]
k32.ResetEvent.argtypes = [C.c_void_p]
k32.WaitForSingleObject.restype = W.DWORD
k32.WaitForSingleObject.argtypes = [C.c_void_p, W.DWORD]
wusb.WinUsb_GetOverlappedResult.argtypes = [C.c_void_p, C.POINTER(Overlapped),
                                            C.POINTER(W.ULONG), W.BOOL]
wusb.WinUsb_AbortPipe.argtypes = [C.c_void_p, C.c_ubyte]

INVALID_HANDLE = C.c_void_p(-1).value
ERROR_IO_PENDING = 997
WAIT_TIMEOUT = 0x102
ERROR_SEM_TIMEOUT = 121


def winerr(what):
    code = C.get_last_error()
    return OSError(f"{what}: {C.FormatError(code).strip()} (error {code})")


def candidate_paths():
    """Device interface paths of every known 04B4:8613 instance."""
    key = rf"SYSTEM\CurrentControlSet\Enum\USB\{VID_PID}"
    with winreg.OpenKey(winreg.HKEY_LOCAL_MACHINE, key) as k:
        i = 0
        while True:
            try:
                inst = winreg.EnumKey(k, i)
            except OSError:
                return
            i += 1
            try:
                with winreg.OpenKey(k, inst + r"\Device Parameters") as p:
                    guids, _ = winreg.QueryValueEx(p, "DeviceInterfaceGUIDs")
            except OSError:
                continue
            if isinstance(guids, str):
                guids = [guids]
            for g in guids:
                yield inst, rf"\\?\USB#{VID_PID}#{inst}#{g}"


class Fx2:
    def __init__(self):
        self.file = None
        self.usb = C.c_void_p()
        self.instance = None
        last = None
        for inst, path in candidate_paths():
            h = k32.CreateFileW(path, 0xC0000000, 3, None, 3, 0x40000080, None)
            if h in (None, INVALID_HANDLE):
                last = winerr(f"open {inst}")
                continue
            if not wusb.WinUsb_Initialize(h, C.byref(self.usb)):
                last = winerr(f"WinUsb_Initialize {inst}")
                k32.CloseHandle(h)
                continue
            self.file, self.instance = h, inst
            return
        raise SystemExit(f"FX2LP ({VID_PID}) could not be opened: {last}")

    def close(self):
        if self.usb:
            wusb.WinUsb_Free(self.usb)
        if self.file:
            k32.CloseHandle(self.file)

    def control(self, req_type, request, value, data_or_len):
        if req_type & 0x80:
            buf = (C.c_ubyte * data_or_len)()
        else:
            buf = (C.c_ubyte * len(data_or_len)).from_buffer_copy(data_or_len)
        n = W.ULONG()
        pkt = SetupPacket(req_type, request, value, 0, len(buf))
        if not wusb.WinUsb_ControlTransfer(self.usb, pkt, buf, len(buf),
                                           C.byref(n), None):
            raise winerr(f"control request 0x{request:02X} @0x{value:04X}")
        return bytes(buf[:n.value])

    def ram_write(self, addr, data):
        self.control(0x40, 0xA0, addr, bytes(data))

    def ram_read(self, addr, length):
        return self.control(0xC0, 0xA0, addr, length)

    def load_firmware(self, code):
        self.ram_write(0xE600, b"\x01")      # hold the 8051 in reset
        self.ram_write(0x0000, code)
        if self.ram_read(0x0000, len(code)) != code:
            raise SystemExit("firmware read-back mismatch")
        self.ram_write(0xE600, b"\x00")      # run

    def speed(self):
        buf = C.c_ubyte()
        n = W.ULONG(1)
        if not wusb.WinUsb_QueryDeviceInformation(self.usb, 1, C.byref(n),
                                                  C.byref(buf)):
            raise winerr("query device speed")
        return buf.value

    def select_bulk_alt(self):
        if not wusb.WinUsb_SetCurrentAlternateSetting(self.usb, 1):
            raise winerr("select alternate setting 1")
        info = PipeInfo()
        i = 0
        while wusb.WinUsb_QueryPipe(self.usb, 1, i, C.byref(info)):
            if info.PipeId == EP6_IN:
                return info.MaximumPacketSize
            i += 1
        raise SystemExit("EP6 IN not found in alternate setting 1")

    def set_timeout(self, ms):
        v = W.ULONG(ms)
        if not wusb.WinUsb_SetPipePolicy(self.usb, EP6_IN, 3, 4, C.byref(v)):
            raise winerr("set pipe timeout")

    def read(self, buf):
        """Fill a ctypes buffer from EP6; returns bytes read, 0 on timeout."""
        n = W.ULONG()
        if not wusb.WinUsb_ReadPipe(self.usb, EP6_IN, buf, len(buf),
                                    C.byref(n), None):
            if C.get_last_error() == ERROR_SEM_TIMEOUT:
                wusb.WinUsb_ResetPipe(self.usb, EP6_IN)
                return 0
            raise winerr("read EP6")
        return n.value


def _stream(self, nreq=16, size=256 * 1024, timeout_ms=1000):
    """Yield data from EP6 with `nreq` reads always pending in the kernel.

    A source that cannot be paused (a camera) overflows as soon as the host
    leaves the endpoint unserviced for a millisecond or two, which a plain
    read-process-read loop does between calls. Here the reads are queued in
    advance (WinUSB RAW_IO, overlapped), so the endpoint stays serviced while
    Python handles the completed buffers. Yields b"" after `timeout_ms`
    without data.
    """
    raw = C.c_ubyte(1)
    if not wusb.WinUsb_SetPipePolicy(self.usb, EP6_IN, 7, 1, C.byref(raw)):
        raise winerr("enable RAW_IO")
    self.set_timeout(0)
    slots = []
    for _ in range(nreq):
        ov = Overlapped()
        ov.hEvent = k32.CreateEventW(None, True, False, None)
        slots.append(((C.c_ubyte * size)(), ov))

    def submit(buf, ov):
        k32.ResetEvent(ov.hEvent)
        if not wusb.WinUsb_ReadPipe(self.usb, EP6_IN, buf, size, None, C.byref(ov))                 and C.get_last_error() != ERROR_IO_PENDING:
            raise winerr("queue read on EP6")

    try:
        for buf, ov in slots:
            submit(buf, ov)
        i = 0
        while True:
            buf, ov = slots[i]
            if k32.WaitForSingleObject(ov.hEvent, timeout_ms) == WAIT_TIMEOUT:
                yield b""
                continue
            n = W.ULONG()
            if not wusb.WinUsb_GetOverlappedResult(self.usb, C.byref(ov), C.byref(n), False):
                raise winerr("read EP6")
            data = C.string_at(buf, n.value)
            submit(buf, ov)
            i = (i + 1) % nreq
            yield data
    finally:
        wusb.WinUsb_AbortPipe(self.usb, EP6_IN)
        n = W.ULONG()
        for buf, ov in slots:
            wusb.WinUsb_GetOverlappedResult(self.usb, C.byref(ov), C.byref(n), True)
            k32.CloseHandle(ov.hEvent)


Fx2.stream = _stream


def find_alignment(data):
    """Byte offset (0..3) at which data is a run of incrementing LE words."""
    for off in range(4):
        usable = (len(data) - off) // 4 * 4
        w = np.frombuffer(data, dtype="<u4", count=usable // 4, offset=off)
        if len(w) > 8 and np.all(np.diff(w) == 1):
            return off
    return None


def main():
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("--no-load", action="store_true",
                    help="do not (re)load the FX2LP firmware")
    ap.add_argument("--mb", type=float, default=64,
                    help="megabytes to verify (default 64)")
    ap.add_argument("--seconds", type=float, default=3,
                    help="length of the throughput measurement (default 3)")
    ap.add_argument("--dump", metavar="FILE",
                    help="write the verified data to FILE")
    args = ap.parse_args()

    dev = Fx2()
    try:
        print(f"opened {VID_PID} instance {dev.instance}")
        if dev.instance.upper() == "CYPRESS_FX2":
            raise SystemExit("the FX2LP is running the logic analyzer firmware; "
                             "unplug and replug it, then run this again")
        speed = dev.speed()
        print("USB speed:", {1: "full/low speed", 3: "HIGH SPEED"}.get(speed, speed))

        if not args.no_load:
            code = build_firmware()
            dev.load_firmware(code)
            print(f"firmware loaded ({len(code)} bytes)")
            time.sleep(0.2)

        mps = dev.select_bulk_alt()
        print(f"EP6 IN max packet size: {mps}")
        dev.set_timeout(1000)

        chunk = 512 * 512                       # 256 KiB, whole packets
        buf = (C.c_ubyte * chunk)()

        # Discard whatever was buffered before the stream settled.
        n = 0
        for _ in range(4):
            n = dev.read(buf)
        if n == 0:
            print("\nNO DATA on EP6. The FX2LP is configured, but nothing is "
                  "being written into its FIFO.\nCheck: FPGA programmed, IFCLK "
                  "and SLWR wires, PA5=3.3V / PA4=GND, common GND.")
            return 2

        first = bytes(buf[:n])
        print("first bytes:", first[:32].hex(" "))
        off = find_alignment(first[:4096])
        if off is None:
            print("\nDATA ARRIVES but is not the expected incrementing counter."
                  "\nThis usually means a wrong or loose FD wire. Per-bit "
                  "activity over the first chunk:")
            a = np.frombuffer(first, dtype=np.uint8)
            for bit in range(8):
                ones = int(np.count_nonzero(a & (1 << bit)))
                print(f"  FD{bit}: {100 * ones / len(a):5.1f}% high")
            return 3
        print(f"counter found, byte alignment offset {off}")

        # Verify: every 32-bit word must be the previous one plus 1.
        out = open(args.dump, "wb") if args.dump else None
        target = int(args.mb * 1e6)
        carry = first[off:]
        carry = carry[len(carry) // 4 * 4:]
        w0 = np.frombuffer(first, dtype="<u4",
                           count=(len(first) - off) // 4, offset=off)
        expect = (int(w0[-1]) + 1) & 0xFFFFFFFF
        total = errors = 0
        t0 = time.perf_counter()
        while total < target:
            n = dev.read(buf)
            if n == 0:
                print("timeout while verifying")
                return 2
            data = carry + bytes(buf[:n])
            usable = len(data) // 4 * 4
            w = np.frombuffer(data, dtype="<u4", count=usable // 4)
            carry = data[usable:]
            ref = (np.arange(len(w), dtype=np.uint64) + expect).astype(np.uint32)
            bad = np.nonzero(w != ref)[0]
            if len(bad):
                errors += 1
                i = int(bad[0])
                if errors <= 5:
                    print(f"  mismatch at byte {total + 4 * i}: got "
                          f"0x{int(w[i]):08X}, expected 0x{int(ref[i]):08X}")
            expect = (int(w[-1]) + 1) & 0xFFFFFFFF
            total += usable
            if out:
                out.write(data[:usable])
        dt = time.perf_counter() - t0
        if out:
            out.close()
        print(f"verified {total / 1e6:.1f} MB in {dt:.2f} s "
              f"({total / dt / 1e6:.1f} MB/s while checking): "
              + ("NO ERRORS" if errors == 0 else f"{errors} chunks with errors"))

        # Throughput without the checking overhead.
        total = 0
        t0 = time.perf_counter()
        while time.perf_counter() - t0 < args.seconds:
            total += dev.read(buf)
        dt = time.perf_counter() - t0
        print(f"throughput: {total / dt / 1e6:.1f} MB/s "
              f"({total * 8 / dt / 1e6:.0f} Mbit/s)")
        return 0 if errors == 0 else 1
    finally:
        dev.close()


if __name__ == "__main__":
    sys.exit(main())
