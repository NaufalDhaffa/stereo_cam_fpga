#!/bin/bash
# The template's cocotb test, RTL and (with "gl") gate level, in a private Python environment.
set -e
[ -d ~/ic/venv ] || python3 -m venv ~/ic/venv
. ~/ic/venv/bin/activate
python -c "import cocotb" 2>/dev/null || pip install -q -r /mnt/d/stereo-depth-cam/asic/tt/test/requirements.txt
rm -rf ~/ic/tt_test && mkdir -p ~/ic/tt_test && cp -r /mnt/d/stereo-depth-cam/asic/tt/src /mnt/d/stereo-depth-cam/asic/tt/test ~/ic/tt_test/
cd ~/ic/tt_test/test
if [ "$1" = "gl" ]; then
    cp ~/ic/tt_4x2/runs/top/final/pnl/*.pnl.v gate_level_netlist.v
    export PDK_ROOT=$(dirname $(ls -d ~/.volare/volare/sky130/versions/*/sky130A | head -1))
    make -s GATES=yes 2>&1 | tail -15
else
    make -s 2>&1 | tail -15
fi
python -m cocotb_tools.check_results results.xml && echo "TEST_OK $1"
