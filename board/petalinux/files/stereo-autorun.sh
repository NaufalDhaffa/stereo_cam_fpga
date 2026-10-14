#!/bin/sh
# Mount the SD card's first partition and hand over to stereo/autorun.sh on it,
# so that everything about the cameras can be changed without rebuilding the image.
mkdir -p /mnt/sd
i=0
while [ ! -b /dev/mmcblk0p1 ] && [ $i -lt 20 ]; do sleep 0.5; i=$((i + 1)); done
mountpoint -q /mnt/sd || mount /dev/mmcblk0p1 /mnt/sd
[ -f /mnt/sd/stereo/autorun.sh ] && exec sh /mnt/sd/stereo/autorun.sh
echo "stereo-autorun: no stereo/autorun.sh on the SD card"
