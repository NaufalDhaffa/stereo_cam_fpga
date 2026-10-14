#!/bin/bash
# Tiny Tapeout's own precheck (tt-support-tools/precheck) on the hardened 4x2 design.
TOP=tt_um_stereo_slice
FIN=~/ic/tt_4x2/runs/top/final
. ~/ic/venv/bin/activate
python -c "import gdstk, klayout, yowasp_yosys" 2>/dev/null || pip install -q gdstk klayout pyyaml numpy yowasp-yosys 2>&1 | tail -2
export PATH=$(ls -d /nix/store/*-magic-vlsi/bin | head -1):$(dirname $(ls /nix/store/*klayout*/bin/klayout | head -1)):$PATH
export PDK_ROOT=$(dirname $(ls -d ~/.volare/volare/sky130/versions/*/sky130A | head -1)) PDK=sky130A
S=~/ic/tt_sub; rm -rf $S; mkdir -p $S/tt_submission
cp /mnt/d/stereo-depth-cam/asic/tt/info.yaml $S/
cp $FIN/gds/$TOP.gds $S/tt_submission/
cp $FIN/lef/$TOP.lef $S/tt_submission/
cp $FIN/pnl/$TOP.pnl.v $S/tt_submission/$TOP.v
cd ~/ic/tt_ref/tt-support-tools/precheck
python precheck.py --gds $S/tt_submission/$TOP.gds --tech sky130A 2>&1 | grep -v "^$" | tail -45
echo "PRECHECK_EXIT=${PIPESTATUS[0]}"
mkdir -p /mnt/d/stereo-depth-cam/asic/out_tt_4x2/precheck && cp -r reports/* /mnt/d/stereo-depth-cam/asic/out_tt_4x2/precheck/ 2>/dev/null
