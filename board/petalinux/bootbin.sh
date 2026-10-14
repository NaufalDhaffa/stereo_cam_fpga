#!/bin/bash
# BOOT.BIN for the board with the bitstream of one of the Vivado projects (run in WSL):
#
#   bash /mnt/d/stereo-depth-cam/board/petalinux/bootbin.sh 1 2
#
# writes build/bootbin/BOOT_1slice.BIN and BOOT_2slices.BIN. First-stage boot loader and
# U-Boot are the ones of the PetaLinux project (the ones on the SD card now); only the
# bitstream differs. On the card the file must be named BOOT.BIN.
WIN=/mnt/d/stereo-depth-cam
PROJ=~/petalinux/projects/ebaz_stereo
ARGS="$*"
set --
source ~/petalinux/2025.2/settings.sh >/dev/null 2>&1
set -e
cd "$PROJ"
mkdir -p "$WIN/build/bootbin"
for n in $ARGS; do
    bit="$WIN/hw/export/stereo_${n}slice/stereo_${n}slice.bit"
    [ -f "$bit" ] || { echo "no bitstream $bit"; exit 1; }
    name=BOOT_${n}slice.BIN
    if [ "$n" -gt 1 ]; then name=BOOT_${n}slices.BIN; fi
    petalinux-package boot --force --fsbl images/linux/zynq_fsbl.elf --fpga "$bit" --u-boot -o "$WIN/build/bootbin/$name" 2>&1 | grep -E "ERROR|Successfully" || true
    md5sum "$WIN/build/bootbin/$name" | sed "s#$WIN/##"
done
ls -la "$WIN/build/bootbin"
