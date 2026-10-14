# Vivado project of the stereo depth camera on the EBAZ4205, with the system as a block design.
#
#   vivado -mode batch -source hw/scripts/create_project.tcl -tclargs 2          chain of 2 slices (32 disparities)
#   vivado -mode batch -source hw/scripts/create_project.tcl -tclargs 1          chain of 1 slice  (16 disparities)
#   ... -tclargs 2 nobuild                                                       project and block design only
#
# Makes hw/projects/stereo_<N>slice/stereo_<N>slice.xpr (open it in the Vivado GUI), runs
# synthesis and implementation in the project's own runs, and exports the bitstream and the
# hardware platform (XSA, for Vitis) to hw/export/stereo_<N>slice/.
#
# Block design "system":
#   processing_system7_0   the Zynq PS with the EBAZ4205 board preset (hw/board_files): DDR3, UART1, SD0,
#                          Ethernet through EMIO; plus what the cameras need: I2C0/I2C1 and 64 GPIO through
#                          EMIO, FCLK0 200 MHz (capture), FCLK1 25 MHz (processing)
#   cam_input_0            both OV2640: capture, luma, line buffers
#   rectify_census_0       rectification and census of both pictures
#   chain_hub_0            hub of the matcher chain
#   tapeout_chain/slice_*  the matcher slices: tt_um_stereo_slice, the module taped out (asic/tt)
#   frame_format_0         disparity and left picture as bytes (PC tools' stream or webcam payloads)
#   usb_stream_0           stream mux and the FX2LP Slave FIFO
#   ps_status_0            status for the PS on the EMIO GPIO inputs, LEDs
set slices [expr {[llength $argv] > 0 ? [lindex $argv 0] : 2}]
set build  [expr {[llength $argv] > 1 ? [lindex $argv 1] ne "nobuild" : 1}]
if {$slices < 1 || $slices > 4} { error "slices: 1 to 4" }

set root [file normalize [file join [file dirname [info script]] .. ..]]
set name stereo_${slices}slice
set proj [file join $root hw projects $name]
set cfg  [file join $root cfg slices$slices]
set out  [file join $root hw export $name]
if {![file isdirectory $cfg]} { error "no configuration folder $cfg" }
file mkdir $out

# ---------------------------------------------------------------- project
set_param board.repoPaths [list [file join $root hw board_files]]
create_project $name $proj -part xc7z010clg400-1 -force
set_property board_part_repo_paths [list [file join $root hw board_files]] [current_project]
set_property board_part miner.ebang.com.cn:ebaz4205:part0:1.0 [current_project]
set_property target_language Verilog [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY XPM_FIFO} [current_project]

# design sources: the blocks of the block design and what they are made of
set rtl {}
foreach f {
  blocks/cam_input.v blocks/rectify_census.v blocks/depth_frontend.v blocks/chain_hub.v
  blocks/frame_format.v blocks/usb_stream.v blocks/ps_status.v
  cam_capture.v byte_fifo.v luma_tap.v luma_bin2.v rect_linebuf.v rectify.v census.v mem_1r1w.v
  uvc_lines.v stream_mux.v fx2_writer.v
  mini/mini_hub.v mini/tt_um_stereo_slice.v mini/mini_slice.v
  mini/ms_ctrl.v mini/ms_cost.v mini/ms_path.v mini/ms_pick.v mini/ms_up.v
} { lappend rtl [file join $root rtl $f] }
add_files -norecurse $rtl
# this build's constants (calibration, matcher settings, number of slices) and tables
add_files -norecurse [glob [file join $cfg *.vh] [file join $cfg *.hex]]
set_property file_type {Verilog Header} [get_files *.vh]
set_property file_type {Memory Initialization Files} [get_files *.hex]
set_property include_dirs $cfg [current_fileset]
add_files -fileset constrs_1 -norecurse [list [file join $root hw constraints stereo_cam_pins.xdc]                                                [file join $root hw constraints stereo_cam_timing.xdc]]
set_property used_in_synthesis false [get_files stereo_cam_timing.xdc]
update_compile_order -fileset sources_1

# ---------------------------------------------------------------- block design
create_bd_design "system"

