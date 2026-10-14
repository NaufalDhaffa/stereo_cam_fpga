# Stereo depth camera on the EBAZ4205 (xc7z010clg400-1): pins of the block design's top (system_wrapper).
# Timing is in stereo_cam_timing.xdc.
#
#   DATA1  OV2640, left camera        DATA2  CY7C68013A (FX2LP) Slave FIFO        DATA3  OV2640, right camera
#   Ethernet PHY IP101GA through EMIO (4-bit MII), two LEDs
#
# DDR, UART1 and the SD card are on dedicated / MIO pins of the PS and need nothing here.
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
# ---------------------------------------------------------------- OV2640, left camera (DATA1)
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
set_property -dict {PACKAGE_PIN D19 IOSTANDARD LVCMOS33} [get_ports cam_sccb_sda_io]
set_property -dict {PACKAGE_PIN E19 IOSTANDARD LVCMOS33} [get_ports cam_sccb_scl_io]
set_property -dict {PACKAGE_PIN K17 IOSTANDARD LVCMOS33} [get_ports cam_pwdn]

# No external SCCB pull-ups are fitted: use the internal ones.
set_property PULLUP true [get_ports {cam_sccb_sda_io cam_sccb_scl_io}]

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

# ---------------------------------------------------------------- OV2640, right camera (DATA3)

#   DATA3 pin:  5    7    9    11   13   15   17   19
set_property -dict {PACKAGE_PIN M19 IOSTANDARD LVCMOS33} [get_ports {cam2_d[0]}]
set_property -dict {PACKAGE_PIN P18 IOSTANDARD LVCMOS33} [get_ports {cam2_d[1]}]
set_property -dict {PACKAGE_PIN N17 IOSTANDARD LVCMOS33} [get_ports {cam2_d[2]}]
set_property -dict {PACKAGE_PIN P20 IOSTANDARD LVCMOS33} [get_ports {cam2_d[3]}]
set_property -dict {PACKAGE_PIN R18 IOSTANDARD LVCMOS33} [get_ports {cam2_d[4]}]
set_property -dict {PACKAGE_PIN P19 IOSTANDARD LVCMOS33} [get_ports {cam2_d[5]}]
set_property -dict {PACKAGE_PIN U20 IOSTANDARD LVCMOS33} [get_ports {cam2_d[6]}]
set_property -dict {PACKAGE_PIN V20 IOSTANDARD LVCMOS33} [get_ports {cam2_d[7]}]
set_property -dict {PACKAGE_PIN N20 IOSTANDARD LVCMOS33} [get_ports cam2_pclk]
set_property -dict {PACKAGE_PIN M17 IOSTANDARD LVCMOS33} [get_ports cam2_vsync]
set_property -dict {PACKAGE_PIN R19 IOSTANDARD LVCMOS33} [get_ports cam2_href]
set_property -dict {PACKAGE_PIN T20 IOSTANDARD LVCMOS33} [get_ports cam2_sccb_sda_io]
set_property -dict {PACKAGE_PIN T19 IOSTANDARD LVCMOS33} [get_ports cam2_sccb_scl_io]
set_property -dict {PACKAGE_PIN U19 IOSTANDARD LVCMOS33} [get_ports cam2_pwdn]

# No external SCCB pull-ups are fitted: use the internal ones.
set_property PULLUP true [get_ports {cam2_sccb_sda_io cam2_sccb_scl_io}]

# ---------------------------------------------------------------- Ethernet
# IP101GA Ethernet PHY <-> Zynq PS MAC through EMIO (4-bit MII) and MDIO.
set_property IOSTANDARD LVCMOS33 [get_ports {eth_rx_clk}]
set_property IOSTANDARD LVCMOS33 [get_ports {eth_rxd[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {eth_rx_dv}]
set_property IOSTANDARD LVCMOS33 [get_ports {eth_tx_clk}]
set_property IOSTANDARD LVCMOS33 [get_ports {eth_tx_en}]
set_property IOSTANDARD LVCMOS33 [get_ports {eth_txd[*]}]

set_property PACKAGE_PIN U14 [get_ports {eth_rx_clk}]
set_property PACKAGE_PIN Y16 [get_ports {eth_rxd[0]}]
set_property PACKAGE_PIN V16 [get_ports {eth_rxd[1]}]
set_property PACKAGE_PIN V17 [get_ports {eth_rxd[2]}]
set_property PACKAGE_PIN Y17 [get_ports {eth_rxd[3]}]
set_property PACKAGE_PIN W16 [get_ports {eth_rx_dv}]

set_property PACKAGE_PIN U15 [get_ports {eth_tx_clk}]
set_property PACKAGE_PIN W19 [get_ports {eth_tx_en}]
set_property PACKAGE_PIN W18 [get_ports {eth_txd[0]}]
set_property PACKAGE_PIN Y18 [get_ports {eth_txd[1]}]
set_property PACKAGE_PIN V18 [get_ports {eth_txd[2]}]
set_property PACKAGE_PIN Y19 [get_ports {eth_txd[3]}]

set_property -dict {PACKAGE_PIN W15 IOSTANDARD LVCMOS33} [get_ports {eth_mdio_mdc}]
set_property -dict {PACKAGE_PIN Y14 IOSTANDARD LVCMOS33} [get_ports {eth_mdio_mdio_io}]
