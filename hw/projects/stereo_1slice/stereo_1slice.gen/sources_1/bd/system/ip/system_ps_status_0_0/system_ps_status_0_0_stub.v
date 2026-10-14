// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Wed Oct 14 08:43:41 2026
// Host        : LAPTOP-THBQET7J running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/stereo-depth-cam/hw/projects/stereo_1slice/stereo_1slice.gen/sources_1/bd/system/ip/system_ps_status_0_0/system_ps_status_0_0_stub.v
// Design      : system_ps_status_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "system_ps_status_0_0,ps_status,{}" *) (* CORE_GENERATION_INFO = "system_ps_status_0_0,ps_status,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=ps_status,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "ps_status,Vivado 2025.2" *) 
module system_ps_status_0_0(pclk, prst, gpio_o, gpio_i, genlock, usb_status, 
  depth_overrun, front_dbg, hub_state, frame_led0, frame_led1, led)
/* synthesis syn_black_box black_box_pad_pin="prst,gpio_o[63:0],gpio_i[63:0],genlock[31:0],usb_status[6:0],depth_overrun,front_dbg[19:0],hub_state[3:0],frame_led0,frame_led1,led[1:0]" */
/* synthesis syn_force_seq_prim="pclk" */;
  input pclk /* synthesis syn_isclock = 1 */;
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
endmodule
