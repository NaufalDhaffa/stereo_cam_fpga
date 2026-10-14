# The debug hub must run from a clock that is always there. PCLK and IFCLK
# both depend on external devices being configured, FCLK0 only on the PS.
connect_debug_port dbg_hub/clk [get_nets -of_objects [get_pins u_ila_pins/clk]]
