// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Wed Oct 14 08:36:09 2026
// Host        : LAPTOP-THBQET7J running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/stereo-depth-cam/hw/projects/stereo_2slice/stereo_2slice.gen/sources_1/bd/system/ip/system_frame_format_0_0/system_frame_format_0_0_sim_netlist.v
// Design      : system_frame_format_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_frame_format_0_0,frame_format,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "frame_format,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module system_frame_format_0_0
   (clk,
    rst,
    px_valid,
    px_y,
    px_x,
    px_disp,
    hdr_start,
    l_valid,
    l_first,
    l_luma,
    start_us,
    uvc,
    out_room,
    out_wr,
    out_byte,
    out_last);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0" *) input clk;
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

  wire clk;
  wire hdr_start;
  wire l_first;
  wire [7:0]l_luma;
  wire l_valid;
  wire [7:0]out_byte;
  wire out_last;
  wire out_room;
  wire out_wr;
  wire [11:0]px_disp;
  wire px_valid;
  wire [9:0]px_x;
  wire [9:0]px_y;
  wire rst;
  wire [31:0]start_us;
  wire uvc;

  system_frame_format_0_0_frame_format inst
       (.clk(clk),
        .hdr_start(hdr_start),
        .l_first(l_first),
        .l_luma(l_luma),
        .l_valid(l_valid),
        .out_byte(out_byte),
        .out_last(out_last),
        .out_room(out_room),
        .out_wr(out_wr),
        .px_disp(px_disp),
        .px_valid(px_valid),
        .px_x(px_x),
        .px_y(px_y),
        .rst(rst),
        .start_us(start_us),
        .uvc(uvc));
endmodule

