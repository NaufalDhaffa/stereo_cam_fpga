#!/bin/bash
# Harden 4x2, then the template's tests (RTL, gate level) and Tiny Tapeout's precheck.
B=/mnt/d/stereo-depth-cam/asic
rm -rf ~/ic/tt_4x2/runs ~/ic/tt_sub ~/ic/tt_test
bash $B/wsl_ttrun.sh 4x2 | grep -a "tiles\|cells\|TT_DONE\|rror"
bash $B/wsl_tttest.sh | tail -1
bash $B/wsl_tttest.sh gl | tail -1
bash $B/wsl_precheck.sh | tail -2
