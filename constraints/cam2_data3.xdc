# Second OV2640 (right camera) on header DATA3 (EBAZ4205).
# Same pin arrangement as the first camera on DATA1 (see cam_usb.xdc).
# Pin numbers follow hw/constraints/ebaz4205.xdc in the EBAZ4205 repo.

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
set_property -dict {PACKAGE_PIN T20 IOSTANDARD LVCMOS33} [get_ports cam2_siod]
set_property -dict {PACKAGE_PIN T19 IOSTANDARD LVCMOS33} [get_ports cam2_sioc]
set_property -dict {PACKAGE_PIN U19 IOSTANDARD LVCMOS33} [get_ports cam2_pwdn]

# No external SCCB pull-ups are fitted: use the internal ones.
set_property PULLUP true [get_ports {cam2_siod cam2_sioc}]

# The camera pins, PCLK included, are sampled asynchronously by FCLK0.
set_false_path -from [get_ports {cam2_d[*] cam2_href cam2_vsync cam2_pclk cam2_siod cam2_sioc}]
set_false_path -to   [get_ports {cam2_pwdn cam2_siod cam2_sioc}]
