// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Wed Oct 14 08:43:03 2026
// Host        : LAPTOP-THBQET7J running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/stereo-depth-cam/hw/projects/stereo_1slice/stereo_1slice.gen/sources_1/bd/system/ip/system_cam_input_0_0/system_cam_input_0_0_stub.v
// Design      : system_cam_input_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "system_cam_input_0_0,cam_input,{}" *) (* CORE_GENERATION_INFO = "system_cam_input_0_0,cam_input,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=cam_input,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,FIFO_AW=13}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "cam_input,Vivado 2025.2" *) 
module system_cam_input_0_0(clk, pclk, gpio_o, cam_d, cam_pclk, cam_vsync, 
  cam_href, cam_pwdn, cam2_d, cam2_pclk, cam2_vsync, cam2_href, cam2_pwdn, cap_rst, prst, raw0_rd, 
  raw0_dout, raw0_count, raw1_rd, raw1_dout, raw1_count, rows_gray0, rows_gray1, sof_toggle0, 
  sof_toggle1, frame_base0, frame_base1, rd_addr0, rd_addr1, rd_data0, rd_data1, start_us1, 
  genlock, frame_led0, frame_led1)
/* synthesis syn_black_box black_box_pad_pin="gpio_o[63:0],cam_d[7:0],cam_pclk,cam_vsync,cam_href,cam_pwdn,cam2_d[7:0],cam2_pclk,cam2_vsync,cam2_href,cam2_pwdn,cap_rst,prst,raw0_rd,raw0_dout[7:0],raw0_count[13:0],raw1_rd,raw1_dout[7:0],raw1_count[13:0],rows_gray0[9:0],rows_gray1[9:0],sof_toggle0,sof_toggle1,frame_base0[15:0],frame_base1[15:0],rd_addr0[15:0],rd_addr1[15:0],rd_data0[7:0],rd_data1[7:0],start_us1[31:0],genlock[31:0],frame_led0,frame_led1" */
/* synthesis syn_force_seq_prim="clk" */
/* synthesis syn_force_seq_prim="pclk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  input pclk /* synthesis syn_isclock = 1 */;
  input [63:0]gpio_o;
  input [7:0]cam_d;
  input cam_pclk;
  input cam_vsync;
  input cam_href;
  output cam_pwdn;
  input [7:0]cam2_d;
  input cam2_pclk;
  input cam2_vsync;
  input cam2_href;
  output cam2_pwdn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 cap_rst RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME cap_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output cap_rst;
  output prst;
  input raw0_rd;
  output [7:0]raw0_dout;
  output [13:0]raw0_count;
  input raw1_rd;
  output [7:0]raw1_dout;
  output [13:0]raw1_count;
  output [9:0]rows_gray0;
  output [9:0]rows_gray1;
  output sof_toggle0;
  output sof_toggle1;
  output [15:0]frame_base0;
  output [15:0]frame_base1;
  input [15:0]rd_addr0;
  input [15:0]rd_addr1;
  output [7:0]rd_data0;
  output [7:0]rd_data1;
  output [31:0]start_us1;
  output [31:0]genlock;
  output frame_led0;
  output frame_led1;
endmodule
