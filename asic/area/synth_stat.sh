#!/bin/bash
# Area of each slice module after synthesis to sky130_fd_sc_hd, by kind of cell, for several
# synthesis recipes. In WSL:
#
#   bash /mnt/d/stereo-depth-cam/asic/area/synth_stat.sh [recipe ...] [rtl=<folder>]
#
#   base   synth + abc as OpenLane does it by default
#   cg     base, then clockgate: flip-flops that share an enable get one integrated clock gate
#          (sky130_fd_sc_hd__dlclkp_1) instead of a multiplexer each
#
# Reports go to asic/area/<recipe>/<module>.stat; asic/area/breakdown.py <recipe> sums them up.
SRC=/mnt/d/stereo-depth-cam/rtl/mini
OUT=/mnt/d/stereo-depth-cam/asic/area
RECIPES=()
for a in "$@"; do
  case $a in rtl=*) SRC=${a#rtl=} ;; *) RECIPES+=("$a") ;; esac
done
[ ${#RECIPES[@]} -eq 0 ] && RECIPES=(base cg)
Y=$(ls -d /nix/store/*-yosys | head -1)/bin/yosys
LIB=$(ls ~/.volare/volare/sky130/versions/*/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib | head -1)
# area of every cell of the library, for breakdown.py
awk '/^ *cell *\(/{n=$0; sub(/.*cell *\( *"?/,"",n); sub(/"? *\).*/,"",n)} /^ *area *:/{a=$3; sub(/;/,"",a); if(n!=""){print n, a; n=""}}' $LIB > $OUT/cell_area.txt
CG="clockgate -pos sky130_fd_sc_hd__dlclkp_1 GATE:CLK:GCLK -min_net_size 4"
for r in "${RECIPES[@]}"; do
  mkdir -p $OUT/$r
  for m in ms_ctrl ms_cost ms_path ms_pick ms_up; do
    case $r in
      base) FLOW="synth -flatten -top $m; dfflibmap -liberty $LIB; abc -liberty $LIB" ;;
      cg)   FLOW="synth -flatten -top $m; $CG; dfflibmap -liberty $LIB; abc -liberty $LIB" ;;
    esac
    $Y -q -p "read_verilog $SRC/$m.v; $FLOW; opt_clean; tee -o $OUT/$r/$m.stat stat -liberty $LIB" >$OUT/$r/$m.log 2>&1 \
      || { echo "$r $m failed:"; tail -3 $OUT/$r/$m.log; }
  done
  echo "recipe $r done"
done
