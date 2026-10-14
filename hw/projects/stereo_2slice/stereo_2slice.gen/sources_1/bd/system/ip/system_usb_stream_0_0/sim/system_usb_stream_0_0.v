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


// IP VLNV: xilinx.com:module_ref:usb_stream:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module system_usb_stream_0_0 (
  clk,
  pclk,
  cap_rst,
  prst,
  gpio_o,
  d_wr,
  d_byte,
  d_last,
  d_room,
  uvc,
  raw0_rd,
  raw0_dout,
  raw0_count,
  raw1_rd,
  raw1_dout,
  raw1_count,
  fx2_ifclk,
  fx2_flagb_n,
  fx2_fd,
  fx2_slwr_n,
  fx2_pktend_n,
  status
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
input wire clk;
input wire pclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 cap_rst RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME cap_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire cap_rst;
input wire prst;
input wire [63 : 0] gpio_o;
input wire d_wr;
input wire [7 : 0] d_byte;
input wire d_last;
output wire d_room;
output wire uvc;
output wire raw0_rd;
input wire [7 : 0] raw0_dout;
input wire [13 : 0] raw0_count;
output wire raw1_rd;
input wire [7 : 0] raw1_dout;
input wire [13 : 0] raw1_count;
input wire fx2_ifclk;
input wire fx2_flagb_n;
output wire [7 : 0] fx2_fd;
output wire fx2_slwr_n;
output wire fx2_pktend_n;
output wire [6 : 0] status;

  usb_stream #(
    .FIFO_AW(13)
  ) inst (
    .clk(clk),
    .pclk(pclk),
    .cap_rst(cap_rst),
    .prst(prst),
    .gpio_o(gpio_o),
    .d_wr(d_wr),
    .d_byte(d_byte),
    .d_last(d_last),
    .d_room(d_room),
    .uvc(uvc),
    .raw0_rd(raw0_rd),
    .raw0_dout(raw0_dout),
    .raw0_count(raw0_count),
    .raw1_rd(raw1_rd),
    .raw1_dout(raw1_dout),
    .raw1_count(raw1_count),
    .fx2_ifclk(fx2_ifclk),
    .fx2_flagb_n(fx2_flagb_n),
    .fx2_fd(fx2_fd),
    .fx2_slwr_n(fx2_slwr_n),
    .fx2_pktend_n(fx2_pktend_n),
    .status(status)
  );
endmodule
