// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2026 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:cam_input:1.0
// IP Revision: 1

(* X_CORE_INFO = "cam_input,Vivado 2025.2" *)
(* CHECK_LICENSE_TYPE = "system_cam_input_0_0,cam_input,{}" *)
(* CORE_GENERATION_INFO = "system_cam_input_0_0,cam_input,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=cam_input,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,FIFO_AW=13}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module system_cam_input_0_0 (
  clk,
  pclk,
  gpio_o,
  cam_d,
  cam_pclk,
  cam_vsync,
  cam_href,
  cam_pwdn,
  cam2_d,
  cam2_pclk,
  cam2_vsync,
  cam2_href,
  cam2_pwdn,
  cap_rst,
  prst,
  raw0_rd,
  raw0_dout,
  raw0_count,
  raw1_rd,
  raw1_dout,
  raw1_count,
  rows_gray0,
  rows_gray1,
  sof_toggle0,
  sof_toggle1,
  frame_base0,
  frame_base1,
  rd_addr0,
  rd_addr1,
  rd_data0,
  rd_data1,
  start_us1,
  genlock,
  frame_led0,
  frame_led1
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
input wire clk;
input wire pclk;
input wire [63 : 0] gpio_o;
input wire [7 : 0] cam_d;
input wire cam_pclk;
input wire cam_vsync;
input wire cam_href;
output wire cam_pwdn;
input wire [7 : 0] cam2_d;
input wire cam2_pclk;
input wire cam2_vsync;
input wire cam2_href;
output wire cam2_pwdn;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 cap_rst RST" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME cap_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
output wire cap_rst;
output wire prst;
input wire raw0_rd;
output wire [7 : 0] raw0_dout;
output wire [13 : 0] raw0_count;
input wire raw1_rd;
output wire [7 : 0] raw1_dout;
output wire [13 : 0] raw1_count;
output wire [9 : 0] rows_gray0;
output wire [9 : 0] rows_gray1;
output wire sof_toggle0;
output wire sof_toggle1;
output wire [15 : 0] frame_base0;
output wire [15 : 0] frame_base1;
input wire [15 : 0] rd_addr0;
input wire [15 : 0] rd_addr1;
output wire [7 : 0] rd_data0;
output wire [7 : 0] rd_data1;
output wire [31 : 0] start_us1;
output wire [31 : 0] genlock;
output wire frame_led0;
output wire frame_led1;

  cam_input #(
    .FIFO_AW(13)
  ) inst (
    .clk(clk),
    .pclk(pclk),
    .gpio_o(gpio_o),
    .cam_d(cam_d),
    .cam_pclk(cam_pclk),
    .cam_vsync(cam_vsync),
    .cam_href(cam_href),
    .cam_pwdn(cam_pwdn),
    .cam2_d(cam2_d),
    .cam2_pclk(cam2_pclk),
    .cam2_vsync(cam2_vsync),
    .cam2_href(cam2_href),
    .cam2_pwdn(cam2_pwdn),
    .cap_rst(cap_rst),
    .prst(prst),
    .raw0_rd(raw0_rd),
    .raw0_dout(raw0_dout),
    .raw0_count(raw0_count),
    .raw1_rd(raw1_rd),
    .raw1_dout(raw1_dout),
    .raw1_count(raw1_count),
    .rows_gray0(rows_gray0),
    .rows_gray1(rows_gray1),
    .sof_toggle0(sof_toggle0),
    .sof_toggle1(sof_toggle1),
    .frame_base0(frame_base0),
    .frame_base1(frame_base1),
    .rd_addr0(rd_addr0),
    .rd_addr1(rd_addr1),
    .rd_data0(rd_data0),
    .rd_data1(rd_data1),
    .start_us1(start_us1),
    .genlock(genlock),
    .frame_led0(frame_led0),
    .frame_led1(frame_led1)
  );
endmodule
