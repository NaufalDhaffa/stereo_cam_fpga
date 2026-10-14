# FX2LP Slave FIFO (EP6 IN, 8-bit) on header DATA2.
# Pin numbers follow hw/constraints/ebaz4205.xdc in the EBAZ4205 repo.

set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

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

set_property -dict {PACKAGE_PIN W13 IOSTANDARD LVCMOS33} [get_ports {led[0]}]
set_property -dict {PACKAGE_PIN W14 IOSTANDARD LVCMOS33} [get_ports {led[1]}]

set_property IOB TRUE [get_ports {fx2_fd[*] fx2_slwr_n fx2_flagb_n}]

# IFCLK is driven by the FX2LP at 48 MHz.
create_clock -name fx2_ifclk -period 20.833 [get_ports fx2_ifclk]

# CY7C68013A synchronous slave FIFO, internally sourced IFCLK:
#   SLWR setup 10.4 ns, FD setup 9.2 ns, hold 0 ns, clock-to-flag 9.5 ns.
# 1 ns is added for the jumper wires.
set_output_delay -clock fx2_ifclk -max 11.4 [get_ports fx2_slwr_n]
set_output_delay -clock fx2_ifclk -min  0.0 [get_ports fx2_slwr_n]
set_output_delay -clock fx2_ifclk -max 10.2 [get_ports {fx2_fd[*]}]
set_output_delay -clock fx2_ifclk -min  0.0 [get_ports {fx2_fd[*]}]
set_input_delay  -clock fx2_ifclk -max 10.5 [get_ports fx2_flagb_n]
set_input_delay  -clock fx2_ifclk -min  0.0 [get_ports fx2_flagb_n]

set_false_path -to [get_ports {led[*] fx2_pktend_n}]
