# Build the OV2640 -> FX2LP design for EBAZ4205 (XC7Z010CLG400-1).
#   vivado -mode batch -source scripts/build.tcl
#
# PS7 settings follow hw/scripts/build_bd.tcl of the EBAZ4205 repo (DDR,
# UART1, SD0), minus Ethernet, plus I2C0, I2C1 and three GPIOs on EMIO.

set root [file normalize [file join [file dirname [info script]] ..]]
set proj [file join $root build vivado]
set out  [file join $root build]

create_project cam_usb $proj -part xc7z010clg400-1 -force
set_property target_language Verilog [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY XPM_FIFO} [current_project]

# ------------------------------------------------------------ block design
create_bd_design "system"
set ps7 [create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 ps7_0]
apply_bd_automation -rule xilinx.com:bd_rule:processing_system7 \
  -config {make_external "FIXED_IO, DDR" apply_board_preset "0" Master "Disable" Slave "Disable"} \
  $ps7

set_property -dict [list \
  CONFIG.PCW_USE_M_AXI_GP0                 {0} \
  CONFIG.PCW_UART1_PERIPHERAL_ENABLE       {1} \
  CONFIG.PCW_UART1_UART1_IO                {MIO 24 .. 25} \
  CONFIG.PCW_SD0_PERIPHERAL_ENABLE         {1} \
  CONFIG.PCW_SD0_SD0_IO                    {MIO 40 .. 45} \
  CONFIG.PCW_SD0_GRP_CD_ENABLE             {0} \
  CONFIG.PCW_SD0_GRP_POW_ENABLE            {0} \
  CONFIG.PCW_SD0_GRP_WP_ENABLE             {0} \
  CONFIG.PCW_SDIO_PERIPHERAL_FREQMHZ       {100} \
  CONFIG.PCW_I2C0_PERIPHERAL_ENABLE        {1} \
  CONFIG.PCW_I2C0_I2C0_IO                  {EMIO} \
  CONFIG.PCW_I2C1_PERIPHERAL_ENABLE        {1} \
  CONFIG.PCW_I2C1_I2C1_IO                  {EMIO} \
  CONFIG.PCW_GPIO_EMIO_GPIO_ENABLE         {1} \
  CONFIG.PCW_GPIO_EMIO_GPIO_IO             {EMIO} \
  CONFIG.PCW_GPIO_EMIO_GPIO_WIDTH          {20} \
  CONFIG.PCW_UIPARAM_DDR_PARTNO            {MT41K128M16 JT-125} \
  CONFIG.PCW_UIPARAM_DDR_BUS_WIDTH         {16 Bit} \
  CONFIG.PCW_UIPARAM_DDR_ECC               {Disabled} \
  CONFIG.PCW_UIPARAM_ACT_DDR_FREQ_MHZ      {533.333374} \
  CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ      {200} \
] $ps7

create_bd_port -dir O -type clk fclk0
connect_bd_net [get_bd_pins ps7_0/FCLK_CLK0] [get_bd_ports fclk0]

# EMIO GPIO: only the output bits are used.
set gw [expr {[get_property LEFT [get_bd_pins ps7_0/GPIO_O]] + 1}]
puts "INFO: ps7_0/GPIO_O is $gw bits wide"
create_bd_port -dir O -from 19 -to 0 gpio_o
if {$gw == 20} {
  connect_bd_net [get_bd_pins ps7_0/GPIO_O] [get_bd_ports gpio_o]
} else {
  create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice gpio_slice
  set_property -dict [list CONFIG.DIN_WIDTH $gw CONFIG.DIN_FROM {19} CONFIG.DIN_TO {0} CONFIG.DOUT_WIDTH {20}] \
    [get_bd_cells gpio_slice]
  connect_bd_net [get_bd_pins ps7_0/GPIO_O] [get_bd_pins gpio_slice/Din]
  connect_bd_net [get_bd_pins gpio_slice/Dout] [get_bd_ports gpio_o]
}

