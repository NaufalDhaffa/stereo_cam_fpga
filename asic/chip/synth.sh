#!/bin/bash
# Gate-level netlists of the five slice modules for the free-die chip (asic/chip), in WSL:
#
#   bash /mnt/d/stereo-depth-cam/asic/chip/synth.sh
#
# Same synthesis as OpenLane's (yosys, abc, sky130_fd_sc_hd), plus `clockgate`: flip-flops that
# share an enable get one integrated clock gate (sky130_fd_sc_hd__dlclkp_1) instead of a
# multiplexer each. The function does not change; the area does (asic/area). The modules are
# renamed slice_<name>. Output: ~/ic/chip/net/slice_<name>.v and asic/chip/out/synth_area.txt.
set -e
WIN=/mnt/d/stereo-depth-cam
NET=~/ic/chip/net
mkdir -p $NET $WIN/asic/chip/out
Y=$(ls -d /nix/store/*-yosys | head -1)/bin/yosys
LIB=$(ls ~/.volare/volare/sky130/versions/*/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib | head -1)
: > $WIN/asic/chip/out/synth_area.txt
for b in ctrl cost path pick up; do
  sed "s/\bms_$b\b/slice_$b/" $WIN/rtl/mini/ms_$b.v > $NET/src_$b.v
  $Y -q -l $NET/slice_$b.log -p "
    read_liberty -lib $LIB
    read_verilog $NET/src_$b.v
    synth -flatten -top slice_$b
    clockgate -pos sky130_fd_sc_hd__dlclkp_1 GATE:CLK:GCLK -min_net_size 4
    dfflibmap -liberty $LIB
    abc -liberty $LIB
    setundef -zero
    hilomap -singleton -hicell sky130_fd_sc_hd__conb_1 HI -locell sky130_fd_sc_hd__conb_1 LO
    opt_clean -purge
    insbuf -buf sky130_fd_sc_hd__buf_2 A X
    check -assert
    tee -a $WIN/asic/chip/out/synth_area.txt stat -liberty $LIB
    write_verilog -noattr -noexpr -nohex -nodec $NET/slice_$b.v"
  printf "slice_%-5s %s\n" $b "$(grep 'Chip area' $NET/slice_$b.log | tail -1 | awk '{print $NF}')"
done
