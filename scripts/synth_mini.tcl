# Size of one matcher slice (rtl/mini/tt_um_stereo_slice.v), synthesised on its own
# for the FPGA: flip-flop and LUT counts as a first idea of the chip's size.
#   vivado -mode batch -source scripts/synth_mini.tcl
set root [file normalize [file join [file dirname [info script]] ..]]
read_verilog [file join $root rtl mini mini_slice.v] [file join $root rtl mini tt_um_stereo_slice.v]
synth_design -top tt_um_stereo_slice -part xc7z010clg400-1 -mode out_of_context -flatten_hierarchy rebuilt
create_clock -period 100.0 [get_ports clk]
report_utilization -file [file join $root build mini_utilization.rpt]
report_timing -file [file join $root build mini_timing.rpt]
puts "SYNTH_OK"
