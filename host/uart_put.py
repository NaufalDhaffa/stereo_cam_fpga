"""Copy files to the board over its serial console (for when the network is not there yet).

    python uart_put.py [--port COM3] local remote [local remote ...]

Sends each file as base64 through a here-document into python3 on the board and prints the md5 sums of both ends.
The console must be at a root shell prompt.
"""
import base64
import hashlib
import sys
import time

import serial


def main():
    args = sys.argv[1:]
    port = "COM3"
    if args[:1] == ["--port"]:
        port, args = args[1], args[2:]
    s = serial.Serial(port, 115200, timeout=0.2)

    def cmd(line, wait=0.05):
        s.write(line.encode() + b"\r")
        time.sleep(wait)
        return s.read(65536)

    cmd("stty -echo", 0.5)
    for local, remote in zip(args[0::2], args[1::2]):
        data = open(local, "rb").read()
        b64 = base64.b64encode(data).decode()
        tmp = "/tmp/uart_put.tmp"            # the target is replaced only by a complete copy
        cmd(f"python3 -c \"import sys,base64;open('{tmp}','wb').write(base64.b64decode(sys.stdin.read()))\" << 'E_O_F'")
        for i in range(0, len(b64), 76):
            cmd(b64[i:i + 76], 0.012)
        cmd("E_O_F", 1.5)
        ok = hashlib.md5(data).hexdigest() in cmd(f"md5sum {tmp}", 1.0).decode("utf-8", "replace")
        out = cmd(f"cp {tmp} {remote}; md5sum {remote}", 1.0).decode("utf-8", "replace") if ok else "transfer damaged, target left alone"
        print(f"{local} -> {remote}: {len(data)} bytes, {'same' if ok else 'DIFFERENT: ' + out.strip()[-80:]}")
    cmd("stty echo; sync", 0.5)
    s.close()
    return 0


if __name__ == "__main__":
    sys.exit(main())
