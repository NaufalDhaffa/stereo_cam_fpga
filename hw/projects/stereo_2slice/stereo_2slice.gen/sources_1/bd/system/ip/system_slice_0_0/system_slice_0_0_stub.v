// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Wed Oct 14 08:37:29 2026
// Host        : LAPTOP-THBQET7J running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/stereo-depth-cam/hw/projects/stereo_2slice/stereo_2slice.gen/sources_1/bd/system/ip/system_slice_0_0/system_slice_0_0_stub.v
// Design      : system_slice_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "system_slice_0_0,tt_um_stereo_slice,{}" *) (* CORE_GENERATION_INFO = "system_slice_0_0,tt_um_stereo_slice,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=tt_um_stereo_slice,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "tt_um_stereo_slice,Vivado 2025.2" *) 
module system_slice_0_0(ui_in, uo_out, uio_in, uio_out, uio_oe, ena, clk, 
  rst_n)
/* synthesis syn_black_box black_box_pad_pin="ui_in[7:0],uo_out[7:0],uio_in[7:0],uio_out[7:0],uio_oe[7:0],ena,rst_n" */
/* synthesis syn_force_seq_prim="clk" */;
  input [7:0]ui_in;
  output [7:0]uo_out;
  input [7:0]uio_in;
  output [7:0]uio_out;
  output [7:0]uio_oe;
  input ena;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
endmodule
