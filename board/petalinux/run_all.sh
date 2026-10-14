#!/bin/bash
# Whole PetaLinux flow with its output in build/petalinux.log of the Windows project.
LOG=/mnt/d/stereo-depth-cam/build/petalinux.log
bash /mnt/d/stereo-depth-cam/board/petalinux/setup.sh "${1:-all}" > "$LOG" 2>&1
echo "EXIT=$?" >> "$LOG"
tail -n 5 "$LOG"
