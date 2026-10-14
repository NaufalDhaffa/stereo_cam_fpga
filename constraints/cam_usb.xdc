# OV2640 on header DATA1, FX2LP Slave FIFO on header DATA2 (EBAZ4205).
# Pin numbers follow hw/constraints/ebaz4205.xdc in the EBAZ4205 repo.

set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

# ---------------------------------------------------------------- OV2640
#   DATA1 pin:  5    7    9    11   13   15   17   19
set_property -dict {PACKAGE_PIN A20 IOSTANDARD LVCMOS33} [get_ports {cam_d[0]}]
set_property -dict {PACKAGE_PIN B19 IOSTANDARD LVCMOS33} [get_ports {cam_d[1]}]
set_property -dict {PACKAGE_PIN C20 IOSTANDARD LVCMOS33} [get_ports {cam_d[2]}]
set_property -dict {PACKAGE_PIN H17 IOSTANDARD LVCMOS33} [get_ports {cam_d[3]}]
set_property -dict {PACKAGE_PIN D20 IOSTANDARD LVCMOS33} [get_ports {cam_d[4]}]
set_property -dict {PACKAGE_PIN H18 IOSTANDARD LVCMOS33} [get_ports {cam_d[5]}]
set_property -dict {PACKAGE_PIN F20 IOSTANDARD LVCMOS33} [get_ports {cam_d[6]}]
set_property -dict {PACKAGE_PIN F19 IOSTANDARD LVCMOS33} [get_ports {cam_d[7]}]
set_property -dict {PACKAGE_PIN H16 IOSTANDARD LVCMOS33} [get_ports cam_pclk]
set_property -dict {PACKAGE_PIN B20 IOSTANDARD LVCMOS33} [get_ports cam_vsync]
set_property -dict {PACKAGE_PIN D18 IOSTANDARD LVCMOS33} [get_ports cam_href]
set_property -dict {PACKAGE_PIN D19 IOSTANDARD LVCMOS33} [get_ports cam_siod]
set_property -dict {PACKAGE_PIN E19 IOSTANDARD LVCMOS33} [get_ports cam_sioc]
set_property -dict {PACKAGE_PIN K17 IOSTANDARD LVCMOS33} [get_ports cam_pwdn]

# No external SCCB pull-ups are fitted: use the internal ones.
set_property PULLUP true [get_ports {cam_siod cam_sioc}]

# ----------------------------------------------------------------- FX2LP
set_property -dict {PACKAGE_PIN G20 IOSTANDARD LVCMOS33} [get_ports {fx2_fd[0]}]
set_property -dict {PACKAGE_PIN G19 IOSTANDARD LVCMOS33} [get_ports {fx2_fd[1]}]
set_property -dict {PACKAGE_PIN J19 IOSTANDARD LVCMOS33} [get_ports {fx2_fd[2]}]
set_property -dict {PACKAGE_PIN K18 IOSTANDARD LVCMOS33} [get_ports {fx2_fd[3]}]
set_property -dict {PACKAGE_PIN K19 IOSTANDARD LVCMOS33} [get_ports {fx2_fd[4]}]
set_property -dict {PACKAGE_PIN L16 IOSTANDARD LVCMOS33} [get_ports {fx2_fd[5]}]
set_property -dict {PACKAGE_PIN M18 IOSTANDARD LVCMOS33} [get_ports {fx2_fd[6]}]
set_property -dict {PACKAGE_PIN M20 IOSTANDARD LVCMOS33} [get_ports {fx2_fd[7]}]
set_property -dict {PACKAGE_PIN J18 IOSTANDARD LVCMOS33} [get_ports fx2_ifclk]
set_property -dict {PACKAGE_PIN H20 IOSTANDARD LVCMOS33} [get_ports fx2_slwr_n]
set_property -dict {PACKAGE_PIN J20 IOSTANDARD LVCMOS33} [get_ports fx2_flagb_n]
set_property -dict {PACKAGE_PIN L19 IOSTANDARD LVCMOS33} [get_ports fx2_pktend_n]

set_property IOB TRUE [get_ports {fx2_fd[*] fx2_slwr_n fx2_pktend_n}]
set_property SLEW FAST [get_ports {fx2_fd[*] fx2_slwr_n fx2_pktend_n}]

set_property -dict {PACKAGE_PIN W13 IOSTANDARD LVCMOS33} [get_ports {led[0]}]
set_property -dict {PACKAGE_PIN W14 IOSTANDARD LVCMOS33} [get_ports {led[1]}]

# ---------------------------------------------------------------- timing
# The camera pins, PCLK included, are sampled asynchronously by FCLK0.
create_clock -name fx2_ifclk -period 20.833 [get_ports fx2_ifclk]

set_clock_groups -asynchronous \
    -group [get_clocks fx2_ifclk] \
    -group [get_clocks clk_fpga_0]

set_false_path -from [get_ports {cam_d[*] cam_href cam_vsync cam_pclk}]

# CY7C68013A synchronous slave FIFO, internally sourced IFCLK:
#   SLWR setup 10.4 ns, FD setup 9.2 ns, PKTEND setup 14.6 ns, hold 0 ns,
#   clock-to-flag 9.5 ns. 1 ns is added for the jumper wires.
set_output_delay -clock fx2_ifclk -max 11.4 [get_ports fx2_slwr_n]
set_output_delay -clock fx2_ifclk -min  0.0 [get_ports fx2_slwr_n]
set_output_delay -clock fx2_ifclk -max 10.2 [get_ports {fx2_fd[*]}]
set_output_delay -clock fx2_ifclk -min  0.0 [get_ports {fx2_fd[*]}]
set_input_delay  -clock fx2_ifclk -max 10.5 [get_ports fx2_flagb_n]
set_input_delay  -clock fx2_ifclk -min  0.0 [get_ports fx2_flagb_n]

# PKTEND is only pulsed after the bus has been idle for several cycles.
set_false_path -to [get_ports {led[*] fx2_pktend_n cam_pwdn cam_siod cam_sioc}]
set_false_path -from [get_ports {cam_siod cam_sioc}]
