//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
//Date        : Wed Oct 14 08:10:01 2026
//Host        : LAPTOP-THBQET7J running 64-bit major release  (build 9200)
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    eth_mdio_mdc,
    eth_mdio_mdio_io,
    eth_rx_clk,
    eth_rx_dv,
    eth_rxd,
    eth_tx_clk,
    eth_tx_en,
    eth_txd,
    fclk0,
    fclk1,
    gpio_i,
    gpio_o,
    i2c1_scl_i,
    i2c1_scl_o,
    i2c1_scl_t,
    i2c1_sda_i,
    i2c1_sda_o,
    i2c1_sda_t,
    i2c_scl_i,
    i2c_scl_o,
    i2c_scl_t,
    i2c_sda_i,
    i2c_sda_o,
    i2c_sda_t);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  output eth_mdio_mdc;
  inout eth_mdio_mdio_io;
  input eth_rx_clk;
  input eth_rx_dv;
  input [3:0]eth_rxd;
  input eth_tx_clk;
  output [0:0]eth_tx_en;
  output [3:0]eth_txd;
  output fclk0;
  output fclk1;
  input [63:0]gpio_i;
  output [23:0]gpio_o;
  input i2c1_scl_i;
  output i2c1_scl_o;
  output i2c1_scl_t;
  input i2c1_sda_i;
  output i2c1_sda_o;
  output i2c1_sda_t;
  input i2c_scl_i;
  output i2c_scl_o;
  output i2c_scl_t;
  input i2c_sda_i;
  output i2c_sda_o;
  output i2c_sda_t;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire eth_mdio_mdc;
  wire eth_mdio_mdio_i;
  wire eth_mdio_mdio_io;
  wire eth_mdio_mdio_o;
  wire eth_mdio_mdio_t;
  wire eth_rx_clk;
  wire eth_rx_dv;
  wire [3:0]eth_rxd;
  wire eth_tx_clk;
  wire [0:0]eth_tx_en;
  wire [3:0]eth_txd;
  wire fclk0;
  wire fclk1;
  wire [63:0]gpio_i;
  wire [23:0]gpio_o;
  wire i2c1_scl_i;
  wire i2c1_scl_o;
  wire i2c1_scl_t;
  wire i2c1_sda_i;
  wire i2c1_sda_o;
  wire i2c1_sda_t;
  wire i2c_scl_i;
  wire i2c_scl_o;
  wire i2c_scl_t;
  wire i2c_sda_i;
  wire i2c_sda_o;
  wire i2c_sda_t;

  IOBUF eth_mdio_mdio_iobuf
       (.I(eth_mdio_mdio_o),
        .IO(eth_mdio_mdio_io),
        .O(eth_mdio_mdio_i),
        .T(eth_mdio_mdio_t));
  system system_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .eth_mdio_mdc(eth_mdio_mdc),
        .eth_mdio_mdio_i(eth_mdio_mdio_i),
        .eth_mdio_mdio_o(eth_mdio_mdio_o),
        .eth_mdio_mdio_t(eth_mdio_mdio_t),
        .eth_rx_clk(eth_rx_clk),
        .eth_rx_dv(eth_rx_dv),
        .eth_rxd(eth_rxd),
        .eth_tx_clk(eth_tx_clk),
        .eth_tx_en(eth_tx_en),
        .eth_txd(eth_txd),
        .fclk0(fclk0),
        .fclk1(fclk1),
        .gpio_i(gpio_i),
        .gpio_o(gpio_o),
        .i2c1_scl_i(i2c1_scl_i),
        .i2c1_scl_o(i2c1_scl_o),
        .i2c1_scl_t(i2c1_scl_t),
        .i2c1_sda_i(i2c1_sda_i),
        .i2c1_sda_o(i2c1_sda_o),
        .i2c1_sda_t(i2c1_sda_t),
        .i2c_scl_i(i2c_scl_i),
        .i2c_scl_o(i2c_scl_o),
        .i2c_scl_t(i2c_scl_t),
        .i2c_sda_i(i2c_sda_i),
        .i2c_sda_o(i2c_sda_o),
        .i2c_sda_t(i2c_sda_t));
endmodule
