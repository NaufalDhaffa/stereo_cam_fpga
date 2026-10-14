#!/bin/sh
# Change the bitstream of the running board (over ssh), without touching BOOT.BIN.
#
#   fpga.sh try  <file.bit.bin> [fclk1 MHz]   load it now; the next boot is as before
#   fpga.sh save <file.bit.bin> [fclk1 MHz]   load it now and at every boot from now on
#   fpga.sh factory                           forget the saved one: BOOT.BIN's bitstream again (after a reboot)
#   fpga.sh status                            what is loaded, sensors, genlock
#
# The Ethernet goes through the PL: the link drops for a second while a
# bitstream loads, and a bitstream without the Ethernet pins cuts the board
# off until the next power cycle ("try" is therefore the safe way to test).
D="$(cd "$(dirname "$0")" && pwd)"
LOG=/tmp/stereo_cam.log

# (the image's busybox has no pkill)
stop_cam()  { for p in $(ps | grep "[s]tereo_cam.py" | awk '{print $1}'); do kill "$p" 2>/dev/null; done; sleep 0.3; }
start_cam() { (python3 "$D/stereo_cam.py" >> "$LOG" 2>&1 &); }
load() {
    f="$1"; mhz="$2"
    [ -f "$f" ] || { echo "no such file: $f"; exit 1; }
    stop_cam
    [ -n "$mhz" ] && python3 "$D/stereo_cam.py" fclk1 "$mhz"
    mkdir -p /lib/firmware
    cp "$f" /lib/firmware/stereo.bit.bin
    echo 0 > /sys/class/fpga_manager/fpga0/flags
    echo stereo.bit.bin > /sys/class/fpga_manager/fpga0/firmware
    echo "FPGA: $(cat /sys/class/fpga_manager/fpga0/state)"
    echo "$(basename "$f") ${mhz}" > /tmp/stereo_bitstream
    start_cam
}
case "$1" in
    try)  load "$2" "$3" ;;
    save) load "$2" "$3"
          mkdir -p "$D/bitstream"
          [ "$(readlink -f "$2")" = "$D/bitstream/default.bit.bin" ] || cp "$2" "$D/bitstream/default.bit.bin"
          echo "$3" > "$D/bitstream/default.fclk1"; sync
          echo "saved as the bitstream loaded at boot" ;;
    boot) load "$D/bitstream/default.bit.bin" "$(cat "$D/bitstream/default.fclk1" 2>/dev/null)" ;;
    start) start_cam ;;
    factory) rm -f "$D/bitstream/default.bit.bin" "$D/bitstream/default.fclk1"; sync
          echo "the next boot uses BOOT.BIN's bitstream" ;;
    status) echo "bitstream: $(cat /tmp/stereo_bitstream 2>/dev/null || echo 'from BOOT.BIN')"
          echo "FPGA: $(cat /sys/class/fpga_manager/fpga0/state)"
          python3 "$D/stereo_cam.py" status; tail -n 5 "$LOG" 2>/dev/null ;;
    *) sed -n '2,11p' "$0" ;;
esac
