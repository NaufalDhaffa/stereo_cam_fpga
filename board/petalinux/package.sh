#!/bin/bash
# After petalinux-build: BOOT.BIN with the project's current bitstream, and the SD card
# files collected in build/sdcard of the Windows project.
WIN=/mnt/d/stereo-depth-cam
PROJ=~/petalinux/projects/ebaz_stereo
set --
source ~/petalinux/2025.2/settings.sh >/dev/null 2>&1
set -e
cd "$PROJ"
petalinux-package boot --force --fsbl images/linux/zynq_fsbl.elf --fpga "$WIN/build/mini/cam_usb_top.bit" --u-boot
out="$WIN/build/sdcard"
mkdir -p "$out/stereo/bitstream"
cp images/linux/BOOT.BIN images/linux/boot.scr images/linux/image.ub "$out/"
python3 "$WIN/board/petalinux/bootscr.py" "$out/boot.scr"       # image.ub below 256 MB
cp "$WIN"/board/{stereo_cam.py,stereo.conf,network.conf,autorun.sh,fpga.sh} "$out/stereo/"
cp "$WIN/sensor/ov2640_tables.tcl" "$out/stereo/"
ls -la "$out" "$out/stereo"
echo "SDCARD_OK"
