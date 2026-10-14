# IP101GA Ethernet PHY <-> Zynq PS MAC through EMIO (4-bit MII) and MDIO.
# Pins from the board owner's tested EBAZ4205 reference design (hw/constraints/ethernet.xdc).
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

create_clock -name eth_rx_clk -period 40.0 -waveform {0 20.0} [get_ports {eth_rx_clk}]
create_clock -name eth_tx_clk -period 40.0 -waveform {0 20.0} [get_ports {eth_tx_clk}]
