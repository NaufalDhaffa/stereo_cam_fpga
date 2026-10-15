#!/bin/bash
# asic/chip/flow.py inside WSL, output kept short
python3 /mnt/d/stereo-depth-cam/asic/chip/flow.py "$@" 2>&1 | grep -v "^\s*$" | tail -60
