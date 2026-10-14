// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Wed Oct 14 08:36:43 2026
// Host        : LAPTOP-THBQET7J running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/stereo-depth-cam/hw/projects/stereo_2slice/stereo_2slice.gen/sources_1/bd/system/ip/system_rectify_census_0_0/system_rectify_census_0_0_stub.v
// Design      : system_rectify_census_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "system_rectify_census_0_0,rectify_census,{}" *) (* CORE_GENERATION_INFO = "system_rectify_census_0_0,rectify_census,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=rectify_census,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "rectify_census,Vivado 2025.2" *) 
module system_rectify_census_0_0(clk, rst, rows_gray0, rows_gray1, sof_toggle0, 
  sof_toggle1, frame_base0, frame_base1, rd_addr0, rd_addr1, rd_data0, rd_data1, sig_valid, 
  sig_ready, sig_left, sig_left_ok, sig_right, sig_right_ok, l_valid, l_first, l_luma, overrun, dbg)
/* synthesis syn_black_box black_box_pad_pin="rst,rows_gray0[9:0],rows_gray1[9:0],sof_toggle0,sof_toggle1,frame_base0[15:0],frame_base1[15:0],rd_addr0[15:0],rd_addr1[15:0],rd_data0[7:0],rd_data1[7:0],sig_valid,sig_ready,sig_left[43:0],sig_left_ok,sig_right[43:0],sig_right_ok,l_valid,l_first,l_luma[7:0],overrun,dbg[19:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input [9:0]rows_gray0;
  input [9:0]rows_gray1;
  input sof_toggle0;
  input sof_toggle1;
  input [15:0]frame_base0;
  input [15:0]frame_base1;
  output [15:0]rd_addr0;
  output [15:0]rd_addr1;
  input [7:0]rd_data0;
  input [7:0]rd_data1;
  output sig_valid;
  input sig_ready;
  output [43:0]sig_left;
  output sig_left_ok;
  output [43:0]sig_right;
  output sig_right_ok;
  output l_valid;
  output l_first;
  output [7:0]l_luma;
  output overrun;
  output [19:0]dbg;
endmodule
