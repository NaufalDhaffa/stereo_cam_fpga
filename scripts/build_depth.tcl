# Build the stereo depth design (rtl/depth_top.v) for EBAZ4205 (XC7Z010CLG400-1).
#   vivado -mode batch -source scripts/build_depth.tcl
#
# Needs build/golden from "python -m stereo.golden <recording> <pair>": the
# rectification tables and matcher constants of the calibration in use are
# built into the bitstream. Result: build/depth/cam_usb_top.bit and
# build/depth/ps7_init.tcl (same names as the capture-only build in build/,
# so scripts/cam.tcl can load either: set CAM_BUILD=build/depth).
#
# No ILA and no debug hub in this build. The PS is as in build.tcl, plus
# FCLK1 at 62.5 MHz (a CIF line at 24 or 30 fps is 99.2 us; a row takes 4754 clocks = 76 us) and four more EMIO GPIO bits.

set root [file normalize [file join [file dirname [info script]] ..]]
# DEPTH_VARIANT=mini builds the proof of concept of the chained matcher mini instead
# (200 x 148, tables from build/golden_minisys, processing clock 25 MHz, result in build/mini).
set variant [expr {[info exists ::env(DEPTH_VARIANT)] ? $::env(DEPTH_VARIANT) : "depth"}]
if {$variant eq "mini"} {
  set out  [file join $root build mini]
  set gold [file join $root build golden_minisys]
  set fclk1 25
} else {
  set out  [file join $root build depth]
  set gold [file join $root build golden]
  set fclk1 62.5
}
set proj [file join $out vivado]
puts "INFO: variant $variant, tables from $gold, processing clock $fclk1 MHz"
file mkdir $out

create_project depth $proj -part xc7z010clg400-1 -force
set_property target_language Verilog [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY XPM_FIFO} [current_project]

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
  CONFIG.PCW_GPIO_EMIO_GPIO_WIDTH          {64} \
  CONFIG.PCW_ENET0_PERIPHERAL_ENABLE       {1} \
  CONFIG.PCW_ENET0_ENET0_IO                {EMIO} \
  CONFIG.PCW_ENET0_GRP_MDIO_ENABLE         {1} \
  CONFIG.PCW_ENET0_GRP_MDIO_IO             {EMIO} \
  CONFIG.PCW_ENET0_PERIPHERAL_FREQMHZ      {100 Mbps} \
  CONFIG.PCW_UIPARAM_DDR_PARTNO            {MT41K128M16 JT-125} \
  CONFIG.PCW_UIPARAM_DDR_BUS_WIDTH         {16 Bit} \
  CONFIG.PCW_UIPARAM_DDR_ECC               {Disabled} \
  CONFIG.PCW_UIPARAM_ACT_DDR_FREQ_MHZ      {533.333374} \
  CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ      {200} \
  CONFIG.PCW_EN_CLK1_PORT                  {1} \
  CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ      $fclk1 \
] $ps7

create_bd_port -dir O -type clk fclk0
connect_bd_net [get_bd_pins ps7_0/FCLK_CLK0] [get_bd_ports fclk0]
create_bd_port -dir O -type clk fclk1
connect_bd_net [get_bd_pins ps7_0/FCLK_CLK1] [get_bd_ports fclk1]

set gw [expr {[get_property LEFT [get_bd_pins ps7_0/GPIO_O]] + 1}]
puts "INFO: ps7_0/GPIO_O is $gw bits wide"
create_bd_port -dir O -from 23 -to 0 gpio_o
if {$gw == 24} {
  connect_bd_net [get_bd_pins ps7_0/GPIO_O] [get_bd_ports gpio_o]
} else {
  create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice gpio_slice
  set_property -dict [list CONFIG.DIN_WIDTH $gw CONFIG.DIN_FROM {23} CONFIG.DIN_TO {0} CONFIG.DOUT_WIDTH {24}] \
    [get_bd_cells gpio_slice]
  connect_bd_net [get_bd_pins ps7_0/GPIO_O] [get_bd_pins gpio_slice/Din]
  connect_bd_net [get_bd_pins gpio_slice/Dout] [get_bd_ports gpio_o]
}

# EMIO GPIO inputs: the PL's status for a program on the PS (genlock phase, see depth_top.v)
create_bd_port -dir I -from 63 -to 0 gpio_i
connect_bd_net [get_bd_ports gpio_i] [get_bd_pins ps7_0/GPIO_I]

