// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Wed Oct 14 08:36:54 2026
// Host        : LAPTOP-THBQET7J running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/stereo-depth-cam/hw/projects/stereo_2slice/stereo_2slice.gen/sources_1/bd/system/ip/system_chain_hub_0_0/system_chain_hub_0_0_stub.v
// Design      : system_chain_hub_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "system_chain_hub_0_0,chain_hub,{}" *) (* CORE_GENERATION_INFO = "system_chain_hub_0_0,chain_hub,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=chain_hub,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "chain_hub,Vivado 2025.2" *) 
module system_chain_hub_0_0(clk, rst, sig_valid, sig_ready, sig_left, 
  sig_left_ok, sig_right, sig_right_ok, dl, ul, slice_rst_n, slice_ena, chain_bottom, px_valid, px_y, 
  px_x, px_disp, frame_start, chain_n, state)
/* synthesis syn_black_box black_box_pad_pin="rst,sig_valid,sig_ready,sig_left[43:0],sig_left_ok,sig_right[43:0],sig_right_ok,dl[7:0],ul[7:0],slice_rst_n,slice_ena,chain_bottom[7:0],px_valid,px_y[9:0],px_x[9:0],px_disp[11:0],frame_start,chain_n[7:0],state[3:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input sig_valid;
  output sig_ready;
  input [43:0]sig_left;
  input sig_left_ok;
  input [43:0]sig_right;
  input sig_right_ok;
  output [7:0]dl;
  input [7:0]ul;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 slice_rst_n RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME slice_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output slice_rst_n;
  output slice_ena;
  output [7:0]chain_bottom;
  output px_valid;
  output [9:0]px_y;
  output [9:0]px_x;
  output [11:0]px_disp;
  output frame_start;
  output [7:0]chain_n;
  output [3:0]state;
endmodule
