# Stereo depth camera on the EBAZ4205: clocks and timing exceptions (implementation only: the PS's
# clocks do not exist yet when the top level is synthesised around the block design's IP).
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
set_false_path -to [get_ports {led[*] fx2_pktend_n cam_pwdn cam_sccb_sda_io cam_sccb_scl_io}]
set_false_path -from [get_ports {cam_sccb_sda_io cam_sccb_scl_io}]
# The camera pins, PCLK included, are sampled asynchronously by FCLK0.
set_false_path -from [get_ports {cam2_d[*] cam2_href cam2_vsync cam2_pclk cam2_sccb_sda_io cam2_sccb_scl_io}]
set_false_path -to   [get_ports {cam2_pwdn cam2_sccb_sda_io cam2_sccb_scl_io}]

create_clock -name eth_rx_clk -period 40.0 -waveform {0 20.0} [get_ports {eth_rx_clk}]
create_clock -name eth_tx_clk -period 40.0 -waveform {0 20.0} [get_ports {eth_tx_clk}]

# The processing clock (FCLK1, 25 MHz) and the capture clock (FCLK0, 200 MHz)
# both come from the PS, but nothing relies on their phase: every signal
# between them goes through a dual-clock memory, an asynchronous FIFO, a
# Gray-coded counter or a synchroniser, or only changes at the start of a
# frame, long before it is used (line buffer base address, time stamp).
set_clock_groups -asynchronous \
    -group [get_clocks clk_fpga_0] \
    -group [get_clocks clk_fpga_1] \
    -group [get_clocks fx2_ifclk] \
    -group [get_clocks eth_rx_clk] \
    -group [get_clocks eth_tx_clk]