# --- Zynq PS: the board preset, then the camera system's additions
set ps7 [create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0]
apply_bd_automation -rule xilinx.com:bd_rule:processing_system7 \
  -config {make_external "FIXED_IO, DDR" apply_board_preset "1" Master "Disable" Slave "Disable"} $ps7
set_property -dict [list \
  CONFIG.PCW_USE_M_AXI_GP0                 {0} \
  CONFIG.PCW_SD0_GRP_CD_ENABLE             {0} \
  CONFIG.PCW_SD0_GRP_POW_ENABLE            {0} \
  CONFIG.PCW_SD0_GRP_WP_ENABLE             {0} \
  CONFIG.PCW_SDIO_PERIPHERAL_FREQMHZ       {100} \
  CONFIG.PCW_ENET0_GRP_MDIO_IO             {EMIO} \
  CONFIG.PCW_UIPARAM_DDR_ECC               {Disabled} \
  CONFIG.PCW_UIPARAM_ACT_DDR_FREQ_MHZ      {533.333374} \
  CONFIG.PCW_I2C0_PERIPHERAL_ENABLE        {1} \
  CONFIG.PCW_I2C0_I2C0_IO                  {EMIO} \
  CONFIG.PCW_I2C1_PERIPHERAL_ENABLE        {1} \
  CONFIG.PCW_I2C1_I2C1_IO                  {EMIO} \
  CONFIG.PCW_GPIO_EMIO_GPIO_ENABLE         {1} \
  CONFIG.PCW_GPIO_EMIO_GPIO_IO             {EMIO} \
  CONFIG.PCW_GPIO_EMIO_GPIO_WIDTH          {64} \
  CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ      {200} \
  CONFIG.PCW_EN_CLK1_PORT                  {1} \
  CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ      {25} \
] $ps7

# --- the system's blocks (RTL modules)
foreach {cell module} {
  cam_input_0 cam_input   rectify_census_0 rectify_census   chain_hub_0 chain_hub
  frame_format_0 frame_format   usb_stream_0 usb_stream   ps_status_0 ps_status
} { create_bd_cell -type module -reference $module $cell }
create_bd_cell -type hier tapeout_chain
for {set i 0} {$i < $slices} {incr i} {
  create_bd_cell -type module -reference tt_um_stereo_slice tapeout_chain/slice_$i
}

proc net {from args} {
  set pins {}
  foreach p [concat [list $from] $args] { lappend pins [get_bd_pins $p] }
  connect_bd_net {*}$pins
}
proc port {dir name pin {from {}} {to {}}} {
  if {$from eq {}} { create_bd_port -dir $dir $name } else { create_bd_port -dir $dir -from $from -to $to $name }
  connect_bd_net [get_bd_ports $name] [get_bd_pins $pin]
}

# clocks: FCLK0 200 MHz samples the camera pins and feeds the USB side, FCLK1 25 MHz does the processing
set pclk_pins {cam_input_0/pclk rectify_census_0/clk chain_hub_0/clk frame_format_0/clk usb_stream_0/pclk ps_status_0/pclk}
for {set i 0} {$i < $slices} {incr i} { lappend pclk_pins tapeout_chain/slice_$i/clk }
net processing_system7_0/FCLK_CLK0 cam_input_0/clk usb_stream_0/clk
net processing_system7_0/FCLK_CLK1 {*}$pclk_pins

# EMIO GPIO: control from the PS, status back
net processing_system7_0/GPIO_O cam_input_0/gpio_o usb_stream_0/gpio_o ps_status_0/gpio_o
net ps_status_0/gpio_i processing_system7_0/GPIO_I

# resets, released by the PS (capture enable)
net cam_input_0/cap_rst usb_stream_0/cap_rst
net cam_input_0/prst rectify_census_0/rst chain_hub_0/rst frame_format_0/rst usb_stream_0/prst ps_status_0/prst

# cameras -> line buffers -> rectification and census
foreach s {rows_gray0 rows_gray1 sof_toggle0 sof_toggle1 frame_base0 frame_base1 rd_data0 rd_data1} {
  net cam_input_0/$s rectify_census_0/$s
}
net rectify_census_0/rd_addr0 cam_input_0/rd_addr0
net rectify_census_0/rd_addr1 cam_input_0/rd_addr1

