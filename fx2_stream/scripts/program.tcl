# Load the bitstream into the PL over JTAG (volatile, nothing is written to flash).
#   vivado -mode batch -source scripts/program.tcl

set root [file normalize [file join [file dirname [info script]] ..]]
set bit  [file join $root build fx2_stream_test.bit]

open_hw_manager
connect_hw_server
puts "TARGETS: [get_hw_targets]"
open_hw_target
puts "DEVICES: [get_hw_devices]"

set dev [lindex [get_hw_devices xc7z010*] 0]
if {$dev eq ""} { error "xc7z010 not found on the JTAG chain" }
current_hw_device $dev
set_property PROGRAM.FILE $bit $dev
program_hw_devices $dev
refresh_hw_device $dev
puts "DONE_PIN: [get_property REGISTER.CONFIG_STATUS.BIT14_DONE_PIN $dev]"

close_hw_target
disconnect_hw_server
puts "PROGRAM_OK"
