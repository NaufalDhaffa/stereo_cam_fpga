#!/bin/bash
# Compiles the FX2LP webcam firmware with SDCC (inside WSL):
#   bash build.sh            uvc.ihx      the real thing
#   bash build.sh 90         uvc_dev.ihx  test build: back to the built-in loader after 90 seconds
cd "$(dirname "$0")"
out=uvc; def=""
if [ -n "$1" ]; then out=uvc_dev; def="-DDEV_SECONDS=$1"; fi
mkdir -p obj
sdcc -mmcs51 --std-c99 --xram-loc 0x3000 --xram-size 0x0800 $def -o obj/$out.ihx uvc.c || exit 1
cp obj/$out.ihx $out.ihx
grep -E "^(CSEG|HOME|GSINIT|GSFINAL|CONST|XSEG|DSEG) " obj/$out.map 2>/dev/null | head
echo "built $out.ihx"
