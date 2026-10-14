// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Wed Oct 14 08:43:41 2026
// Host        : LAPTOP-THBQET7J running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/stereo-depth-cam/hw/projects/stereo_1slice/stereo_1slice.gen/sources_1/bd/system/ip/system_ps_status_0_0/system_ps_status_0_0_sim_netlist.v
// Design      : system_ps_status_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_ps_status_0_0,ps_status,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "ps_status,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module system_ps_status_0_0
   (pclk,
    prst,
    gpio_o,
    gpio_i,
    genlock,
    usb_status,
    depth_overrun,
    front_dbg,
    hub_state,
    frame_led0,
    frame_led1,
    led);
  input pclk;
  input prst;
  input [63:0]gpio_o;
  output [63:0]gpio_i;
  input [31:0]genlock;
  input [6:0]usb_status;
  input depth_overrun;
  input [19:0]front_dbg;
  input [3:0]hub_state;
  input frame_led0;
  input frame_led1;
  output [1:0]led;

  wire depth_overrun;
  wire frame_led0;
  wire frame_led1;
  wire [19:0]front_dbg;
  wire [31:0]genlock;
  wire [31:24]\^gpio_i ;
  wire [63:0]gpio_o;
  wire [3:0]hub_state;
  wire [1:1]\^led ;
  wire pclk;
  wire prst;
  wire [6:0]usb_status;

  assign gpio_i[63:32] = genlock;
  assign gpio_i[31:24] = \^gpio_i [31:24];
  assign gpio_i[23:0] = gpio_o[23:0];
  assign led[1] = \^led [1];
  assign led[0] = frame_led0;
  system_ps_status_0_0_ps_status inst
       (.depth_overrun(depth_overrun),
        .frame_led1(frame_led1),
        .front_dbg(front_dbg),
        .gpio_i(\^gpio_i ),
        .gpio_o(gpio_o[23:22]),
        .hub_state(hub_state),
        .led(\^led ),
        .pclk(pclk),
        .prst(prst),
        .usb_status(usb_status));
endmodule

(* ORIG_REF_NAME = "ps_status" *) 
module system_ps_status_0_0_ps_status
   (gpio_i,
    led,
    front_dbg,
    hub_state,
    usb_status,
    gpio_o,
    frame_led1,
    depth_overrun,
    prst,
    pclk);
  output [7:0]gpio_i;
  output [0:0]led;
  input [19:0]front_dbg;
  input [3:0]hub_state;
  input [6:0]usb_status;
  input [1:0]gpio_o;
  input frame_led1;
  input depth_overrun;
  input prst;
  input pclk;

  wire depth_overrun;
  wire frame_led1;
  wire [19:0]front_dbg;
  wire [7:0]gpio_i;
  wire [1:0]gpio_o;
  wire [3:0]hub_state;
  wire [0:0]led;
  wire overrun_seen_i_1_n_0;
  wire pclk;
  wire prst;
  wire [7:7]st_flags;
  wire [6:0]usb_status;

  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \gpio_i[24]_INST_0 
       (.I0(front_dbg[4]),
        .I1(hub_state[0]),
        .I2(usb_status[0]),
        .I3(gpio_o[1]),
        .I4(gpio_o[0]),
        .I5(front_dbg[12]),
        .O(gpio_i[0]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \gpio_i[25]_INST_0 
       (.I0(front_dbg[5]),
        .I1(hub_state[1]),
        .I2(usb_status[1]),
        .I3(gpio_o[1]),
        .I4(gpio_o[0]),
        .I5(front_dbg[13]),
        .O(gpio_i[1]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \gpio_i[26]_INST_0 
       (.I0(front_dbg[6]),
        .I1(hub_state[2]),
        .I2(usb_status[2]),
        .I3(gpio_o[1]),
        .I4(gpio_o[0]),
        .I5(front_dbg[14]),
        .O(gpio_i[2]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \gpio_i[27]_INST_0 
       (.I0(front_dbg[7]),
        .I1(hub_state[3]),
        .I2(usb_status[3]),
        .I3(gpio_o[1]),
        .I4(gpio_o[0]),
        .I5(front_dbg[15]),
        .O(gpio_i[3]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \gpio_i[28]_INST_0 
       (.I0(front_dbg[8]),
        .I1(front_dbg[0]),
        .I2(usb_status[4]),
        .I3(gpio_o[1]),
        .I4(gpio_o[0]),
        .I5(front_dbg[16]),
        .O(gpio_i[4]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \gpio_i[29]_INST_0 
       (.I0(front_dbg[9]),
        .I1(front_dbg[1]),
        .I2(usb_status[5]),
        .I3(gpio_o[1]),
        .I4(gpio_o[0]),
        .I5(front_dbg[17]),
        .O(gpio_i[5]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \gpio_i[30]_INST_0 
       (.I0(front_dbg[10]),
        .I1(front_dbg[2]),
        .I2(usb_status[6]),
        .I3(gpio_o[1]),
        .I4(gpio_o[0]),
        .I5(front_dbg[18]),
        .O(gpio_i[6]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \gpio_i[31]_INST_0 
       (.I0(front_dbg[11]),
        .I1(front_dbg[3]),
        .I2(st_flags),
        .I3(gpio_o[1]),
        .I4(gpio_o[0]),
        .I5(front_dbg[19]),
        .O(gpio_i[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \led[1]_INST_0 
       (.I0(frame_led1),
        .I1(st_flags),
        .O(led));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    overrun_seen_i_1
       (.I0(st_flags),
        .I1(depth_overrun),
        .I2(prst),
        .O(overrun_seen_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    overrun_seen_reg
       (.C(pclk),
        .CE(1'b1),
        .D(overrun_seen_i_1_n_0),
        .Q(st_flags),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
