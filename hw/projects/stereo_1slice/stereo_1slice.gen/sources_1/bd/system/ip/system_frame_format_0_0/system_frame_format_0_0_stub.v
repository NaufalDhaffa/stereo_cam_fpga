// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Wed Oct 14 08:44:12 2026
// Host        : LAPTOP-THBQET7J running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/stereo-depth-cam/hw/projects/stereo_1slice/stereo_1slice.gen/sources_1/bd/system/ip/system_frame_format_0_0/system_frame_format_0_0_stub.v
// Design      : system_frame_format_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "system_frame_format_0_0,frame_format,{}" *) (* CORE_GENERATION_INFO = "system_frame_format_0_0,frame_format,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=frame_format,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,W=200,H=148}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "frame_format,Vivado 2025.2" *) 
module system_frame_format_0_0(clk, rst, px_valid, px_y, px_x, px_disp, hdr_start, 
  l_valid, l_first, l_luma, start_us, uvc, out_room, out_wr, out_byte, out_last)
/* synthesis syn_black_box black_box_pad_pin="rst,px_valid,px_y[9:0],px_x[9:0],px_disp[11:0],hdr_start,l_valid,l_first,l_luma[7:0],start_us[31:0],uvc,out_room,out_wr,out_byte[7:0],out_last" */
/* synthesis syn_force_seq_prim="clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input px_valid;
  input [9:0]px_y;
  input [9:0]px_x;
  input [11:0]px_disp;
  input hdr_start;
  input l_valid;
  input l_first;
  input [7:0]l_luma;
  input [31:0]start_us;
  input uvc;
  input out_room;
  output out_wr;
  output [7:0]out_byte;
  output out_last;
endmodule