# signatures -> hub
foreach s {sig_valid sig_left sig_left_ok sig_right sig_right_ok} { net rectify_census_0/$s chain_hub_0/$s }
net chain_hub_0/sig_ready rectify_census_0/sig_ready

# hub <-> chain of slices: the down-link to all of them, the up-link from chip to chip
set top [expr {$slices - 1}]
for {set i 0} {$i < $slices} {incr i} {
  lappend dl tapeout_chain/slice_$i/ui_in
  lappend rstn tapeout_chain/slice_$i/rst_n
  lappend ena tapeout_chain/slice_$i/ena
  if {$i > 0} { net tapeout_chain/slice_[expr {$i - 1}]/uo_out tapeout_chain/slice_$i/uio_in }
}
net chain_hub_0/dl {*}$dl
net chain_hub_0/slice_rst_n {*}$rstn
net chain_hub_0/slice_ena {*}$ena
net chain_hub_0/chain_bottom tapeout_chain/slice_0/uio_in
net tapeout_chain/slice_$top/uo_out chain_hub_0/ul

# disparity and left picture -> bytes -> USB
foreach s {px_valid px_y px_x px_disp} { net chain_hub_0/$s frame_format_0/$s }
net chain_hub_0/frame_start frame_format_0/hdr_start
foreach s {l_valid l_first l_luma} { net rectify_census_0/$s frame_format_0/$s }
net cam_input_0/start_us1 frame_format_0/start_us
net frame_format_0/out_wr usb_stream_0/d_wr
net frame_format_0/out_byte usb_stream_0/d_byte
net frame_format_0/out_last usb_stream_0/d_last
net usb_stream_0/d_room frame_format_0/out_room
net usb_stream_0/uvc frame_format_0/uvc
foreach s {raw0_dout raw0_count raw1_dout raw1_count} { net cam_input_0/$s usb_stream_0/$s }
net usb_stream_0/raw0_rd cam_input_0/raw0_rd
net usb_stream_0/raw1_rd cam_input_0/raw1_rd

# status for the PS
net cam_input_0/genlock ps_status_0/genlock
net usb_stream_0/status ps_status_0/usb_status
net rectify_census_0/overrun ps_status_0/depth_overrun
net rectify_census_0/dbg ps_status_0/front_dbg
net chain_hub_0/state ps_status_0/hub_state
net cam_input_0/frame_led0 ps_status_0/frame_led0
net cam_input_0/frame_led1 ps_status_0/frame_led1

# --- pins of the board
port I cam_d      cam_input_0/cam_d 7 0
port I cam_pclk   cam_input_0/cam_pclk
port I cam_vsync  cam_input_0/cam_vsync
port I cam_href   cam_input_0/cam_href
port O cam_pwdn   cam_input_0/cam_pwdn
port I cam2_d     cam_input_0/cam2_d 7 0
port I cam2_pclk  cam_input_0/cam2_pclk
port I cam2_vsync cam_input_0/cam2_vsync
port I cam2_href  cam_input_0/cam2_href
port O cam2_pwdn  cam_input_0/cam2_pwdn
port I fx2_ifclk    usb_stream_0/fx2_ifclk
port I fx2_flagb_n  usb_stream_0/fx2_flagb_n
port O fx2_fd       usb_stream_0/fx2_fd 7 0
port O fx2_slwr_n   usb_stream_0/fx2_slwr_n
port O fx2_pktend_n usb_stream_0/fx2_pktend_n
port O led          ps_status_0/led 1 0

# SCCB of the two sensors: the PS's I2C controllers, made external (Vivado adds the IOBUFs)
make_bd_intf_pins_external [get_bd_intf_pins processing_system7_0/IIC_0]
make_bd_intf_pins_external [get_bd_intf_pins processing_system7_0/IIC_1]
set_property name cam_sccb  [get_bd_intf_ports IIC_0_0]
set_property name cam2_sccb [get_bd_intf_ports IIC_1_0]