# I2C0 (camera 0) and I2C1 (camera 1): raw I/O/T pins, so the IOBUFs sit in
# the RTL top where the ILA can see the pad values.
foreach {ctrl prefix} {I2C0 i2c I2C1 i2c1} {
  foreach {pin dir} {SCL_I I SCL_O O SCL_T O SDA_I I SDA_O O SDA_T O} {
    set port ${prefix}_[string tolower $pin]
    create_bd_port -dir $dir $port
    connect_bd_net [get_bd_pins ps7_0/${ctrl}_$pin] [get_bd_ports $port]
  }
}

validate_bd_design
save_bd_design
generate_target all [get_files system.bd]
make_wrapper -files [get_files system.bd] -top
add_files -norecurse [file join $proj cam_usb.gen sources_1 bd system hdl system_wrapper.v]

# --------------------------------------------------------------------- ILAs
proc make_ila {name depth widths {qual 0}} {
  create_ip -name ila -vendor xilinx.com -library ip -module_name $name
  set cfg [list CONFIG.C_NUM_OF_PROBES [llength $widths] CONFIG.C_DATA_DEPTH $depth \
                CONFIG.C_INPUT_PIPE_STAGES {1} CONFIG.C_EN_STRG_QUAL $qual \
                CONFIG.C_ADV_TRIGGER {false} CONFIG.ALL_PROBE_SAME_MU {true} \
                CONFIG.ALL_PROBE_SAME_MU_CNT [expr {$qual ? 2 : 1}]]
  set i 0
  foreach w $widths {
    lappend cfg CONFIG.C_PROBE${i}_WIDTH $w
    incr i
  }
  set_property -dict $cfg [get_ips $name]
  generate_target all [get_ips $name]
}
make_ila ila_pins 8192 {1 1 1 8 1 1 1 1 1} 1
make_ila ila_cap  4096 {8 1 1 1 1 1 1 2 11 12 8 1 1 1 1 1 1 2 1 1 1}
make_ila ila_fx2  4096 {8 1 1 1 1 8 9 1 1}

# -------------------------------------------------------------------- RTL
add_files -norecurse [glob [file join $root rtl *.v]]
set_property top cam_usb_top [current_fileset]
add_files -fileset constrs_1 -norecurse [file join $root constraints cam_usb.xdc]
add_files -fileset constrs_1 -norecurse [file join $root constraints cam2_data3.xdc]
add_files -fileset constrs_1 -norecurse [file join $root constraints debug.xdc]
# clk_fpga_0 is defined by the PS7 IP constraints; read ours after them.
set_property PROCESSING_ORDER LATE [get_files cam_usb.xdc]
set_property USED_IN_SYNTHESIS false [get_files debug.xdc]
update_compile_order -fileset sources_1

launch_runs synth_1 -jobs 4
wait_on_run synth_1
if {[get_property PROGRESS [get_runs synth_1]] != "100%"} { error "synthesis failed" }

launch_runs impl_1 -to_step write_bitstream -jobs 4
wait_on_run impl_1
if {[get_property PROGRESS [get_runs impl_1]] != "100%"} { error "implementation failed" }

open_run impl_1
puts "DBG_HUB_CLK: [get_nets -of_objects [get_pins dbg_hub/clk]]"
puts "TIMING: WNS=[get_property SLACK [get_timing_paths -setup]] WHS=[get_property SLACK [get_timing_paths -hold]]"
report_timing_summary -file [file join $out timing.rpt]
report_utilization    -file [file join $out utilization.rpt]

set rundir [file join $proj cam_usb.runs impl_1]
file copy -force [file join $rundir cam_usb_top.bit] [file join $out cam_usb_top.bit]
write_debug_probes -force [file join $out cam_usb_top.ltx]
file copy -force [lindex [glob [file join $proj cam_usb.gen sources_1 bd system ip * ps7_init.tcl]] 0] \
                 [file join $out ps7_init.tcl]
puts "BUILD_OK"