(* ORIG_REF_NAME = "frame_format" *) 
module system_frame_format_0_0_frame_format
   (out_byte,
    out_wr,
    out_last,
    out_room,
    clk,
    l_valid,
    l_luma,
    l_first,
    px_valid,
    px_x,
    rst,
    start_us,
    hdr_start,
    px_disp,
    uvc,
    px_y);
  output [7:0]out_byte;
  output out_wr;
  output out_last;
  input out_room;
  input clk;
  input l_valid;
  input [7:0]l_luma;
  input l_first;
  input px_valid;
  input [9:0]px_x;
  input rst;
  input [31:0]start_us;
  input hdr_start;
  input [11:0]px_disp;
  input uvc;
  input [9:0]px_y;

  wire clk;
  wire [7:0]data1;
  wire [0:0]frame_no;
  wire \frame_no[0]_i_3_n_0 ;
  wire \frame_no_reg[0]_i_2_n_0 ;
  wire \frame_no_reg[0]_i_2_n_1 ;
  wire \frame_no_reg[0]_i_2_n_2 ;
  wire \frame_no_reg[0]_i_2_n_3 ;
  wire \frame_no_reg[0]_i_2_n_4 ;
  wire \frame_no_reg[0]_i_2_n_5 ;
  wire \frame_no_reg[0]_i_2_n_6 ;
  wire \frame_no_reg[0]_i_2_n_7 ;
  wire \frame_no_reg[12]_i_1_n_1 ;
  wire \frame_no_reg[12]_i_1_n_2 ;
  wire \frame_no_reg[12]_i_1_n_3 ;
  wire \frame_no_reg[12]_i_1_n_4 ;
  wire \frame_no_reg[12]_i_1_n_5 ;
  wire \frame_no_reg[12]_i_1_n_6 ;
  wire \frame_no_reg[12]_i_1_n_7 ;
  wire \frame_no_reg[4]_i_1_n_0 ;
  wire \frame_no_reg[4]_i_1_n_1 ;
  wire \frame_no_reg[4]_i_1_n_2 ;
  wire \frame_no_reg[4]_i_1_n_3 ;
  wire \frame_no_reg[4]_i_1_n_4 ;
  wire \frame_no_reg[4]_i_1_n_5 ;
  wire \frame_no_reg[4]_i_1_n_6 ;
  wire \frame_no_reg[4]_i_1_n_7 ;
  wire \frame_no_reg[8]_i_1_n_0 ;
  wire \frame_no_reg[8]_i_1_n_1 ;
  wire \frame_no_reg[8]_i_1_n_2 ;
  wire \frame_no_reg[8]_i_1_n_3 ;
  wire \frame_no_reg[8]_i_1_n_4 ;
  wire \frame_no_reg[8]_i_1_n_5 ;
  wire \frame_no_reg[8]_i_1_n_6 ;
  wire \frame_no_reg[8]_i_1_n_7 ;
  wire \frame_no_reg_n_0_[0] ;
  wire \frame_no_reg_n_0_[1] ;
  wire \frame_no_reg_n_0_[2] ;
  wire \frame_no_reg_n_0_[3] ;
  wire \frame_no_reg_n_0_[4] ;
  wire \frame_no_reg_n_0_[5] ;
  wire \frame_no_reg_n_0_[6] ;
  wire \frame_no_reg_n_0_[7] ;
  wire hdr_start;
  wire [3:0]hi_byte;
  wire [0:0]hi_byte_2;
  wire hi_pending;
  wire \hidx[4]_i_1_n_0 ;
  wire \hidx[5]_inv_i_1_n_0 ;
  wire \hidx[5]_inv_i_2_n_0 ;
  wire \hidx_reg_n_0_[0] ;
  wire \hidx_reg_n_0_[1] ;
  wire \hidx_reg_n_0_[2] ;
  wire \hidx_reg_n_0_[3] ;
  wire \hidx_reg_n_0_[4] ;
  wire l_first;
  wire [7:0]l_luma;
  wire l_valid;
  wire [7:0]out_byte;
  wire [7:0]out_byte_r;
  wire \out_byte_r[0]_i_1_n_0 ;
  wire \out_byte_r[0]_i_2_n_0 ;
  wire \out_byte_r[0]_i_3_n_0 ;
  wire \out_byte_r[0]_i_4_n_0 ;
  wire \out_byte_r[0]_i_5_n_0 ;
  wire \out_byte_r[1]_i_1_n_0 ;
  wire \out_byte_r[1]_i_2_n_0 ;
  wire \out_byte_r[1]_i_3_n_0 ;
  wire \out_byte_r[1]_i_4_n_0 ;
  wire \out_byte_r[1]_i_5_n_0 ;
  wire \out_byte_r[1]_i_6_n_0 ;
  wire \out_byte_r[1]_i_7_n_0 ;
  wire \out_byte_r[2]_i_1_n_0 ;
  wire \out_byte_r[2]_i_2_n_0 ;
  wire \out_byte_r[2]_i_3_n_0 ;
  wire \out_byte_r[2]_i_4_n_0 ;
  wire \out_byte_r[2]_i_5_n_0 ;
  wire \out_byte_r[3]_i_1_n_0 ;
  wire \out_byte_r[3]_i_2_n_0 ;
  wire \out_byte_r[3]_i_3_n_0 ;
  wire \out_byte_r[3]_i_4_n_0 ;
  wire \out_byte_r[3]_i_5_n_0 ;
  wire \out_byte_r[3]_i_6_n_0 ;
  wire \out_byte_r[4]_i_1_n_0 ;
  wire \out_byte_r[4]_i_2_n_0 ;
  wire \out_byte_r[4]_i_3_n_0 ;
  wire \out_byte_r[4]_i_4_n_0 ;
  wire \out_byte_r[4]_i_5_n_0 ;
  wire \out_byte_r[4]_i_6_n_0 ;
  wire \out_byte_r[5]_i_1_n_0 ;
  wire \out_byte_r[5]_i_2_n_0 ;
  wire \out_byte_r[5]_i_3_n_0 ;
  wire \out_byte_r[5]_i_4_n_0 ;
  wire \out_byte_r[5]_i_5_n_0 ;
  wire \out_byte_r[6]_i_1_n_0 ;
  wire \out_byte_r[6]_i_2_n_0 ;
  wire \out_byte_r[6]_i_3_n_0 ;
  wire \out_byte_r[6]_i_4_n_0 ;
  wire \out_byte_r[6]_i_5_n_0 ;
  wire \out_byte_r[6]_i_6_n_0 ;
  wire \out_byte_r[6]_i_7_n_0 ;
  wire \out_byte_r[6]_i_8_n_0 ;
  wire \out_byte_r[7]_i_10_n_0 ;
  wire \out_byte_r[7]_i_11_n_0 ;
  wire \out_byte_r[7]_i_12_n_0 ;
  wire \out_byte_r[7]_i_2_n_0 ;
  wire \out_byte_r[7]_i_3_n_0 ;
  wire \out_byte_r[7]_i_4_n_0 ;
  wire \out_byte_r[7]_i_5_n_0 ;
  wire \out_byte_r[7]_i_6_n_0 ;
  wire \out_byte_r[7]_i_7_n_0 ;
  wire \out_byte_r[7]_i_8_n_0 ;
  wire \out_byte_r[7]_i_9_n_0 ;
  wire [0:0]out_byte_r_1;
  wire out_last;
  wire out_room;
  wire out_wr;
  wire out_wr_r;
  wire out_wr_r_i_1_n_0;
  wire out_wr_r_reg_n_0;
  wire [4:0]p_2_in;
  wire [11:0]px_disp;
  wire px_valid;
  wire [9:0]px_x;
  wire [9:0]px_y;
  wire rst;
  wire [31:0]start_us;
  wire u_uvc_n_2;
  wire u_uvc_n_3;
  wire u_uvc_n_4;
  wire u_uvc_n_5;
  wire u_uvc_n_6;
  wire u_uvc_n_7;
  wire u_uvc_n_8;
  wire u_uvc_n_9;
  (* async_reg = "true" *) wire [31:0]us_a;
  (* async_reg = "true" *) wire [31:0]us_b;
  wire uvc;
  wire [3:3]\NLW_frame_no_reg[12]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h2)) 
    \frame_no[0]_i_1 
       (.I0(hdr_start),
        .I1(rst),
        .O(frame_no));
  LUT1 #(
    .INIT(2'h1)) 
    \frame_no[0]_i_3 
       (.I0(\frame_no_reg_n_0_[0] ),
        .O(\frame_no[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_no_reg[0] 
       (.C(clk),
        .CE(frame_no),
        .D(\frame_no_reg[0]_i_2_n_7 ),
        .Q(\frame_no_reg_n_0_[0] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \frame_no_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\frame_no_reg[0]_i_2_n_0 ,\frame_no_reg[0]_i_2_n_1 ,\frame_no_reg[0]_i_2_n_2 ,\frame_no_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\frame_no_reg[0]_i_2_n_4 ,\frame_no_reg[0]_i_2_n_5 ,\frame_no_reg[0]_i_2_n_6 ,\frame_no_reg[0]_i_2_n_7 }),
        .S({\frame_no_reg_n_0_[3] ,\frame_no_reg_n_0_[2] ,\frame_no_reg_n_0_[1] ,\frame_no[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \frame_no_reg[10] 
       (.C(clk),
        .CE(frame_no),
        .D(\frame_no_reg[8]_i_1_n_5 ),
        .Q(data1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_no_reg[11] 
       (.C(clk),
        .CE(frame_no),
        .D(\frame_no_reg[8]_i_1_n_4 ),
        .Q(data1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_no_reg[12] 
       (.C(clk),
        .CE(frame_no),
        .D(\frame_no_reg[12]_i_1_n_7 ),
        .Q(data1[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \frame_no_reg[12]_i_1 
       (.CI(\frame_no_reg[8]_i_1_n_0 ),
        .CO({\NLW_frame_no_reg[12]_i_1_CO_UNCONNECTED [3],\frame_no_reg[12]_i_1_n_1 ,\frame_no_reg[12]_i_1_n_2 ,\frame_no_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frame_no_reg[12]_i_1_n_4 ,\frame_no_reg[12]_i_1_n_5 ,\frame_no_reg[12]_i_1_n_6 ,\frame_no_reg[12]_i_1_n_7 }),
        .S(data1[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \frame_no_reg[13] 
       (.C(clk),
        .CE(frame_no),
        .D(\frame_no_reg[12]_i_1_n_6 ),
        .Q(data1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_no_reg[14] 
       (.C(clk),
        .CE(frame_no),
        .D(\frame_no_reg[12]_i_1_n_5 ),
        .Q(data1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_no_reg[15] 
       (.C(clk),
        .CE(frame_no),
        .D(\frame_no_reg[12]_i_1_n_4 ),
        .Q(data1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_no_reg[1] 
       (.C(clk),
        .CE(frame_no),
        .D(\frame_no_reg[0]_i_2_n_6 ),
        .Q(\frame_no_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_no_reg[2] 
       (.C(clk),
        .CE(frame_no),
        .D(\frame_no_reg[0]_i_2_n_5 ),
        .Q(\frame_no_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_no_reg[3] 
       (.C(clk),
        .CE(frame_no),
        .D(\frame_no_reg[0]_i_2_n_4 ),
        .Q(\frame_no_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_no_reg[4] 
       (.C(clk),
        .CE(frame_no),
        .D(\frame_no_reg[4]_i_1_n_7 ),
        .Q(\frame_no_reg_n_0_[4] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \frame_no_reg[4]_i_1 
       (.CI(\frame_no_reg[0]_i_2_n_0 ),
        .CO({\frame_no_reg[4]_i_1_n_0 ,\frame_no_reg[4]_i_1_n_1 ,\frame_no_reg[4]_i_1_n_2 ,\frame_no_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frame_no_reg[4]_i_1_n_4 ,\frame_no_reg[4]_i_1_n_5 ,\frame_no_reg[4]_i_1_n_6 ,\frame_no_reg[4]_i_1_n_7 }),
        .S({\frame_no_reg_n_0_[7] ,\frame_no_reg_n_0_[6] ,\frame_no_reg_n_0_[5] ,\frame_no_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \frame_no_reg[5] 
       (.C(clk),
        .CE(frame_no),
        .D(\frame_no_reg[4]_i_1_n_6 ),
        .Q(\frame_no_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_no_reg[6] 
       (.C(clk),
        .CE(frame_no),
        .D(\frame_no_reg[4]_i_1_n_5 ),
        .Q(\frame_no_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_no_reg[7] 
       (.C(clk),
        .CE(frame_no),
        .D(\frame_no_reg[4]_i_1_n_4 ),
        .Q(\frame_no_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_no_reg[8] 
       (.C(clk),
        .CE(frame_no),
        .D(\frame_no_reg[8]_i_1_n_7 ),
        .Q(data1[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \frame_no_reg[8]_i_1 
       (.CI(\frame_no_reg[4]_i_1_n_0 ),
        .CO({\frame_no_reg[8]_i_1_n_0 ,\frame_no_reg[8]_i_1_n_1 ,\frame_no_reg[8]_i_1_n_2 ,\frame_no_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frame_no_reg[8]_i_1_n_4 ,\frame_no_reg[8]_i_1_n_5 ,\frame_no_reg[8]_i_1_n_6 ,\frame_no_reg[8]_i_1_n_7 }),
        .S(data1[3:0]));
  FDRE #(
    .INIT(1'b0)) 
    \frame_no_reg[9] 
       (.C(clk),
        .CE(frame_no),
        .D(\frame_no_reg[8]_i_1_n_6 ),
        .Q(data1[1]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \hi_byte[3]_i_1 
       (.I0(px_valid),
        .I1(rst),
        .O(hi_byte_2));
  FDRE #(
    .INIT(1'b0)) 
    \hi_byte_reg[0] 
       (.C(clk),
        .CE(hi_byte_2),
        .D(px_disp[8]),
        .Q(hi_byte[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hi_byte_reg[1] 
       (.C(clk),
        .CE(hi_byte_2),
        .D(px_disp[9]),
        .Q(hi_byte[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hi_byte_reg[2] 
       (.C(clk),
        .CE(hi_byte_2),
        .D(px_disp[10]),
        .Q(hi_byte[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hi_byte_reg[3] 
       (.C(clk),
        .CE(hi_byte_2),
        .D(px_disp[11]),
        .Q(hi_byte[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    hi_pending_reg
       (.C(clk),
        .CE(1'b1),
        .D(px_valid),
        .Q(hi_pending),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \hidx[0]_i_1 
       (.I0(\hidx_reg_n_0_[0] ),
        .O(p_2_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \hidx[1]_i_1 
       (.I0(\hidx_reg_n_0_[0] ),
        .I1(\hidx_reg_n_0_[1] ),
        .O(p_2_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \hidx[2]_i_1 
       (.I0(\hidx_reg_n_0_[1] ),
        .I1(\hidx_reg_n_0_[0] ),
        .I2(\hidx_reg_n_0_[2] ),
        .O(p_2_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \hidx[3]_i_1 
       (.I0(\hidx_reg_n_0_[2] ),
        .I1(\hidx_reg_n_0_[0] ),
        .I2(\hidx_reg_n_0_[1] ),
        .I3(\hidx_reg_n_0_[3] ),
        .O(p_2_in[3]));
  LUT2 #(
    .INIT(4'hE)) 
    \hidx[4]_i_1 
       (.I0(hdr_start),
        .I1(rst),
        .O(\hidx[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \hidx[4]_i_2 
       (.I0(\hidx_reg_n_0_[0] ),
        .I1(\hidx_reg_n_0_[1] ),
        .I2(\hidx_reg_n_0_[2] ),
        .I3(\hidx_reg_n_0_[3] ),
        .I4(\hidx_reg_n_0_[4] ),
        .O(p_2_in[4]));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFF0000)) 
    \hidx[5]_inv_i_1 
       (.I0(\hidx_reg_n_0_[2] ),
        .I1(\hidx_reg_n_0_[3] ),
        .I2(\hidx_reg_n_0_[4] ),
        .I3(\hidx[5]_inv_i_2_n_0 ),
        .I4(hdr_start),
        .I5(out_wr_r),
        .O(\hidx[5]_inv_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \hidx[5]_inv_i_2 
       (.I0(\hidx_reg_n_0_[0] ),
        .I1(\hidx_reg_n_0_[1] ),
        .O(\hidx[5]_inv_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hidx_reg[0] 
       (.C(clk),
        .CE(out_wr_r),
        .D(p_2_in[0]),
        .Q(\hidx_reg_n_0_[0] ),
        .R(\hidx[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hidx_reg[1] 
       (.C(clk),
        .CE(out_wr_r),
        .D(p_2_in[1]),
        .Q(\hidx_reg_n_0_[1] ),
        .R(\hidx[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hidx_reg[2] 
       (.C(clk),
        .CE(out_wr_r),
        .D(p_2_in[2]),
        .Q(\hidx_reg_n_0_[2] ),
        .R(\hidx[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hidx_reg[3] 
       (.C(clk),
        .CE(out_wr_r),
        .D(p_2_in[3]),
        .Q(\hidx_reg_n_0_[3] ),
        .R(\hidx[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hidx_reg[4] 
       (.C(clk),
        .CE(out_wr_r),
        .D(p_2_in[4]),
        .Q(\hidx_reg_n_0_[4] ),
        .R(\hidx[4]_i_1_n_0 ));
  (* inverted = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \hidx_reg[5]_inv 
       (.C(clk),
        .CE(1'b1),
        .D(\hidx[5]_inv_i_1_n_0 ),
        .Q(out_wr_r),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_byte[0]_INST_0 
       (.I0(u_uvc_n_9),
        .I1(out_byte_r[0]),
        .I2(uvc),
        .O(out_byte[0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_byte[1]_INST_0 
       (.I0(u_uvc_n_8),
        .I1(out_byte_r[1]),
        .I2(uvc),
        .O(out_byte[1]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_byte[2]_INST_0 
       (.I0(u_uvc_n_7),
        .I1(out_byte_r[2]),
        .I2(uvc),
        .O(out_byte[2]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_byte[3]_INST_0 
       (.I0(u_uvc_n_6),
        .I1(out_byte_r[3]),
        .I2(uvc),
        .O(out_byte[3]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_byte[4]_INST_0 
       (.I0(u_uvc_n_5),
        .I1(out_byte_r[4]),
        .I2(uvc),
        .O(out_byte[4]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_byte[5]_INST_0 
       (.I0(u_uvc_n_4),
        .I1(out_byte_r[5]),
        .I2(uvc),
        .O(out_byte[5]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_byte[6]_INST_0 
       (.I0(u_uvc_n_3),
        .I1(out_byte_r[6]),
        .I2(uvc),
        .O(out_byte[6]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_byte[7]_INST_0 
       (.I0(u_uvc_n_2),
        .I1(out_byte_r[7]),
        .I2(uvc),
        .O(out_byte[7]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out_byte_r[0]_i_1 
       (.I0(\out_byte_r[0]_i_2_n_0 ),
        .I1(\out_byte_r[0]_i_3_n_0 ),
        .I2(\out_byte_r[0]_i_4_n_0 ),
        .I3(\out_byte_r[0]_i_5_n_0 ),
        .O(\out_byte_r[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF8888888F888)) 
    \out_byte_r[0]_i_2 
       (.I0(\out_byte_r[4]_i_3_n_0 ),
        .I1(data1[0]),
        .I2(hi_pending),
        .I3(hi_byte[0]),
        .I4(px_valid),
        .I5(px_disp[0]),
        .O(\out_byte_r[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0002010900020100)) 
    \out_byte_r[0]_i_3 
       (.I0(\hidx_reg_n_0_[3] ),
        .I1(\hidx_reg_n_0_[1] ),
        .I2(\out_byte_r[7]_i_7_n_0 ),
        .I3(\hidx_reg_n_0_[2] ),
        .I4(\hidx_reg_n_0_[4] ),
        .I5(\hidx_reg_n_0_[0] ),
        .O(\out_byte_r[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC0FFFF88C088C088)) 
    \out_byte_r[0]_i_4 
       (.I0(us_b[0]),
        .I1(\out_byte_r[6]_i_7_n_0 ),
        .I2(us_b[8]),
        .I3(\hidx_reg_n_0_[0] ),
        .I4(\hidx_reg_n_0_[2] ),
        .I5(\out_byte_r[6]_i_8_n_0 ),
        .O(\out_byte_r[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \out_byte_r[0]_i_5 
       (.I0(\out_byte_r[7]_i_9_n_0 ),
        .I1(us_b[16]),
        .I2(\out_byte_r[7]_i_10_n_0 ),
        .I3(us_b[24]),
        .I4(\frame_no_reg_n_0_[0] ),
        .I5(\out_byte_r[7]_i_11_n_0 ),
        .O(\out_byte_r[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEA)) 
    \out_byte_r[1]_i_1 
       (.I0(\out_byte_r[1]_i_2_n_0 ),
        .I1(px_disp[1]),
        .I2(px_valid),
        .I3(\out_byte_r[1]_i_3_n_0 ),
        .I4(\out_byte_r[1]_i_4_n_0 ),
        .O(\out_byte_r[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \out_byte_r[1]_i_2 
       (.I0(\out_byte_r[7]_i_11_n_0 ),
        .I1(\frame_no_reg_n_0_[1] ),
        .I2(\out_byte_r[4]_i_3_n_0 ),
        .I3(data1[1]),
        .I4(hi_byte[1]),
        .I5(\out_byte_r[1]_i_5_n_0 ),
        .O(\out_byte_r[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \out_byte_r[1]_i_3 
       (.I0(\out_byte_r[7]_i_9_n_0 ),
        .I1(us_b[17]),
        .I2(\out_byte_r[7]_i_10_n_0 ),
        .I3(us_b[25]),
        .I4(\out_byte_r[1]_i_6_n_0 ),
        .O(\out_byte_r[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBAAABAAABAAA)) 
    \out_byte_r[1]_i_4 
       (.I0(\out_byte_r[1]_i_7_n_0 ),
        .I1(\hidx_reg_n_0_[0] ),
        .I2(us_b[1]),
        .I3(\out_byte_r[6]_i_7_n_0 ),
        .I4(us_b[9]),
        .I5(\out_byte_r[3]_i_6_n_0 ),
        .O(\out_byte_r[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out_byte_r[1]_i_5 
       (.I0(hi_pending),
        .I1(px_valid),
        .O(\out_byte_r[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \out_byte_r[1]_i_6 
       (.I0(\hidx_reg_n_0_[3] ),
        .I1(\hidx_reg_n_0_[1] ),
        .I2(hi_pending),
        .I3(px_valid),
        .I4(\hidx_reg_n_0_[2] ),
        .I5(\hidx_reg_n_0_[4] ),
        .O(\out_byte_r[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000101000001)) 
    \out_byte_r[1]_i_7 
       (.I0(\hidx_reg_n_0_[4] ),
        .I1(\hidx_reg_n_0_[3] ),
        .I2(\out_byte_r[7]_i_7_n_0 ),
        .I3(\hidx_reg_n_0_[1] ),
        .I4(\hidx_reg_n_0_[0] ),
        .I5(\hidx_reg_n_0_[2] ),
        .O(\out_byte_r[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
    \out_byte_r[2]_i_1 
       (.I0(\out_byte_r[2]_i_2_n_0 ),
        .I1(\out_byte_r[2]_i_3_n_0 ),
        .I2(\out_byte_r[2]_i_4_n_0 ),
        .I3(\out_byte_r[2]_i_5_n_0 ),
        .I4(us_b[10]),
        .I5(\out_byte_r[3]_i_6_n_0 ),
        .O(\out_byte_r[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \out_byte_r[2]_i_2 
       (.I0(\out_byte_r[7]_i_9_n_0 ),
        .I1(us_b[18]),
        .I2(\out_byte_r[7]_i_10_n_0 ),
        .I3(us_b[26]),
        .I4(\frame_no_reg_n_0_[2] ),
        .I5(\out_byte_r[7]_i_11_n_0 ),
        .O(\out_byte_r[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF8888888F888)) 
    \out_byte_r[2]_i_3 
       (.I0(\out_byte_r[4]_i_3_n_0 ),
        .I1(data1[2]),
        .I2(hi_pending),
        .I3(hi_byte[2]),
        .I4(px_valid),
        .I5(px_disp[2]),
        .O(\out_byte_r[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h08040880)) 
    \out_byte_r[2]_i_4 
       (.I0(\hidx_reg_n_0_[3] ),
        .I1(\out_byte_r[7]_i_8_n_0 ),
        .I2(\hidx_reg_n_0_[2] ),
        .I3(\hidx_reg_n_0_[4] ),
        .I4(\hidx_reg_n_0_[0] ),
        .O(\out_byte_r[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \out_byte_r[2]_i_5 
       (.I0(us_b[2]),
        .I1(\out_byte_r[7]_i_4_n_0 ),
        .I2(\hidx_reg_n_0_[0] ),
        .I3(\hidx_reg_n_0_[2] ),
        .I4(\out_byte_r[6]_i_8_n_0 ),
        .O(\out_byte_r[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
    \out_byte_r[3]_i_1 
       (.I0(\out_byte_r[3]_i_2_n_0 ),
        .I1(\out_byte_r[3]_i_3_n_0 ),
        .I2(\out_byte_r[3]_i_4_n_0 ),
        .I3(\out_byte_r[3]_i_5_n_0 ),
        .I4(us_b[11]),
        .I5(\out_byte_r[3]_i_6_n_0 ),
        .O(\out_byte_r[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \out_byte_r[3]_i_2 
       (.I0(\out_byte_r[7]_i_9_n_0 ),
        .I1(us_b[19]),
        .I2(\out_byte_r[7]_i_10_n_0 ),
        .I3(us_b[27]),
        .I4(\frame_no_reg_n_0_[3] ),
        .I5(\out_byte_r[7]_i_11_n_0 ),
        .O(\out_byte_r[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF8888888F888)) 
    \out_byte_r[3]_i_3 
       (.I0(\out_byte_r[4]_i_3_n_0 ),
        .I1(data1[3]),
        .I2(hi_pending),
        .I3(hi_byte[3]),
        .I4(px_valid),
        .I5(px_disp[3]),
        .O(\out_byte_r[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h0C000100)) 
    \out_byte_r[3]_i_4 
       (.I0(\hidx_reg_n_0_[0] ),
        .I1(\hidx_reg_n_0_[4] ),
        .I2(\hidx_reg_n_0_[2] ),
        .I3(\out_byte_r[7]_i_8_n_0 ),
        .I4(\hidx_reg_n_0_[3] ),
        .O(\out_byte_r[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \out_byte_r[3]_i_5 
       (.I0(us_b[3]),
        .I1(\out_byte_r[7]_i_4_n_0 ),
        .I2(\hidx_reg_n_0_[0] ),
        .I3(\hidx_reg_n_0_[2] ),
        .I4(\out_byte_r[6]_i_8_n_0 ),
        .O(\out_byte_r[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \out_byte_r[3]_i_6 
       (.I0(\out_byte_r[7]_i_8_n_0 ),
        .I1(\hidx_reg_n_0_[3] ),
        .I2(\hidx_reg_n_0_[2] ),
        .I3(\hidx_reg_n_0_[4] ),
        .I4(\hidx_reg_n_0_[0] ),
        .O(\out_byte_r[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \out_byte_r[4]_i_1 
       (.I0(\out_byte_r[4]_i_2_n_0 ),
        .I1(px_valid),
        .I2(px_disp[4]),
        .I3(data1[4]),
        .I4(\out_byte_r[4]_i_3_n_0 ),
        .I5(\out_byte_r[4]_i_4_n_0 ),
        .O(\out_byte_r[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \out_byte_r[4]_i_2 
       (.I0(\out_byte_r[3]_i_6_n_0 ),
        .I1(us_b[12]),
        .I2(us_b[4]),
        .I3(\out_byte_r[7]_i_4_n_0 ),
        .I4(\out_byte_r[4]_i_5_n_0 ),
        .I5(\out_byte_r[4]_i_6_n_0 ),
        .O(\out_byte_r[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \out_byte_r[4]_i_3 
       (.I0(\hidx_reg_n_0_[3] ),
        .I1(\hidx_reg_n_0_[1] ),
        .I2(hi_pending),
        .I3(px_valid),
        .I4(\hidx_reg_n_0_[2] ),
        .I5(\hidx_reg_n_0_[0] ),
        .O(\out_byte_r[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \out_byte_r[4]_i_4 
       (.I0(\out_byte_r[7]_i_9_n_0 ),
        .I1(us_b[20]),
        .I2(\out_byte_r[7]_i_10_n_0 ),
        .I3(us_b[28]),
        .I4(\frame_no_reg_n_0_[4] ),
        .I5(\out_byte_r[7]_i_11_n_0 ),
        .O(\out_byte_r[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h02000002)) 
    \out_byte_r[4]_i_5 
       (.I0(\out_byte_r[7]_i_12_n_0 ),
        .I1(\hidx_reg_n_0_[3] ),
        .I2(\hidx_reg_n_0_[4] ),
        .I3(\hidx_reg_n_0_[0] ),
        .I4(\hidx_reg_n_0_[2] ),
        .O(\out_byte_r[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0001001C00000002)) 
    \out_byte_r[4]_i_6 
       (.I0(\hidx_reg_n_0_[0] ),
        .I1(\hidx_reg_n_0_[4] ),
        .I2(\hidx_reg_n_0_[2] ),
        .I3(\out_byte_r[7]_i_7_n_0 ),
        .I4(\hidx_reg_n_0_[1] ),
        .I5(\hidx_reg_n_0_[3] ),
        .O(\out_byte_r[4]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEA)) 
    \out_byte_r[5]_i_1 
       (.I0(\out_byte_r[5]_i_2_n_0 ),
        .I1(px_valid),
        .I2(px_disp[5]),
        .I3(\out_byte_r[5]_i_3_n_0 ),
        .I4(\out_byte_r[5]_i_4_n_0 ),
        .O(\out_byte_r[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00C0008000C00030)) 
    \out_byte_r[5]_i_2 
       (.I0(data1[5]),
        .I1(\hidx_reg_n_0_[3] ),
        .I2(\out_byte_r[7]_i_8_n_0 ),
        .I3(\hidx_reg_n_0_[2] ),
        .I4(\hidx_reg_n_0_[4] ),
        .I5(\hidx_reg_n_0_[0] ),
        .O(\out_byte_r[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF888888F2F22222)) 
    \out_byte_r[5]_i_3 
       (.I0(\out_byte_r[6]_i_8_n_0 ),
        .I1(\hidx_reg_n_0_[2] ),
        .I2(us_b[5]),
        .I3(us_b[13]),
        .I4(\out_byte_r[5]_i_5_n_0 ),
        .I5(\hidx_reg_n_0_[0] ),
        .O(\out_byte_r[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \out_byte_r[5]_i_4 
       (.I0(\out_byte_r[7]_i_9_n_0 ),
        .I1(us_b[21]),
        .I2(\out_byte_r[7]_i_10_n_0 ),
        .I3(us_b[29]),
        .I4(\frame_no_reg_n_0_[5] ),
        .I5(\out_byte_r[7]_i_11_n_0 ),
        .O(\out_byte_r[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \out_byte_r[5]_i_5 
       (.I0(\hidx_reg_n_0_[4] ),
        .I1(\hidx_reg_n_0_[2] ),
        .I2(\hidx_reg_n_0_[3] ),
        .I3(\hidx_reg_n_0_[1] ),
        .I4(hi_pending),
        .I5(px_valid),
        .O(\out_byte_r[5]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEA)) 
    \out_byte_r[6]_i_1 
       (.I0(\out_byte_r[6]_i_2_n_0 ),
        .I1(px_valid),
        .I2(px_disp[6]),
        .I3(\out_byte_r[6]_i_3_n_0 ),
        .I4(\out_byte_r[6]_i_4_n_0 ),
        .O(\out_byte_r[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00C030B000C00000)) 
    \out_byte_r[6]_i_2 
       (.I0(data1[6]),
        .I1(\hidx_reg_n_0_[3] ),
        .I2(\out_byte_r[7]_i_8_n_0 ),
        .I3(\hidx_reg_n_0_[2] ),
        .I4(\hidx_reg_n_0_[4] ),
        .I5(\hidx_reg_n_0_[0] ),
        .O(\out_byte_r[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00F8880000F888)) 
    \out_byte_r[6]_i_3 
       (.I0(\out_byte_r[6]_i_5_n_0 ),
        .I1(\out_byte_r[6]_i_6_n_0 ),
        .I2(us_b[6]),
        .I3(\out_byte_r[6]_i_7_n_0 ),
        .I4(\hidx_reg_n_0_[0] ),
        .I5(us_b[14]),
        .O(\out_byte_r[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \out_byte_r[6]_i_4 
       (.I0(\out_byte_r[6]_i_8_n_0 ),
        .I1(\hidx_reg_n_0_[0] ),
        .I2(\out_byte_r[7]_i_10_n_0 ),
        .I3(us_b[30]),
        .I4(\frame_no_reg_n_0_[6] ),
        .I5(\out_byte_r[7]_i_11_n_0 ),
        .O(\out_byte_r[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out_byte_r[6]_i_5 
       (.I0(\hidx_reg_n_0_[2] ),
        .I1(\hidx_reg_n_0_[3] ),
        .O(\out_byte_r[6]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0000008F)) 
    \out_byte_r[6]_i_6 
       (.I0(us_b[22]),
        .I1(\hidx_reg_n_0_[1] ),
        .I2(\hidx_reg_n_0_[4] ),
        .I3(hi_pending),
        .I4(px_valid),
        .O(\out_byte_r[6]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \out_byte_r[6]_i_7 
       (.I0(\hidx_reg_n_0_[3] ),
        .I1(\hidx_reg_n_0_[2] ),
        .I2(\hidx_reg_n_0_[1] ),
        .I3(hi_pending),
        .I4(px_valid),
        .O(\out_byte_r[6]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \out_byte_r[6]_i_8 
       (.I0(\hidx_reg_n_0_[4] ),
        .I1(\hidx_reg_n_0_[3] ),
        .I2(hi_pending),
        .I3(px_valid),
        .I4(\hidx_reg_n_0_[1] ),
        .O(\out_byte_r[6]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h0000EEFE)) 
    \out_byte_r[7]_i_1 
       (.I0(hi_pending),
        .I1(px_valid),
        .I2(out_wr_r),
        .I3(hdr_start),
        .I4(rst),
        .O(out_byte_r_1));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \out_byte_r[7]_i_10 
       (.I0(\hidx_reg_n_0_[3] ),
        .I1(\hidx_reg_n_0_[2] ),
        .I2(\hidx_reg_n_0_[4] ),
        .I3(\out_byte_r[7]_i_12_n_0 ),
        .I4(\hidx_reg_n_0_[0] ),
        .O(\out_byte_r[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \out_byte_r[7]_i_11 
       (.I0(\hidx_reg_n_0_[3] ),
        .I1(\hidx_reg_n_0_[1] ),
        .I2(hi_pending),
        .I3(px_valid),
        .I4(\hidx_reg_n_0_[2] ),
        .I5(\hidx_reg_n_0_[0] ),
        .O(\out_byte_r[7]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \out_byte_r[7]_i_12 
       (.I0(\hidx_reg_n_0_[1] ),
        .I1(px_valid),
        .I2(hi_pending),
        .O(\out_byte_r[7]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEA)) 
    \out_byte_r[7]_i_2 
       (.I0(\out_byte_r[7]_i_3_n_0 ),
        .I1(us_b[7]),
        .I2(\out_byte_r[7]_i_4_n_0 ),
        .I3(\out_byte_r[7]_i_5_n_0 ),
        .I4(\out_byte_r[7]_i_6_n_0 ),
        .O(\out_byte_r[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000200000002020D)) 
    \out_byte_r[7]_i_3 
       (.I0(\hidx_reg_n_0_[3] ),
        .I1(\hidx_reg_n_0_[1] ),
        .I2(\out_byte_r[7]_i_7_n_0 ),
        .I3(\hidx_reg_n_0_[2] ),
        .I4(\hidx_reg_n_0_[4] ),
        .I5(\hidx_reg_n_0_[0] ),
        .O(\out_byte_r[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \out_byte_r[7]_i_4 
       (.I0(\out_byte_r[7]_i_8_n_0 ),
        .I1(\hidx_reg_n_0_[3] ),
        .I2(\hidx_reg_n_0_[2] ),
        .I3(\hidx_reg_n_0_[4] ),
        .I4(\hidx_reg_n_0_[0] ),
        .O(\out_byte_r[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \out_byte_r[7]_i_5 
       (.I0(\out_byte_r[3]_i_6_n_0 ),
        .I1(us_b[15]),
        .I2(\out_byte_r[7]_i_9_n_0 ),
        .I3(us_b[23]),
        .I4(us_b[31]),
        .I5(\out_byte_r[7]_i_10_n_0 ),
        .O(\out_byte_r[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \out_byte_r[7]_i_6 
       (.I0(\out_byte_r[7]_i_11_n_0 ),
        .I1(\frame_no_reg_n_0_[7] ),
        .I2(\out_byte_r[4]_i_3_n_0 ),
        .I3(data1[7]),
        .I4(px_valid),
        .I5(px_disp[7]),
        .O(\out_byte_r[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \out_byte_r[7]_i_7 
       (.I0(hi_pending),
        .I1(px_valid),
        .O(\out_byte_r[7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \out_byte_r[7]_i_8 
       (.I0(px_valid),
        .I1(hi_pending),
        .I2(\hidx_reg_n_0_[1] ),
        .O(\out_byte_r[7]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \out_byte_r[7]_i_9 
       (.I0(\hidx_reg_n_0_[3] ),
        .I1(\hidx_reg_n_0_[2] ),
        .I2(\hidx_reg_n_0_[4] ),
        .I3(\out_byte_r[7]_i_12_n_0 ),
        .I4(\hidx_reg_n_0_[0] ),
        .O(\out_byte_r[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_byte_r_reg[0] 
       (.C(clk),
        .CE(out_byte_r_1),
        .D(\out_byte_r[0]_i_1_n_0 ),
        .Q(out_byte_r[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_byte_r_reg[1] 
       (.C(clk),
        .CE(out_byte_r_1),
        .D(\out_byte_r[1]_i_1_n_0 ),
        .Q(out_byte_r[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_byte_r_reg[2] 
       (.C(clk),
        .CE(out_byte_r_1),
        .D(\out_byte_r[2]_i_1_n_0 ),
        .Q(out_byte_r[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_byte_r_reg[3] 
       (.C(clk),
        .CE(out_byte_r_1),
        .D(\out_byte_r[3]_i_1_n_0 ),
        .Q(out_byte_r[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_byte_r_reg[4] 
       (.C(clk),
        .CE(out_byte_r_1),
        .D(\out_byte_r[4]_i_1_n_0 ),
        .Q(out_byte_r[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_byte_r_reg[5] 
       (.C(clk),
        .CE(out_byte_r_1),
        .D(\out_byte_r[5]_i_1_n_0 ),
        .Q(out_byte_r[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_byte_r_reg[6] 
       (.C(clk),
        .CE(out_byte_r_1),
        .D(\out_byte_r[6]_i_1_n_0 ),
        .Q(out_byte_r[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_byte_r_reg[7] 
       (.C(clk),
        .CE(out_byte_r_1),
        .D(\out_byte_r[7]_i_2_n_0 ),
        .Q(out_byte_r[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFFF4)) 
    out_wr_r_i_1
       (.I0(hdr_start),
        .I1(out_wr_r),
        .I2(px_valid),
        .I3(hi_pending),
        .O(out_wr_r_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    out_wr_r_reg
       (.C(clk),
        .CE(1'b1),
        .D(out_wr_r_i_1_n_0),
        .Q(out_wr_r_reg_n_0),
        .R(rst));
  system_frame_format_0_0_uvc_lines u_uvc
       (.Q({u_uvc_n_2,u_uvc_n_3,u_uvc_n_4,u_uvc_n_5,u_uvc_n_6,u_uvc_n_7,u_uvc_n_8,u_uvc_n_9}),
        .clk(clk),
        .l_first(l_first),
        .l_luma(l_luma),
        .l_valid(l_valid),
        .out_last(out_last),
        .out_room(out_room),
        .out_wr(out_wr),
        .out_wr_0(out_wr_r_reg_n_0),
        .px_disp(px_disp),
        .px_valid(px_valid),
        .px_x(px_x),
        .px_y(px_y),
        .rst(rst),
        .uvc(uvc));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_a_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(start_us[0]),
        .Q(us_a[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_a_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(start_us[10]),
        .Q(us_a[10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_a_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(start_us[11]),
        .Q(us_a[11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_a_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(start_us[12]),
        .Q(us_a[12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_a_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(start_us[13]),
        .Q(us_a[13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_a_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(start_us[14]),
        .Q(us_a[14]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_a_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(start_us[15]),
        .Q(us_a[15]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_a_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(start_us[16]),
        .Q(us_a[16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_a_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(start_us[17]),
        .Q(us_a[17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_a_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(start_us[18]),
        .Q(us_a[18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_a_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(start_us[19]),
        .Q(us_a[19]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_a_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(start_us[1]),
        .Q(us_a[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_a_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(start_us[20]),
        .Q(us_a[20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_a_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(start_us[21]),
        .Q(us_a[21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_a_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(start_us[22]),
        .Q(us_a[22]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_a_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(start_us[23]),
        .Q(us_a[23]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_a_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(start_us[24]),
        .Q(us_a[24]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_a_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(start_us[25]),
        .Q(us_a[25]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_a_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(start_us[26]),
        .Q(us_a[26]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_a_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(start_us[27]),
        .Q(us_a[27]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_a_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(start_us[28]),
        .Q(us_a[28]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_a_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(start_us[29]),
        .Q(us_a[29]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_a_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(start_us[2]),
        .Q(us_a[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_a_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(start_us[30]),
        .Q(us_a[30]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_a_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(start_us[31]),
        .Q(us_a[31]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_a_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(start_us[3]),
        .Q(us_a[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_a_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(start_us[4]),
        .Q(us_a[4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_a_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(start_us[5]),
        .Q(us_a[5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_a_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(start_us[6]),
        .Q(us_a[6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_a_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(start_us[7]),
        .Q(us_a[7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_a_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(start_us[8]),
        .Q(us_a[8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_a_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(start_us[9]),
        .Q(us_a[9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_b_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(us_a[0]),
        .Q(us_b[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_b_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(us_a[10]),
        .Q(us_b[10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_b_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(us_a[11]),
        .Q(us_b[11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_b_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(us_a[12]),
        .Q(us_b[12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_b_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(us_a[13]),
        .Q(us_b[13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_b_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(us_a[14]),
        .Q(us_b[14]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_b_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(us_a[15]),
        .Q(us_b[15]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_b_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(us_a[16]),
        .Q(us_b[16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_b_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(us_a[17]),
        .Q(us_b[17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_b_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(us_a[18]),
        .Q(us_b[18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_b_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(us_a[19]),
        .Q(us_b[19]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_b_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(us_a[1]),
        .Q(us_b[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_b_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(us_a[20]),
        .Q(us_b[20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_b_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(us_a[21]),
        .Q(us_b[21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_b_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(us_a[22]),
        .Q(us_b[22]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_b_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(us_a[23]),
        .Q(us_b[23]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_b_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(us_a[24]),
        .Q(us_b[24]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_b_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(us_a[25]),
        .Q(us_b[25]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_b_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(us_a[26]),
        .Q(us_b[26]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_b_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(us_a[27]),
        .Q(us_b[27]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_b_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(us_a[28]),
        .Q(us_b[28]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_b_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(us_a[29]),
        .Q(us_b[29]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_b_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(us_a[2]),
        .Q(us_b[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_b_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(us_a[30]),
        .Q(us_b[30]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_b_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(us_a[31]),
        .Q(us_b[31]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_b_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(us_a[3]),
        .Q(us_b[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_b_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(us_a[4]),
        .Q(us_b[4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_b_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(us_a[5]),
        .Q(us_b[5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_b_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(us_a[6]),
        .Q(us_b[6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_b_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(us_a[7]),
        .Q(us_b[7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_b_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(us_a[8]),
        .Q(us_b[8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \us_b_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(us_a[9]),
        .Q(us_b[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "mem_1r1w" *) 
module system_frame_format_0_0_mem_1r1w
   (\FSM_sequential_st_reg[0] ,
    first_row_reg,
    first_row_reg_0,
    lr,
    D,
    \FSM_sequential_st_reg[0]_0 ,
    \FSM_sequential_st_reg[0]_1 ,
    \FSM_sequential_st_reg[0]_2 ,
    \FSM_sequential_st_reg[0]_3 ,
    clk,
    l_valid,
    out,
    ADDRBWRADDR,
    l_luma,
    l_first,
    st__0,
    \n_reg[9] ,
    \n_reg[1] ,
    first_row,
    CO,
    \n_reg[1]_0 ,
    \lr_reg[0] ,
    \lr_reg[0]_0 ,
    DOBDO,
    \out_byte_reg[7] ,
    \out_byte_reg[7]_0 ,
    phase,
    eof,
    \out_byte_reg[0] ,
    \out_byte_reg[0]_0 ,
    \out_byte_reg[0]_1 ,
    \out_byte_reg[1] ,
    \FSM_sequential_st_reg[0]_4 );
  output \FSM_sequential_st_reg[0] ;
  output first_row_reg;
  output first_row_reg_0;
  output [0:0]lr;
  output [7:0]D;
  output \FSM_sequential_st_reg[0]_0 ;
  output \FSM_sequential_st_reg[0]_1 ;
  output \FSM_sequential_st_reg[0]_2 ;
  output \FSM_sequential_st_reg[0]_3 ;
  input clk;
  input l_valid;
  input [11:0]out;
  input [11:0]ADDRBWRADDR;
  input [7:0]l_luma;
  input l_first;
  input [2:0]st__0;
  input \n_reg[9] ;
  input \n_reg[1] ;
  input first_row;
  input [0:0]CO;
  input \n_reg[1]_0 ;
  input \lr_reg[0] ;
  input \lr_reg[0]_0 ;
  input [8:0]DOBDO;
  input \out_byte_reg[7] ;
  input \out_byte_reg[7]_0 ;
  input phase;
  input eof;
  input \out_byte_reg[0] ;
  input \out_byte_reg[0]_0 ;
  input \out_byte_reg[0]_1 ;
  input \out_byte_reg[1] ;
  input \FSM_sequential_st_reg[0]_4 ;

  wire [11:0]ADDRBWRADDR;
  wire [0:0]CO;
  wire [7:0]D;
  wire [8:0]DOBDO;
  wire \FSM_sequential_st[2]_i_2_n_0 ;
  wire \FSM_sequential_st_reg[0] ;
  wire \FSM_sequential_st_reg[0]_0 ;
  wire \FSM_sequential_st_reg[0]_1 ;
  wire \FSM_sequential_st_reg[0]_2 ;
  wire \FSM_sequential_st_reg[0]_3 ;
  wire \FSM_sequential_st_reg[0]_4 ;
  wire clk;
  wire eof;
  wire first_row;
  wire first_row_reg;
  wire first_row_reg_0;
  wire l_first;
  wire [7:0]l_luma;
  wire l_valid;
  wire [8:0]lq;
  wire [0:0]lr;
  wire \lr[0]_i_3_n_0 ;
  wire \lr_reg[0] ;
  wire \lr_reg[0]_0 ;
  wire \n_reg[1] ;
  wire \n_reg[1]_0 ;
  wire \n_reg[9] ;
  wire [11:0]out;
  wire \out_byte[1]_i_2_n_0 ;
  wire \out_byte[7]_i_4_n_0 ;
  wire \out_byte_reg[0] ;
  wire \out_byte_reg[0]_0 ;
  wire \out_byte_reg[0]_1 ;
  wire \out_byte_reg[1] ;
  wire \out_byte_reg[7] ;
  wire \out_byte_reg[7]_0 ;
  wire phase;
  wire phase_i_2_n_0;
  wire [2:0]st__0;
  wire NLW_mem_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_DOADO_UNCONNECTED;
  wire [31:8]NLW_mem_reg_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [3:1]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_RDADDRECC_UNCONNECTED;

  LUT6 #(
    .INIT(64'h0033003344764466)) 
    \FSM_sequential_st[0]_i_1 
       (.I0(\FSM_sequential_st[2]_i_2_n_0 ),
        .I1(st__0[0]),
        .I2(phase),
        .I3(st__0[2]),
        .I4(st__0[1]),
        .I5(\FSM_sequential_st_reg[0]_4 ),
        .O(\FSM_sequential_st_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h030C5708)) 
    \FSM_sequential_st[1]_i_1 
       (.I0(\FSM_sequential_st[2]_i_2_n_0 ),
        .I1(st__0[0]),
        .I2(st__0[2]),
        .I3(st__0[1]),
        .I4(\FSM_sequential_st_reg[0]_4 ),
        .O(\FSM_sequential_st_reg[0]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0C005850)) 
    \FSM_sequential_st[2]_i_1 
       (.I0(\FSM_sequential_st[2]_i_2_n_0 ),
        .I1(st__0[0]),
        .I2(st__0[2]),
        .I3(st__0[1]),
        .I4(\FSM_sequential_st_reg[0]_4 ),
        .O(\FSM_sequential_st_reg[0]_2 ));
  LUT6 #(
    .INIT(64'hDF00FFFFDF00DF00)) 
    \FSM_sequential_st[2]_i_2 
       (.I0(first_row),
        .I1(lq[8]),
        .I2(CO),
        .I3(\n_reg[1]_0 ),
        .I4(\n_reg[9] ),
        .I5(\n_reg[1] ),
        .O(\FSM_sequential_st[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0030000400000000)) 
    \lr[0]_i_1 
       (.I0(\lr[0]_i_3_n_0 ),
        .I1(\lr_reg[0] ),
        .I2(\lr_reg[0]_0 ),
        .I3(st__0[2]),
        .I4(st__0[1]),
        .I5(st__0[0]),
        .O(lr));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \lr[0]_i_3 
       (.I0(first_row),
        .I1(lq[8]),
        .I2(CO),
        .O(\lr[0]_i_3_n_0 ));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "36864" *) 
  (* RTL_RAM_NAME = "system_frame_format_0_0/inst/u_uvc/u_left/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "8" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    mem_reg
       (.ADDRARDADDR({1'b1,out,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,ADDRBWRADDR,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_mem_reg_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,l_luma}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,l_first}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b1}),
        .DOADO(NLW_mem_reg_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_DOBDO_UNCONNECTED[31:8],lq[7:0]}),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP({NLW_mem_reg_DOPBDOP_UNCONNECTED[3:1],lq[8]}),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(l_valid),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_mem_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_SBITERR_UNCONNECTED),
        .WEA({l_valid,l_valid,l_valid,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'hA8A808A8)) 
    \n[9]_i_1 
       (.I0(first_row_reg),
        .I1(st__0[0]),
        .I2(st__0[1]),
        .I3(\n_reg[9] ),
        .I4(st__0[2]),
        .O(\FSM_sequential_st_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFBFFAAAA)) 
    \n[9]_i_2 
       (.I0(\n_reg[1] ),
        .I1(first_row),
        .I2(lq[8]),
        .I3(CO),
        .I4(\n_reg[1]_0 ),
        .O(first_row_reg));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \out_byte[0]_i_1 
       (.I0(\out_byte_reg[0] ),
        .I1(\out_byte_reg[0]_0 ),
        .I2(lq[0]),
        .I3(DOBDO[1]),
        .I4(\out_byte_reg[0]_1 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hAAAFAAAB)) 
    \out_byte[1]_i_1 
       (.I0(\out_byte[1]_i_2_n_0 ),
        .I1(phase),
        .I2(st__0[0]),
        .I3(st__0[2]),
        .I4(eof),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hC0C0C0C0FFC0EAEA)) 
    \out_byte[1]_i_2 
       (.I0(DOBDO[0]),
        .I1(\out_byte_reg[0]_0 ),
        .I2(lq[1]),
        .I3(DOBDO[2]),
        .I4(\out_byte_reg[1] ),
        .I5(\out_byte_reg[7]_0 ),
        .O(\out_byte[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00A200A200A2)) 
    \out_byte[2]_i_1 
       (.I0(DOBDO[3]),
        .I1(\lr_reg[0] ),
        .I2(\lr_reg[0]_0 ),
        .I3(\out_byte_reg[7]_0 ),
        .I4(lq[2]),
        .I5(\out_byte_reg[0]_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFF00A200A200A2)) 
    \out_byte[3]_i_1 
       (.I0(DOBDO[4]),
        .I1(\lr_reg[0] ),
        .I2(\lr_reg[0]_0 ),
        .I3(\out_byte_reg[7]_0 ),
        .I4(lq[3]),
        .I5(\out_byte_reg[0]_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFF00A200A200A2)) 
    \out_byte[4]_i_1 
       (.I0(DOBDO[5]),
        .I1(\lr_reg[0] ),
        .I2(\lr_reg[0]_0 ),
        .I3(\out_byte_reg[7]_0 ),
        .I4(lq[4]),
        .I5(\out_byte_reg[0]_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFFF00A200A200A2)) 
    \out_byte[5]_i_1 
       (.I0(DOBDO[6]),
        .I1(\lr_reg[0] ),
        .I2(\lr_reg[0]_0 ),
        .I3(\out_byte_reg[7]_0 ),
        .I4(lq[5]),
        .I5(\out_byte_reg[0]_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFFF00A200A200A2)) 
    \out_byte[6]_i_1 
       (.I0(DOBDO[7]),
        .I1(\lr_reg[0] ),
        .I2(\lr_reg[0]_0 ),
        .I3(\out_byte_reg[7]_0 ),
        .I4(lq[6]),
        .I5(\out_byte_reg[0]_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFF0A0FCE0A)) 
    \out_byte[7]_i_2 
       (.I0(DOBDO[8]),
        .I1(\out_byte_reg[7] ),
        .I2(\out_byte_reg[7]_0 ),
        .I3(\lr_reg[0]_0 ),
        .I4(\lr_reg[0] ),
        .I5(\out_byte[7]_i_4_n_0 ),
        .O(D[7]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \out_byte[7]_i_4 
       (.I0(lq[7]),
        .I1(phase),
        .I2(st__0[0]),
        .I3(st__0[2]),
        .O(\out_byte[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00FB0C04)) 
    phase_i_1
       (.I0(st__0[0]),
        .I1(st__0[1]),
        .I2(st__0[2]),
        .I3(phase_i_2_n_0),
        .I4(phase),
        .O(\FSM_sequential_st_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0404000404040404)) 
    phase_i_2
       (.I0(\out_byte_reg[1] ),
        .I1(\out_byte_reg[7] ),
        .I2(st__0[1]),
        .I3(CO),
        .I4(lq[8]),
        .I5(first_row),
        .O(phase_i_2_n_0));
  LUT6 #(
    .INIT(64'h00FF00DF0000FF00)) 
    \wait2[1]_i_2 
       (.I0(first_row),
        .I1(lq[8]),
        .I2(CO),
        .I3(st__0[2]),
        .I4(st__0[1]),
        .I5(st__0[0]),
        .O(first_row_reg_0));
endmodule

(* ORIG_REF_NAME = "uvc_lines" *) 
module system_frame_format_0_0_uvc_lines
   (out_wr,
    out_last,
    Q,
    clk,
    l_valid,
    l_luma,
    l_first,
    px_valid,
    px_x,
    rst,
    out_room,
    px_disp,
    uvc,
    out_wr_0,
    px_y);
  output out_wr;
  output out_last;
  output [7:0]Q;
  input clk;
  input l_valid;
  input [7:0]l_luma;
  input l_first;
  input px_valid;
  input [9:0]px_x;
  input rst;
  input out_room;
  input [11:0]px_disp;
  input uvc;
  input out_wr_0;
  input [9:0]px_y;

  wire \FSM_sequential_st[2]_i_3_n_0 ;
  wire \FSM_sequential_st[2]_i_4_n_0 ;
  wire \FSM_sequential_st[2]_i_5_n_0 ;
  wire [7:0]Q;
  wire clk;
  wire [9:0]d10;
  wire [9:0]dq;
  wire [7:0]dr;
  wire \dr[0]_i_1_n_0 ;
  wire \dr[6]_i_1_n_0 ;
  wire \dr[6]_i_2_n_0 ;
  wire \dr[6]_i_4_n_0 ;
  wire eof;
  wire eof_i_1_n_0;
  wire eof_i_2_n_0;
  wire eof_i_3_n_0;
  wire fid;
  wire fid_i_1_n_0;
  wire fid_i_2_n_0;
  wire first_row;
  wire first_row_i_1_n_0;
  wire first_row_i_2_n_0;
  wire first_row_i_3_n_0;
  wire [9:4]in13;
  wire [7:1]in23;
  wire l_first;
  wire [7:0]l_luma;
  wire l_valid;
  wire [0:0]lr;
  wire \lr[0]_i_4_n_0 ;
  wire [11:0]lr_reg;
  wire \lr_reg[0]_i_2_n_0 ;
  wire \lr_reg[0]_i_2_n_1 ;
  wire \lr_reg[0]_i_2_n_2 ;
  wire \lr_reg[0]_i_2_n_3 ;
  wire \lr_reg[0]_i_2_n_4 ;
  wire \lr_reg[0]_i_2_n_5 ;
  wire \lr_reg[0]_i_2_n_6 ;
  wire \lr_reg[0]_i_2_n_7 ;
  wire \lr_reg[12]_i_1_n_7 ;
  wire \lr_reg[4]_i_1_n_0 ;
  wire \lr_reg[4]_i_1_n_1 ;
  wire \lr_reg[4]_i_1_n_2 ;
  wire \lr_reg[4]_i_1_n_3 ;
  wire \lr_reg[4]_i_1_n_4 ;
  wire \lr_reg[4]_i_1_n_5 ;
  wire \lr_reg[4]_i_1_n_6 ;
  wire \lr_reg[4]_i_1_n_7 ;
  wire \lr_reg[8]_i_1_n_0 ;
  wire \lr_reg[8]_i_1_n_1 ;
  wire \lr_reg[8]_i_1_n_2 ;
  wire \lr_reg[8]_i_1_n_3 ;
  wire \lr_reg[8]_i_1_n_4 ;
  wire \lr_reg[8]_i_1_n_5 ;
  wire \lr_reg[8]_i_1_n_6 ;
  wire \lr_reg[8]_i_1_n_7 ;
  wire [12:12]lr_reg__0;
  wire \lw[0]_i_2_n_0 ;
  wire [11:0]lw_reg;
  wire \lw_reg[0]_i_1_n_0 ;
  wire \lw_reg[0]_i_1_n_1 ;
  wire \lw_reg[0]_i_1_n_2 ;
  wire \lw_reg[0]_i_1_n_3 ;
  wire \lw_reg[0]_i_1_n_4 ;
  wire \lw_reg[0]_i_1_n_5 ;
  wire \lw_reg[0]_i_1_n_6 ;
  wire \lw_reg[0]_i_1_n_7 ;
  wire \lw_reg[12]_i_1_n_7 ;
  wire \lw_reg[4]_i_1_n_0 ;
  wire \lw_reg[4]_i_1_n_1 ;
  wire \lw_reg[4]_i_1_n_2 ;
  wire \lw_reg[4]_i_1_n_3 ;
  wire \lw_reg[4]_i_1_n_4 ;
  wire \lw_reg[4]_i_1_n_5 ;
  wire \lw_reg[4]_i_1_n_6 ;
  wire \lw_reg[4]_i_1_n_7 ;
  wire \lw_reg[8]_i_1_n_0 ;
  wire \lw_reg[8]_i_1_n_1 ;
  wire \lw_reg[8]_i_1_n_2 ;
  wire \lw_reg[8]_i_1_n_3 ;
  wire \lw_reg[8]_i_1_n_4 ;
  wire \lw_reg[8]_i_1_n_5 ;
  wire \lw_reg[8]_i_1_n_6 ;
  wire \lw_reg[8]_i_1_n_7 ;
  wire [12:12]lw_reg__0;
  wire \n[0]_i_1_n_0 ;
  wire \n[1]_i_1_n_0 ;
  wire \n[2]_i_1_n_0 ;
  wire \n[3]_i_1_n_0 ;
  wire \n[7]_i_2_n_0 ;
  wire \n[9]_i_4_n_0 ;
  wire \n[9]_i_5_n_0 ;
  wire \n[9]_i_6_n_0 ;
  wire \n[9]_i_7_n_0 ;
  wire \n_reg_n_0_[0] ;
  wire \n_reg_n_0_[1] ;
  wire \n_reg_n_0_[2] ;
  wire \n_reg_n_0_[3] ;
  wire \n_reg_n_0_[4] ;
  wire \n_reg_n_0_[5] ;
  wire \n_reg_n_0_[6] ;
  wire \n_reg_n_0_[7] ;
  wire \n_reg_n_0_[8] ;
  wire \n_reg_n_0_[9] ;
  wire [7:0]out_byte0_in;
  wire \out_byte[0]_i_2_n_0 ;
  wire \out_byte[0]_i_3_n_0 ;
  wire \out_byte[0]_i_4_n_0 ;
  wire \out_byte[1]_i_3_n_0 ;
  wire \out_byte[6]_i_2_n_0 ;
  wire \out_byte[7]_i_1_n_0 ;
  wire \out_byte[7]_i_3_n_0 ;
  wire out_last;
  wire out_last_i_1_n_0;
  wire out_last_i_2_n_0;
  wire out_room;
  wire out_wr;
  wire out_wr_0;
  wire out_wr_i_1_n_0;
  wire phase;
  wire [11:0]px_disp;
  wire px_valid;
  wire [9:0]px_x;
  wire [9:0]px_y;
  wire rst;
  wire send_i_1_n_0;
  wire send_i_2_n_0;
  wire send_i_3_n_0;
  wire send_reg_n_0;
  wire [2:0]st__0;
  wire u_last;
  wire u_left_n_0;
  wire u_left_n_1;
  wire u_left_n_12;
  wire u_left_n_13;
  wire u_left_n_14;
  wire u_left_n_15;
  wire u_left_n_2;
  wire u_wr;
  wire uvc;
  wire wait22;
  wire wait22_carry__0_i_1_n_0;
  wire wait22_carry_i_1_n_0;
  wire wait22_carry_i_2_n_0;
  wire wait22_carry_i_3_n_0;
  wire wait22_carry_i_4_n_0;
  wire wait22_carry_n_0;
  wire wait22_carry_n_1;
  wire wait22_carry_n_2;
  wire wait22_carry_n_3;
  wire \wait2[0]_i_1_n_0 ;
  wire \wait2[1]_i_1_n_0 ;
  wire \wait2[1]_i_3_n_0 ;
  wire \wait2_reg_n_0_[0] ;
  wire \wait2_reg_n_0_[1] ;
  wire [15:0]NLW_drow_reg_DOADO_UNCONNECTED;
  wire [15:10]NLW_drow_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_drow_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_drow_reg_DOPBDOP_UNCONNECTED;
  wire [3:0]\NLW_lr_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_lr_reg[12]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_lw_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_lw_reg[12]_i_1_O_UNCONNECTED ;
  wire [3:0]NLW_wait22_carry_O_UNCONNECTED;
  wire [3:1]NLW_wait22_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_wait22_carry__0_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hE1000000)) 
    \FSM_sequential_st[2]_i_3 
       (.I0(st__0[1]),
        .I1(st__0[0]),
        .I2(st__0[2]),
        .I3(\FSM_sequential_st[2]_i_4_n_0 ),
        .I4(\FSM_sequential_st[2]_i_5_n_0 ),
        .O(\FSM_sequential_st[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \FSM_sequential_st[2]_i_4 
       (.I0(px_x[0]),
        .I1(px_x[1]),
        .I2(px_x[2]),
        .I3(px_x[4]),
        .I4(px_x[3]),
        .O(\FSM_sequential_st[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \FSM_sequential_st[2]_i_5 
       (.I0(px_x[7]),
        .I1(px_x[8]),
        .I2(px_x[6]),
        .I3(px_x[5]),
        .I4(px_x[9]),
        .I5(px_valid),
        .O(\FSM_sequential_st[2]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "S_IDLE:000,S_SYNC:001,S_HDR:010,S_LEFT:011,S_DEPTH:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_st_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(u_left_n_13),
        .Q(st__0[0]),
        .R(rst));
  (* FSM_ENCODED_STATES = "S_IDLE:000,S_SYNC:001,S_HDR:010,S_LEFT:011,S_DEPTH:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_st_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(u_left_n_15),
        .Q(st__0[1]),
        .R(rst));
  (* FSM_ENCODED_STATES = "S_IDLE:000,S_SYNC:001,S_HDR:010,S_LEFT:011,S_DEPTH:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_st_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(u_left_n_14),
        .Q(st__0[2]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \dr[0]_i_1 
       (.I0(dr[0]),
        .O(\dr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \dr[1]_i_1 
       (.I0(dr[0]),
        .I1(dr[1]),
        .O(in23[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \dr[2]_i_1 
       (.I0(dr[1]),
        .I1(dr[0]),
        .I2(dr[2]),
        .O(in23[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \dr[3]_i_1 
       (.I0(dr[2]),
        .I1(dr[0]),
        .I2(dr[1]),
        .I3(dr[3]),
        .O(in23[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \dr[4]_i_1 
       (.I0(dr[3]),
        .I1(dr[1]),
        .I2(dr[0]),
        .I3(dr[2]),
        .I4(dr[4]),
        .O(in23[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \dr[5]_i_1 
       (.I0(dr[4]),
        .I1(dr[2]),
        .I2(dr[0]),
        .I3(dr[1]),
        .I4(dr[3]),
        .I5(dr[5]),
        .O(in23[5]));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \dr[6]_i_1 
       (.I0(\n[9]_i_4_n_0 ),
        .I1(st__0[2]),
        .I2(\wait2_reg_n_0_[1] ),
        .I3(\wait2_reg_n_0_[0] ),
        .I4(st__0[1]),
        .I5(st__0[0]),
        .O(\dr[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h10000000000000C0)) 
    \dr[6]_i_2 
       (.I0(\n[9]_i_4_n_0 ),
        .I1(st__0[2]),
        .I2(\wait2_reg_n_0_[1] ),
        .I3(\wait2_reg_n_0_[0] ),
        .I4(st__0[1]),
        .I5(st__0[0]),
        .O(\dr[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \dr[6]_i_3 
       (.I0(\dr[6]_i_4_n_0 ),
        .I1(dr[4]),
        .I2(dr[5]),
        .I3(dr[6]),
        .O(in23[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \dr[6]_i_4 
       (.I0(dr[2]),
        .I1(dr[0]),
        .I2(dr[1]),
        .I3(dr[3]),
        .O(\dr[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \dr[7]_i_1 
       (.I0(\dr[6]_i_4_n_0 ),
        .I1(dr[6]),
        .I2(dr[5]),
        .I3(dr[4]),
        .I4(dr[7]),
        .O(in23[7]));
  FDRE #(
    .INIT(1'b0)) 
    \dr_reg[0] 
       (.C(clk),
        .CE(\dr[6]_i_2_n_0 ),
        .D(\dr[0]_i_1_n_0 ),
        .Q(dr[0]),
        .R(\dr[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dr_reg[1] 
       (.C(clk),
        .CE(\dr[6]_i_2_n_0 ),
        .D(in23[1]),
        .Q(dr[1]),
        .R(\dr[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dr_reg[2] 
       (.C(clk),
        .CE(\dr[6]_i_2_n_0 ),
        .D(in23[2]),
        .Q(dr[2]),
        .R(\dr[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dr_reg[3] 
       (.C(clk),
        .CE(\dr[6]_i_2_n_0 ),
        .D(in23[3]),
        .Q(dr[3]),
        .R(\dr[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dr_reg[4] 
       (.C(clk),
        .CE(\dr[6]_i_2_n_0 ),
        .D(in23[4]),
        .Q(dr[4]),
        .R(\dr[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dr_reg[5] 
       (.C(clk),
        .CE(\dr[6]_i_2_n_0 ),
        .D(in23[5]),
        .Q(dr[5]),
        .R(\dr[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dr_reg[6] 
       (.C(clk),
        .CE(\dr[6]_i_2_n_0 ),
        .D(in23[6]),
        .Q(dr[6]),
        .R(\dr[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dr_reg[7] 
       (.C(clk),
        .CE(\dr[6]_i_2_n_0 ),
        .D(in23[7]),
        .Q(dr[7]),
        .R(\dr[6]_i_1_n_0 ));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d10" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d10" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2560" *) 
  (* RTL_RAM_NAME = "system_frame_format_0_0/inst/u_uvc/drow_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "768" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "9" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    drow_reg
       (.ADDRARDADDR({1'b1,1'b1,px_x[7:0],1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,dr,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,d10}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_drow_reg_DOADO_UNCONNECTED[15:0]),
        .DOBDO({NLW_drow_reg_DOBDO_UNCONNECTED[15:10],dq}),
        .DOPADOP(NLW_drow_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_drow_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(px_valid),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b1,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'hFE)) 
    drow_reg_i_1
       (.I0(px_disp[11]),
        .I1(px_disp[10]),
        .I2(px_disp[9]),
        .O(d10[9]));
  LUT3 #(
    .INIT(8'hFE)) 
    drow_reg_i_10
       (.I0(px_disp[11]),
        .I1(px_disp[10]),
        .I2(px_disp[0]),
        .O(d10[0]));
  LUT3 #(
    .INIT(8'hFE)) 
    drow_reg_i_2
       (.I0(px_disp[11]),
        .I1(px_disp[10]),
        .I2(px_disp[8]),
        .O(d10[8]));
  LUT3 #(
    .INIT(8'hFE)) 
    drow_reg_i_3
       (.I0(px_disp[11]),
        .I1(px_disp[10]),
        .I2(px_disp[7]),
        .O(d10[7]));
  LUT3 #(
    .INIT(8'hFE)) 
    drow_reg_i_4
       (.I0(px_disp[11]),
        .I1(px_disp[10]),
        .I2(px_disp[6]),
        .O(d10[6]));
  LUT3 #(
    .INIT(8'hFE)) 
    drow_reg_i_5
       (.I0(px_disp[11]),
        .I1(px_disp[10]),
        .I2(px_disp[5]),
        .O(d10[5]));
  LUT3 #(
    .INIT(8'hFE)) 
    drow_reg_i_6
       (.I0(px_disp[11]),
        .I1(px_disp[10]),
        .I2(px_disp[4]),
        .O(d10[4]));
  LUT3 #(
    .INIT(8'hFE)) 
    drow_reg_i_7
       (.I0(px_disp[11]),
        .I1(px_disp[10]),
        .I2(px_disp[3]),
        .O(d10[3]));
  LUT3 #(
    .INIT(8'hFE)) 
    drow_reg_i_8
       (.I0(px_disp[11]),
        .I1(px_disp[10]),
        .I2(px_disp[2]),
        .O(d10[2]));
  LUT3 #(
    .INIT(8'hFE)) 
    drow_reg_i_9
       (.I0(px_disp[11]),
        .I1(px_disp[10]),
        .I2(px_disp[1]),
        .O(d10[1]));
  LUT6 #(
    .INIT(64'hFFFFEFFF10000000)) 
    eof_i_1
       (.I0(st__0[0]),
        .I1(st__0[1]),
        .I2(send_i_2_n_0),
        .I3(send_i_3_n_0),
        .I4(eof_i_2_n_0),
        .I5(eof),
        .O(eof_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    eof_i_2
       (.I0(px_y[6]),
        .I1(px_y[5]),
        .I2(px_y[3]),
        .I3(px_y[9]),
        .I4(px_y[8]),
        .I5(eof_i_3_n_0),
        .O(eof_i_2_n_0));
  LUT5 #(
    .INIT(32'hFF7FFFFF)) 
    eof_i_3
       (.I0(px_y[0]),
        .I1(px_y[1]),
        .I2(px_y[4]),
        .I3(px_y[2]),
        .I4(px_y[7]),
        .O(eof_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    eof_reg
       (.C(clk),
        .CE(1'b1),
        .D(eof_i_1_n_0),
        .Q(eof),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFBFFF00004000)) 
    fid_i_1
       (.I0(\n[9]_i_4_n_0 ),
        .I1(fid_i_2_n_0),
        .I2(eof),
        .I3(st__0[2]),
        .I4(out_last_i_2_n_0),
        .I5(fid),
        .O(fid_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    fid_i_2
       (.I0(\wait2_reg_n_0_[0] ),
        .I1(\wait2_reg_n_0_[1] ),
        .O(fid_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    fid_reg
       (.C(clk),
        .CE(1'b1),
        .D(fid_i_1_n_0),
        .Q(fid),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFFFEFFF10000000)) 
    first_row_i_1
       (.I0(st__0[0]),
        .I1(st__0[1]),
        .I2(send_i_2_n_0),
        .I3(send_i_3_n_0),
        .I4(first_row_i_2_n_0),
        .I5(first_row),
        .O(first_row_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    first_row_i_2
       (.I0(px_y[7]),
        .I1(px_y[6]),
        .I2(px_y[5]),
        .I3(px_y[9]),
        .I4(px_y[8]),
        .I5(first_row_i_3_n_0),
        .O(first_row_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    first_row_i_3
       (.I0(px_y[2]),
        .I1(px_y[0]),
        .I2(px_y[1]),
        .I3(px_y[4]),
        .I4(px_y[3]),
        .O(first_row_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    first_row_reg
       (.C(clk),
        .CE(1'b1),
        .D(first_row_i_1_n_0),
        .Q(first_row),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \lr[0]_i_4 
       (.I0(lr_reg[0]),
        .O(\lr[0]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lr_reg[0] 
       (.C(clk),
        .CE(lr),
        .D(\lr_reg[0]_i_2_n_7 ),
        .Q(lr_reg[0]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \lr_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\lr_reg[0]_i_2_n_0 ,\lr_reg[0]_i_2_n_1 ,\lr_reg[0]_i_2_n_2 ,\lr_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\lr_reg[0]_i_2_n_4 ,\lr_reg[0]_i_2_n_5 ,\lr_reg[0]_i_2_n_6 ,\lr_reg[0]_i_2_n_7 }),
        .S({lr_reg[3:1],\lr[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \lr_reg[10] 
       (.C(clk),
        .CE(lr),
        .D(\lr_reg[8]_i_1_n_5 ),
        .Q(lr_reg[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \lr_reg[11] 
       (.C(clk),
        .CE(lr),
        .D(\lr_reg[8]_i_1_n_4 ),
        .Q(lr_reg[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \lr_reg[12] 
       (.C(clk),
        .CE(lr),
        .D(\lr_reg[12]_i_1_n_7 ),
        .Q(lr_reg__0),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \lr_reg[12]_i_1 
       (.CI(\lr_reg[8]_i_1_n_0 ),
        .CO(\NLW_lr_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_lr_reg[12]_i_1_O_UNCONNECTED [3:1],\lr_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,lr_reg__0}));
  FDRE #(
    .INIT(1'b0)) 
    \lr_reg[1] 
       (.C(clk),
        .CE(lr),
        .D(\lr_reg[0]_i_2_n_6 ),
        .Q(lr_reg[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \lr_reg[2] 
       (.C(clk),
        .CE(lr),
        .D(\lr_reg[0]_i_2_n_5 ),
        .Q(lr_reg[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \lr_reg[3] 
       (.C(clk),
        .CE(lr),
        .D(\lr_reg[0]_i_2_n_4 ),
        .Q(lr_reg[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \lr_reg[4] 
       (.C(clk),
        .CE(lr),
        .D(\lr_reg[4]_i_1_n_7 ),
        .Q(lr_reg[4]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \lr_reg[4]_i_1 
       (.CI(\lr_reg[0]_i_2_n_0 ),
        .CO({\lr_reg[4]_i_1_n_0 ,\lr_reg[4]_i_1_n_1 ,\lr_reg[4]_i_1_n_2 ,\lr_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\lr_reg[4]_i_1_n_4 ,\lr_reg[4]_i_1_n_5 ,\lr_reg[4]_i_1_n_6 ,\lr_reg[4]_i_1_n_7 }),
        .S(lr_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \lr_reg[5] 
       (.C(clk),
        .CE(lr),
        .D(\lr_reg[4]_i_1_n_6 ),
        .Q(lr_reg[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \lr_reg[6] 
       (.C(clk),
        .CE(lr),
        .D(\lr_reg[4]_i_1_n_5 ),
        .Q(lr_reg[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \lr_reg[7] 
       (.C(clk),
        .CE(lr),
        .D(\lr_reg[4]_i_1_n_4 ),
        .Q(lr_reg[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \lr_reg[8] 
       (.C(clk),
        .CE(lr),
        .D(\lr_reg[8]_i_1_n_7 ),
        .Q(lr_reg[8]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \lr_reg[8]_i_1 
       (.CI(\lr_reg[4]_i_1_n_0 ),
        .CO({\lr_reg[8]_i_1_n_0 ,\lr_reg[8]_i_1_n_1 ,\lr_reg[8]_i_1_n_2 ,\lr_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\lr_reg[8]_i_1_n_4 ,\lr_reg[8]_i_1_n_5 ,\lr_reg[8]_i_1_n_6 ,\lr_reg[8]_i_1_n_7 }),
        .S(lr_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \lr_reg[9] 
       (.C(clk),
        .CE(lr),
        .D(\lr_reg[8]_i_1_n_6 ),
        .Q(lr_reg[9]),
        .R(rst));
  LUT1 #(
    .INIT(2'h1)) 
    \lw[0]_i_2 
       (.I0(lw_reg[0]),
        .O(\lw[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lw_reg[0] 
       (.C(clk),
        .CE(l_valid),
        .D(\lw_reg[0]_i_1_n_7 ),
        .Q(lw_reg[0]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \lw_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\lw_reg[0]_i_1_n_0 ,\lw_reg[0]_i_1_n_1 ,\lw_reg[0]_i_1_n_2 ,\lw_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\lw_reg[0]_i_1_n_4 ,\lw_reg[0]_i_1_n_5 ,\lw_reg[0]_i_1_n_6 ,\lw_reg[0]_i_1_n_7 }),
        .S({lw_reg[3:1],\lw[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \lw_reg[10] 
       (.C(clk),
        .CE(l_valid),
        .D(\lw_reg[8]_i_1_n_5 ),
        .Q(lw_reg[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \lw_reg[11] 
       (.C(clk),
        .CE(l_valid),
        .D(\lw_reg[8]_i_1_n_4 ),
        .Q(lw_reg[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \lw_reg[12] 
       (.C(clk),
        .CE(l_valid),
        .D(\lw_reg[12]_i_1_n_7 ),
        .Q(lw_reg__0),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \lw_reg[12]_i_1 
       (.CI(\lw_reg[8]_i_1_n_0 ),
        .CO(\NLW_lw_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_lw_reg[12]_i_1_O_UNCONNECTED [3:1],\lw_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,lw_reg__0}));
  FDRE #(
    .INIT(1'b0)) 
    \lw_reg[1] 
       (.C(clk),
        .CE(l_valid),
        .D(\lw_reg[0]_i_1_n_6 ),
        .Q(lw_reg[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \lw_reg[2] 
       (.C(clk),
        .CE(l_valid),
        .D(\lw_reg[0]_i_1_n_5 ),
        .Q(lw_reg[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \lw_reg[3] 
       (.C(clk),
        .CE(l_valid),
        .D(\lw_reg[0]_i_1_n_4 ),
        .Q(lw_reg[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \lw_reg[4] 
       (.C(clk),
        .CE(l_valid),
        .D(\lw_reg[4]_i_1_n_7 ),
        .Q(lw_reg[4]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \lw_reg[4]_i_1 
       (.CI(\lw_reg[0]_i_1_n_0 ),
        .CO({\lw_reg[4]_i_1_n_0 ,\lw_reg[4]_i_1_n_1 ,\lw_reg[4]_i_1_n_2 ,\lw_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\lw_reg[4]_i_1_n_4 ,\lw_reg[4]_i_1_n_5 ,\lw_reg[4]_i_1_n_6 ,\lw_reg[4]_i_1_n_7 }),
        .S(lw_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \lw_reg[5] 
       (.C(clk),
        .CE(l_valid),
        .D(\lw_reg[4]_i_1_n_6 ),
        .Q(lw_reg[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \lw_reg[6] 
       (.C(clk),
        .CE(l_valid),
        .D(\lw_reg[4]_i_1_n_5 ),
        .Q(lw_reg[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \lw_reg[7] 
       (.C(clk),
        .CE(l_valid),
        .D(\lw_reg[4]_i_1_n_4 ),
        .Q(lw_reg[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \lw_reg[8] 
       (.C(clk),
        .CE(l_valid),
        .D(\lw_reg[8]_i_1_n_7 ),
        .Q(lw_reg[8]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \lw_reg[8]_i_1 
       (.CI(\lw_reg[4]_i_1_n_0 ),
        .CO({\lw_reg[8]_i_1_n_0 ,\lw_reg[8]_i_1_n_1 ,\lw_reg[8]_i_1_n_2 ,\lw_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\lw_reg[8]_i_1_n_4 ,\lw_reg[8]_i_1_n_5 ,\lw_reg[8]_i_1_n_6 ,\lw_reg[8]_i_1_n_7 }),
        .S(lw_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \lw_reg[9] 
       (.C(clk),
        .CE(l_valid),
        .D(\lw_reg[8]_i_1_n_6 ),
        .Q(lw_reg[9]),
        .R(rst));
  LUT5 #(
    .INIT(32'h00FF1D00)) 
    \n[0]_i_1 
       (.I0(st__0[0]),
        .I1(st__0[1]),
        .I2(st__0[2]),
        .I3(u_left_n_1),
        .I4(\n_reg_n_0_[0] ),
        .O(\n[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000011D111D10000)) 
    \n[1]_i_1 
       (.I0(st__0[0]),
        .I1(st__0[1]),
        .I2(\n[9]_i_4_n_0 ),
        .I3(st__0[2]),
        .I4(\n_reg_n_0_[0] ),
        .I5(\n_reg_n_0_[1] ),
        .O(\n[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \n[2]_i_1 
       (.I0(\n_reg_n_0_[1] ),
        .I1(\n_reg_n_0_[0] ),
        .I2(\n_reg_n_0_[2] ),
        .O(\n[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \n[3]_i_1 
       (.I0(\n_reg_n_0_[2] ),
        .I1(\n_reg_n_0_[0] ),
        .I2(\n_reg_n_0_[1] ),
        .I3(\n_reg_n_0_[3] ),
        .O(\n[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \n[4]_i_1 
       (.I0(\n_reg_n_0_[1] ),
        .I1(\n_reg_n_0_[0] ),
        .I2(\n_reg_n_0_[2] ),
        .I3(\n_reg_n_0_[3] ),
        .I4(\n_reg_n_0_[4] ),
        .O(in13[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \n[5]_i_1 
       (.I0(\n_reg_n_0_[1] ),
        .I1(\n_reg_n_0_[0] ),
        .I2(\n_reg_n_0_[2] ),
        .I3(\n_reg_n_0_[3] ),
        .I4(\n_reg_n_0_[4] ),
        .I5(\n_reg_n_0_[5] ),
        .O(in13[5]));
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    \n[6]_i_1 
       (.I0(\n[7]_i_2_n_0 ),
        .I1(\n_reg_n_0_[4] ),
        .I2(\n_reg_n_0_[3] ),
        .I3(\n_reg_n_0_[5] ),
        .I4(\n_reg_n_0_[6] ),
        .O(in13[6]));
  LUT6 #(
    .INIT(64'hBFFFFFFF40000000)) 
    \n[7]_i_1 
       (.I0(\n[7]_i_2_n_0 ),
        .I1(\n_reg_n_0_[6] ),
        .I2(\n_reg_n_0_[4] ),
        .I3(\n_reg_n_0_[3] ),
        .I4(\n_reg_n_0_[5] ),
        .I5(\n_reg_n_0_[7] ),
        .O(in13[7]));
  LUT3 #(
    .INIT(8'h7F)) 
    \n[7]_i_2 
       (.I0(\n_reg_n_0_[1] ),
        .I1(\n_reg_n_0_[0] ),
        .I2(\n_reg_n_0_[2] ),
        .O(\n[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    \n[8]_i_1 
       (.I0(\n[9]_i_7_n_0 ),
        .I1(\n_reg_n_0_[4] ),
        .I2(\n_reg_n_0_[3] ),
        .I3(\n_reg_n_0_[5] ),
        .I4(\n_reg_n_0_[8] ),
        .O(in13[8]));
  LUT6 #(
    .INIT(64'hBFFFFFFF40000000)) 
    \n[9]_i_3 
       (.I0(\n[9]_i_7_n_0 ),
        .I1(\n_reg_n_0_[5] ),
        .I2(\n_reg_n_0_[3] ),
        .I3(\n_reg_n_0_[4] ),
        .I4(\n_reg_n_0_[8] ),
        .I5(\n_reg_n_0_[9] ),
        .O(in13[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \n[9]_i_4 
       (.I0(\n_reg_n_0_[4] ),
        .I1(\n_reg_n_0_[5] ),
        .I2(\n_reg_n_0_[9] ),
        .I3(\n_reg_n_0_[8] ),
        .I4(\n_reg_n_0_[3] ),
        .I5(\n[9]_i_7_n_0 ),
        .O(\n[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h08000080)) 
    \n[9]_i_5 
       (.I0(\wait2_reg_n_0_[1] ),
        .I1(\wait2_reg_n_0_[0] ),
        .I2(st__0[2]),
        .I3(st__0[1]),
        .I4(st__0[0]),
        .O(\n[9]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \n[9]_i_6 
       (.I0(st__0[1]),
        .I1(st__0[0]),
        .I2(st__0[2]),
        .I3(\wait2_reg_n_0_[1] ),
        .I4(\wait2_reg_n_0_[0] ),
        .O(\n[9]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \n[9]_i_7 
       (.I0(\n_reg_n_0_[6] ),
        .I1(\n_reg_n_0_[1] ),
        .I2(\n_reg_n_0_[0] ),
        .I3(\n_reg_n_0_[2] ),
        .I4(\n_reg_n_0_[7] ),
        .O(\n[9]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \n_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\n[0]_i_1_n_0 ),
        .Q(\n_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \n_reg[1] 
       (.C(clk),
        .CE(u_left_n_1),
        .D(\n[1]_i_1_n_0 ),
        .Q(\n_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \n_reg[2] 
       (.C(clk),
        .CE(u_left_n_1),
        .D(\n[2]_i_1_n_0 ),
        .Q(\n_reg_n_0_[2] ),
        .R(u_left_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \n_reg[3] 
       (.C(clk),
        .CE(u_left_n_1),
        .D(\n[3]_i_1_n_0 ),
        .Q(\n_reg_n_0_[3] ),
        .R(u_left_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \n_reg[4] 
       (.C(clk),
        .CE(u_left_n_1),
        .D(in13[4]),
        .Q(\n_reg_n_0_[4] ),
        .R(u_left_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \n_reg[5] 
       (.C(clk),
        .CE(u_left_n_1),
        .D(in13[5]),
        .Q(\n_reg_n_0_[5] ),
        .R(u_left_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \n_reg[6] 
       (.C(clk),
        .CE(u_left_n_1),
        .D(in13[6]),
        .Q(\n_reg_n_0_[6] ),
        .R(u_left_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \n_reg[7] 
       (.C(clk),
        .CE(u_left_n_1),
        .D(in13[7]),
        .Q(\n_reg_n_0_[7] ),
        .R(u_left_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \n_reg[8] 
       (.C(clk),
        .CE(u_left_n_1),
        .D(in13[8]),
        .Q(\n_reg_n_0_[8] ),
        .R(u_left_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \n_reg[9] 
       (.C(clk),
        .CE(u_left_n_1),
        .D(in13[9]),
        .Q(\n_reg_n_0_[9] ),
        .R(u_left_n_0));
  LUT6 #(
    .INIT(64'h888F888888888888)) 
    \out_byte[0]_i_2 
       (.I0(dq[0]),
        .I1(\out_byte[0]_i_4_n_0 ),
        .I2(st__0[0]),
        .I3(st__0[2]),
        .I4(fid),
        .I5(phase),
        .O(\out_byte[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h000D)) 
    \out_byte[0]_i_3 
       (.I0(\wait2_reg_n_0_[1] ),
        .I1(\wait2_reg_n_0_[0] ),
        .I2(st__0[1]),
        .I3(st__0[0]),
        .O(\out_byte[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \out_byte[0]_i_4 
       (.I0(\wait2_reg_n_0_[1] ),
        .I1(\wait2_reg_n_0_[0] ),
        .I2(st__0[1]),
        .I3(st__0[0]),
        .O(\out_byte[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \out_byte[1]_i_3 
       (.I0(\wait2_reg_n_0_[0] ),
        .I1(\wait2_reg_n_0_[1] ),
        .O(\out_byte[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0D00)) 
    \out_byte[6]_i_2 
       (.I0(\wait2_reg_n_0_[0] ),
        .I1(\wait2_reg_n_0_[1] ),
        .I2(st__0[2]),
        .I3(st__0[0]),
        .O(\out_byte[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h001C0C2C)) 
    \out_byte[7]_i_1 
       (.I0(\wait2_reg_n_0_[0] ),
        .I1(st__0[1]),
        .I2(st__0[2]),
        .I3(st__0[0]),
        .I4(\wait2_reg_n_0_[1] ),
        .O(\out_byte[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out_byte[7]_i_3 
       (.I0(st__0[0]),
        .I1(st__0[2]),
        .O(\out_byte[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_byte_reg[0] 
       (.C(clk),
        .CE(\out_byte[7]_i_1_n_0 ),
        .D(out_byte0_in[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_byte_reg[1] 
       (.C(clk),
        .CE(\out_byte[7]_i_1_n_0 ),
        .D(out_byte0_in[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_byte_reg[2] 
       (.C(clk),
        .CE(\out_byte[7]_i_1_n_0 ),
        .D(out_byte0_in[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_byte_reg[3] 
       (.C(clk),
        .CE(\out_byte[7]_i_1_n_0 ),
        .D(out_byte0_in[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_byte_reg[4] 
       (.C(clk),
        .CE(\out_byte[7]_i_1_n_0 ),
        .D(out_byte0_in[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_byte_reg[5] 
       (.C(clk),
        .CE(\out_byte[7]_i_1_n_0 ),
        .D(out_byte0_in[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_byte_reg[6] 
       (.C(clk),
        .CE(\out_byte[7]_i_1_n_0 ),
        .D(out_byte0_in[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_byte_reg[7] 
       (.C(clk),
        .CE(\out_byte[7]_i_1_n_0 ),
        .D(out_byte0_in[7]),
        .Q(Q[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    out_last_INST_0
       (.I0(uvc),
        .I1(u_last),
        .O(out_last));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    out_last_i_1
       (.I0(\wait2_reg_n_0_[1] ),
        .I1(\wait2_reg_n_0_[0] ),
        .I2(out_last_i_2_n_0),
        .I3(st__0[2]),
        .I4(send_reg_n_0),
        .I5(\n[9]_i_4_n_0 ),
        .O(out_last_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    out_last_i_2
       (.I0(st__0[0]),
        .I1(st__0[1]),
        .O(out_last_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    out_last_reg
       (.C(clk),
        .CE(1'b1),
        .D(out_last_i_1_n_0),
        .Q(u_last),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    out_wr_INST_0
       (.I0(u_wr),
        .I1(uvc),
        .I2(out_wr_0),
        .O(out_wr));
  LUT6 #(
    .INIT(64'h0710072000000000)) 
    out_wr_i_1
       (.I0(\wait2_reg_n_0_[1] ),
        .I1(st__0[0]),
        .I2(st__0[2]),
        .I3(st__0[1]),
        .I4(\wait2_reg_n_0_[0] ),
        .I5(send_reg_n_0),
        .O(out_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    out_wr_reg
       (.C(clk),
        .CE(1'b1),
        .D(out_wr_i_1_n_0),
        .Q(u_wr),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    phase_reg
       (.C(clk),
        .CE(1'b1),
        .D(u_left_n_12),
        .Q(phase),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFEFFF10000000)) 
    send_i_1
       (.I0(st__0[0]),
        .I1(st__0[1]),
        .I2(send_i_2_n_0),
        .I3(send_i_3_n_0),
        .I4(out_room),
        .I5(send_reg_n_0),
        .O(send_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    send_i_2
       (.I0(px_x[8]),
        .I1(px_x[9]),
        .I2(px_x[6]),
        .I3(px_x[7]),
        .I4(st__0[2]),
        .I5(px_valid),
        .O(send_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    send_i_3
       (.I0(px_x[2]),
        .I1(px_x[3]),
        .I2(px_x[0]),
        .I3(px_x[1]),
        .I4(px_x[5]),
        .I5(px_x[4]),
        .O(send_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    send_reg
       (.C(clk),
        .CE(1'b1),
        .D(send_i_1_n_0),
        .Q(send_reg_n_0),
        .R(1'b0));
  system_frame_format_0_0_mem_1r1w u_left
       (.ADDRBWRADDR(lr_reg),
        .CO(wait22),
        .D(out_byte0_in),
        .DOBDO(dq[9:1]),
        .\FSM_sequential_st_reg[0] (u_left_n_0),
        .\FSM_sequential_st_reg[0]_0 (u_left_n_12),
        .\FSM_sequential_st_reg[0]_1 (u_left_n_13),
        .\FSM_sequential_st_reg[0]_2 (u_left_n_14),
        .\FSM_sequential_st_reg[0]_3 (u_left_n_15),
        .\FSM_sequential_st_reg[0]_4 (\FSM_sequential_st[2]_i_3_n_0 ),
        .clk(clk),
        .eof(eof),
        .first_row(first_row),
        .first_row_reg(u_left_n_1),
        .first_row_reg_0(u_left_n_2),
        .l_first(l_first),
        .l_luma(l_luma),
        .l_valid(l_valid),
        .lr(lr),
        .\lr_reg[0] (\wait2_reg_n_0_[1] ),
        .\lr_reg[0]_0 (\wait2_reg_n_0_[0] ),
        .\n_reg[1] (\n[9]_i_5_n_0 ),
        .\n_reg[1]_0 (\n[9]_i_6_n_0 ),
        .\n_reg[9] (\n[9]_i_4_n_0 ),
        .out(lw_reg),
        .\out_byte_reg[0] (\out_byte[0]_i_2_n_0 ),
        .\out_byte_reg[0]_0 (\out_byte[6]_i_2_n_0 ),
        .\out_byte_reg[0]_1 (\out_byte[0]_i_3_n_0 ),
        .\out_byte_reg[1] (\out_byte[1]_i_3_n_0 ),
        .\out_byte_reg[7] (\out_byte[7]_i_3_n_0 ),
        .\out_byte_reg[7]_0 (out_last_i_2_n_0),
        .phase(phase),
        .st__0(st__0));
  CARRY4 wait22_carry
       (.CI(1'b0),
        .CO({wait22_carry_n_0,wait22_carry_n_1,wait22_carry_n_2,wait22_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_wait22_carry_O_UNCONNECTED[3:0]),
        .S({wait22_carry_i_1_n_0,wait22_carry_i_2_n_0,wait22_carry_i_3_n_0,wait22_carry_i_4_n_0}));
  CARRY4 wait22_carry__0
       (.CI(wait22_carry_n_0),
        .CO({NLW_wait22_carry__0_CO_UNCONNECTED[3:1],wait22}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O(NLW_wait22_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,wait22_carry__0_i_1_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    wait22_carry__0_i_1
       (.I0(lw_reg__0),
        .I1(lr_reg__0),
        .O(wait22_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    wait22_carry_i_1
       (.I0(lw_reg[11]),
        .I1(lr_reg[11]),
        .I2(lw_reg[10]),
        .I3(lr_reg[10]),
        .I4(lr_reg[9]),
        .I5(lw_reg[9]),
        .O(wait22_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    wait22_carry_i_2
       (.I0(lw_reg[8]),
        .I1(lr_reg[8]),
        .I2(lw_reg[7]),
        .I3(lr_reg[7]),
        .I4(lr_reg[6]),
        .I5(lw_reg[6]),
        .O(wait22_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    wait22_carry_i_3
       (.I0(lw_reg[5]),
        .I1(lr_reg[5]),
        .I2(lw_reg[4]),
        .I3(lr_reg[4]),
        .I4(lr_reg[3]),
        .I5(lw_reg[3]),
        .O(wait22_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    wait22_carry_i_4
       (.I0(lw_reg[2]),
        .I1(lr_reg[2]),
        .I2(lw_reg[1]),
        .I3(lr_reg[1]),
        .I4(lr_reg[0]),
        .I5(lw_reg[0]),
        .O(wait22_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000FFFFAAAE0000)) 
    \wait2[0]_i_1 
       (.I0(u_left_n_2),
        .I1(st__0[0]),
        .I2(st__0[2]),
        .I3(\wait2_reg_n_0_[1] ),
        .I4(\wait2[1]_i_3_n_0 ),
        .I5(\wait2_reg_n_0_[0] ),
        .O(\wait2[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00AAFFFFAE000000)) 
    \wait2[1]_i_1 
       (.I0(u_left_n_2),
        .I1(st__0[0]),
        .I2(st__0[2]),
        .I3(\wait2_reg_n_0_[0] ),
        .I4(\wait2[1]_i_3_n_0 ),
        .I5(\wait2_reg_n_0_[1] ),
        .O(\wait2[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFF363636)) 
    \wait2[1]_i_3 
       (.I0(st__0[1]),
        .I1(st__0[2]),
        .I2(st__0[0]),
        .I3(send_i_2_n_0),
        .I4(send_i_3_n_0),
        .O(\wait2[1]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait2_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\wait2[0]_i_1_n_0 ),
        .Q(\wait2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait2_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\wait2[1]_i_1_n_0 ),
        .Q(\wait2_reg_n_0_[1] ),
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