# Ethernet: the PS MAC through EMIO as 4-bit MII to the IP101GA, MDIO as well
create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant eth_rxd_hi
set_property -dict [list CONFIG.CONST_WIDTH {4} CONFIG.CONST_VAL {0}] [get_bd_cells eth_rxd_hi]
create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat eth_rxd_concat
set_property -dict [list CONFIG.NUM_PORTS {2} CONFIG.IN0_WIDTH {4} CONFIG.IN1_WIDTH {4}] [get_bd_cells eth_rxd_concat]
create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice eth_txd_slice
set_property -dict [list CONFIG.DIN_WIDTH {8} CONFIG.DIN_FROM {3} CONFIG.DIN_TO {0} CONFIG.DOUT_WIDTH {4}] [get_bd_cells eth_txd_slice]
create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant eth_zero
set_property -dict [list CONFIG.CONST_WIDTH {1} CONFIG.CONST_VAL {0}] [get_bd_cells eth_zero]
port I eth_rx_clk processing_system7_0/ENET0_GMII_RX_CLK
port I eth_rxd    eth_rxd_concat/In0 3 0
port I eth_rx_dv  processing_system7_0/ENET0_GMII_RX_DV
port I eth_tx_clk processing_system7_0/ENET0_GMII_TX_CLK
port O eth_tx_en  processing_system7_0/ENET0_GMII_TX_EN
port O eth_txd    eth_txd_slice/Dout 3 0
net eth_rxd_hi/dout eth_rxd_concat/In1
net eth_rxd_concat/dout processing_system7_0/ENET0_GMII_RXD
net processing_system7_0/ENET0_GMII_TXD eth_txd_slice/Din
net eth_zero/dout processing_system7_0/ENET0_GMII_COL processing_system7_0/ENET0_GMII_CRS processing_system7_0/ENET0_GMII_RX_ER
make_bd_intf_pins_external [get_bd_intf_pins processing_system7_0/MDIO_ETHERNET_0]
set_property name eth_mdio [get_bd_intf_ports MDIO_ETHERNET_0_0]

set_property USER_COMMENTS.comment_0 "tapeout_chain: $slices x tt_um_stereo_slice, the Tiny Tapeout module (asic/tt). 16 disparities per slice; chain_hub_0 broadcasts the census signatures (dl), the result travels from slice to slice (uo_out -> uio_in) and back to the hub (ul)." [current_bd_design]

regenerate_bd_layout
validate_bd_design
save_bd_design

make_wrapper -files [get_files system.bd] -top
add_files -norecurse [file join $proj $name.gen sources_1 bd system hdl system_wrapper.v]
set_property top system_wrapper [current_fileset]
update_compile_order -fileset sources_1

if {!$build} {
  puts "PROJECT_OK: $proj"
  return
}

# ---------------------------------------------------------------- implementation
# the 200 MHz capture and USB side has little margin: optimise once more after placement and after routing
set_property STEPS.PHYS_OPT_DESIGN.IS_ENABLED true [get_runs impl_1]
set_property STEPS.POST_ROUTE_PHYS_OPT_DESIGN.IS_ENABLED true [get_runs impl_1]
launch_runs synth_1 -jobs 4
wait_on_run synth_1
if {[get_property PROGRESS [get_runs synth_1]] != "100%"} { error "synthesis failed" }
launch_runs impl_1 -to_step write_bitstream -jobs 4
wait_on_run impl_1
if {[get_property PROGRESS [get_runs impl_1]] != "100%"} { error "implementation failed" }

open_run impl_1
report_utilization -file [file join $out utilization.rpt]
report_utilization -hierarchical -hierarchical_depth 4 -file [file join $out utilization_hier.rpt]
report_timing_summary -file [file join $out timing.rpt]
puts "TIMING: WNS=[get_property SLACK [get_timing_paths -setup]] WHS=[get_property SLACK [get_timing_paths -hold]]"
write_hw_platform -fixed -force -include_bit -file [file join $out $name.xsa]
file copy -force [file join $proj $name.runs impl_1 system_wrapper.bit] [file join $out $name.bit]

# the bitstream in the form the Linux FPGA manager loads (host/board.py)
set bif [open [file join $out bitstream.bif] w]
puts $bif "all:\n{\n  [file join $out $name.bit]\n}"
close $bif
if {[catch {exec bootgen -image [file join $out bitstream.bif] -arch zynq -process_bitstream bin -w on} msg]} {
  puts "WARNING: bootgen: $msg"
}
puts "BUILD_OK: $out"
