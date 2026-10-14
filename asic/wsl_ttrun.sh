#!/bin/bash
cd /mnt/d/stereo-depth-cam/asic
python3 tt.py "$@" 2>&1 | tail -60
