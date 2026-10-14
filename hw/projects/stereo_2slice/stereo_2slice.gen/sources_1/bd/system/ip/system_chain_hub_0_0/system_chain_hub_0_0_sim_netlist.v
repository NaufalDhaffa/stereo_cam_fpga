// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Wed Oct 14 08:36:54 2026
// Host        : LAPTOP-THBQET7J running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/stereo-depth-cam/hw/projects/stereo_2slice/stereo_2slice.gen/sources_1/bd/system/ip/system_chain_hub_0_0/system_chain_hub_0_0_sim_netlist.v
// Design      : system_chain_hub_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_chain_hub_0_0,chain_hub,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "chain_hub,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module system_chain_hub_0_0
   (clk,
    rst,
    sig_valid,
    sig_ready,
    sig_left,
    sig_left_ok,
    sig_right,
    sig_right_ok,
    dl,
    ul,
    slice_rst_n,
    slice_ena,
    chain_bottom,
    px_valid,
    px_y,
    px_x,
    px_disp,
    frame_start,
    chain_n,
    state);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0" *) input clk;
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

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]chain_n;
  wire clk;
  wire [7:0]dl;
  wire frame_start;
  wire [11:0]px_disp;
  wire px_valid;
  wire [9:0]px_x;
  wire [9:0]px_y;
  wire rst;
  wire [43:0]sig_left;
  wire sig_left_ok;
  wire sig_ready;
  wire [43:0]sig_right;
  wire sig_right_ok;
  wire sig_valid;
  wire slice_rst_n;
  wire [2:0]\^state ;
  wire [7:0]ul;

  assign chain_bottom[7] = \<const0> ;
  assign chain_bottom[6] = \<const0> ;
  assign chain_bottom[5] = \<const0> ;
  assign chain_bottom[4] = \<const0> ;
  assign chain_bottom[3] = \<const0> ;
  assign chain_bottom[2] = \<const0> ;
  assign chain_bottom[1] = \<const0> ;
  assign chain_bottom[0] = \<const0> ;
  assign slice_ena = \<const1> ;
  assign state[3] = \<const0> ;
  assign state[2:0] = \^state [2:0];
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  system_chain_hub_0_0_chain_hub inst
       (.chain_n(chain_n),
        .clk(clk),
        .dl(dl),
        .frame_start(frame_start),
        .p_2_in3_in({sig_right_ok,sig_right}),
        .px_disp(px_disp),
        .px_valid(px_valid),
        .px_x(px_x),
        .px_y(px_y),
        .rst(rst),
        .sig_left(sig_left),
        .sig_left_ok(sig_left_ok),
        .sig_ready(sig_ready),
        .sig_valid(sig_valid),
        .\st_reg[0] (\^state [0]),
        .\st_reg[1] (\^state [1]),
        .\st_reg[2] (\^state [2]),
        .ul(ul));
  LUT1 #(
    .INIT(2'h1)) 
    slice_rst_n_INST_0
       (.I0(rst),
        .O(slice_rst_n));
endmodule

(* ORIG_REF_NAME = "chain_hub" *) 
module system_chain_hub_0_0_chain_hub
   (px_valid,
    frame_start,
    \st_reg[0] ,
    \st_reg[1] ,
    \st_reg[2] ,
    sig_ready,
    dl,
    px_y,
    px_x,
    px_disp,
    chain_n,
    clk,
    rst,
    sig_valid,
    ul,
    sig_left_ok,
    sig_left,
    p_2_in3_in);
  output px_valid;
  output frame_start;
  output \st_reg[0] ;
  output \st_reg[1] ;
  output \st_reg[2] ;
  output sig_ready;
  output [7:0]dl;
  output [9:0]px_y;
  output [9:0]px_x;
  output [11:0]px_disp;
  output [7:0]chain_n;
  input clk;
  input rst;
  input sig_valid;
  input [7:0]ul;
  input sig_left_ok;
  input [43:0]sig_left;
  input [44:0]p_2_in3_in;

  wire [7:0]chain_n;
  wire clk;
  wire [7:0]dl;
  wire frame_start;
  wire [44:0]p_2_in3_in;
  wire [11:0]px_disp;
  wire px_valid;
  wire [9:0]px_x;
  wire [9:0]px_y;
  wire rst;
  wire [43:0]sig_left;
  wire sig_left_ok;
  wire sig_ready;
  wire sig_valid;
  wire \st_reg[0] ;
  wire \st_reg[1] ;
  wire \st_reg[2] ;
  wire [7:0]ul;

  system_chain_hub_0_0_mini_hub u_hub
       (.chain_n(chain_n),
        .clk(clk),
        .dl(dl),
        .frame_start(frame_start),
        .p_2_in3_in(p_2_in3_in),
        .px_disp(px_disp),
        .px_valid(px_valid),
        .px_x(px_x),
        .px_y(px_y),
        .rst(rst),
        .sig_left(sig_left),
        .sig_left_ok(sig_left_ok),
        .sig_ready(sig_ready),
        .sig_valid(sig_valid),
        .\st_reg[0]_0 (\st_reg[0] ),
        .\st_reg[1]_0 (\st_reg[1] ),
        .\st_reg[2]_0 (\st_reg[2] ),
        .ul(ul));
endmodule

(* ORIG_REF_NAME = "mini_hub" *) 
module system_chain_hub_0_0_mini_hub
   (px_valid,
    frame_start,
    \st_reg[0]_0 ,
    \st_reg[1]_0 ,
    \st_reg[2]_0 ,
    sig_ready,
    dl,
    px_y,
    px_x,
    px_disp,
    chain_n,
    clk,
    rst,
    sig_valid,
    ul,
    sig_left_ok,
    sig_left,
    p_2_in3_in);
  output px_valid;
  output frame_start;
  output \st_reg[0]_0 ;
  output \st_reg[1]_0 ;
  output \st_reg[2]_0 ;
  output sig_ready;
  output [7:0]dl;
  output [9:0]px_y;
  output [9:0]px_x;
  output [11:0]px_disp;
  output [7:0]chain_n;
  input clk;
  input rst;
  input sig_valid;
  input [7:0]ul;
  input sig_left_ok;
  input [43:0]sig_left;
  input [44:0]p_2_in3_in;

  wire \_inferred__13/i__carry__0_n_2 ;
  wire \_inferred__13/i__carry__0_n_3 ;
  wire \_inferred__13/i__carry_n_0 ;
  wire \_inferred__13/i__carry_n_1 ;
  wire \_inferred__13/i__carry_n_2 ;
  wire \_inferred__13/i__carry_n_3 ;
  wire [2:0]c;
  wire [7:0]chain_n;
  wire \chain_n[7]_i_1_n_0 ;
  wire \chain_n[7]_i_2_n_0 ;
  wire \chain_n[7]_i_3_n_0 ;
  wire clk;
  wire \cur_left[44]_i_1_n_0 ;
  wire \cur_left[44]_i_2_n_0 ;
  wire \cur_left_reg_n_0_[0] ;
  wire \cur_left_reg_n_0_[1] ;
  wire \cur_left_reg_n_0_[28] ;
  wire \cur_left_reg_n_0_[29] ;
  wire \cur_left_reg_n_0_[2] ;
  wire \cur_left_reg_n_0_[30] ;
  wire \cur_left_reg_n_0_[31] ;
  wire \cur_left_reg_n_0_[32] ;
  wire \cur_left_reg_n_0_[33] ;
  wire \cur_left_reg_n_0_[34] ;
  wire \cur_left_reg_n_0_[35] ;
  wire \cur_left_reg_n_0_[36] ;
  wire \cur_left_reg_n_0_[37] ;
  wire \cur_left_reg_n_0_[38] ;
  wire \cur_left_reg_n_0_[39] ;
  wire \cur_left_reg_n_0_[3] ;
  wire \cur_left_reg_n_0_[40] ;
  wire \cur_left_reg_n_0_[41] ;
  wire \cur_left_reg_n_0_[42] ;
  wire \cur_left_reg_n_0_[43] ;
  wire \cur_left_reg_n_0_[44] ;
  wire \cur_left_reg_n_0_[4] ;
  wire \cur_left_reg_n_0_[5] ;
  wire \cur_left_reg_n_0_[6] ;
  wire [6:0]data0;
  wire [6:0]data1;
  wire [6:0]data2;
  wire [6:0]data3;
  wire [6:0]data4;
  wire [6:0]data5;
  wire [6:0]data6;
  wire [6:0]data7;
  wire [7:0]dl;
  wire \dl[0]_i_10_n_0 ;
  wire \dl[0]_i_11_n_0 ;
  wire \dl[0]_i_12_n_0 ;
  wire \dl[0]_i_13_n_0 ;
  wire \dl[0]_i_1_n_0 ;
  wire \dl[0]_i_2_n_0 ;
  wire \dl[0]_i_3_n_0 ;
  wire \dl[0]_i_4_n_0 ;
  wire \dl[0]_i_5_n_0 ;
  wire \dl[0]_i_6_n_0 ;
  wire \dl[0]_i_7_n_0 ;
  wire \dl[0]_i_8_n_0 ;
  wire \dl[0]_i_9_n_0 ;
  wire \dl[1]_i_10_n_0 ;
  wire \dl[1]_i_1_n_0 ;
  wire \dl[1]_i_2_n_0 ;
  wire \dl[1]_i_3_n_0 ;
  wire \dl[1]_i_4_n_0 ;
  wire \dl[1]_i_5_n_0 ;
  wire \dl[1]_i_6_n_0 ;
  wire \dl[1]_i_7_n_0 ;
  wire \dl[1]_i_8_n_0 ;
  wire \dl[1]_i_9_n_0 ;
  wire \dl[2]_i_10_n_0 ;
  wire \dl[2]_i_11_n_0 ;
  wire \dl[2]_i_12_n_0 ;
  wire \dl[2]_i_13_n_0 ;
  wire \dl[2]_i_14_n_0 ;
  wire \dl[2]_i_15_n_0 ;
  wire \dl[2]_i_16_n_0 ;
  wire \dl[2]_i_17_n_0 ;
  wire \dl[2]_i_18_n_0 ;
  wire \dl[2]_i_1_n_0 ;
  wire \dl[2]_i_2_n_0 ;
  wire \dl[2]_i_3_n_0 ;
  wire \dl[2]_i_4_n_0 ;
  wire \dl[2]_i_5_n_0 ;
  wire \dl[2]_i_6_n_0 ;
  wire \dl[2]_i_8_n_0 ;
  wire \dl[2]_i_9_n_0 ;
  wire \dl[3]_i_10_n_0 ;
  wire \dl[3]_i_11_n_0 ;
  wire \dl[3]_i_12_n_0 ;
  wire \dl[3]_i_13_n_0 ;
  wire \dl[3]_i_1_n_0 ;
  wire \dl[3]_i_2_n_0 ;
  wire \dl[3]_i_3_n_0 ;
  wire \dl[3]_i_4_n_0 ;
  wire \dl[3]_i_5_n_0 ;
  wire \dl[3]_i_6_n_0 ;
  wire \dl[3]_i_7_n_0 ;
  wire \dl[3]_i_8_n_0 ;
  wire \dl[3]_i_9_n_0 ;
  wire \dl[4]_i_10_n_0 ;
  wire \dl[4]_i_1_n_0 ;
  wire \dl[4]_i_2_n_0 ;
  wire \dl[4]_i_3_n_0 ;
  wire \dl[4]_i_4_n_0 ;
  wire \dl[4]_i_5_n_0 ;
  wire \dl[4]_i_6_n_0 ;
  wire \dl[4]_i_7_n_0 ;
  wire \dl[4]_i_8_n_0 ;
  wire \dl[4]_i_9_n_0 ;
  wire \dl[5]_i_10_n_0 ;
  wire \dl[5]_i_11_n_0 ;
  wire \dl[5]_i_12_n_0 ;
  wire \dl[5]_i_13_n_0 ;
  wire \dl[5]_i_1_n_0 ;
  wire \dl[5]_i_2_n_0 ;
  wire \dl[5]_i_3_n_0 ;
  wire \dl[5]_i_4_n_0 ;
  wire \dl[5]_i_5_n_0 ;
  wire \dl[5]_i_6_n_0 ;
  wire \dl[5]_i_7_n_0 ;
  wire \dl[5]_i_8_n_0 ;
  wire \dl[5]_i_9_n_0 ;
  wire \dl[6]_i_10_n_0 ;
  wire \dl[6]_i_11_n_0 ;
  wire \dl[6]_i_12_n_0 ;
  wire \dl[6]_i_13_n_0 ;
  wire \dl[6]_i_14_n_0 ;
  wire \dl[6]_i_15_n_0 ;
  wire \dl[6]_i_16_n_0 ;
  wire \dl[6]_i_1_n_0 ;
  wire \dl[6]_i_2_n_0 ;
  wire \dl[6]_i_3_n_0 ;
  wire \dl[6]_i_4_n_0 ;
  wire \dl[6]_i_5_n_0 ;
  wire \dl[6]_i_6_n_0 ;
  wire \dl[6]_i_7_n_0 ;
  wire \dl[6]_i_8_n_0 ;
  wire \dl[6]_i_9_n_0 ;
  wire \dl[7]_i_1_n_0 ;
  wire \dl[7]_i_2_n_0 ;
  wire \dl[7]_i_3_n_0 ;
  wire \dl[7]_i_4_n_0 ;
  wire [6:0]dq;
  wire drw_reg_i_10_n_0;
  wire drw_reg_i_11_n_0;
  wire drw_reg_i_12_n_0;
  wire drw_reg_i_13_n_0;
  wire drw_reg_i_14_n_0;
  wire drw_reg_i_15_n_0;
  wire drw_reg_i_16_n_0;
  wire drw_reg_i_17_n_0;
  wire drw_reg_i_18_n_0;
  wire drw_reg_i_19_n_0;
  wire drw_reg_i_20_n_0;
  wire drw_reg_i_21_n_0;
  wire drw_reg_i_22_n_0;
  wire drw_reg_i_23_n_0;
  wire drw_reg_i_24_n_0;
  wire drw_reg_i_2_n_0;
  wire drw_reg_i_3_n_0;
  wire drw_reg_i_4_n_0;
  wire drw_reg_i_5_n_0;
  wire drw_reg_i_6_n_0;
  wire drw_reg_i_7_n_0;
  wire drw_reg_i_8_n_0;
  wire drw_reg_i_9_n_0;
  wire \f0[7]_i_1_n_0 ;
  wire \f0_reg_n_0_[0] ;
  wire \f0_reg_n_0_[1] ;
  wire \f0_reg_n_0_[2] ;
  wire \f0_reg_n_0_[3] ;
  wire \f0_reg_n_0_[4] ;
  wire \f0_reg_n_0_[5] ;
  wire \f0_reg_n_0_[6] ;
  wire \f0_reg_n_0_[7] ;
  wire [6:1]f_dk;
  wire f_dk1;
  wire f_dk1_carry_i_1_n_0;
  wire f_dk1_carry_i_2_n_0;
  wire f_dk1_carry_i_3_n_0;
  wire f_dk1_carry_i_4_n_0;
  wire f_dk1_carry_i_5_n_0;
  wire f_dk1_carry_i_6_n_0;
  wire f_dk1_carry_i_7_n_0;
  wire f_dk1_carry_i_8_n_0;
  wire f_dk1_carry_n_1;
  wire f_dk1_carry_n_2;
  wire f_dk1_carry_n_3;
  wire [8:0]f_idx;
  wire f_idx_carry__0_i_1_n_0;
  wire f_idx_carry__0_i_2_n_0;
  wire f_idx_carry__0_i_3_n_0;
  wire f_idx_carry__0_i_4_n_0;
  wire f_idx_carry__0_i_5_n_0;
  wire f_idx_carry__0_i_6_n_0;
  wire f_idx_carry__0_n_0;
  wire f_idx_carry__0_n_1;
  wire f_idx_carry__0_n_2;
  wire f_idx_carry__0_n_3;
  wire f_idx_carry__1_i_1_n_0;
  wire f_idx_carry__1_i_2_n_0;
  wire f_idx_carry__1_n_2;
  wire f_idx_carry__1_n_3;
  wire f_idx_carry_i_1_n_0;
  wire f_idx_carry_i_2_n_0;
  wire f_idx_carry_i_3_n_0;
  wire f_idx_carry_i_4_n_0;
  wire f_idx_carry_n_0;
  wire f_idx_carry_n_1;
  wire f_idx_carry_n_2;
  wire f_idx_carry_n_3;
  wire [4:0]f_off;
  wire f_ok4;
  wire f_ok4_carry__0_i_1_n_0;
  wire f_ok4_carry__0_i_2_n_0;
  wire f_ok4_carry_i_1_n_0;
  wire f_ok4_carry_i_2_n_0;
  wire f_ok4_carry_i_3_n_0;
  wire f_ok4_carry_i_4_n_0;
  wire f_ok4_carry_i_5_n_0;
  wire f_ok4_carry_i_6_n_0;
  wire f_ok4_carry_i_7_n_0;
  wire f_ok4_carry_i_8_n_0;
  wire f_ok4_carry_i_9_n_0;
  wire f_ok4_carry_n_0;
  wire f_ok4_carry_n_1;
  wire f_ok4_carry_n_2;
  wire f_ok4_carry_n_3;
  wire \fcnt[0]_i_1_n_0 ;
  wire \fcnt[1]_i_1_n_0 ;
  wire \fcnt[2]_i_1_n_0 ;
  wire \fcnt[3]_i_1_n_0 ;
  wire \fcnt[4]_i_1_n_0 ;
  wire \fcnt[5]_i_1_n_0 ;
  wire \fcnt[6]_i_1_n_0 ;
  wire \fcnt[7]_i_1_n_0 ;
  wire \fcnt[7]_i_2_n_0 ;
  wire \fcnt[7]_i_3_n_0 ;
  wire \fcnt_reg_n_0_[0] ;
  wire \fcnt_reg_n_0_[1] ;
  wire \fcnt_reg_n_0_[2] ;
  wire \fcnt_reg_n_0_[3] ;
  wire \fcnt_reg_n_0_[4] ;
  wire \fcnt_reg_n_0_[5] ;
  wire \fcnt_reg_n_0_[6] ;
  wire fin_reg_i_10_n_0;
  wire fin_reg_i_11_n_0;
  wire fin_reg_i_13_n_0;
  wire fin_reg_i_14_n_0;
  wire fin_reg_i_15_n_0;
  wire fin_reg_i_16_n_0;
  wire fin_reg_i_17_n_0;
  wire fin_reg_i_18_n_0;
  wire fin_reg_i_19_n_0;
  wire fin_reg_i_2_n_0;
  wire fin_reg_i_3_n_0;
  wire fin_reg_i_4_n_0;
  wire fin_reg_i_5_n_0;
  wire fin_reg_i_6_n_0;
  wire fin_reg_i_7_n_0;
  wire fin_reg_i_8_n_0;
  wire fin_reg_i_9_n_0;
  wire fin_reg_n_19;
  wire frame_start;
  wire frame_start_i_1_n_0;
  wire frame_start_i_2_n_0;
  wire frame_start_i_3_n_0;
  wire frame_start_i_4_n_0;
  wire frame_start_i_5_n_0;
  wire frame_start_i_6_n_0;
  wire frame_start_i_7_n_0;
  wire frame_start_i_8_n_0;
  wire [6:0]huc;
  wire \huc[0]_i_1_n_0 ;
  wire \huc[1]_i_1_n_0 ;
  wire \huc[2]_i_1_n_0 ;
  wire \huc[3]_i_1_n_0 ;
  wire \huc[4]_i_1_n_0 ;
  wire \huc[5]_i_1_n_0 ;
  wire \huc[5]_i_2_n_0 ;
  wire \huc[6]_i_1_n_0 ;
  wire \huc[6]_i_2_n_0 ;
  wire \huc[6]_i_3_n_0 ;
  wire \huc[6]_i_4_n_0 ;
  wire \huc[6]_i_5_n_0 ;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8_n_0;
  wire is_real__2;
  wire \out_disp[11]_i_2_n_0 ;
  wire \out_disp[11]_i_3_n_0 ;
  wire \out_disp[11]_i_4_n_0 ;
  wire \out_disp[11]_i_5_n_0 ;
  wire \out_disp[11]_i_6_n_0 ;
  wire \out_disp[11]_i_7_n_0 ;
  wire \out_disp[11]_i_8_n_0 ;
  wire \out_disp[3]_i_1_n_0 ;
  wire \out_disp[3]_i_2_n_0 ;
  wire \out_disp[3]_i_3_n_0 ;
  wire \out_disp[3]_i_4_n_0 ;
  wire \out_disp[3]_i_5_n_0 ;
  wire \out_disp[3]_i_6_n_0 ;
  wire \out_disp[3]_i_7_n_0 ;
  wire \out_disp[3]_i_8_n_0 ;
  wire \out_disp[7]_i_2_n_0 ;
  wire \out_disp[7]_i_3_n_0 ;
  wire \out_disp[7]_i_4_n_0 ;
  wire \out_disp[7]_i_5_n_0 ;
  wire \out_disp[7]_i_6_n_0 ;
  wire \out_disp[7]_i_7_n_0 ;
  wire \out_disp[7]_i_8_n_0 ;
  wire \out_disp_reg[11]_i_1_n_1 ;
  wire \out_disp_reg[11]_i_1_n_2 ;
  wire \out_disp_reg[11]_i_1_n_3 ;
  wire \out_disp_reg[11]_i_1_n_4 ;
  wire \out_disp_reg[11]_i_1_n_5 ;
  wire \out_disp_reg[11]_i_1_n_6 ;
  wire \out_disp_reg[11]_i_1_n_7 ;
  wire \out_disp_reg[7]_i_1_n_0 ;
  wire \out_disp_reg[7]_i_1_n_1 ;
  wire \out_disp_reg[7]_i_1_n_2 ;
  wire \out_disp_reg[7]_i_1_n_3 ;
  wire \out_disp_reg[7]_i_1_n_4 ;
  wire \out_disp_reg[7]_i_1_n_5 ;
  wire \out_disp_reg[7]_i_1_n_6 ;
  wire \out_disp_reg[7]_i_1_n_7 ;
  wire out_valid_i_1_n_0;
  wire [9:0]ox;
  wire \ox[0]_i_1_n_0 ;
  wire \ox[1]_i_1_n_0 ;
  wire \ox[2]_i_1_n_0 ;
  wire \ox[3]_i_1_n_0 ;
  wire \ox[4]_i_1_n_0 ;
  wire \ox[5]_i_1_n_0 ;
  wire \ox[5]_i_2_n_0 ;
  wire \ox[6]_i_1_n_0 ;
  wire \ox[7]_i_1_n_0 ;
  wire \ox[8]_i_1_n_0 ;
  wire \ox[9]_i_1_n_0 ;
  wire \ox[9]_i_2_n_0 ;
  wire \ox[9]_i_3_n_0 ;
  wire \ox[9]_i_4_n_0 ;
  wire \ox[9]_i_5_n_0 ;
  wire p_0_in;
  wire p_0_in0;
  wire [6:0]p_0_in_0;
  wire p_0_in__0;
  wire [6:0]p_2_in;
  wire [44:0]p_2_in3_in;
  wire p_3_out;
  wire p_4_in;
  wire p_7_out;
  wire [11:0]px_disp;
  wire px_valid;
  wire [9:0]px_x;
  wire [9:0]px_y;
  wire [6:0]r_gmin;
  wire r_gmin1;
  wire \r_gmin[6]_i_1_n_0 ;
  wire r_idx0_return_carry__0_i_1_n_0;
  wire r_idx0_return_carry__0_i_2_n_0;
  wire r_idx0_return_carry__0_i_3_n_0;
  wire r_idx0_return_carry__0_i_4_n_0;
  wire r_idx0_return_carry__0_i_5_n_0;
  wire r_idx0_return_carry__0_i_6_n_0;
  wire r_idx0_return_carry__0_i_7_n_0;
  wire r_idx0_return_carry__0_i_8_n_0;
  wire r_idx0_return_carry__0_i_9_n_0;
  wire r_idx0_return_carry__0_n_1;
  wire r_idx0_return_carry__0_n_2;
  wire r_idx0_return_carry__0_n_3;
  wire r_idx0_return_carry__0_n_4;
  wire r_idx0_return_carry__0_n_5;
  wire r_idx0_return_carry__0_n_6;
  wire r_idx0_return_carry__0_n_7;
  wire r_idx0_return_carry_i_1_n_0;
  wire r_idx0_return_carry_i_2_n_0;
  wire r_idx0_return_carry_i_3_n_0;
  wire r_idx0_return_carry_i_4_n_0;
  wire r_idx0_return_carry_i_5_n_0;
  wire r_idx0_return_carry_i_6_n_0;
  wire r_idx0_return_carry_i_7_n_0;
  wire r_idx0_return_carry_n_0;
  wire r_idx0_return_carry_n_1;
  wire r_idx0_return_carry_n_2;
  wire r_idx0_return_carry_n_3;
  wire r_idx0_return_carry_n_4;
  wire r_idx0_return_carry_n_5;
  wire r_idx0_return_carry_n_6;
  wire r_idx0_return_carry_n_7;
  wire [6:0]r_kstar;
  wire \r_kstar[6]_i_1_n_0 ;
  wire \r_kstar[6]_i_2_n_0 ;
  wire r_lbot_reg_0_7_0_5_i_4_n_0;
  wire r_lbot_reg_0_7_0_5_i_5_n_0;
  wire r_lbot_reg_0_7_0_5_i_6_n_0;
  wire \rcnt[0]_i_1_n_0 ;
  wire \rcnt[1]_i_1_n_0 ;
  wire \rcnt[2]_i_1_n_0 ;
  wire \rcnt[2]_i_2_n_0 ;
  wire \rcnt[2]_i_3_n_0 ;
  wire rdel_reg_r1_0_63_0_2_i_1_n_0;
  wire rdel_reg_r1_0_63_0_2_i_2_n_0;
  wire rdel_reg_r1_0_63_0_2_i_3_n_0;
  wire rdel_reg_r1_0_63_0_2_i_4_n_0;
  wire rdel_reg_r1_0_63_0_2_i_5_n_0;
  wire rdel_reg_r1_0_63_0_2_i_6_n_0;
  wire rdel_reg_r1_0_63_0_2_i_7_n_0;
  wire rdel_reg_r1_0_63_0_2_n_0;
  wire rdel_reg_r1_0_63_0_2_n_1;
  wire rdel_reg_r1_0_63_0_2_n_2;
  wire rdel_reg_r1_0_63_12_14_n_0;
  wire rdel_reg_r1_0_63_12_14_n_1;
  wire rdel_reg_r1_0_63_12_14_n_2;
  wire rdel_reg_r1_0_63_15_17_i_1_n_0;
  wire rdel_reg_r1_0_63_15_17_n_0;
  wire rdel_reg_r1_0_63_15_17_n_1;
  wire rdel_reg_r1_0_63_15_17_n_2;
  wire rdel_reg_r1_0_63_18_20_i_1_n_0;
  wire rdel_reg_r1_0_63_18_20_i_2_n_0;
  wire rdel_reg_r1_0_63_18_20_i_3_n_0;
  wire rdel_reg_r1_0_63_18_20_i_4_n_0;
  wire rdel_reg_r1_0_63_18_20_n_0;
  wire rdel_reg_r1_0_63_18_20_n_1;
  wire rdel_reg_r1_0_63_18_20_n_2;
  wire rdel_reg_r1_0_63_21_23_n_0;
  wire rdel_reg_r1_0_63_21_23_n_1;
  wire rdel_reg_r1_0_63_21_23_n_2;
  wire rdel_reg_r1_0_63_24_26_n_0;
  wire rdel_reg_r1_0_63_24_26_n_1;
  wire rdel_reg_r1_0_63_24_26_n_2;
  wire rdel_reg_r1_0_63_27_29_i_1_n_0;
  wire rdel_reg_r1_0_63_27_29_i_2_n_0;
  wire rdel_reg_r1_0_63_27_29_i_3_n_0;
  wire rdel_reg_r1_0_63_27_29_n_0;
  wire rdel_reg_r1_0_63_27_29_n_1;
  wire rdel_reg_r1_0_63_27_29_n_2;
  wire rdel_reg_r1_0_63_30_32_i_1_n_0;
  wire rdel_reg_r1_0_63_30_32_n_0;
  wire rdel_reg_r1_0_63_30_32_n_1;
  wire rdel_reg_r1_0_63_30_32_n_2;
  wire rdel_reg_r1_0_63_33_35_n_0;
  wire rdel_reg_r1_0_63_33_35_n_1;
  wire rdel_reg_r1_0_63_33_35_n_2;
  wire rdel_reg_r1_0_63_36_38_i_1_n_0;
  wire rdel_reg_r1_0_63_36_38_i_2_n_0;
  wire rdel_reg_r1_0_63_36_38_i_3_n_0;
  wire rdel_reg_r1_0_63_36_38_n_0;
  wire rdel_reg_r1_0_63_36_38_n_1;
  wire rdel_reg_r1_0_63_36_38_n_2;
  wire rdel_reg_r1_0_63_39_41_n_0;
  wire rdel_reg_r1_0_63_39_41_n_1;
  wire rdel_reg_r1_0_63_39_41_n_2;
  wire rdel_reg_r1_0_63_3_5_n_0;
  wire rdel_reg_r1_0_63_3_5_n_1;
  wire rdel_reg_r1_0_63_3_5_n_2;
  wire rdel_reg_r1_0_63_42_44_n_0;
  wire rdel_reg_r1_0_63_42_44_n_1;
  wire rdel_reg_r1_0_63_42_44_n_2;
  wire rdel_reg_r1_0_63_6_8_n_0;
  wire rdel_reg_r1_0_63_6_8_n_1;
  wire rdel_reg_r1_0_63_6_8_n_2;
  wire rdel_reg_r1_0_63_9_11_i_1_n_0;
  wire rdel_reg_r1_0_63_9_11_i_2_n_0;
  wire rdel_reg_r1_0_63_9_11_i_3_n_0;
  wire rdel_reg_r1_0_63_9_11_n_0;
  wire rdel_reg_r1_0_63_9_11_n_1;
  wire rdel_reg_r1_0_63_9_11_n_2;
  wire rdel_reg_r1_128_191_0_2_i_1_n_0;
  wire rdel_reg_r1_128_191_0_2_n_0;
  wire rdel_reg_r1_128_191_0_2_n_1;
  wire rdel_reg_r1_128_191_0_2_n_2;
  wire rdel_reg_r1_128_191_12_14_n_0;
  wire rdel_reg_r1_128_191_12_14_n_1;
  wire rdel_reg_r1_128_191_12_14_n_2;
  wire rdel_reg_r1_128_191_15_17_n_0;
  wire rdel_reg_r1_128_191_15_17_n_1;
  wire rdel_reg_r1_128_191_15_17_n_2;
  wire rdel_reg_r1_128_191_18_20_n_0;
  wire rdel_reg_r1_128_191_18_20_n_1;
  wire rdel_reg_r1_128_191_18_20_n_2;
  wire rdel_reg_r1_128_191_21_23_n_0;
  wire rdel_reg_r1_128_191_21_23_n_1;
  wire rdel_reg_r1_128_191_21_23_n_2;
  wire rdel_reg_r1_128_191_24_26_n_0;
  wire rdel_reg_r1_128_191_24_26_n_1;
  wire rdel_reg_r1_128_191_24_26_n_2;
  wire rdel_reg_r1_128_191_27_29_n_0;
  wire rdel_reg_r1_128_191_27_29_n_1;
  wire rdel_reg_r1_128_191_27_29_n_2;
  wire rdel_reg_r1_128_191_30_32_n_0;
  wire rdel_reg_r1_128_191_30_32_n_1;
  wire rdel_reg_r1_128_191_30_32_n_2;
  wire rdel_reg_r1_128_191_33_35_n_0;
  wire rdel_reg_r1_128_191_33_35_n_1;
  wire rdel_reg_r1_128_191_33_35_n_2;
  wire rdel_reg_r1_128_191_36_38_n_0;
  wire rdel_reg_r1_128_191_36_38_n_1;
  wire rdel_reg_r1_128_191_36_38_n_2;
  wire rdel_reg_r1_128_191_39_41_n_0;
  wire rdel_reg_r1_128_191_39_41_n_1;
  wire rdel_reg_r1_128_191_39_41_n_2;
  wire rdel_reg_r1_128_191_3_5_n_0;
  wire rdel_reg_r1_128_191_3_5_n_1;
  wire rdel_reg_r1_128_191_3_5_n_2;
  wire rdel_reg_r1_128_191_42_44_n_0;
  wire rdel_reg_r1_128_191_42_44_n_1;
  wire rdel_reg_r1_128_191_42_44_n_2;
  wire rdel_reg_r1_128_191_6_8_n_0;
  wire rdel_reg_r1_128_191_6_8_n_1;
  wire rdel_reg_r1_128_191_6_8_n_2;
  wire rdel_reg_r1_128_191_9_11_n_0;
  wire rdel_reg_r1_128_191_9_11_n_1;
  wire rdel_reg_r1_128_191_9_11_n_2;
  wire rdel_reg_r1_192_255_0_2_i_1_n_0;
  wire rdel_reg_r1_192_255_0_2_n_0;
  wire rdel_reg_r1_192_255_0_2_n_1;
  wire rdel_reg_r1_192_255_0_2_n_2;
  wire rdel_reg_r1_192_255_12_14_n_0;
  wire rdel_reg_r1_192_255_12_14_n_1;
  wire rdel_reg_r1_192_255_12_14_n_2;
  wire rdel_reg_r1_192_255_15_17_n_0;
  wire rdel_reg_r1_192_255_15_17_n_1;
  wire rdel_reg_r1_192_255_15_17_n_2;
  wire rdel_reg_r1_192_255_18_20_n_0;
  wire rdel_reg_r1_192_255_18_20_n_1;
  wire rdel_reg_r1_192_255_18_20_n_2;
  wire rdel_reg_r1_192_255_21_23_n_0;
  wire rdel_reg_r1_192_255_21_23_n_1;
  wire rdel_reg_r1_192_255_21_23_n_2;
  wire rdel_reg_r1_192_255_24_26_n_0;
  wire rdel_reg_r1_192_255_24_26_n_1;
  wire rdel_reg_r1_192_255_24_26_n_2;
  wire rdel_reg_r1_192_255_27_29_n_0;
  wire rdel_reg_r1_192_255_27_29_n_1;
  wire rdel_reg_r1_192_255_27_29_n_2;
  wire rdel_reg_r1_192_255_30_32_n_0;
  wire rdel_reg_r1_192_255_30_32_n_1;
  wire rdel_reg_r1_192_255_30_32_n_2;
  wire rdel_reg_r1_192_255_33_35_n_0;
  wire rdel_reg_r1_192_255_33_35_n_1;
  wire rdel_reg_r1_192_255_33_35_n_2;
  wire rdel_reg_r1_192_255_36_38_n_0;
  wire rdel_reg_r1_192_255_36_38_n_1;
  wire rdel_reg_r1_192_255_36_38_n_2;
  wire rdel_reg_r1_192_255_39_41_n_0;
  wire rdel_reg_r1_192_255_39_41_n_1;
  wire rdel_reg_r1_192_255_39_41_n_2;
  wire rdel_reg_r1_192_255_3_5_n_0;
  wire rdel_reg_r1_192_255_3_5_n_1;
  wire rdel_reg_r1_192_255_3_5_n_2;
  wire rdel_reg_r1_192_255_42_44_n_0;
  wire rdel_reg_r1_192_255_42_44_n_1;
  wire rdel_reg_r1_192_255_42_44_n_2;
  wire rdel_reg_r1_192_255_6_8_n_0;
  wire rdel_reg_r1_192_255_6_8_n_1;
  wire rdel_reg_r1_192_255_6_8_n_2;
  wire rdel_reg_r1_192_255_9_11_n_0;
  wire rdel_reg_r1_192_255_9_11_n_1;
  wire rdel_reg_r1_192_255_9_11_n_2;
  wire rdel_reg_r1_256_319_0_2_i_1_n_0;
  wire rdel_reg_r1_256_319_0_2_n_0;
  wire rdel_reg_r1_256_319_0_2_n_1;
  wire rdel_reg_r1_256_319_0_2_n_2;
  wire rdel_reg_r1_256_319_12_14_n_0;
  wire rdel_reg_r1_256_319_12_14_n_1;
  wire rdel_reg_r1_256_319_12_14_n_2;
  wire rdel_reg_r1_256_319_15_17_n_0;
  wire rdel_reg_r1_256_319_15_17_n_1;
  wire rdel_reg_r1_256_319_15_17_n_2;
  wire rdel_reg_r1_256_319_18_20_n_0;
  wire rdel_reg_r1_256_319_18_20_n_1;
  wire rdel_reg_r1_256_319_18_20_n_2;
  wire rdel_reg_r1_256_319_21_23_n_0;
  wire rdel_reg_r1_256_319_21_23_n_1;
  wire rdel_reg_r1_256_319_21_23_n_2;
  wire rdel_reg_r1_256_319_24_26_n_0;
  wire rdel_reg_r1_256_319_24_26_n_1;
  wire rdel_reg_r1_256_319_24_26_n_2;
  wire rdel_reg_r1_256_319_27_29_n_0;
  wire rdel_reg_r1_256_319_27_29_n_1;
  wire rdel_reg_r1_256_319_27_29_n_2;
  wire rdel_reg_r1_256_319_30_32_n_0;
  wire rdel_reg_r1_256_319_30_32_n_1;
  wire rdel_reg_r1_256_319_30_32_n_2;
  wire rdel_reg_r1_256_319_33_35_n_0;
  wire rdel_reg_r1_256_319_33_35_n_1;
  wire rdel_reg_r1_256_319_33_35_n_2;
  wire rdel_reg_r1_256_319_36_38_n_0;
  wire rdel_reg_r1_256_319_36_38_n_1;
  wire rdel_reg_r1_256_319_36_38_n_2;
  wire rdel_reg_r1_256_319_39_41_n_0;
  wire rdel_reg_r1_256_319_39_41_n_1;
  wire rdel_reg_r1_256_319_39_41_n_2;
  wire rdel_reg_r1_256_319_3_5_n_0;
  wire rdel_reg_r1_256_319_3_5_n_1;
  wire rdel_reg_r1_256_319_3_5_n_2;
  wire rdel_reg_r1_256_319_42_44_n_0;
  wire rdel_reg_r1_256_319_42_44_n_1;
  wire rdel_reg_r1_256_319_42_44_n_2;
  wire rdel_reg_r1_256_319_6_8_n_0;
  wire rdel_reg_r1_256_319_6_8_n_1;
  wire rdel_reg_r1_256_319_6_8_n_2;
  wire rdel_reg_r1_256_319_9_11_n_0;
  wire rdel_reg_r1_256_319_9_11_n_1;
  wire rdel_reg_r1_256_319_9_11_n_2;
  wire rdel_reg_r1_320_383_0_2_i_1_n_0;
  wire rdel_reg_r1_320_383_0_2_n_0;
  wire rdel_reg_r1_320_383_0_2_n_1;
  wire rdel_reg_r1_320_383_0_2_n_2;
  wire rdel_reg_r1_320_383_12_14_n_0;
  wire rdel_reg_r1_320_383_12_14_n_1;
  wire rdel_reg_r1_320_383_12_14_n_2;
  wire rdel_reg_r1_320_383_15_17_n_0;
  wire rdel_reg_r1_320_383_15_17_n_1;
  wire rdel_reg_r1_320_383_15_17_n_2;
  wire rdel_reg_r1_320_383_18_20_n_0;
  wire rdel_reg_r1_320_383_18_20_n_1;
  wire rdel_reg_r1_320_383_18_20_n_2;
  wire rdel_reg_r1_320_383_21_23_n_0;
  wire rdel_reg_r1_320_383_21_23_n_1;
  wire rdel_reg_r1_320_383_21_23_n_2;
  wire rdel_reg_r1_320_383_24_26_n_0;
  wire rdel_reg_r1_320_383_24_26_n_1;
  wire rdel_reg_r1_320_383_24_26_n_2;
  wire rdel_reg_r1_320_383_27_29_n_0;
  wire rdel_reg_r1_320_383_27_29_n_1;
  wire rdel_reg_r1_320_383_27_29_n_2;
  wire rdel_reg_r1_320_383_30_32_n_0;
  wire rdel_reg_r1_320_383_30_32_n_1;
  wire rdel_reg_r1_320_383_30_32_n_2;
  wire rdel_reg_r1_320_383_33_35_n_0;
  wire rdel_reg_r1_320_383_33_35_n_1;
  wire rdel_reg_r1_320_383_33_35_n_2;
  wire rdel_reg_r1_320_383_36_38_n_0;
  wire rdel_reg_r1_320_383_36_38_n_1;
  wire rdel_reg_r1_320_383_36_38_n_2;
  wire rdel_reg_r1_320_383_39_41_n_0;
  wire rdel_reg_r1_320_383_39_41_n_1;
  wire rdel_reg_r1_320_383_39_41_n_2;
  wire rdel_reg_r1_320_383_3_5_n_0;
  wire rdel_reg_r1_320_383_3_5_n_1;
  wire rdel_reg_r1_320_383_3_5_n_2;
  wire rdel_reg_r1_320_383_42_44_n_0;
  wire rdel_reg_r1_320_383_42_44_n_1;
  wire rdel_reg_r1_320_383_42_44_n_2;
  wire rdel_reg_r1_320_383_6_8_n_0;
  wire rdel_reg_r1_320_383_6_8_n_1;
  wire rdel_reg_r1_320_383_6_8_n_2;
  wire rdel_reg_r1_320_383_9_11_n_0;
  wire rdel_reg_r1_320_383_9_11_n_1;
  wire rdel_reg_r1_320_383_9_11_n_2;
  wire rdel_reg_r1_384_447_0_2_i_1_n_0;
  wire rdel_reg_r1_384_447_0_2_n_0;
  wire rdel_reg_r1_384_447_0_2_n_1;
  wire rdel_reg_r1_384_447_0_2_n_2;
  wire rdel_reg_r1_384_447_12_14_n_0;
  wire rdel_reg_r1_384_447_12_14_n_1;
  wire rdel_reg_r1_384_447_12_14_n_2;
  wire rdel_reg_r1_384_447_15_17_n_0;
  wire rdel_reg_r1_384_447_15_17_n_1;
  wire rdel_reg_r1_384_447_15_17_n_2;
  wire rdel_reg_r1_384_447_18_20_n_0;
  wire rdel_reg_r1_384_447_18_20_n_1;
  wire rdel_reg_r1_384_447_18_20_n_2;
  wire rdel_reg_r1_384_447_21_23_n_0;
  wire rdel_reg_r1_384_447_21_23_n_1;
  wire rdel_reg_r1_384_447_21_23_n_2;
  wire rdel_reg_r1_384_447_24_26_n_0;
  wire rdel_reg_r1_384_447_24_26_n_1;
  wire rdel_reg_r1_384_447_24_26_n_2;
  wire rdel_reg_r1_384_447_27_29_n_0;
  wire rdel_reg_r1_384_447_27_29_n_1;
  wire rdel_reg_r1_384_447_27_29_n_2;
  wire rdel_reg_r1_384_447_30_32_n_0;
  wire rdel_reg_r1_384_447_30_32_n_1;
  wire rdel_reg_r1_384_447_30_32_n_2;
  wire rdel_reg_r1_384_447_33_35_n_0;
  wire rdel_reg_r1_384_447_33_35_n_1;
  wire rdel_reg_r1_384_447_33_35_n_2;
  wire rdel_reg_r1_384_447_36_38_n_0;
  wire rdel_reg_r1_384_447_36_38_n_1;
  wire rdel_reg_r1_384_447_36_38_n_2;
  wire rdel_reg_r1_384_447_39_41_n_0;
  wire rdel_reg_r1_384_447_39_41_n_1;
  wire rdel_reg_r1_384_447_39_41_n_2;
  wire rdel_reg_r1_384_447_3_5_n_0;
  wire rdel_reg_r1_384_447_3_5_n_1;
  wire rdel_reg_r1_384_447_3_5_n_2;
  wire rdel_reg_r1_384_447_42_44_n_0;
  wire rdel_reg_r1_384_447_42_44_n_1;
  wire rdel_reg_r1_384_447_42_44_n_2;
  wire rdel_reg_r1_384_447_6_8_n_0;
  wire rdel_reg_r1_384_447_6_8_n_1;
  wire rdel_reg_r1_384_447_6_8_n_2;
  wire rdel_reg_r1_384_447_9_11_n_0;
  wire rdel_reg_r1_384_447_9_11_n_1;
  wire rdel_reg_r1_384_447_9_11_n_2;
  wire rdel_reg_r1_448_511_0_2_i_1_n_0;
  wire rdel_reg_r1_448_511_0_2_n_0;
  wire rdel_reg_r1_448_511_0_2_n_1;
  wire rdel_reg_r1_448_511_0_2_n_2;
  wire rdel_reg_r1_448_511_12_14_n_0;
  wire rdel_reg_r1_448_511_12_14_n_1;
  wire rdel_reg_r1_448_511_12_14_n_2;
  wire rdel_reg_r1_448_511_15_17_n_0;
  wire rdel_reg_r1_448_511_15_17_n_1;
  wire rdel_reg_r1_448_511_15_17_n_2;
  wire rdel_reg_r1_448_511_18_20_n_0;
  wire rdel_reg_r1_448_511_18_20_n_1;
  wire rdel_reg_r1_448_511_18_20_n_2;
  wire rdel_reg_r1_448_511_21_23_n_0;
  wire rdel_reg_r1_448_511_21_23_n_1;
  wire rdel_reg_r1_448_511_21_23_n_2;
  wire rdel_reg_r1_448_511_24_26_n_0;
  wire rdel_reg_r1_448_511_24_26_n_1;
  wire rdel_reg_r1_448_511_24_26_n_2;
  wire rdel_reg_r1_448_511_27_29_n_0;
  wire rdel_reg_r1_448_511_27_29_n_1;
  wire rdel_reg_r1_448_511_27_29_n_2;
  wire rdel_reg_r1_448_511_30_32_n_0;
  wire rdel_reg_r1_448_511_30_32_n_1;
  wire rdel_reg_r1_448_511_30_32_n_2;
  wire rdel_reg_r1_448_511_33_35_n_0;
  wire rdel_reg_r1_448_511_33_35_n_1;
  wire rdel_reg_r1_448_511_33_35_n_2;
  wire rdel_reg_r1_448_511_36_38_n_0;
  wire rdel_reg_r1_448_511_36_38_n_1;
  wire rdel_reg_r1_448_511_36_38_n_2;
  wire rdel_reg_r1_448_511_39_41_n_0;
  wire rdel_reg_r1_448_511_39_41_n_1;
  wire rdel_reg_r1_448_511_39_41_n_2;
  wire rdel_reg_r1_448_511_3_5_n_0;
  wire rdel_reg_r1_448_511_3_5_n_1;
  wire rdel_reg_r1_448_511_3_5_n_2;
  wire rdel_reg_r1_448_511_42_44_n_0;
  wire rdel_reg_r1_448_511_42_44_n_1;
  wire rdel_reg_r1_448_511_42_44_n_2;
  wire rdel_reg_r1_448_511_6_8_n_0;
  wire rdel_reg_r1_448_511_6_8_n_1;
  wire rdel_reg_r1_448_511_6_8_n_2;
  wire rdel_reg_r1_448_511_9_11_n_0;
  wire rdel_reg_r1_448_511_9_11_n_1;
  wire rdel_reg_r1_448_511_9_11_n_2;
  wire rdel_reg_r1_64_127_0_2_i_1_n_0;
  wire rdel_reg_r1_64_127_0_2_n_0;
  wire rdel_reg_r1_64_127_0_2_n_1;
  wire rdel_reg_r1_64_127_0_2_n_2;
  wire rdel_reg_r1_64_127_12_14_n_0;
  wire rdel_reg_r1_64_127_12_14_n_1;
  wire rdel_reg_r1_64_127_12_14_n_2;
  wire rdel_reg_r1_64_127_15_17_n_0;
  wire rdel_reg_r1_64_127_15_17_n_1;
  wire rdel_reg_r1_64_127_15_17_n_2;
  wire rdel_reg_r1_64_127_18_20_n_0;
  wire rdel_reg_r1_64_127_18_20_n_1;
  wire rdel_reg_r1_64_127_18_20_n_2;
  wire rdel_reg_r1_64_127_21_23_n_0;
  wire rdel_reg_r1_64_127_21_23_n_1;
  wire rdel_reg_r1_64_127_21_23_n_2;
  wire rdel_reg_r1_64_127_24_26_n_0;
  wire rdel_reg_r1_64_127_24_26_n_1;
  wire rdel_reg_r1_64_127_24_26_n_2;
  wire rdel_reg_r1_64_127_27_29_n_0;
  wire rdel_reg_r1_64_127_27_29_n_1;
  wire rdel_reg_r1_64_127_27_29_n_2;
  wire rdel_reg_r1_64_127_30_32_n_0;
  wire rdel_reg_r1_64_127_30_32_n_1;
  wire rdel_reg_r1_64_127_30_32_n_2;
  wire rdel_reg_r1_64_127_33_35_n_0;
  wire rdel_reg_r1_64_127_33_35_n_1;
  wire rdel_reg_r1_64_127_33_35_n_2;
  wire rdel_reg_r1_64_127_36_38_n_0;
  wire rdel_reg_r1_64_127_36_38_n_1;
  wire rdel_reg_r1_64_127_36_38_n_2;
  wire rdel_reg_r1_64_127_39_41_n_0;
  wire rdel_reg_r1_64_127_39_41_n_1;
  wire rdel_reg_r1_64_127_39_41_n_2;
  wire rdel_reg_r1_64_127_3_5_n_0;
  wire rdel_reg_r1_64_127_3_5_n_1;
  wire rdel_reg_r1_64_127_3_5_n_2;
  wire rdel_reg_r1_64_127_42_44_n_0;
  wire rdel_reg_r1_64_127_42_44_n_1;
  wire rdel_reg_r1_64_127_42_44_n_2;
  wire rdel_reg_r1_64_127_6_8_n_0;
  wire rdel_reg_r1_64_127_6_8_n_1;
  wire rdel_reg_r1_64_127_6_8_n_2;
  wire rdel_reg_r1_64_127_9_11_n_0;
  wire rdel_reg_r1_64_127_9_11_n_1;
  wire rdel_reg_r1_64_127_9_11_n_2;
  wire rdel_reg_r2_0_63_0_2_n_0;
  wire rdel_reg_r2_0_63_0_2_n_1;
  wire rdel_reg_r2_0_63_0_2_n_2;
  wire rdel_reg_r2_0_63_12_14_n_0;
  wire rdel_reg_r2_0_63_12_14_n_1;
  wire rdel_reg_r2_0_63_12_14_n_2;
  wire rdel_reg_r2_0_63_15_17_n_0;
  wire rdel_reg_r2_0_63_15_17_n_1;
  wire rdel_reg_r2_0_63_15_17_n_2;
  wire rdel_reg_r2_0_63_18_20_n_0;
  wire rdel_reg_r2_0_63_18_20_n_1;
  wire rdel_reg_r2_0_63_18_20_n_2;
  wire rdel_reg_r2_0_63_21_23_n_0;
  wire rdel_reg_r2_0_63_21_23_n_1;
  wire rdel_reg_r2_0_63_21_23_n_2;
  wire rdel_reg_r2_0_63_24_26_n_0;
  wire rdel_reg_r2_0_63_24_26_n_1;
  wire rdel_reg_r2_0_63_24_26_n_2;
  wire rdel_reg_r2_0_63_27_29_n_0;
  wire rdel_reg_r2_0_63_27_29_n_1;
  wire rdel_reg_r2_0_63_27_29_n_2;
  wire rdel_reg_r2_0_63_30_32_n_0;
  wire rdel_reg_r2_0_63_30_32_n_1;
  wire rdel_reg_r2_0_63_30_32_n_2;
  wire rdel_reg_r2_0_63_33_35_n_0;
  wire rdel_reg_r2_0_63_33_35_n_1;
  wire rdel_reg_r2_0_63_33_35_n_2;
  wire rdel_reg_r2_0_63_36_38_n_0;
  wire rdel_reg_r2_0_63_36_38_n_1;
  wire rdel_reg_r2_0_63_36_38_n_2;
  wire rdel_reg_r2_0_63_39_41_n_0;
  wire rdel_reg_r2_0_63_39_41_n_1;
  wire rdel_reg_r2_0_63_39_41_n_2;
  wire rdel_reg_r2_0_63_3_5_n_0;
  wire rdel_reg_r2_0_63_3_5_n_1;
  wire rdel_reg_r2_0_63_3_5_n_2;
  wire rdel_reg_r2_0_63_42_44_n_0;
  wire rdel_reg_r2_0_63_42_44_n_1;
  wire rdel_reg_r2_0_63_42_44_n_2;
  wire rdel_reg_r2_0_63_6_8_n_0;
  wire rdel_reg_r2_0_63_6_8_n_1;
  wire rdel_reg_r2_0_63_6_8_n_2;
  wire rdel_reg_r2_0_63_9_11_n_0;
  wire rdel_reg_r2_0_63_9_11_n_1;
  wire rdel_reg_r2_0_63_9_11_n_2;
  wire rdel_reg_r2_128_191_0_2_n_0;
  wire rdel_reg_r2_128_191_0_2_n_1;
  wire rdel_reg_r2_128_191_0_2_n_2;
  wire rdel_reg_r2_128_191_12_14_n_0;
  wire rdel_reg_r2_128_191_12_14_n_1;
  wire rdel_reg_r2_128_191_12_14_n_2;
  wire rdel_reg_r2_128_191_15_17_n_0;
  wire rdel_reg_r2_128_191_15_17_n_1;
  wire rdel_reg_r2_128_191_15_17_n_2;
  wire rdel_reg_r2_128_191_18_20_n_0;
  wire rdel_reg_r2_128_191_18_20_n_1;
  wire rdel_reg_r2_128_191_18_20_n_2;
  wire rdel_reg_r2_128_191_21_23_n_0;
  wire rdel_reg_r2_128_191_21_23_n_1;
  wire rdel_reg_r2_128_191_21_23_n_2;
  wire rdel_reg_r2_128_191_24_26_n_0;
  wire rdel_reg_r2_128_191_24_26_n_1;
  wire rdel_reg_r2_128_191_24_26_n_2;
  wire rdel_reg_r2_128_191_27_29_n_0;
  wire rdel_reg_r2_128_191_27_29_n_1;
  wire rdel_reg_r2_128_191_27_29_n_2;
  wire rdel_reg_r2_128_191_30_32_n_0;
  wire rdel_reg_r2_128_191_30_32_n_1;
  wire rdel_reg_r2_128_191_30_32_n_2;
  wire rdel_reg_r2_128_191_33_35_n_0;
  wire rdel_reg_r2_128_191_33_35_n_1;
  wire rdel_reg_r2_128_191_33_35_n_2;
  wire rdel_reg_r2_128_191_36_38_n_0;
  wire rdel_reg_r2_128_191_36_38_n_1;
  wire rdel_reg_r2_128_191_36_38_n_2;
  wire rdel_reg_r2_128_191_39_41_n_0;
  wire rdel_reg_r2_128_191_39_41_n_1;
  wire rdel_reg_r2_128_191_39_41_n_2;
  wire rdel_reg_r2_128_191_3_5_n_0;
  wire rdel_reg_r2_128_191_3_5_n_1;
  wire rdel_reg_r2_128_191_3_5_n_2;
  wire rdel_reg_r2_128_191_42_44_n_0;
  wire rdel_reg_r2_128_191_42_44_n_1;
  wire rdel_reg_r2_128_191_42_44_n_2;
  wire rdel_reg_r2_128_191_6_8_n_0;
  wire rdel_reg_r2_128_191_6_8_n_1;
  wire rdel_reg_r2_128_191_6_8_n_2;
  wire rdel_reg_r2_128_191_9_11_n_0;
  wire rdel_reg_r2_128_191_9_11_n_1;
  wire rdel_reg_r2_128_191_9_11_n_2;
  wire rdel_reg_r2_192_255_0_2_n_0;
  wire rdel_reg_r2_192_255_0_2_n_1;
  wire rdel_reg_r2_192_255_0_2_n_2;
  wire rdel_reg_r2_192_255_12_14_n_0;
  wire rdel_reg_r2_192_255_12_14_n_1;
  wire rdel_reg_r2_192_255_12_14_n_2;
  wire rdel_reg_r2_192_255_15_17_n_0;
  wire rdel_reg_r2_192_255_15_17_n_1;
  wire rdel_reg_r2_192_255_15_17_n_2;
  wire rdel_reg_r2_192_255_18_20_n_0;
  wire rdel_reg_r2_192_255_18_20_n_1;
  wire rdel_reg_r2_192_255_18_20_n_2;
  wire rdel_reg_r2_192_255_21_23_n_0;
  wire rdel_reg_r2_192_255_21_23_n_1;
  wire rdel_reg_r2_192_255_21_23_n_2;
  wire rdel_reg_r2_192_255_24_26_n_0;
  wire rdel_reg_r2_192_255_24_26_n_1;
  wire rdel_reg_r2_192_255_24_26_n_2;
  wire rdel_reg_r2_192_255_27_29_n_0;
  wire rdel_reg_r2_192_255_27_29_n_1;
  wire rdel_reg_r2_192_255_27_29_n_2;
  wire rdel_reg_r2_192_255_30_32_n_0;
  wire rdel_reg_r2_192_255_30_32_n_1;
  wire rdel_reg_r2_192_255_30_32_n_2;
  wire rdel_reg_r2_192_255_33_35_n_0;
  wire rdel_reg_r2_192_255_33_35_n_1;
  wire rdel_reg_r2_192_255_33_35_n_2;
  wire rdel_reg_r2_192_255_36_38_n_0;
  wire rdel_reg_r2_192_255_36_38_n_1;
  wire rdel_reg_r2_192_255_36_38_n_2;
  wire rdel_reg_r2_192_255_39_41_n_0;
  wire rdel_reg_r2_192_255_39_41_n_1;
  wire rdel_reg_r2_192_255_39_41_n_2;
  wire rdel_reg_r2_192_255_3_5_n_0;
  wire rdel_reg_r2_192_255_3_5_n_1;
  wire rdel_reg_r2_192_255_3_5_n_2;
  wire rdel_reg_r2_192_255_42_44_n_0;
  wire rdel_reg_r2_192_255_42_44_n_1;
  wire rdel_reg_r2_192_255_42_44_n_2;
  wire rdel_reg_r2_192_255_6_8_n_0;
  wire rdel_reg_r2_192_255_6_8_n_1;
  wire rdel_reg_r2_192_255_6_8_n_2;
  wire rdel_reg_r2_192_255_9_11_n_0;
  wire rdel_reg_r2_192_255_9_11_n_1;
  wire rdel_reg_r2_192_255_9_11_n_2;
  wire rdel_reg_r2_256_319_0_2_n_0;
  wire rdel_reg_r2_256_319_0_2_n_1;
  wire rdel_reg_r2_256_319_0_2_n_2;
  wire rdel_reg_r2_256_319_12_14_n_0;
  wire rdel_reg_r2_256_319_12_14_n_1;
  wire rdel_reg_r2_256_319_12_14_n_2;
  wire rdel_reg_r2_256_319_15_17_n_0;
  wire rdel_reg_r2_256_319_15_17_n_1;
  wire rdel_reg_r2_256_319_15_17_n_2;
  wire rdel_reg_r2_256_319_18_20_n_0;
  wire rdel_reg_r2_256_319_18_20_n_1;
  wire rdel_reg_r2_256_319_18_20_n_2;
  wire rdel_reg_r2_256_319_21_23_n_0;
  wire rdel_reg_r2_256_319_21_23_n_1;
  wire rdel_reg_r2_256_319_21_23_n_2;
  wire rdel_reg_r2_256_319_24_26_n_0;
  wire rdel_reg_r2_256_319_24_26_n_1;
  wire rdel_reg_r2_256_319_24_26_n_2;
  wire rdel_reg_r2_256_319_27_29_n_0;
  wire rdel_reg_r2_256_319_27_29_n_1;
  wire rdel_reg_r2_256_319_27_29_n_2;
  wire rdel_reg_r2_256_319_30_32_n_0;
  wire rdel_reg_r2_256_319_30_32_n_1;
  wire rdel_reg_r2_256_319_30_32_n_2;
  wire rdel_reg_r2_256_319_33_35_n_0;
  wire rdel_reg_r2_256_319_33_35_n_1;
  wire rdel_reg_r2_256_319_33_35_n_2;
  wire rdel_reg_r2_256_319_36_38_n_0;
  wire rdel_reg_r2_256_319_36_38_n_1;
  wire rdel_reg_r2_256_319_36_38_n_2;
  wire rdel_reg_r2_256_319_39_41_n_0;
  wire rdel_reg_r2_256_319_39_41_n_1;
  wire rdel_reg_r2_256_319_39_41_n_2;
  wire rdel_reg_r2_256_319_3_5_n_0;
  wire rdel_reg_r2_256_319_3_5_n_1;
  wire rdel_reg_r2_256_319_3_5_n_2;
  wire rdel_reg_r2_256_319_42_44_n_0;
  wire rdel_reg_r2_256_319_42_44_n_1;
  wire rdel_reg_r2_256_319_42_44_n_2;
  wire rdel_reg_r2_256_319_6_8_n_0;
  wire rdel_reg_r2_256_319_6_8_n_1;
  wire rdel_reg_r2_256_319_6_8_n_2;
  wire rdel_reg_r2_256_319_9_11_n_0;
  wire rdel_reg_r2_256_319_9_11_n_1;
  wire rdel_reg_r2_256_319_9_11_n_2;
  wire rdel_reg_r2_320_383_0_2_n_0;
  wire rdel_reg_r2_320_383_0_2_n_1;
  wire rdel_reg_r2_320_383_0_2_n_2;
  wire rdel_reg_r2_320_383_12_14_n_0;
  wire rdel_reg_r2_320_383_12_14_n_1;
  wire rdel_reg_r2_320_383_12_14_n_2;
  wire rdel_reg_r2_320_383_15_17_n_0;
  wire rdel_reg_r2_320_383_15_17_n_1;
  wire rdel_reg_r2_320_383_15_17_n_2;
  wire rdel_reg_r2_320_383_18_20_n_0;
  wire rdel_reg_r2_320_383_18_20_n_1;
  wire rdel_reg_r2_320_383_18_20_n_2;
  wire rdel_reg_r2_320_383_21_23_n_0;
  wire rdel_reg_r2_320_383_21_23_n_1;
  wire rdel_reg_r2_320_383_21_23_n_2;
  wire rdel_reg_r2_320_383_24_26_n_0;
  wire rdel_reg_r2_320_383_24_26_n_1;
  wire rdel_reg_r2_320_383_24_26_n_2;
  wire rdel_reg_r2_320_383_27_29_n_0;
  wire rdel_reg_r2_320_383_27_29_n_1;
  wire rdel_reg_r2_320_383_27_29_n_2;
  wire rdel_reg_r2_320_383_30_32_n_0;
  wire rdel_reg_r2_320_383_30_32_n_1;
  wire rdel_reg_r2_320_383_30_32_n_2;
  wire rdel_reg_r2_320_383_33_35_n_0;
  wire rdel_reg_r2_320_383_33_35_n_1;
  wire rdel_reg_r2_320_383_33_35_n_2;
  wire rdel_reg_r2_320_383_36_38_n_0;
  wire rdel_reg_r2_320_383_36_38_n_1;
  wire rdel_reg_r2_320_383_36_38_n_2;
  wire rdel_reg_r2_320_383_39_41_n_0;
  wire rdel_reg_r2_320_383_39_41_n_1;
  wire rdel_reg_r2_320_383_39_41_n_2;
  wire rdel_reg_r2_320_383_3_5_n_0;
  wire rdel_reg_r2_320_383_3_5_n_1;
  wire rdel_reg_r2_320_383_3_5_n_2;
  wire rdel_reg_r2_320_383_42_44_n_0;
  wire rdel_reg_r2_320_383_42_44_n_1;
  wire rdel_reg_r2_320_383_42_44_n_2;
  wire rdel_reg_r2_320_383_6_8_n_0;
  wire rdel_reg_r2_320_383_6_8_n_1;
  wire rdel_reg_r2_320_383_6_8_n_2;
  wire rdel_reg_r2_320_383_9_11_n_0;
  wire rdel_reg_r2_320_383_9_11_n_1;
  wire rdel_reg_r2_320_383_9_11_n_2;
  wire rdel_reg_r2_384_447_0_2_n_0;
  wire rdel_reg_r2_384_447_0_2_n_1;
  wire rdel_reg_r2_384_447_0_2_n_2;
  wire rdel_reg_r2_384_447_12_14_n_0;
  wire rdel_reg_r2_384_447_12_14_n_1;
  wire rdel_reg_r2_384_447_12_14_n_2;
  wire rdel_reg_r2_384_447_15_17_n_0;
  wire rdel_reg_r2_384_447_15_17_n_1;
  wire rdel_reg_r2_384_447_15_17_n_2;
  wire rdel_reg_r2_384_447_18_20_n_0;
  wire rdel_reg_r2_384_447_18_20_n_1;
  wire rdel_reg_r2_384_447_18_20_n_2;
  wire rdel_reg_r2_384_447_21_23_n_0;
  wire rdel_reg_r2_384_447_21_23_n_1;
  wire rdel_reg_r2_384_447_21_23_n_2;
  wire rdel_reg_r2_384_447_24_26_n_0;
  wire rdel_reg_r2_384_447_24_26_n_1;
  wire rdel_reg_r2_384_447_24_26_n_2;
  wire rdel_reg_r2_384_447_27_29_n_0;
  wire rdel_reg_r2_384_447_27_29_n_1;
  wire rdel_reg_r2_384_447_27_29_n_2;
  wire rdel_reg_r2_384_447_30_32_n_0;
  wire rdel_reg_r2_384_447_30_32_n_1;
  wire rdel_reg_r2_384_447_30_32_n_2;
  wire rdel_reg_r2_384_447_33_35_n_0;
  wire rdel_reg_r2_384_447_33_35_n_1;
  wire rdel_reg_r2_384_447_33_35_n_2;
  wire rdel_reg_r2_384_447_36_38_n_0;
  wire rdel_reg_r2_384_447_36_38_n_1;
  wire rdel_reg_r2_384_447_36_38_n_2;
  wire rdel_reg_r2_384_447_39_41_n_0;
  wire rdel_reg_r2_384_447_39_41_n_1;
  wire rdel_reg_r2_384_447_39_41_n_2;
  wire rdel_reg_r2_384_447_3_5_n_0;
  wire rdel_reg_r2_384_447_3_5_n_1;
  wire rdel_reg_r2_384_447_3_5_n_2;
  wire rdel_reg_r2_384_447_42_44_n_0;
  wire rdel_reg_r2_384_447_42_44_n_1;
  wire rdel_reg_r2_384_447_42_44_n_2;
  wire rdel_reg_r2_384_447_6_8_n_0;
  wire rdel_reg_r2_384_447_6_8_n_1;
  wire rdel_reg_r2_384_447_6_8_n_2;
  wire rdel_reg_r2_384_447_9_11_n_0;
  wire rdel_reg_r2_384_447_9_11_n_1;
  wire rdel_reg_r2_384_447_9_11_n_2;
  wire rdel_reg_r2_448_511_0_2_n_0;
  wire rdel_reg_r2_448_511_0_2_n_1;
  wire rdel_reg_r2_448_511_0_2_n_2;
  wire rdel_reg_r2_448_511_12_14_n_0;
  wire rdel_reg_r2_448_511_12_14_n_1;
  wire rdel_reg_r2_448_511_12_14_n_2;
  wire rdel_reg_r2_448_511_15_17_n_0;
  wire rdel_reg_r2_448_511_15_17_n_1;
  wire rdel_reg_r2_448_511_15_17_n_2;
  wire rdel_reg_r2_448_511_18_20_n_0;
  wire rdel_reg_r2_448_511_18_20_n_1;
  wire rdel_reg_r2_448_511_18_20_n_2;
  wire rdel_reg_r2_448_511_21_23_n_0;
  wire rdel_reg_r2_448_511_21_23_n_1;
  wire rdel_reg_r2_448_511_21_23_n_2;
  wire rdel_reg_r2_448_511_24_26_n_0;
  wire rdel_reg_r2_448_511_24_26_n_1;
  wire rdel_reg_r2_448_511_24_26_n_2;
  wire rdel_reg_r2_448_511_27_29_n_0;
  wire rdel_reg_r2_448_511_27_29_n_1;
  wire rdel_reg_r2_448_511_27_29_n_2;
  wire rdel_reg_r2_448_511_30_32_n_0;
  wire rdel_reg_r2_448_511_30_32_n_1;
  wire rdel_reg_r2_448_511_30_32_n_2;
  wire rdel_reg_r2_448_511_33_35_n_0;
  wire rdel_reg_r2_448_511_33_35_n_1;
  wire rdel_reg_r2_448_511_33_35_n_2;
  wire rdel_reg_r2_448_511_36_38_n_0;
  wire rdel_reg_r2_448_511_36_38_n_1;
  wire rdel_reg_r2_448_511_36_38_n_2;
  wire rdel_reg_r2_448_511_39_41_n_0;
  wire rdel_reg_r2_448_511_39_41_n_1;
  wire rdel_reg_r2_448_511_39_41_n_2;
  wire rdel_reg_r2_448_511_3_5_n_0;
  wire rdel_reg_r2_448_511_3_5_n_1;
  wire rdel_reg_r2_448_511_3_5_n_2;
  wire rdel_reg_r2_448_511_42_44_n_0;
  wire rdel_reg_r2_448_511_42_44_n_1;
  wire rdel_reg_r2_448_511_42_44_n_2;
  wire rdel_reg_r2_448_511_6_8_n_0;
  wire rdel_reg_r2_448_511_6_8_n_1;
  wire rdel_reg_r2_448_511_6_8_n_2;
  wire rdel_reg_r2_448_511_9_11_n_0;
  wire rdel_reg_r2_448_511_9_11_n_1;
  wire rdel_reg_r2_448_511_9_11_n_2;
  wire rdel_reg_r2_64_127_0_2_n_0;
  wire rdel_reg_r2_64_127_0_2_n_1;
  wire rdel_reg_r2_64_127_0_2_n_2;
  wire rdel_reg_r2_64_127_12_14_n_0;
  wire rdel_reg_r2_64_127_12_14_n_1;
  wire rdel_reg_r2_64_127_12_14_n_2;
  wire rdel_reg_r2_64_127_15_17_n_0;
  wire rdel_reg_r2_64_127_15_17_n_1;
  wire rdel_reg_r2_64_127_15_17_n_2;
  wire rdel_reg_r2_64_127_18_20_n_0;
  wire rdel_reg_r2_64_127_18_20_n_1;
  wire rdel_reg_r2_64_127_18_20_n_2;
  wire rdel_reg_r2_64_127_21_23_n_0;
  wire rdel_reg_r2_64_127_21_23_n_1;
  wire rdel_reg_r2_64_127_21_23_n_2;
  wire rdel_reg_r2_64_127_24_26_n_0;
  wire rdel_reg_r2_64_127_24_26_n_1;
  wire rdel_reg_r2_64_127_24_26_n_2;
  wire rdel_reg_r2_64_127_27_29_n_0;
  wire rdel_reg_r2_64_127_27_29_n_1;
  wire rdel_reg_r2_64_127_27_29_n_2;
  wire rdel_reg_r2_64_127_30_32_n_0;
  wire rdel_reg_r2_64_127_30_32_n_1;
  wire rdel_reg_r2_64_127_30_32_n_2;
  wire rdel_reg_r2_64_127_33_35_n_0;
  wire rdel_reg_r2_64_127_33_35_n_1;
  wire rdel_reg_r2_64_127_33_35_n_2;
  wire rdel_reg_r2_64_127_36_38_n_0;
  wire rdel_reg_r2_64_127_36_38_n_1;
  wire rdel_reg_r2_64_127_36_38_n_2;
  wire rdel_reg_r2_64_127_39_41_n_0;
  wire rdel_reg_r2_64_127_39_41_n_1;
  wire rdel_reg_r2_64_127_39_41_n_2;
  wire rdel_reg_r2_64_127_3_5_n_0;
  wire rdel_reg_r2_64_127_3_5_n_1;
  wire rdel_reg_r2_64_127_3_5_n_2;
  wire rdel_reg_r2_64_127_42_44_n_0;
  wire rdel_reg_r2_64_127_42_44_n_1;
  wire rdel_reg_r2_64_127_42_44_n_2;
  wire rdel_reg_r2_64_127_6_8_n_0;
  wire rdel_reg_r2_64_127_6_8_n_1;
  wire rdel_reg_r2_64_127_6_8_n_2;
  wire rdel_reg_r2_64_127_9_11_n_0;
  wire rdel_reg_r2_64_127_9_11_n_1;
  wire rdel_reg_r2_64_127_9_11_n_2;
  wire [2:0]rp;
  wire \rp[2]_i_1_n_0 ;
  wire \rp[2]_i_3_n_0 ;
  wire \rp[2]_i_4_n_0 ;
  wire [2:0]rp_1;
  wire [44:0]rq1;
  wire [44:0]rq15_out;
  wire rq2;
  wire rq214_out;
  wire \rq[0]_i_1_n_0 ;
  wire \rq[0]_i_4_n_0 ;
  wire \rq[0]_i_5_n_0 ;
  wire \rq[0]_i_6_n_0 ;
  wire \rq[0]_i_7_n_0 ;
  wire \rq[10]_i_1_n_0 ;
  wire \rq[10]_i_4_n_0 ;
  wire \rq[10]_i_5_n_0 ;
  wire \rq[10]_i_6_n_0 ;
  wire \rq[10]_i_7_n_0 ;
  wire \rq[11]_i_1_n_0 ;
  wire \rq[11]_i_4_n_0 ;
  wire \rq[11]_i_5_n_0 ;
  wire \rq[11]_i_6_n_0 ;
  wire \rq[11]_i_7_n_0 ;
  wire \rq[12]_i_1_n_0 ;
  wire \rq[12]_i_4_n_0 ;
  wire \rq[12]_i_5_n_0 ;
  wire \rq[12]_i_6_n_0 ;
  wire \rq[12]_i_7_n_0 ;
  wire \rq[13]_i_1_n_0 ;
  wire \rq[13]_i_4_n_0 ;
  wire \rq[13]_i_5_n_0 ;
  wire \rq[13]_i_6_n_0 ;
  wire \rq[13]_i_7_n_0 ;
  wire \rq[14]_i_1_n_0 ;
  wire \rq[14]_i_4_n_0 ;
  wire \rq[14]_i_5_n_0 ;
  wire \rq[14]_i_6_n_0 ;
  wire \rq[14]_i_7_n_0 ;
  wire \rq[15]_i_1_n_0 ;
  wire \rq[15]_i_4_n_0 ;
  wire \rq[15]_i_5_n_0 ;
  wire \rq[15]_i_6_n_0 ;
  wire \rq[15]_i_7_n_0 ;
  wire \rq[16]_i_1_n_0 ;
  wire \rq[16]_i_4_n_0 ;
  wire \rq[16]_i_5_n_0 ;
  wire \rq[16]_i_6_n_0 ;
  wire \rq[16]_i_7_n_0 ;
  wire \rq[17]_i_1_n_0 ;
  wire \rq[17]_i_4_n_0 ;
  wire \rq[17]_i_5_n_0 ;
  wire \rq[17]_i_6_n_0 ;
  wire \rq[17]_i_7_n_0 ;
  wire \rq[18]_i_1_n_0 ;
  wire \rq[18]_i_4_n_0 ;
  wire \rq[18]_i_5_n_0 ;
  wire \rq[18]_i_6_n_0 ;
  wire \rq[18]_i_7_n_0 ;
  wire \rq[19]_i_1_n_0 ;
  wire \rq[19]_i_4_n_0 ;
  wire \rq[19]_i_5_n_0 ;
  wire \rq[19]_i_6_n_0 ;
  wire \rq[19]_i_7_n_0 ;
  wire \rq[1]_i_1_n_0 ;
  wire \rq[1]_i_4_n_0 ;
  wire \rq[1]_i_5_n_0 ;
  wire \rq[1]_i_6_n_0 ;
  wire \rq[1]_i_7_n_0 ;
  wire \rq[20]_i_1_n_0 ;
  wire \rq[20]_i_4_n_0 ;
  wire \rq[20]_i_5_n_0 ;
  wire \rq[20]_i_6_n_0 ;
  wire \rq[20]_i_7_n_0 ;
  wire \rq[21]_i_1_n_0 ;
  wire \rq[21]_i_4_n_0 ;
  wire \rq[21]_i_5_n_0 ;
  wire \rq[21]_i_6_n_0 ;
  wire \rq[21]_i_7_n_0 ;
  wire \rq[22]_i_1_n_0 ;
  wire \rq[22]_i_4_n_0 ;
  wire \rq[22]_i_5_n_0 ;
  wire \rq[22]_i_6_n_0 ;
  wire \rq[22]_i_7_n_0 ;
  wire \rq[23]_i_1_n_0 ;
  wire \rq[23]_i_4_n_0 ;
  wire \rq[23]_i_5_n_0 ;
  wire \rq[23]_i_6_n_0 ;
  wire \rq[23]_i_7_n_0 ;
  wire \rq[24]_i_1_n_0 ;
  wire \rq[24]_i_4_n_0 ;
  wire \rq[24]_i_5_n_0 ;
  wire \rq[24]_i_6_n_0 ;
  wire \rq[24]_i_7_n_0 ;
  wire \rq[25]_i_1_n_0 ;
  wire \rq[25]_i_4_n_0 ;
  wire \rq[25]_i_5_n_0 ;
  wire \rq[25]_i_6_n_0 ;
  wire \rq[25]_i_7_n_0 ;
  wire \rq[26]_i_1_n_0 ;
  wire \rq[26]_i_4_n_0 ;
  wire \rq[26]_i_5_n_0 ;
  wire \rq[26]_i_6_n_0 ;
  wire \rq[26]_i_7_n_0 ;
  wire \rq[27]_i_1_n_0 ;
  wire \rq[27]_i_4_n_0 ;
  wire \rq[27]_i_5_n_0 ;
  wire \rq[27]_i_6_n_0 ;
  wire \rq[27]_i_7_n_0 ;
  wire \rq[28]_i_1_n_0 ;
  wire \rq[28]_i_4_n_0 ;
  wire \rq[28]_i_5_n_0 ;
  wire \rq[28]_i_6_n_0 ;
  wire \rq[28]_i_7_n_0 ;
  wire \rq[29]_i_1_n_0 ;
  wire \rq[29]_i_4_n_0 ;
  wire \rq[29]_i_5_n_0 ;
  wire \rq[29]_i_6_n_0 ;
  wire \rq[29]_i_7_n_0 ;
  wire \rq[2]_i_1_n_0 ;
  wire \rq[2]_i_4_n_0 ;
  wire \rq[2]_i_5_n_0 ;
  wire \rq[2]_i_6_n_0 ;
  wire \rq[2]_i_7_n_0 ;
  wire \rq[30]_i_1_n_0 ;
  wire \rq[30]_i_4_n_0 ;
  wire \rq[30]_i_5_n_0 ;
  wire \rq[30]_i_6_n_0 ;
  wire \rq[30]_i_7_n_0 ;
  wire \rq[31]_i_1_n_0 ;
  wire \rq[31]_i_4_n_0 ;
  wire \rq[31]_i_5_n_0 ;
  wire \rq[31]_i_6_n_0 ;
  wire \rq[31]_i_7_n_0 ;
  wire \rq[32]_i_1_n_0 ;
  wire \rq[32]_i_4_n_0 ;
  wire \rq[32]_i_5_n_0 ;
  wire \rq[32]_i_6_n_0 ;
  wire \rq[32]_i_7_n_0 ;
  wire \rq[33]_i_1_n_0 ;
  wire \rq[33]_i_4_n_0 ;
  wire \rq[33]_i_5_n_0 ;
  wire \rq[33]_i_6_n_0 ;
  wire \rq[33]_i_7_n_0 ;
  wire \rq[34]_i_1_n_0 ;
  wire \rq[34]_i_4_n_0 ;
  wire \rq[34]_i_5_n_0 ;
  wire \rq[34]_i_6_n_0 ;
  wire \rq[34]_i_7_n_0 ;
  wire \rq[35]_i_1_n_0 ;
  wire \rq[35]_i_4_n_0 ;
  wire \rq[35]_i_5_n_0 ;
  wire \rq[35]_i_6_n_0 ;
  wire \rq[35]_i_7_n_0 ;
  wire \rq[36]_i_1_n_0 ;
  wire \rq[36]_i_4_n_0 ;
  wire \rq[36]_i_5_n_0 ;
  wire \rq[36]_i_6_n_0 ;
  wire \rq[36]_i_7_n_0 ;
  wire \rq[37]_i_1_n_0 ;
  wire \rq[37]_i_4_n_0 ;
  wire \rq[37]_i_5_n_0 ;
  wire \rq[37]_i_6_n_0 ;
  wire \rq[37]_i_7_n_0 ;
  wire \rq[38]_i_1_n_0 ;
  wire \rq[38]_i_4_n_0 ;
  wire \rq[38]_i_5_n_0 ;
  wire \rq[38]_i_6_n_0 ;
  wire \rq[38]_i_7_n_0 ;
  wire \rq[39]_i_1_n_0 ;
  wire \rq[39]_i_4_n_0 ;
  wire \rq[39]_i_5_n_0 ;
  wire \rq[39]_i_6_n_0 ;
  wire \rq[39]_i_7_n_0 ;
  wire \rq[3]_i_1_n_0 ;
  wire \rq[3]_i_4_n_0 ;
  wire \rq[3]_i_5_n_0 ;
  wire \rq[3]_i_6_n_0 ;
  wire \rq[3]_i_7_n_0 ;
  wire \rq[40]_i_1_n_0 ;
  wire \rq[40]_i_4_n_0 ;
  wire \rq[40]_i_5_n_0 ;
  wire \rq[40]_i_6_n_0 ;
  wire \rq[40]_i_7_n_0 ;
  wire \rq[41]_i_1_n_0 ;
  wire \rq[41]_i_4_n_0 ;
  wire \rq[41]_i_5_n_0 ;
  wire \rq[41]_i_6_n_0 ;
  wire \rq[41]_i_7_n_0 ;
  wire \rq[42]_i_1_n_0 ;
  wire \rq[42]_i_4_n_0 ;
  wire \rq[42]_i_5_n_0 ;
  wire \rq[42]_i_6_n_0 ;
  wire \rq[42]_i_7_n_0 ;
  wire \rq[43]_i_1_n_0 ;
  wire \rq[43]_i_4_n_0 ;
  wire \rq[43]_i_5_n_0 ;
  wire \rq[43]_i_6_n_0 ;
  wire \rq[43]_i_7_n_0 ;
  wire \rq[44]_i_10_n_0 ;
  wire \rq[44]_i_11_n_0 ;
  wire \rq[44]_i_12_n_0 ;
  wire \rq[44]_i_13_n_0 ;
  wire \rq[44]_i_14_n_0 ;
  wire \rq[44]_i_1_n_0 ;
  wire \rq[44]_i_4_n_0 ;
  wire \rq[44]_i_7_n_0 ;
  wire \rq[44]_i_8_n_0 ;
  wire \rq[44]_i_9_n_0 ;
  wire \rq[4]_i_1_n_0 ;
  wire \rq[4]_i_4_n_0 ;
  wire \rq[4]_i_5_n_0 ;
  wire \rq[4]_i_6_n_0 ;
  wire \rq[4]_i_7_n_0 ;
  wire \rq[5]_i_1_n_0 ;
  wire \rq[5]_i_4_n_0 ;
  wire \rq[5]_i_5_n_0 ;
  wire \rq[5]_i_6_n_0 ;
  wire \rq[5]_i_7_n_0 ;
  wire \rq[6]_i_1_n_0 ;
  wire \rq[6]_i_4_n_0 ;
  wire \rq[6]_i_5_n_0 ;
  wire \rq[6]_i_6_n_0 ;
  wire \rq[6]_i_7_n_0 ;
  wire \rq[7]_i_1_n_0 ;
  wire \rq[7]_i_4_n_0 ;
  wire \rq[7]_i_5_n_0 ;
  wire \rq[7]_i_6_n_0 ;
  wire \rq[7]_i_7_n_0 ;
  wire \rq[8]_i_1_n_0 ;
  wire \rq[8]_i_4_n_0 ;
  wire \rq[8]_i_5_n_0 ;
  wire \rq[8]_i_6_n_0 ;
  wire \rq[8]_i_7_n_0 ;
  wire \rq[9]_i_1_n_0 ;
  wire \rq[9]_i_4_n_0 ;
  wire \rq[9]_i_5_n_0 ;
  wire \rq[9]_i_6_n_0 ;
  wire \rq[9]_i_7_n_0 ;
  wire \rq_reg_n_0_[0] ;
  wire \rq_reg_n_0_[1] ;
  wire \rq_reg_n_0_[2] ;
  wire \rq_reg_n_0_[3] ;
  wire \rq_reg_n_0_[42] ;
  wire \rq_reg_n_0_[43] ;
  wire \rq_reg_n_0_[44] ;
  wire \rq_reg_n_0_[4] ;
  wire \rq_reg_n_0_[5] ;
  wire \rq_reg_n_0_[6] ;
  wire rst;
  wire [43:0]sig_left;
  wire sig_left_ok;
  wire sig_ready;
  wire sig_ready_INST_0_i_2_n_0;
  wire sig_valid;
  wire \st[0]_i_1_n_0 ;
  wire \st[1]_i_1_n_0 ;
  wire \st[2]_i_1_n_0 ;
  wire \st[2]_i_2_n_0 ;
  wire \st[2]_i_3_n_0 ;
  wire \st[2]_i_4_n_0 ;
  wire \st[2]_i_5_n_0 ;
  wire \st[2]_i_6_n_0 ;
  wire \st[2]_i_7_n_0 ;
  wire \st[2]_i_8_n_0 ;
  wire \st_reg[0]_0 ;
  wire \st_reg[1]_0 ;
  wire \st_reg[2]_0 ;
  wire [2:1]sym2;
  wire [7:0]ul;
  wire [7:0]ul_r;
  wire [9:0]up_x;
  wire \up_x[9]_i_1_n_0 ;
  wire use_b015_in;
  wire [7:0]wait_n;
  wire \wait_n[0]_i_1_n_0 ;
  wire \wait_n[1]_i_1_n_0 ;
  wire \wait_n[2]_i_1_n_0 ;
  wire \wait_n[3]_i_1_n_0 ;
  wire \wait_n[4]_i_1_n_0 ;
  wire \wait_n[5]_i_1_n_0 ;
  wire \wait_n[5]_i_2_n_0 ;
  wire \wait_n[6]_i_1_n_0 ;
  wire \wait_n[7]_i_1_n_0 ;
  wire \wait_n[7]_i_2_n_0 ;
  wire \wait_n[7]_i_3_n_0 ;
  wire [9:0]xa;
  wire [0:0]xa0;
  wire \xa[0]_i_1_n_0 ;
  wire \xa[0]_rep_i_1_n_0 ;
  wire \xa[1]_i_1_n_0 ;
  wire \xa[1]_rep_i_1_n_0 ;
  wire \xa[2]_i_1_n_0 ;
  wire \xa[2]_rep_i_1_n_0 ;
  wire \xa[3]_i_1_n_0 ;
  wire \xa[3]_rep_i_1_n_0 ;
  wire \xa[4]_i_1_n_0 ;
  wire \xa[4]_rep_i_1_n_0 ;
  wire \xa[5]_i_1_n_0 ;
  wire \xa[5]_rep_i_1_n_0 ;
  wire \xa[6]_i_1_n_0 ;
  wire \xa[6]_i_2_n_0 ;
  wire \xa[7]_i_1_n_0 ;
  wire \xa[8]_i_1_n_0 ;
  wire \xa[9]_i_1_n_0 ;
  wire \xa[9]_i_2_n_0 ;
  wire \xa[9]_i_3_n_0 ;
  wire \xa_reg[0]_rep_n_0 ;
  wire \xa_reg[1]_rep_n_0 ;
  wire \xa_reg[2]_rep_n_0 ;
  wire \xa_reg[3]_rep_n_0 ;
  wire \xa_reg[4]_rep_n_0 ;
  wire \xa_reg[5]_rep_n_0 ;
  wire [9:0]y;
  wire \y[0]_i_1_n_0 ;
  wire \y[1]_i_1_n_0 ;
  wire \y[2]_i_1_n_0 ;
  wire \y[3]_i_1_n_0 ;
  wire \y[4]_i_1_n_0 ;
  wire \y[5]_i_1_n_0 ;
  wire \y[5]_i_2_n_0 ;
  wire \y[6]_i_1_n_0 ;
  wire \y[7]_i_1_n_0 ;
  wire \y[8]_i_1_n_0 ;
  wire \y[8]_i_2_n_0 ;
  wire \y[9]_i_1_n_0 ;
  wire \y[9]_i_2_n_0 ;
  wire \y[9]_i_3_n_0 ;
  wire \y[9]_i_4_n_0 ;
  wire \y[9]_i_5_n_0 ;
  wire \y[9]_i_6_n_0 ;
  wire \y[9]_i_7_n_0 ;
  wire [0:0]\NLW__inferred__13/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW__inferred__13/i__carry__0_CO_UNCONNECTED ;
  wire [3:3]\NLW__inferred__13/i__carry__0_O_UNCONNECTED ;
  wire [15:0]NLW_drw_reg_DOADO_UNCONNECTED;
  wire [15:7]NLW_drw_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_drw_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_drw_reg_DOPBDOP_UNCONNECTED;
  wire [3:0]NLW_f_dk1_carry_O_UNCONNECTED;
  wire [3:2]NLW_f_idx_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_f_idx_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_f_ok4_carry_O_UNCONNECTED;
  wire [3:1]NLW_f_ok4_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_f_ok4_carry__0_O_UNCONNECTED;
  wire [15:0]NLW_fin_reg_DOADO_UNCONNECTED;
  wire [15:13]NLW_fin_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_fin_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_fin_reg_DOPBDOP_UNCONNECTED;
  wire [3:3]\NLW_out_disp_reg[11]_i_1_CO_UNCONNECTED ;
  wire [3:3]NLW_r_idx0_return_carry__0_CO_UNCONNECTED;
  wire [1:0]NLW_r_lbot_reg_0_7_0_5_DOD_UNCONNECTED;
  wire NLW_r_lbot_reg_0_7_6_6_SPO_UNCONNECTED;
  wire NLW_rdel_reg_r1_0_63_0_2_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_0_63_12_14_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_0_63_15_17_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_0_63_18_20_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_0_63_21_23_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_0_63_24_26_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_0_63_27_29_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_0_63_30_32_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_0_63_33_35_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_0_63_36_38_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_0_63_39_41_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_0_63_3_5_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_0_63_42_44_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_0_63_6_8_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_0_63_9_11_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_128_191_0_2_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_128_191_12_14_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_128_191_15_17_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_128_191_18_20_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_128_191_21_23_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_128_191_24_26_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_128_191_27_29_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_128_191_30_32_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_128_191_33_35_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_128_191_36_38_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_128_191_39_41_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_128_191_3_5_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_128_191_42_44_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_128_191_6_8_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_128_191_9_11_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_192_255_0_2_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_192_255_12_14_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_192_255_15_17_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_192_255_18_20_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_192_255_21_23_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_192_255_24_26_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_192_255_27_29_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_192_255_30_32_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_192_255_33_35_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_192_255_36_38_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_192_255_39_41_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_192_255_3_5_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_192_255_42_44_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_192_255_6_8_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_192_255_9_11_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_256_319_0_2_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_256_319_12_14_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_256_319_15_17_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_256_319_18_20_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_256_319_21_23_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_256_319_24_26_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_256_319_27_29_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_256_319_30_32_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_256_319_33_35_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_256_319_36_38_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_256_319_39_41_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_256_319_3_5_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_256_319_42_44_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_256_319_6_8_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_256_319_9_11_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_320_383_0_2_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_320_383_12_14_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_320_383_15_17_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_320_383_18_20_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_320_383_21_23_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_320_383_24_26_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_320_383_27_29_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_320_383_30_32_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_320_383_33_35_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_320_383_36_38_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_320_383_39_41_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_320_383_3_5_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_320_383_42_44_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_320_383_6_8_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_320_383_9_11_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_384_447_0_2_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_384_447_12_14_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_384_447_15_17_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_384_447_18_20_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_384_447_21_23_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_384_447_24_26_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_384_447_27_29_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_384_447_30_32_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_384_447_33_35_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_384_447_36_38_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_384_447_39_41_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_384_447_3_5_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_384_447_42_44_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_384_447_6_8_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_384_447_9_11_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_448_511_0_2_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_448_511_12_14_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_448_511_15_17_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_448_511_18_20_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_448_511_21_23_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_448_511_24_26_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_448_511_27_29_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_448_511_30_32_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_448_511_33_35_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_448_511_36_38_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_448_511_39_41_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_448_511_3_5_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_448_511_42_44_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_448_511_6_8_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_448_511_9_11_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_64_127_0_2_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_64_127_12_14_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_64_127_15_17_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_64_127_18_20_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_64_127_21_23_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_64_127_24_26_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_64_127_27_29_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_64_127_30_32_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_64_127_33_35_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_64_127_36_38_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_64_127_39_41_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_64_127_3_5_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_64_127_42_44_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_64_127_6_8_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r1_64_127_9_11_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_0_63_0_2_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_0_63_12_14_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_0_63_15_17_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_0_63_18_20_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_0_63_21_23_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_0_63_24_26_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_0_63_27_29_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_0_63_30_32_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_0_63_33_35_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_0_63_36_38_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_0_63_39_41_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_0_63_3_5_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_0_63_42_44_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_0_63_6_8_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_0_63_9_11_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_128_191_0_2_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_128_191_12_14_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_128_191_15_17_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_128_191_18_20_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_128_191_21_23_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_128_191_24_26_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_128_191_27_29_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_128_191_30_32_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_128_191_33_35_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_128_191_36_38_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_128_191_39_41_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_128_191_3_5_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_128_191_42_44_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_128_191_6_8_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_128_191_9_11_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_192_255_0_2_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_192_255_12_14_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_192_255_15_17_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_192_255_18_20_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_192_255_21_23_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_192_255_24_26_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_192_255_27_29_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_192_255_30_32_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_192_255_33_35_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_192_255_36_38_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_192_255_39_41_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_192_255_3_5_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_192_255_42_44_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_192_255_6_8_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_192_255_9_11_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_256_319_0_2_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_256_319_12_14_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_256_319_15_17_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_256_319_18_20_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_256_319_21_23_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_256_319_24_26_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_256_319_27_29_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_256_319_30_32_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_256_319_33_35_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_256_319_36_38_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_256_319_39_41_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_256_319_3_5_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_256_319_42_44_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_256_319_6_8_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_256_319_9_11_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_320_383_0_2_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_320_383_12_14_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_320_383_15_17_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_320_383_18_20_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_320_383_21_23_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_320_383_24_26_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_320_383_27_29_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_320_383_30_32_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_320_383_33_35_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_320_383_36_38_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_320_383_39_41_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_320_383_3_5_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_320_383_42_44_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_320_383_6_8_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_320_383_9_11_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_384_447_0_2_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_384_447_12_14_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_384_447_15_17_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_384_447_18_20_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_384_447_21_23_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_384_447_24_26_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_384_447_27_29_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_384_447_30_32_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_384_447_33_35_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_384_447_36_38_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_384_447_39_41_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_384_447_3_5_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_384_447_42_44_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_384_447_6_8_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_384_447_9_11_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_448_511_0_2_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_448_511_12_14_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_448_511_15_17_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_448_511_18_20_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_448_511_21_23_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_448_511_24_26_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_448_511_27_29_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_448_511_30_32_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_448_511_33_35_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_448_511_36_38_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_448_511_39_41_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_448_511_3_5_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_448_511_42_44_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_448_511_6_8_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_448_511_9_11_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_64_127_0_2_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_64_127_12_14_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_64_127_15_17_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_64_127_18_20_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_64_127_21_23_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_64_127_24_26_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_64_127_27_29_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_64_127_30_32_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_64_127_33_35_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_64_127_36_38_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_64_127_39_41_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_64_127_3_5_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_64_127_42_44_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_64_127_6_8_DOD_UNCONNECTED;
  wire NLW_rdel_reg_r2_64_127_9_11_DOD_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__13/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__13/i__carry_n_0 ,\_inferred__13/i__carry_n_1 ,\_inferred__13/i__carry_n_2 ,\_inferred__13/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}),
        .O({f_dk[3:1],\NLW__inferred__13/i__carry_O_UNCONNECTED [0]}),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__13/i__carry__0 
       (.CI(\_inferred__13/i__carry_n_0 ),
        .CO({\NLW__inferred__13/i__carry__0_CO_UNCONNECTED [3:2],\_inferred__13/i__carry__0_n_2 ,\_inferred__13/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,i__carry__0_i_1_n_0,i__carry__0_i_2_n_0}),
        .O({\NLW__inferred__13/i__carry__0_O_UNCONNECTED [3],f_dk[6:4]}),
        .S({1'b0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0,i__carry__0_i_5_n_0}));
  LUT4 #(
    .INIT(16'h0001)) 
    \chain_n[7]_i_1 
       (.I0(\st_reg[2]_0 ),
        .I1(\st_reg[0]_0 ),
        .I2(\st_reg[1]_0 ),
        .I3(\chain_n[7]_i_2_n_0 ),
        .O(\chain_n[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    \chain_n[7]_i_2 
       (.I0(wait_n[3]),
        .I1(wait_n[5]),
        .I2(wait_n[4]),
        .I3(wait_n[6]),
        .I4(\chain_n[7]_i_3_n_0 ),
        .O(\chain_n[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \chain_n[7]_i_3 
       (.I0(wait_n[0]),
        .I1(wait_n[2]),
        .I2(wait_n[7]),
        .I3(wait_n[1]),
        .O(\chain_n[7]_i_3_n_0 ));
  FDRE \chain_n_reg[0] 
       (.C(clk),
        .CE(\chain_n[7]_i_1_n_0 ),
        .D(ul_r[0]),
        .Q(chain_n[0]),
        .R(1'b0));
  FDRE \chain_n_reg[1] 
       (.C(clk),
        .CE(\chain_n[7]_i_1_n_0 ),
        .D(ul_r[1]),
        .Q(chain_n[1]),
        .R(1'b0));
  FDRE \chain_n_reg[2] 
       (.C(clk),
        .CE(\chain_n[7]_i_1_n_0 ),
        .D(ul_r[2]),
        .Q(chain_n[2]),
        .R(1'b0));
  FDRE \chain_n_reg[3] 
       (.C(clk),
        .CE(\chain_n[7]_i_1_n_0 ),
        .D(ul_r[3]),
        .Q(chain_n[3]),
        .R(1'b0));
  FDRE \chain_n_reg[4] 
       (.C(clk),
        .CE(\chain_n[7]_i_1_n_0 ),
        .D(ul_r[4]),
        .Q(chain_n[4]),
        .R(1'b0));
  FDRE \chain_n_reg[5] 
       (.C(clk),
        .CE(\chain_n[7]_i_1_n_0 ),
        .D(ul_r[5]),
        .Q(chain_n[5]),
        .R(1'b0));
  FDRE \chain_n_reg[6] 
       (.C(clk),
        .CE(\chain_n[7]_i_1_n_0 ),
        .D(ul_r[6]),
        .Q(chain_n[6]),
        .R(1'b0));
  FDRE \chain_n_reg[7] 
       (.C(clk),
        .CE(\chain_n[7]_i_1_n_0 ),
        .D(ul_r[7]),
        .Q(chain_n[7]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0004)) 
    \cur_left[44]_i_1 
       (.I0(\st_reg[2]_0 ),
        .I1(\st_reg[1]_0 ),
        .I2(\st_reg[0]_0 ),
        .I3(is_real__2),
        .O(\cur_left[44]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04000404)) 
    \cur_left[44]_i_2 
       (.I0(\st_reg[0]_0 ),
        .I1(\st_reg[1]_0 ),
        .I2(\st_reg[2]_0 ),
        .I3(sig_valid),
        .I4(is_real__2),
        .O(\cur_left[44]_i_2_n_0 ));
  FDRE \cur_left_reg[0] 
       (.C(clk),
        .CE(\cur_left[44]_i_2_n_0 ),
        .D(sig_left[0]),
        .Q(\cur_left_reg_n_0_[0] ),
        .R(\cur_left[44]_i_1_n_0 ));
  FDRE \cur_left_reg[10] 
       (.C(clk),
        .CE(\cur_left[44]_i_2_n_0 ),
        .D(sig_left[10]),
        .Q(data6[3]),
        .R(\cur_left[44]_i_1_n_0 ));
  FDRE \cur_left_reg[11] 
       (.C(clk),
        .CE(\cur_left[44]_i_2_n_0 ),
        .D(sig_left[11]),
        .Q(data6[4]),
        .R(\cur_left[44]_i_1_n_0 ));
  FDRE \cur_left_reg[12] 
       (.C(clk),
        .CE(\cur_left[44]_i_2_n_0 ),
        .D(sig_left[12]),
        .Q(data6[5]),
        .R(\cur_left[44]_i_1_n_0 ));
  FDRE \cur_left_reg[13] 
       (.C(clk),
        .CE(\cur_left[44]_i_2_n_0 ),
        .D(sig_left[13]),
        .Q(data6[6]),
        .R(\cur_left[44]_i_1_n_0 ));
  FDRE \cur_left_reg[14] 
       (.C(clk),
        .CE(\cur_left[44]_i_2_n_0 ),
        .D(sig_left[14]),
        .Q(data7[0]),
        .R(\cur_left[44]_i_1_n_0 ));
  FDRE \cur_left_reg[15] 
       (.C(clk),
        .CE(\cur_left[44]_i_2_n_0 ),
        .D(sig_left[15]),
        .Q(data7[1]),
        .R(\cur_left[44]_i_1_n_0 ));
  FDRE \cur_left_reg[16] 
       (.C(clk),
        .CE(\cur_left[44]_i_2_n_0 ),
        .D(sig_left[16]),
        .Q(data7[2]),
        .R(\cur_left[44]_i_1_n_0 ));
  FDRE \cur_left_reg[17] 
       (.C(clk),
        .CE(\cur_left[44]_i_2_n_0 ),
        .D(sig_left[17]),
        .Q(data7[3]),
        .R(\cur_left[44]_i_1_n_0 ));
  FDRE \cur_left_reg[18] 
       (.C(clk),
        .CE(\cur_left[44]_i_2_n_0 ),
        .D(sig_left[18]),
        .Q(data7[4]),
        .R(\cur_left[44]_i_1_n_0 ));
  FDRE \cur_left_reg[19] 
       (.C(clk),
        .CE(\cur_left[44]_i_2_n_0 ),
        .D(sig_left[19]),
        .Q(data7[5]),
        .R(\cur_left[44]_i_1_n_0 ));
  FDRE \cur_left_reg[1] 
       (.C(clk),
        .CE(\cur_left[44]_i_2_n_0 ),
        .D(sig_left[1]),
        .Q(\cur_left_reg_n_0_[1] ),
        .R(\cur_left[44]_i_1_n_0 ));
  FDRE \cur_left_reg[20] 
       (.C(clk),
        .CE(\cur_left[44]_i_2_n_0 ),
        .D(sig_left[20]),
        .Q(data7[6]),
        .R(\cur_left[44]_i_1_n_0 ));
  FDRE \cur_left_reg[21] 
       (.C(clk),
        .CE(\cur_left[44]_i_2_n_0 ),
        .D(sig_left[21]),
        .Q(data0[0]),
        .R(\cur_left[44]_i_1_n_0 ));
  FDRE \cur_left_reg[22] 
       (.C(clk),
        .CE(\cur_left[44]_i_2_n_0 ),
        .D(sig_left[22]),
        .Q(data0[1]),
        .R(\cur_left[44]_i_1_n_0 ));
  FDRE \cur_left_reg[23] 
       (.C(clk),
        .CE(\cur_left[44]_i_2_n_0 ),
        .D(sig_left[23]),
        .Q(data0[2]),
        .R(\cur_left[44]_i_1_n_0 ));
  FDRE \cur_left_reg[24] 
       (.C(clk),
        .CE(\cur_left[44]_i_2_n_0 ),
        .D(sig_left[24]),
        .Q(data0[3]),
        .R(\cur_left[44]_i_1_n_0 ));
  FDRE \cur_left_reg[25] 
       (.C(clk),
        .CE(\cur_left[44]_i_2_n_0 ),
        .D(sig_left[25]),
        .Q(data0[4]),
        .R(\cur_left[44]_i_1_n_0 ));
  FDRE \cur_left_reg[26] 
       (.C(clk),
        .CE(\cur_left[44]_i_2_n_0 ),
        .D(sig_left[26]),
        .Q(data0[5]),
        .R(\cur_left[44]_i_1_n_0 ));
  FDRE \cur_left_reg[27] 
       (.C(clk),
        .CE(\cur_left[44]_i_2_n_0 ),
        .D(sig_left[27]),
        .Q(data0[6]),
        .R(\cur_left[44]_i_1_n_0 ));
  FDRE \cur_left_reg[28] 
       (.C(clk),
        .CE(\cur_left[44]_i_2_n_0 ),
        .D(sig_left[28]),
        .Q(\cur_left_reg_n_0_[28] ),
        .R(\cur_left[44]_i_1_n_0 ));
  FDRE \cur_left_reg[29] 
       (.C(clk),
        .CE(\cur_left[44]_i_2_n_0 ),
        .D(sig_left[29]),
        .Q(\cur_left_reg_n_0_[29] ),
        .R(\cur_left[44]_i_1_n_0 ));
  FDRE \cur_left_reg[2] 
       (.C(clk),
        .CE(\cur_left[44]_i_2_n_0 ),
        .D(sig_left[2]),
        .Q(\cur_left_reg_n_0_[2] ),
        .R(\cur_left[44]_i_1_n_0 ));
  FDRE \cur_left_reg[30] 
       (.C(clk),
        .CE(\cur_left[44]_i_2_n_0 ),
        .D(sig_left[30]),
        .Q(\cur_left_reg_n_0_[30] ),
        .R(\cur_left[44]_i_1_n_0 ));
  FDRE \cur_left_reg[31] 
       (.C(clk),
        .CE(\cur_left[44]_i_2_n_0 ),
        .D(sig_left[31]),
        .Q(\cur_left_reg_n_0_[31] ),
        .R(\cur_left[44]_i_1_n_0 ));
  FDRE \cur_left_reg[32] 
       (.C(clk),
        .CE(\cur_left[44]_i_2_n_0 ),
        .D(sig_left[32]),
        .Q(\cur_left_reg_n_0_[32] ),
        .R(\cur_left[44]_i_1_n_0 ));
  FDRE \cur_left_reg[33] 
       (.C(clk),
        .CE(\cur_left[44]_i_2_n_0 ),
        .D(sig_left[33]),
        .Q(\cur_left_reg_n_0_[33] ),
        .R(\cur_left[44]_i_1_n_0 ));
  FDRE \cur_left_reg[34] 
       (.C(clk),
        .CE(\cur_left[44]_i_2_n_0 ),
        .D(sig_left[34]),
        .Q(\cur_left_reg_n_0_[34] ),
        .R(\cur_left[44]_i_1_n_0 ));
  FDRE \cur_left_reg[35] 
       (.C(clk),
        .CE(\cur_left[44]_i_2_n_0 ),
        .D(sig_left[35]),
        .Q(\cur_left_reg_n_0_[35] ),
        .R(\cur_left[44]_i_1_n_0 ));
  FDRE \cur_left_reg[36] 
       (.C(clk),
        .CE(\cur_left[44]_i_2_n_0 ),
        .D(sig_left[36]),
        .Q(\cur_left_reg_n_0_[36] ),
        .R(\cur_left[44]_i_1_n_0 ));
  FDRE \cur_left_reg[37] 
       (.C(clk),
        .CE(\cur_left[44]_i_2_n_0 ),
        .D(sig_left[37]),
        .Q(\cur_left_reg_n_0_[37] ),
        .R(\cur_left[44]_i_1_n_0 ));
  FDRE \cur_left_reg[38] 
       (.C(clk),
        .CE(\cur_left[44]_i_2_n_0 ),
        .D(sig_left[38]),
        .Q(\cur_left_reg_n_0_[38] ),
        .R(\cur_left[44]_i_1_n_0 ));
  FDRE \cur_left_reg[39] 
       (.C(clk),
        .CE(\cur_left[44]_i_2_n_0 ),
        .D(sig_left[39]),
        .Q(\cur_left_reg_n_0_[39] ),
        .R(\cur_left[44]_i_1_n_0 ));
  FDRE \cur_left_reg[3] 
       (.C(clk),
        .CE(\cur_left[44]_i_2_n_0 ),
        .D(sig_left[3]),
        .Q(\cur_left_reg_n_0_[3] ),
        .R(\cur_left[44]_i_1_n_0 ));
  FDRE \cur_left_reg[40] 
       (.C(clk),
        .CE(\cur_left[44]_i_2_n_0 ),
        .D(sig_left[40]),
        .Q(\cur_left_reg_n_0_[40] ),
        .R(\cur_left[44]_i_1_n_0 ));
  FDRE \cur_left_reg[41] 
       (.C(clk),
        .CE(\cur_left[44]_i_2_n_0 ),
        .D(sig_left[41]),
        .Q(\cur_left_reg_n_0_[41] ),
        .R(\cur_left[44]_i_1_n_0 ));
  FDRE \cur_left_reg[42] 
       (.C(clk),
        .CE(\cur_left[44]_i_2_n_0 ),
        .D(sig_left[42]),
        .Q(\cur_left_reg_n_0_[42] ),
        .R(\cur_left[44]_i_1_n_0 ));
  FDRE \cur_left_reg[43] 
       (.C(clk),
        .CE(\cur_left[44]_i_2_n_0 ),
        .D(sig_left[43]),
        .Q(\cur_left_reg_n_0_[43] ),
        .R(\cur_left[44]_i_1_n_0 ));
  FDRE \cur_left_reg[44] 
       (.C(clk),
        .CE(\cur_left[44]_i_2_n_0 ),
        .D(sig_left_ok),
        .Q(\cur_left_reg_n_0_[44] ),
        .R(\cur_left[44]_i_1_n_0 ));
  FDRE \cur_left_reg[4] 
       (.C(clk),
        .CE(\cur_left[44]_i_2_n_0 ),
        .D(sig_left[4]),
        .Q(\cur_left_reg_n_0_[4] ),
        .R(\cur_left[44]_i_1_n_0 ));
  FDRE \cur_left_reg[5] 
       (.C(clk),
        .CE(\cur_left[44]_i_2_n_0 ),
        .D(sig_left[5]),
        .Q(\cur_left_reg_n_0_[5] ),
        .R(\cur_left[44]_i_1_n_0 ));
  FDRE \cur_left_reg[6] 
       (.C(clk),
        .CE(\cur_left[44]_i_2_n_0 ),
        .D(sig_left[6]),
        .Q(\cur_left_reg_n_0_[6] ),
        .R(\cur_left[44]_i_1_n_0 ));
  FDRE \cur_left_reg[7] 
       (.C(clk),
        .CE(\cur_left[44]_i_2_n_0 ),
        .D(sig_left[7]),
        .Q(data6[0]),
        .R(\cur_left[44]_i_1_n_0 ));
  FDRE \cur_left_reg[8] 
       (.C(clk),
        .CE(\cur_left[44]_i_2_n_0 ),
        .D(sig_left[8]),
        .Q(data6[1]),
        .R(\cur_left[44]_i_1_n_0 ));
  FDRE \cur_left_reg[9] 
       (.C(clk),
        .CE(\cur_left[44]_i_2_n_0 ),
        .D(sig_left[9]),
        .Q(data6[2]),
        .R(\cur_left[44]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFAFEFAEEAAEEAA)) 
    \dl[0]_i_1 
       (.I0(\dl[0]_i_2_n_0 ),
        .I1(\dl[2]_i_3_n_0 ),
        .I2(\dl[0]_i_3_n_0 ),
        .I3(\dl[0]_i_4_n_0 ),
        .I4(\dl[2]_i_6_n_0 ),
        .I5(\dl[7]_i_2_n_0 ),
        .O(\dl[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF60204000)) 
    \dl[0]_i_10 
       (.I0(\fcnt_reg_n_0_[1] ),
        .I1(\fcnt_reg_n_0_[2] ),
        .I2(\fcnt_reg_n_0_[0] ),
        .I3(\cur_left_reg_n_0_[0] ),
        .I4(\cur_left_reg_n_0_[42] ),
        .I5(\dl[0]_i_13_n_0 ),
        .O(\dl[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF00C000A000C000A)) 
    \dl[0]_i_11 
       (.I0(data0[0]),
        .I1(\cur_left_reg_n_0_[35] ),
        .I2(\fcnt_reg_n_0_[0] ),
        .I3(\fcnt_reg_n_0_[2] ),
        .I4(\fcnt_reg_n_0_[1] ),
        .I5(data7[0]),
        .O(\dl[0]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00AC0000)) 
    \dl[0]_i_12 
       (.I0(\rq_reg_n_0_[42] ),
        .I1(data2[0]),
        .I2(c[2]),
        .I3(c[0]),
        .I4(c[1]),
        .O(\dl[0]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h0C200020)) 
    \dl[0]_i_13 
       (.I0(\cur_left_reg_n_0_[28] ),
        .I1(\fcnt_reg_n_0_[1] ),
        .I2(\fcnt_reg_n_0_[0] ),
        .I3(\fcnt_reg_n_0_[2] ),
        .I4(data6[0]),
        .O(\dl[0]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h5400)) 
    \dl[0]_i_2 
       (.I0(\fcnt_reg_n_0_[2] ),
        .I1(\fcnt_reg_n_0_[0] ),
        .I2(\fcnt_reg_n_0_[1] ),
        .I3(\dl[7]_i_3_n_0 ),
        .O(\dl[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88FFF8888888F888)) 
    \dl[0]_i_3 
       (.I0(\dl[0]_i_5_n_0 ),
        .I1(\dl[0]_i_6_n_0 ),
        .I2(r_gmin[0]),
        .I3(\fcnt_reg_n_0_[0] ),
        .I4(\fcnt_reg_n_0_[1] ),
        .I5(r_kstar[0]),
        .O(\dl[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFEEE)) 
    \dl[0]_i_4 
       (.I0(\dl[0]_i_7_n_0 ),
        .I1(\dl[5]_i_4_n_0 ),
        .I2(\dl[5]_i_5_n_0 ),
        .I3(p_2_in[0]),
        .O(\dl[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \dl[0]_i_5 
       (.I0(xa[0]),
        .I1(\xa_reg[1]_rep_n_0 ),
        .I2(xa[2]),
        .I3(\xa_reg[5]_rep_n_0 ),
        .I4(xa[8]),
        .I5(xa[9]),
        .O(\dl[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \dl[0]_i_6 
       (.I0(xa[3]),
        .I1(xa[4]),
        .I2(xa[6]),
        .I3(xa[7]),
        .I4(\fcnt_reg_n_0_[1] ),
        .I5(\fcnt_reg_n_0_[0] ),
        .O(\dl[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFE0E0E0E0E0)) 
    \dl[0]_i_7 
       (.I0(\dl[0]_i_8_n_0 ),
        .I1(\dl[0]_i_9_n_0 ),
        .I2(\dl[6]_i_7_n_0 ),
        .I3(\dl[0]_i_10_n_0 ),
        .I4(\dl[0]_i_11_n_0 ),
        .I5(\dl[6]_i_10_n_0 ),
        .O(\dl[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF44400400)) 
    \dl[0]_i_8 
       (.I0(c[1]),
        .I1(c[0]),
        .I2(c[2]),
        .I3(data1[0]),
        .I4(data5[0]),
        .I5(\dl[0]_i_12_n_0 ),
        .O(\dl[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00F000000000CCAA)) 
    \dl[0]_i_9 
       (.I0(\rq_reg_n_0_[0] ),
        .I1(data4[0]),
        .I2(data3[0]),
        .I3(c[2]),
        .I4(c[0]),
        .I5(c[1]),
        .O(\dl[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBBAEAAAA)) 
    \dl[1]_i_1 
       (.I0(\dl[1]_i_2_n_0 ),
        .I1(\fcnt_reg_n_0_[2] ),
        .I2(\fcnt_reg_n_0_[1] ),
        .I3(\fcnt_reg_n_0_[0] ),
        .I4(\dl[7]_i_3_n_0 ),
        .I5(\dl[1]_i_3_n_0 ),
        .O(\dl[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h0C200020)) 
    \dl[1]_i_10 
       (.I0(\cur_left_reg_n_0_[29] ),
        .I1(\fcnt_reg_n_0_[1] ),
        .I2(\fcnt_reg_n_0_[0] ),
        .I3(\fcnt_reg_n_0_[2] ),
        .I4(data6[1]),
        .O(\dl[1]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAA80)) 
    \dl[1]_i_2 
       (.I0(\dl[6]_i_5_n_0 ),
        .I1(p_2_in[1]),
        .I2(\dl[5]_i_5_n_0 ),
        .I3(\dl[5]_i_4_n_0 ),
        .I4(\dl[1]_i_4_n_0 ),
        .O(\dl[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000C0C0F000A0A0)) 
    \dl[1]_i_3 
       (.I0(is_real__2),
        .I1(r_gmin[1]),
        .I2(\dl[7]_i_2_n_0 ),
        .I3(r_kstar[1]),
        .I4(\fcnt_reg_n_0_[1] ),
        .I5(\fcnt_reg_n_0_[0] ),
        .O(\dl[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFE0E0E0E0E0)) 
    \dl[1]_i_4 
       (.I0(\dl[1]_i_5_n_0 ),
        .I1(\dl[1]_i_6_n_0 ),
        .I2(\dl[6]_i_7_n_0 ),
        .I3(\dl[1]_i_7_n_0 ),
        .I4(\dl[1]_i_8_n_0 ),
        .I5(\dl[6]_i_10_n_0 ),
        .O(\dl[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF44400400)) 
    \dl[1]_i_5 
       (.I0(c[1]),
        .I1(c[0]),
        .I2(c[2]),
        .I3(data1[1]),
        .I4(data5[1]),
        .I5(\dl[1]_i_9_n_0 ),
        .O(\dl[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00F000000000CCAA)) 
    \dl[1]_i_6 
       (.I0(\rq_reg_n_0_[1] ),
        .I1(data4[1]),
        .I2(data3[1]),
        .I3(c[2]),
        .I4(c[0]),
        .I5(c[1]),
        .O(\dl[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF60204000)) 
    \dl[1]_i_7 
       (.I0(\fcnt_reg_n_0_[1] ),
        .I1(\fcnt_reg_n_0_[2] ),
        .I2(\fcnt_reg_n_0_[0] ),
        .I3(\cur_left_reg_n_0_[1] ),
        .I4(\cur_left_reg_n_0_[43] ),
        .I5(\dl[1]_i_10_n_0 ),
        .O(\dl[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF00C000A000C000A)) 
    \dl[1]_i_8 
       (.I0(data0[1]),
        .I1(\cur_left_reg_n_0_[36] ),
        .I2(\fcnt_reg_n_0_[0] ),
        .I3(\fcnt_reg_n_0_[2] ),
        .I4(\fcnt_reg_n_0_[1] ),
        .I5(data7[1]),
        .O(\dl[1]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00AC0000)) 
    \dl[1]_i_9 
       (.I0(\rq_reg_n_0_[43] ),
        .I1(data2[1]),
        .I2(c[2]),
        .I3(c[0]),
        .I4(c[1]),
        .O(\dl[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFAFEFAEEAAEEAA)) 
    \dl[2]_i_1 
       (.I0(\dl[2]_i_2_n_0 ),
        .I1(\dl[2]_i_3_n_0 ),
        .I2(\dl[2]_i_4_n_0 ),
        .I3(\dl[2]_i_5_n_0 ),
        .I4(\dl[2]_i_6_n_0 ),
        .I5(\dl[7]_i_2_n_0 ),
        .O(\dl[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \dl[2]_i_10 
       (.I0(xa[9]),
        .I1(xa[8]),
        .I2(xa[5]),
        .O(\dl[2]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \dl[2]_i_11 
       (.I0(xa[3]),
        .I1(xa[4]),
        .O(\dl[2]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h0007)) 
    \dl[2]_i_12 
       (.I0(xa[7]),
        .I1(xa[6]),
        .I2(xa[9]),
        .I3(xa[8]),
        .O(\dl[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF44400400)) 
    \dl[2]_i_13 
       (.I0(c[1]),
        .I1(c[0]),
        .I2(c[2]),
        .I3(data1[2]),
        .I4(data5[2]),
        .I5(\dl[2]_i_17_n_0 ),
        .O(\dl[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00F000000000CCAA)) 
    \dl[2]_i_14 
       (.I0(\rq_reg_n_0_[2] ),
        .I1(data4[2]),
        .I2(data3[2]),
        .I3(c[2]),
        .I4(c[0]),
        .I5(c[1]),
        .O(\dl[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF60204000)) 
    \dl[2]_i_15 
       (.I0(\fcnt_reg_n_0_[1] ),
        .I1(\fcnt_reg_n_0_[2] ),
        .I2(\fcnt_reg_n_0_[0] ),
        .I3(\cur_left_reg_n_0_[2] ),
        .I4(\cur_left_reg_n_0_[44] ),
        .I5(\dl[2]_i_18_n_0 ),
        .O(\dl[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hF00C000A000C000A)) 
    \dl[2]_i_16 
       (.I0(data0[2]),
        .I1(\cur_left_reg_n_0_[37] ),
        .I2(\fcnt_reg_n_0_[0] ),
        .I3(\fcnt_reg_n_0_[2] ),
        .I4(\fcnt_reg_n_0_[1] ),
        .I5(data7[2]),
        .O(\dl[2]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h00AC0000)) 
    \dl[2]_i_17 
       (.I0(\rq_reg_n_0_[44] ),
        .I1(data2[2]),
        .I2(c[2]),
        .I3(c[0]),
        .I4(c[1]),
        .O(\dl[2]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h0C200020)) 
    \dl[2]_i_18 
       (.I0(\cur_left_reg_n_0_[30] ),
        .I1(\fcnt_reg_n_0_[1] ),
        .I2(\fcnt_reg_n_0_[0] ),
        .I3(\fcnt_reg_n_0_[2] ),
        .I4(data6[2]),
        .O(\dl[2]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \dl[2]_i_2 
       (.I0(\dl[7]_i_3_n_0 ),
        .I1(\fcnt_reg_n_0_[1] ),
        .I2(\fcnt_reg_n_0_[2] ),
        .I3(\fcnt_reg_n_0_[0] ),
        .O(\dl[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222220)) 
    \dl[2]_i_3 
       (.I0(\rp[2]_i_4_n_0 ),
        .I1(rst),
        .I2(\fcnt_reg_n_0_[2] ),
        .I3(\fcnt_reg_n_0_[4] ),
        .I4(\fcnt_reg_n_0_[3] ),
        .I5(\dl[6]_i_9_n_0 ),
        .O(\dl[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00FFF0880000F088)) 
    \dl[2]_i_4 
       (.I0(use_b015_in),
        .I1(\dl[2]_i_8_n_0 ),
        .I2(r_gmin[2]),
        .I3(\fcnt_reg_n_0_[0] ),
        .I4(\fcnt_reg_n_0_[1] ),
        .I5(r_kstar[2]),
        .O(\dl[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFEEE)) 
    \dl[2]_i_5 
       (.I0(\dl[2]_i_9_n_0 ),
        .I1(\dl[5]_i_4_n_0 ),
        .I2(\dl[5]_i_5_n_0 ),
        .I3(p_2_in[2]),
        .O(\dl[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \dl[2]_i_6 
       (.I0(\fcnt_reg_n_0_[1] ),
        .I1(\fcnt_reg_n_0_[0] ),
        .I2(\fcnt_reg_n_0_[5] ),
        .I3(p_0_in0),
        .I4(\fcnt_reg_n_0_[6] ),
        .O(\dl[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \dl[2]_i_7 
       (.I0(xa[6]),
        .I1(xa[7]),
        .I2(xa[4]),
        .I3(\xa_reg[5]_rep_n_0 ),
        .I4(xa[8]),
        .I5(xa[9]),
        .O(use_b015_in));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000001)) 
    \dl[2]_i_8 
       (.I0(\dl[2]_i_10_n_0 ),
        .I1(xa[0]),
        .I2(\xa_reg[1]_rep_n_0 ),
        .I3(xa[2]),
        .I4(\dl[2]_i_11_n_0 ),
        .I5(\dl[2]_i_12_n_0 ),
        .O(\dl[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFE0E0E0E0E0)) 
    \dl[2]_i_9 
       (.I0(\dl[2]_i_13_n_0 ),
        .I1(\dl[2]_i_14_n_0 ),
        .I2(\dl[6]_i_7_n_0 ),
        .I3(\dl[2]_i_15_n_0 ),
        .I4(\dl[2]_i_16_n_0 ),
        .I5(\dl[6]_i_10_n_0 ),
        .O(\dl[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000C080)) 
    \dl[3]_i_1 
       (.I0(\dl[3]_i_2_n_0 ),
        .I1(\dl[3]_i_3_n_0 ),
        .I2(\st_reg[0]_0 ),
        .I3(\st_reg[1]_0 ),
        .I4(\st_reg[2]_0 ),
        .I5(rst),
        .O(\dl[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF08300800)) 
    \dl[3]_i_10 
       (.I0(data6[3]),
        .I1(\fcnt_reg_n_0_[2] ),
        .I2(\fcnt_reg_n_0_[0] ),
        .I3(\fcnt_reg_n_0_[1] ),
        .I4(\cur_left_reg_n_0_[31] ),
        .I5(\dl[3]_i_12_n_0 ),
        .O(\dl[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF06040200)) 
    \dl[3]_i_11 
       (.I0(c[1]),
        .I1(c[0]),
        .I2(c[2]),
        .I3(data2[3]),
        .I4(data1[3]),
        .I5(\dl[3]_i_13_n_0 ),
        .O(\dl[3]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h000000AC)) 
    \dl[3]_i_12 
       (.I0(\cur_left_reg_n_0_[38] ),
        .I1(data0[3]),
        .I2(\fcnt_reg_n_0_[1] ),
        .I3(\fcnt_reg_n_0_[0] ),
        .I4(\fcnt_reg_n_0_[2] ),
        .O(\dl[3]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h000000AC)) 
    \dl[3]_i_13 
       (.I0(data4[3]),
        .I1(\rq_reg_n_0_[3] ),
        .I2(c[2]),
        .I3(c[0]),
        .I4(c[1]),
        .O(\dl[3]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \dl[3]_i_2 
       (.I0(\fcnt_reg_n_0_[1] ),
        .I1(\fcnt_reg_n_0_[0] ),
        .O(\dl[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEAAAAAAAA)) 
    \dl[3]_i_3 
       (.I0(\dl[3]_i_4_n_0 ),
        .I1(\dl[3]_i_5_n_0 ),
        .I2(\dl[6]_i_7_n_0 ),
        .I3(\dl[3]_i_6_n_0 ),
        .I4(\dl[3]_i_7_n_0 ),
        .I5(\dl[3]_i_8_n_0 ),
        .O(\dl[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020003)) 
    \dl[3]_i_4 
       (.I0(\dl[3]_i_9_n_0 ),
        .I1(\fcnt_reg_n_0_[4] ),
        .I2(\fcnt_reg_n_0_[3] ),
        .I3(\dl[6]_i_9_n_0 ),
        .I4(\st_reg[1]_0 ),
        .I5(\fcnt_reg_n_0_[2] ),
        .O(\dl[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA202020)) 
    \dl[3]_i_5 
       (.I0(\dl[6]_i_10_n_0 ),
        .I1(\dl[6]_i_11_n_0 ),
        .I2(data7[3]),
        .I3(\cur_left_reg_n_0_[3] ),
        .I4(\dl[6]_i_12_n_0 ),
        .I5(\dl[3]_i_10_n_0 ),
        .O(\dl[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAEEAAEAAAAEAAAAA)) 
    \dl[3]_i_6 
       (.I0(\dl[3]_i_11_n_0 ),
        .I1(c[0]),
        .I2(c[2]),
        .I3(c[1]),
        .I4(data5[3]),
        .I5(data3[3]),
        .O(\dl[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAABAAAA00000000)) 
    \dl[3]_i_7 
       (.I0(p_2_in[3]),
        .I1(\dl[6]_i_9_n_0 ),
        .I2(\fcnt_reg_n_0_[0] ),
        .I3(\fcnt_reg_n_0_[1] ),
        .I4(\fcnt_reg_n_0_[2] ),
        .I5(\dl[5]_i_5_n_0 ),
        .O(\dl[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h44404040)) 
    \dl[3]_i_8 
       (.I0(\dl[6]_i_9_n_0 ),
        .I1(\st_reg[1]_0 ),
        .I2(\dl[7]_i_4_n_0 ),
        .I3(\fcnt_reg_n_0_[0] ),
        .I4(\fcnt_reg_n_0_[1] ),
        .O(\dl[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h62400000)) 
    \dl[3]_i_9 
       (.I0(\fcnt_reg_n_0_[1] ),
        .I1(\fcnt_reg_n_0_[0] ),
        .I2(r_gmin[3]),
        .I3(r_kstar[3]),
        .I4(\st_reg[1]_0 ),
        .O(\dl[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF4040F050)) 
    \dl[4]_i_1 
       (.I0(\fcnt_reg_n_0_[0] ),
        .I1(r_kstar[4]),
        .I2(\dl[7]_i_2_n_0 ),
        .I3(r_gmin[4]),
        .I4(\fcnt_reg_n_0_[1] ),
        .I5(\dl[4]_i_2_n_0 ),
        .O(\dl[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000AC)) 
    \dl[4]_i_10 
       (.I0(\cur_left_reg_n_0_[39] ),
        .I1(data0[4]),
        .I2(\fcnt_reg_n_0_[1] ),
        .I3(\fcnt_reg_n_0_[0] ),
        .I4(\fcnt_reg_n_0_[2] ),
        .O(\dl[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAA80)) 
    \dl[4]_i_2 
       (.I0(\dl[6]_i_5_n_0 ),
        .I1(p_2_in[4]),
        .I2(\dl[5]_i_5_n_0 ),
        .I3(\dl[5]_i_4_n_0 ),
        .I4(\dl[4]_i_3_n_0 ),
        .I5(\dl[4]_i_4_n_0 ),
        .O(\dl[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    \dl[4]_i_3 
       (.I0(\dl[6]_i_7_n_0 ),
        .I1(data3[4]),
        .I2(\dl[4]_i_5_n_0 ),
        .I3(data5[4]),
        .I4(\dl[4]_i_6_n_0 ),
        .I5(\dl[4]_i_7_n_0 ),
        .O(\dl[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA202020)) 
    \dl[4]_i_4 
       (.I0(\dl[6]_i_10_n_0 ),
        .I1(\dl[6]_i_11_n_0 ),
        .I2(data7[4]),
        .I3(\cur_left_reg_n_0_[4] ),
        .I4(\dl[6]_i_12_n_0 ),
        .I5(\dl[4]_i_8_n_0 ),
        .O(\dl[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \dl[4]_i_5 
       (.I0(c[2]),
        .I1(c[0]),
        .I2(c[1]),
        .O(\dl[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \dl[4]_i_6 
       (.I0(c[1]),
        .I1(c[2]),
        .I2(c[0]),
        .O(\dl[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF06040200)) 
    \dl[4]_i_7 
       (.I0(c[1]),
        .I1(c[0]),
        .I2(c[2]),
        .I3(data2[4]),
        .I4(data1[4]),
        .I5(\dl[4]_i_9_n_0 ),
        .O(\dl[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF08300800)) 
    \dl[4]_i_8 
       (.I0(data6[4]),
        .I1(\fcnt_reg_n_0_[2] ),
        .I2(\fcnt_reg_n_0_[0] ),
        .I3(\fcnt_reg_n_0_[1] ),
        .I4(\cur_left_reg_n_0_[32] ),
        .I5(\dl[4]_i_10_n_0 ),
        .O(\dl[4]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h000000AC)) 
    \dl[4]_i_9 
       (.I0(data4[4]),
        .I1(\rq_reg_n_0_[4] ),
        .I2(c[2]),
        .I3(c[0]),
        .I4(c[1]),
        .O(\dl[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEFEAAAAAAAA)) 
    \dl[5]_i_1 
       (.I0(\dl[5]_i_2_n_0 ),
        .I1(\dl[5]_i_3_n_0 ),
        .I2(\dl[5]_i_4_n_0 ),
        .I3(\dl[5]_i_5_n_0 ),
        .I4(p_2_in[5]),
        .I5(\dl[6]_i_5_n_0 ),
        .O(\dl[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF06040200)) 
    \dl[5]_i_10 
       (.I0(c[1]),
        .I1(c[0]),
        .I2(c[2]),
        .I3(data2[5]),
        .I4(data1[5]),
        .I5(\dl[5]_i_12_n_0 ),
        .O(\dl[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF08300800)) 
    \dl[5]_i_11 
       (.I0(data6[5]),
        .I1(\fcnt_reg_n_0_[2] ),
        .I2(\fcnt_reg_n_0_[0] ),
        .I3(\fcnt_reg_n_0_[1] ),
        .I4(\cur_left_reg_n_0_[33] ),
        .I5(\dl[5]_i_13_n_0 ),
        .O(\dl[5]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h000000AC)) 
    \dl[5]_i_12 
       (.I0(data4[5]),
        .I1(\rq_reg_n_0_[5] ),
        .I2(c[2]),
        .I3(c[0]),
        .I4(c[1]),
        .O(\dl[5]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h000000AC)) 
    \dl[5]_i_13 
       (.I0(\cur_left_reg_n_0_[40] ),
        .I1(data0[5]),
        .I2(\fcnt_reg_n_0_[1] ),
        .I3(\fcnt_reg_n_0_[0] ),
        .I4(\fcnt_reg_n_0_[2] ),
        .O(\dl[5]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEAEAFAAAAAAA)) 
    \dl[5]_i_2 
       (.I0(\dl[5]_i_6_n_0 ),
        .I1(r_gmin[5]),
        .I2(\dl[7]_i_2_n_0 ),
        .I3(r_kstar[5]),
        .I4(\fcnt_reg_n_0_[1] ),
        .I5(\fcnt_reg_n_0_[0] ),
        .O(\dl[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000022AAAAF0F000)) 
    \dl[5]_i_3 
       (.I0(\dl[5]_i_7_n_0 ),
        .I1(\fcnt_reg_n_0_[1] ),
        .I2(\dl[5]_i_8_n_0 ),
        .I3(\fcnt_reg_n_0_[3] ),
        .I4(\dl[5]_i_9_n_0 ),
        .I5(\fcnt_reg_n_0_[4] ),
        .O(\dl[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \dl[5]_i_4 
       (.I0(\fcnt_reg_n_0_[2] ),
        .I1(\fcnt_reg_n_0_[3] ),
        .I2(\fcnt_reg_n_0_[4] ),
        .I3(\fcnt_reg_n_0_[1] ),
        .I4(\fcnt_reg_n_0_[0] ),
        .I5(\dl[6]_i_9_n_0 ),
        .O(\dl[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h01010103)) 
    \dl[5]_i_5 
       (.I0(\fcnt_reg_n_0_[2] ),
        .I1(\fcnt_reg_n_0_[3] ),
        .I2(\fcnt_reg_n_0_[4] ),
        .I3(\fcnt_reg_n_0_[1] ),
        .I4(\fcnt_reg_n_0_[0] ),
        .O(\dl[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \dl[5]_i_6 
       (.I0(\dl[7]_i_3_n_0 ),
        .I1(\fcnt_reg_n_0_[2] ),
        .I2(\fcnt_reg_n_0_[0] ),
        .I3(\fcnt_reg_n_0_[1] ),
        .O(\dl[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAEEAAEAAAAEAAAAA)) 
    \dl[5]_i_7 
       (.I0(\dl[5]_i_10_n_0 ),
        .I1(c[0]),
        .I2(c[2]),
        .I3(c[1]),
        .I4(data5[5]),
        .I5(data3[5]),
        .O(\dl[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFAAAEAAABAAAAAAA)) 
    \dl[5]_i_8 
       (.I0(\dl[5]_i_11_n_0 ),
        .I1(\fcnt_reg_n_0_[1] ),
        .I2(\fcnt_reg_n_0_[2] ),
        .I3(\fcnt_reg_n_0_[0] ),
        .I4(\cur_left_reg_n_0_[5] ),
        .I5(data7[5]),
        .O(\dl[5]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hFF0E0000)) 
    \dl[5]_i_9 
       (.I0(\fcnt_reg_n_0_[0] ),
        .I1(\fcnt_reg_n_0_[1] ),
        .I2(\fcnt_reg_n_0_[4] ),
        .I3(\fcnt_reg_n_0_[3] ),
        .I4(\fcnt_reg_n_0_[2] ),
        .O(\dl[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF40FF40FF40)) 
    \dl[6]_i_1 
       (.I0(\dl[6]_i_2_n_0 ),
        .I1(r_kstar[6]),
        .I2(\dl[7]_i_2_n_0 ),
        .I3(\dl[6]_i_3_n_0 ),
        .I4(\dl[6]_i_4_n_0 ),
        .I5(\dl[6]_i_5_n_0 ),
        .O(\dl[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h000054AA)) 
    \dl[6]_i_10 
       (.I0(\fcnt_reg_n_0_[3] ),
        .I1(\fcnt_reg_n_0_[0] ),
        .I2(\fcnt_reg_n_0_[1] ),
        .I3(\fcnt_reg_n_0_[2] ),
        .I4(\fcnt_reg_n_0_[4] ),
        .O(\dl[6]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \dl[6]_i_11 
       (.I0(\fcnt_reg_n_0_[0] ),
        .I1(\fcnt_reg_n_0_[2] ),
        .I2(\fcnt_reg_n_0_[1] ),
        .O(\dl[6]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \dl[6]_i_12 
       (.I0(\fcnt_reg_n_0_[0] ),
        .I1(\fcnt_reg_n_0_[2] ),
        .I2(\fcnt_reg_n_0_[1] ),
        .O(\dl[6]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF08300800)) 
    \dl[6]_i_13 
       (.I0(data6[6]),
        .I1(\fcnt_reg_n_0_[2] ),
        .I2(\fcnt_reg_n_0_[0] ),
        .I3(\fcnt_reg_n_0_[1] ),
        .I4(\cur_left_reg_n_0_[34] ),
        .I5(\dl[6]_i_15_n_0 ),
        .O(\dl[6]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF06040200)) 
    \dl[6]_i_14 
       (.I0(c[1]),
        .I1(c[0]),
        .I2(c[2]),
        .I3(data2[6]),
        .I4(data1[6]),
        .I5(\dl[6]_i_16_n_0 ),
        .O(\dl[6]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h000000AC)) 
    \dl[6]_i_15 
       (.I0(\cur_left_reg_n_0_[41] ),
        .I1(data0[6]),
        .I2(\fcnt_reg_n_0_[1] ),
        .I3(\fcnt_reg_n_0_[0] ),
        .I4(\fcnt_reg_n_0_[2] ),
        .O(\dl[6]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h000000AC)) 
    \dl[6]_i_16 
       (.I0(data4[6]),
        .I1(\rq_reg_n_0_[6] ),
        .I2(c[2]),
        .I3(c[0]),
        .I4(c[1]),
        .O(\dl[6]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \dl[6]_i_2 
       (.I0(\fcnt_reg_n_0_[0] ),
        .I1(\fcnt_reg_n_0_[1] ),
        .O(\dl[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h080008F008000800)) 
    \dl[6]_i_3 
       (.I0(\dl[7]_i_2_n_0 ),
        .I1(r_gmin[6]),
        .I2(\fcnt_reg_n_0_[1] ),
        .I3(\fcnt_reg_n_0_[0] ),
        .I4(\fcnt_reg_n_0_[2] ),
        .I5(\dl[7]_i_3_n_0 ),
        .O(\dl[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \dl[6]_i_4 
       (.I0(\dl[6]_i_6_n_0 ),
        .I1(\dl[6]_i_7_n_0 ),
        .I2(\dl[6]_i_8_n_0 ),
        .I3(\dl[5]_i_4_n_0 ),
        .I4(\dl[5]_i_5_n_0 ),
        .I5(p_2_in[6]),
        .O(\dl[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000EA0000)) 
    \dl[6]_i_5 
       (.I0(\dl[7]_i_4_n_0 ),
        .I1(\fcnt_reg_n_0_[0] ),
        .I2(\fcnt_reg_n_0_[1] ),
        .I3(\dl[6]_i_9_n_0 ),
        .I4(\rp[2]_i_4_n_0 ),
        .I5(rst),
        .O(\dl[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA202020)) 
    \dl[6]_i_6 
       (.I0(\dl[6]_i_10_n_0 ),
        .I1(\dl[6]_i_11_n_0 ),
        .I2(data7[6]),
        .I3(\cur_left_reg_n_0_[6] ),
        .I4(\dl[6]_i_12_n_0 ),
        .I5(\dl[6]_i_13_n_0 ),
        .O(\dl[6]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h3C4C)) 
    \dl[6]_i_7 
       (.I0(\fcnt_reg_n_0_[1] ),
        .I1(\fcnt_reg_n_0_[4] ),
        .I2(\fcnt_reg_n_0_[3] ),
        .I3(\fcnt_reg_n_0_[2] ),
        .O(\dl[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAEEAAEAAAAEAAAAA)) 
    \dl[6]_i_8 
       (.I0(\dl[6]_i_14_n_0 ),
        .I1(c[0]),
        .I2(c[2]),
        .I3(c[1]),
        .I4(data5[6]),
        .I5(data3[6]),
        .O(\dl[6]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \dl[6]_i_9 
       (.I0(\fcnt_reg_n_0_[6] ),
        .I1(p_0_in0),
        .I2(\fcnt_reg_n_0_[5] ),
        .O(\dl[6]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h02030202)) 
    \dl[7]_i_1 
       (.I0(\dl[7]_i_2_n_0 ),
        .I1(\fcnt_reg_n_0_[1] ),
        .I2(\fcnt_reg_n_0_[0] ),
        .I3(\fcnt_reg_n_0_[2] ),
        .I4(\dl[7]_i_3_n_0 ),
        .O(\dl[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \dl[7]_i_2 
       (.I0(rst),
        .I1(\st_reg[2]_0 ),
        .I2(\st_reg[1]_0 ),
        .I3(\st_reg[0]_0 ),
        .I4(\dl[7]_i_4_n_0 ),
        .O(\dl[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \dl[7]_i_3 
       (.I0(p_4_in),
        .I1(rst),
        .I2(\st_reg[2]_0 ),
        .I3(\st_reg[0]_0 ),
        .I4(\st_reg[1]_0 ),
        .O(\dl[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \dl[7]_i_4 
       (.I0(\fcnt_reg_n_0_[6] ),
        .I1(p_0_in0),
        .I2(\fcnt_reg_n_0_[5] ),
        .I3(\fcnt_reg_n_0_[3] ),
        .I4(\fcnt_reg_n_0_[4] ),
        .I5(\fcnt_reg_n_0_[2] ),
        .O(\dl[7]_i_4_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dl_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\dl[0]_i_1_n_0 ),
        .Q(dl[0]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dl_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\dl[1]_i_1_n_0 ),
        .Q(dl[1]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dl_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\dl[2]_i_1_n_0 ),
        .Q(dl[2]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dl_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\dl[3]_i_1_n_0 ),
        .Q(dl[3]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dl_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\dl[4]_i_1_n_0 ),
        .Q(dl[4]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dl_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\dl[5]_i_1_n_0 ),
        .Q(dl[5]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dl_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\dl[6]_i_1_n_0 ),
        .Q(dl[6]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dl_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\dl[7]_i_1_n_0 ),
        .Q(dl[7]),
        .R(1'b0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d7" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d7" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "3584" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/drw_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "512" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "6" *) 
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
    drw_reg
       (.ADDRARDADDR({1'b1,drw_reg_i_3_n_0,drw_reg_i_4_n_0,drw_reg_i_5_n_0,drw_reg_i_6_n_0,drw_reg_i_7_n_0,drw_reg_i_8_n_0,up_x[2:0],1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,drw_reg_i_9_n_0,drw_reg_i_10_n_0,drw_reg_i_11_n_0,drw_reg_i_12_n_0,drw_reg_i_13_n_0,drw_reg_i_14_n_0,drw_reg_i_15_n_0,drw_reg_i_16_n_0,drw_reg_i_17_n_0,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ul_r[6:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_drw_reg_DOADO_UNCONNECTED[15:0]),
        .DOBDO({NLW_drw_reg_DOBDO_UNCONNECTED[15:7],dq}),
        .DOPADOP(NLW_drw_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_drw_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(p_7_out),
        .ENBWREN(drw_reg_i_2_n_0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({r_gmin1,r_gmin1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h00280002)) 
    drw_reg_i_1
       (.I0(drw_reg_i_18_n_0),
        .I1(up_x[8]),
        .I2(drw_reg_i_19_n_0),
        .I3(up_x[9]),
        .I4(drw_reg_i_20_n_0),
        .O(p_7_out));
  LUT2 #(
    .INIT(4'h8)) 
    drw_reg_i_10
       (.I0(f_idx[7]),
        .I1(f_idx_carry__1_n_2),
        .O(drw_reg_i_10_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    drw_reg_i_11
       (.I0(f_idx[6]),
        .I1(f_idx_carry__1_n_2),
        .O(drw_reg_i_11_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    drw_reg_i_12
       (.I0(f_idx[5]),
        .I1(f_idx_carry__1_n_2),
        .O(drw_reg_i_12_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    drw_reg_i_13
       (.I0(f_idx[4]),
        .I1(f_idx_carry__1_n_2),
        .O(drw_reg_i_13_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    drw_reg_i_14
       (.I0(f_idx[3]),
        .I1(f_idx_carry__1_n_2),
        .O(drw_reg_i_14_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    drw_reg_i_15
       (.I0(f_idx[2]),
        .I1(f_idx_carry__1_n_2),
        .O(drw_reg_i_15_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    drw_reg_i_16
       (.I0(f_idx[1]),
        .I1(f_idx_carry__1_n_2),
        .O(drw_reg_i_16_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    drw_reg_i_17
       (.I0(f_idx[0]),
        .I1(f_idx_carry__1_n_2),
        .O(drw_reg_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    drw_reg_i_18
       (.I0(r_lbot_reg_0_7_0_5_i_6_n_0),
        .I1(huc[2]),
        .I2(huc[1]),
        .I3(huc[0]),
        .I4(drw_reg_i_23_n_0),
        .O(drw_reg_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFFF8)) 
    drw_reg_i_19
       (.I0(drw_reg_i_21_n_0),
        .I1(up_x[5]),
        .I2(up_x[6]),
        .I3(up_x[7]),
        .O(drw_reg_i_19_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    drw_reg_i_2
       (.I0(\st_reg[2]_0 ),
        .I1(\st_reg[1]_0 ),
        .I2(\st_reg[0]_0 ),
        .O(drw_reg_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hDFFFFEEE)) 
    drw_reg_i_20
       (.I0(up_x[7]),
        .I1(drw_reg_i_22_n_0),
        .I2(up_x[5]),
        .I3(drw_reg_i_21_n_0),
        .I4(up_x[6]),
        .O(drw_reg_i_20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hEEEEEEEA)) 
    drw_reg_i_21
       (.I0(up_x[4]),
        .I1(up_x[3]),
        .I2(up_x[0]),
        .I3(up_x[1]),
        .I4(up_x[2]),
        .O(drw_reg_i_21_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    drw_reg_i_22
       (.I0(up_x[5]),
        .I1(up_x[3]),
        .I2(up_x[0]),
        .I3(up_x[1]),
        .I4(up_x[2]),
        .I5(up_x[4]),
        .O(drw_reg_i_22_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF7DDBDBDB)) 
    drw_reg_i_23
       (.I0(up_x[7]),
        .I1(drw_reg_i_22_n_0),
        .I2(up_x[6]),
        .I3(drw_reg_i_21_n_0),
        .I4(up_x[5]),
        .I5(drw_reg_i_24_n_0),
        .O(drw_reg_i_23_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    drw_reg_i_24
       (.I0(up_x[4]),
        .I1(up_x[3]),
        .I2(up_x[5]),
        .O(drw_reg_i_24_n_0));
  LUT6 #(
    .INIT(64'hAAAAAA955555556A)) 
    drw_reg_i_3
       (.I0(up_x[8]),
        .I1(drw_reg_i_21_n_0),
        .I2(up_x[5]),
        .I3(up_x[6]),
        .I4(up_x[7]),
        .I5(drw_reg_i_20_n_0),
        .O(drw_reg_i_3_n_0));
  LUT5 #(
    .INIT(32'hBFD5402A)) 
    drw_reg_i_4
       (.I0(drw_reg_i_22_n_0),
        .I1(drw_reg_i_21_n_0),
        .I2(up_x[5]),
        .I3(up_x[6]),
        .I4(up_x[7]),
        .O(drw_reg_i_4_n_0));
  LUT4 #(
    .INIT(16'h9666)) 
    drw_reg_i_5
       (.I0(drw_reg_i_22_n_0),
        .I1(up_x[6]),
        .I2(drw_reg_i_21_n_0),
        .I3(up_x[5]),
        .O(drw_reg_i_5_n_0));
  LUT3 #(
    .INIT(8'h56)) 
    drw_reg_i_6
       (.I0(up_x[5]),
        .I1(up_x[3]),
        .I2(up_x[4]),
        .O(drw_reg_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    drw_reg_i_7
       (.I0(up_x[4]),
        .I1(up_x[3]),
        .O(drw_reg_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    drw_reg_i_8
       (.I0(up_x[3]),
        .O(drw_reg_i_8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    drw_reg_i_9
       (.I0(f_idx[8]),
        .I1(f_idx_carry__1_n_2),
        .O(drw_reg_i_9_n_0));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \f0[7]_i_1 
       (.I0(r_gmin1),
        .I1(huc[3]),
        .I2(huc[2]),
        .I3(huc[0]),
        .I4(huc[1]),
        .I5(fin_reg_i_15_n_0),
        .O(\f0[7]_i_1_n_0 ));
  FDRE \f0_reg[0] 
       (.C(clk),
        .CE(\f0[7]_i_1_n_0 ),
        .D(ul_r[0]),
        .Q(\f0_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \f0_reg[1] 
       (.C(clk),
        .CE(\f0[7]_i_1_n_0 ),
        .D(ul_r[1]),
        .Q(\f0_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \f0_reg[2] 
       (.C(clk),
        .CE(\f0[7]_i_1_n_0 ),
        .D(ul_r[2]),
        .Q(\f0_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \f0_reg[3] 
       (.C(clk),
        .CE(\f0[7]_i_1_n_0 ),
        .D(ul_r[3]),
        .Q(\f0_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \f0_reg[4] 
       (.C(clk),
        .CE(\f0[7]_i_1_n_0 ),
        .D(ul_r[4]),
        .Q(\f0_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \f0_reg[5] 
       (.C(clk),
        .CE(\f0[7]_i_1_n_0 ),
        .D(ul_r[5]),
        .Q(\f0_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \f0_reg[6] 
       (.C(clk),
        .CE(\f0[7]_i_1_n_0 ),
        .D(ul_r[6]),
        .Q(\f0_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \f0_reg[7] 
       (.C(clk),
        .CE(\f0[7]_i_1_n_0 ),
        .D(ul_r[7]),
        .Q(\f0_reg_n_0_[7] ),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 f_dk1_carry
       (.CI(1'b0),
        .CO({f_dk1,f_dk1_carry_n_1,f_dk1_carry_n_2,f_dk1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({f_dk1_carry_i_1_n_0,f_dk1_carry_i_2_n_0,f_dk1_carry_i_3_n_0,f_dk1_carry_i_4_n_0}),
        .O(NLW_f_dk1_carry_O_UNCONNECTED[3:0]),
        .S({f_dk1_carry_i_5_n_0,f_dk1_carry_i_6_n_0,f_dk1_carry_i_7_n_0,f_dk1_carry_i_8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    f_dk1_carry_i_1
       (.I0(dq[6]),
        .I1(p_0_in_0[6]),
        .O(f_dk1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    f_dk1_carry_i_2
       (.I0(dq[5]),
        .I1(p_0_in_0[5]),
        .I2(dq[4]),
        .I3(p_0_in_0[4]),
        .O(f_dk1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    f_dk1_carry_i_3
       (.I0(dq[3]),
        .I1(p_0_in_0[3]),
        .I2(dq[2]),
        .I3(p_0_in_0[2]),
        .O(f_dk1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h50D4)) 
    f_dk1_carry_i_4
       (.I0(p_0_in_0[1]),
        .I1(dq[0]),
        .I2(dq[1]),
        .I3(p_0_in_0[0]),
        .O(f_dk1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    f_dk1_carry_i_5
       (.I0(p_0_in_0[6]),
        .I1(dq[6]),
        .O(f_dk1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    f_dk1_carry_i_6
       (.I0(dq[4]),
        .I1(p_0_in_0[4]),
        .I2(p_0_in_0[5]),
        .I3(dq[5]),
        .O(f_dk1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    f_dk1_carry_i_7
       (.I0(dq[2]),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[3]),
        .I3(dq[3]),
        .O(f_dk1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h8421)) 
    f_dk1_carry_i_8
       (.I0(dq[1]),
        .I1(dq[0]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[0]),
        .O(f_dk1_carry_i_8_n_0));
  CARRY4 f_idx_carry
       (.CI(1'b0),
        .CO({f_idx_carry_n_0,f_idx_carry_n_1,f_idx_carry_n_2,f_idx_carry_n_3}),
        .CYINIT(1'b1),
        .DI(ox[3:0]),
        .O(f_idx[3:0]),
        .S({f_idx_carry_i_1_n_0,f_idx_carry_i_2_n_0,f_idx_carry_i_3_n_0,f_idx_carry_i_4_n_0}));
  CARRY4 f_idx_carry__0
       (.CI(f_idx_carry_n_0),
        .CO({f_idx_carry__0_n_0,f_idx_carry__0_n_1,f_idx_carry__0_n_2,f_idx_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(ox[7:4]),
        .O(f_idx[7:4]),
        .S({f_idx_carry__0_i_1_n_0,f_idx_carry__0_i_2_n_0,f_idx_carry__0_i_3_n_0,f_idx_carry__0_i_4_n_0}));
  LUT4 #(
    .INIT(16'h6555)) 
    f_idx_carry__0_i_1
       (.I0(ox[7]),
        .I1(f_idx_carry__0_i_5_n_0),
        .I2(p_0_in_0[5]),
        .I3(p_0_in_0[6]),
        .O(f_idx_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h9699)) 
    f_idx_carry__0_i_2
       (.I0(ox[6]),
        .I1(p_0_in_0[6]),
        .I2(f_idx_carry__0_i_5_n_0),
        .I3(p_0_in_0[5]),
        .O(f_idx_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h6A6A6AAA95959555)) 
    f_idx_carry__0_i_3
       (.I0(ox[5]),
        .I1(p_0_in_0[4]),
        .I2(p_0_in_0[3]),
        .I3(p_0_in_0[2]),
        .I4(f_idx_carry__0_i_6_n_0),
        .I5(p_0_in_0[5]),
        .O(f_idx_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h5556AAAAAAA95555)) 
    f_idx_carry__0_i_4
       (.I0(ox[4]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[2]),
        .I4(p_0_in_0[3]),
        .I5(p_0_in_0[4]),
        .O(f_idx_carry__0_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h01FFFFFF)) 
    f_idx_carry__0_i_5
       (.I0(p_0_in_0[1]),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[2]),
        .I3(p_0_in_0[3]),
        .I4(p_0_in_0[4]),
        .O(f_idx_carry__0_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'hE)) 
    f_idx_carry__0_i_6
       (.I0(p_0_in_0[0]),
        .I1(p_0_in_0[1]),
        .O(f_idx_carry__0_i_6_n_0));
  CARRY4 f_idx_carry__1
       (.CI(f_idx_carry__0_n_0),
        .CO({NLW_f_idx_carry__1_CO_UNCONNECTED[3:2],f_idx_carry__1_n_2,f_idx_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,ox[9:8]}),
        .O({NLW_f_idx_carry__1_O_UNCONNECTED[3:1],f_idx[8]}),
        .S({1'b0,1'b0,f_idx_carry__1_i_1_n_0,f_idx_carry__1_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    f_idx_carry__1_i_1
       (.I0(ox[9]),
        .O(f_idx_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    f_idx_carry__1_i_2
       (.I0(ox[8]),
        .O(f_idx_carry__1_i_2_n_0));
  LUT5 #(
    .INIT(32'h5556AAA9)) 
    f_idx_carry_i_1
       (.I0(ox[3]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[2]),
        .I4(p_0_in_0[3]),
        .O(f_idx_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9996)) 
    f_idx_carry_i_2
       (.I0(ox[2]),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .O(f_idx_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    f_idx_carry_i_3
       (.I0(ox[1]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .O(f_idx_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    f_idx_carry_i_4
       (.I0(ox[0]),
        .I1(p_0_in_0[0]),
        .O(f_idx_carry_i_4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 f_ok4_carry
       (.CI(1'b0),
        .CO({f_ok4_carry_n_0,f_ok4_carry_n_1,f_ok4_carry_n_2,f_ok4_carry_n_3}),
        .CYINIT(1'b1),
        .DI({f_ok4_carry_i_1_n_0,f_ok4_carry_i_2_n_0,f_ok4_carry_i_3_n_0,f_ok4_carry_i_4_n_0}),
        .O(NLW_f_ok4_carry_O_UNCONNECTED[3:0]),
        .S({f_ok4_carry_i_5_n_0,f_ok4_carry_i_6_n_0,f_ok4_carry_i_7_n_0,f_ok4_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 f_ok4_carry__0
       (.CI(f_ok4_carry_n_0),
        .CO({NLW_f_ok4_carry__0_CO_UNCONNECTED[3:1],f_ok4}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,f_ok4_carry__0_i_1_n_0}),
        .O(NLW_f_ok4_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,f_ok4_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    f_ok4_carry__0_i_1
       (.I0(ox[9]),
        .I1(ox[8]),
        .O(f_ok4_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    f_ok4_carry__0_i_2
       (.I0(ox[8]),
        .I1(ox[9]),
        .O(f_ok4_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h8CCCCCCCCEEEEEEE)) 
    f_ok4_carry_i_1
       (.I0(ox[6]),
        .I1(ox[7]),
        .I2(f_ok4_carry_i_9_n_0),
        .I3(p_0_in_0[4]),
        .I4(p_0_in_0[5]),
        .I5(p_0_in_0[6]),
        .O(f_ok4_carry_i_1_n_0));
  LUT5 #(
    .INIT(32'hE22B8222)) 
    f_ok4_carry_i_2
       (.I0(ox[5]),
        .I1(p_0_in_0[5]),
        .I2(f_ok4_carry_i_9_n_0),
        .I3(p_0_in_0[4]),
        .I4(ox[4]),
        .O(f_ok4_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h0C8E0C8E0C8E8EC0)) 
    f_ok4_carry_i_3
       (.I0(ox[2]),
        .I1(ox[3]),
        .I2(p_0_in_0[3]),
        .I3(p_0_in_0[2]),
        .I4(p_0_in_0[0]),
        .I5(p_0_in_0[1]),
        .O(f_ok4_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'hD4A0)) 
    f_ok4_carry_i_4
       (.I0(p_0_in_0[1]),
        .I1(ox[0]),
        .I2(ox[1]),
        .I3(p_0_in_0[0]),
        .O(f_ok4_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h00006AAA80001555)) 
    f_ok4_carry_i_5
       (.I0(p_0_in_0[6]),
        .I1(p_0_in_0[5]),
        .I2(p_0_in_0[4]),
        .I3(f_ok4_carry_i_9_n_0),
        .I4(ox[7]),
        .I5(ox[6]),
        .O(f_ok4_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'h28144281)) 
    f_ok4_carry_i_6
       (.I0(p_0_in_0[5]),
        .I1(f_ok4_carry_i_9_n_0),
        .I2(p_0_in_0[4]),
        .I3(ox[5]),
        .I4(ox[4]),
        .O(f_ok4_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h8881444222281114)) 
    f_ok4_carry_i_7
       (.I0(p_0_in_0[3]),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(ox[3]),
        .I5(ox[2]),
        .O(f_ok4_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h2148)) 
    f_ok4_carry_i_8
       (.I0(ox[1]),
        .I1(ox[0]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[0]),
        .O(f_ok4_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    f_ok4_carry_i_9
       (.I0(p_0_in_0[3]),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .O(f_ok4_carry_i_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \fcnt[0]_i_1 
       (.I0(\fcnt[7]_i_2_n_0 ),
        .I1(\fcnt_reg_n_0_[0] ),
        .O(\fcnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \fcnt[1]_i_1 
       (.I0(\fcnt_reg_n_0_[0] ),
        .I1(\fcnt_reg_n_0_[1] ),
        .I2(\fcnt[7]_i_2_n_0 ),
        .O(\fcnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \fcnt[2]_i_1 
       (.I0(\fcnt[7]_i_2_n_0 ),
        .I1(\fcnt_reg_n_0_[1] ),
        .I2(\fcnt_reg_n_0_[0] ),
        .I3(\fcnt_reg_n_0_[2] ),
        .O(\fcnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \fcnt[3]_i_1 
       (.I0(\fcnt[7]_i_2_n_0 ),
        .I1(\fcnt_reg_n_0_[3] ),
        .I2(\fcnt_reg_n_0_[0] ),
        .I3(\fcnt_reg_n_0_[2] ),
        .I4(\fcnt_reg_n_0_[1] ),
        .O(\fcnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \fcnt[4]_i_1 
       (.I0(\fcnt[7]_i_2_n_0 ),
        .I1(\fcnt_reg_n_0_[4] ),
        .I2(\fcnt_reg_n_0_[0] ),
        .I3(\fcnt_reg_n_0_[2] ),
        .I4(\fcnt_reg_n_0_[1] ),
        .I5(\fcnt_reg_n_0_[3] ),
        .O(\fcnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8288)) 
    \fcnt[5]_i_1 
       (.I0(\fcnt[7]_i_2_n_0 ),
        .I1(\fcnt_reg_n_0_[5] ),
        .I2(\fcnt[7]_i_3_n_0 ),
        .I3(\fcnt_reg_n_0_[4] ),
        .O(\fcnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h88288888)) 
    \fcnt[6]_i_1 
       (.I0(\fcnt[7]_i_2_n_0 ),
        .I1(\fcnt_reg_n_0_[6] ),
        .I2(\fcnt_reg_n_0_[4] ),
        .I3(\fcnt[7]_i_3_n_0 ),
        .I4(\fcnt_reg_n_0_[5] ),
        .O(\fcnt[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8828888888888888)) 
    \fcnt[7]_i_1 
       (.I0(\fcnt[7]_i_2_n_0 ),
        .I1(p_0_in0),
        .I2(\fcnt_reg_n_0_[5] ),
        .I3(\fcnt[7]_i_3_n_0 ),
        .I4(\fcnt_reg_n_0_[4] ),
        .I5(\fcnt_reg_n_0_[6] ),
        .O(\fcnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFBFBFAFEFAFA)) 
    \fcnt[7]_i_2 
       (.I0(\st_reg[0]_0 ),
        .I1(\st_reg[1]_0 ),
        .I2(\st_reg[2]_0 ),
        .I3(sig_valid),
        .I4(is_real__2),
        .I5(\chain_n[7]_i_2_n_0 ),
        .O(\fcnt[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \fcnt[7]_i_3 
       (.I0(\fcnt_reg_n_0_[0] ),
        .I1(\fcnt_reg_n_0_[2] ),
        .I2(\fcnt_reg_n_0_[1] ),
        .I3(\fcnt_reg_n_0_[3] ),
        .O(\fcnt[7]_i_3_n_0 ));
  FDRE \fcnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\fcnt[0]_i_1_n_0 ),
        .Q(\fcnt_reg_n_0_[0] ),
        .R(rst));
  FDRE \fcnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\fcnt[1]_i_1_n_0 ),
        .Q(\fcnt_reg_n_0_[1] ),
        .R(rst));
  FDRE \fcnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\fcnt[2]_i_1_n_0 ),
        .Q(\fcnt_reg_n_0_[2] ),
        .R(rst));
  FDRE \fcnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\fcnt[3]_i_1_n_0 ),
        .Q(\fcnt_reg_n_0_[3] ),
        .R(rst));
  FDRE \fcnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\fcnt[4]_i_1_n_0 ),
        .Q(\fcnt_reg_n_0_[4] ),
        .R(rst));
  FDRE \fcnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\fcnt[5]_i_1_n_0 ),
        .Q(\fcnt_reg_n_0_[5] ),
        .R(rst));
  FDRE \fcnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\fcnt[6]_i_1_n_0 ),
        .Q(\fcnt_reg_n_0_[6] ),
        .R(rst));
  FDRE \fcnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\fcnt[7]_i_1_n_0 ),
        .Q(p_0_in0),
        .R(rst));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d13" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d13" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "6656" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/fin_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "512" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "12" *) 
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
    fin_reg
       (.ADDRARDADDR({1'b1,fin_reg_i_3_n_0,fin_reg_i_4_n_0,fin_reg_i_5_n_0,fin_reg_i_6_n_0,fin_reg_i_7_n_0,fin_reg_i_8_n_0,fin_reg_i_9_n_0,fin_reg_i_10_n_0,fin_reg_i_11_n_0,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,ox[8:0],1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DIADI({1'b0,1'b0,1'b0,\f0_reg_n_0_[7] ,\f0_reg_n_0_[6] ,\f0_reg_n_0_[5] ,\f0_reg_n_0_[4] ,\f0_reg_n_0_[3] ,\f0_reg_n_0_[2] ,\f0_reg_n_0_[1] ,\f0_reg_n_0_[0] ,ul_r[4:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_fin_reg_DOADO_UNCONNECTED[15:0]),
        .DOBDO({NLW_fin_reg_DOBDO_UNCONNECTED[15:13],fin_reg_n_19,p_0_in_0,f_off}),
        .DOPADOP(NLW_fin_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_fin_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(p_3_out),
        .ENBWREN(fin_reg_i_2_n_0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({r_gmin1,r_gmin1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h00280000)) 
    fin_reg_i_1
       (.I0(fin_reg_i_13_n_0),
        .I1(up_x[8]),
        .I2(fin_reg_i_14_n_0),
        .I3(fin_reg_i_15_n_0),
        .I4(fin_reg_i_16_n_0),
        .O(p_3_out));
  LUT2 #(
    .INIT(4'h6)) 
    fin_reg_i_10
       (.I0(up_x[0]),
        .I1(up_x[1]),
        .O(fin_reg_i_10_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fin_reg_i_11
       (.I0(up_x[0]),
        .O(fin_reg_i_11_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    fin_reg_i_12
       (.I0(fin_reg_i_18_n_0),
        .I1(huc[6]),
        .I2(huc[5]),
        .O(r_gmin1));
  LUT6 #(
    .INIT(64'h77777777777F7F7E)) 
    fin_reg_i_13
       (.I0(up_x[7]),
        .I1(up_x[6]),
        .I2(up_x[4]),
        .I3(fin_reg_i_19_n_0),
        .I4(up_x[3]),
        .I5(up_x[5]),
        .O(fin_reg_i_13_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    fin_reg_i_14
       (.I0(up_x[6]),
        .I1(fin_reg_i_17_n_0),
        .I2(up_x[7]),
        .O(fin_reg_i_14_n_0));
  LUT6 #(
    .INIT(64'hEFEFEFEFEFEFFDEF)) 
    fin_reg_i_15
       (.I0(huc[5]),
        .I1(huc[6]),
        .I2(huc[4]),
        .I3(\huc[5]_i_2_n_0 ),
        .I4(huc[2]),
        .I5(huc[3]),
        .O(fin_reg_i_15_n_0));
  LUT5 #(
    .INIT(32'h40000000)) 
    fin_reg_i_16
       (.I0(up_x[9]),
        .I1(huc[3]),
        .I2(huc[2]),
        .I3(huc[0]),
        .I4(huc[1]),
        .O(fin_reg_i_16_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
    fin_reg_i_17
       (.I0(up_x[4]),
        .I1(up_x[1]),
        .I2(up_x[0]),
        .I3(up_x[2]),
        .I4(up_x[3]),
        .I5(up_x[5]),
        .O(fin_reg_i_17_n_0));
  LUT5 #(
    .INIT(32'h0111FFFF)) 
    fin_reg_i_18
       (.I0(huc[3]),
        .I1(huc[2]),
        .I2(huc[0]),
        .I3(huc[1]),
        .I4(huc[4]),
        .O(fin_reg_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    fin_reg_i_19
       (.I0(up_x[2]),
        .I1(up_x[0]),
        .I2(up_x[1]),
        .O(fin_reg_i_19_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    fin_reg_i_2
       (.I0(\st_reg[2]_0 ),
        .I1(\st_reg[0]_0 ),
        .I2(\st_reg[1]_0 ),
        .O(fin_reg_i_2_n_0));
  LUT4 #(
    .INIT(16'hFE01)) 
    fin_reg_i_3
       (.I0(up_x[7]),
        .I1(fin_reg_i_17_n_0),
        .I2(up_x[6]),
        .I3(up_x[8]),
        .O(fin_reg_i_3_n_0));
  LUT3 #(
    .INIT(8'hA9)) 
    fin_reg_i_4
       (.I0(up_x[7]),
        .I1(fin_reg_i_17_n_0),
        .I2(up_x[6]),
        .O(fin_reg_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    fin_reg_i_5
       (.I0(up_x[6]),
        .I1(fin_reg_i_17_n_0),
        .O(fin_reg_i_5_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA9A9A9)) 
    fin_reg_i_6
       (.I0(up_x[5]),
        .I1(up_x[3]),
        .I2(up_x[2]),
        .I3(up_x[0]),
        .I4(up_x[1]),
        .I5(up_x[4]),
        .O(fin_reg_i_6_n_0));
  LUT5 #(
    .INIT(32'hFEEE0111)) 
    fin_reg_i_7
       (.I0(up_x[3]),
        .I1(up_x[2]),
        .I2(up_x[0]),
        .I3(up_x[1]),
        .I4(up_x[4]),
        .O(fin_reg_i_7_n_0));
  LUT4 #(
    .INIT(16'hF807)) 
    fin_reg_i_8
       (.I0(up_x[1]),
        .I1(up_x[0]),
        .I2(up_x[2]),
        .I3(up_x[3]),
        .O(fin_reg_i_8_n_0));
  LUT3 #(
    .INIT(8'h87)) 
    fin_reg_i_9
       (.I0(up_x[1]),
        .I1(up_x[0]),
        .I2(up_x[2]),
        .O(fin_reg_i_9_n_0));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    frame_start_i_1
       (.I0(frame_start_i_2_n_0),
        .I1(frame_start_i_3_n_0),
        .I2(frame_start_i_4_n_0),
        .I3(frame_start_i_5_n_0),
        .I4(\st_reg[0]_0 ),
        .I5(frame_start_i_6_n_0),
        .O(frame_start_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    frame_start_i_2
       (.I0(frame_start_i_7_n_0),
        .I1(xa[3]),
        .I2(\xa_reg[2]_rep_n_0 ),
        .I3(\xa_reg[0]_rep_n_0 ),
        .I4(xa[1]),
        .O(frame_start_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    frame_start_i_3
       (.I0(\fcnt_reg_n_0_[3] ),
        .I1(\fcnt_reg_n_0_[4] ),
        .I2(\fcnt_reg_n_0_[5] ),
        .I3(\fcnt_reg_n_0_[6] ),
        .I4(p_0_in0),
        .I5(frame_start_i_8_n_0),
        .O(frame_start_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    frame_start_i_4
       (.I0(y[2]),
        .I1(y[3]),
        .I2(y[6]),
        .I3(y[9]),
        .I4(y[8]),
        .O(frame_start_i_4_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    frame_start_i_5
       (.I0(y[0]),
        .I1(y[1]),
        .I2(y[4]),
        .I3(y[7]),
        .I4(y[5]),
        .O(frame_start_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    frame_start_i_6
       (.I0(\st_reg[1]_0 ),
        .I1(\st_reg[2]_0 ),
        .O(frame_start_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    frame_start_i_7
       (.I0(xa[6]),
        .I1(xa[7]),
        .I2(\xa_reg[5]_rep_n_0 ),
        .I3(xa[4]),
        .I4(xa[9]),
        .I5(xa[8]),
        .O(frame_start_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h02)) 
    frame_start_i_8
       (.I0(\fcnt_reg_n_0_[0] ),
        .I1(\fcnt_reg_n_0_[2] ),
        .I2(\fcnt_reg_n_0_[1] ),
        .O(frame_start_i_8_n_0));
  FDRE frame_start_reg
       (.C(clk),
        .CE(1'b1),
        .D(frame_start_i_1_n_0),
        .Q(frame_start),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \huc[0]_i_1 
       (.I0(\huc[6]_i_4_n_0 ),
        .I1(huc[0]),
        .O(\huc[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \huc[1]_i_1 
       (.I0(\huc[6]_i_4_n_0 ),
        .I1(huc[1]),
        .I2(huc[0]),
        .O(\huc[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \huc[2]_i_1 
       (.I0(\huc[6]_i_4_n_0 ),
        .I1(huc[2]),
        .I2(huc[1]),
        .I3(huc[0]),
        .O(\huc[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \huc[3]_i_1 
       (.I0(\huc[6]_i_4_n_0 ),
        .I1(huc[3]),
        .I2(huc[0]),
        .I3(huc[1]),
        .I4(huc[2]),
        .O(\huc[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \huc[4]_i_1 
       (.I0(\huc[6]_i_4_n_0 ),
        .I1(huc[4]),
        .I2(huc[2]),
        .I3(huc[1]),
        .I4(huc[0]),
        .I5(huc[3]),
        .O(\huc[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8828888888888888)) 
    \huc[5]_i_1 
       (.I0(\huc[6]_i_4_n_0 ),
        .I1(huc[5]),
        .I2(huc[3]),
        .I3(\huc[5]_i_2_n_0 ),
        .I4(huc[2]),
        .I5(huc[4]),
        .O(\huc[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \huc[5]_i_2 
       (.I0(huc[1]),
        .I1(huc[0]),
        .O(\huc[5]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \huc[6]_i_1 
       (.I0(\up_x[9]_i_1_n_0 ),
        .I1(\huc[6]_i_3_n_0 ),
        .O(\huc[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \huc[6]_i_2 
       (.I0(\huc[6]_i_4_n_0 ),
        .I1(huc[6]),
        .I2(\huc[6]_i_5_n_0 ),
        .O(\huc[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \huc[6]_i_3 
       (.I0(huc[5]),
        .I1(huc[3]),
        .I2(\huc[5]_i_2_n_0 ),
        .I3(huc[2]),
        .I4(huc[4]),
        .I5(huc[6]),
        .O(\huc[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFFFFFFFFFF)) 
    \huc[6]_i_4 
       (.I0(p_4_in),
        .I1(\fcnt_reg_n_0_[2] ),
        .I2(\dl[6]_i_2_n_0 ),
        .I3(\st_reg[2]_0 ),
        .I4(\st_reg[1]_0 ),
        .I5(\st_reg[0]_0 ),
        .O(\huc[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \huc[6]_i_5 
       (.I0(huc[4]),
        .I1(huc[2]),
        .I2(huc[1]),
        .I3(huc[0]),
        .I4(huc[3]),
        .I5(huc[5]),
        .O(\huc[6]_i_5_n_0 ));
  FDSE \huc_reg[0] 
       (.C(clk),
        .CE(\huc[6]_i_1_n_0 ),
        .D(\huc[0]_i_1_n_0 ),
        .Q(huc[0]),
        .S(rst));
  FDSE \huc_reg[1] 
       (.C(clk),
        .CE(\huc[6]_i_1_n_0 ),
        .D(\huc[1]_i_1_n_0 ),
        .Q(huc[1]),
        .S(rst));
  FDSE \huc_reg[2] 
       (.C(clk),
        .CE(\huc[6]_i_1_n_0 ),
        .D(\huc[2]_i_1_n_0 ),
        .Q(huc[2]),
        .S(rst));
  FDSE \huc_reg[3] 
       (.C(clk),
        .CE(\huc[6]_i_1_n_0 ),
        .D(\huc[3]_i_1_n_0 ),
        .Q(huc[3]),
        .S(rst));
  FDSE \huc_reg[4] 
       (.C(clk),
        .CE(\huc[6]_i_1_n_0 ),
        .D(\huc[4]_i_1_n_0 ),
        .Q(huc[4]),
        .S(rst));
  FDSE \huc_reg[5] 
       (.C(clk),
        .CE(\huc[6]_i_1_n_0 ),
        .D(\huc[5]_i_1_n_0 ),
        .Q(huc[5]),
        .S(rst));
  FDSE \huc_reg[6] 
       (.C(clk),
        .CE(\huc[6]_i_1_n_0 ),
        .D(\huc[6]_i_2_n_0 ),
        .Q(huc[6]),
        .S(rst));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1
       (.I0(f_dk1),
        .I1(dq[5]),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2
       (.I0(f_dk1),
        .I1(dq[4]),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3
       (.I0(p_0_in_0[6]),
        .I1(dq[6]),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4
       (.I0(dq[5]),
        .I1(p_0_in_0[5]),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_5
       (.I0(dq[4]),
        .I1(p_0_in_0[4]),
        .O(i__carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1
       (.I0(f_dk1),
        .I1(dq[3]),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2
       (.I0(f_dk1),
        .I1(dq[2]),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_3
       (.I0(f_dk1),
        .I1(dq[1]),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4
       (.I0(f_dk1),
        .I1(dq[0]),
        .O(i__carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_5
       (.I0(dq[3]),
        .I1(p_0_in_0[3]),
        .O(i__carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_6
       (.I0(dq[2]),
        .I1(p_0_in_0[2]),
        .O(i__carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_7
       (.I0(dq[1]),
        .I1(p_0_in_0[1]),
        .O(i__carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_8
       (.I0(dq[0]),
        .I1(p_0_in_0[0]),
        .O(i__carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \out_disp[11]_i_2 
       (.I0(f_off[4]),
        .I1(\out_disp[3]_i_2_n_0 ),
        .O(\out_disp[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \out_disp[11]_i_3 
       (.I0(f_off[4]),
        .I1(\out_disp[3]_i_2_n_0 ),
        .O(\out_disp[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \out_disp[11]_i_4 
       (.I0(f_off[4]),
        .I1(\out_disp[3]_i_2_n_0 ),
        .O(\out_disp[11]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h22221222)) 
    \out_disp[11]_i_5 
       (.I0(f_off[4]),
        .I1(\out_disp[3]_i_2_n_0 ),
        .I2(p_0_in_0[6]),
        .I3(p_0_in_0[5]),
        .I4(f_idx_carry__0_i_5_n_0),
        .O(\out_disp[11]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h11212212)) 
    \out_disp[11]_i_6 
       (.I0(f_off[4]),
        .I1(\out_disp[3]_i_2_n_0 ),
        .I2(p_0_in_0[5]),
        .I3(f_idx_carry__0_i_5_n_0),
        .I4(p_0_in_0[6]),
        .O(\out_disp[11]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h1221)) 
    \out_disp[11]_i_7 
       (.I0(f_off[4]),
        .I1(\out_disp[3]_i_2_n_0 ),
        .I2(f_idx_carry__0_i_5_n_0),
        .I3(p_0_in_0[5]),
        .O(\out_disp[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h2221111111122222)) 
    \out_disp[11]_i_8 
       (.I0(f_off[4]),
        .I1(\out_disp[3]_i_2_n_0 ),
        .I2(f_idx_carry__0_i_6_n_0),
        .I3(p_0_in_0[2]),
        .I4(p_0_in_0[3]),
        .I5(p_0_in_0[4]),
        .O(\out_disp[11]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \out_disp[3]_i_1 
       (.I0(\out_disp[3]_i_2_n_0 ),
        .I1(\st_reg[0]_0 ),
        .I2(\st_reg[1]_0 ),
        .I3(\st_reg[2]_0 ),
        .O(\out_disp[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \out_disp[3]_i_2 
       (.I0(\out_disp[3]_i_3_n_0 ),
        .I1(\out_disp[3]_i_4_n_0 ),
        .I2(ox[7]),
        .I3(ox[6]),
        .I4(\out_disp[3]_i_5_n_0 ),
        .I5(\out_disp[3]_i_6_n_0 ),
        .O(\out_disp[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \out_disp[3]_i_3 
       (.I0(f_dk[6]),
        .I1(f_dk[3]),
        .I2(f_dk[5]),
        .I3(fin_reg_n_19),
        .I4(\out_disp[3]_i_7_n_0 ),
        .O(\out_disp[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \out_disp[3]_i_4 
       (.I0(f_dk[2]),
        .I1(y[9]),
        .I2(y[8]),
        .I3(f_dk[4]),
        .I4(f_dk[1]),
        .I5(\out_disp[3]_i_8_n_0 ),
        .O(\out_disp[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h80000001)) 
    \out_disp[3]_i_5 
       (.I0(p_0_in_0[0]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[4]),
        .I3(p_0_in_0[3]),
        .I4(p_0_in_0[2]),
        .O(\out_disp[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \out_disp[3]_i_6 
       (.I0(p_0_in_0[6]),
        .I1(p_0_in_0[5]),
        .I2(ox[8]),
        .I3(ox[9]),
        .I4(f_ok4),
        .O(\out_disp[3]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \out_disp[3]_i_7 
       (.I0(y[6]),
        .I1(y[4]),
        .I2(y[7]),
        .O(\out_disp[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000000000001)) 
    \out_disp[3]_i_8 
       (.I0(y[6]),
        .I1(y[3]),
        .I2(y[2]),
        .I3(y[4]),
        .I4(y[5]),
        .I5(y[7]),
        .O(\out_disp[3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \out_disp[7]_i_2 
       (.I0(f_off[4]),
        .I1(\out_disp[3]_i_2_n_0 ),
        .O(\out_disp[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \out_disp[7]_i_3 
       (.I0(f_off[4]),
        .I1(\out_disp[3]_i_2_n_0 ),
        .O(\out_disp[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \out_disp[7]_i_4 
       (.I0(f_off[4]),
        .I1(\out_disp[3]_i_2_n_0 ),
        .O(\out_disp[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2121212121212112)) 
    \out_disp[7]_i_5 
       (.I0(f_off[4]),
        .I1(\out_disp[3]_i_2_n_0 ),
        .I2(p_0_in_0[3]),
        .I3(p_0_in_0[2]),
        .I4(p_0_in_0[0]),
        .I5(p_0_in_0[1]),
        .O(\out_disp[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h11122221)) 
    \out_disp[7]_i_6 
       (.I0(f_off[4]),
        .I1(\out_disp[3]_i_2_n_0 ),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[0]),
        .I4(p_0_in_0[2]),
        .O(\out_disp[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h1221)) 
    \out_disp[7]_i_7 
       (.I0(f_off[4]),
        .I1(\out_disp[3]_i_2_n_0 ),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[0]),
        .O(\out_disp[7]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \out_disp[7]_i_8 
       (.I0(f_off[4]),
        .I1(p_0_in_0[0]),
        .I2(\out_disp[3]_i_2_n_0 ),
        .O(\out_disp[7]_i_8_n_0 ));
  FDRE \out_disp_reg[0] 
       (.C(clk),
        .CE(out_valid_i_1_n_0),
        .D(f_off[0]),
        .Q(px_disp[0]),
        .R(\out_disp[3]_i_1_n_0 ));
  FDRE \out_disp_reg[10] 
       (.C(clk),
        .CE(out_valid_i_1_n_0),
        .D(\out_disp_reg[11]_i_1_n_5 ),
        .Q(px_disp[10]),
        .R(1'b0));
  FDRE \out_disp_reg[11] 
       (.C(clk),
        .CE(out_valid_i_1_n_0),
        .D(\out_disp_reg[11]_i_1_n_4 ),
        .Q(px_disp[11]),
        .R(1'b0));
  CARRY4 \out_disp_reg[11]_i_1 
       (.CI(\out_disp_reg[7]_i_1_n_0 ),
        .CO({\NLW_out_disp_reg[11]_i_1_CO_UNCONNECTED [3],\out_disp_reg[11]_i_1_n_1 ,\out_disp_reg[11]_i_1_n_2 ,\out_disp_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\out_disp[11]_i_2_n_0 ,\out_disp[11]_i_3_n_0 ,\out_disp[11]_i_4_n_0 }),
        .O({\out_disp_reg[11]_i_1_n_4 ,\out_disp_reg[11]_i_1_n_5 ,\out_disp_reg[11]_i_1_n_6 ,\out_disp_reg[11]_i_1_n_7 }),
        .S({\out_disp[11]_i_5_n_0 ,\out_disp[11]_i_6_n_0 ,\out_disp[11]_i_7_n_0 ,\out_disp[11]_i_8_n_0 }));
  FDRE \out_disp_reg[1] 
       (.C(clk),
        .CE(out_valid_i_1_n_0),
        .D(f_off[1]),
        .Q(px_disp[1]),
        .R(\out_disp[3]_i_1_n_0 ));
  FDRE \out_disp_reg[2] 
       (.C(clk),
        .CE(out_valid_i_1_n_0),
        .D(f_off[2]),
        .Q(px_disp[2]),
        .R(\out_disp[3]_i_1_n_0 ));
  FDRE \out_disp_reg[3] 
       (.C(clk),
        .CE(out_valid_i_1_n_0),
        .D(f_off[3]),
        .Q(px_disp[3]),
        .R(\out_disp[3]_i_1_n_0 ));
  FDRE \out_disp_reg[4] 
       (.C(clk),
        .CE(out_valid_i_1_n_0),
        .D(\out_disp_reg[7]_i_1_n_7 ),
        .Q(px_disp[4]),
        .R(1'b0));
  FDRE \out_disp_reg[5] 
       (.C(clk),
        .CE(out_valid_i_1_n_0),
        .D(\out_disp_reg[7]_i_1_n_6 ),
        .Q(px_disp[5]),
        .R(1'b0));
  FDRE \out_disp_reg[6] 
       (.C(clk),
        .CE(out_valid_i_1_n_0),
        .D(\out_disp_reg[7]_i_1_n_5 ),
        .Q(px_disp[6]),
        .R(1'b0));
  FDRE \out_disp_reg[7] 
       (.C(clk),
        .CE(out_valid_i_1_n_0),
        .D(\out_disp_reg[7]_i_1_n_4 ),
        .Q(px_disp[7]),
        .R(1'b0));
  CARRY4 \out_disp_reg[7]_i_1 
       (.CI(1'b0),
        .CO({\out_disp_reg[7]_i_1_n_0 ,\out_disp_reg[7]_i_1_n_1 ,\out_disp_reg[7]_i_1_n_2 ,\out_disp_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\out_disp[11]_i_4_n_0 ,\out_disp[7]_i_2_n_0 ,\out_disp[7]_i_3_n_0 ,\out_disp[7]_i_4_n_0 }),
        .O({\out_disp_reg[7]_i_1_n_4 ,\out_disp_reg[7]_i_1_n_5 ,\out_disp_reg[7]_i_1_n_6 ,\out_disp_reg[7]_i_1_n_7 }),
        .S({\out_disp[7]_i_5_n_0 ,\out_disp[7]_i_6_n_0 ,\out_disp[7]_i_7_n_0 ,\out_disp[7]_i_8_n_0 }));
  FDRE \out_disp_reg[8] 
       (.C(clk),
        .CE(out_valid_i_1_n_0),
        .D(\out_disp_reg[11]_i_1_n_7 ),
        .Q(px_disp[8]),
        .R(1'b0));
  FDRE \out_disp_reg[9] 
       (.C(clk),
        .CE(out_valid_i_1_n_0),
        .D(\out_disp_reg[11]_i_1_n_6 ),
        .Q(px_disp[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    out_valid_i_1
       (.I0(\st_reg[2]_0 ),
        .I1(\st_reg[1]_0 ),
        .I2(\st_reg[0]_0 ),
        .O(out_valid_i_1_n_0));
  FDRE out_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(out_valid_i_1_n_0),
        .Q(px_valid),
        .R(rst));
  FDRE \out_x_reg[0] 
       (.C(clk),
        .CE(out_valid_i_1_n_0),
        .D(ox[0]),
        .Q(px_x[0]),
        .R(1'b0));
  FDRE \out_x_reg[1] 
       (.C(clk),
        .CE(out_valid_i_1_n_0),
        .D(ox[1]),
        .Q(px_x[1]),
        .R(1'b0));
  FDRE \out_x_reg[2] 
       (.C(clk),
        .CE(out_valid_i_1_n_0),
        .D(ox[2]),
        .Q(px_x[2]),
        .R(1'b0));
  FDRE \out_x_reg[3] 
       (.C(clk),
        .CE(out_valid_i_1_n_0),
        .D(ox[3]),
        .Q(px_x[3]),
        .R(1'b0));
  FDRE \out_x_reg[4] 
       (.C(clk),
        .CE(out_valid_i_1_n_0),
        .D(ox[4]),
        .Q(px_x[4]),
        .R(1'b0));
  FDRE \out_x_reg[5] 
       (.C(clk),
        .CE(out_valid_i_1_n_0),
        .D(ox[5]),
        .Q(px_x[5]),
        .R(1'b0));
  FDRE \out_x_reg[6] 
       (.C(clk),
        .CE(out_valid_i_1_n_0),
        .D(ox[6]),
        .Q(px_x[6]),
        .R(1'b0));
  FDRE \out_x_reg[7] 
       (.C(clk),
        .CE(out_valid_i_1_n_0),
        .D(ox[7]),
        .Q(px_x[7]),
        .R(1'b0));
  FDRE \out_x_reg[8] 
       (.C(clk),
        .CE(out_valid_i_1_n_0),
        .D(ox[8]),
        .Q(px_x[8]),
        .R(1'b0));
  FDRE \out_x_reg[9] 
       (.C(clk),
        .CE(out_valid_i_1_n_0),
        .D(ox[9]),
        .Q(px_x[9]),
        .R(1'b0));
  FDRE \out_y_reg[0] 
       (.C(clk),
        .CE(out_valid_i_1_n_0),
        .D(y[0]),
        .Q(px_y[0]),
        .R(1'b0));
  FDRE \out_y_reg[1] 
       (.C(clk),
        .CE(out_valid_i_1_n_0),
        .D(y[1]),
        .Q(px_y[1]),
        .R(1'b0));
  FDRE \out_y_reg[2] 
       (.C(clk),
        .CE(out_valid_i_1_n_0),
        .D(y[2]),
        .Q(px_y[2]),
        .R(1'b0));
  FDRE \out_y_reg[3] 
       (.C(clk),
        .CE(out_valid_i_1_n_0),
        .D(y[3]),
        .Q(px_y[3]),
        .R(1'b0));
  FDRE \out_y_reg[4] 
       (.C(clk),
        .CE(out_valid_i_1_n_0),
        .D(y[4]),
        .Q(px_y[4]),
        .R(1'b0));
  FDRE \out_y_reg[5] 
       (.C(clk),
        .CE(out_valid_i_1_n_0),
        .D(y[5]),
        .Q(px_y[5]),
        .R(1'b0));
  FDRE \out_y_reg[6] 
       (.C(clk),
        .CE(out_valid_i_1_n_0),
        .D(y[6]),
        .Q(px_y[6]),
        .R(1'b0));
  FDRE \out_y_reg[7] 
       (.C(clk),
        .CE(out_valid_i_1_n_0),
        .D(y[7]),
        .Q(px_y[7]),
        .R(1'b0));
  FDRE \out_y_reg[8] 
       (.C(clk),
        .CE(out_valid_i_1_n_0),
        .D(y[8]),
        .Q(px_y[8]),
        .R(1'b0));
  FDRE \out_y_reg[9] 
       (.C(clk),
        .CE(out_valid_i_1_n_0),
        .D(y[9]),
        .Q(px_y[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ox[0]_i_1 
       (.I0(\st_reg[1]_0 ),
        .I1(ox[0]),
        .O(\ox[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \ox[1]_i_1 
       (.I0(\st_reg[1]_0 ),
        .I1(ox[0]),
        .I2(ox[1]),
        .O(\ox[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \ox[2]_i_1 
       (.I0(ox[0]),
        .I1(ox[1]),
        .I2(\st_reg[1]_0 ),
        .I3(ox[2]),
        .O(\ox[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h7F800000)) 
    \ox[3]_i_1 
       (.I0(ox[2]),
        .I1(ox[0]),
        .I2(ox[1]),
        .I3(ox[3]),
        .I4(\st_reg[1]_0 ),
        .O(\ox[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \ox[4]_i_1 
       (.I0(ox[2]),
        .I1(ox[0]),
        .I2(ox[1]),
        .I3(ox[3]),
        .I4(\st_reg[1]_0 ),
        .I5(ox[4]),
        .O(\ox[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FF000008000000)) 
    \ox[5]_i_1 
       (.I0(ox[4]),
        .I1(ox[3]),
        .I2(\ox[5]_i_2_n_0 ),
        .I3(ox[2]),
        .I4(\st_reg[1]_0 ),
        .I5(ox[5]),
        .O(\ox[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \ox[5]_i_2 
       (.I0(ox[0]),
        .I1(ox[1]),
        .O(\ox[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h84)) 
    \ox[6]_i_1 
       (.I0(\ox[9]_i_4_n_0 ),
        .I1(\st_reg[1]_0 ),
        .I2(ox[6]),
        .O(\ox[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hB040)) 
    \ox[7]_i_1 
       (.I0(\ox[9]_i_4_n_0 ),
        .I1(ox[6]),
        .I2(\st_reg[1]_0 ),
        .I3(ox[7]),
        .O(\ox[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hBF004000)) 
    \ox[8]_i_1 
       (.I0(\ox[9]_i_4_n_0 ),
        .I1(ox[7]),
        .I2(ox[6]),
        .I3(\st_reg[1]_0 ),
        .I4(ox[8]),
        .O(\ox[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAAA)) 
    \ox[9]_i_1 
       (.I0(out_valid_i_1_n_0),
        .I1(wait_n[0]),
        .I2(wait_n[2]),
        .I3(wait_n[7]),
        .I4(wait_n[1]),
        .I5(\ox[9]_i_3_n_0 ),
        .O(\ox[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FF000008000000)) 
    \ox[9]_i_2 
       (.I0(ox[6]),
        .I1(ox[7]),
        .I2(\ox[9]_i_4_n_0 ),
        .I3(ox[8]),
        .I4(\st_reg[1]_0 ),
        .I5(ox[9]),
        .O(\ox[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \ox[9]_i_3 
       (.I0(\ox[9]_i_5_n_0 ),
        .I1(wait_n[6]),
        .I2(wait_n[5]),
        .I3(\st_reg[0]_0 ),
        .I4(wait_n[4]),
        .I5(wait_n[3]),
        .O(\ox[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \ox[9]_i_4 
       (.I0(ox[2]),
        .I1(ox[0]),
        .I2(ox[1]),
        .I3(ox[3]),
        .I4(ox[4]),
        .I5(ox[5]),
        .O(\ox[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \ox[9]_i_5 
       (.I0(\st_reg[1]_0 ),
        .I1(\st_reg[2]_0 ),
        .O(\ox[9]_i_5_n_0 ));
  FDRE \ox_reg[0] 
       (.C(clk),
        .CE(\ox[9]_i_1_n_0 ),
        .D(\ox[0]_i_1_n_0 ),
        .Q(ox[0]),
        .R(1'b0));
  FDRE \ox_reg[1] 
       (.C(clk),
        .CE(\ox[9]_i_1_n_0 ),
        .D(\ox[1]_i_1_n_0 ),
        .Q(ox[1]),
        .R(1'b0));
  FDRE \ox_reg[2] 
       (.C(clk),
        .CE(\ox[9]_i_1_n_0 ),
        .D(\ox[2]_i_1_n_0 ),
        .Q(ox[2]),
        .R(1'b0));
  FDRE \ox_reg[3] 
       (.C(clk),
        .CE(\ox[9]_i_1_n_0 ),
        .D(\ox[3]_i_1_n_0 ),
        .Q(ox[3]),
        .R(1'b0));
  FDRE \ox_reg[4] 
       (.C(clk),
        .CE(\ox[9]_i_1_n_0 ),
        .D(\ox[4]_i_1_n_0 ),
        .Q(ox[4]),
        .R(1'b0));
  FDRE \ox_reg[5] 
       (.C(clk),
        .CE(\ox[9]_i_1_n_0 ),
        .D(\ox[5]_i_1_n_0 ),
        .Q(ox[5]),
        .R(1'b0));
  FDRE \ox_reg[6] 
       (.C(clk),
        .CE(\ox[9]_i_1_n_0 ),
        .D(\ox[6]_i_1_n_0 ),
        .Q(ox[6]),
        .R(1'b0));
  FDRE \ox_reg[7] 
       (.C(clk),
        .CE(\ox[9]_i_1_n_0 ),
        .D(\ox[7]_i_1_n_0 ),
        .Q(ox[7]),
        .R(1'b0));
  FDRE \ox_reg[8] 
       (.C(clk),
        .CE(\ox[9]_i_1_n_0 ),
        .D(\ox[8]_i_1_n_0 ),
        .Q(ox[8]),
        .R(1'b0));
  FDRE \ox_reg[9] 
       (.C(clk),
        .CE(\ox[9]_i_1_n_0 ),
        .D(\ox[9]_i_2_n_0 ),
        .Q(ox[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0080)) 
    \r_gmin[6]_i_1 
       (.I0(r_gmin1),
        .I1(huc[1]),
        .I2(huc[0]),
        .I3(\r_kstar[6]_i_2_n_0 ),
        .O(\r_gmin[6]_i_1_n_0 ));
  FDRE \r_gmin_reg[0] 
       (.C(clk),
        .CE(\r_gmin[6]_i_1_n_0 ),
        .D(ul_r[0]),
        .Q(r_gmin[0]),
        .R(1'b0));
  FDRE \r_gmin_reg[1] 
       (.C(clk),
        .CE(\r_gmin[6]_i_1_n_0 ),
        .D(ul_r[1]),
        .Q(r_gmin[1]),
        .R(1'b0));
  FDRE \r_gmin_reg[2] 
       (.C(clk),
        .CE(\r_gmin[6]_i_1_n_0 ),
        .D(ul_r[2]),
        .Q(r_gmin[2]),
        .R(1'b0));
  FDRE \r_gmin_reg[3] 
       (.C(clk),
        .CE(\r_gmin[6]_i_1_n_0 ),
        .D(ul_r[3]),
        .Q(r_gmin[3]),
        .R(1'b0));
  FDRE \r_gmin_reg[4] 
       (.C(clk),
        .CE(\r_gmin[6]_i_1_n_0 ),
        .D(ul_r[4]),
        .Q(r_gmin[4]),
        .R(1'b0));
  FDRE \r_gmin_reg[5] 
       (.C(clk),
        .CE(\r_gmin[6]_i_1_n_0 ),
        .D(ul_r[5]),
        .Q(r_gmin[5]),
        .R(1'b0));
  FDRE \r_gmin_reg[6] 
       (.C(clk),
        .CE(\r_gmin[6]_i_1_n_0 ),
        .D(ul_r[6]),
        .Q(r_gmin[6]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_idx0_return_carry
       (.CI(1'b0),
        .CO({r_idx0_return_carry_n_0,r_idx0_return_carry_n_1,r_idx0_return_carry_n_2,r_idx0_return_carry_n_3}),
        .CYINIT(1'b0),
        .DI({r_idx0_return_carry_i_1_n_0,rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,1'b0}),
        .O({r_idx0_return_carry_n_4,r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7}),
        .S({r_idx0_return_carry_i_2_n_0,r_idx0_return_carry_i_3_n_0,r_idx0_return_carry_i_4_n_0,r_idx0_return_carry_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_idx0_return_carry__0
       (.CI(r_idx0_return_carry_n_0),
        .CO({NLW_r_idx0_return_carry__0_CO_UNCONNECTED[3],r_idx0_return_carry__0_n_1,r_idx0_return_carry__0_n_2,r_idx0_return_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,r_idx0_return_carry__0_i_1_n_0,r_idx0_return_carry__0_i_2_n_0,r_idx0_return_carry__0_i_3_n_0}),
        .O({r_idx0_return_carry__0_n_4,r_idx0_return_carry__0_n_5,r_idx0_return_carry__0_n_6,r_idx0_return_carry__0_n_7}),
        .S({r_idx0_return_carry__0_i_4_n_0,r_idx0_return_carry__0_i_5_n_0,r_idx0_return_carry__0_i_6_n_0,r_idx0_return_carry__0_i_7_n_0}));
  LUT5 #(
    .INIT(32'hFF00FE01)) 
    r_idx0_return_carry__0_i_1
       (.I0(r_idx0_return_carry_i_6_n_0),
        .I1(xa[6]),
        .I2(xa[7]),
        .I3(xa[9]),
        .I4(xa[8]),
        .O(r_idx0_return_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'hFE01)) 
    r_idx0_return_carry__0_i_2
       (.I0(r_idx0_return_carry_i_6_n_0),
        .I1(xa[6]),
        .I2(xa[7]),
        .I3(xa[8]),
        .O(r_idx0_return_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h7F)) 
    r_idx0_return_carry__0_i_3
       (.I0(rp[2]),
        .I1(rp[0]),
        .I2(rp[1]),
        .O(r_idx0_return_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h7F7F7F7F7F7F7F80)) 
    r_idx0_return_carry__0_i_4
       (.I0(rp[1]),
        .I1(rp[0]),
        .I2(rp[2]),
        .I3(r_idx0_return_carry__0_i_8_n_0),
        .I4(xa[8]),
        .I5(xa[9]),
        .O(r_idx0_return_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'hC936363636363636)) 
    r_idx0_return_carry__0_i_5
       (.I0(xa[8]),
        .I1(xa[9]),
        .I2(r_idx0_return_carry__0_i_8_n_0),
        .I3(rp[1]),
        .I4(rp[0]),
        .I5(rp[2]),
        .O(r_idx0_return_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9555)) 
    r_idx0_return_carry__0_i_6
       (.I0(r_idx0_return_carry__0_i_2_n_0),
        .I1(rp[1]),
        .I2(rp[0]),
        .I3(rp[2]),
        .O(r_idx0_return_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9555)) 
    r_idx0_return_carry__0_i_7
       (.I0(r_idx0_return_carry__0_i_9_n_0),
        .I1(rp[1]),
        .I2(rp[0]),
        .I3(rp[2]),
        .O(r_idx0_return_carry__0_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    r_idx0_return_carry__0_i_8
       (.I0(xa[7]),
        .I1(xa[6]),
        .I2(r_idx0_return_carry_i_6_n_0),
        .O(r_idx0_return_carry__0_i_8_n_0));
  LUT3 #(
    .INIT(8'hC9)) 
    r_idx0_return_carry__0_i_9
       (.I0(xa[6]),
        .I1(xa[7]),
        .I2(r_idx0_return_carry_i_6_n_0),
        .O(r_idx0_return_carry__0_i_9_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_idx0_return_carry_i_1
       (.I0(r_idx0_return_carry_i_6_n_0),
        .I1(xa[6]),
        .O(r_idx0_return_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_idx0_return_carry_i_2
       (.I0(r_idx0_return_carry_i_7_n_0),
        .I1(rp[2]),
        .O(r_idx0_return_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_idx0_return_carry_i_3
       (.I0(rdel_reg_r1_0_63_0_2_i_2_n_0),
        .I1(rp[1]),
        .O(r_idx0_return_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_idx0_return_carry_i_4
       (.I0(rdel_reg_r1_0_63_0_2_i_3_n_0),
        .I1(rp[0]),
        .O(r_idx0_return_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h807F)) 
    r_idx0_return_carry_i_5
       (.I0(xa[1]),
        .I1(\xa_reg[0]_rep_n_0 ),
        .I2(\xa_reg[2]_rep_n_0 ),
        .I3(xa[3]),
        .O(r_idx0_return_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF80)) 
    r_idx0_return_carry_i_6
       (.I0(\xa_reg[2]_rep_n_0 ),
        .I1(\xa_reg[0]_rep_n_0 ),
        .I2(xa[1]),
        .I3(xa[3]),
        .I4(xa[4]),
        .I5(xa[5]),
        .O(r_idx0_return_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_idx0_return_carry_i_7
       (.I0(r_idx0_return_carry_i_6_n_0),
        .I1(xa[6]),
        .O(r_idx0_return_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h0020)) 
    \r_kstar[6]_i_1 
       (.I0(r_gmin1),
        .I1(huc[1]),
        .I2(huc[0]),
        .I3(\r_kstar[6]_i_2_n_0 ),
        .O(\r_kstar[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFFFFFFFEFF)) 
    \r_kstar[6]_i_2 
       (.I0(huc[3]),
        .I1(huc[5]),
        .I2(huc[6]),
        .I3(huc[4]),
        .I4(huc[2]),
        .I5(\huc[5]_i_2_n_0 ),
        .O(\r_kstar[6]_i_2_n_0 ));
  FDRE \r_kstar_reg[0] 
       (.C(clk),
        .CE(\r_kstar[6]_i_1_n_0 ),
        .D(ul_r[0]),
        .Q(r_kstar[0]),
        .R(1'b0));
  FDRE \r_kstar_reg[1] 
       (.C(clk),
        .CE(\r_kstar[6]_i_1_n_0 ),
        .D(ul_r[1]),
        .Q(r_kstar[1]),
        .R(1'b0));
  FDRE \r_kstar_reg[2] 
       (.C(clk),
        .CE(\r_kstar[6]_i_1_n_0 ),
        .D(ul_r[2]),
        .Q(r_kstar[2]),
        .R(1'b0));
  FDRE \r_kstar_reg[3] 
       (.C(clk),
        .CE(\r_kstar[6]_i_1_n_0 ),
        .D(ul_r[3]),
        .Q(r_kstar[3]),
        .R(1'b0));
  FDRE \r_kstar_reg[4] 
       (.C(clk),
        .CE(\r_kstar[6]_i_1_n_0 ),
        .D(ul_r[4]),
        .Q(r_kstar[4]),
        .R(1'b0));
  FDRE \r_kstar_reg[5] 
       (.C(clk),
        .CE(\r_kstar[6]_i_1_n_0 ),
        .D(ul_r[5]),
        .Q(r_kstar[5]),
        .R(1'b0));
  FDRE \r_kstar_reg[6] 
       (.C(clk),
        .CE(\r_kstar[6]_i_1_n_0 ),
        .D(ul_r[6]),
        .Q(r_kstar[6]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "56" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/r_lbot_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M r_lbot_reg_0_7_0_5
       (.ADDRA({1'b0,1'b0,sym2,\fcnt_reg_n_0_[0] }),
        .ADDRB({1'b0,1'b0,sym2,\fcnt_reg_n_0_[0] }),
        .ADDRC({1'b0,1'b0,sym2,\fcnt_reg_n_0_[0] }),
        .ADDRD({1'b0,1'b0,r_lbot_reg_0_7_0_5_i_4_n_0,r_lbot_reg_0_7_0_5_i_5_n_0,huc[0]}),
        .DIA(ul_r[1:0]),
        .DIB(ul_r[3:2]),
        .DIC(ul_r[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(p_2_in[1:0]),
        .DOB(p_2_in[3:2]),
        .DOC(p_2_in[5:4]),
        .DOD(NLW_r_lbot_reg_0_7_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(p_0_in));
  LUT4 #(
    .INIT(16'h0800)) 
    r_lbot_reg_0_7_0_5_i_1
       (.I0(huc[1]),
        .I1(huc[2]),
        .I2(r_lbot_reg_0_7_0_5_i_6_n_0),
        .I3(r_gmin1),
        .O(p_0_in));
  LUT2 #(
    .INIT(4'h9)) 
    r_lbot_reg_0_7_0_5_i_2
       (.I0(\fcnt_reg_n_0_[1] ),
        .I1(\fcnt_reg_n_0_[2] ),
        .O(sym2[2]));
  LUT1 #(
    .INIT(2'h1)) 
    r_lbot_reg_0_7_0_5_i_3
       (.I0(\fcnt_reg_n_0_[1] ),
        .O(sym2[1]));
  LUT2 #(
    .INIT(4'h6)) 
    r_lbot_reg_0_7_0_5_i_4
       (.I0(huc[2]),
        .I1(huc[1]),
        .O(r_lbot_reg_0_7_0_5_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_lbot_reg_0_7_0_5_i_5
       (.I0(huc[1]),
        .O(r_lbot_reg_0_7_0_5_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFDFDFFFFFDFFFD)) 
    r_lbot_reg_0_7_0_5_i_6
       (.I0(huc[4]),
        .I1(huc[6]),
        .I2(huc[5]),
        .I3(huc[3]),
        .I4(huc[2]),
        .I5(\huc[5]_i_2_n_0 ),
        .O(r_lbot_reg_0_7_0_5_i_6_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "56" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/r_lbot_reg_0_7_6_6" *) 
  (* RTL_RAM_STYLE = "NONE" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM32X1D r_lbot_reg_0_7_6_6
       (.A0(huc[0]),
        .A1(r_lbot_reg_0_7_0_5_i_5_n_0),
        .A2(r_lbot_reg_0_7_0_5_i_4_n_0),
        .A3(1'b0),
        .A4(1'b0),
        .D(ul_r[6]),
        .DPO(p_2_in[6]),
        .DPRA0(\fcnt_reg_n_0_[0] ),
        .DPRA1(sym2[1]),
        .DPRA2(sym2[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(NLW_r_lbot_reg_0_7_6_6_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in));
  LUT5 #(
    .INIT(32'h00FF4C00)) 
    \rcnt[0]_i_1 
       (.I0(c[1]),
        .I1(\rcnt[2]_i_2_n_0 ),
        .I2(c[2]),
        .I3(\rcnt[2]_i_3_n_0 ),
        .I4(c[0]),
        .O(\rcnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h04FFC000)) 
    \rcnt[1]_i_1 
       (.I0(c[2]),
        .I1(\rcnt[2]_i_2_n_0 ),
        .I2(c[0]),
        .I3(\rcnt[2]_i_3_n_0 ),
        .I4(c[1]),
        .O(\rcnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h0AFF8000)) 
    \rcnt[2]_i_1 
       (.I0(\rcnt[2]_i_2_n_0 ),
        .I1(c[0]),
        .I2(c[1]),
        .I3(\rcnt[2]_i_3_n_0 ),
        .I4(c[2]),
        .O(\rcnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF7FF)) 
    \rcnt[2]_i_2 
       (.I0(\fcnt_reg_n_0_[3] ),
        .I1(\fcnt_reg_n_0_[1] ),
        .I2(\fcnt_reg_n_0_[2] ),
        .I3(\fcnt_reg_n_0_[0] ),
        .I4(\fcnt_reg_n_0_[4] ),
        .I5(\dl[6]_i_9_n_0 ),
        .O(\rcnt[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFD500000000)) 
    \rcnt[2]_i_3 
       (.I0(\rcnt[2]_i_2_n_0 ),
        .I1(\fcnt_reg_n_0_[3] ),
        .I2(\fcnt_reg_n_0_[2] ),
        .I3(\fcnt_reg_n_0_[4] ),
        .I4(\dl[6]_i_9_n_0 ),
        .I5(\rp[2]_i_4_n_0 ),
        .O(\rcnt[2]_i_3_n_0 ));
  FDRE \rcnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\rcnt[0]_i_1_n_0 ),
        .Q(c[0]),
        .R(1'b0));
  FDRE \rcnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\rcnt[1]_i_1_n_0 ),
        .Q(c[1]),
        .R(1'b0));
  FDRE \rcnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\rcnt[2]_i_1_n_0 ),
        .Q(c[2]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M rdel_reg_r1_0_63_0_2
       (.ADDRA({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[0]),
        .DIB(p_2_in3_in[1]),
        .DIC(p_2_in3_in[2]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_0_63_0_2_n_0),
        .DOB(rdel_reg_r1_0_63_0_2_n_1),
        .DOC(rdel_reg_r1_0_63_0_2_n_2),
        .DOD(NLW_rdel_reg_r1_0_63_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_0_63_0_2_i_1_n_0));
  LUT4 #(
    .INIT(16'h0002)) 
    rdel_reg_r1_0_63_0_2_i_1
       (.I0(p_0_in__0),
        .I1(xa[8]),
        .I2(xa[6]),
        .I3(xa[7]),
        .O(rdel_reg_r1_0_63_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAA9A9A9A9A9A9A9)) 
    rdel_reg_r1_0_63_0_2_i_2
       (.I0(\xa_reg[5]_rep_n_0 ),
        .I1(xa[4]),
        .I2(xa[3]),
        .I3(xa[1]),
        .I4(\xa_reg[0]_rep_n_0 ),
        .I5(\xa_reg[2]_rep_n_0 ),
        .O(rdel_reg_r1_0_63_0_2_i_2_n_0));
  LUT5 #(
    .INIT(32'hC9999999)) 
    rdel_reg_r1_0_63_0_2_i_3
       (.I0(xa[3]),
        .I1(xa[4]),
        .I2(\xa_reg[2]_rep_n_0 ),
        .I3(\xa_reg[0]_rep_n_0 ),
        .I4(xa[1]),
        .O(rdel_reg_r1_0_63_0_2_i_3_n_0));
  LUT4 #(
    .INIT(16'h807F)) 
    rdel_reg_r1_0_63_0_2_i_4
       (.I0(xa[1]),
        .I1(\xa_reg[0]_rep_n_0 ),
        .I2(\xa_reg[2]_rep_n_0 ),
        .I3(xa[3]),
        .O(rdel_reg_r1_0_63_0_2_i_4_n_0));
  LUT3 #(
    .INIT(8'h78)) 
    rdel_reg_r1_0_63_0_2_i_5
       (.I0(xa[0]),
        .I1(\xa_reg[1]_rep_n_0 ),
        .I2(xa[2]),
        .O(rdel_reg_r1_0_63_0_2_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    rdel_reg_r1_0_63_0_2_i_6
       (.I0(\xa_reg[1]_rep_n_0 ),
        .I1(xa[0]),
        .O(rdel_reg_r1_0_63_0_2_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rdel_reg_r1_0_63_0_2_i_7
       (.I0(xa[0]),
        .O(rdel_reg_r1_0_63_0_2_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    rdel_reg_r1_0_63_0_2_i_8
       (.I0(\st_reg[0]_0 ),
        .I1(\st_reg[1]_0 ),
        .I2(\st_reg[2]_0 ),
        .I3(sig_valid),
        .I4(is_real__2),
        .O(p_0_in__0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M rdel_reg_r1_0_63_12_14
       (.ADDRA({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRB({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRC({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[12]),
        .DIB(p_2_in3_in[13]),
        .DIC(p_2_in3_in[14]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_0_63_12_14_n_0),
        .DOB(rdel_reg_r1_0_63_12_14_n_1),
        .DOC(rdel_reg_r1_0_63_12_14_n_2),
        .DOD(NLW_rdel_reg_r1_0_63_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "17" *) 
  RAM64M rdel_reg_r1_0_63_15_17
       (.ADDRA({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRB({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRC({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[15]),
        .DIB(p_2_in3_in[16]),
        .DIC(p_2_in3_in[17]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_0_63_15_17_n_0),
        .DOB(rdel_reg_r1_0_63_15_17_n_1),
        .DOC(rdel_reg_r1_0_63_15_17_n_2),
        .DOD(NLW_rdel_reg_r1_0_63_15_17_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_0_63_0_2_i_1_n_0));
  LUT4 #(
    .INIT(16'h807F)) 
    rdel_reg_r1_0_63_15_17_i_1
       (.I0(xa[1]),
        .I1(\xa_reg[0]_rep_n_0 ),
        .I2(\xa_reg[2]_rep_n_0 ),
        .I3(xa[3]),
        .O(rdel_reg_r1_0_63_15_17_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "20" *) 
  RAM64M rdel_reg_r1_0_63_18_20
       (.ADDRA({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRB({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRC({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[18]),
        .DIB(p_2_in3_in[19]),
        .DIC(p_2_in3_in[20]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_0_63_18_20_n_0),
        .DOB(rdel_reg_r1_0_63_18_20_n_1),
        .DOC(rdel_reg_r1_0_63_18_20_n_2),
        .DOD(NLW_rdel_reg_r1_0_63_18_20_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_0_63_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAA9A9A9A9A9A9A9)) 
    rdel_reg_r1_0_63_18_20_i_1
       (.I0(\xa_reg[5]_rep_n_0 ),
        .I1(xa[4]),
        .I2(xa[3]),
        .I3(xa[1]),
        .I4(\xa_reg[0]_rep_n_0 ),
        .I5(\xa_reg[2]_rep_n_0 ),
        .O(rdel_reg_r1_0_63_18_20_i_1_n_0));
  LUT3 #(
    .INIT(8'h78)) 
    rdel_reg_r1_0_63_18_20_i_2
       (.I0(xa[0]),
        .I1(\xa_reg[1]_rep_n_0 ),
        .I2(xa[2]),
        .O(rdel_reg_r1_0_63_18_20_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    rdel_reg_r1_0_63_18_20_i_3
       (.I0(\xa_reg[1]_rep_n_0 ),
        .I1(xa[0]),
        .O(rdel_reg_r1_0_63_18_20_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rdel_reg_r1_0_63_18_20_i_4
       (.I0(xa[0]),
        .O(rdel_reg_r1_0_63_18_20_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "23" *) 
  RAM64M rdel_reg_r1_0_63_21_23
       (.ADDRA({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRB({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRC({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[21]),
        .DIB(p_2_in3_in[22]),
        .DIC(p_2_in3_in[23]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_0_63_21_23_n_0),
        .DOB(rdel_reg_r1_0_63_21_23_n_1),
        .DOC(rdel_reg_r1_0_63_21_23_n_2),
        .DOD(NLW_rdel_reg_r1_0_63_21_23_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "26" *) 
  RAM64M rdel_reg_r1_0_63_24_26
       (.ADDRA({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRB({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRC({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[24]),
        .DIB(p_2_in3_in[25]),
        .DIC(p_2_in3_in[26]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_0_63_24_26_n_0),
        .DOB(rdel_reg_r1_0_63_24_26_n_1),
        .DOC(rdel_reg_r1_0_63_24_26_n_2),
        .DOD(NLW_rdel_reg_r1_0_63_24_26_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "29" *) 
  RAM64M rdel_reg_r1_0_63_27_29
       (.ADDRA({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRB({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRC({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[27]),
        .DIB(p_2_in3_in[28]),
        .DIC(p_2_in3_in[29]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_0_63_27_29_n_0),
        .DOB(rdel_reg_r1_0_63_27_29_n_1),
        .DOC(rdel_reg_r1_0_63_27_29_n_2),
        .DOD(NLW_rdel_reg_r1_0_63_27_29_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_0_63_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h78)) 
    rdel_reg_r1_0_63_27_29_i_1
       (.I0(xa[0]),
        .I1(\xa_reg[1]_rep_n_0 ),
        .I2(xa[2]),
        .O(rdel_reg_r1_0_63_27_29_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    rdel_reg_r1_0_63_27_29_i_2
       (.I0(\xa_reg[1]_rep_n_0 ),
        .I1(xa[0]),
        .O(rdel_reg_r1_0_63_27_29_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rdel_reg_r1_0_63_27_29_i_3
       (.I0(xa[0]),
        .O(rdel_reg_r1_0_63_27_29_i_3_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "32" *) 
  RAM64M rdel_reg_r1_0_63_30_32
       (.ADDRA({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRB({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRC({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[30]),
        .DIB(p_2_in3_in[31]),
        .DIC(p_2_in3_in[32]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_0_63_30_32_n_0),
        .DOB(rdel_reg_r1_0_63_30_32_n_1),
        .DOC(rdel_reg_r1_0_63_30_32_n_2),
        .DOD(NLW_rdel_reg_r1_0_63_30_32_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_0_63_0_2_i_1_n_0));
  LUT4 #(
    .INIT(16'h807F)) 
    rdel_reg_r1_0_63_30_32_i_1
       (.I0(xa[1]),
        .I1(\xa_reg[0]_rep_n_0 ),
        .I2(\xa_reg[2]_rep_n_0 ),
        .I3(xa[3]),
        .O(rdel_reg_r1_0_63_30_32_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "33" *) 
  (* ram_slice_end = "35" *) 
  RAM64M rdel_reg_r1_0_63_33_35
       (.ADDRA({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRB({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRC({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[33]),
        .DIB(p_2_in3_in[34]),
        .DIC(p_2_in3_in[35]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_0_63_33_35_n_0),
        .DOB(rdel_reg_r1_0_63_33_35_n_1),
        .DOC(rdel_reg_r1_0_63_33_35_n_2),
        .DOD(NLW_rdel_reg_r1_0_63_33_35_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "36" *) 
  (* ram_slice_end = "38" *) 
  RAM64M rdel_reg_r1_0_63_36_38
       (.ADDRA({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRB({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRC({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[36]),
        .DIB(p_2_in3_in[37]),
        .DIC(p_2_in3_in[38]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_0_63_36_38_n_0),
        .DOB(rdel_reg_r1_0_63_36_38_n_1),
        .DOC(rdel_reg_r1_0_63_36_38_n_2),
        .DOD(NLW_rdel_reg_r1_0_63_36_38_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_0_63_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAA9A9A9A9A9A9A9)) 
    rdel_reg_r1_0_63_36_38_i_1
       (.I0(\xa_reg[5]_rep_n_0 ),
        .I1(xa[4]),
        .I2(xa[3]),
        .I3(xa[1]),
        .I4(\xa_reg[0]_rep_n_0 ),
        .I5(\xa_reg[2]_rep_n_0 ),
        .O(rdel_reg_r1_0_63_36_38_i_1_n_0));
  LUT3 #(
    .INIT(8'h78)) 
    rdel_reg_r1_0_63_36_38_i_2
       (.I0(xa[0]),
        .I1(\xa_reg[1]_rep_n_0 ),
        .I2(xa[2]),
        .O(rdel_reg_r1_0_63_36_38_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    rdel_reg_r1_0_63_36_38_i_3
       (.I0(\xa_reg[1]_rep_n_0 ),
        .I1(xa[0]),
        .O(rdel_reg_r1_0_63_36_38_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rdel_reg_r1_0_63_36_38_i_4
       (.I0(xa[0]),
        .O(xa0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "39" *) 
  (* ram_slice_end = "41" *) 
  RAM64M rdel_reg_r1_0_63_39_41
       (.ADDRA({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRB({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRC({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[39]),
        .DIB(p_2_in3_in[40]),
        .DIC(p_2_in3_in[41]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_0_63_39_41_n_0),
        .DOB(rdel_reg_r1_0_63_39_41_n_1),
        .DOC(rdel_reg_r1_0_63_39_41_n_2),
        .DOD(NLW_rdel_reg_r1_0_63_39_41_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M rdel_reg_r1_0_63_3_5
       (.ADDRA({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[3]),
        .DIB(p_2_in3_in[4]),
        .DIC(p_2_in3_in[5]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_0_63_3_5_n_0),
        .DOB(rdel_reg_r1_0_63_3_5_n_1),
        .DOC(rdel_reg_r1_0_63_3_5_n_2),
        .DOD(NLW_rdel_reg_r1_0_63_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "42" *) 
  (* ram_slice_end = "44" *) 
  RAM64M rdel_reg_r1_0_63_42_44
       (.ADDRA({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRB({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRC({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[42]),
        .DIB(p_2_in3_in[43]),
        .DIC(p_2_in3_in[44]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_0_63_42_44_n_0),
        .DOB(rdel_reg_r1_0_63_42_44_n_1),
        .DOC(rdel_reg_r1_0_63_42_44_n_2),
        .DOD(NLW_rdel_reg_r1_0_63_42_44_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M rdel_reg_r1_0_63_6_8
       (.ADDRA({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[6]),
        .DIB(p_2_in3_in[7]),
        .DIC(p_2_in3_in[8]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_0_63_6_8_n_0),
        .DOB(rdel_reg_r1_0_63_6_8_n_1),
        .DOC(rdel_reg_r1_0_63_6_8_n_2),
        .DOD(NLW_rdel_reg_r1_0_63_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M rdel_reg_r1_0_63_9_11
       (.ADDRA({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRB({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRC({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[9]),
        .DIB(p_2_in3_in[10]),
        .DIC(p_2_in3_in[11]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_0_63_9_11_n_0),
        .DOB(rdel_reg_r1_0_63_9_11_n_1),
        .DOC(rdel_reg_r1_0_63_9_11_n_2),
        .DOD(NLW_rdel_reg_r1_0_63_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_0_63_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h78)) 
    rdel_reg_r1_0_63_9_11_i_1
       (.I0(xa[0]),
        .I1(\xa_reg[1]_rep_n_0 ),
        .I2(xa[2]),
        .O(rdel_reg_r1_0_63_9_11_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    rdel_reg_r1_0_63_9_11_i_2
       (.I0(\xa_reg[1]_rep_n_0 ),
        .I1(xa[0]),
        .O(rdel_reg_r1_0_63_9_11_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rdel_reg_r1_0_63_9_11_i_3
       (.I0(xa[0]),
        .O(rdel_reg_r1_0_63_9_11_i_3_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M rdel_reg_r1_128_191_0_2
       (.ADDRA({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[0]),
        .DIB(p_2_in3_in[1]),
        .DIC(p_2_in3_in[2]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_128_191_0_2_n_0),
        .DOB(rdel_reg_r1_128_191_0_2_n_1),
        .DOC(rdel_reg_r1_128_191_0_2_n_2),
        .DOD(NLW_rdel_reg_r1_128_191_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_128_191_0_2_i_1_n_0));
  LUT4 #(
    .INIT(16'h1000)) 
    rdel_reg_r1_128_191_0_2_i_1
       (.I0(xa[6]),
        .I1(xa[8]),
        .I2(xa[7]),
        .I3(p_0_in__0),
        .O(rdel_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M rdel_reg_r1_128_191_12_14
       (.ADDRA({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRB({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRC({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[12]),
        .DIB(p_2_in3_in[13]),
        .DIC(p_2_in3_in[14]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_128_191_12_14_n_0),
        .DOB(rdel_reg_r1_128_191_12_14_n_1),
        .DOC(rdel_reg_r1_128_191_12_14_n_2),
        .DOD(NLW_rdel_reg_r1_128_191_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "17" *) 
  RAM64M rdel_reg_r1_128_191_15_17
       (.ADDRA({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRB({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRC({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[15]),
        .DIB(p_2_in3_in[16]),
        .DIC(p_2_in3_in[17]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_128_191_15_17_n_0),
        .DOB(rdel_reg_r1_128_191_15_17_n_1),
        .DOC(rdel_reg_r1_128_191_15_17_n_2),
        .DOD(NLW_rdel_reg_r1_128_191_15_17_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "20" *) 
  RAM64M rdel_reg_r1_128_191_18_20
       (.ADDRA({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRB({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRC({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[18]),
        .DIB(p_2_in3_in[19]),
        .DIC(p_2_in3_in[20]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_128_191_18_20_n_0),
        .DOB(rdel_reg_r1_128_191_18_20_n_1),
        .DOC(rdel_reg_r1_128_191_18_20_n_2),
        .DOD(NLW_rdel_reg_r1_128_191_18_20_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "23" *) 
  RAM64M rdel_reg_r1_128_191_21_23
       (.ADDRA({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRB({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRC({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[21]),
        .DIB(p_2_in3_in[22]),
        .DIC(p_2_in3_in[23]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_128_191_21_23_n_0),
        .DOB(rdel_reg_r1_128_191_21_23_n_1),
        .DOC(rdel_reg_r1_128_191_21_23_n_2),
        .DOD(NLW_rdel_reg_r1_128_191_21_23_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "26" *) 
  RAM64M rdel_reg_r1_128_191_24_26
       (.ADDRA({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRB({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRC({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[24]),
        .DIB(p_2_in3_in[25]),
        .DIC(p_2_in3_in[26]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_128_191_24_26_n_0),
        .DOB(rdel_reg_r1_128_191_24_26_n_1),
        .DOC(rdel_reg_r1_128_191_24_26_n_2),
        .DOD(NLW_rdel_reg_r1_128_191_24_26_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "29" *) 
  RAM64M rdel_reg_r1_128_191_27_29
       (.ADDRA({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRB({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRC({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[27]),
        .DIB(p_2_in3_in[28]),
        .DIC(p_2_in3_in[29]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_128_191_27_29_n_0),
        .DOB(rdel_reg_r1_128_191_27_29_n_1),
        .DOC(rdel_reg_r1_128_191_27_29_n_2),
        .DOD(NLW_rdel_reg_r1_128_191_27_29_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "32" *) 
  RAM64M rdel_reg_r1_128_191_30_32
       (.ADDRA({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRB({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRC({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[30]),
        .DIB(p_2_in3_in[31]),
        .DIC(p_2_in3_in[32]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_128_191_30_32_n_0),
        .DOB(rdel_reg_r1_128_191_30_32_n_1),
        .DOC(rdel_reg_r1_128_191_30_32_n_2),
        .DOD(NLW_rdel_reg_r1_128_191_30_32_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "33" *) 
  (* ram_slice_end = "35" *) 
  RAM64M rdel_reg_r1_128_191_33_35
       (.ADDRA({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRB({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRC({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[33]),
        .DIB(p_2_in3_in[34]),
        .DIC(p_2_in3_in[35]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_128_191_33_35_n_0),
        .DOB(rdel_reg_r1_128_191_33_35_n_1),
        .DOC(rdel_reg_r1_128_191_33_35_n_2),
        .DOD(NLW_rdel_reg_r1_128_191_33_35_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "36" *) 
  (* ram_slice_end = "38" *) 
  RAM64M rdel_reg_r1_128_191_36_38
       (.ADDRA({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRB({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRC({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[36]),
        .DIB(p_2_in3_in[37]),
        .DIC(p_2_in3_in[38]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_128_191_36_38_n_0),
        .DOB(rdel_reg_r1_128_191_36_38_n_1),
        .DOC(rdel_reg_r1_128_191_36_38_n_2),
        .DOD(NLW_rdel_reg_r1_128_191_36_38_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "39" *) 
  (* ram_slice_end = "41" *) 
  RAM64M rdel_reg_r1_128_191_39_41
       (.ADDRA({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRB({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRC({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[39]),
        .DIB(p_2_in3_in[40]),
        .DIC(p_2_in3_in[41]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_128_191_39_41_n_0),
        .DOB(rdel_reg_r1_128_191_39_41_n_1),
        .DOC(rdel_reg_r1_128_191_39_41_n_2),
        .DOD(NLW_rdel_reg_r1_128_191_39_41_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M rdel_reg_r1_128_191_3_5
       (.ADDRA({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[3]),
        .DIB(p_2_in3_in[4]),
        .DIC(p_2_in3_in[5]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_128_191_3_5_n_0),
        .DOB(rdel_reg_r1_128_191_3_5_n_1),
        .DOC(rdel_reg_r1_128_191_3_5_n_2),
        .DOD(NLW_rdel_reg_r1_128_191_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "42" *) 
  (* ram_slice_end = "44" *) 
  RAM64M rdel_reg_r1_128_191_42_44
       (.ADDRA({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRB({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRC({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[42]),
        .DIB(p_2_in3_in[43]),
        .DIC(p_2_in3_in[44]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_128_191_42_44_n_0),
        .DOB(rdel_reg_r1_128_191_42_44_n_1),
        .DOC(rdel_reg_r1_128_191_42_44_n_2),
        .DOD(NLW_rdel_reg_r1_128_191_42_44_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M rdel_reg_r1_128_191_6_8
       (.ADDRA({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[6]),
        .DIB(p_2_in3_in[7]),
        .DIC(p_2_in3_in[8]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_128_191_6_8_n_0),
        .DOB(rdel_reg_r1_128_191_6_8_n_1),
        .DOC(rdel_reg_r1_128_191_6_8_n_2),
        .DOD(NLW_rdel_reg_r1_128_191_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M rdel_reg_r1_128_191_9_11
       (.ADDRA({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRB({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRC({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[9]),
        .DIB(p_2_in3_in[10]),
        .DIC(p_2_in3_in[11]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_128_191_9_11_n_0),
        .DOB(rdel_reg_r1_128_191_9_11_n_1),
        .DOC(rdel_reg_r1_128_191_9_11_n_2),
        .DOD(NLW_rdel_reg_r1_128_191_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M rdel_reg_r1_192_255_0_2
       (.ADDRA({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[0]),
        .DIB(p_2_in3_in[1]),
        .DIC(p_2_in3_in[2]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_192_255_0_2_n_0),
        .DOB(rdel_reg_r1_192_255_0_2_n_1),
        .DOC(rdel_reg_r1_192_255_0_2_n_2),
        .DOD(NLW_rdel_reg_r1_192_255_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_192_255_0_2_i_1_n_0));
  LUT4 #(
    .INIT(16'h2000)) 
    rdel_reg_r1_192_255_0_2_i_1
       (.I0(p_0_in__0),
        .I1(xa[8]),
        .I2(xa[6]),
        .I3(xa[7]),
        .O(rdel_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M rdel_reg_r1_192_255_12_14
       (.ADDRA({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRB({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRC({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[12]),
        .DIB(p_2_in3_in[13]),
        .DIC(p_2_in3_in[14]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_192_255_12_14_n_0),
        .DOB(rdel_reg_r1_192_255_12_14_n_1),
        .DOC(rdel_reg_r1_192_255_12_14_n_2),
        .DOD(NLW_rdel_reg_r1_192_255_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "17" *) 
  RAM64M rdel_reg_r1_192_255_15_17
       (.ADDRA({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRB({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRC({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[15]),
        .DIB(p_2_in3_in[16]),
        .DIC(p_2_in3_in[17]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_192_255_15_17_n_0),
        .DOB(rdel_reg_r1_192_255_15_17_n_1),
        .DOC(rdel_reg_r1_192_255_15_17_n_2),
        .DOD(NLW_rdel_reg_r1_192_255_15_17_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "20" *) 
  RAM64M rdel_reg_r1_192_255_18_20
       (.ADDRA({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRB({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRC({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[18]),
        .DIB(p_2_in3_in[19]),
        .DIC(p_2_in3_in[20]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_192_255_18_20_n_0),
        .DOB(rdel_reg_r1_192_255_18_20_n_1),
        .DOC(rdel_reg_r1_192_255_18_20_n_2),
        .DOD(NLW_rdel_reg_r1_192_255_18_20_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "23" *) 
  RAM64M rdel_reg_r1_192_255_21_23
       (.ADDRA({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRB({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRC({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[21]),
        .DIB(p_2_in3_in[22]),
        .DIC(p_2_in3_in[23]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_192_255_21_23_n_0),
        .DOB(rdel_reg_r1_192_255_21_23_n_1),
        .DOC(rdel_reg_r1_192_255_21_23_n_2),
        .DOD(NLW_rdel_reg_r1_192_255_21_23_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "26" *) 
  RAM64M rdel_reg_r1_192_255_24_26
       (.ADDRA({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRB({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRC({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[24]),
        .DIB(p_2_in3_in[25]),
        .DIC(p_2_in3_in[26]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_192_255_24_26_n_0),
        .DOB(rdel_reg_r1_192_255_24_26_n_1),
        .DOC(rdel_reg_r1_192_255_24_26_n_2),
        .DOD(NLW_rdel_reg_r1_192_255_24_26_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "29" *) 
  RAM64M rdel_reg_r1_192_255_27_29
       (.ADDRA({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRB({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRC({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[27]),
        .DIB(p_2_in3_in[28]),
        .DIC(p_2_in3_in[29]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_192_255_27_29_n_0),
        .DOB(rdel_reg_r1_192_255_27_29_n_1),
        .DOC(rdel_reg_r1_192_255_27_29_n_2),
        .DOD(NLW_rdel_reg_r1_192_255_27_29_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "32" *) 
  RAM64M rdel_reg_r1_192_255_30_32
       (.ADDRA({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRB({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRC({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[30]),
        .DIB(p_2_in3_in[31]),
        .DIC(p_2_in3_in[32]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_192_255_30_32_n_0),
        .DOB(rdel_reg_r1_192_255_30_32_n_1),
        .DOC(rdel_reg_r1_192_255_30_32_n_2),
        .DOD(NLW_rdel_reg_r1_192_255_30_32_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "33" *) 
  (* ram_slice_end = "35" *) 
  RAM64M rdel_reg_r1_192_255_33_35
       (.ADDRA({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRB({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRC({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[33]),
        .DIB(p_2_in3_in[34]),
        .DIC(p_2_in3_in[35]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_192_255_33_35_n_0),
        .DOB(rdel_reg_r1_192_255_33_35_n_1),
        .DOC(rdel_reg_r1_192_255_33_35_n_2),
        .DOD(NLW_rdel_reg_r1_192_255_33_35_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "36" *) 
  (* ram_slice_end = "38" *) 
  RAM64M rdel_reg_r1_192_255_36_38
       (.ADDRA({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRB({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRC({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[36]),
        .DIB(p_2_in3_in[37]),
        .DIC(p_2_in3_in[38]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_192_255_36_38_n_0),
        .DOB(rdel_reg_r1_192_255_36_38_n_1),
        .DOC(rdel_reg_r1_192_255_36_38_n_2),
        .DOD(NLW_rdel_reg_r1_192_255_36_38_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "39" *) 
  (* ram_slice_end = "41" *) 
  RAM64M rdel_reg_r1_192_255_39_41
       (.ADDRA({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRB({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRC({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[39]),
        .DIB(p_2_in3_in[40]),
        .DIC(p_2_in3_in[41]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_192_255_39_41_n_0),
        .DOB(rdel_reg_r1_192_255_39_41_n_1),
        .DOC(rdel_reg_r1_192_255_39_41_n_2),
        .DOD(NLW_rdel_reg_r1_192_255_39_41_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M rdel_reg_r1_192_255_3_5
       (.ADDRA({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[3]),
        .DIB(p_2_in3_in[4]),
        .DIC(p_2_in3_in[5]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_192_255_3_5_n_0),
        .DOB(rdel_reg_r1_192_255_3_5_n_1),
        .DOC(rdel_reg_r1_192_255_3_5_n_2),
        .DOD(NLW_rdel_reg_r1_192_255_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "42" *) 
  (* ram_slice_end = "44" *) 
  RAM64M rdel_reg_r1_192_255_42_44
       (.ADDRA({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRB({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRC({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[42]),
        .DIB(p_2_in3_in[43]),
        .DIC(p_2_in3_in[44]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_192_255_42_44_n_0),
        .DOB(rdel_reg_r1_192_255_42_44_n_1),
        .DOC(rdel_reg_r1_192_255_42_44_n_2),
        .DOD(NLW_rdel_reg_r1_192_255_42_44_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M rdel_reg_r1_192_255_6_8
       (.ADDRA({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[6]),
        .DIB(p_2_in3_in[7]),
        .DIC(p_2_in3_in[8]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_192_255_6_8_n_0),
        .DOB(rdel_reg_r1_192_255_6_8_n_1),
        .DOC(rdel_reg_r1_192_255_6_8_n_2),
        .DOD(NLW_rdel_reg_r1_192_255_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M rdel_reg_r1_192_255_9_11
       (.ADDRA({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRB({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRC({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[9]),
        .DIB(p_2_in3_in[10]),
        .DIC(p_2_in3_in[11]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_192_255_9_11_n_0),
        .DOB(rdel_reg_r1_192_255_9_11_n_1),
        .DOC(rdel_reg_r1_192_255_9_11_n_2),
        .DOD(NLW_rdel_reg_r1_192_255_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M rdel_reg_r1_256_319_0_2
       (.ADDRA({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[0]),
        .DIB(p_2_in3_in[1]),
        .DIC(p_2_in3_in[2]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_256_319_0_2_n_0),
        .DOB(rdel_reg_r1_256_319_0_2_n_1),
        .DOC(rdel_reg_r1_256_319_0_2_n_2),
        .DOD(NLW_rdel_reg_r1_256_319_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_256_319_0_2_i_1_n_0));
  LUT4 #(
    .INIT(16'h1000)) 
    rdel_reg_r1_256_319_0_2_i_1
       (.I0(xa[6]),
        .I1(xa[7]),
        .I2(xa[8]),
        .I3(p_0_in__0),
        .O(rdel_reg_r1_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M rdel_reg_r1_256_319_12_14
       (.ADDRA({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRB({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRC({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[12]),
        .DIB(p_2_in3_in[13]),
        .DIC(p_2_in3_in[14]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_256_319_12_14_n_0),
        .DOB(rdel_reg_r1_256_319_12_14_n_1),
        .DOC(rdel_reg_r1_256_319_12_14_n_2),
        .DOD(NLW_rdel_reg_r1_256_319_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "17" *) 
  RAM64M rdel_reg_r1_256_319_15_17
       (.ADDRA({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRB({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRC({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[15]),
        .DIB(p_2_in3_in[16]),
        .DIC(p_2_in3_in[17]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_256_319_15_17_n_0),
        .DOB(rdel_reg_r1_256_319_15_17_n_1),
        .DOC(rdel_reg_r1_256_319_15_17_n_2),
        .DOD(NLW_rdel_reg_r1_256_319_15_17_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "20" *) 
  RAM64M rdel_reg_r1_256_319_18_20
       (.ADDRA({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRB({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRC({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[18]),
        .DIB(p_2_in3_in[19]),
        .DIC(p_2_in3_in[20]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_256_319_18_20_n_0),
        .DOB(rdel_reg_r1_256_319_18_20_n_1),
        .DOC(rdel_reg_r1_256_319_18_20_n_2),
        .DOD(NLW_rdel_reg_r1_256_319_18_20_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "23" *) 
  RAM64M rdel_reg_r1_256_319_21_23
       (.ADDRA({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRB({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRC({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[21]),
        .DIB(p_2_in3_in[22]),
        .DIC(p_2_in3_in[23]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_256_319_21_23_n_0),
        .DOB(rdel_reg_r1_256_319_21_23_n_1),
        .DOC(rdel_reg_r1_256_319_21_23_n_2),
        .DOD(NLW_rdel_reg_r1_256_319_21_23_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "26" *) 
  RAM64M rdel_reg_r1_256_319_24_26
       (.ADDRA({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRB({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRC({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[24]),
        .DIB(p_2_in3_in[25]),
        .DIC(p_2_in3_in[26]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_256_319_24_26_n_0),
        .DOB(rdel_reg_r1_256_319_24_26_n_1),
        .DOC(rdel_reg_r1_256_319_24_26_n_2),
        .DOD(NLW_rdel_reg_r1_256_319_24_26_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "29" *) 
  RAM64M rdel_reg_r1_256_319_27_29
       (.ADDRA({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRB({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRC({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[27]),
        .DIB(p_2_in3_in[28]),
        .DIC(p_2_in3_in[29]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_256_319_27_29_n_0),
        .DOB(rdel_reg_r1_256_319_27_29_n_1),
        .DOC(rdel_reg_r1_256_319_27_29_n_2),
        .DOD(NLW_rdel_reg_r1_256_319_27_29_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "32" *) 
  RAM64M rdel_reg_r1_256_319_30_32
       (.ADDRA({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRB({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRC({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[30]),
        .DIB(p_2_in3_in[31]),
        .DIC(p_2_in3_in[32]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_256_319_30_32_n_0),
        .DOB(rdel_reg_r1_256_319_30_32_n_1),
        .DOC(rdel_reg_r1_256_319_30_32_n_2),
        .DOD(NLW_rdel_reg_r1_256_319_30_32_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "33" *) 
  (* ram_slice_end = "35" *) 
  RAM64M rdel_reg_r1_256_319_33_35
       (.ADDRA({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRB({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRC({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[33]),
        .DIB(p_2_in3_in[34]),
        .DIC(p_2_in3_in[35]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_256_319_33_35_n_0),
        .DOB(rdel_reg_r1_256_319_33_35_n_1),
        .DOC(rdel_reg_r1_256_319_33_35_n_2),
        .DOD(NLW_rdel_reg_r1_256_319_33_35_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "36" *) 
  (* ram_slice_end = "38" *) 
  RAM64M rdel_reg_r1_256_319_36_38
       (.ADDRA({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRB({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRC({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[36]),
        .DIB(p_2_in3_in[37]),
        .DIC(p_2_in3_in[38]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_256_319_36_38_n_0),
        .DOB(rdel_reg_r1_256_319_36_38_n_1),
        .DOC(rdel_reg_r1_256_319_36_38_n_2),
        .DOD(NLW_rdel_reg_r1_256_319_36_38_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "39" *) 
  (* ram_slice_end = "41" *) 
  RAM64M rdel_reg_r1_256_319_39_41
       (.ADDRA({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRB({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRC({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[39]),
        .DIB(p_2_in3_in[40]),
        .DIC(p_2_in3_in[41]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_256_319_39_41_n_0),
        .DOB(rdel_reg_r1_256_319_39_41_n_1),
        .DOC(rdel_reg_r1_256_319_39_41_n_2),
        .DOD(NLW_rdel_reg_r1_256_319_39_41_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M rdel_reg_r1_256_319_3_5
       (.ADDRA({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[3]),
        .DIB(p_2_in3_in[4]),
        .DIC(p_2_in3_in[5]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_256_319_3_5_n_0),
        .DOB(rdel_reg_r1_256_319_3_5_n_1),
        .DOC(rdel_reg_r1_256_319_3_5_n_2),
        .DOD(NLW_rdel_reg_r1_256_319_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "42" *) 
  (* ram_slice_end = "44" *) 
  RAM64M rdel_reg_r1_256_319_42_44
       (.ADDRA({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRB({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRC({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[42]),
        .DIB(p_2_in3_in[43]),
        .DIC(p_2_in3_in[44]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_256_319_42_44_n_0),
        .DOB(rdel_reg_r1_256_319_42_44_n_1),
        .DOC(rdel_reg_r1_256_319_42_44_n_2),
        .DOD(NLW_rdel_reg_r1_256_319_42_44_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M rdel_reg_r1_256_319_6_8
       (.ADDRA({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[6]),
        .DIB(p_2_in3_in[7]),
        .DIC(p_2_in3_in[8]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_256_319_6_8_n_0),
        .DOB(rdel_reg_r1_256_319_6_8_n_1),
        .DOC(rdel_reg_r1_256_319_6_8_n_2),
        .DOD(NLW_rdel_reg_r1_256_319_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M rdel_reg_r1_256_319_9_11
       (.ADDRA({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRB({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRC({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[9]),
        .DIB(p_2_in3_in[10]),
        .DIC(p_2_in3_in[11]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_256_319_9_11_n_0),
        .DOB(rdel_reg_r1_256_319_9_11_n_1),
        .DOC(rdel_reg_r1_256_319_9_11_n_2),
        .DOD(NLW_rdel_reg_r1_256_319_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M rdel_reg_r1_320_383_0_2
       (.ADDRA({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[0]),
        .DIB(p_2_in3_in[1]),
        .DIC(p_2_in3_in[2]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_320_383_0_2_n_0),
        .DOB(rdel_reg_r1_320_383_0_2_n_1),
        .DOC(rdel_reg_r1_320_383_0_2_n_2),
        .DOD(NLW_rdel_reg_r1_320_383_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_320_383_0_2_i_1_n_0));
  LUT4 #(
    .INIT(16'h2000)) 
    rdel_reg_r1_320_383_0_2_i_1
       (.I0(p_0_in__0),
        .I1(xa[7]),
        .I2(xa[6]),
        .I3(xa[8]),
        .O(rdel_reg_r1_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M rdel_reg_r1_320_383_12_14
       (.ADDRA({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRB({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRC({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[12]),
        .DIB(p_2_in3_in[13]),
        .DIC(p_2_in3_in[14]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_320_383_12_14_n_0),
        .DOB(rdel_reg_r1_320_383_12_14_n_1),
        .DOC(rdel_reg_r1_320_383_12_14_n_2),
        .DOD(NLW_rdel_reg_r1_320_383_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "17" *) 
  RAM64M rdel_reg_r1_320_383_15_17
       (.ADDRA({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRB({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRC({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[15]),
        .DIB(p_2_in3_in[16]),
        .DIC(p_2_in3_in[17]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_320_383_15_17_n_0),
        .DOB(rdel_reg_r1_320_383_15_17_n_1),
        .DOC(rdel_reg_r1_320_383_15_17_n_2),
        .DOD(NLW_rdel_reg_r1_320_383_15_17_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "20" *) 
  RAM64M rdel_reg_r1_320_383_18_20
       (.ADDRA({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRB({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRC({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[18]),
        .DIB(p_2_in3_in[19]),
        .DIC(p_2_in3_in[20]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_320_383_18_20_n_0),
        .DOB(rdel_reg_r1_320_383_18_20_n_1),
        .DOC(rdel_reg_r1_320_383_18_20_n_2),
        .DOD(NLW_rdel_reg_r1_320_383_18_20_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "23" *) 
  RAM64M rdel_reg_r1_320_383_21_23
       (.ADDRA({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRB({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRC({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[21]),
        .DIB(p_2_in3_in[22]),
        .DIC(p_2_in3_in[23]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_320_383_21_23_n_0),
        .DOB(rdel_reg_r1_320_383_21_23_n_1),
        .DOC(rdel_reg_r1_320_383_21_23_n_2),
        .DOD(NLW_rdel_reg_r1_320_383_21_23_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "26" *) 
  RAM64M rdel_reg_r1_320_383_24_26
       (.ADDRA({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRB({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRC({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[24]),
        .DIB(p_2_in3_in[25]),
        .DIC(p_2_in3_in[26]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_320_383_24_26_n_0),
        .DOB(rdel_reg_r1_320_383_24_26_n_1),
        .DOC(rdel_reg_r1_320_383_24_26_n_2),
        .DOD(NLW_rdel_reg_r1_320_383_24_26_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "29" *) 
  RAM64M rdel_reg_r1_320_383_27_29
       (.ADDRA({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRB({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRC({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[27]),
        .DIB(p_2_in3_in[28]),
        .DIC(p_2_in3_in[29]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_320_383_27_29_n_0),
        .DOB(rdel_reg_r1_320_383_27_29_n_1),
        .DOC(rdel_reg_r1_320_383_27_29_n_2),
        .DOD(NLW_rdel_reg_r1_320_383_27_29_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "32" *) 
  RAM64M rdel_reg_r1_320_383_30_32
       (.ADDRA({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRB({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRC({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[30]),
        .DIB(p_2_in3_in[31]),
        .DIC(p_2_in3_in[32]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_320_383_30_32_n_0),
        .DOB(rdel_reg_r1_320_383_30_32_n_1),
        .DOC(rdel_reg_r1_320_383_30_32_n_2),
        .DOD(NLW_rdel_reg_r1_320_383_30_32_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "33" *) 
  (* ram_slice_end = "35" *) 
  RAM64M rdel_reg_r1_320_383_33_35
       (.ADDRA({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRB({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRC({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[33]),
        .DIB(p_2_in3_in[34]),
        .DIC(p_2_in3_in[35]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_320_383_33_35_n_0),
        .DOB(rdel_reg_r1_320_383_33_35_n_1),
        .DOC(rdel_reg_r1_320_383_33_35_n_2),
        .DOD(NLW_rdel_reg_r1_320_383_33_35_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "36" *) 
  (* ram_slice_end = "38" *) 
  RAM64M rdel_reg_r1_320_383_36_38
       (.ADDRA({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRB({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRC({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[36]),
        .DIB(p_2_in3_in[37]),
        .DIC(p_2_in3_in[38]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_320_383_36_38_n_0),
        .DOB(rdel_reg_r1_320_383_36_38_n_1),
        .DOC(rdel_reg_r1_320_383_36_38_n_2),
        .DOD(NLW_rdel_reg_r1_320_383_36_38_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "39" *) 
  (* ram_slice_end = "41" *) 
  RAM64M rdel_reg_r1_320_383_39_41
       (.ADDRA({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRB({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRC({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[39]),
        .DIB(p_2_in3_in[40]),
        .DIC(p_2_in3_in[41]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_320_383_39_41_n_0),
        .DOB(rdel_reg_r1_320_383_39_41_n_1),
        .DOC(rdel_reg_r1_320_383_39_41_n_2),
        .DOD(NLW_rdel_reg_r1_320_383_39_41_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M rdel_reg_r1_320_383_3_5
       (.ADDRA({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[3]),
        .DIB(p_2_in3_in[4]),
        .DIC(p_2_in3_in[5]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_320_383_3_5_n_0),
        .DOB(rdel_reg_r1_320_383_3_5_n_1),
        .DOC(rdel_reg_r1_320_383_3_5_n_2),
        .DOD(NLW_rdel_reg_r1_320_383_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "42" *) 
  (* ram_slice_end = "44" *) 
  RAM64M rdel_reg_r1_320_383_42_44
       (.ADDRA({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRB({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRC({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[42]),
        .DIB(p_2_in3_in[43]),
        .DIC(p_2_in3_in[44]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_320_383_42_44_n_0),
        .DOB(rdel_reg_r1_320_383_42_44_n_1),
        .DOC(rdel_reg_r1_320_383_42_44_n_2),
        .DOD(NLW_rdel_reg_r1_320_383_42_44_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M rdel_reg_r1_320_383_6_8
       (.ADDRA({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[6]),
        .DIB(p_2_in3_in[7]),
        .DIC(p_2_in3_in[8]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_320_383_6_8_n_0),
        .DOB(rdel_reg_r1_320_383_6_8_n_1),
        .DOC(rdel_reg_r1_320_383_6_8_n_2),
        .DOD(NLW_rdel_reg_r1_320_383_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M rdel_reg_r1_320_383_9_11
       (.ADDRA({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRB({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRC({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[9]),
        .DIB(p_2_in3_in[10]),
        .DIC(p_2_in3_in[11]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_320_383_9_11_n_0),
        .DOB(rdel_reg_r1_320_383_9_11_n_1),
        .DOC(rdel_reg_r1_320_383_9_11_n_2),
        .DOD(NLW_rdel_reg_r1_320_383_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M rdel_reg_r1_384_447_0_2
       (.ADDRA({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[0]),
        .DIB(p_2_in3_in[1]),
        .DIC(p_2_in3_in[2]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_384_447_0_2_n_0),
        .DOB(rdel_reg_r1_384_447_0_2_n_1),
        .DOC(rdel_reg_r1_384_447_0_2_n_2),
        .DOD(NLW_rdel_reg_r1_384_447_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_384_447_0_2_i_1_n_0));
  LUT4 #(
    .INIT(16'h2000)) 
    rdel_reg_r1_384_447_0_2_i_1
       (.I0(p_0_in__0),
        .I1(xa[6]),
        .I2(xa[7]),
        .I3(xa[8]),
        .O(rdel_reg_r1_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M rdel_reg_r1_384_447_12_14
       (.ADDRA({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRB({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRC({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[12]),
        .DIB(p_2_in3_in[13]),
        .DIC(p_2_in3_in[14]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_384_447_12_14_n_0),
        .DOB(rdel_reg_r1_384_447_12_14_n_1),
        .DOC(rdel_reg_r1_384_447_12_14_n_2),
        .DOD(NLW_rdel_reg_r1_384_447_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "17" *) 
  RAM64M rdel_reg_r1_384_447_15_17
       (.ADDRA({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRB({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRC({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[15]),
        .DIB(p_2_in3_in[16]),
        .DIC(p_2_in3_in[17]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_384_447_15_17_n_0),
        .DOB(rdel_reg_r1_384_447_15_17_n_1),
        .DOC(rdel_reg_r1_384_447_15_17_n_2),
        .DOD(NLW_rdel_reg_r1_384_447_15_17_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "20" *) 
  RAM64M rdel_reg_r1_384_447_18_20
       (.ADDRA({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRB({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRC({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[18]),
        .DIB(p_2_in3_in[19]),
        .DIC(p_2_in3_in[20]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_384_447_18_20_n_0),
        .DOB(rdel_reg_r1_384_447_18_20_n_1),
        .DOC(rdel_reg_r1_384_447_18_20_n_2),
        .DOD(NLW_rdel_reg_r1_384_447_18_20_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "23" *) 
  RAM64M rdel_reg_r1_384_447_21_23
       (.ADDRA({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRB({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRC({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[21]),
        .DIB(p_2_in3_in[22]),
        .DIC(p_2_in3_in[23]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_384_447_21_23_n_0),
        .DOB(rdel_reg_r1_384_447_21_23_n_1),
        .DOC(rdel_reg_r1_384_447_21_23_n_2),
        .DOD(NLW_rdel_reg_r1_384_447_21_23_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "26" *) 
  RAM64M rdel_reg_r1_384_447_24_26
       (.ADDRA({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRB({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRC({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[24]),
        .DIB(p_2_in3_in[25]),
        .DIC(p_2_in3_in[26]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_384_447_24_26_n_0),
        .DOB(rdel_reg_r1_384_447_24_26_n_1),
        .DOC(rdel_reg_r1_384_447_24_26_n_2),
        .DOD(NLW_rdel_reg_r1_384_447_24_26_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "29" *) 
  RAM64M rdel_reg_r1_384_447_27_29
       (.ADDRA({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRB({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRC({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[27]),
        .DIB(p_2_in3_in[28]),
        .DIC(p_2_in3_in[29]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_384_447_27_29_n_0),
        .DOB(rdel_reg_r1_384_447_27_29_n_1),
        .DOC(rdel_reg_r1_384_447_27_29_n_2),
        .DOD(NLW_rdel_reg_r1_384_447_27_29_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "32" *) 
  RAM64M rdel_reg_r1_384_447_30_32
       (.ADDRA({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRB({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRC({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[30]),
        .DIB(p_2_in3_in[31]),
        .DIC(p_2_in3_in[32]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_384_447_30_32_n_0),
        .DOB(rdel_reg_r1_384_447_30_32_n_1),
        .DOC(rdel_reg_r1_384_447_30_32_n_2),
        .DOD(NLW_rdel_reg_r1_384_447_30_32_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "33" *) 
  (* ram_slice_end = "35" *) 
  RAM64M rdel_reg_r1_384_447_33_35
       (.ADDRA({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRB({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRC({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[33]),
        .DIB(p_2_in3_in[34]),
        .DIC(p_2_in3_in[35]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_384_447_33_35_n_0),
        .DOB(rdel_reg_r1_384_447_33_35_n_1),
        .DOC(rdel_reg_r1_384_447_33_35_n_2),
        .DOD(NLW_rdel_reg_r1_384_447_33_35_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "36" *) 
  (* ram_slice_end = "38" *) 
  RAM64M rdel_reg_r1_384_447_36_38
       (.ADDRA({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRB({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRC({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[36]),
        .DIB(p_2_in3_in[37]),
        .DIC(p_2_in3_in[38]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_384_447_36_38_n_0),
        .DOB(rdel_reg_r1_384_447_36_38_n_1),
        .DOC(rdel_reg_r1_384_447_36_38_n_2),
        .DOD(NLW_rdel_reg_r1_384_447_36_38_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "39" *) 
  (* ram_slice_end = "41" *) 
  RAM64M rdel_reg_r1_384_447_39_41
       (.ADDRA({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRB({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRC({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[39]),
        .DIB(p_2_in3_in[40]),
        .DIC(p_2_in3_in[41]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_384_447_39_41_n_0),
        .DOB(rdel_reg_r1_384_447_39_41_n_1),
        .DOC(rdel_reg_r1_384_447_39_41_n_2),
        .DOD(NLW_rdel_reg_r1_384_447_39_41_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M rdel_reg_r1_384_447_3_5
       (.ADDRA({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[3]),
        .DIB(p_2_in3_in[4]),
        .DIC(p_2_in3_in[5]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_384_447_3_5_n_0),
        .DOB(rdel_reg_r1_384_447_3_5_n_1),
        .DOC(rdel_reg_r1_384_447_3_5_n_2),
        .DOD(NLW_rdel_reg_r1_384_447_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "42" *) 
  (* ram_slice_end = "44" *) 
  RAM64M rdel_reg_r1_384_447_42_44
       (.ADDRA({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRB({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRC({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[42]),
        .DIB(p_2_in3_in[43]),
        .DIC(p_2_in3_in[44]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_384_447_42_44_n_0),
        .DOB(rdel_reg_r1_384_447_42_44_n_1),
        .DOC(rdel_reg_r1_384_447_42_44_n_2),
        .DOD(NLW_rdel_reg_r1_384_447_42_44_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M rdel_reg_r1_384_447_6_8
       (.ADDRA({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[6]),
        .DIB(p_2_in3_in[7]),
        .DIC(p_2_in3_in[8]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_384_447_6_8_n_0),
        .DOB(rdel_reg_r1_384_447_6_8_n_1),
        .DOC(rdel_reg_r1_384_447_6_8_n_2),
        .DOD(NLW_rdel_reg_r1_384_447_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M rdel_reg_r1_384_447_9_11
       (.ADDRA({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRB({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRC({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[9]),
        .DIB(p_2_in3_in[10]),
        .DIC(p_2_in3_in[11]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_384_447_9_11_n_0),
        .DOB(rdel_reg_r1_384_447_9_11_n_1),
        .DOC(rdel_reg_r1_384_447_9_11_n_2),
        .DOD(NLW_rdel_reg_r1_384_447_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M rdel_reg_r1_448_511_0_2
       (.ADDRA({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[0]),
        .DIB(p_2_in3_in[1]),
        .DIC(p_2_in3_in[2]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_448_511_0_2_n_0),
        .DOB(rdel_reg_r1_448_511_0_2_n_1),
        .DOC(rdel_reg_r1_448_511_0_2_n_2),
        .DOD(NLW_rdel_reg_r1_448_511_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_448_511_0_2_i_1_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    rdel_reg_r1_448_511_0_2_i_1
       (.I0(xa[8]),
        .I1(p_0_in__0),
        .I2(xa[6]),
        .I3(xa[7]),
        .O(rdel_reg_r1_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M rdel_reg_r1_448_511_12_14
       (.ADDRA({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRB({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRC({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[12]),
        .DIB(p_2_in3_in[13]),
        .DIC(p_2_in3_in[14]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_448_511_12_14_n_0),
        .DOB(rdel_reg_r1_448_511_12_14_n_1),
        .DOC(rdel_reg_r1_448_511_12_14_n_2),
        .DOD(NLW_rdel_reg_r1_448_511_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "17" *) 
  RAM64M rdel_reg_r1_448_511_15_17
       (.ADDRA({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRB({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRC({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[15]),
        .DIB(p_2_in3_in[16]),
        .DIC(p_2_in3_in[17]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_448_511_15_17_n_0),
        .DOB(rdel_reg_r1_448_511_15_17_n_1),
        .DOC(rdel_reg_r1_448_511_15_17_n_2),
        .DOD(NLW_rdel_reg_r1_448_511_15_17_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "20" *) 
  RAM64M rdel_reg_r1_448_511_18_20
       (.ADDRA({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRB({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRC({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[18]),
        .DIB(p_2_in3_in[19]),
        .DIC(p_2_in3_in[20]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_448_511_18_20_n_0),
        .DOB(rdel_reg_r1_448_511_18_20_n_1),
        .DOC(rdel_reg_r1_448_511_18_20_n_2),
        .DOD(NLW_rdel_reg_r1_448_511_18_20_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "23" *) 
  RAM64M rdel_reg_r1_448_511_21_23
       (.ADDRA({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRB({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRC({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[21]),
        .DIB(p_2_in3_in[22]),
        .DIC(p_2_in3_in[23]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_448_511_21_23_n_0),
        .DOB(rdel_reg_r1_448_511_21_23_n_1),
        .DOC(rdel_reg_r1_448_511_21_23_n_2),
        .DOD(NLW_rdel_reg_r1_448_511_21_23_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "26" *) 
  RAM64M rdel_reg_r1_448_511_24_26
       (.ADDRA({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRB({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRC({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[24]),
        .DIB(p_2_in3_in[25]),
        .DIC(p_2_in3_in[26]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_448_511_24_26_n_0),
        .DOB(rdel_reg_r1_448_511_24_26_n_1),
        .DOC(rdel_reg_r1_448_511_24_26_n_2),
        .DOD(NLW_rdel_reg_r1_448_511_24_26_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "29" *) 
  RAM64M rdel_reg_r1_448_511_27_29
       (.ADDRA({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRB({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRC({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[27]),
        .DIB(p_2_in3_in[28]),
        .DIC(p_2_in3_in[29]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_448_511_27_29_n_0),
        .DOB(rdel_reg_r1_448_511_27_29_n_1),
        .DOC(rdel_reg_r1_448_511_27_29_n_2),
        .DOD(NLW_rdel_reg_r1_448_511_27_29_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "32" *) 
  RAM64M rdel_reg_r1_448_511_30_32
       (.ADDRA({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRB({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRC({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[30]),
        .DIB(p_2_in3_in[31]),
        .DIC(p_2_in3_in[32]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_448_511_30_32_n_0),
        .DOB(rdel_reg_r1_448_511_30_32_n_1),
        .DOC(rdel_reg_r1_448_511_30_32_n_2),
        .DOD(NLW_rdel_reg_r1_448_511_30_32_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "33" *) 
  (* ram_slice_end = "35" *) 
  RAM64M rdel_reg_r1_448_511_33_35
       (.ADDRA({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRB({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRC({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[33]),
        .DIB(p_2_in3_in[34]),
        .DIC(p_2_in3_in[35]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_448_511_33_35_n_0),
        .DOB(rdel_reg_r1_448_511_33_35_n_1),
        .DOC(rdel_reg_r1_448_511_33_35_n_2),
        .DOD(NLW_rdel_reg_r1_448_511_33_35_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "36" *) 
  (* ram_slice_end = "38" *) 
  RAM64M rdel_reg_r1_448_511_36_38
       (.ADDRA({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRB({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRC({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[36]),
        .DIB(p_2_in3_in[37]),
        .DIC(p_2_in3_in[38]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_448_511_36_38_n_0),
        .DOB(rdel_reg_r1_448_511_36_38_n_1),
        .DOC(rdel_reg_r1_448_511_36_38_n_2),
        .DOD(NLW_rdel_reg_r1_448_511_36_38_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "39" *) 
  (* ram_slice_end = "41" *) 
  RAM64M rdel_reg_r1_448_511_39_41
       (.ADDRA({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRB({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRC({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[39]),
        .DIB(p_2_in3_in[40]),
        .DIC(p_2_in3_in[41]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_448_511_39_41_n_0),
        .DOB(rdel_reg_r1_448_511_39_41_n_1),
        .DOC(rdel_reg_r1_448_511_39_41_n_2),
        .DOD(NLW_rdel_reg_r1_448_511_39_41_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M rdel_reg_r1_448_511_3_5
       (.ADDRA({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[3]),
        .DIB(p_2_in3_in[4]),
        .DIC(p_2_in3_in[5]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_448_511_3_5_n_0),
        .DOB(rdel_reg_r1_448_511_3_5_n_1),
        .DOC(rdel_reg_r1_448_511_3_5_n_2),
        .DOD(NLW_rdel_reg_r1_448_511_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "42" *) 
  (* ram_slice_end = "44" *) 
  RAM64M rdel_reg_r1_448_511_42_44
       (.ADDRA({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRB({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRC({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[42]),
        .DIB(p_2_in3_in[43]),
        .DIC(p_2_in3_in[44]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_448_511_42_44_n_0),
        .DOB(rdel_reg_r1_448_511_42_44_n_1),
        .DOC(rdel_reg_r1_448_511_42_44_n_2),
        .DOD(NLW_rdel_reg_r1_448_511_42_44_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M rdel_reg_r1_448_511_6_8
       (.ADDRA({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[6]),
        .DIB(p_2_in3_in[7]),
        .DIC(p_2_in3_in[8]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_448_511_6_8_n_0),
        .DOB(rdel_reg_r1_448_511_6_8_n_1),
        .DOC(rdel_reg_r1_448_511_6_8_n_2),
        .DOD(NLW_rdel_reg_r1_448_511_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M rdel_reg_r1_448_511_9_11
       (.ADDRA({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRB({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRC({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[9]),
        .DIB(p_2_in3_in[10]),
        .DIC(p_2_in3_in[11]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_448_511_9_11_n_0),
        .DOB(rdel_reg_r1_448_511_9_11_n_1),
        .DOC(rdel_reg_r1_448_511_9_11_n_2),
        .DOD(NLW_rdel_reg_r1_448_511_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M rdel_reg_r1_64_127_0_2
       (.ADDRA({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[0]),
        .DIB(p_2_in3_in[1]),
        .DIC(p_2_in3_in[2]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_64_127_0_2_n_0),
        .DOB(rdel_reg_r1_64_127_0_2_n_1),
        .DOC(rdel_reg_r1_64_127_0_2_n_2),
        .DOD(NLW_rdel_reg_r1_64_127_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_64_127_0_2_i_1_n_0));
  LUT4 #(
    .INIT(16'h1000)) 
    rdel_reg_r1_64_127_0_2_i_1
       (.I0(xa[7]),
        .I1(xa[8]),
        .I2(xa[6]),
        .I3(p_0_in__0),
        .O(rdel_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M rdel_reg_r1_64_127_12_14
       (.ADDRA({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRB({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRC({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[12]),
        .DIB(p_2_in3_in[13]),
        .DIC(p_2_in3_in[14]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_64_127_12_14_n_0),
        .DOB(rdel_reg_r1_64_127_12_14_n_1),
        .DOC(rdel_reg_r1_64_127_12_14_n_2),
        .DOD(NLW_rdel_reg_r1_64_127_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "17" *) 
  RAM64M rdel_reg_r1_64_127_15_17
       (.ADDRA({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRB({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRC({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[15]),
        .DIB(p_2_in3_in[16]),
        .DIC(p_2_in3_in[17]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_64_127_15_17_n_0),
        .DOB(rdel_reg_r1_64_127_15_17_n_1),
        .DOC(rdel_reg_r1_64_127_15_17_n_2),
        .DOD(NLW_rdel_reg_r1_64_127_15_17_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "20" *) 
  RAM64M rdel_reg_r1_64_127_18_20
       (.ADDRA({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRB({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRC({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[18]),
        .DIB(p_2_in3_in[19]),
        .DIC(p_2_in3_in[20]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_64_127_18_20_n_0),
        .DOB(rdel_reg_r1_64_127_18_20_n_1),
        .DOC(rdel_reg_r1_64_127_18_20_n_2),
        .DOD(NLW_rdel_reg_r1_64_127_18_20_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "23" *) 
  RAM64M rdel_reg_r1_64_127_21_23
       (.ADDRA({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRB({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRC({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[21]),
        .DIB(p_2_in3_in[22]),
        .DIC(p_2_in3_in[23]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_64_127_21_23_n_0),
        .DOB(rdel_reg_r1_64_127_21_23_n_1),
        .DOC(rdel_reg_r1_64_127_21_23_n_2),
        .DOD(NLW_rdel_reg_r1_64_127_21_23_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "26" *) 
  RAM64M rdel_reg_r1_64_127_24_26
       (.ADDRA({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRB({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRC({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[24]),
        .DIB(p_2_in3_in[25]),
        .DIC(p_2_in3_in[26]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_64_127_24_26_n_0),
        .DOB(rdel_reg_r1_64_127_24_26_n_1),
        .DOC(rdel_reg_r1_64_127_24_26_n_2),
        .DOD(NLW_rdel_reg_r1_64_127_24_26_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "29" *) 
  RAM64M rdel_reg_r1_64_127_27_29
       (.ADDRA({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRB({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRC({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_15_17_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[27]),
        .DIB(p_2_in3_in[28]),
        .DIC(p_2_in3_in[29]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_64_127_27_29_n_0),
        .DOB(rdel_reg_r1_64_127_27_29_n_1),
        .DOC(rdel_reg_r1_64_127_27_29_n_2),
        .DOD(NLW_rdel_reg_r1_64_127_27_29_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "32" *) 
  RAM64M rdel_reg_r1_64_127_30_32
       (.ADDRA({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRB({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRC({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[30]),
        .DIB(p_2_in3_in[31]),
        .DIC(p_2_in3_in[32]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_64_127_30_32_n_0),
        .DOB(rdel_reg_r1_64_127_30_32_n_1),
        .DOC(rdel_reg_r1_64_127_30_32_n_2),
        .DOD(NLW_rdel_reg_r1_64_127_30_32_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "33" *) 
  (* ram_slice_end = "35" *) 
  RAM64M rdel_reg_r1_64_127_33_35
       (.ADDRA({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRB({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRC({rdel_reg_r1_0_63_18_20_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[33]),
        .DIB(p_2_in3_in[34]),
        .DIC(p_2_in3_in[35]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_64_127_33_35_n_0),
        .DOB(rdel_reg_r1_64_127_33_35_n_1),
        .DOC(rdel_reg_r1_64_127_33_35_n_2),
        .DOD(NLW_rdel_reg_r1_64_127_33_35_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "36" *) 
  (* ram_slice_end = "38" *) 
  RAM64M rdel_reg_r1_64_127_36_38
       (.ADDRA({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRB({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRC({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[36]),
        .DIB(p_2_in3_in[37]),
        .DIC(p_2_in3_in[38]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_64_127_36_38_n_0),
        .DOB(rdel_reg_r1_64_127_36_38_n_1),
        .DOC(rdel_reg_r1_64_127_36_38_n_2),
        .DOD(NLW_rdel_reg_r1_64_127_36_38_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "39" *) 
  (* ram_slice_end = "41" *) 
  RAM64M rdel_reg_r1_64_127_39_41
       (.ADDRA({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRB({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRC({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[39]),
        .DIB(p_2_in3_in[40]),
        .DIC(p_2_in3_in[41]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_64_127_39_41_n_0),
        .DOB(rdel_reg_r1_64_127_39_41_n_1),
        .DOC(rdel_reg_r1_64_127_39_41_n_2),
        .DOD(NLW_rdel_reg_r1_64_127_39_41_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M rdel_reg_r1_64_127_3_5
       (.ADDRA({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[3]),
        .DIB(p_2_in3_in[4]),
        .DIC(p_2_in3_in[5]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_64_127_3_5_n_0),
        .DOB(rdel_reg_r1_64_127_3_5_n_1),
        .DOC(rdel_reg_r1_64_127_3_5_n_2),
        .DOD(NLW_rdel_reg_r1_64_127_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "42" *) 
  (* ram_slice_end = "44" *) 
  RAM64M rdel_reg_r1_64_127_42_44
       (.ADDRA({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRB({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRC({rdel_reg_r1_0_63_36_38_i_1_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_30_32_i_1_n_0,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[42]),
        .DIB(p_2_in3_in[43]),
        .DIC(p_2_in3_in[44]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_64_127_42_44_n_0),
        .DOB(rdel_reg_r1_64_127_42_44_n_1),
        .DOC(rdel_reg_r1_64_127_42_44_n_2),
        .DOD(NLW_rdel_reg_r1_64_127_42_44_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M rdel_reg_r1_64_127_6_8
       (.ADDRA({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[6]),
        .DIB(p_2_in3_in[7]),
        .DIC(p_2_in3_in[8]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_64_127_6_8_n_0),
        .DOB(rdel_reg_r1_64_127_6_8_n_1),
        .DOC(rdel_reg_r1_64_127_6_8_n_2),
        .DOD(NLW_rdel_reg_r1_64_127_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M rdel_reg_r1_64_127_9_11
       (.ADDRA({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRB({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRC({rdel_reg_r1_0_63_0_2_i_2_n_0,rdel_reg_r1_0_63_0_2_i_3_n_0,rdel_reg_r1_0_63_0_2_i_4_n_0,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRD({\xa_reg[5]_rep_n_0 ,xa[4:3],\xa_reg[2]_rep_n_0 ,xa[1],\xa_reg[0]_rep_n_0 }),
        .DIA(p_2_in3_in[9]),
        .DIB(p_2_in3_in[10]),
        .DIC(p_2_in3_in[11]),
        .DID(1'b0),
        .DOA(rdel_reg_r1_64_127_9_11_n_0),
        .DOB(rdel_reg_r1_64_127_9_11_n_1),
        .DOC(rdel_reg_r1_64_127_9_11_n_2),
        .DOD(NLW_rdel_reg_r1_64_127_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M rdel_reg_r2_0_63_0_2
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[0]),
        .DIB(p_2_in3_in[1]),
        .DIC(p_2_in3_in[2]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_0_63_0_2_n_0),
        .DOB(rdel_reg_r2_0_63_0_2_n_1),
        .DOC(rdel_reg_r2_0_63_0_2_n_2),
        .DOD(NLW_rdel_reg_r2_0_63_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M rdel_reg_r2_0_63_12_14
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[12]),
        .DIB(p_2_in3_in[13]),
        .DIC(p_2_in3_in[14]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_0_63_12_14_n_0),
        .DOB(rdel_reg_r2_0_63_12_14_n_1),
        .DOC(rdel_reg_r2_0_63_12_14_n_2),
        .DOD(NLW_rdel_reg_r2_0_63_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "17" *) 
  RAM64M rdel_reg_r2_0_63_15_17
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[15]),
        .DIB(p_2_in3_in[16]),
        .DIC(p_2_in3_in[17]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_0_63_15_17_n_0),
        .DOB(rdel_reg_r2_0_63_15_17_n_1),
        .DOC(rdel_reg_r2_0_63_15_17_n_2),
        .DOD(NLW_rdel_reg_r2_0_63_15_17_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "20" *) 
  RAM64M rdel_reg_r2_0_63_18_20
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[18]),
        .DIB(p_2_in3_in[19]),
        .DIC(p_2_in3_in[20]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_0_63_18_20_n_0),
        .DOB(rdel_reg_r2_0_63_18_20_n_1),
        .DOC(rdel_reg_r2_0_63_18_20_n_2),
        .DOD(NLW_rdel_reg_r2_0_63_18_20_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "23" *) 
  RAM64M rdel_reg_r2_0_63_21_23
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[21]),
        .DIB(p_2_in3_in[22]),
        .DIC(p_2_in3_in[23]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_0_63_21_23_n_0),
        .DOB(rdel_reg_r2_0_63_21_23_n_1),
        .DOC(rdel_reg_r2_0_63_21_23_n_2),
        .DOD(NLW_rdel_reg_r2_0_63_21_23_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "26" *) 
  RAM64M rdel_reg_r2_0_63_24_26
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[24]),
        .DIB(p_2_in3_in[25]),
        .DIC(p_2_in3_in[26]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_0_63_24_26_n_0),
        .DOB(rdel_reg_r2_0_63_24_26_n_1),
        .DOC(rdel_reg_r2_0_63_24_26_n_2),
        .DOD(NLW_rdel_reg_r2_0_63_24_26_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "29" *) 
  RAM64M rdel_reg_r2_0_63_27_29
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[27]),
        .DIB(p_2_in3_in[28]),
        .DIC(p_2_in3_in[29]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_0_63_27_29_n_0),
        .DOB(rdel_reg_r2_0_63_27_29_n_1),
        .DOC(rdel_reg_r2_0_63_27_29_n_2),
        .DOD(NLW_rdel_reg_r2_0_63_27_29_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "32" *) 
  RAM64M rdel_reg_r2_0_63_30_32
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[30]),
        .DIB(p_2_in3_in[31]),
        .DIC(p_2_in3_in[32]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_0_63_30_32_n_0),
        .DOB(rdel_reg_r2_0_63_30_32_n_1),
        .DOC(rdel_reg_r2_0_63_30_32_n_2),
        .DOD(NLW_rdel_reg_r2_0_63_30_32_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "33" *) 
  (* ram_slice_end = "35" *) 
  RAM64M rdel_reg_r2_0_63_33_35
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[33]),
        .DIB(p_2_in3_in[34]),
        .DIC(p_2_in3_in[35]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_0_63_33_35_n_0),
        .DOB(rdel_reg_r2_0_63_33_35_n_1),
        .DOC(rdel_reg_r2_0_63_33_35_n_2),
        .DOD(NLW_rdel_reg_r2_0_63_33_35_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "36" *) 
  (* ram_slice_end = "38" *) 
  RAM64M rdel_reg_r2_0_63_36_38
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[36]),
        .DIB(p_2_in3_in[37]),
        .DIC(p_2_in3_in[38]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_0_63_36_38_n_0),
        .DOB(rdel_reg_r2_0_63_36_38_n_1),
        .DOC(rdel_reg_r2_0_63_36_38_n_2),
        .DOD(NLW_rdel_reg_r2_0_63_36_38_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "39" *) 
  (* ram_slice_end = "41" *) 
  RAM64M rdel_reg_r2_0_63_39_41
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[39]),
        .DIB(p_2_in3_in[40]),
        .DIC(p_2_in3_in[41]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_0_63_39_41_n_0),
        .DOB(rdel_reg_r2_0_63_39_41_n_1),
        .DOC(rdel_reg_r2_0_63_39_41_n_2),
        .DOD(NLW_rdel_reg_r2_0_63_39_41_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M rdel_reg_r2_0_63_3_5
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[3]),
        .DIB(p_2_in3_in[4]),
        .DIC(p_2_in3_in[5]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_0_63_3_5_n_0),
        .DOB(rdel_reg_r2_0_63_3_5_n_1),
        .DOC(rdel_reg_r2_0_63_3_5_n_2),
        .DOD(NLW_rdel_reg_r2_0_63_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "42" *) 
  (* ram_slice_end = "44" *) 
  RAM64M rdel_reg_r2_0_63_42_44
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[42]),
        .DIB(p_2_in3_in[43]),
        .DIC(p_2_in3_in[44]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_0_63_42_44_n_0),
        .DOB(rdel_reg_r2_0_63_42_44_n_1),
        .DOC(rdel_reg_r2_0_63_42_44_n_2),
        .DOD(NLW_rdel_reg_r2_0_63_42_44_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M rdel_reg_r2_0_63_6_8
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[6]),
        .DIB(p_2_in3_in[7]),
        .DIC(p_2_in3_in[8]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_0_63_6_8_n_0),
        .DOB(rdel_reg_r2_0_63_6_8_n_1),
        .DOC(rdel_reg_r2_0_63_6_8_n_2),
        .DOD(NLW_rdel_reg_r2_0_63_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M rdel_reg_r2_0_63_9_11
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[9]),
        .DIB(p_2_in3_in[10]),
        .DIC(p_2_in3_in[11]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_0_63_9_11_n_0),
        .DOB(rdel_reg_r2_0_63_9_11_n_1),
        .DOC(rdel_reg_r2_0_63_9_11_n_2),
        .DOD(NLW_rdel_reg_r2_0_63_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M rdel_reg_r2_128_191_0_2
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[0]),
        .DIB(p_2_in3_in[1]),
        .DIC(p_2_in3_in[2]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_128_191_0_2_n_0),
        .DOB(rdel_reg_r2_128_191_0_2_n_1),
        .DOC(rdel_reg_r2_128_191_0_2_n_2),
        .DOD(NLW_rdel_reg_r2_128_191_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M rdel_reg_r2_128_191_12_14
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[12]),
        .DIB(p_2_in3_in[13]),
        .DIC(p_2_in3_in[14]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_128_191_12_14_n_0),
        .DOB(rdel_reg_r2_128_191_12_14_n_1),
        .DOC(rdel_reg_r2_128_191_12_14_n_2),
        .DOD(NLW_rdel_reg_r2_128_191_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "17" *) 
  RAM64M rdel_reg_r2_128_191_15_17
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[15]),
        .DIB(p_2_in3_in[16]),
        .DIC(p_2_in3_in[17]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_128_191_15_17_n_0),
        .DOB(rdel_reg_r2_128_191_15_17_n_1),
        .DOC(rdel_reg_r2_128_191_15_17_n_2),
        .DOD(NLW_rdel_reg_r2_128_191_15_17_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "20" *) 
  RAM64M rdel_reg_r2_128_191_18_20
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[18]),
        .DIB(p_2_in3_in[19]),
        .DIC(p_2_in3_in[20]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_128_191_18_20_n_0),
        .DOB(rdel_reg_r2_128_191_18_20_n_1),
        .DOC(rdel_reg_r2_128_191_18_20_n_2),
        .DOD(NLW_rdel_reg_r2_128_191_18_20_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "23" *) 
  RAM64M rdel_reg_r2_128_191_21_23
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[21]),
        .DIB(p_2_in3_in[22]),
        .DIC(p_2_in3_in[23]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_128_191_21_23_n_0),
        .DOB(rdel_reg_r2_128_191_21_23_n_1),
        .DOC(rdel_reg_r2_128_191_21_23_n_2),
        .DOD(NLW_rdel_reg_r2_128_191_21_23_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "26" *) 
  RAM64M rdel_reg_r2_128_191_24_26
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[24]),
        .DIB(p_2_in3_in[25]),
        .DIC(p_2_in3_in[26]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_128_191_24_26_n_0),
        .DOB(rdel_reg_r2_128_191_24_26_n_1),
        .DOC(rdel_reg_r2_128_191_24_26_n_2),
        .DOD(NLW_rdel_reg_r2_128_191_24_26_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "29" *) 
  RAM64M rdel_reg_r2_128_191_27_29
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[27]),
        .DIB(p_2_in3_in[28]),
        .DIC(p_2_in3_in[29]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_128_191_27_29_n_0),
        .DOB(rdel_reg_r2_128_191_27_29_n_1),
        .DOC(rdel_reg_r2_128_191_27_29_n_2),
        .DOD(NLW_rdel_reg_r2_128_191_27_29_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "32" *) 
  RAM64M rdel_reg_r2_128_191_30_32
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[30]),
        .DIB(p_2_in3_in[31]),
        .DIC(p_2_in3_in[32]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_128_191_30_32_n_0),
        .DOB(rdel_reg_r2_128_191_30_32_n_1),
        .DOC(rdel_reg_r2_128_191_30_32_n_2),
        .DOD(NLW_rdel_reg_r2_128_191_30_32_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "33" *) 
  (* ram_slice_end = "35" *) 
  RAM64M rdel_reg_r2_128_191_33_35
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[33]),
        .DIB(p_2_in3_in[34]),
        .DIC(p_2_in3_in[35]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_128_191_33_35_n_0),
        .DOB(rdel_reg_r2_128_191_33_35_n_1),
        .DOC(rdel_reg_r2_128_191_33_35_n_2),
        .DOD(NLW_rdel_reg_r2_128_191_33_35_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "36" *) 
  (* ram_slice_end = "38" *) 
  RAM64M rdel_reg_r2_128_191_36_38
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[36]),
        .DIB(p_2_in3_in[37]),
        .DIC(p_2_in3_in[38]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_128_191_36_38_n_0),
        .DOB(rdel_reg_r2_128_191_36_38_n_1),
        .DOC(rdel_reg_r2_128_191_36_38_n_2),
        .DOD(NLW_rdel_reg_r2_128_191_36_38_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "39" *) 
  (* ram_slice_end = "41" *) 
  RAM64M rdel_reg_r2_128_191_39_41
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[39]),
        .DIB(p_2_in3_in[40]),
        .DIC(p_2_in3_in[41]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_128_191_39_41_n_0),
        .DOB(rdel_reg_r2_128_191_39_41_n_1),
        .DOC(rdel_reg_r2_128_191_39_41_n_2),
        .DOD(NLW_rdel_reg_r2_128_191_39_41_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M rdel_reg_r2_128_191_3_5
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[3]),
        .DIB(p_2_in3_in[4]),
        .DIC(p_2_in3_in[5]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_128_191_3_5_n_0),
        .DOB(rdel_reg_r2_128_191_3_5_n_1),
        .DOC(rdel_reg_r2_128_191_3_5_n_2),
        .DOD(NLW_rdel_reg_r2_128_191_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "42" *) 
  (* ram_slice_end = "44" *) 
  RAM64M rdel_reg_r2_128_191_42_44
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[42]),
        .DIB(p_2_in3_in[43]),
        .DIC(p_2_in3_in[44]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_128_191_42_44_n_0),
        .DOB(rdel_reg_r2_128_191_42_44_n_1),
        .DOC(rdel_reg_r2_128_191_42_44_n_2),
        .DOD(NLW_rdel_reg_r2_128_191_42_44_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M rdel_reg_r2_128_191_6_8
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[6]),
        .DIB(p_2_in3_in[7]),
        .DIC(p_2_in3_in[8]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_128_191_6_8_n_0),
        .DOB(rdel_reg_r2_128_191_6_8_n_1),
        .DOC(rdel_reg_r2_128_191_6_8_n_2),
        .DOD(NLW_rdel_reg_r2_128_191_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M rdel_reg_r2_128_191_9_11
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[9]),
        .DIB(p_2_in3_in[10]),
        .DIC(p_2_in3_in[11]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_128_191_9_11_n_0),
        .DOB(rdel_reg_r2_128_191_9_11_n_1),
        .DOC(rdel_reg_r2_128_191_9_11_n_2),
        .DOD(NLW_rdel_reg_r2_128_191_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M rdel_reg_r2_192_255_0_2
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[0]),
        .DIB(p_2_in3_in[1]),
        .DIC(p_2_in3_in[2]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_192_255_0_2_n_0),
        .DOB(rdel_reg_r2_192_255_0_2_n_1),
        .DOC(rdel_reg_r2_192_255_0_2_n_2),
        .DOD(NLW_rdel_reg_r2_192_255_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M rdel_reg_r2_192_255_12_14
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[12]),
        .DIB(p_2_in3_in[13]),
        .DIC(p_2_in3_in[14]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_192_255_12_14_n_0),
        .DOB(rdel_reg_r2_192_255_12_14_n_1),
        .DOC(rdel_reg_r2_192_255_12_14_n_2),
        .DOD(NLW_rdel_reg_r2_192_255_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "17" *) 
  RAM64M rdel_reg_r2_192_255_15_17
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[15]),
        .DIB(p_2_in3_in[16]),
        .DIC(p_2_in3_in[17]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_192_255_15_17_n_0),
        .DOB(rdel_reg_r2_192_255_15_17_n_1),
        .DOC(rdel_reg_r2_192_255_15_17_n_2),
        .DOD(NLW_rdel_reg_r2_192_255_15_17_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "20" *) 
  RAM64M rdel_reg_r2_192_255_18_20
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[18]),
        .DIB(p_2_in3_in[19]),
        .DIC(p_2_in3_in[20]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_192_255_18_20_n_0),
        .DOB(rdel_reg_r2_192_255_18_20_n_1),
        .DOC(rdel_reg_r2_192_255_18_20_n_2),
        .DOD(NLW_rdel_reg_r2_192_255_18_20_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "23" *) 
  RAM64M rdel_reg_r2_192_255_21_23
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[21]),
        .DIB(p_2_in3_in[22]),
        .DIC(p_2_in3_in[23]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_192_255_21_23_n_0),
        .DOB(rdel_reg_r2_192_255_21_23_n_1),
        .DOC(rdel_reg_r2_192_255_21_23_n_2),
        .DOD(NLW_rdel_reg_r2_192_255_21_23_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "26" *) 
  RAM64M rdel_reg_r2_192_255_24_26
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[24]),
        .DIB(p_2_in3_in[25]),
        .DIC(p_2_in3_in[26]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_192_255_24_26_n_0),
        .DOB(rdel_reg_r2_192_255_24_26_n_1),
        .DOC(rdel_reg_r2_192_255_24_26_n_2),
        .DOD(NLW_rdel_reg_r2_192_255_24_26_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "29" *) 
  RAM64M rdel_reg_r2_192_255_27_29
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[27]),
        .DIB(p_2_in3_in[28]),
        .DIC(p_2_in3_in[29]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_192_255_27_29_n_0),
        .DOB(rdel_reg_r2_192_255_27_29_n_1),
        .DOC(rdel_reg_r2_192_255_27_29_n_2),
        .DOD(NLW_rdel_reg_r2_192_255_27_29_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "32" *) 
  RAM64M rdel_reg_r2_192_255_30_32
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[30]),
        .DIB(p_2_in3_in[31]),
        .DIC(p_2_in3_in[32]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_192_255_30_32_n_0),
        .DOB(rdel_reg_r2_192_255_30_32_n_1),
        .DOC(rdel_reg_r2_192_255_30_32_n_2),
        .DOD(NLW_rdel_reg_r2_192_255_30_32_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "33" *) 
  (* ram_slice_end = "35" *) 
  RAM64M rdel_reg_r2_192_255_33_35
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[33]),
        .DIB(p_2_in3_in[34]),
        .DIC(p_2_in3_in[35]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_192_255_33_35_n_0),
        .DOB(rdel_reg_r2_192_255_33_35_n_1),
        .DOC(rdel_reg_r2_192_255_33_35_n_2),
        .DOD(NLW_rdel_reg_r2_192_255_33_35_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "36" *) 
  (* ram_slice_end = "38" *) 
  RAM64M rdel_reg_r2_192_255_36_38
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[36]),
        .DIB(p_2_in3_in[37]),
        .DIC(p_2_in3_in[38]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_192_255_36_38_n_0),
        .DOB(rdel_reg_r2_192_255_36_38_n_1),
        .DOC(rdel_reg_r2_192_255_36_38_n_2),
        .DOD(NLW_rdel_reg_r2_192_255_36_38_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "39" *) 
  (* ram_slice_end = "41" *) 
  RAM64M rdel_reg_r2_192_255_39_41
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[39]),
        .DIB(p_2_in3_in[40]),
        .DIC(p_2_in3_in[41]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_192_255_39_41_n_0),
        .DOB(rdel_reg_r2_192_255_39_41_n_1),
        .DOC(rdel_reg_r2_192_255_39_41_n_2),
        .DOD(NLW_rdel_reg_r2_192_255_39_41_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M rdel_reg_r2_192_255_3_5
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[3]),
        .DIB(p_2_in3_in[4]),
        .DIC(p_2_in3_in[5]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_192_255_3_5_n_0),
        .DOB(rdel_reg_r2_192_255_3_5_n_1),
        .DOC(rdel_reg_r2_192_255_3_5_n_2),
        .DOD(NLW_rdel_reg_r2_192_255_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "42" *) 
  (* ram_slice_end = "44" *) 
  RAM64M rdel_reg_r2_192_255_42_44
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[42]),
        .DIB(p_2_in3_in[43]),
        .DIC(p_2_in3_in[44]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_192_255_42_44_n_0),
        .DOB(rdel_reg_r2_192_255_42_44_n_1),
        .DOC(rdel_reg_r2_192_255_42_44_n_2),
        .DOD(NLW_rdel_reg_r2_192_255_42_44_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M rdel_reg_r2_192_255_6_8
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[6]),
        .DIB(p_2_in3_in[7]),
        .DIC(p_2_in3_in[8]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_192_255_6_8_n_0),
        .DOB(rdel_reg_r2_192_255_6_8_n_1),
        .DOC(rdel_reg_r2_192_255_6_8_n_2),
        .DOD(NLW_rdel_reg_r2_192_255_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M rdel_reg_r2_192_255_9_11
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[9]),
        .DIB(p_2_in3_in[10]),
        .DIC(p_2_in3_in[11]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_192_255_9_11_n_0),
        .DOB(rdel_reg_r2_192_255_9_11_n_1),
        .DOC(rdel_reg_r2_192_255_9_11_n_2),
        .DOD(NLW_rdel_reg_r2_192_255_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M rdel_reg_r2_256_319_0_2
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[0]),
        .DIB(p_2_in3_in[1]),
        .DIC(p_2_in3_in[2]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_256_319_0_2_n_0),
        .DOB(rdel_reg_r2_256_319_0_2_n_1),
        .DOC(rdel_reg_r2_256_319_0_2_n_2),
        .DOD(NLW_rdel_reg_r2_256_319_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M rdel_reg_r2_256_319_12_14
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[12]),
        .DIB(p_2_in3_in[13]),
        .DIC(p_2_in3_in[14]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_256_319_12_14_n_0),
        .DOB(rdel_reg_r2_256_319_12_14_n_1),
        .DOC(rdel_reg_r2_256_319_12_14_n_2),
        .DOD(NLW_rdel_reg_r2_256_319_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "17" *) 
  RAM64M rdel_reg_r2_256_319_15_17
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[15]),
        .DIB(p_2_in3_in[16]),
        .DIC(p_2_in3_in[17]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_256_319_15_17_n_0),
        .DOB(rdel_reg_r2_256_319_15_17_n_1),
        .DOC(rdel_reg_r2_256_319_15_17_n_2),
        .DOD(NLW_rdel_reg_r2_256_319_15_17_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "20" *) 
  RAM64M rdel_reg_r2_256_319_18_20
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[18]),
        .DIB(p_2_in3_in[19]),
        .DIC(p_2_in3_in[20]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_256_319_18_20_n_0),
        .DOB(rdel_reg_r2_256_319_18_20_n_1),
        .DOC(rdel_reg_r2_256_319_18_20_n_2),
        .DOD(NLW_rdel_reg_r2_256_319_18_20_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "23" *) 
  RAM64M rdel_reg_r2_256_319_21_23
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[21]),
        .DIB(p_2_in3_in[22]),
        .DIC(p_2_in3_in[23]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_256_319_21_23_n_0),
        .DOB(rdel_reg_r2_256_319_21_23_n_1),
        .DOC(rdel_reg_r2_256_319_21_23_n_2),
        .DOD(NLW_rdel_reg_r2_256_319_21_23_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "26" *) 
  RAM64M rdel_reg_r2_256_319_24_26
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[24]),
        .DIB(p_2_in3_in[25]),
        .DIC(p_2_in3_in[26]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_256_319_24_26_n_0),
        .DOB(rdel_reg_r2_256_319_24_26_n_1),
        .DOC(rdel_reg_r2_256_319_24_26_n_2),
        .DOD(NLW_rdel_reg_r2_256_319_24_26_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "29" *) 
  RAM64M rdel_reg_r2_256_319_27_29
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[27]),
        .DIB(p_2_in3_in[28]),
        .DIC(p_2_in3_in[29]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_256_319_27_29_n_0),
        .DOB(rdel_reg_r2_256_319_27_29_n_1),
        .DOC(rdel_reg_r2_256_319_27_29_n_2),
        .DOD(NLW_rdel_reg_r2_256_319_27_29_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "32" *) 
  RAM64M rdel_reg_r2_256_319_30_32
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[30]),
        .DIB(p_2_in3_in[31]),
        .DIC(p_2_in3_in[32]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_256_319_30_32_n_0),
        .DOB(rdel_reg_r2_256_319_30_32_n_1),
        .DOC(rdel_reg_r2_256_319_30_32_n_2),
        .DOD(NLW_rdel_reg_r2_256_319_30_32_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "33" *) 
  (* ram_slice_end = "35" *) 
  RAM64M rdel_reg_r2_256_319_33_35
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[33]),
        .DIB(p_2_in3_in[34]),
        .DIC(p_2_in3_in[35]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_256_319_33_35_n_0),
        .DOB(rdel_reg_r2_256_319_33_35_n_1),
        .DOC(rdel_reg_r2_256_319_33_35_n_2),
        .DOD(NLW_rdel_reg_r2_256_319_33_35_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "36" *) 
  (* ram_slice_end = "38" *) 
  RAM64M rdel_reg_r2_256_319_36_38
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[36]),
        .DIB(p_2_in3_in[37]),
        .DIC(p_2_in3_in[38]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_256_319_36_38_n_0),
        .DOB(rdel_reg_r2_256_319_36_38_n_1),
        .DOC(rdel_reg_r2_256_319_36_38_n_2),
        .DOD(NLW_rdel_reg_r2_256_319_36_38_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "39" *) 
  (* ram_slice_end = "41" *) 
  RAM64M rdel_reg_r2_256_319_39_41
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[39]),
        .DIB(p_2_in3_in[40]),
        .DIC(p_2_in3_in[41]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_256_319_39_41_n_0),
        .DOB(rdel_reg_r2_256_319_39_41_n_1),
        .DOC(rdel_reg_r2_256_319_39_41_n_2),
        .DOD(NLW_rdel_reg_r2_256_319_39_41_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M rdel_reg_r2_256_319_3_5
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[3]),
        .DIB(p_2_in3_in[4]),
        .DIC(p_2_in3_in[5]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_256_319_3_5_n_0),
        .DOB(rdel_reg_r2_256_319_3_5_n_1),
        .DOC(rdel_reg_r2_256_319_3_5_n_2),
        .DOD(NLW_rdel_reg_r2_256_319_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "42" *) 
  (* ram_slice_end = "44" *) 
  RAM64M rdel_reg_r2_256_319_42_44
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[42]),
        .DIB(p_2_in3_in[43]),
        .DIC(p_2_in3_in[44]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_256_319_42_44_n_0),
        .DOB(rdel_reg_r2_256_319_42_44_n_1),
        .DOC(rdel_reg_r2_256_319_42_44_n_2),
        .DOD(NLW_rdel_reg_r2_256_319_42_44_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M rdel_reg_r2_256_319_6_8
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[6]),
        .DIB(p_2_in3_in[7]),
        .DIC(p_2_in3_in[8]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_256_319_6_8_n_0),
        .DOB(rdel_reg_r2_256_319_6_8_n_1),
        .DOC(rdel_reg_r2_256_319_6_8_n_2),
        .DOD(NLW_rdel_reg_r2_256_319_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M rdel_reg_r2_256_319_9_11
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[9]),
        .DIB(p_2_in3_in[10]),
        .DIC(p_2_in3_in[11]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_256_319_9_11_n_0),
        .DOB(rdel_reg_r2_256_319_9_11_n_1),
        .DOC(rdel_reg_r2_256_319_9_11_n_2),
        .DOD(NLW_rdel_reg_r2_256_319_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M rdel_reg_r2_320_383_0_2
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[0]),
        .DIB(p_2_in3_in[1]),
        .DIC(p_2_in3_in[2]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_320_383_0_2_n_0),
        .DOB(rdel_reg_r2_320_383_0_2_n_1),
        .DOC(rdel_reg_r2_320_383_0_2_n_2),
        .DOD(NLW_rdel_reg_r2_320_383_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M rdel_reg_r2_320_383_12_14
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[12]),
        .DIB(p_2_in3_in[13]),
        .DIC(p_2_in3_in[14]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_320_383_12_14_n_0),
        .DOB(rdel_reg_r2_320_383_12_14_n_1),
        .DOC(rdel_reg_r2_320_383_12_14_n_2),
        .DOD(NLW_rdel_reg_r2_320_383_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "17" *) 
  RAM64M rdel_reg_r2_320_383_15_17
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[15]),
        .DIB(p_2_in3_in[16]),
        .DIC(p_2_in3_in[17]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_320_383_15_17_n_0),
        .DOB(rdel_reg_r2_320_383_15_17_n_1),
        .DOC(rdel_reg_r2_320_383_15_17_n_2),
        .DOD(NLW_rdel_reg_r2_320_383_15_17_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "20" *) 
  RAM64M rdel_reg_r2_320_383_18_20
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[18]),
        .DIB(p_2_in3_in[19]),
        .DIC(p_2_in3_in[20]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_320_383_18_20_n_0),
        .DOB(rdel_reg_r2_320_383_18_20_n_1),
        .DOC(rdel_reg_r2_320_383_18_20_n_2),
        .DOD(NLW_rdel_reg_r2_320_383_18_20_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "23" *) 
  RAM64M rdel_reg_r2_320_383_21_23
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[21]),
        .DIB(p_2_in3_in[22]),
        .DIC(p_2_in3_in[23]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_320_383_21_23_n_0),
        .DOB(rdel_reg_r2_320_383_21_23_n_1),
        .DOC(rdel_reg_r2_320_383_21_23_n_2),
        .DOD(NLW_rdel_reg_r2_320_383_21_23_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "26" *) 
  RAM64M rdel_reg_r2_320_383_24_26
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[24]),
        .DIB(p_2_in3_in[25]),
        .DIC(p_2_in3_in[26]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_320_383_24_26_n_0),
        .DOB(rdel_reg_r2_320_383_24_26_n_1),
        .DOC(rdel_reg_r2_320_383_24_26_n_2),
        .DOD(NLW_rdel_reg_r2_320_383_24_26_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "29" *) 
  RAM64M rdel_reg_r2_320_383_27_29
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[27]),
        .DIB(p_2_in3_in[28]),
        .DIC(p_2_in3_in[29]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_320_383_27_29_n_0),
        .DOB(rdel_reg_r2_320_383_27_29_n_1),
        .DOC(rdel_reg_r2_320_383_27_29_n_2),
        .DOD(NLW_rdel_reg_r2_320_383_27_29_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "32" *) 
  RAM64M rdel_reg_r2_320_383_30_32
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[30]),
        .DIB(p_2_in3_in[31]),
        .DIC(p_2_in3_in[32]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_320_383_30_32_n_0),
        .DOB(rdel_reg_r2_320_383_30_32_n_1),
        .DOC(rdel_reg_r2_320_383_30_32_n_2),
        .DOD(NLW_rdel_reg_r2_320_383_30_32_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "33" *) 
  (* ram_slice_end = "35" *) 
  RAM64M rdel_reg_r2_320_383_33_35
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[33]),
        .DIB(p_2_in3_in[34]),
        .DIC(p_2_in3_in[35]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_320_383_33_35_n_0),
        .DOB(rdel_reg_r2_320_383_33_35_n_1),
        .DOC(rdel_reg_r2_320_383_33_35_n_2),
        .DOD(NLW_rdel_reg_r2_320_383_33_35_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "36" *) 
  (* ram_slice_end = "38" *) 
  RAM64M rdel_reg_r2_320_383_36_38
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[36]),
        .DIB(p_2_in3_in[37]),
        .DIC(p_2_in3_in[38]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_320_383_36_38_n_0),
        .DOB(rdel_reg_r2_320_383_36_38_n_1),
        .DOC(rdel_reg_r2_320_383_36_38_n_2),
        .DOD(NLW_rdel_reg_r2_320_383_36_38_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "39" *) 
  (* ram_slice_end = "41" *) 
  RAM64M rdel_reg_r2_320_383_39_41
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[39]),
        .DIB(p_2_in3_in[40]),
        .DIC(p_2_in3_in[41]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_320_383_39_41_n_0),
        .DOB(rdel_reg_r2_320_383_39_41_n_1),
        .DOC(rdel_reg_r2_320_383_39_41_n_2),
        .DOD(NLW_rdel_reg_r2_320_383_39_41_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M rdel_reg_r2_320_383_3_5
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[3]),
        .DIB(p_2_in3_in[4]),
        .DIC(p_2_in3_in[5]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_320_383_3_5_n_0),
        .DOB(rdel_reg_r2_320_383_3_5_n_1),
        .DOC(rdel_reg_r2_320_383_3_5_n_2),
        .DOD(NLW_rdel_reg_r2_320_383_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "42" *) 
  (* ram_slice_end = "44" *) 
  RAM64M rdel_reg_r2_320_383_42_44
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[42]),
        .DIB(p_2_in3_in[43]),
        .DIC(p_2_in3_in[44]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_320_383_42_44_n_0),
        .DOB(rdel_reg_r2_320_383_42_44_n_1),
        .DOC(rdel_reg_r2_320_383_42_44_n_2),
        .DOD(NLW_rdel_reg_r2_320_383_42_44_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M rdel_reg_r2_320_383_6_8
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[6]),
        .DIB(p_2_in3_in[7]),
        .DIC(p_2_in3_in[8]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_320_383_6_8_n_0),
        .DOB(rdel_reg_r2_320_383_6_8_n_1),
        .DOC(rdel_reg_r2_320_383_6_8_n_2),
        .DOD(NLW_rdel_reg_r2_320_383_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M rdel_reg_r2_320_383_9_11
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[9]),
        .DIB(p_2_in3_in[10]),
        .DIC(p_2_in3_in[11]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_320_383_9_11_n_0),
        .DOB(rdel_reg_r2_320_383_9_11_n_1),
        .DOC(rdel_reg_r2_320_383_9_11_n_2),
        .DOD(NLW_rdel_reg_r2_320_383_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M rdel_reg_r2_384_447_0_2
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[0]),
        .DIB(p_2_in3_in[1]),
        .DIC(p_2_in3_in[2]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_384_447_0_2_n_0),
        .DOB(rdel_reg_r2_384_447_0_2_n_1),
        .DOC(rdel_reg_r2_384_447_0_2_n_2),
        .DOD(NLW_rdel_reg_r2_384_447_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M rdel_reg_r2_384_447_12_14
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[12]),
        .DIB(p_2_in3_in[13]),
        .DIC(p_2_in3_in[14]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_384_447_12_14_n_0),
        .DOB(rdel_reg_r2_384_447_12_14_n_1),
        .DOC(rdel_reg_r2_384_447_12_14_n_2),
        .DOD(NLW_rdel_reg_r2_384_447_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "17" *) 
  RAM64M rdel_reg_r2_384_447_15_17
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[15]),
        .DIB(p_2_in3_in[16]),
        .DIC(p_2_in3_in[17]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_384_447_15_17_n_0),
        .DOB(rdel_reg_r2_384_447_15_17_n_1),
        .DOC(rdel_reg_r2_384_447_15_17_n_2),
        .DOD(NLW_rdel_reg_r2_384_447_15_17_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "20" *) 
  RAM64M rdel_reg_r2_384_447_18_20
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[18]),
        .DIB(p_2_in3_in[19]),
        .DIC(p_2_in3_in[20]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_384_447_18_20_n_0),
        .DOB(rdel_reg_r2_384_447_18_20_n_1),
        .DOC(rdel_reg_r2_384_447_18_20_n_2),
        .DOD(NLW_rdel_reg_r2_384_447_18_20_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "23" *) 
  RAM64M rdel_reg_r2_384_447_21_23
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[21]),
        .DIB(p_2_in3_in[22]),
        .DIC(p_2_in3_in[23]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_384_447_21_23_n_0),
        .DOB(rdel_reg_r2_384_447_21_23_n_1),
        .DOC(rdel_reg_r2_384_447_21_23_n_2),
        .DOD(NLW_rdel_reg_r2_384_447_21_23_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "26" *) 
  RAM64M rdel_reg_r2_384_447_24_26
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[24]),
        .DIB(p_2_in3_in[25]),
        .DIC(p_2_in3_in[26]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_384_447_24_26_n_0),
        .DOB(rdel_reg_r2_384_447_24_26_n_1),
        .DOC(rdel_reg_r2_384_447_24_26_n_2),
        .DOD(NLW_rdel_reg_r2_384_447_24_26_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "29" *) 
  RAM64M rdel_reg_r2_384_447_27_29
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[27]),
        .DIB(p_2_in3_in[28]),
        .DIC(p_2_in3_in[29]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_384_447_27_29_n_0),
        .DOB(rdel_reg_r2_384_447_27_29_n_1),
        .DOC(rdel_reg_r2_384_447_27_29_n_2),
        .DOD(NLW_rdel_reg_r2_384_447_27_29_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "32" *) 
  RAM64M rdel_reg_r2_384_447_30_32
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[30]),
        .DIB(p_2_in3_in[31]),
        .DIC(p_2_in3_in[32]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_384_447_30_32_n_0),
        .DOB(rdel_reg_r2_384_447_30_32_n_1),
        .DOC(rdel_reg_r2_384_447_30_32_n_2),
        .DOD(NLW_rdel_reg_r2_384_447_30_32_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "33" *) 
  (* ram_slice_end = "35" *) 
  RAM64M rdel_reg_r2_384_447_33_35
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[33]),
        .DIB(p_2_in3_in[34]),
        .DIC(p_2_in3_in[35]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_384_447_33_35_n_0),
        .DOB(rdel_reg_r2_384_447_33_35_n_1),
        .DOC(rdel_reg_r2_384_447_33_35_n_2),
        .DOD(NLW_rdel_reg_r2_384_447_33_35_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "36" *) 
  (* ram_slice_end = "38" *) 
  RAM64M rdel_reg_r2_384_447_36_38
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[36]),
        .DIB(p_2_in3_in[37]),
        .DIC(p_2_in3_in[38]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_384_447_36_38_n_0),
        .DOB(rdel_reg_r2_384_447_36_38_n_1),
        .DOC(rdel_reg_r2_384_447_36_38_n_2),
        .DOD(NLW_rdel_reg_r2_384_447_36_38_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "39" *) 
  (* ram_slice_end = "41" *) 
  RAM64M rdel_reg_r2_384_447_39_41
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[39]),
        .DIB(p_2_in3_in[40]),
        .DIC(p_2_in3_in[41]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_384_447_39_41_n_0),
        .DOB(rdel_reg_r2_384_447_39_41_n_1),
        .DOC(rdel_reg_r2_384_447_39_41_n_2),
        .DOD(NLW_rdel_reg_r2_384_447_39_41_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M rdel_reg_r2_384_447_3_5
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[3]),
        .DIB(p_2_in3_in[4]),
        .DIC(p_2_in3_in[5]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_384_447_3_5_n_0),
        .DOB(rdel_reg_r2_384_447_3_5_n_1),
        .DOC(rdel_reg_r2_384_447_3_5_n_2),
        .DOD(NLW_rdel_reg_r2_384_447_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "42" *) 
  (* ram_slice_end = "44" *) 
  RAM64M rdel_reg_r2_384_447_42_44
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[42]),
        .DIB(p_2_in3_in[43]),
        .DIC(p_2_in3_in[44]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_384_447_42_44_n_0),
        .DOB(rdel_reg_r2_384_447_42_44_n_1),
        .DOC(rdel_reg_r2_384_447_42_44_n_2),
        .DOD(NLW_rdel_reg_r2_384_447_42_44_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M rdel_reg_r2_384_447_6_8
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[6]),
        .DIB(p_2_in3_in[7]),
        .DIC(p_2_in3_in[8]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_384_447_6_8_n_0),
        .DOB(rdel_reg_r2_384_447_6_8_n_1),
        .DOC(rdel_reg_r2_384_447_6_8_n_2),
        .DOD(NLW_rdel_reg_r2_384_447_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M rdel_reg_r2_384_447_9_11
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[9]),
        .DIB(p_2_in3_in[10]),
        .DIC(p_2_in3_in[11]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_384_447_9_11_n_0),
        .DOB(rdel_reg_r2_384_447_9_11_n_1),
        .DOC(rdel_reg_r2_384_447_9_11_n_2),
        .DOD(NLW_rdel_reg_r2_384_447_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M rdel_reg_r2_448_511_0_2
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[0]),
        .DIB(p_2_in3_in[1]),
        .DIC(p_2_in3_in[2]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_448_511_0_2_n_0),
        .DOB(rdel_reg_r2_448_511_0_2_n_1),
        .DOC(rdel_reg_r2_448_511_0_2_n_2),
        .DOD(NLW_rdel_reg_r2_448_511_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M rdel_reg_r2_448_511_12_14
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[12]),
        .DIB(p_2_in3_in[13]),
        .DIC(p_2_in3_in[14]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_448_511_12_14_n_0),
        .DOB(rdel_reg_r2_448_511_12_14_n_1),
        .DOC(rdel_reg_r2_448_511_12_14_n_2),
        .DOD(NLW_rdel_reg_r2_448_511_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "17" *) 
  RAM64M rdel_reg_r2_448_511_15_17
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[15]),
        .DIB(p_2_in3_in[16]),
        .DIC(p_2_in3_in[17]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_448_511_15_17_n_0),
        .DOB(rdel_reg_r2_448_511_15_17_n_1),
        .DOC(rdel_reg_r2_448_511_15_17_n_2),
        .DOD(NLW_rdel_reg_r2_448_511_15_17_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "20" *) 
  RAM64M rdel_reg_r2_448_511_18_20
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[18]),
        .DIB(p_2_in3_in[19]),
        .DIC(p_2_in3_in[20]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_448_511_18_20_n_0),
        .DOB(rdel_reg_r2_448_511_18_20_n_1),
        .DOC(rdel_reg_r2_448_511_18_20_n_2),
        .DOD(NLW_rdel_reg_r2_448_511_18_20_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "23" *) 
  RAM64M rdel_reg_r2_448_511_21_23
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[21]),
        .DIB(p_2_in3_in[22]),
        .DIC(p_2_in3_in[23]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_448_511_21_23_n_0),
        .DOB(rdel_reg_r2_448_511_21_23_n_1),
        .DOC(rdel_reg_r2_448_511_21_23_n_2),
        .DOD(NLW_rdel_reg_r2_448_511_21_23_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "26" *) 
  RAM64M rdel_reg_r2_448_511_24_26
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[24]),
        .DIB(p_2_in3_in[25]),
        .DIC(p_2_in3_in[26]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_448_511_24_26_n_0),
        .DOB(rdel_reg_r2_448_511_24_26_n_1),
        .DOC(rdel_reg_r2_448_511_24_26_n_2),
        .DOD(NLW_rdel_reg_r2_448_511_24_26_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "29" *) 
  RAM64M rdel_reg_r2_448_511_27_29
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[27]),
        .DIB(p_2_in3_in[28]),
        .DIC(p_2_in3_in[29]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_448_511_27_29_n_0),
        .DOB(rdel_reg_r2_448_511_27_29_n_1),
        .DOC(rdel_reg_r2_448_511_27_29_n_2),
        .DOD(NLW_rdel_reg_r2_448_511_27_29_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "32" *) 
  RAM64M rdel_reg_r2_448_511_30_32
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[30]),
        .DIB(p_2_in3_in[31]),
        .DIC(p_2_in3_in[32]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_448_511_30_32_n_0),
        .DOB(rdel_reg_r2_448_511_30_32_n_1),
        .DOC(rdel_reg_r2_448_511_30_32_n_2),
        .DOD(NLW_rdel_reg_r2_448_511_30_32_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "33" *) 
  (* ram_slice_end = "35" *) 
  RAM64M rdel_reg_r2_448_511_33_35
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[33]),
        .DIB(p_2_in3_in[34]),
        .DIC(p_2_in3_in[35]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_448_511_33_35_n_0),
        .DOB(rdel_reg_r2_448_511_33_35_n_1),
        .DOC(rdel_reg_r2_448_511_33_35_n_2),
        .DOD(NLW_rdel_reg_r2_448_511_33_35_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "36" *) 
  (* ram_slice_end = "38" *) 
  RAM64M rdel_reg_r2_448_511_36_38
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[36]),
        .DIB(p_2_in3_in[37]),
        .DIC(p_2_in3_in[38]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_448_511_36_38_n_0),
        .DOB(rdel_reg_r2_448_511_36_38_n_1),
        .DOC(rdel_reg_r2_448_511_36_38_n_2),
        .DOD(NLW_rdel_reg_r2_448_511_36_38_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "39" *) 
  (* ram_slice_end = "41" *) 
  RAM64M rdel_reg_r2_448_511_39_41
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[39]),
        .DIB(p_2_in3_in[40]),
        .DIC(p_2_in3_in[41]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_448_511_39_41_n_0),
        .DOB(rdel_reg_r2_448_511_39_41_n_1),
        .DOC(rdel_reg_r2_448_511_39_41_n_2),
        .DOD(NLW_rdel_reg_r2_448_511_39_41_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M rdel_reg_r2_448_511_3_5
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[3]),
        .DIB(p_2_in3_in[4]),
        .DIC(p_2_in3_in[5]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_448_511_3_5_n_0),
        .DOB(rdel_reg_r2_448_511_3_5_n_1),
        .DOC(rdel_reg_r2_448_511_3_5_n_2),
        .DOD(NLW_rdel_reg_r2_448_511_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "42" *) 
  (* ram_slice_end = "44" *) 
  RAM64M rdel_reg_r2_448_511_42_44
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[42]),
        .DIB(p_2_in3_in[43]),
        .DIC(p_2_in3_in[44]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_448_511_42_44_n_0),
        .DOB(rdel_reg_r2_448_511_42_44_n_1),
        .DOC(rdel_reg_r2_448_511_42_44_n_2),
        .DOD(NLW_rdel_reg_r2_448_511_42_44_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M rdel_reg_r2_448_511_6_8
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[6]),
        .DIB(p_2_in3_in[7]),
        .DIC(p_2_in3_in[8]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_448_511_6_8_n_0),
        .DOB(rdel_reg_r2_448_511_6_8_n_1),
        .DOC(rdel_reg_r2_448_511_6_8_n_2),
        .DOD(NLW_rdel_reg_r2_448_511_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M rdel_reg_r2_448_511_9_11
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[9]),
        .DIB(p_2_in3_in[10]),
        .DIC(p_2_in3_in[11]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_448_511_9_11_n_0),
        .DOB(rdel_reg_r2_448_511_9_11_n_1),
        .DOC(rdel_reg_r2_448_511_9_11_n_2),
        .DOD(NLW_rdel_reg_r2_448_511_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M rdel_reg_r2_64_127_0_2
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[0]),
        .DIB(p_2_in3_in[1]),
        .DIC(p_2_in3_in[2]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_64_127_0_2_n_0),
        .DOB(rdel_reg_r2_64_127_0_2_n_1),
        .DOC(rdel_reg_r2_64_127_0_2_n_2),
        .DOD(NLW_rdel_reg_r2_64_127_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M rdel_reg_r2_64_127_12_14
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[12]),
        .DIB(p_2_in3_in[13]),
        .DIC(p_2_in3_in[14]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_64_127_12_14_n_0),
        .DOB(rdel_reg_r2_64_127_12_14_n_1),
        .DOC(rdel_reg_r2_64_127_12_14_n_2),
        .DOD(NLW_rdel_reg_r2_64_127_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "17" *) 
  RAM64M rdel_reg_r2_64_127_15_17
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[15]),
        .DIB(p_2_in3_in[16]),
        .DIC(p_2_in3_in[17]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_64_127_15_17_n_0),
        .DOB(rdel_reg_r2_64_127_15_17_n_1),
        .DOC(rdel_reg_r2_64_127_15_17_n_2),
        .DOD(NLW_rdel_reg_r2_64_127_15_17_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "20" *) 
  RAM64M rdel_reg_r2_64_127_18_20
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[18]),
        .DIB(p_2_in3_in[19]),
        .DIC(p_2_in3_in[20]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_64_127_18_20_n_0),
        .DOB(rdel_reg_r2_64_127_18_20_n_1),
        .DOC(rdel_reg_r2_64_127_18_20_n_2),
        .DOD(NLW_rdel_reg_r2_64_127_18_20_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "23" *) 
  RAM64M rdel_reg_r2_64_127_21_23
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[21]),
        .DIB(p_2_in3_in[22]),
        .DIC(p_2_in3_in[23]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_64_127_21_23_n_0),
        .DOB(rdel_reg_r2_64_127_21_23_n_1),
        .DOC(rdel_reg_r2_64_127_21_23_n_2),
        .DOD(NLW_rdel_reg_r2_64_127_21_23_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "26" *) 
  RAM64M rdel_reg_r2_64_127_24_26
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_18_20_i_2_n_0,rdel_reg_r1_0_63_18_20_i_3_n_0,rdel_reg_r1_0_63_18_20_i_4_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[24]),
        .DIB(p_2_in3_in[25]),
        .DIC(p_2_in3_in[26]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_64_127_24_26_n_0),
        .DOB(rdel_reg_r2_64_127_24_26_n_1),
        .DOC(rdel_reg_r2_64_127_24_26_n_2),
        .DOD(NLW_rdel_reg_r2_64_127_24_26_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "29" *) 
  RAM64M rdel_reg_r2_64_127_27_29
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[27]),
        .DIB(p_2_in3_in[28]),
        .DIC(p_2_in3_in[29]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_64_127_27_29_n_0),
        .DOB(rdel_reg_r2_64_127_27_29_n_1),
        .DOC(rdel_reg_r2_64_127_27_29_n_2),
        .DOD(NLW_rdel_reg_r2_64_127_27_29_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "32" *) 
  RAM64M rdel_reg_r2_64_127_30_32
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[30]),
        .DIB(p_2_in3_in[31]),
        .DIC(p_2_in3_in[32]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_64_127_30_32_n_0),
        .DOB(rdel_reg_r2_64_127_30_32_n_1),
        .DOC(rdel_reg_r2_64_127_30_32_n_2),
        .DOD(NLW_rdel_reg_r2_64_127_30_32_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "33" *) 
  (* ram_slice_end = "35" *) 
  RAM64M rdel_reg_r2_64_127_33_35
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_27_29_i_1_n_0,rdel_reg_r1_0_63_27_29_i_2_n_0,rdel_reg_r1_0_63_27_29_i_3_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[33]),
        .DIB(p_2_in3_in[34]),
        .DIC(p_2_in3_in[35]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_64_127_33_35_n_0),
        .DOB(rdel_reg_r2_64_127_33_35_n_1),
        .DOC(rdel_reg_r2_64_127_33_35_n_2),
        .DOD(NLW_rdel_reg_r2_64_127_33_35_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "36" *) 
  (* ram_slice_end = "38" *) 
  RAM64M rdel_reg_r2_64_127_36_38
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[36]),
        .DIB(p_2_in3_in[37]),
        .DIC(p_2_in3_in[38]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_64_127_36_38_n_0),
        .DOB(rdel_reg_r2_64_127_36_38_n_1),
        .DOC(rdel_reg_r2_64_127_36_38_n_2),
        .DOD(NLW_rdel_reg_r2_64_127_36_38_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "39" *) 
  (* ram_slice_end = "41" *) 
  RAM64M rdel_reg_r2_64_127_39_41
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[39]),
        .DIB(p_2_in3_in[40]),
        .DIC(p_2_in3_in[41]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_64_127_39_41_n_0),
        .DOB(rdel_reg_r2_64_127_39_41_n_1),
        .DOC(rdel_reg_r2_64_127_39_41_n_2),
        .DOD(NLW_rdel_reg_r2_64_127_39_41_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M rdel_reg_r2_64_127_3_5
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[3]),
        .DIB(p_2_in3_in[4]),
        .DIC(p_2_in3_in[5]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_64_127_3_5_n_0),
        .DOB(rdel_reg_r2_64_127_3_5_n_1),
        .DOC(rdel_reg_r2_64_127_3_5_n_2),
        .DOD(NLW_rdel_reg_r2_64_127_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "42" *) 
  (* ram_slice_end = "44" *) 
  RAM64M rdel_reg_r2_64_127_42_44
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_36_38_i_2_n_0,rdel_reg_r1_0_63_36_38_i_3_n_0,xa0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[42]),
        .DIB(p_2_in3_in[43]),
        .DIC(p_2_in3_in[44]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_64_127_42_44_n_0),
        .DOB(rdel_reg_r2_64_127_42_44_n_1),
        .DOC(rdel_reg_r2_64_127_42_44_n_2),
        .DOD(NLW_rdel_reg_r2_64_127_42_44_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M rdel_reg_r2_64_127_6_8
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_0_2_i_5_n_0,rdel_reg_r1_0_63_0_2_i_6_n_0,rdel_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[6]),
        .DIB(p_2_in3_in[7]),
        .DIC(p_2_in3_in[8]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_64_127_6_8_n_0),
        .DOB(rdel_reg_r2_64_127_6_8_n_1),
        .DOC(rdel_reg_r2_64_127_6_8_n_2),
        .DOD(NLW_rdel_reg_r2_64_127_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "23040" *) 
  (* RTL_RAM_NAME = "system_chain_hub_0_0/inst/u_hub/rdel_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M rdel_reg_r2_64_127_9_11
       (.ADDRA({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRB({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRC({r_idx0_return_carry_n_5,r_idx0_return_carry_n_6,r_idx0_return_carry_n_7,rdel_reg_r1_0_63_9_11_i_1_n_0,rdel_reg_r1_0_63_9_11_i_2_n_0,rdel_reg_r1_0_63_9_11_i_3_n_0}),
        .ADDRD({xa[5],\xa_reg[4]_rep_n_0 ,\xa_reg[3]_rep_n_0 ,xa[2],\xa_reg[1]_rep_n_0 ,xa[0]}),
        .DIA(p_2_in3_in[9]),
        .DIB(p_2_in3_in[10]),
        .DIC(p_2_in3_in[11]),
        .DID(1'b0),
        .DOA(rdel_reg_r2_64_127_9_11_n_0),
        .DOB(rdel_reg_r2_64_127_9_11_n_1),
        .DOC(rdel_reg_r2_64_127_9_11_n_2),
        .DOD(NLW_rdel_reg_r2_64_127_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(rdel_reg_r1_64_127_0_2_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \rp[0]_i_1 
       (.I0(\rcnt[2]_i_2_n_0 ),
        .I1(rp[0]),
        .O(rp_1[0]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \rp[1]_i_1 
       (.I0(\rcnt[2]_i_2_n_0 ),
        .I1(rp[0]),
        .I2(rp[1]),
        .O(rp_1[1]));
  LUT6 #(
    .INIT(64'h50505050D0505050)) 
    \rp[2]_i_1 
       (.I0(\rcnt[2]_i_2_n_0 ),
        .I1(\rp[2]_i_3_n_0 ),
        .I2(\rp[2]_i_4_n_0 ),
        .I3(c[1]),
        .I4(c[2]),
        .I5(c[0]),
        .O(\rp[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \rp[2]_i_2 
       (.I0(rp[2]),
        .I1(rp[0]),
        .I2(rp[1]),
        .I3(\rcnt[2]_i_2_n_0 ),
        .O(rp_1[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \rp[2]_i_3 
       (.I0(\fcnt_reg_n_0_[3] ),
        .I1(\fcnt_reg_n_0_[2] ),
        .I2(\fcnt_reg_n_0_[4] ),
        .I3(\fcnt_reg_n_0_[6] ),
        .I4(p_0_in0),
        .I5(\fcnt_reg_n_0_[5] ),
        .O(\rp[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \rp[2]_i_4 
       (.I0(\st_reg[2]_0 ),
        .I1(\st_reg[1]_0 ),
        .I2(\st_reg[0]_0 ),
        .O(\rp[2]_i_4_n_0 ));
  FDRE \rp_reg[0] 
       (.C(clk),
        .CE(\rp[2]_i_1_n_0 ),
        .D(rp_1[0]),
        .Q(rp[0]),
        .R(1'b0));
  FDRE \rp_reg[1] 
       (.C(clk),
        .CE(\rp[2]_i_1_n_0 ),
        .D(rp_1[1]),
        .Q(rp[1]),
        .R(1'b0));
  FDRE \rp_reg[2] 
       (.C(clk),
        .CE(\rp[2]_i_1_n_0 ),
        .D(rp_1[2]),
        .Q(rp[2]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \rq[0]_i_1 
       (.I0(rq214_out),
        .I1(rq1[0]),
        .I2(\rq[44]_i_4_n_0 ),
        .I3(rq2),
        .I4(rq15_out[0]),
        .O(\rq[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[0]_i_4 
       (.I0(rdel_reg_r1_192_255_0_2_n_0),
        .I1(rdel_reg_r1_128_191_0_2_n_0),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_64_127_0_2_n_0),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_0_63_0_2_n_0),
        .O(\rq[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[0]_i_5 
       (.I0(rdel_reg_r1_448_511_0_2_n_0),
        .I1(rdel_reg_r1_384_447_0_2_n_0),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_320_383_0_2_n_0),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_256_319_0_2_n_0),
        .O(\rq[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[0]_i_6 
       (.I0(rdel_reg_r2_192_255_0_2_n_0),
        .I1(rdel_reg_r2_128_191_0_2_n_0),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_64_127_0_2_n_0),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_0_63_0_2_n_0),
        .O(\rq[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[0]_i_7 
       (.I0(rdel_reg_r2_448_511_0_2_n_0),
        .I1(rdel_reg_r2_384_447_0_2_n_0),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_320_383_0_2_n_0),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_256_319_0_2_n_0),
        .O(\rq[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \rq[10]_i_1 
       (.I0(rq214_out),
        .I1(rq1[10]),
        .I2(\rq[44]_i_4_n_0 ),
        .I3(rq2),
        .I4(rq15_out[10]),
        .O(\rq[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[10]_i_4 
       (.I0(rdel_reg_r1_192_255_9_11_n_1),
        .I1(rdel_reg_r1_128_191_9_11_n_1),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_64_127_9_11_n_1),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_0_63_9_11_n_1),
        .O(\rq[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[10]_i_5 
       (.I0(rdel_reg_r1_448_511_9_11_n_1),
        .I1(rdel_reg_r1_384_447_9_11_n_1),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_320_383_9_11_n_1),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_256_319_9_11_n_1),
        .O(\rq[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[10]_i_6 
       (.I0(rdel_reg_r2_192_255_9_11_n_1),
        .I1(rdel_reg_r2_128_191_9_11_n_1),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_64_127_9_11_n_1),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_0_63_9_11_n_1),
        .O(\rq[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[10]_i_7 
       (.I0(rdel_reg_r2_448_511_9_11_n_1),
        .I1(rdel_reg_r2_384_447_9_11_n_1),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_320_383_9_11_n_1),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_256_319_9_11_n_1),
        .O(\rq[10]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \rq[11]_i_1 
       (.I0(rq214_out),
        .I1(rq1[11]),
        .I2(\rq[44]_i_4_n_0 ),
        .I3(rq2),
        .I4(rq15_out[11]),
        .O(\rq[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[11]_i_4 
       (.I0(rdel_reg_r1_192_255_9_11_n_2),
        .I1(rdel_reg_r1_128_191_9_11_n_2),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_64_127_9_11_n_2),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_0_63_9_11_n_2),
        .O(\rq[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[11]_i_5 
       (.I0(rdel_reg_r1_448_511_9_11_n_2),
        .I1(rdel_reg_r1_384_447_9_11_n_2),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_320_383_9_11_n_2),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_256_319_9_11_n_2),
        .O(\rq[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[11]_i_6 
       (.I0(rdel_reg_r2_192_255_9_11_n_2),
        .I1(rdel_reg_r2_128_191_9_11_n_2),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_64_127_9_11_n_2),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_0_63_9_11_n_2),
        .O(\rq[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[11]_i_7 
       (.I0(rdel_reg_r2_448_511_9_11_n_2),
        .I1(rdel_reg_r2_384_447_9_11_n_2),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_320_383_9_11_n_2),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_256_319_9_11_n_2),
        .O(\rq[11]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \rq[12]_i_1 
       (.I0(rq214_out),
        .I1(rq1[12]),
        .I2(\rq[44]_i_4_n_0 ),
        .I3(rq2),
        .I4(rq15_out[12]),
        .O(\rq[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[12]_i_4 
       (.I0(rdel_reg_r1_192_255_12_14_n_0),
        .I1(rdel_reg_r1_128_191_12_14_n_0),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_64_127_12_14_n_0),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_0_63_12_14_n_0),
        .O(\rq[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[12]_i_5 
       (.I0(rdel_reg_r1_448_511_12_14_n_0),
        .I1(rdel_reg_r1_384_447_12_14_n_0),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_320_383_12_14_n_0),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_256_319_12_14_n_0),
        .O(\rq[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[12]_i_6 
       (.I0(rdel_reg_r2_192_255_12_14_n_0),
        .I1(rdel_reg_r2_128_191_12_14_n_0),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_64_127_12_14_n_0),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_0_63_12_14_n_0),
        .O(\rq[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[12]_i_7 
       (.I0(rdel_reg_r2_448_511_12_14_n_0),
        .I1(rdel_reg_r2_384_447_12_14_n_0),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_320_383_12_14_n_0),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_256_319_12_14_n_0),
        .O(\rq[12]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \rq[13]_i_1 
       (.I0(rq214_out),
        .I1(rq1[13]),
        .I2(\rq[44]_i_4_n_0 ),
        .I3(rq2),
        .I4(rq15_out[13]),
        .O(\rq[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[13]_i_4 
       (.I0(rdel_reg_r1_192_255_12_14_n_1),
        .I1(rdel_reg_r1_128_191_12_14_n_1),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_64_127_12_14_n_1),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_0_63_12_14_n_1),
        .O(\rq[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[13]_i_5 
       (.I0(rdel_reg_r1_448_511_12_14_n_1),
        .I1(rdel_reg_r1_384_447_12_14_n_1),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_320_383_12_14_n_1),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_256_319_12_14_n_1),
        .O(\rq[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[13]_i_6 
       (.I0(rdel_reg_r2_192_255_12_14_n_1),
        .I1(rdel_reg_r2_128_191_12_14_n_1),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_64_127_12_14_n_1),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_0_63_12_14_n_1),
        .O(\rq[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[13]_i_7 
       (.I0(rdel_reg_r2_448_511_12_14_n_1),
        .I1(rdel_reg_r2_384_447_12_14_n_1),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_320_383_12_14_n_1),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_256_319_12_14_n_1),
        .O(\rq[13]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \rq[14]_i_1 
       (.I0(rq214_out),
        .I1(rq1[14]),
        .I2(\rq[44]_i_4_n_0 ),
        .I3(rq2),
        .I4(rq15_out[14]),
        .O(\rq[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[14]_i_4 
       (.I0(rdel_reg_r1_192_255_12_14_n_2),
        .I1(rdel_reg_r1_128_191_12_14_n_2),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_64_127_12_14_n_2),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_0_63_12_14_n_2),
        .O(\rq[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[14]_i_5 
       (.I0(rdel_reg_r1_448_511_12_14_n_2),
        .I1(rdel_reg_r1_384_447_12_14_n_2),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_320_383_12_14_n_2),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_256_319_12_14_n_2),
        .O(\rq[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[14]_i_6 
       (.I0(rdel_reg_r2_192_255_12_14_n_2),
        .I1(rdel_reg_r2_128_191_12_14_n_2),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_64_127_12_14_n_2),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_0_63_12_14_n_2),
        .O(\rq[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[14]_i_7 
       (.I0(rdel_reg_r2_448_511_12_14_n_2),
        .I1(rdel_reg_r2_384_447_12_14_n_2),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_320_383_12_14_n_2),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_256_319_12_14_n_2),
        .O(\rq[14]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \rq[15]_i_1 
       (.I0(rq214_out),
        .I1(rq1[15]),
        .I2(\rq[44]_i_4_n_0 ),
        .I3(rq2),
        .I4(rq15_out[15]),
        .O(\rq[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[15]_i_4 
       (.I0(rdel_reg_r1_192_255_15_17_n_0),
        .I1(rdel_reg_r1_128_191_15_17_n_0),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_64_127_15_17_n_0),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_0_63_15_17_n_0),
        .O(\rq[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[15]_i_5 
       (.I0(rdel_reg_r1_448_511_15_17_n_0),
        .I1(rdel_reg_r1_384_447_15_17_n_0),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_320_383_15_17_n_0),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_256_319_15_17_n_0),
        .O(\rq[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[15]_i_6 
       (.I0(rdel_reg_r2_192_255_15_17_n_0),
        .I1(rdel_reg_r2_128_191_15_17_n_0),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_64_127_15_17_n_0),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_0_63_15_17_n_0),
        .O(\rq[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[15]_i_7 
       (.I0(rdel_reg_r2_448_511_15_17_n_0),
        .I1(rdel_reg_r2_384_447_15_17_n_0),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_320_383_15_17_n_0),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_256_319_15_17_n_0),
        .O(\rq[15]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \rq[16]_i_1 
       (.I0(rq214_out),
        .I1(rq1[16]),
        .I2(\rq[44]_i_4_n_0 ),
        .I3(rq2),
        .I4(rq15_out[16]),
        .O(\rq[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[16]_i_4 
       (.I0(rdel_reg_r1_192_255_15_17_n_1),
        .I1(rdel_reg_r1_128_191_15_17_n_1),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_64_127_15_17_n_1),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_0_63_15_17_n_1),
        .O(\rq[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[16]_i_5 
       (.I0(rdel_reg_r1_448_511_15_17_n_1),
        .I1(rdel_reg_r1_384_447_15_17_n_1),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_320_383_15_17_n_1),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_256_319_15_17_n_1),
        .O(\rq[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[16]_i_6 
       (.I0(rdel_reg_r2_192_255_15_17_n_1),
        .I1(rdel_reg_r2_128_191_15_17_n_1),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_64_127_15_17_n_1),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_0_63_15_17_n_1),
        .O(\rq[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[16]_i_7 
       (.I0(rdel_reg_r2_448_511_15_17_n_1),
        .I1(rdel_reg_r2_384_447_15_17_n_1),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_320_383_15_17_n_1),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_256_319_15_17_n_1),
        .O(\rq[16]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \rq[17]_i_1 
       (.I0(rq214_out),
        .I1(rq1[17]),
        .I2(\rq[44]_i_4_n_0 ),
        .I3(rq2),
        .I4(rq15_out[17]),
        .O(\rq[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[17]_i_4 
       (.I0(rdel_reg_r1_192_255_15_17_n_2),
        .I1(rdel_reg_r1_128_191_15_17_n_2),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_64_127_15_17_n_2),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_0_63_15_17_n_2),
        .O(\rq[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[17]_i_5 
       (.I0(rdel_reg_r1_448_511_15_17_n_2),
        .I1(rdel_reg_r1_384_447_15_17_n_2),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_320_383_15_17_n_2),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_256_319_15_17_n_2),
        .O(\rq[17]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[17]_i_6 
       (.I0(rdel_reg_r2_192_255_15_17_n_2),
        .I1(rdel_reg_r2_128_191_15_17_n_2),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_64_127_15_17_n_2),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_0_63_15_17_n_2),
        .O(\rq[17]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[17]_i_7 
       (.I0(rdel_reg_r2_448_511_15_17_n_2),
        .I1(rdel_reg_r2_384_447_15_17_n_2),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_320_383_15_17_n_2),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_256_319_15_17_n_2),
        .O(\rq[17]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \rq[18]_i_1 
       (.I0(rq214_out),
        .I1(rq1[18]),
        .I2(\rq[44]_i_4_n_0 ),
        .I3(rq2),
        .I4(rq15_out[18]),
        .O(\rq[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[18]_i_4 
       (.I0(rdel_reg_r1_192_255_18_20_n_0),
        .I1(rdel_reg_r1_128_191_18_20_n_0),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_64_127_18_20_n_0),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_0_63_18_20_n_0),
        .O(\rq[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[18]_i_5 
       (.I0(rdel_reg_r1_448_511_18_20_n_0),
        .I1(rdel_reg_r1_384_447_18_20_n_0),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_320_383_18_20_n_0),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_256_319_18_20_n_0),
        .O(\rq[18]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[18]_i_6 
       (.I0(rdel_reg_r2_192_255_18_20_n_0),
        .I1(rdel_reg_r2_128_191_18_20_n_0),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_64_127_18_20_n_0),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_0_63_18_20_n_0),
        .O(\rq[18]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[18]_i_7 
       (.I0(rdel_reg_r2_448_511_18_20_n_0),
        .I1(rdel_reg_r2_384_447_18_20_n_0),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_320_383_18_20_n_0),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_256_319_18_20_n_0),
        .O(\rq[18]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \rq[19]_i_1 
       (.I0(rq214_out),
        .I1(rq1[19]),
        .I2(\rq[44]_i_4_n_0 ),
        .I3(rq2),
        .I4(rq15_out[19]),
        .O(\rq[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[19]_i_4 
       (.I0(rdel_reg_r1_192_255_18_20_n_1),
        .I1(rdel_reg_r1_128_191_18_20_n_1),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_64_127_18_20_n_1),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_0_63_18_20_n_1),
        .O(\rq[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[19]_i_5 
       (.I0(rdel_reg_r1_448_511_18_20_n_1),
        .I1(rdel_reg_r1_384_447_18_20_n_1),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_320_383_18_20_n_1),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_256_319_18_20_n_1),
        .O(\rq[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[19]_i_6 
       (.I0(rdel_reg_r2_192_255_18_20_n_1),
        .I1(rdel_reg_r2_128_191_18_20_n_1),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_64_127_18_20_n_1),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_0_63_18_20_n_1),
        .O(\rq[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[19]_i_7 
       (.I0(rdel_reg_r2_448_511_18_20_n_1),
        .I1(rdel_reg_r2_384_447_18_20_n_1),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_320_383_18_20_n_1),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_256_319_18_20_n_1),
        .O(\rq[19]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \rq[1]_i_1 
       (.I0(rq214_out),
        .I1(rq1[1]),
        .I2(\rq[44]_i_4_n_0 ),
        .I3(rq2),
        .I4(rq15_out[1]),
        .O(\rq[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[1]_i_4 
       (.I0(rdel_reg_r1_192_255_0_2_n_1),
        .I1(rdel_reg_r1_128_191_0_2_n_1),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_64_127_0_2_n_1),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_0_63_0_2_n_1),
        .O(\rq[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[1]_i_5 
       (.I0(rdel_reg_r1_448_511_0_2_n_1),
        .I1(rdel_reg_r1_384_447_0_2_n_1),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_320_383_0_2_n_1),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_256_319_0_2_n_1),
        .O(\rq[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[1]_i_6 
       (.I0(rdel_reg_r2_192_255_0_2_n_1),
        .I1(rdel_reg_r2_128_191_0_2_n_1),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_64_127_0_2_n_1),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_0_63_0_2_n_1),
        .O(\rq[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[1]_i_7 
       (.I0(rdel_reg_r2_448_511_0_2_n_1),
        .I1(rdel_reg_r2_384_447_0_2_n_1),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_320_383_0_2_n_1),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_256_319_0_2_n_1),
        .O(\rq[1]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \rq[20]_i_1 
       (.I0(rq214_out),
        .I1(rq1[20]),
        .I2(\rq[44]_i_4_n_0 ),
        .I3(rq2),
        .I4(rq15_out[20]),
        .O(\rq[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[20]_i_4 
       (.I0(rdel_reg_r1_192_255_18_20_n_2),
        .I1(rdel_reg_r1_128_191_18_20_n_2),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_64_127_18_20_n_2),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_0_63_18_20_n_2),
        .O(\rq[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[20]_i_5 
       (.I0(rdel_reg_r1_448_511_18_20_n_2),
        .I1(rdel_reg_r1_384_447_18_20_n_2),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_320_383_18_20_n_2),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_256_319_18_20_n_2),
        .O(\rq[20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[20]_i_6 
       (.I0(rdel_reg_r2_192_255_18_20_n_2),
        .I1(rdel_reg_r2_128_191_18_20_n_2),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_64_127_18_20_n_2),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_0_63_18_20_n_2),
        .O(\rq[20]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[20]_i_7 
       (.I0(rdel_reg_r2_448_511_18_20_n_2),
        .I1(rdel_reg_r2_384_447_18_20_n_2),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_320_383_18_20_n_2),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_256_319_18_20_n_2),
        .O(\rq[20]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \rq[21]_i_1 
       (.I0(rq214_out),
        .I1(rq1[21]),
        .I2(\rq[44]_i_4_n_0 ),
        .I3(rq2),
        .I4(rq15_out[21]),
        .O(\rq[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[21]_i_4 
       (.I0(rdel_reg_r1_192_255_21_23_n_0),
        .I1(rdel_reg_r1_128_191_21_23_n_0),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_64_127_21_23_n_0),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_0_63_21_23_n_0),
        .O(\rq[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[21]_i_5 
       (.I0(rdel_reg_r1_448_511_21_23_n_0),
        .I1(rdel_reg_r1_384_447_21_23_n_0),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_320_383_21_23_n_0),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_256_319_21_23_n_0),
        .O(\rq[21]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[21]_i_6 
       (.I0(rdel_reg_r2_192_255_21_23_n_0),
        .I1(rdel_reg_r2_128_191_21_23_n_0),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_64_127_21_23_n_0),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_0_63_21_23_n_0),
        .O(\rq[21]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[21]_i_7 
       (.I0(rdel_reg_r2_448_511_21_23_n_0),
        .I1(rdel_reg_r2_384_447_21_23_n_0),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_320_383_21_23_n_0),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_256_319_21_23_n_0),
        .O(\rq[21]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \rq[22]_i_1 
       (.I0(rq214_out),
        .I1(rq1[22]),
        .I2(\rq[44]_i_4_n_0 ),
        .I3(rq2),
        .I4(rq15_out[22]),
        .O(\rq[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[22]_i_4 
       (.I0(rdel_reg_r1_192_255_21_23_n_1),
        .I1(rdel_reg_r1_128_191_21_23_n_1),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_64_127_21_23_n_1),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_0_63_21_23_n_1),
        .O(\rq[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[22]_i_5 
       (.I0(rdel_reg_r1_448_511_21_23_n_1),
        .I1(rdel_reg_r1_384_447_21_23_n_1),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_320_383_21_23_n_1),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_256_319_21_23_n_1),
        .O(\rq[22]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[22]_i_6 
       (.I0(rdel_reg_r2_192_255_21_23_n_1),
        .I1(rdel_reg_r2_128_191_21_23_n_1),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_64_127_21_23_n_1),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_0_63_21_23_n_1),
        .O(\rq[22]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[22]_i_7 
       (.I0(rdel_reg_r2_448_511_21_23_n_1),
        .I1(rdel_reg_r2_384_447_21_23_n_1),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_320_383_21_23_n_1),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_256_319_21_23_n_1),
        .O(\rq[22]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \rq[23]_i_1 
       (.I0(rq214_out),
        .I1(rq1[23]),
        .I2(\rq[44]_i_4_n_0 ),
        .I3(rq2),
        .I4(rq15_out[23]),
        .O(\rq[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[23]_i_4 
       (.I0(rdel_reg_r1_192_255_21_23_n_2),
        .I1(rdel_reg_r1_128_191_21_23_n_2),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_64_127_21_23_n_2),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_0_63_21_23_n_2),
        .O(\rq[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[23]_i_5 
       (.I0(rdel_reg_r1_448_511_21_23_n_2),
        .I1(rdel_reg_r1_384_447_21_23_n_2),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_320_383_21_23_n_2),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_256_319_21_23_n_2),
        .O(\rq[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[23]_i_6 
       (.I0(rdel_reg_r2_192_255_21_23_n_2),
        .I1(rdel_reg_r2_128_191_21_23_n_2),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_64_127_21_23_n_2),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_0_63_21_23_n_2),
        .O(\rq[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[23]_i_7 
       (.I0(rdel_reg_r2_448_511_21_23_n_2),
        .I1(rdel_reg_r2_384_447_21_23_n_2),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_320_383_21_23_n_2),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_256_319_21_23_n_2),
        .O(\rq[23]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \rq[24]_i_1 
       (.I0(rq214_out),
        .I1(rq1[24]),
        .I2(\rq[44]_i_4_n_0 ),
        .I3(rq2),
        .I4(rq15_out[24]),
        .O(\rq[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[24]_i_4 
       (.I0(rdel_reg_r1_192_255_24_26_n_0),
        .I1(rdel_reg_r1_128_191_24_26_n_0),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_64_127_24_26_n_0),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_0_63_24_26_n_0),
        .O(\rq[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[24]_i_5 
       (.I0(rdel_reg_r1_448_511_24_26_n_0),
        .I1(rdel_reg_r1_384_447_24_26_n_0),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_320_383_24_26_n_0),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_256_319_24_26_n_0),
        .O(\rq[24]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[24]_i_6 
       (.I0(rdel_reg_r2_192_255_24_26_n_0),
        .I1(rdel_reg_r2_128_191_24_26_n_0),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_64_127_24_26_n_0),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_0_63_24_26_n_0),
        .O(\rq[24]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[24]_i_7 
       (.I0(rdel_reg_r2_448_511_24_26_n_0),
        .I1(rdel_reg_r2_384_447_24_26_n_0),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_320_383_24_26_n_0),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_256_319_24_26_n_0),
        .O(\rq[24]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \rq[25]_i_1 
       (.I0(rq214_out),
        .I1(rq1[25]),
        .I2(\rq[44]_i_4_n_0 ),
        .I3(rq2),
        .I4(rq15_out[25]),
        .O(\rq[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[25]_i_4 
       (.I0(rdel_reg_r1_192_255_24_26_n_1),
        .I1(rdel_reg_r1_128_191_24_26_n_1),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_64_127_24_26_n_1),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_0_63_24_26_n_1),
        .O(\rq[25]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[25]_i_5 
       (.I0(rdel_reg_r1_448_511_24_26_n_1),
        .I1(rdel_reg_r1_384_447_24_26_n_1),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_320_383_24_26_n_1),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_256_319_24_26_n_1),
        .O(\rq[25]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[25]_i_6 
       (.I0(rdel_reg_r2_192_255_24_26_n_1),
        .I1(rdel_reg_r2_128_191_24_26_n_1),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_64_127_24_26_n_1),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_0_63_24_26_n_1),
        .O(\rq[25]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[25]_i_7 
       (.I0(rdel_reg_r2_448_511_24_26_n_1),
        .I1(rdel_reg_r2_384_447_24_26_n_1),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_320_383_24_26_n_1),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_256_319_24_26_n_1),
        .O(\rq[25]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \rq[26]_i_1 
       (.I0(rq214_out),
        .I1(rq1[26]),
        .I2(\rq[44]_i_4_n_0 ),
        .I3(rq2),
        .I4(rq15_out[26]),
        .O(\rq[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[26]_i_4 
       (.I0(rdel_reg_r1_192_255_24_26_n_2),
        .I1(rdel_reg_r1_128_191_24_26_n_2),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_64_127_24_26_n_2),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_0_63_24_26_n_2),
        .O(\rq[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[26]_i_5 
       (.I0(rdel_reg_r1_448_511_24_26_n_2),
        .I1(rdel_reg_r1_384_447_24_26_n_2),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_320_383_24_26_n_2),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_256_319_24_26_n_2),
        .O(\rq[26]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[26]_i_6 
       (.I0(rdel_reg_r2_192_255_24_26_n_2),
        .I1(rdel_reg_r2_128_191_24_26_n_2),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_64_127_24_26_n_2),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_0_63_24_26_n_2),
        .O(\rq[26]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[26]_i_7 
       (.I0(rdel_reg_r2_448_511_24_26_n_2),
        .I1(rdel_reg_r2_384_447_24_26_n_2),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_320_383_24_26_n_2),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_256_319_24_26_n_2),
        .O(\rq[26]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \rq[27]_i_1 
       (.I0(rq214_out),
        .I1(rq1[27]),
        .I2(\rq[44]_i_4_n_0 ),
        .I3(rq2),
        .I4(rq15_out[27]),
        .O(\rq[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[27]_i_4 
       (.I0(rdel_reg_r1_192_255_27_29_n_0),
        .I1(rdel_reg_r1_128_191_27_29_n_0),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_64_127_27_29_n_0),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_0_63_27_29_n_0),
        .O(\rq[27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[27]_i_5 
       (.I0(rdel_reg_r1_448_511_27_29_n_0),
        .I1(rdel_reg_r1_384_447_27_29_n_0),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_320_383_27_29_n_0),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_256_319_27_29_n_0),
        .O(\rq[27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[27]_i_6 
       (.I0(rdel_reg_r2_192_255_27_29_n_0),
        .I1(rdel_reg_r2_128_191_27_29_n_0),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_64_127_27_29_n_0),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_0_63_27_29_n_0),
        .O(\rq[27]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[27]_i_7 
       (.I0(rdel_reg_r2_448_511_27_29_n_0),
        .I1(rdel_reg_r2_384_447_27_29_n_0),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_320_383_27_29_n_0),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_256_319_27_29_n_0),
        .O(\rq[27]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \rq[28]_i_1 
       (.I0(rq214_out),
        .I1(rq1[28]),
        .I2(\rq[44]_i_4_n_0 ),
        .I3(rq2),
        .I4(rq15_out[28]),
        .O(\rq[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[28]_i_4 
       (.I0(rdel_reg_r1_192_255_27_29_n_1),
        .I1(rdel_reg_r1_128_191_27_29_n_1),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_64_127_27_29_n_1),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_0_63_27_29_n_1),
        .O(\rq[28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[28]_i_5 
       (.I0(rdel_reg_r1_448_511_27_29_n_1),
        .I1(rdel_reg_r1_384_447_27_29_n_1),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_320_383_27_29_n_1),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_256_319_27_29_n_1),
        .O(\rq[28]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[28]_i_6 
       (.I0(rdel_reg_r2_192_255_27_29_n_1),
        .I1(rdel_reg_r2_128_191_27_29_n_1),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_64_127_27_29_n_1),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_0_63_27_29_n_1),
        .O(\rq[28]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[28]_i_7 
       (.I0(rdel_reg_r2_448_511_27_29_n_1),
        .I1(rdel_reg_r2_384_447_27_29_n_1),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_320_383_27_29_n_1),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_256_319_27_29_n_1),
        .O(\rq[28]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \rq[29]_i_1 
       (.I0(rq214_out),
        .I1(rq1[29]),
        .I2(\rq[44]_i_4_n_0 ),
        .I3(rq2),
        .I4(rq15_out[29]),
        .O(\rq[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[29]_i_4 
       (.I0(rdel_reg_r1_192_255_27_29_n_2),
        .I1(rdel_reg_r1_128_191_27_29_n_2),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_64_127_27_29_n_2),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_0_63_27_29_n_2),
        .O(\rq[29]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[29]_i_5 
       (.I0(rdel_reg_r1_448_511_27_29_n_2),
        .I1(rdel_reg_r1_384_447_27_29_n_2),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_320_383_27_29_n_2),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_256_319_27_29_n_2),
        .O(\rq[29]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[29]_i_6 
       (.I0(rdel_reg_r2_192_255_27_29_n_2),
        .I1(rdel_reg_r2_128_191_27_29_n_2),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_64_127_27_29_n_2),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_0_63_27_29_n_2),
        .O(\rq[29]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[29]_i_7 
       (.I0(rdel_reg_r2_448_511_27_29_n_2),
        .I1(rdel_reg_r2_384_447_27_29_n_2),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_320_383_27_29_n_2),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_256_319_27_29_n_2),
        .O(\rq[29]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \rq[2]_i_1 
       (.I0(rq214_out),
        .I1(rq1[2]),
        .I2(\rq[44]_i_4_n_0 ),
        .I3(rq2),
        .I4(rq15_out[2]),
        .O(\rq[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[2]_i_4 
       (.I0(rdel_reg_r1_192_255_0_2_n_2),
        .I1(rdel_reg_r1_128_191_0_2_n_2),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_64_127_0_2_n_2),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_0_63_0_2_n_2),
        .O(\rq[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[2]_i_5 
       (.I0(rdel_reg_r1_448_511_0_2_n_2),
        .I1(rdel_reg_r1_384_447_0_2_n_2),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_320_383_0_2_n_2),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_256_319_0_2_n_2),
        .O(\rq[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[2]_i_6 
       (.I0(rdel_reg_r2_192_255_0_2_n_2),
        .I1(rdel_reg_r2_128_191_0_2_n_2),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_64_127_0_2_n_2),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_0_63_0_2_n_2),
        .O(\rq[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[2]_i_7 
       (.I0(rdel_reg_r2_448_511_0_2_n_2),
        .I1(rdel_reg_r2_384_447_0_2_n_2),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_320_383_0_2_n_2),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_256_319_0_2_n_2),
        .O(\rq[2]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \rq[30]_i_1 
       (.I0(rq214_out),
        .I1(rq1[30]),
        .I2(\rq[44]_i_4_n_0 ),
        .I3(rq2),
        .I4(rq15_out[30]),
        .O(\rq[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[30]_i_4 
       (.I0(rdel_reg_r1_192_255_30_32_n_0),
        .I1(rdel_reg_r1_128_191_30_32_n_0),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_64_127_30_32_n_0),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_0_63_30_32_n_0),
        .O(\rq[30]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[30]_i_5 
       (.I0(rdel_reg_r1_448_511_30_32_n_0),
        .I1(rdel_reg_r1_384_447_30_32_n_0),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_320_383_30_32_n_0),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_256_319_30_32_n_0),
        .O(\rq[30]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[30]_i_6 
       (.I0(rdel_reg_r2_192_255_30_32_n_0),
        .I1(rdel_reg_r2_128_191_30_32_n_0),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_64_127_30_32_n_0),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_0_63_30_32_n_0),
        .O(\rq[30]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[30]_i_7 
       (.I0(rdel_reg_r2_448_511_30_32_n_0),
        .I1(rdel_reg_r2_384_447_30_32_n_0),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_320_383_30_32_n_0),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_256_319_30_32_n_0),
        .O(\rq[30]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \rq[31]_i_1 
       (.I0(rq214_out),
        .I1(rq1[31]),
        .I2(\rq[44]_i_4_n_0 ),
        .I3(rq2),
        .I4(rq15_out[31]),
        .O(\rq[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[31]_i_4 
       (.I0(rdel_reg_r1_192_255_30_32_n_1),
        .I1(rdel_reg_r1_128_191_30_32_n_1),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_64_127_30_32_n_1),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_0_63_30_32_n_1),
        .O(\rq[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[31]_i_5 
       (.I0(rdel_reg_r1_448_511_30_32_n_1),
        .I1(rdel_reg_r1_384_447_30_32_n_1),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_320_383_30_32_n_1),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_256_319_30_32_n_1),
        .O(\rq[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[31]_i_6 
       (.I0(rdel_reg_r2_192_255_30_32_n_1),
        .I1(rdel_reg_r2_128_191_30_32_n_1),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_64_127_30_32_n_1),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_0_63_30_32_n_1),
        .O(\rq[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[31]_i_7 
       (.I0(rdel_reg_r2_448_511_30_32_n_1),
        .I1(rdel_reg_r2_384_447_30_32_n_1),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_320_383_30_32_n_1),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_256_319_30_32_n_1),
        .O(\rq[31]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \rq[32]_i_1 
       (.I0(rq214_out),
        .I1(rq1[32]),
        .I2(\rq[44]_i_4_n_0 ),
        .I3(rq2),
        .I4(rq15_out[32]),
        .O(\rq[32]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[32]_i_4 
       (.I0(rdel_reg_r1_192_255_30_32_n_2),
        .I1(rdel_reg_r1_128_191_30_32_n_2),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_64_127_30_32_n_2),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_0_63_30_32_n_2),
        .O(\rq[32]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[32]_i_5 
       (.I0(rdel_reg_r1_448_511_30_32_n_2),
        .I1(rdel_reg_r1_384_447_30_32_n_2),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_320_383_30_32_n_2),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_256_319_30_32_n_2),
        .O(\rq[32]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[32]_i_6 
       (.I0(rdel_reg_r2_192_255_30_32_n_2),
        .I1(rdel_reg_r2_128_191_30_32_n_2),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_64_127_30_32_n_2),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_0_63_30_32_n_2),
        .O(\rq[32]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[32]_i_7 
       (.I0(rdel_reg_r2_448_511_30_32_n_2),
        .I1(rdel_reg_r2_384_447_30_32_n_2),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_320_383_30_32_n_2),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_256_319_30_32_n_2),
        .O(\rq[32]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \rq[33]_i_1 
       (.I0(rq214_out),
        .I1(rq1[33]),
        .I2(\rq[44]_i_4_n_0 ),
        .I3(rq2),
        .I4(rq15_out[33]),
        .O(\rq[33]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[33]_i_4 
       (.I0(rdel_reg_r1_192_255_33_35_n_0),
        .I1(rdel_reg_r1_128_191_33_35_n_0),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_64_127_33_35_n_0),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_0_63_33_35_n_0),
        .O(\rq[33]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[33]_i_5 
       (.I0(rdel_reg_r1_448_511_33_35_n_0),
        .I1(rdel_reg_r1_384_447_33_35_n_0),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_320_383_33_35_n_0),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_256_319_33_35_n_0),
        .O(\rq[33]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[33]_i_6 
       (.I0(rdel_reg_r2_192_255_33_35_n_0),
        .I1(rdel_reg_r2_128_191_33_35_n_0),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_64_127_33_35_n_0),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_0_63_33_35_n_0),
        .O(\rq[33]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[33]_i_7 
       (.I0(rdel_reg_r2_448_511_33_35_n_0),
        .I1(rdel_reg_r2_384_447_33_35_n_0),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_320_383_33_35_n_0),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_256_319_33_35_n_0),
        .O(\rq[33]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \rq[34]_i_1 
       (.I0(rq214_out),
        .I1(rq1[34]),
        .I2(\rq[44]_i_4_n_0 ),
        .I3(rq2),
        .I4(rq15_out[34]),
        .O(\rq[34]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[34]_i_4 
       (.I0(rdel_reg_r1_192_255_33_35_n_1),
        .I1(rdel_reg_r1_128_191_33_35_n_1),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_64_127_33_35_n_1),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_0_63_33_35_n_1),
        .O(\rq[34]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[34]_i_5 
       (.I0(rdel_reg_r1_448_511_33_35_n_1),
        .I1(rdel_reg_r1_384_447_33_35_n_1),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_320_383_33_35_n_1),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_256_319_33_35_n_1),
        .O(\rq[34]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[34]_i_6 
       (.I0(rdel_reg_r2_192_255_33_35_n_1),
        .I1(rdel_reg_r2_128_191_33_35_n_1),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_64_127_33_35_n_1),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_0_63_33_35_n_1),
        .O(\rq[34]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[34]_i_7 
       (.I0(rdel_reg_r2_448_511_33_35_n_1),
        .I1(rdel_reg_r2_384_447_33_35_n_1),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_320_383_33_35_n_1),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_256_319_33_35_n_1),
        .O(\rq[34]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \rq[35]_i_1 
       (.I0(rq214_out),
        .I1(rq1[35]),
        .I2(\rq[44]_i_4_n_0 ),
        .I3(rq2),
        .I4(rq15_out[35]),
        .O(\rq[35]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[35]_i_4 
       (.I0(rdel_reg_r1_192_255_33_35_n_2),
        .I1(rdel_reg_r1_128_191_33_35_n_2),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_64_127_33_35_n_2),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_0_63_33_35_n_2),
        .O(\rq[35]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[35]_i_5 
       (.I0(rdel_reg_r1_448_511_33_35_n_2),
        .I1(rdel_reg_r1_384_447_33_35_n_2),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_320_383_33_35_n_2),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_256_319_33_35_n_2),
        .O(\rq[35]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[35]_i_6 
       (.I0(rdel_reg_r2_192_255_33_35_n_2),
        .I1(rdel_reg_r2_128_191_33_35_n_2),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_64_127_33_35_n_2),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_0_63_33_35_n_2),
        .O(\rq[35]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[35]_i_7 
       (.I0(rdel_reg_r2_448_511_33_35_n_2),
        .I1(rdel_reg_r2_384_447_33_35_n_2),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_320_383_33_35_n_2),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_256_319_33_35_n_2),
        .O(\rq[35]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \rq[36]_i_1 
       (.I0(rq214_out),
        .I1(rq1[36]),
        .I2(\rq[44]_i_4_n_0 ),
        .I3(rq2),
        .I4(rq15_out[36]),
        .O(\rq[36]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[36]_i_4 
       (.I0(rdel_reg_r1_192_255_36_38_n_0),
        .I1(rdel_reg_r1_128_191_36_38_n_0),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_64_127_36_38_n_0),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_0_63_36_38_n_0),
        .O(\rq[36]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[36]_i_5 
       (.I0(rdel_reg_r1_448_511_36_38_n_0),
        .I1(rdel_reg_r1_384_447_36_38_n_0),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_320_383_36_38_n_0),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_256_319_36_38_n_0),
        .O(\rq[36]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[36]_i_6 
       (.I0(rdel_reg_r2_192_255_36_38_n_0),
        .I1(rdel_reg_r2_128_191_36_38_n_0),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_64_127_36_38_n_0),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_0_63_36_38_n_0),
        .O(\rq[36]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[36]_i_7 
       (.I0(rdel_reg_r2_448_511_36_38_n_0),
        .I1(rdel_reg_r2_384_447_36_38_n_0),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_320_383_36_38_n_0),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_256_319_36_38_n_0),
        .O(\rq[36]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \rq[37]_i_1 
       (.I0(rq214_out),
        .I1(rq1[37]),
        .I2(\rq[44]_i_4_n_0 ),
        .I3(rq2),
        .I4(rq15_out[37]),
        .O(\rq[37]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[37]_i_4 
       (.I0(rdel_reg_r1_192_255_36_38_n_1),
        .I1(rdel_reg_r1_128_191_36_38_n_1),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_64_127_36_38_n_1),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_0_63_36_38_n_1),
        .O(\rq[37]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[37]_i_5 
       (.I0(rdel_reg_r1_448_511_36_38_n_1),
        .I1(rdel_reg_r1_384_447_36_38_n_1),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_320_383_36_38_n_1),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_256_319_36_38_n_1),
        .O(\rq[37]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[37]_i_6 
       (.I0(rdel_reg_r2_192_255_36_38_n_1),
        .I1(rdel_reg_r2_128_191_36_38_n_1),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_64_127_36_38_n_1),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_0_63_36_38_n_1),
        .O(\rq[37]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[37]_i_7 
       (.I0(rdel_reg_r2_448_511_36_38_n_1),
        .I1(rdel_reg_r2_384_447_36_38_n_1),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_320_383_36_38_n_1),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_256_319_36_38_n_1),
        .O(\rq[37]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \rq[38]_i_1 
       (.I0(rq214_out),
        .I1(rq1[38]),
        .I2(\rq[44]_i_4_n_0 ),
        .I3(rq2),
        .I4(rq15_out[38]),
        .O(\rq[38]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[38]_i_4 
       (.I0(rdel_reg_r1_192_255_36_38_n_2),
        .I1(rdel_reg_r1_128_191_36_38_n_2),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_64_127_36_38_n_2),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_0_63_36_38_n_2),
        .O(\rq[38]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[38]_i_5 
       (.I0(rdel_reg_r1_448_511_36_38_n_2),
        .I1(rdel_reg_r1_384_447_36_38_n_2),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_320_383_36_38_n_2),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_256_319_36_38_n_2),
        .O(\rq[38]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[38]_i_6 
       (.I0(rdel_reg_r2_192_255_36_38_n_2),
        .I1(rdel_reg_r2_128_191_36_38_n_2),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_64_127_36_38_n_2),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_0_63_36_38_n_2),
        .O(\rq[38]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[38]_i_7 
       (.I0(rdel_reg_r2_448_511_36_38_n_2),
        .I1(rdel_reg_r2_384_447_36_38_n_2),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_320_383_36_38_n_2),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_256_319_36_38_n_2),
        .O(\rq[38]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \rq[39]_i_1 
       (.I0(rq214_out),
        .I1(rq1[39]),
        .I2(\rq[44]_i_4_n_0 ),
        .I3(rq2),
        .I4(rq15_out[39]),
        .O(\rq[39]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[39]_i_4 
       (.I0(rdel_reg_r1_192_255_39_41_n_0),
        .I1(rdel_reg_r1_128_191_39_41_n_0),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_64_127_39_41_n_0),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_0_63_39_41_n_0),
        .O(\rq[39]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[39]_i_5 
       (.I0(rdel_reg_r1_448_511_39_41_n_0),
        .I1(rdel_reg_r1_384_447_39_41_n_0),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_320_383_39_41_n_0),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_256_319_39_41_n_0),
        .O(\rq[39]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[39]_i_6 
       (.I0(rdel_reg_r2_192_255_39_41_n_0),
        .I1(rdel_reg_r2_128_191_39_41_n_0),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_64_127_39_41_n_0),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_0_63_39_41_n_0),
        .O(\rq[39]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[39]_i_7 
       (.I0(rdel_reg_r2_448_511_39_41_n_0),
        .I1(rdel_reg_r2_384_447_39_41_n_0),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_320_383_39_41_n_0),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_256_319_39_41_n_0),
        .O(\rq[39]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \rq[3]_i_1 
       (.I0(rq214_out),
        .I1(rq1[3]),
        .I2(\rq[44]_i_4_n_0 ),
        .I3(rq2),
        .I4(rq15_out[3]),
        .O(\rq[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[3]_i_4 
       (.I0(rdel_reg_r1_192_255_3_5_n_0),
        .I1(rdel_reg_r1_128_191_3_5_n_0),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_64_127_3_5_n_0),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_0_63_3_5_n_0),
        .O(\rq[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[3]_i_5 
       (.I0(rdel_reg_r1_448_511_3_5_n_0),
        .I1(rdel_reg_r1_384_447_3_5_n_0),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_320_383_3_5_n_0),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_256_319_3_5_n_0),
        .O(\rq[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[3]_i_6 
       (.I0(rdel_reg_r2_192_255_3_5_n_0),
        .I1(rdel_reg_r2_128_191_3_5_n_0),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_64_127_3_5_n_0),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_0_63_3_5_n_0),
        .O(\rq[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[3]_i_7 
       (.I0(rdel_reg_r2_448_511_3_5_n_0),
        .I1(rdel_reg_r2_384_447_3_5_n_0),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_320_383_3_5_n_0),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_256_319_3_5_n_0),
        .O(\rq[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \rq[40]_i_1 
       (.I0(rq214_out),
        .I1(rq1[40]),
        .I2(\rq[44]_i_4_n_0 ),
        .I3(rq2),
        .I4(rq15_out[40]),
        .O(\rq[40]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[40]_i_4 
       (.I0(rdel_reg_r1_192_255_39_41_n_1),
        .I1(rdel_reg_r1_128_191_39_41_n_1),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_64_127_39_41_n_1),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_0_63_39_41_n_1),
        .O(\rq[40]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[40]_i_5 
       (.I0(rdel_reg_r1_448_511_39_41_n_1),
        .I1(rdel_reg_r1_384_447_39_41_n_1),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_320_383_39_41_n_1),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_256_319_39_41_n_1),
        .O(\rq[40]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[40]_i_6 
       (.I0(rdel_reg_r2_192_255_39_41_n_1),
        .I1(rdel_reg_r2_128_191_39_41_n_1),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_64_127_39_41_n_1),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_0_63_39_41_n_1),
        .O(\rq[40]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[40]_i_7 
       (.I0(rdel_reg_r2_448_511_39_41_n_1),
        .I1(rdel_reg_r2_384_447_39_41_n_1),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_320_383_39_41_n_1),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_256_319_39_41_n_1),
        .O(\rq[40]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \rq[41]_i_1 
       (.I0(rq214_out),
        .I1(rq1[41]),
        .I2(\rq[44]_i_4_n_0 ),
        .I3(rq2),
        .I4(rq15_out[41]),
        .O(\rq[41]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[41]_i_4 
       (.I0(rdel_reg_r1_192_255_39_41_n_2),
        .I1(rdel_reg_r1_128_191_39_41_n_2),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_64_127_39_41_n_2),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_0_63_39_41_n_2),
        .O(\rq[41]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[41]_i_5 
       (.I0(rdel_reg_r1_448_511_39_41_n_2),
        .I1(rdel_reg_r1_384_447_39_41_n_2),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_320_383_39_41_n_2),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_256_319_39_41_n_2),
        .O(\rq[41]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[41]_i_6 
       (.I0(rdel_reg_r2_192_255_39_41_n_2),
        .I1(rdel_reg_r2_128_191_39_41_n_2),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_64_127_39_41_n_2),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_0_63_39_41_n_2),
        .O(\rq[41]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[41]_i_7 
       (.I0(rdel_reg_r2_448_511_39_41_n_2),
        .I1(rdel_reg_r2_384_447_39_41_n_2),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_320_383_39_41_n_2),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_256_319_39_41_n_2),
        .O(\rq[41]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \rq[42]_i_1 
       (.I0(rq214_out),
        .I1(rq1[42]),
        .I2(\rq[44]_i_4_n_0 ),
        .I3(rq2),
        .I4(rq15_out[42]),
        .O(\rq[42]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[42]_i_4 
       (.I0(rdel_reg_r1_192_255_42_44_n_0),
        .I1(rdel_reg_r1_128_191_42_44_n_0),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_64_127_42_44_n_0),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_0_63_42_44_n_0),
        .O(\rq[42]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[42]_i_5 
       (.I0(rdel_reg_r1_448_511_42_44_n_0),
        .I1(rdel_reg_r1_384_447_42_44_n_0),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_320_383_42_44_n_0),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_256_319_42_44_n_0),
        .O(\rq[42]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[42]_i_6 
       (.I0(rdel_reg_r2_192_255_42_44_n_0),
        .I1(rdel_reg_r2_128_191_42_44_n_0),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_64_127_42_44_n_0),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_0_63_42_44_n_0),
        .O(\rq[42]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[42]_i_7 
       (.I0(rdel_reg_r2_448_511_42_44_n_0),
        .I1(rdel_reg_r2_384_447_42_44_n_0),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_320_383_42_44_n_0),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_256_319_42_44_n_0),
        .O(\rq[42]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \rq[43]_i_1 
       (.I0(rq214_out),
        .I1(rq1[43]),
        .I2(\rq[44]_i_4_n_0 ),
        .I3(rq2),
        .I4(rq15_out[43]),
        .O(\rq[43]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[43]_i_4 
       (.I0(rdel_reg_r1_192_255_42_44_n_1),
        .I1(rdel_reg_r1_128_191_42_44_n_1),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_64_127_42_44_n_1),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_0_63_42_44_n_1),
        .O(\rq[43]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[43]_i_5 
       (.I0(rdel_reg_r1_448_511_42_44_n_1),
        .I1(rdel_reg_r1_384_447_42_44_n_1),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_320_383_42_44_n_1),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_256_319_42_44_n_1),
        .O(\rq[43]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[43]_i_6 
       (.I0(rdel_reg_r2_192_255_42_44_n_1),
        .I1(rdel_reg_r2_128_191_42_44_n_1),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_64_127_42_44_n_1),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_0_63_42_44_n_1),
        .O(\rq[43]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[43]_i_7 
       (.I0(rdel_reg_r2_448_511_42_44_n_1),
        .I1(rdel_reg_r2_384_447_42_44_n_1),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_320_383_42_44_n_1),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_256_319_42_44_n_1),
        .O(\rq[43]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \rq[44]_i_1 
       (.I0(rq214_out),
        .I1(rq1[44]),
        .I2(\rq[44]_i_4_n_0 ),
        .I3(rq2),
        .I4(rq15_out[44]),
        .O(\rq[44]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rq[44]_i_10 
       (.I0(\fcnt_reg_n_0_[5] ),
        .I1(\fcnt_reg_n_0_[4] ),
        .I2(p_0_in0),
        .I3(\fcnt_reg_n_0_[6] ),
        .O(\rq[44]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h01FFFFFF)) 
    \rq[44]_i_11 
       (.I0(r_idx0_return_carry_n_7),
        .I1(r_idx0_return_carry_n_6),
        .I2(r_idx0_return_carry_n_5),
        .I3(r_idx0_return_carry__0_n_7),
        .I4(r_idx0_return_carry_n_4),
        .O(\rq[44]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[44]_i_12 
       (.I0(rdel_reg_r2_192_255_42_44_n_2),
        .I1(rdel_reg_r2_128_191_42_44_n_2),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_64_127_42_44_n_2),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_0_63_42_44_n_2),
        .O(\rq[44]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[44]_i_13 
       (.I0(rdel_reg_r2_448_511_42_44_n_2),
        .I1(rdel_reg_r2_384_447_42_44_n_2),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_320_383_42_44_n_2),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_256_319_42_44_n_2),
        .O(\rq[44]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFEEEEEEE)) 
    \rq[44]_i_14 
       (.I0(xa[4]),
        .I1(xa[3]),
        .I2(xa[1]),
        .I3(\xa_reg[0]_rep_n_0 ),
        .I4(\xa_reg[2]_rep_n_0 ),
        .O(\rq[44]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0202020202020208)) 
    \rq[44]_i_2 
       (.I0(\rq[44]_i_7_n_0 ),
        .I1(xa[8]),
        .I2(xa[9]),
        .I3(xa[7]),
        .I4(xa[6]),
        .I5(r_idx0_return_carry_i_6_n_0),
        .O(rq214_out));
  LUT5 #(
    .INIT(32'h00004000)) 
    \rq[44]_i_4 
       (.I0(\fcnt_reg_n_0_[2] ),
        .I1(\fcnt_reg_n_0_[3] ),
        .I2(\fcnt_reg_n_0_[1] ),
        .I3(\fcnt_reg_n_0_[0] ),
        .I4(\rq[44]_i_10_n_0 ),
        .O(\rq[44]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \rq[44]_i_5 
       (.I0(r_idx0_return_carry__0_n_6),
        .I1(r_idx0_return_carry__0_n_5),
        .I2(r_idx0_return_carry__0_n_4),
        .I3(\rq[44]_i_11_n_0 ),
        .O(rq2));
  LUT6 #(
    .INIT(64'h777777EE777F7FEE)) 
    \rq[44]_i_7 
       (.I0(xa[7]),
        .I1(xa[6]),
        .I2(rdel_reg_r1_0_63_0_2_i_3_n_0),
        .I3(xa[5]),
        .I4(\rq[44]_i_14_n_0 ),
        .I5(rdel_reg_r1_0_63_30_32_i_1_n_0),
        .O(\rq[44]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[44]_i_8 
       (.I0(rdel_reg_r1_192_255_42_44_n_2),
        .I1(rdel_reg_r1_128_191_42_44_n_2),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_64_127_42_44_n_2),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_0_63_42_44_n_2),
        .O(\rq[44]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[44]_i_9 
       (.I0(rdel_reg_r1_448_511_42_44_n_2),
        .I1(rdel_reg_r1_384_447_42_44_n_2),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_320_383_42_44_n_2),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_256_319_42_44_n_2),
        .O(\rq[44]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \rq[4]_i_1 
       (.I0(rq214_out),
        .I1(rq1[4]),
        .I2(\rq[44]_i_4_n_0 ),
        .I3(rq2),
        .I4(rq15_out[4]),
        .O(\rq[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[4]_i_4 
       (.I0(rdel_reg_r1_192_255_3_5_n_1),
        .I1(rdel_reg_r1_128_191_3_5_n_1),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_64_127_3_5_n_1),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_0_63_3_5_n_1),
        .O(\rq[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[4]_i_5 
       (.I0(rdel_reg_r1_448_511_3_5_n_1),
        .I1(rdel_reg_r1_384_447_3_5_n_1),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_320_383_3_5_n_1),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_256_319_3_5_n_1),
        .O(\rq[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[4]_i_6 
       (.I0(rdel_reg_r2_192_255_3_5_n_1),
        .I1(rdel_reg_r2_128_191_3_5_n_1),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_64_127_3_5_n_1),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_0_63_3_5_n_1),
        .O(\rq[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[4]_i_7 
       (.I0(rdel_reg_r2_448_511_3_5_n_1),
        .I1(rdel_reg_r2_384_447_3_5_n_1),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_320_383_3_5_n_1),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_256_319_3_5_n_1),
        .O(\rq[4]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \rq[5]_i_1 
       (.I0(rq214_out),
        .I1(rq1[5]),
        .I2(\rq[44]_i_4_n_0 ),
        .I3(rq2),
        .I4(rq15_out[5]),
        .O(\rq[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[5]_i_4 
       (.I0(rdel_reg_r1_192_255_3_5_n_2),
        .I1(rdel_reg_r1_128_191_3_5_n_2),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_64_127_3_5_n_2),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_0_63_3_5_n_2),
        .O(\rq[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[5]_i_5 
       (.I0(rdel_reg_r1_448_511_3_5_n_2),
        .I1(rdel_reg_r1_384_447_3_5_n_2),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_320_383_3_5_n_2),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_256_319_3_5_n_2),
        .O(\rq[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[5]_i_6 
       (.I0(rdel_reg_r2_192_255_3_5_n_2),
        .I1(rdel_reg_r2_128_191_3_5_n_2),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_64_127_3_5_n_2),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_0_63_3_5_n_2),
        .O(\rq[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[5]_i_7 
       (.I0(rdel_reg_r2_448_511_3_5_n_2),
        .I1(rdel_reg_r2_384_447_3_5_n_2),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_320_383_3_5_n_2),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_256_319_3_5_n_2),
        .O(\rq[5]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \rq[6]_i_1 
       (.I0(rq214_out),
        .I1(rq1[6]),
        .I2(\rq[44]_i_4_n_0 ),
        .I3(rq2),
        .I4(rq15_out[6]),
        .O(\rq[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[6]_i_4 
       (.I0(rdel_reg_r1_192_255_6_8_n_0),
        .I1(rdel_reg_r1_128_191_6_8_n_0),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_64_127_6_8_n_0),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_0_63_6_8_n_0),
        .O(\rq[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[6]_i_5 
       (.I0(rdel_reg_r1_448_511_6_8_n_0),
        .I1(rdel_reg_r1_384_447_6_8_n_0),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_320_383_6_8_n_0),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_256_319_6_8_n_0),
        .O(\rq[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[6]_i_6 
       (.I0(rdel_reg_r2_192_255_6_8_n_0),
        .I1(rdel_reg_r2_128_191_6_8_n_0),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_64_127_6_8_n_0),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_0_63_6_8_n_0),
        .O(\rq[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[6]_i_7 
       (.I0(rdel_reg_r2_448_511_6_8_n_0),
        .I1(rdel_reg_r2_384_447_6_8_n_0),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_320_383_6_8_n_0),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_256_319_6_8_n_0),
        .O(\rq[6]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \rq[7]_i_1 
       (.I0(rq214_out),
        .I1(rq1[7]),
        .I2(\rq[44]_i_4_n_0 ),
        .I3(rq2),
        .I4(rq15_out[7]),
        .O(\rq[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[7]_i_4 
       (.I0(rdel_reg_r1_192_255_6_8_n_1),
        .I1(rdel_reg_r1_128_191_6_8_n_1),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_64_127_6_8_n_1),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_0_63_6_8_n_1),
        .O(\rq[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[7]_i_5 
       (.I0(rdel_reg_r1_448_511_6_8_n_1),
        .I1(rdel_reg_r1_384_447_6_8_n_1),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_320_383_6_8_n_1),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_256_319_6_8_n_1),
        .O(\rq[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[7]_i_6 
       (.I0(rdel_reg_r2_192_255_6_8_n_1),
        .I1(rdel_reg_r2_128_191_6_8_n_1),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_64_127_6_8_n_1),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_0_63_6_8_n_1),
        .O(\rq[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[7]_i_7 
       (.I0(rdel_reg_r2_448_511_6_8_n_1),
        .I1(rdel_reg_r2_384_447_6_8_n_1),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_320_383_6_8_n_1),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_256_319_6_8_n_1),
        .O(\rq[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \rq[8]_i_1 
       (.I0(rq214_out),
        .I1(rq1[8]),
        .I2(\rq[44]_i_4_n_0 ),
        .I3(rq2),
        .I4(rq15_out[8]),
        .O(\rq[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[8]_i_4 
       (.I0(rdel_reg_r1_192_255_6_8_n_2),
        .I1(rdel_reg_r1_128_191_6_8_n_2),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_64_127_6_8_n_2),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_0_63_6_8_n_2),
        .O(\rq[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[8]_i_5 
       (.I0(rdel_reg_r1_448_511_6_8_n_2),
        .I1(rdel_reg_r1_384_447_6_8_n_2),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_320_383_6_8_n_2),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_256_319_6_8_n_2),
        .O(\rq[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[8]_i_6 
       (.I0(rdel_reg_r2_192_255_6_8_n_2),
        .I1(rdel_reg_r2_128_191_6_8_n_2),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_64_127_6_8_n_2),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_0_63_6_8_n_2),
        .O(\rq[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[8]_i_7 
       (.I0(rdel_reg_r2_448_511_6_8_n_2),
        .I1(rdel_reg_r2_384_447_6_8_n_2),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_320_383_6_8_n_2),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_256_319_6_8_n_2),
        .O(\rq[8]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \rq[9]_i_1 
       (.I0(rq214_out),
        .I1(rq1[9]),
        .I2(\rq[44]_i_4_n_0 ),
        .I3(rq2),
        .I4(rq15_out[9]),
        .O(\rq[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[9]_i_4 
       (.I0(rdel_reg_r1_192_255_9_11_n_0),
        .I1(rdel_reg_r1_128_191_9_11_n_0),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_64_127_9_11_n_0),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_0_63_9_11_n_0),
        .O(\rq[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[9]_i_5 
       (.I0(rdel_reg_r1_448_511_9_11_n_0),
        .I1(rdel_reg_r1_384_447_9_11_n_0),
        .I2(r_idx0_return_carry__0_i_9_n_0),
        .I3(rdel_reg_r1_320_383_9_11_n_0),
        .I4(r_idx0_return_carry_i_7_n_0),
        .I5(rdel_reg_r1_256_319_9_11_n_0),
        .O(\rq[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[9]_i_6 
       (.I0(rdel_reg_r2_192_255_9_11_n_0),
        .I1(rdel_reg_r2_128_191_9_11_n_0),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_64_127_9_11_n_0),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_0_63_9_11_n_0),
        .O(\rq[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rq[9]_i_7 
       (.I0(rdel_reg_r2_448_511_9_11_n_0),
        .I1(rdel_reg_r2_384_447_9_11_n_0),
        .I2(r_idx0_return_carry__0_n_7),
        .I3(rdel_reg_r2_320_383_9_11_n_0),
        .I4(r_idx0_return_carry_n_4),
        .I5(rdel_reg_r2_256_319_9_11_n_0),
        .O(\rq[9]_i_7_n_0 ));
  FDRE \rq_reg[0] 
       (.C(clk),
        .CE(\rp[2]_i_1_n_0 ),
        .D(\rq[0]_i_1_n_0 ),
        .Q(\rq_reg_n_0_[0] ),
        .R(1'b0));
  MUXF7 \rq_reg[0]_i_2 
       (.I0(\rq[0]_i_4_n_0 ),
        .I1(\rq[0]_i_5_n_0 ),
        .O(rq1[0]),
        .S(r_idx0_return_carry__0_i_2_n_0));
  MUXF7 \rq_reg[0]_i_3 
       (.I0(\rq[0]_i_6_n_0 ),
        .I1(\rq[0]_i_7_n_0 ),
        .O(rq15_out[0]),
        .S(r_idx0_return_carry__0_n_6));
  FDRE \rq_reg[10] 
       (.C(clk),
        .CE(\rp[2]_i_1_n_0 ),
        .D(\rq[10]_i_1_n_0 ),
        .Q(data1[3]),
        .R(1'b0));
  MUXF7 \rq_reg[10]_i_2 
       (.I0(\rq[10]_i_4_n_0 ),
        .I1(\rq[10]_i_5_n_0 ),
        .O(rq1[10]),
        .S(r_idx0_return_carry__0_i_2_n_0));
  MUXF7 \rq_reg[10]_i_3 
       (.I0(\rq[10]_i_6_n_0 ),
        .I1(\rq[10]_i_7_n_0 ),
        .O(rq15_out[10]),
        .S(r_idx0_return_carry__0_n_6));
  FDRE \rq_reg[11] 
       (.C(clk),
        .CE(\rp[2]_i_1_n_0 ),
        .D(\rq[11]_i_1_n_0 ),
        .Q(data1[4]),
        .R(1'b0));
  MUXF7 \rq_reg[11]_i_2 
       (.I0(\rq[11]_i_4_n_0 ),
        .I1(\rq[11]_i_5_n_0 ),
        .O(rq1[11]),
        .S(r_idx0_return_carry__0_i_2_n_0));
  MUXF7 \rq_reg[11]_i_3 
       (.I0(\rq[11]_i_6_n_0 ),
        .I1(\rq[11]_i_7_n_0 ),
        .O(rq15_out[11]),
        .S(r_idx0_return_carry__0_n_6));
  FDRE \rq_reg[12] 
       (.C(clk),
        .CE(\rp[2]_i_1_n_0 ),
        .D(\rq[12]_i_1_n_0 ),
        .Q(data1[5]),
        .R(1'b0));
  MUXF7 \rq_reg[12]_i_2 
       (.I0(\rq[12]_i_4_n_0 ),
        .I1(\rq[12]_i_5_n_0 ),
        .O(rq1[12]),
        .S(r_idx0_return_carry__0_i_2_n_0));
  MUXF7 \rq_reg[12]_i_3 
       (.I0(\rq[12]_i_6_n_0 ),
        .I1(\rq[12]_i_7_n_0 ),
        .O(rq15_out[12]),
        .S(r_idx0_return_carry__0_n_6));
  FDRE \rq_reg[13] 
       (.C(clk),
        .CE(\rp[2]_i_1_n_0 ),
        .D(\rq[13]_i_1_n_0 ),
        .Q(data1[6]),
        .R(1'b0));
  MUXF7 \rq_reg[13]_i_2 
       (.I0(\rq[13]_i_4_n_0 ),
        .I1(\rq[13]_i_5_n_0 ),
        .O(rq1[13]),
        .S(r_idx0_return_carry__0_i_2_n_0));
  MUXF7 \rq_reg[13]_i_3 
       (.I0(\rq[13]_i_6_n_0 ),
        .I1(\rq[13]_i_7_n_0 ),
        .O(rq15_out[13]),
        .S(r_idx0_return_carry__0_n_6));
  FDRE \rq_reg[14] 
       (.C(clk),
        .CE(\rp[2]_i_1_n_0 ),
        .D(\rq[14]_i_1_n_0 ),
        .Q(data2[0]),
        .R(1'b0));
  MUXF7 \rq_reg[14]_i_2 
       (.I0(\rq[14]_i_4_n_0 ),
        .I1(\rq[14]_i_5_n_0 ),
        .O(rq1[14]),
        .S(r_idx0_return_carry__0_i_2_n_0));
  MUXF7 \rq_reg[14]_i_3 
       (.I0(\rq[14]_i_6_n_0 ),
        .I1(\rq[14]_i_7_n_0 ),
        .O(rq15_out[14]),
        .S(r_idx0_return_carry__0_n_6));
  FDRE \rq_reg[15] 
       (.C(clk),
        .CE(\rp[2]_i_1_n_0 ),
        .D(\rq[15]_i_1_n_0 ),
        .Q(data2[1]),
        .R(1'b0));
  MUXF7 \rq_reg[15]_i_2 
       (.I0(\rq[15]_i_4_n_0 ),
        .I1(\rq[15]_i_5_n_0 ),
        .O(rq1[15]),
        .S(r_idx0_return_carry__0_i_2_n_0));
  MUXF7 \rq_reg[15]_i_3 
       (.I0(\rq[15]_i_6_n_0 ),
        .I1(\rq[15]_i_7_n_0 ),
        .O(rq15_out[15]),
        .S(r_idx0_return_carry__0_n_6));
  FDRE \rq_reg[16] 
       (.C(clk),
        .CE(\rp[2]_i_1_n_0 ),
        .D(\rq[16]_i_1_n_0 ),
        .Q(data2[2]),
        .R(1'b0));
  MUXF7 \rq_reg[16]_i_2 
       (.I0(\rq[16]_i_4_n_0 ),
        .I1(\rq[16]_i_5_n_0 ),
        .O(rq1[16]),
        .S(r_idx0_return_carry__0_i_2_n_0));
  MUXF7 \rq_reg[16]_i_3 
       (.I0(\rq[16]_i_6_n_0 ),
        .I1(\rq[16]_i_7_n_0 ),
        .O(rq15_out[16]),
        .S(r_idx0_return_carry__0_n_6));
  FDRE \rq_reg[17] 
       (.C(clk),
        .CE(\rp[2]_i_1_n_0 ),
        .D(\rq[17]_i_1_n_0 ),
        .Q(data2[3]),
        .R(1'b0));
  MUXF7 \rq_reg[17]_i_2 
       (.I0(\rq[17]_i_4_n_0 ),
        .I1(\rq[17]_i_5_n_0 ),
        .O(rq1[17]),
        .S(r_idx0_return_carry__0_i_2_n_0));
  MUXF7 \rq_reg[17]_i_3 
       (.I0(\rq[17]_i_6_n_0 ),
        .I1(\rq[17]_i_7_n_0 ),
        .O(rq15_out[17]),
        .S(r_idx0_return_carry__0_n_6));
  FDRE \rq_reg[18] 
       (.C(clk),
        .CE(\rp[2]_i_1_n_0 ),
        .D(\rq[18]_i_1_n_0 ),
        .Q(data2[4]),
        .R(1'b0));
  MUXF7 \rq_reg[18]_i_2 
       (.I0(\rq[18]_i_4_n_0 ),
        .I1(\rq[18]_i_5_n_0 ),
        .O(rq1[18]),
        .S(r_idx0_return_carry__0_i_2_n_0));
  MUXF7 \rq_reg[18]_i_3 
       (.I0(\rq[18]_i_6_n_0 ),
        .I1(\rq[18]_i_7_n_0 ),
        .O(rq15_out[18]),
        .S(r_idx0_return_carry__0_n_6));
  FDRE \rq_reg[19] 
       (.C(clk),
        .CE(\rp[2]_i_1_n_0 ),
        .D(\rq[19]_i_1_n_0 ),
        .Q(data2[5]),
        .R(1'b0));
  MUXF7 \rq_reg[19]_i_2 
       (.I0(\rq[19]_i_4_n_0 ),
        .I1(\rq[19]_i_5_n_0 ),
        .O(rq1[19]),
        .S(r_idx0_return_carry__0_i_2_n_0));
  MUXF7 \rq_reg[19]_i_3 
       (.I0(\rq[19]_i_6_n_0 ),
        .I1(\rq[19]_i_7_n_0 ),
        .O(rq15_out[19]),
        .S(r_idx0_return_carry__0_n_6));
  FDRE \rq_reg[1] 
       (.C(clk),
        .CE(\rp[2]_i_1_n_0 ),
        .D(\rq[1]_i_1_n_0 ),
        .Q(\rq_reg_n_0_[1] ),
        .R(1'b0));
  MUXF7 \rq_reg[1]_i_2 
       (.I0(\rq[1]_i_4_n_0 ),
        .I1(\rq[1]_i_5_n_0 ),
        .O(rq1[1]),
        .S(r_idx0_return_carry__0_i_2_n_0));
  MUXF7 \rq_reg[1]_i_3 
       (.I0(\rq[1]_i_6_n_0 ),
        .I1(\rq[1]_i_7_n_0 ),
        .O(rq15_out[1]),
        .S(r_idx0_return_carry__0_n_6));
  FDRE \rq_reg[20] 
       (.C(clk),
        .CE(\rp[2]_i_1_n_0 ),
        .D(\rq[20]_i_1_n_0 ),
        .Q(data2[6]),
        .R(1'b0));
  MUXF7 \rq_reg[20]_i_2 
       (.I0(\rq[20]_i_4_n_0 ),
        .I1(\rq[20]_i_5_n_0 ),
        .O(rq1[20]),
        .S(r_idx0_return_carry__0_i_2_n_0));
  MUXF7 \rq_reg[20]_i_3 
       (.I0(\rq[20]_i_6_n_0 ),
        .I1(\rq[20]_i_7_n_0 ),
        .O(rq15_out[20]),
        .S(r_idx0_return_carry__0_n_6));
  FDRE \rq_reg[21] 
       (.C(clk),
        .CE(\rp[2]_i_1_n_0 ),
        .D(\rq[21]_i_1_n_0 ),
        .Q(data3[0]),
        .R(1'b0));
  MUXF7 \rq_reg[21]_i_2 
       (.I0(\rq[21]_i_4_n_0 ),
        .I1(\rq[21]_i_5_n_0 ),
        .O(rq1[21]),
        .S(r_idx0_return_carry__0_i_2_n_0));
  MUXF7 \rq_reg[21]_i_3 
       (.I0(\rq[21]_i_6_n_0 ),
        .I1(\rq[21]_i_7_n_0 ),
        .O(rq15_out[21]),
        .S(r_idx0_return_carry__0_n_6));
  FDRE \rq_reg[22] 
       (.C(clk),
        .CE(\rp[2]_i_1_n_0 ),
        .D(\rq[22]_i_1_n_0 ),
        .Q(data3[1]),
        .R(1'b0));
  MUXF7 \rq_reg[22]_i_2 
       (.I0(\rq[22]_i_4_n_0 ),
        .I1(\rq[22]_i_5_n_0 ),
        .O(rq1[22]),
        .S(r_idx0_return_carry__0_i_2_n_0));
  MUXF7 \rq_reg[22]_i_3 
       (.I0(\rq[22]_i_6_n_0 ),
        .I1(\rq[22]_i_7_n_0 ),
        .O(rq15_out[22]),
        .S(r_idx0_return_carry__0_n_6));
  FDRE \rq_reg[23] 
       (.C(clk),
        .CE(\rp[2]_i_1_n_0 ),
        .D(\rq[23]_i_1_n_0 ),
        .Q(data3[2]),
        .R(1'b0));
  MUXF7 \rq_reg[23]_i_2 
       (.I0(\rq[23]_i_4_n_0 ),
        .I1(\rq[23]_i_5_n_0 ),
        .O(rq1[23]),
        .S(r_idx0_return_carry__0_i_2_n_0));
  MUXF7 \rq_reg[23]_i_3 
       (.I0(\rq[23]_i_6_n_0 ),
        .I1(\rq[23]_i_7_n_0 ),
        .O(rq15_out[23]),
        .S(r_idx0_return_carry__0_n_6));
  FDRE \rq_reg[24] 
       (.C(clk),
        .CE(\rp[2]_i_1_n_0 ),
        .D(\rq[24]_i_1_n_0 ),
        .Q(data3[3]),
        .R(1'b0));
  MUXF7 \rq_reg[24]_i_2 
       (.I0(\rq[24]_i_4_n_0 ),
        .I1(\rq[24]_i_5_n_0 ),
        .O(rq1[24]),
        .S(r_idx0_return_carry__0_i_2_n_0));
  MUXF7 \rq_reg[24]_i_3 
       (.I0(\rq[24]_i_6_n_0 ),
        .I1(\rq[24]_i_7_n_0 ),
        .O(rq15_out[24]),
        .S(r_idx0_return_carry__0_n_6));
  FDRE \rq_reg[25] 
       (.C(clk),
        .CE(\rp[2]_i_1_n_0 ),
        .D(\rq[25]_i_1_n_0 ),
        .Q(data3[4]),
        .R(1'b0));
  MUXF7 \rq_reg[25]_i_2 
       (.I0(\rq[25]_i_4_n_0 ),
        .I1(\rq[25]_i_5_n_0 ),
        .O(rq1[25]),
        .S(r_idx0_return_carry__0_i_2_n_0));
  MUXF7 \rq_reg[25]_i_3 
       (.I0(\rq[25]_i_6_n_0 ),
        .I1(\rq[25]_i_7_n_0 ),
        .O(rq15_out[25]),
        .S(r_idx0_return_carry__0_n_6));
  FDRE \rq_reg[26] 
       (.C(clk),
        .CE(\rp[2]_i_1_n_0 ),
        .D(\rq[26]_i_1_n_0 ),
        .Q(data3[5]),
        .R(1'b0));
  MUXF7 \rq_reg[26]_i_2 
       (.I0(\rq[26]_i_4_n_0 ),
        .I1(\rq[26]_i_5_n_0 ),
        .O(rq1[26]),
        .S(r_idx0_return_carry__0_i_2_n_0));
  MUXF7 \rq_reg[26]_i_3 
       (.I0(\rq[26]_i_6_n_0 ),
        .I1(\rq[26]_i_7_n_0 ),
        .O(rq15_out[26]),
        .S(r_idx0_return_carry__0_n_6));
  FDRE \rq_reg[27] 
       (.C(clk),
        .CE(\rp[2]_i_1_n_0 ),
        .D(\rq[27]_i_1_n_0 ),
        .Q(data3[6]),
        .R(1'b0));
  MUXF7 \rq_reg[27]_i_2 
       (.I0(\rq[27]_i_4_n_0 ),
        .I1(\rq[27]_i_5_n_0 ),
        .O(rq1[27]),
        .S(r_idx0_return_carry__0_i_2_n_0));
  MUXF7 \rq_reg[27]_i_3 
       (.I0(\rq[27]_i_6_n_0 ),
        .I1(\rq[27]_i_7_n_0 ),
        .O(rq15_out[27]),
        .S(r_idx0_return_carry__0_n_6));
  FDRE \rq_reg[28] 
       (.C(clk),
        .CE(\rp[2]_i_1_n_0 ),
        .D(\rq[28]_i_1_n_0 ),
        .Q(data4[0]),
        .R(1'b0));
  MUXF7 \rq_reg[28]_i_2 
       (.I0(\rq[28]_i_4_n_0 ),
        .I1(\rq[28]_i_5_n_0 ),
        .O(rq1[28]),
        .S(r_idx0_return_carry__0_i_2_n_0));
  MUXF7 \rq_reg[28]_i_3 
       (.I0(\rq[28]_i_6_n_0 ),
        .I1(\rq[28]_i_7_n_0 ),
        .O(rq15_out[28]),
        .S(r_idx0_return_carry__0_n_6));
  FDRE \rq_reg[29] 
       (.C(clk),
        .CE(\rp[2]_i_1_n_0 ),
        .D(\rq[29]_i_1_n_0 ),
        .Q(data4[1]),
        .R(1'b0));
  MUXF7 \rq_reg[29]_i_2 
       (.I0(\rq[29]_i_4_n_0 ),
        .I1(\rq[29]_i_5_n_0 ),
        .O(rq1[29]),
        .S(r_idx0_return_carry__0_i_2_n_0));
  MUXF7 \rq_reg[29]_i_3 
       (.I0(\rq[29]_i_6_n_0 ),
        .I1(\rq[29]_i_7_n_0 ),
        .O(rq15_out[29]),
        .S(r_idx0_return_carry__0_n_6));
  FDRE \rq_reg[2] 
       (.C(clk),
        .CE(\rp[2]_i_1_n_0 ),
        .D(\rq[2]_i_1_n_0 ),
        .Q(\rq_reg_n_0_[2] ),
        .R(1'b0));
  MUXF7 \rq_reg[2]_i_2 
       (.I0(\rq[2]_i_4_n_0 ),
        .I1(\rq[2]_i_5_n_0 ),
        .O(rq1[2]),
        .S(r_idx0_return_carry__0_i_2_n_0));
  MUXF7 \rq_reg[2]_i_3 
       (.I0(\rq[2]_i_6_n_0 ),
        .I1(\rq[2]_i_7_n_0 ),
        .O(rq15_out[2]),
        .S(r_idx0_return_carry__0_n_6));
  FDRE \rq_reg[30] 
       (.C(clk),
        .CE(\rp[2]_i_1_n_0 ),
        .D(\rq[30]_i_1_n_0 ),
        .Q(data4[2]),
        .R(1'b0));
  MUXF7 \rq_reg[30]_i_2 
       (.I0(\rq[30]_i_4_n_0 ),
        .I1(\rq[30]_i_5_n_0 ),
        .O(rq1[30]),
        .S(r_idx0_return_carry__0_i_2_n_0));
  MUXF7 \rq_reg[30]_i_3 
       (.I0(\rq[30]_i_6_n_0 ),
        .I1(\rq[30]_i_7_n_0 ),
        .O(rq15_out[30]),
        .S(r_idx0_return_carry__0_n_6));
  FDRE \rq_reg[31] 
       (.C(clk),
        .CE(\rp[2]_i_1_n_0 ),
        .D(\rq[31]_i_1_n_0 ),
        .Q(data4[3]),
        .R(1'b0));
  MUXF7 \rq_reg[31]_i_2 
       (.I0(\rq[31]_i_4_n_0 ),
        .I1(\rq[31]_i_5_n_0 ),
        .O(rq1[31]),
        .S(r_idx0_return_carry__0_i_2_n_0));
  MUXF7 \rq_reg[31]_i_3 
       (.I0(\rq[31]_i_6_n_0 ),
        .I1(\rq[31]_i_7_n_0 ),
        .O(rq15_out[31]),
        .S(r_idx0_return_carry__0_n_6));
  FDRE \rq_reg[32] 
       (.C(clk),
        .CE(\rp[2]_i_1_n_0 ),
        .D(\rq[32]_i_1_n_0 ),
        .Q(data4[4]),
        .R(1'b0));
  MUXF7 \rq_reg[32]_i_2 
       (.I0(\rq[32]_i_4_n_0 ),
        .I1(\rq[32]_i_5_n_0 ),
        .O(rq1[32]),
        .S(r_idx0_return_carry__0_i_2_n_0));
  MUXF7 \rq_reg[32]_i_3 
       (.I0(\rq[32]_i_6_n_0 ),
        .I1(\rq[32]_i_7_n_0 ),
        .O(rq15_out[32]),
        .S(r_idx0_return_carry__0_n_6));
  FDRE \rq_reg[33] 
       (.C(clk),
        .CE(\rp[2]_i_1_n_0 ),
        .D(\rq[33]_i_1_n_0 ),
        .Q(data4[5]),
        .R(1'b0));
  MUXF7 \rq_reg[33]_i_2 
       (.I0(\rq[33]_i_4_n_0 ),
        .I1(\rq[33]_i_5_n_0 ),
        .O(rq1[33]),
        .S(r_idx0_return_carry__0_i_2_n_0));
  MUXF7 \rq_reg[33]_i_3 
       (.I0(\rq[33]_i_6_n_0 ),
        .I1(\rq[33]_i_7_n_0 ),
        .O(rq15_out[33]),
        .S(r_idx0_return_carry__0_n_6));
  FDRE \rq_reg[34] 
       (.C(clk),
        .CE(\rp[2]_i_1_n_0 ),
        .D(\rq[34]_i_1_n_0 ),
        .Q(data4[6]),
        .R(1'b0));
  MUXF7 \rq_reg[34]_i_2 
       (.I0(\rq[34]_i_4_n_0 ),
        .I1(\rq[34]_i_5_n_0 ),
        .O(rq1[34]),
        .S(r_idx0_return_carry__0_i_2_n_0));
  MUXF7 \rq_reg[34]_i_3 
       (.I0(\rq[34]_i_6_n_0 ),
        .I1(\rq[34]_i_7_n_0 ),
        .O(rq15_out[34]),
        .S(r_idx0_return_carry__0_n_6));
  FDRE \rq_reg[35] 
       (.C(clk),
        .CE(\rp[2]_i_1_n_0 ),
        .D(\rq[35]_i_1_n_0 ),
        .Q(data5[0]),
        .R(1'b0));
  MUXF7 \rq_reg[35]_i_2 
       (.I0(\rq[35]_i_4_n_0 ),
        .I1(\rq[35]_i_5_n_0 ),
        .O(rq1[35]),
        .S(r_idx0_return_carry__0_i_2_n_0));
  MUXF7 \rq_reg[35]_i_3 
       (.I0(\rq[35]_i_6_n_0 ),
        .I1(\rq[35]_i_7_n_0 ),
        .O(rq15_out[35]),
        .S(r_idx0_return_carry__0_n_6));
  FDRE \rq_reg[36] 
       (.C(clk),
        .CE(\rp[2]_i_1_n_0 ),
        .D(\rq[36]_i_1_n_0 ),
        .Q(data5[1]),
        .R(1'b0));
  MUXF7 \rq_reg[36]_i_2 
       (.I0(\rq[36]_i_4_n_0 ),
        .I1(\rq[36]_i_5_n_0 ),
        .O(rq1[36]),
        .S(r_idx0_return_carry__0_i_2_n_0));
  MUXF7 \rq_reg[36]_i_3 
       (.I0(\rq[36]_i_6_n_0 ),
        .I1(\rq[36]_i_7_n_0 ),
        .O(rq15_out[36]),
        .S(r_idx0_return_carry__0_n_6));
  FDRE \rq_reg[37] 
       (.C(clk),
        .CE(\rp[2]_i_1_n_0 ),
        .D(\rq[37]_i_1_n_0 ),
        .Q(data5[2]),
        .R(1'b0));
  MUXF7 \rq_reg[37]_i_2 
       (.I0(\rq[37]_i_4_n_0 ),
        .I1(\rq[37]_i_5_n_0 ),
        .O(rq1[37]),
        .S(r_idx0_return_carry__0_i_2_n_0));
  MUXF7 \rq_reg[37]_i_3 
       (.I0(\rq[37]_i_6_n_0 ),
        .I1(\rq[37]_i_7_n_0 ),
        .O(rq15_out[37]),
        .S(r_idx0_return_carry__0_n_6));
  FDRE \rq_reg[38] 
       (.C(clk),
        .CE(\rp[2]_i_1_n_0 ),
        .D(\rq[38]_i_1_n_0 ),
        .Q(data5[3]),
        .R(1'b0));
  MUXF7 \rq_reg[38]_i_2 
       (.I0(\rq[38]_i_4_n_0 ),
        .I1(\rq[38]_i_5_n_0 ),
        .O(rq1[38]),
        .S(r_idx0_return_carry__0_i_2_n_0));
  MUXF7 \rq_reg[38]_i_3 
       (.I0(\rq[38]_i_6_n_0 ),
        .I1(\rq[38]_i_7_n_0 ),
        .O(rq15_out[38]),
        .S(r_idx0_return_carry__0_n_6));
  FDRE \rq_reg[39] 
       (.C(clk),
        .CE(\rp[2]_i_1_n_0 ),
        .D(\rq[39]_i_1_n_0 ),
        .Q(data5[4]),
        .R(1'b0));
  MUXF7 \rq_reg[39]_i_2 
       (.I0(\rq[39]_i_4_n_0 ),
        .I1(\rq[39]_i_5_n_0 ),
        .O(rq1[39]),
        .S(r_idx0_return_carry__0_i_2_n_0));
  MUXF7 \rq_reg[39]_i_3 
       (.I0(\rq[39]_i_6_n_0 ),
        .I1(\rq[39]_i_7_n_0 ),
        .O(rq15_out[39]),
        .S(r_idx0_return_carry__0_n_6));
  FDRE \rq_reg[3] 
       (.C(clk),
        .CE(\rp[2]_i_1_n_0 ),
        .D(\rq[3]_i_1_n_0 ),
        .Q(\rq_reg_n_0_[3] ),
        .R(1'b0));
  MUXF7 \rq_reg[3]_i_2 
       (.I0(\rq[3]_i_4_n_0 ),
        .I1(\rq[3]_i_5_n_0 ),
        .O(rq1[3]),
        .S(r_idx0_return_carry__0_i_2_n_0));
  MUXF7 \rq_reg[3]_i_3 
       (.I0(\rq[3]_i_6_n_0 ),
        .I1(\rq[3]_i_7_n_0 ),
        .O(rq15_out[3]),
        .S(r_idx0_return_carry__0_n_6));
  FDRE \rq_reg[40] 
       (.C(clk),
        .CE(\rp[2]_i_1_n_0 ),
        .D(\rq[40]_i_1_n_0 ),
        .Q(data5[5]),
        .R(1'b0));
  MUXF7 \rq_reg[40]_i_2 
       (.I0(\rq[40]_i_4_n_0 ),
        .I1(\rq[40]_i_5_n_0 ),
        .O(rq1[40]),
        .S(r_idx0_return_carry__0_i_2_n_0));
  MUXF7 \rq_reg[40]_i_3 
       (.I0(\rq[40]_i_6_n_0 ),
        .I1(\rq[40]_i_7_n_0 ),
        .O(rq15_out[40]),
        .S(r_idx0_return_carry__0_n_6));
  FDRE \rq_reg[41] 
       (.C(clk),
        .CE(\rp[2]_i_1_n_0 ),
        .D(\rq[41]_i_1_n_0 ),
        .Q(data5[6]),
        .R(1'b0));
  MUXF7 \rq_reg[41]_i_2 
       (.I0(\rq[41]_i_4_n_0 ),
        .I1(\rq[41]_i_5_n_0 ),
        .O(rq1[41]),
        .S(r_idx0_return_carry__0_i_2_n_0));
  MUXF7 \rq_reg[41]_i_3 
       (.I0(\rq[41]_i_6_n_0 ),
        .I1(\rq[41]_i_7_n_0 ),
        .O(rq15_out[41]),
        .S(r_idx0_return_carry__0_n_6));
  FDRE \rq_reg[42] 
       (.C(clk),
        .CE(\rp[2]_i_1_n_0 ),
        .D(\rq[42]_i_1_n_0 ),
        .Q(\rq_reg_n_0_[42] ),
        .R(1'b0));
  MUXF7 \rq_reg[42]_i_2 
       (.I0(\rq[42]_i_4_n_0 ),
        .I1(\rq[42]_i_5_n_0 ),
        .O(rq1[42]),
        .S(r_idx0_return_carry__0_i_2_n_0));
  MUXF7 \rq_reg[42]_i_3 
       (.I0(\rq[42]_i_6_n_0 ),
        .I1(\rq[42]_i_7_n_0 ),
        .O(rq15_out[42]),
        .S(r_idx0_return_carry__0_n_6));
  FDRE \rq_reg[43] 
       (.C(clk),
        .CE(\rp[2]_i_1_n_0 ),
        .D(\rq[43]_i_1_n_0 ),
        .Q(\rq_reg_n_0_[43] ),
        .R(1'b0));
  MUXF7 \rq_reg[43]_i_2 
       (.I0(\rq[43]_i_4_n_0 ),
        .I1(\rq[43]_i_5_n_0 ),
        .O(rq1[43]),
        .S(r_idx0_return_carry__0_i_2_n_0));
  MUXF7 \rq_reg[43]_i_3 
       (.I0(\rq[43]_i_6_n_0 ),
        .I1(\rq[43]_i_7_n_0 ),
        .O(rq15_out[43]),
        .S(r_idx0_return_carry__0_n_6));
  FDRE \rq_reg[44] 
       (.C(clk),
        .CE(\rp[2]_i_1_n_0 ),
        .D(\rq[44]_i_1_n_0 ),
        .Q(\rq_reg_n_0_[44] ),
        .R(1'b0));
  MUXF7 \rq_reg[44]_i_3 
       (.I0(\rq[44]_i_8_n_0 ),
        .I1(\rq[44]_i_9_n_0 ),
        .O(rq1[44]),
        .S(r_idx0_return_carry__0_i_2_n_0));
  MUXF7 \rq_reg[44]_i_6 
       (.I0(\rq[44]_i_12_n_0 ),
        .I1(\rq[44]_i_13_n_0 ),
        .O(rq15_out[44]),
        .S(r_idx0_return_carry__0_n_6));
  FDRE \rq_reg[4] 
       (.C(clk),
        .CE(\rp[2]_i_1_n_0 ),
        .D(\rq[4]_i_1_n_0 ),
        .Q(\rq_reg_n_0_[4] ),
        .R(1'b0));
  MUXF7 \rq_reg[4]_i_2 
       (.I0(\rq[4]_i_4_n_0 ),
        .I1(\rq[4]_i_5_n_0 ),
        .O(rq1[4]),
        .S(r_idx0_return_carry__0_i_2_n_0));
  MUXF7 \rq_reg[4]_i_3 
       (.I0(\rq[4]_i_6_n_0 ),
        .I1(\rq[4]_i_7_n_0 ),
        .O(rq15_out[4]),
        .S(r_idx0_return_carry__0_n_6));
  FDRE \rq_reg[5] 
       (.C(clk),
        .CE(\rp[2]_i_1_n_0 ),
        .D(\rq[5]_i_1_n_0 ),
        .Q(\rq_reg_n_0_[5] ),
        .R(1'b0));
  MUXF7 \rq_reg[5]_i_2 
       (.I0(\rq[5]_i_4_n_0 ),
        .I1(\rq[5]_i_5_n_0 ),
        .O(rq1[5]),
        .S(r_idx0_return_carry__0_i_2_n_0));
  MUXF7 \rq_reg[5]_i_3 
       (.I0(\rq[5]_i_6_n_0 ),
        .I1(\rq[5]_i_7_n_0 ),
        .O(rq15_out[5]),
        .S(r_idx0_return_carry__0_n_6));
  FDRE \rq_reg[6] 
       (.C(clk),
        .CE(\rp[2]_i_1_n_0 ),
        .D(\rq[6]_i_1_n_0 ),
        .Q(\rq_reg_n_0_[6] ),
        .R(1'b0));
  MUXF7 \rq_reg[6]_i_2 
       (.I0(\rq[6]_i_4_n_0 ),
        .I1(\rq[6]_i_5_n_0 ),
        .O(rq1[6]),
        .S(r_idx0_return_carry__0_i_2_n_0));
  MUXF7 \rq_reg[6]_i_3 
       (.I0(\rq[6]_i_6_n_0 ),
        .I1(\rq[6]_i_7_n_0 ),
        .O(rq15_out[6]),
        .S(r_idx0_return_carry__0_n_6));
  FDRE \rq_reg[7] 
       (.C(clk),
        .CE(\rp[2]_i_1_n_0 ),
        .D(\rq[7]_i_1_n_0 ),
        .Q(data1[0]),
        .R(1'b0));
  MUXF7 \rq_reg[7]_i_2 
       (.I0(\rq[7]_i_4_n_0 ),
        .I1(\rq[7]_i_5_n_0 ),
        .O(rq1[7]),
        .S(r_idx0_return_carry__0_i_2_n_0));
  MUXF7 \rq_reg[7]_i_3 
       (.I0(\rq[7]_i_6_n_0 ),
        .I1(\rq[7]_i_7_n_0 ),
        .O(rq15_out[7]),
        .S(r_idx0_return_carry__0_n_6));
  FDRE \rq_reg[8] 
       (.C(clk),
        .CE(\rp[2]_i_1_n_0 ),
        .D(\rq[8]_i_1_n_0 ),
        .Q(data1[1]),
        .R(1'b0));
  MUXF7 \rq_reg[8]_i_2 
       (.I0(\rq[8]_i_4_n_0 ),
        .I1(\rq[8]_i_5_n_0 ),
        .O(rq1[8]),
        .S(r_idx0_return_carry__0_i_2_n_0));
  MUXF7 \rq_reg[8]_i_3 
       (.I0(\rq[8]_i_6_n_0 ),
        .I1(\rq[8]_i_7_n_0 ),
        .O(rq15_out[8]),
        .S(r_idx0_return_carry__0_n_6));
  FDRE \rq_reg[9] 
       (.C(clk),
        .CE(\rp[2]_i_1_n_0 ),
        .D(\rq[9]_i_1_n_0 ),
        .Q(data1[2]),
        .R(1'b0));
  MUXF7 \rq_reg[9]_i_2 
       (.I0(\rq[9]_i_4_n_0 ),
        .I1(\rq[9]_i_5_n_0 ),
        .O(rq1[9]),
        .S(r_idx0_return_carry__0_i_2_n_0));
  MUXF7 \rq_reg[9]_i_3 
       (.I0(\rq[9]_i_6_n_0 ),
        .I1(\rq[9]_i_7_n_0 ),
        .O(rq15_out[9]),
        .S(r_idx0_return_carry__0_n_6));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    sig_ready_INST_0
       (.I0(\st_reg[0]_0 ),
        .I1(\st_reg[1]_0 ),
        .I2(\st_reg[2]_0 ),
        .I3(is_real__2),
        .O(sig_ready));
  LUT6 #(
    .INIT(64'h000100FF00FF00FF)) 
    sig_ready_INST_0_i_1
       (.I0(xa[3]),
        .I1(xa[4]),
        .I2(\xa_reg[5]_rep_n_0 ),
        .I3(sig_ready_INST_0_i_2_n_0),
        .I4(xa[6]),
        .I5(xa[7]),
        .O(is_real__2));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'hE)) 
    sig_ready_INST_0_i_2
       (.I0(xa[8]),
        .I1(xa[9]),
        .O(sig_ready_INST_0_i_2_n_0));
  LUT5 #(
    .INIT(32'h80FFFF00)) 
    \st[0]_i_1 
       (.I0(\st_reg[1]_0 ),
        .I1(\st_reg[2]_0 ),
        .I2(\st[2]_i_2_n_0 ),
        .I3(\st[2]_i_3_n_0 ),
        .I4(\st_reg[0]_0 ),
        .O(\st[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1BFFFFFFFF000000)) 
    \st[1]_i_1 
       (.I0(\st_reg[2]_0 ),
        .I1(frame_start_i_2_n_0),
        .I2(\st[2]_i_2_n_0 ),
        .I3(\st_reg[0]_0 ),
        .I4(\st[2]_i_3_n_0 ),
        .I5(\st_reg[1]_0 ),
        .O(\st[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFFFFFFFA0000000)) 
    \st[2]_i_1 
       (.I0(frame_start_i_2_n_0),
        .I1(\st[2]_i_2_n_0 ),
        .I2(\st_reg[1]_0 ),
        .I3(\st_reg[0]_0 ),
        .I4(\st[2]_i_3_n_0 ),
        .I5(\st_reg[2]_0 ),
        .O(\st[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFFFFFF)) 
    \st[2]_i_2 
       (.I0(ox[4]),
        .I1(ox[5]),
        .I2(ox[7]),
        .I3(ox[6]),
        .I4(\st[2]_i_4_n_0 ),
        .I5(\st[2]_i_5_n_0 ),
        .O(\st[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF2DDD0)) 
    \st[2]_i_3 
       (.I0(\st_reg[2]_0 ),
        .I1(\st_reg[1]_0 ),
        .I2(\st[2]_i_6_n_0 ),
        .I3(\st[2]_i_7_n_0 ),
        .I4(\st_reg[0]_0 ),
        .I5(\st[2]_i_8_n_0 ),
        .O(\st[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \st[2]_i_4 
       (.I0(ox[8]),
        .I1(ox[9]),
        .O(\st[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \st[2]_i_5 
       (.I0(ox[2]),
        .I1(ox[0]),
        .I2(ox[1]),
        .I3(ox[3]),
        .O(\st[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h80808080808080B0)) 
    \st[2]_i_6 
       (.I0(frame_start_i_3_n_0),
        .I1(\st_reg[1]_0 ),
        .I2(\st_reg[0]_0 ),
        .I3(\fcnt_reg_n_0_[4] ),
        .I4(\dl[6]_i_9_n_0 ),
        .I5(\fcnt[7]_i_3_n_0 ),
        .O(\st[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFF000000FFF3FF55)) 
    \st[2]_i_7 
       (.I0(\chain_n[7]_i_2_n_0 ),
        .I1(is_real__2),
        .I2(sig_valid),
        .I3(\st_reg[2]_0 ),
        .I4(\st_reg[1]_0 ),
        .I5(\st_reg[0]_0 ),
        .O(\st[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \st[2]_i_8 
       (.I0(\ox[9]_i_5_n_0 ),
        .I1(wait_n[3]),
        .I2(wait_n[4]),
        .I3(wait_n[5]),
        .I4(wait_n[6]),
        .I5(\chain_n[7]_i_3_n_0 ),
        .O(\st[2]_i_8_n_0 ));
  FDRE \st_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\st[0]_i_1_n_0 ),
        .Q(\st_reg[0]_0 ),
        .R(rst));
  FDRE \st_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\st[1]_i_1_n_0 ),
        .Q(\st_reg[1]_0 ),
        .R(rst));
  FDRE \st_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\st[2]_i_1_n_0 ),
        .Q(\st_reg[2]_0 ),
        .R(rst));
  FDRE \ul_r_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(ul[0]),
        .Q(ul_r[0]),
        .R(1'b0));
  FDRE \ul_r_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(ul[1]),
        .Q(ul_r[1]),
        .R(1'b0));
  FDRE \ul_r_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(ul[2]),
        .Q(ul_r[2]),
        .R(1'b0));
  FDRE \ul_r_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(ul[3]),
        .Q(ul_r[3]),
        .R(1'b0));
  FDRE \ul_r_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(ul[4]),
        .Q(ul_r[4]),
        .R(1'b0));
  FDRE \ul_r_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(ul[5]),
        .Q(ul_r[5]),
        .R(1'b0));
  FDRE \ul_r_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(ul[6]),
        .Q(ul_r[6]),
        .R(1'b0));
  FDRE \ul_r_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(ul[7]),
        .Q(ul_r[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \up_x[9]_i_1 
       (.I0(\st_reg[0]_0 ),
        .I1(frame_start_i_6_n_0),
        .I2(\fcnt_reg_n_0_[1] ),
        .I3(\fcnt_reg_n_0_[0] ),
        .I4(\fcnt_reg_n_0_[2] ),
        .I5(p_4_in),
        .O(\up_x[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \up_x[9]_i_2 
       (.I0(\fcnt_reg_n_0_[4] ),
        .I1(\fcnt_reg_n_0_[3] ),
        .I2(\fcnt_reg_n_0_[5] ),
        .I3(p_0_in0),
        .I4(\fcnt_reg_n_0_[6] ),
        .O(p_4_in));
  FDRE \up_x_reg[0] 
       (.C(clk),
        .CE(\up_x[9]_i_1_n_0 ),
        .D(xa[0]),
        .Q(up_x[0]),
        .R(rst));
  FDRE \up_x_reg[1] 
       (.C(clk),
        .CE(\up_x[9]_i_1_n_0 ),
        .D(\xa_reg[1]_rep_n_0 ),
        .Q(up_x[1]),
        .R(rst));
  FDRE \up_x_reg[2] 
       (.C(clk),
        .CE(\up_x[9]_i_1_n_0 ),
        .D(xa[2]),
        .Q(up_x[2]),
        .R(rst));
  FDRE \up_x_reg[3] 
       (.C(clk),
        .CE(\up_x[9]_i_1_n_0 ),
        .D(\xa_reg[3]_rep_n_0 ),
        .Q(up_x[3]),
        .R(rst));
  FDRE \up_x_reg[4] 
       (.C(clk),
        .CE(\up_x[9]_i_1_n_0 ),
        .D(\xa_reg[4]_rep_n_0 ),
        .Q(up_x[4]),
        .R(rst));
  FDRE \up_x_reg[5] 
       (.C(clk),
        .CE(\up_x[9]_i_1_n_0 ),
        .D(xa[5]),
        .Q(up_x[5]),
        .R(rst));
  FDRE \up_x_reg[6] 
       (.C(clk),
        .CE(\up_x[9]_i_1_n_0 ),
        .D(xa[6]),
        .Q(up_x[6]),
        .R(rst));
  FDRE \up_x_reg[7] 
       (.C(clk),
        .CE(\up_x[9]_i_1_n_0 ),
        .D(xa[7]),
        .Q(up_x[7]),
        .R(rst));
  FDRE \up_x_reg[8] 
       (.C(clk),
        .CE(\up_x[9]_i_1_n_0 ),
        .D(xa[8]),
        .Q(up_x[8]),
        .R(rst));
  FDRE \up_x_reg[9] 
       (.C(clk),
        .CE(\up_x[9]_i_1_n_0 ),
        .D(xa[9]),
        .Q(up_x[9]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \wait_n[0]_i_1 
       (.I0(\st_reg[1]_0 ),
        .I1(wait_n[0]),
        .O(\wait_n[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \wait_n[1]_i_1 
       (.I0(wait_n[0]),
        .I1(wait_n[1]),
        .I2(\st_reg[1]_0 ),
        .O(\wait_n[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \wait_n[2]_i_1 
       (.I0(wait_n[0]),
        .I1(wait_n[1]),
        .I2(wait_n[2]),
        .I3(\st_reg[1]_0 ),
        .O(\wait_n[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h00007F80)) 
    \wait_n[3]_i_1 
       (.I0(wait_n[1]),
        .I1(wait_n[0]),
        .I2(wait_n[2]),
        .I3(wait_n[3]),
        .I4(\st_reg[1]_0 ),
        .O(\wait_n[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    \wait_n[4]_i_1 
       (.I0(wait_n[2]),
        .I1(wait_n[0]),
        .I2(wait_n[1]),
        .I3(wait_n[3]),
        .I4(wait_n[4]),
        .I5(\st_reg[1]_0 ),
        .O(\wait_n[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h09)) 
    \wait_n[5]_i_1 
       (.I0(\wait_n[5]_i_2_n_0 ),
        .I1(wait_n[5]),
        .I2(\st_reg[1]_0 ),
        .O(\wait_n[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \wait_n[5]_i_2 
       (.I0(wait_n[3]),
        .I1(wait_n[1]),
        .I2(wait_n[0]),
        .I3(wait_n[2]),
        .I4(wait_n[4]),
        .O(\wait_n[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h09)) 
    \wait_n[6]_i_1 
       (.I0(\wait_n[7]_i_3_n_0 ),
        .I1(wait_n[6]),
        .I2(\st_reg[1]_0 ),
        .O(\wait_n[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h080000FF)) 
    \wait_n[7]_i_1 
       (.I0(frame_start_i_3_n_0),
        .I1(frame_start_i_2_n_0),
        .I2(\st_reg[2]_0 ),
        .I3(\st_reg[1]_0 ),
        .I4(\st_reg[0]_0 ),
        .O(\wait_n[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h00B4)) 
    \wait_n[7]_i_2 
       (.I0(\wait_n[7]_i_3_n_0 ),
        .I1(wait_n[6]),
        .I2(wait_n[7]),
        .I3(\st_reg[1]_0 ),
        .O(\wait_n[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \wait_n[7]_i_3 
       (.I0(wait_n[4]),
        .I1(wait_n[2]),
        .I2(wait_n[0]),
        .I3(wait_n[1]),
        .I4(wait_n[3]),
        .I5(wait_n[5]),
        .O(\wait_n[7]_i_3_n_0 ));
  FDRE \wait_n_reg[0] 
       (.C(clk),
        .CE(\wait_n[7]_i_1_n_0 ),
        .D(\wait_n[0]_i_1_n_0 ),
        .Q(wait_n[0]),
        .R(rst));
  FDRE \wait_n_reg[1] 
       (.C(clk),
        .CE(\wait_n[7]_i_1_n_0 ),
        .D(\wait_n[1]_i_1_n_0 ),
        .Q(wait_n[1]),
        .R(rst));
  FDRE \wait_n_reg[2] 
       (.C(clk),
        .CE(\wait_n[7]_i_1_n_0 ),
        .D(\wait_n[2]_i_1_n_0 ),
        .Q(wait_n[2]),
        .R(rst));
  FDRE \wait_n_reg[3] 
       (.C(clk),
        .CE(\wait_n[7]_i_1_n_0 ),
        .D(\wait_n[3]_i_1_n_0 ),
        .Q(wait_n[3]),
        .R(rst));
  FDRE \wait_n_reg[4] 
       (.C(clk),
        .CE(\wait_n[7]_i_1_n_0 ),
        .D(\wait_n[4]_i_1_n_0 ),
        .Q(wait_n[4]),
        .R(rst));
  FDRE \wait_n_reg[5] 
       (.C(clk),
        .CE(\wait_n[7]_i_1_n_0 ),
        .D(\wait_n[5]_i_1_n_0 ),
        .Q(wait_n[5]),
        .R(rst));
  FDRE \wait_n_reg[6] 
       (.C(clk),
        .CE(\wait_n[7]_i_1_n_0 ),
        .D(\wait_n[6]_i_1_n_0 ),
        .Q(wait_n[6]),
        .R(rst));
  FDRE \wait_n_reg[7] 
       (.C(clk),
        .CE(\wait_n[7]_i_1_n_0 ),
        .D(\wait_n[7]_i_2_n_0 ),
        .Q(wait_n[7]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \xa[0]_i_1 
       (.I0(\st_reg[2]_0 ),
        .I1(\st_reg[1]_0 ),
        .I2(xa[0]),
        .O(\xa[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \xa[0]_rep_i_1 
       (.I0(\st_reg[2]_0 ),
        .I1(\st_reg[1]_0 ),
        .I2(xa[0]),
        .O(\xa[0]_rep_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h0600)) 
    \xa[1]_i_1 
       (.I0(\xa_reg[1]_rep_n_0 ),
        .I1(\xa_reg[0]_rep_n_0 ),
        .I2(\st_reg[2]_0 ),
        .I3(\st_reg[1]_0 ),
        .O(\xa[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0600)) 
    \xa[1]_rep_i_1 
       (.I0(\xa_reg[1]_rep_n_0 ),
        .I1(xa[0]),
        .I2(\st_reg[2]_0 ),
        .I3(\st_reg[1]_0 ),
        .O(\xa[1]_rep_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h00780000)) 
    \xa[2]_i_1 
       (.I0(xa[0]),
        .I1(\xa_reg[1]_rep_n_0 ),
        .I2(xa[2]),
        .I3(\st_reg[2]_0 ),
        .I4(\st_reg[1]_0 ),
        .O(\xa[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00780000)) 
    \xa[2]_rep_i_1 
       (.I0(\xa_reg[0]_rep_n_0 ),
        .I1(xa[1]),
        .I2(xa[2]),
        .I3(\st_reg[2]_0 ),
        .I4(\st_reg[1]_0 ),
        .O(\xa[2]_rep_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \xa[3]_i_1 
       (.I0(\st_reg[2]_0 ),
        .I1(\st_reg[1]_0 ),
        .I2(rdel_reg_r1_0_63_30_32_i_1_n_0),
        .O(\xa[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \xa[3]_rep_i_1 
       (.I0(\st_reg[2]_0 ),
        .I1(\st_reg[1]_0 ),
        .I2(rdel_reg_r1_0_63_30_32_i_1_n_0),
        .O(\xa[3]_rep_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \xa[4]_i_1 
       (.I0(xa[1]),
        .I1(\xa_reg[0]_rep_n_0 ),
        .I2(\xa_reg[2]_rep_n_0 ),
        .I3(xa[3]),
        .I4(frame_start_i_6_n_0),
        .I5(\xa_reg[4]_rep_n_0 ),
        .O(\xa[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \xa[4]_rep_i_1 
       (.I0(xa[1]),
        .I1(\xa_reg[0]_rep_n_0 ),
        .I2(\xa_reg[2]_rep_n_0 ),
        .I3(xa[3]),
        .I4(frame_start_i_6_n_0),
        .I5(\xa_reg[4]_rep_n_0 ),
        .O(\xa[4]_rep_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h007F000000800000)) 
    \xa[5]_i_1 
       (.I0(xa[3]),
        .I1(\xa[6]_i_2_n_0 ),
        .I2(\xa_reg[4]_rep_n_0 ),
        .I3(\st_reg[2]_0 ),
        .I4(\st_reg[1]_0 ),
        .I5(xa[5]),
        .O(\xa[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h007F000000800000)) 
    \xa[5]_rep_i_1 
       (.I0(xa[3]),
        .I1(\xa[6]_i_2_n_0 ),
        .I2(xa[4]),
        .I3(\st_reg[2]_0 ),
        .I4(\st_reg[1]_0 ),
        .I5(xa[5]),
        .O(\xa[5]_rep_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \xa[6]_i_1 
       (.I0(xa[4]),
        .I1(\xa[6]_i_2_n_0 ),
        .I2(xa[3]),
        .I3(xa[5]),
        .I4(frame_start_i_6_n_0),
        .I5(xa[6]),
        .O(\xa[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \xa[6]_i_2 
       (.I0(\xa_reg[2]_rep_n_0 ),
        .I1(\xa_reg[0]_rep_n_0 ),
        .I2(xa[1]),
        .O(\xa[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h0D000200)) 
    \xa[7]_i_1 
       (.I0(xa[6]),
        .I1(\xa[9]_i_3_n_0 ),
        .I2(\st_reg[2]_0 ),
        .I3(\st_reg[1]_0 ),
        .I4(xa[7]),
        .O(\xa[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00BF000000400000)) 
    \xa[8]_i_1 
       (.I0(\xa[9]_i_3_n_0 ),
        .I1(xa[6]),
        .I2(xa[7]),
        .I3(\st_reg[2]_0 ),
        .I4(\st_reg[1]_0 ),
        .I5(xa[8]),
        .O(\xa[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000080)) 
    \xa[9]_i_1 
       (.I0(frame_start_i_3_n_0),
        .I1(\st_reg[0]_0 ),
        .I2(\st_reg[1]_0 ),
        .I3(\st_reg[2]_0 ),
        .I4(frame_start_i_2_n_0),
        .I5(\y[9]_i_1_n_0 ),
        .O(\xa[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FF000008000000)) 
    \xa[9]_i_2 
       (.I0(xa[7]),
        .I1(xa[6]),
        .I2(\xa[9]_i_3_n_0 ),
        .I3(xa[8]),
        .I4(frame_start_i_6_n_0),
        .I5(xa[9]),
        .O(\xa[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \xa[9]_i_3 
       (.I0(xa[4]),
        .I1(xa[1]),
        .I2(\xa_reg[0]_rep_n_0 ),
        .I3(\xa_reg[2]_rep_n_0 ),
        .I4(xa[3]),
        .I5(xa[5]),
        .O(\xa[9]_i_3_n_0 ));
  (* ORIG_CELL_NAME = "xa_reg[0]" *) 
  FDRE \xa_reg[0] 
       (.C(clk),
        .CE(\xa[9]_i_1_n_0 ),
        .D(\xa[0]_i_1_n_0 ),
        .Q(xa[0]),
        .R(rst));
  (* ORIG_CELL_NAME = "xa_reg[0]" *) 
  FDRE \xa_reg[0]_rep 
       (.C(clk),
        .CE(\xa[9]_i_1_n_0 ),
        .D(\xa[0]_rep_i_1_n_0 ),
        .Q(\xa_reg[0]_rep_n_0 ),
        .R(rst));
  (* ORIG_CELL_NAME = "xa_reg[1]" *) 
  FDRE \xa_reg[1] 
       (.C(clk),
        .CE(\xa[9]_i_1_n_0 ),
        .D(\xa[1]_i_1_n_0 ),
        .Q(xa[1]),
        .R(rst));
  (* ORIG_CELL_NAME = "xa_reg[1]" *) 
  FDRE \xa_reg[1]_rep 
       (.C(clk),
        .CE(\xa[9]_i_1_n_0 ),
        .D(\xa[1]_rep_i_1_n_0 ),
        .Q(\xa_reg[1]_rep_n_0 ),
        .R(rst));
  (* ORIG_CELL_NAME = "xa_reg[2]" *) 
  FDRE \xa_reg[2] 
       (.C(clk),
        .CE(\xa[9]_i_1_n_0 ),
        .D(\xa[2]_i_1_n_0 ),
        .Q(xa[2]),
        .R(rst));
  (* ORIG_CELL_NAME = "xa_reg[2]" *) 
  FDRE \xa_reg[2]_rep 
       (.C(clk),
        .CE(\xa[9]_i_1_n_0 ),
        .D(\xa[2]_rep_i_1_n_0 ),
        .Q(\xa_reg[2]_rep_n_0 ),
        .R(rst));
  (* ORIG_CELL_NAME = "xa_reg[3]" *) 
  FDRE \xa_reg[3] 
       (.C(clk),
        .CE(\xa[9]_i_1_n_0 ),
        .D(\xa[3]_i_1_n_0 ),
        .Q(xa[3]),
        .R(rst));
  (* ORIG_CELL_NAME = "xa_reg[3]" *) 
  FDRE \xa_reg[3]_rep 
       (.C(clk),
        .CE(\xa[9]_i_1_n_0 ),
        .D(\xa[3]_rep_i_1_n_0 ),
        .Q(\xa_reg[3]_rep_n_0 ),
        .R(rst));
  (* ORIG_CELL_NAME = "xa_reg[4]" *) 
  FDRE \xa_reg[4] 
       (.C(clk),
        .CE(\xa[9]_i_1_n_0 ),
        .D(\xa[4]_i_1_n_0 ),
        .Q(xa[4]),
        .R(rst));
  (* ORIG_CELL_NAME = "xa_reg[4]" *) 
  FDRE \xa_reg[4]_rep 
       (.C(clk),
        .CE(\xa[9]_i_1_n_0 ),
        .D(\xa[4]_rep_i_1_n_0 ),
        .Q(\xa_reg[4]_rep_n_0 ),
        .R(rst));
  (* ORIG_CELL_NAME = "xa_reg[5]" *) 
  FDRE \xa_reg[5] 
       (.C(clk),
        .CE(\xa[9]_i_1_n_0 ),
        .D(\xa[5]_i_1_n_0 ),
        .Q(xa[5]),
        .R(rst));
  (* ORIG_CELL_NAME = "xa_reg[5]" *) 
  FDRE \xa_reg[5]_rep 
       (.C(clk),
        .CE(\xa[9]_i_1_n_0 ),
        .D(\xa[5]_rep_i_1_n_0 ),
        .Q(\xa_reg[5]_rep_n_0 ),
        .R(rst));
  FDRE \xa_reg[6] 
       (.C(clk),
        .CE(\xa[9]_i_1_n_0 ),
        .D(\xa[6]_i_1_n_0 ),
        .Q(xa[6]),
        .R(rst));
  FDRE \xa_reg[7] 
       (.C(clk),
        .CE(\xa[9]_i_1_n_0 ),
        .D(\xa[7]_i_1_n_0 ),
        .Q(xa[7]),
        .R(rst));
  FDRE \xa_reg[8] 
       (.C(clk),
        .CE(\xa[9]_i_1_n_0 ),
        .D(\xa[8]_i_1_n_0 ),
        .Q(xa[8]),
        .R(rst));
  FDRE \xa_reg[9] 
       (.C(clk),
        .CE(\xa[9]_i_1_n_0 ),
        .D(\xa[9]_i_2_n_0 ),
        .Q(xa[9]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y[0]_i_1 
       (.I0(\st_reg[2]_0 ),
        .I1(y[0]),
        .O(\y[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \y[1]_i_1 
       (.I0(y[0]),
        .I1(\st_reg[2]_0 ),
        .I2(y[1]),
        .O(\y[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \y[2]_i_1 
       (.I0(\y[9]_i_6_n_0 ),
        .I1(y[2]),
        .I2(y[0]),
        .I3(y[1]),
        .O(\y[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \y[3]_i_1 
       (.I0(\y[9]_i_6_n_0 ),
        .I1(y[3]),
        .I2(y[1]),
        .I3(y[0]),
        .I4(y[2]),
        .O(\y[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \y[4]_i_1 
       (.I0(\y[9]_i_6_n_0 ),
        .I1(y[4]),
        .I2(y[2]),
        .I3(y[0]),
        .I4(y[1]),
        .I5(y[3]),
        .O(\y[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h6040)) 
    \y[5]_i_1 
       (.I0(\y[8]_i_2_n_0 ),
        .I1(y[5]),
        .I2(\st_reg[2]_0 ),
        .I3(\y[5]_i_2_n_0 ),
        .O(\y[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \y[5]_i_2 
       (.I0(y[0]),
        .I1(y[1]),
        .I2(y[7]),
        .I3(y[4]),
        .I4(frame_start_i_4_n_0),
        .O(\y[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \y[6]_i_1 
       (.I0(\y[9]_i_6_n_0 ),
        .I1(y[6]),
        .I2(\y[8]_i_2_n_0 ),
        .I3(y[5]),
        .O(\y[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \y[7]_i_1 
       (.I0(\y[9]_i_6_n_0 ),
        .I1(y[7]),
        .I2(y[5]),
        .I3(\y[8]_i_2_n_0 ),
        .I4(y[6]),
        .O(\y[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \y[8]_i_1 
       (.I0(\y[9]_i_6_n_0 ),
        .I1(y[8]),
        .I2(y[6]),
        .I3(\y[8]_i_2_n_0 ),
        .I4(y[5]),
        .I5(y[7]),
        .O(\y[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \y[8]_i_2 
       (.I0(y[4]),
        .I1(y[3]),
        .I2(y[1]),
        .I3(y[0]),
        .I4(y[2]),
        .O(\y[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h888888888888F888)) 
    \y[9]_i_1 
       (.I0(\y[9]_i_3_n_0 ),
        .I1(\y[9]_i_4_n_0 ),
        .I2(\y[9]_i_5_n_0 ),
        .I3(\st_reg[0]_0 ),
        .I4(\st_reg[1]_0 ),
        .I5(\st_reg[2]_0 ),
        .O(\y[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8828888888888888)) 
    \y[9]_i_2 
       (.I0(\y[9]_i_6_n_0 ),
        .I1(y[9]),
        .I2(y[7]),
        .I3(\y[9]_i_7_n_0 ),
        .I4(y[6]),
        .I5(y[8]),
        .O(\y[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \y[9]_i_3 
       (.I0(ox[8]),
        .I1(ox[9]),
        .I2(\st_reg[1]_0 ),
        .I3(\st_reg[2]_0 ),
        .I4(ox[7]),
        .I5(ox[6]),
        .O(\y[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \y[9]_i_4 
       (.I0(ox[4]),
        .I1(ox[5]),
        .I2(\st_reg[0]_0 ),
        .I3(ox[3]),
        .I4(ox[2]),
        .I5(\ox[5]_i_2_n_0 ),
        .O(\y[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \y[9]_i_5 
       (.I0(\fcnt_reg_n_0_[4] ),
        .I1(\dl[6]_i_9_n_0 ),
        .I2(\fcnt_reg_n_0_[3] ),
        .I3(\fcnt_reg_n_0_[1] ),
        .I4(\fcnt_reg_n_0_[2] ),
        .I5(\fcnt_reg_n_0_[0] ),
        .O(\y[9]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \y[9]_i_6 
       (.I0(y[5]),
        .I1(\y[5]_i_2_n_0 ),
        .I2(\st_reg[2]_0 ),
        .O(\y[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \y[9]_i_7 
       (.I0(y[2]),
        .I1(y[0]),
        .I2(y[1]),
        .I3(y[3]),
        .I4(y[4]),
        .I5(y[5]),
        .O(\y[9]_i_7_n_0 ));
  FDRE \y_reg[0] 
       (.C(clk),
        .CE(\y[9]_i_1_n_0 ),
        .D(\y[0]_i_1_n_0 ),
        .Q(y[0]),
        .R(rst));
  FDRE \y_reg[1] 
       (.C(clk),
        .CE(\y[9]_i_1_n_0 ),
        .D(\y[1]_i_1_n_0 ),
        .Q(y[1]),
        .R(rst));
  FDRE \y_reg[2] 
       (.C(clk),
        .CE(\y[9]_i_1_n_0 ),
        .D(\y[2]_i_1_n_0 ),
        .Q(y[2]),
        .R(rst));
  FDRE \y_reg[3] 
       (.C(clk),
        .CE(\y[9]_i_1_n_0 ),
        .D(\y[3]_i_1_n_0 ),
        .Q(y[3]),
        .R(rst));
  FDRE \y_reg[4] 
       (.C(clk),
        .CE(\y[9]_i_1_n_0 ),
        .D(\y[4]_i_1_n_0 ),
        .Q(y[4]),
        .R(rst));
  FDRE \y_reg[5] 
       (.C(clk),
        .CE(\y[9]_i_1_n_0 ),
        .D(\y[5]_i_1_n_0 ),
        .Q(y[5]),
        .R(rst));
  FDRE \y_reg[6] 
       (.C(clk),
        .CE(\y[9]_i_1_n_0 ),
        .D(\y[6]_i_1_n_0 ),
        .Q(y[6]),
        .R(rst));
  FDRE \y_reg[7] 
       (.C(clk),
        .CE(\y[9]_i_1_n_0 ),
        .D(\y[7]_i_1_n_0 ),
        .Q(y[7]),
        .R(rst));
  FDRE \y_reg[8] 
       (.C(clk),
        .CE(\y[9]_i_1_n_0 ),
        .D(\y[8]_i_1_n_0 ),
        .Q(y[8]),
        .R(rst));
  FDRE \y_reg[9] 
       (.C(clk),
        .CE(\y[9]_i_1_n_0 ),
        .D(\y[9]_i_2_n_0 ),
        .Q(y[9]),
        .R(rst));
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
