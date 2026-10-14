//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
//Date        : Wed Oct 14 08:10:01 2026
//Host        : LAPTOP-THBQET7J running 64-bit major release  (build 9200)
//Command     : generate_target system.bd
//Design      : system
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "system,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=system,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_ps7_cnt=1,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "system.hwdef" *) 
module system
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
    eth_mdio_mdio_i,
    eth_mdio_mdio_o,
    eth_mdio_mdio_t,
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]DDR_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *) inout [2:0]DDR_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *) inout DDR_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *) inout DDR_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *) inout DDR_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *) inout DDR_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *) inout DDR_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *) inout [3:0]DDR_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *) inout [31:0]DDR_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *) inout [3:0]DDR_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *) inout [3:0]DDR_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *) inout DDR_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *) inout DDR_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *) inout DDR_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *) inout DDR_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *) inout FIXED_IO_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *) inout FIXED_IO_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *) inout [53:0]FIXED_IO_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *) inout FIXED_IO_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *) inout FIXED_IO_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *) inout FIXED_IO_ps_srstb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 eth_mdio MDC" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME eth_mdio, CAN_DEBUG false" *) output eth_mdio_mdc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 eth_mdio MDIO_I" *) input eth_mdio_mdio_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 eth_mdio MDIO_O" *) output eth_mdio_mdio_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 eth_mdio MDIO_T" *) output eth_mdio_mdio_t;
  input eth_rx_clk;
  input eth_rx_dv;
  input [3:0]eth_rxd;
  input eth_tx_clk;
  output [0:0]eth_tx_en;
  output [3:0]eth_txd;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.FCLK0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.FCLK0, CLK_DOMAIN system_ps7_0_0_FCLK_CLK0, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output fclk0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.FCLK1 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.FCLK1, CLK_DOMAIN system_ps7_0_0_FCLK_CLK1, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output fclk1;
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
  wire [7:0]ps7_0_ENET0_GMII_TXD;
  wire [63:0]ps7_0_GPIO_O;
  wire [7:0]xlconcat_rxd_dout;
  wire [0:0]xlconst_eth_misc_dout;
  wire [3:0]xlconst_rxd_hi_dout;

  system_gpio_slice_0 gpio_slice
       (.Din(ps7_0_GPIO_O),
        .Dout(gpio_o));
  system_ps7_0_0 ps7_0
       (.DDR_Addr(DDR_addr),
        .DDR_BankAddr(DDR_ba),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm),
        .DDR_DQ(DDR_dq),
        .DDR_DQS(DDR_dqs_p),
        .DDR_DQS_n(DDR_dqs_n),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .ENET0_EXT_INTIN(1'b0),
        .ENET0_GMII_COL(xlconst_eth_misc_dout),
        .ENET0_GMII_CRS(xlconst_eth_misc_dout),
        .ENET0_GMII_RXD(xlconcat_rxd_dout),
        .ENET0_GMII_RX_CLK(eth_rx_clk),
        .ENET0_GMII_RX_DV(eth_rx_dv),
        .ENET0_GMII_RX_ER(xlconst_eth_misc_dout),
        .ENET0_GMII_TXD(ps7_0_ENET0_GMII_TXD),
        .ENET0_GMII_TX_CLK(eth_tx_clk),
        .ENET0_GMII_TX_EN(eth_tx_en),
        .ENET0_MDIO_I(eth_mdio_mdio_i),
        .ENET0_MDIO_MDC(eth_mdio_mdc),
        .ENET0_MDIO_O(eth_mdio_mdio_o),
        .ENET0_MDIO_T(eth_mdio_mdio_t),
        .FCLK_CLK0(fclk0),
        .FCLK_CLK1(fclk1),
        .GPIO_I(gpio_i),
        .GPIO_O(ps7_0_GPIO_O),
        .I2C0_SCL_I(i2c_scl_i),
        .I2C0_SCL_O(i2c_scl_o),
        .I2C0_SCL_T(i2c_scl_t),
        .I2C0_SDA_I(i2c_sda_i),
        .I2C0_SDA_O(i2c_sda_o),
        .I2C0_SDA_T(i2c_sda_t),
        .I2C1_SCL_I(i2c1_scl_i),
        .I2C1_SCL_O(i2c1_scl_o),
        .I2C1_SCL_T(i2c1_scl_t),
        .I2C1_SDA_I(i2c1_sda_i),
        .I2C1_SDA_O(i2c1_sda_o),
        .I2C1_SDA_T(i2c1_sda_t),
        .MIO(FIXED_IO_mio),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb));
  system_xlconcat_rxd_0 xlconcat_rxd
       (.In0(eth_rxd),
        .In1(xlconst_rxd_hi_dout),
        .dout(xlconcat_rxd_dout));
  system_xlconst_eth_misc_0 xlconst_eth_misc
       (.dout(xlconst_eth_misc_dout));
  system_xlconst_rxd_hi_0 xlconst_rxd_hi
       (.dout(xlconst_rxd_hi_dout));
  system_xlslice_txd_0 xlslice_txd
       (.Din(ps7_0_ENET0_GMII_TXD),
        .Dout(eth_txd));
endmodule
