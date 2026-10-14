# Capture one ILA window from the command line and save it as CSV.
#
#   vivado -mode batch -source scripts/ila_grab.tcl -tclargs <ila> <csv> ?mode?
#
#   <ila>   u_ila_pins | u_ila_cap | u_ila_fx2
#   mode    now    capture immediately (default)
#           sccb   u_ila_pins only: 1 MHz sampling, trigger on SIOC falling
#           vsync  trigger on the rising edge of VSYNC
#           trig:<probe>:<compare>[:<position>]  e.g. trig:*fx2_hold*:eq1'bR:1000
#
# The PS must be initialised first (scripts/cam.tcl init), otherwise FCLK0
# and with it the debug hub are not running.

set root [file normalize [file join [file dirname [info script]] ..]]
lassign $argv ila_name csv mode
if {$mode eq ""} { set mode now }

open_hw_manager
connect_hw_server
open_hw_target
set dev [lindex [get_hw_devices xc7z010*] 0]
current_hw_device $dev
set_property PROBES.FILE      [file join $root build cam_usb_top.ltx] $dev
set_property FULL_PROBES.FILE [file join $root build cam_usb_top.ltx] $dev
refresh_hw_device $dev

set ila [get_hw_ilas -filter "CELL_NAME == $ila_name"]
if {$ila eq ""} { error "ILA $ila_name not found; found: [get_property CELL_NAME [get_hw_ilas]]" }
puts "PROBES: [get_property NAME [get_hw_probes -of_objects $ila]]"

proc probe {ila pattern} {
  set p [get_hw_probes -of_objects $ila -filter "NAME =~ \"$pattern\""]
  if {[llength $p] != 1} { error "probe $pattern matched: $p" }
  return $p
}

set_property CONTROL.TRIGGER_POSITION 100 $ila
switch $mode {
  now {
    run_hw_ila $ila -trigger_now
  }
  slow {
    # u_ila_pins only: 1 MHz sampling (8 ms window), captured immediately
    set_property CONTROL.CAPTURE_MODE BASIC $ila
    set_property CAPTURE_COMPARE_VALUE eq1'b1 [probe $ila *us_tick*]
    run_hw_ila $ila -trigger_now
  }
  sccb {
    set_property CONTROL.CAPTURE_MODE BASIC $ila
    set_property CAPTURE_COMPARE_VALUE eq1'b1 [probe $ila *us_tick*]
    set_property TRIGGER_COMPARE_VALUE eq1'bF [probe $ila *pin_cam_sioc*]
    run_hw_ila $ila
  }
  vsync {
    set_property TRIGGER_COMPARE_VALUE eq1'bR [probe $ila *pin_cam_vsync*]
    run_hw_ila $ila
  }
  default {
    # trig:<probe>:<compare>[:<position>], e.g. trig:*fx2_hold*:eq1'bR:1000
    lassign [split $mode :] kind pname cmp pos
    if {$kind ne "trig"} { error "unknown mode $mode" }
    if {$pos ne ""} { set_property CONTROL.TRIGGER_POSITION $pos $ila }
    set_property TRIGGER_COMPARE_VALUE $cmp [probe $ila $pname]
    run_hw_ila $ila
  }
}
puts "ILA_ARMED"
wait_on_hw_ila -timeout 1 $ila
write_hw_ila_data -force -csv_file $csv [upload_hw_ila_data $ila]
puts "ILA_SAVED $csv"
close_hw_target
disconnect_hw_server
