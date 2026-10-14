// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Wed Oct 14 08:37:01 2026
// Host        : LAPTOP-THBQET7J running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/stereo-depth-cam/hw/projects/stereo_2slice/stereo_2slice.gen/sources_1/bd/system/ip/system_usb_stream_0_0/system_usb_stream_0_0_stub.v
// Design      : system_usb_stream_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "system_usb_stream_0_0,usb_stream,{}" *) (* CORE_GENERATION_INFO = "system_usb_stream_0_0,usb_stream,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=usb_stream,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,FIFO_AW=13}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "usb_stream,Vivado 2025.2" *) 
module system_usb_stream_0_0(clk, pclk, cap_rst, prst, gpio_o, d_wr, d_byte, d_last, 
  d_room, uvc, raw0_rd, raw0_dout, raw0_count, raw1_rd, raw1_dout, raw1_count, fx2_ifclk, 
  fx2_flagb_n, fx2_fd, fx2_slwr_n, fx2_pktend_n, status)
/* synthesis syn_black_box black_box_pad_pin="cap_rst,prst,gpio_o[63:0],d_wr,d_byte[7:0],d_last,d_room,uvc,raw0_rd,raw0_dout[7:0],raw0_count[13:0],raw1_rd,raw1_dout[7:0],raw1_count[13:0],fx2_ifclk,fx2_flagb_n,fx2_fd[7:0],fx2_slwr_n,fx2_pktend_n,status[6:0]" */
/* synthesis syn_force_seq_prim="clk" */
/* synthesis syn_force_seq_prim="pclk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  input pclk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 cap_rst RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME cap_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input cap_rst;
  input prst;
  input [63:0]gpio_o;
  input d_wr;
  input [7:0]d_byte;
  input d_last;
  output d_room;
  output uvc;
  output raw0_rd;
  input [7:0]raw0_dout;
  input [13:0]raw0_count;
  output raw1_rd;
  input [7:0]raw1_dout;
  input [13:0]raw1_count;
  input fx2_ifclk;
  input fx2_flagb_n;
  output [7:0]fx2_fd;
  output fx2_slwr_n;
  output fx2_pktend_n;
  output [6:0]status;
endmodule
