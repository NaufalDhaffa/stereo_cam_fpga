//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
//Date        : Wed Oct 14 08:35:12 2026
//Host        : LAPTOP-THBQET7J running 64-bit major release  (build 9200)
//Command     : generate_target system.bd
//Design      : system
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

/* tapeout_chain: 2 x tt_um_stereo_slice, the Tiny Tapeout module (asic/tt). 16 disparities per slice; chain_hub_0 broadcasts the census signatures (dl), the result travels from slice to slice (uo_out -> uio_in) and back to the hub (ul). */
(* CORE_GENERATION_INFO = "system,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=system,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=14,numReposBlks=13,numNonXlnxBlks=0,numHierBlks=1,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=8,numPkgbdBlks=0,bdsource=USER,da_ps7_cnt=1,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "system.hwdef" *) 
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
    cam2_d,
    cam2_href,
    cam2_pclk,
    cam2_pwdn,
    cam2_sccb_scl_i,
    cam2_sccb_scl_o,
    cam2_sccb_scl_t,
    cam2_sccb_sda_i,
    cam2_sccb_sda_o,
    cam2_sccb_sda_t,
    cam2_vsync,
    cam_d,
    cam_href,
    cam_pclk,
    cam_pwdn,
    cam_sccb_scl_i,
    cam_sccb_scl_o,
    cam_sccb_scl_t,
    cam_sccb_sda_i,
    cam_sccb_sda_o,
    cam_sccb_sda_t,
    cam_vsync,
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
    fx2_fd,
    fx2_flagb_n,
    fx2_ifclk,
    fx2_pktend_n,
    fx2_slwr_n,
    led);
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
  input [7:0]cam2_d;
  input cam2_href;
  input cam2_pclk;
  output cam2_pwdn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cam2_sccb SCL_I" *) (* X_INTERFACE_MODE = "Master" *) input cam2_sccb_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cam2_sccb SCL_O" *) output cam2_sccb_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cam2_sccb SCL_T" *) output cam2_sccb_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cam2_sccb SDA_I" *) input cam2_sccb_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cam2_sccb SDA_O" *) output cam2_sccb_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cam2_sccb SDA_T" *) output cam2_sccb_sda_t;
  input cam2_vsync;
  input [7:0]cam_d;
  input cam_href;
  input cam_pclk;
  output cam_pwdn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cam_sccb SCL_I" *) (* X_INTERFACE_MODE = "Master" *) input cam_sccb_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cam_sccb SCL_O" *) output cam_sccb_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cam_sccb SCL_T" *) output cam_sccb_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cam_sccb SDA_I" *) input cam_sccb_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cam_sccb SDA_O" *) output cam_sccb_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cam_sccb SDA_T" *) output cam_sccb_sda_t;
  input cam_vsync;
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
  output [7:0]fx2_fd;
  input fx2_flagb_n;
  input fx2_ifclk;
  output fx2_pktend_n;
  output fx2_slwr_n;
  output [1:0]led;

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
  wire [7:0]cam2_d;
  wire cam2_href;
  wire cam2_pclk;
  wire cam2_pwdn;
  wire cam2_sccb_scl_i;
  wire cam2_sccb_scl_o;
  wire cam2_sccb_scl_t;
  wire cam2_sccb_sda_i;
  wire cam2_sccb_sda_o;
  wire cam2_sccb_sda_t;
  wire cam2_vsync;
  wire [7:0]cam_d;
  wire cam_href;
  wire cam_input_0_cap_rst;
  wire [15:0]cam_input_0_frame_base0;
  wire [15:0]cam_input_0_frame_base1;
  wire cam_input_0_frame_led0;
  wire cam_input_0_frame_led1;
  wire [31:0]cam_input_0_genlock;
  wire cam_input_0_prst;
  wire [13:0]cam_input_0_raw0_count;
  wire [7:0]cam_input_0_raw0_dout;
  wire [13:0]cam_input_0_raw1_count;
  wire [7:0]cam_input_0_raw1_dout;
  wire [7:0]cam_input_0_rd_data0;
  wire [7:0]cam_input_0_rd_data1;
  wire [9:0]cam_input_0_rows_gray0;
  wire [9:0]cam_input_0_rows_gray1;
  wire cam_input_0_sof_toggle0;
  wire cam_input_0_sof_toggle1;
  wire [31:0]cam_input_0_start_us1;
  wire cam_pclk;
  wire cam_pwdn;
  wire cam_sccb_scl_i;
  wire cam_sccb_scl_o;
  wire cam_sccb_scl_t;
  wire cam_sccb_sda_i;
  wire cam_sccb_sda_o;
  wire cam_sccb_sda_t;
  wire cam_vsync;
  wire [7:0]chain_hub_0_chain_bottom;
  wire [7:0]chain_hub_0_dl;
  wire chain_hub_0_frame_start;
  wire [11:0]chain_hub_0_px_disp;
  wire chain_hub_0_px_valid;
  wire [9:0]chain_hub_0_px_x;
  wire [9:0]chain_hub_0_px_y;
  wire chain_hub_0_sig_ready;
  wire chain_hub_0_slice_ena;
  wire chain_hub_0_slice_rst_n;
  wire [3:0]chain_hub_0_state;
  wire eth_mdio_mdc;
  wire eth_mdio_mdio_i;
  wire eth_mdio_mdio_o;
  wire eth_mdio_mdio_t;
  wire eth_rx_clk;
  wire eth_rx_dv;
  wire [3:0]eth_rxd;
  wire [7:0]eth_rxd_concat_dout;
  wire [3:0]eth_rxd_hi_dout;
  wire eth_tx_clk;
  wire [0:0]eth_tx_en;
  wire [3:0]eth_txd;
  wire [0:0]eth_zero_dout;
  wire [7:0]frame_format_0_out_byte;
  wire frame_format_0_out_last;
  wire frame_format_0_out_wr;
  wire [7:0]fx2_fd;
  wire fx2_flagb_n;
  wire fx2_ifclk;
  wire fx2_pktend_n;
  wire fx2_slwr_n;
  wire [1:0]led;
  wire [7:0]processing_system7_0_ENET0_GMII_TXD;
  wire processing_system7_0_FCLK_CLK0;
  wire processing_system7_0_FCLK_CLK1;
  wire [63:0]processing_system7_0_GPIO_O;
  wire [63:0]ps_status_0_gpio_i;
  wire [19:0]rectify_census_0_dbg;
  wire rectify_census_0_l_first;
  wire [7:0]rectify_census_0_l_luma;
  wire rectify_census_0_l_valid;
  wire rectify_census_0_overrun;
  wire [15:0]rectify_census_0_rd_addr0;
  wire [15:0]rectify_census_0_rd_addr1;
  wire [43:0]rectify_census_0_sig_left;
  wire rectify_census_0_sig_left_ok;
  wire [43:0]rectify_census_0_sig_right;
  wire rectify_census_0_sig_right_ok;
  wire rectify_census_0_sig_valid;
  wire [7:0]tapeout_chain_uo_out;
  wire usb_stream_0_d_room;
  wire usb_stream_0_raw0_rd;
  wire usb_stream_0_raw1_rd;
  wire [6:0]usb_stream_0_status;
  wire usb_stream_0_uvc;

  system_cam_input_0_0 cam_input_0
       (.cam2_d(cam2_d),
        .cam2_href(cam2_href),
        .cam2_pclk(cam2_pclk),
        .cam2_pwdn(cam2_pwdn),
        .cam2_vsync(cam2_vsync),
        .cam_d(cam_d),
        .cam_href(cam_href),
        .cam_pclk(cam_pclk),
        .cam_pwdn(cam_pwdn),
        .cam_vsync(cam_vsync),
        .cap_rst(cam_input_0_cap_rst),
        .clk(processing_system7_0_FCLK_CLK0),
        .frame_base0(cam_input_0_frame_base0),
        .frame_base1(cam_input_0_frame_base1),
        .frame_led0(cam_input_0_frame_led0),
        .frame_led1(cam_input_0_frame_led1),
        .genlock(cam_input_0_genlock),
        .gpio_o(processing_system7_0_GPIO_O),
        .pclk(processing_system7_0_FCLK_CLK1),
        .prst(cam_input_0_prst),
        .raw0_count(cam_input_0_raw0_count),
        .raw0_dout(cam_input_0_raw0_dout),
        .raw0_rd(usb_stream_0_raw0_rd),
        .raw1_count(cam_input_0_raw1_count),
        .raw1_dout(cam_input_0_raw1_dout),
        .raw1_rd(usb_stream_0_raw1_rd),
        .rd_addr0(rectify_census_0_rd_addr0),
        .rd_addr1(rectify_census_0_rd_addr1),
        .rd_data0(cam_input_0_rd_data0),
        .rd_data1(cam_input_0_rd_data1),
        .rows_gray0(cam_input_0_rows_gray0),
        .rows_gray1(cam_input_0_rows_gray1),
        .sof_toggle0(cam_input_0_sof_toggle0),
        .sof_toggle1(cam_input_0_sof_toggle1),
        .start_us1(cam_input_0_start_us1));
  system_chain_hub_0_0 chain_hub_0
       (.chain_bottom(chain_hub_0_chain_bottom),
        .clk(processing_system7_0_FCLK_CLK1),
        .dl(chain_hub_0_dl),
        .frame_start(chain_hub_0_frame_start),
        .px_disp(chain_hub_0_px_disp),
        .px_valid(chain_hub_0_px_valid),
        .px_x(chain_hub_0_px_x),
        .px_y(chain_hub_0_px_y),
        .rst(cam_input_0_prst),
        .sig_left(rectify_census_0_sig_left),
        .sig_left_ok(rectify_census_0_sig_left_ok),
        .sig_ready(chain_hub_0_sig_ready),
        .sig_right(rectify_census_0_sig_right),
        .sig_right_ok(rectify_census_0_sig_right_ok),
        .sig_valid(rectify_census_0_sig_valid),
        .slice_ena(chain_hub_0_slice_ena),
        .slice_rst_n(chain_hub_0_slice_rst_n),
        .state(chain_hub_0_state),
        .ul(tapeout_chain_uo_out));
  system_eth_rxd_concat_0 eth_rxd_concat
       (.In0(eth_rxd),
        .In1(eth_rxd_hi_dout),
        .dout(eth_rxd_concat_dout));
  system_eth_rxd_hi_0 eth_rxd_hi
       (.dout(eth_rxd_hi_dout));
  system_eth_txd_slice_0 eth_txd_slice
       (.Din(processing_system7_0_ENET0_GMII_TXD),
        .Dout(eth_txd));
  system_eth_zero_0 eth_zero
       (.dout(eth_zero_dout));
  system_frame_format_0_0 frame_format_0
       (.clk(processing_system7_0_FCLK_CLK1),
        .hdr_start(chain_hub_0_frame_start),
        .l_first(rectify_census_0_l_first),
        .l_luma(rectify_census_0_l_luma),
        .l_valid(rectify_census_0_l_valid),
        .out_byte(frame_format_0_out_byte),
        .out_last(frame_format_0_out_last),
        .out_room(usb_stream_0_d_room),
        .out_wr(frame_format_0_out_wr),
        .px_disp(chain_hub_0_px_disp),
        .px_valid(chain_hub_0_px_valid),
        .px_x(chain_hub_0_px_x),
        .px_y(chain_hub_0_px_y),
        .rst(cam_input_0_prst),
        .start_us(cam_input_0_start_us1),
        .uvc(usb_stream_0_uvc));
  system_processing_system7_0_0 processing_system7_0
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
        .ENET0_GMII_COL(eth_zero_dout),
        .ENET0_GMII_CRS(eth_zero_dout),
        .ENET0_GMII_RXD(eth_rxd_concat_dout),
        .ENET0_GMII_RX_CLK(eth_rx_clk),
        .ENET0_GMII_RX_DV(eth_rx_dv),
        .ENET0_GMII_RX_ER(eth_zero_dout),
        .ENET0_GMII_TXD(processing_system7_0_ENET0_GMII_TXD),
        .ENET0_GMII_TX_CLK(eth_tx_clk),
        .ENET0_GMII_TX_EN(eth_tx_en),
        .ENET0_MDIO_I(eth_mdio_mdio_i),
        .ENET0_MDIO_MDC(eth_mdio_mdc),
        .ENET0_MDIO_O(eth_mdio_mdio_o),
        .ENET0_MDIO_T(eth_mdio_mdio_t),
        .FCLK_CLK0(processing_system7_0_FCLK_CLK0),
        .FCLK_CLK1(processing_system7_0_FCLK_CLK1),
        .GPIO_I(ps_status_0_gpio_i),
        .GPIO_O(processing_system7_0_GPIO_O),
        .I2C0_SCL_I(cam_sccb_scl_i),
        .I2C0_SCL_O(cam_sccb_scl_o),
        .I2C0_SCL_T(cam_sccb_scl_t),
        .I2C0_SDA_I(cam_sccb_sda_i),
        .I2C0_SDA_O(cam_sccb_sda_o),
        .I2C0_SDA_T(cam_sccb_sda_t),
        .I2C1_SCL_I(cam2_sccb_scl_i),
        .I2C1_SCL_O(cam2_sccb_scl_o),
        .I2C1_SCL_T(cam2_sccb_scl_t),
        .I2C1_SDA_I(cam2_sccb_sda_i),
        .I2C1_SDA_O(cam2_sccb_sda_o),
        .I2C1_SDA_T(cam2_sccb_sda_t),
        .MIO(FIXED_IO_mio),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb));
  system_ps_status_0_0 ps_status_0
       (.depth_overrun(rectify_census_0_overrun),
        .frame_led0(cam_input_0_frame_led0),
        .frame_led1(cam_input_0_frame_led1),
        .front_dbg(rectify_census_0_dbg),
        .genlock(cam_input_0_genlock),
        .gpio_i(ps_status_0_gpio_i),
        .gpio_o(processing_system7_0_GPIO_O),
        .hub_state(chain_hub_0_state),
        .led(led),
        .pclk(processing_system7_0_FCLK_CLK1),
        .prst(cam_input_0_prst),
        .usb_status(usb_stream_0_status));
  system_rectify_census_0_0 rectify_census_0
       (.clk(processing_system7_0_FCLK_CLK1),
        .dbg(rectify_census_0_dbg),
        .frame_base0(cam_input_0_frame_base0),
        .frame_base1(cam_input_0_frame_base1),
        .l_first(rectify_census_0_l_first),
        .l_luma(rectify_census_0_l_luma),
        .l_valid(rectify_census_0_l_valid),
        .overrun(rectify_census_0_overrun),
        .rd_addr0(rectify_census_0_rd_addr0),
        .rd_addr1(rectify_census_0_rd_addr1),
        .rd_data0(cam_input_0_rd_data0),
        .rd_data1(cam_input_0_rd_data1),
        .rows_gray0(cam_input_0_rows_gray0),
        .rows_gray1(cam_input_0_rows_gray1),
        .rst(cam_input_0_prst),
        .sig_left(rectify_census_0_sig_left),
        .sig_left_ok(rectify_census_0_sig_left_ok),
        .sig_ready(chain_hub_0_sig_ready),
        .sig_right(rectify_census_0_sig_right),
        .sig_right_ok(rectify_census_0_sig_right_ok),
        .sig_valid(rectify_census_0_sig_valid),
        .sof_toggle0(cam_input_0_sof_toggle0),
        .sof_toggle1(cam_input_0_sof_toggle1));
  tapeout_chain_imp_1EUHJCZ tapeout_chain
       (.clk(processing_system7_0_FCLK_CLK1),
        .ena(chain_hub_0_slice_ena),
        .rst_n(chain_hub_0_slice_rst_n),
        .ui_in(chain_hub_0_dl),
        .uio_in(chain_hub_0_chain_bottom),
        .uo_out(tapeout_chain_uo_out));
  system_usb_stream_0_0 usb_stream_0
       (.cap_rst(cam_input_0_cap_rst),
        .clk(processing_system7_0_FCLK_CLK0),
        .d_byte(frame_format_0_out_byte),
        .d_last(frame_format_0_out_last),
        .d_room(usb_stream_0_d_room),
        .d_wr(frame_format_0_out_wr),
        .fx2_fd(fx2_fd),
        .fx2_flagb_n(fx2_flagb_n),
        .fx2_ifclk(fx2_ifclk),
        .fx2_pktend_n(fx2_pktend_n),
        .fx2_slwr_n(fx2_slwr_n),
        .gpio_o(processing_system7_0_GPIO_O),
        .pclk(processing_system7_0_FCLK_CLK1),
        .prst(cam_input_0_prst),
        .raw0_count(cam_input_0_raw0_count),
        .raw0_dout(cam_input_0_raw0_dout),
        .raw0_rd(usb_stream_0_raw0_rd),
        .raw1_count(cam_input_0_raw1_count),
        .raw1_dout(cam_input_0_raw1_dout),
        .raw1_rd(usb_stream_0_raw1_rd),
        .status(usb_stream_0_status),
        .uvc(usb_stream_0_uvc));
endmodule

module tapeout_chain_imp_1EUHJCZ
   (clk,
    ena,
    rst_n,
    ui_in,
    uio_in,
    uo_out);
  input clk;
  input ena;
  input rst_n;
  input [7:0]ui_in;
  input [7:0]uio_in;
  output [7:0]uo_out;

  wire clk;
  wire ena;
  wire rst_n;
  wire [7:0]slice_0_uo_out;
  wire [7:0]ui_in;
  wire [7:0]uio_in;
  wire [7:0]uo_out;

  system_slice_0_0 slice_0
       (.clk(clk),
        .ena(ena),
        .rst_n(rst_n),
        .ui_in(ui_in),
        .uio_in(uio_in),
        .uo_out(slice_0_uo_out));
  system_slice_1_0 slice_1
       (.clk(clk),
        .ena(ena),
        .rst_n(rst_n),
        .ui_in(ui_in),
        .uio_in(slice_0_uo_out),
        .uo_out(uo_out));
endmodule