# Ethernet: the PS MAC through EMIO as 4-bit MII to the IP101GA, MDIO as well
# (pins and structure from the EBAZ4205 reference design, hw/scripts/build_bd.tcl).
create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant xlconst_rxd_hi
set_property -dict [list CONFIG.CONST_WIDTH {4} CONFIG.CONST_VAL {0}] [get_bd_cells xlconst_rxd_hi]
create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat xlconcat_rxd
set_property -dict [list CONFIG.NUM_PORTS {2} CONFIG.IN0_WIDTH {4} CONFIG.IN1_WIDTH {4}] [get_bd_cells xlconcat_rxd]
create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice xlslice_txd
set_property -dict [list CONFIG.DIN_WIDTH {8} CONFIG.DIN_FROM {3} CONFIG.DIN_TO {0} CONFIG.DOUT_WIDTH {4}] [get_bd_cells xlslice_txd]
create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant xlconst_eth_misc
set_property -dict [list CONFIG.CONST_WIDTH {1} CONFIG.CONST_VAL {0}] [get_bd_cells xlconst_eth_misc]
create_bd_port -dir I eth_rx_clk
create_bd_port -dir I -from 3 -to 0 eth_rxd
create_bd_port -dir I eth_rx_dv
create_bd_port -dir I eth_tx_clk
create_bd_port -dir O eth_tx_en
create_bd_port -dir O -from 3 -to 0 eth_txd
connect_bd_net [get_bd_ports eth_rx_clk]          [get_bd_pins ps7_0/ENET0_GMII_RX_CLK]
connect_bd_net [get_bd_ports eth_rxd]             [get_bd_pins xlconcat_rxd/In0]
connect_bd_net [get_bd_pins xlconst_rxd_hi/dout]  [get_bd_pins xlconcat_rxd/In1]
connect_bd_net [get_bd_pins xlconcat_rxd/dout]    [get_bd_pins ps7_0/ENET0_GMII_RXD]
connect_bd_net [get_bd_ports eth_rx_dv]           [get_bd_pins ps7_0/ENET0_GMII_RX_DV]
connect_bd_net [get_bd_ports eth_tx_clk]          [get_bd_pins ps7_0/ENET0_GMII_TX_CLK]
connect_bd_net [get_bd_ports eth_tx_en]           [get_bd_pins ps7_0/ENET0_GMII_TX_EN]
connect_bd_net [get_bd_pins ps7_0/ENET0_GMII_TXD] [get_bd_pins xlslice_txd/Din]
connect_bd_net [get_bd_pins xlslice_txd/Dout]     [get_bd_ports eth_txd]
connect_bd_net [get_bd_pins xlconst_eth_misc/dout] [list \
  [get_bd_pins ps7_0/ENET0_GMII_COL] [get_bd_pins ps7_0/ENET0_GMII_CRS] [get_bd_pins ps7_0/ENET0_GMII_RX_ER]]
set mdio_pin {}
foreach ip [get_bd_intf_pins -of_objects [get_bd_cells ps7_0]] {
  if {[string match "*MDIO_ETHERNET_0" $ip]} { set mdio_pin $ip }
}
if {$mdio_pin eq {}} { error "MDIO_ETHERNET_0 interface pin not found on ps7_0" }
make_bd_intf_pins_external $mdio_pin
foreach p [get_bd_intf_ports] {
  if {[string match "*MDIO_ETHERNET_0*" $p]} { set_property name eth_mdio $p }
}

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
add_files -norecurse [file join $proj depth.gen sources_1 bd system hdl system_wrapper.v]

# RTL: everything except the capture-only top and the testbenches
foreach f [concat [glob [file join $root rtl *.v]] [glob [file join $root rtl mini *.v]]] {
  if {[file tail $f] ne "cam_usb_top.v"} { add_files -norecurse $f }
}
# tables and constants of the calibration in use
foreach f {rect_cfg.vh match_cfg.vh} {
  add_files -norecurse [file join $gold $f]
  set_property file_type {Verilog Header} [get_files $f]
  set_property is_global_include true [get_files $f]
}
foreach f {cam0_nodes.hex cam1_nodes.hex cam0_need.hex cam1_need.hex} {
  add_files -norecurse [file join $gold $f]
  set_property file_type {Memory Initialization Files} [get_files $f]
}
set_property include_dirs $gold [current_fileset]
set_property top depth_top [current_fileset]

add_files -fileset constrs_1 -norecurse [file join $root constraints cam_usb.xdc]
add_files -fileset constrs_1 -norecurse [file join $root constraints cam2_data3.xdc]
add_files -fileset constrs_1 -norecurse [file join $root constraints ethernet.xdc]
add_files -fileset constrs_1 -norecurse [file join $root constraints depth.xdc]
set_property PROCESSING_ORDER LATE [get_files cam_usb.xdc]
set_property PROCESSING_ORDER LATE [get_files depth.xdc]
update_compile_order -fileset sources_1

launch_runs synth_1 -jobs 4
wait_on_run synth_1
if {[get_property PROGRESS [get_runs synth_1]] != "100%"} { error "synthesis failed" }
open_run synth_1
report_utilization -file [file join $out utilization_synth.rpt]
report_utilization -hierarchical -file [file join $out utilization_synth_hier.rpt]
close_design

launch_runs impl_1 -to_step write_bitstream -jobs 4
wait_on_run impl_1
if {[get_property PROGRESS [get_runs impl_1]] != "100%"} { error "implementation failed" }

open_run impl_1
puts "TIMING: WNS=[get_property SLACK [get_timing_paths -setup]] WHS=[get_property SLACK [get_timing_paths -hold]]"
report_timing_summary -file [file join $out timing.rpt]
report_utilization    -file [file join $out utilization.rpt]
report_utilization -hierarchical -file [file join $out utilization_hier.rpt]

set rundir [file join $proj depth.runs impl_1]
file copy -force [file join $rundir depth_top.bit] [file join $out cam_usb_top.bit]
file copy -force [lindex [glob [file join $proj depth.gen sources_1 bd system ip * ps7_init.tcl]] 0] \
                 [file join $out ps7_init.tcl]
# for Linux on the board: the hardware description, and the bitstream in the form the
# kernel's FPGA manager loads (cam_usb_top.bit.bin)
write_hw_platform -fixed -force -include_bit -file [file join $out stereo.xsa]
set bif [open [file join $out bitstream.bif] w]
puts $bif "all:\n{\n  [file join $out cam_usb_top.bit]\n}"
close $bif
if {[catch {exec bootgen -image [file join $out bitstream.bif] -arch zynq -process_bitstream bin -w on} msg]} {
  puts "WARNING: bootgen: $msg"
}
puts "BUILD_OK"
