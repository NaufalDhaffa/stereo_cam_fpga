# Non-project build of the FX2LP stream test for EBAZ4205 (XC7Z010CLG400-1).
#   vivado -mode batch -source scripts/build.tcl

set root [file normalize [file join [file dirname [info script]] ..]]
set out  [file join $root build]
file mkdir $out

read_verilog [file join $root rtl fx2_stream_test.v]
read_xdc     [file join $root constraints fx2_data2.xdc]

synth_design -top fx2_stream_test -part xc7z010clg400-1
opt_design
place_design
route_design

report_timing_summary -file [file join $out timing.rpt]
report_utilization    -file [file join $out utilization.rpt]
report_io             -file [file join $out io.rpt]

set wns [get_property SLACK [get_timing_paths -setup]]
set whs [get_property SLACK [get_timing_paths -hold]]
puts "TIMING: WNS=$wns WHS=$whs"

write_bitstream -force [file join $out fx2_stream_test.bit]
puts "BUILD_OK: [file join $out fx2_stream_test.bit]"
