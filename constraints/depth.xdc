# Additional constraints of the depth build (rtl/depth_top.v).
#
# The processing clock (FCLK1, 62.5 MHz) and the capture clock (FCLK0, 200 MHz)
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
