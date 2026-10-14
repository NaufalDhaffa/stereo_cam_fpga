// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Wed Oct 14 08:37:29 2026
// Host        : LAPTOP-THBQET7J running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/stereo-depth-cam/hw/projects/stereo_2slice/stereo_2slice.gen/sources_1/bd/system/ip/system_slice_0_0/system_slice_0_0_sim_netlist.v
// Design      : system_slice_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_slice_0_0,tt_um_stereo_slice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "tt_um_stereo_slice,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module system_slice_0_0
   (ui_in,
    uo_out,
    uio_in,
    uio_out,
    uio_oe,
    ena,
    clk,
    rst_n);
  input [7:0]ui_in;
  output [7:0]uo_out;
  input [7:0]uio_in;
  output [7:0]uio_out;
  output [7:0]uio_oe;
  input ena;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;

  wire \<const0> ;
  wire clk;
  wire rst_n;
  wire [7:0]ui_in;
  wire [7:0]uio_in;
  wire [7:0]uo_out;

  assign uio_oe[7] = \<const0> ;
  assign uio_oe[6] = \<const0> ;
  assign uio_oe[5] = \<const0> ;
  assign uio_oe[4] = \<const0> ;
  assign uio_oe[3] = \<const0> ;
  assign uio_oe[2] = \<const0> ;
  assign uio_oe[1] = \<const0> ;
  assign uio_oe[0] = \<const0> ;
  assign uio_out[7] = \<const0> ;
  assign uio_out[6] = \<const0> ;
  assign uio_out[5] = \<const0> ;
  assign uio_out[4] = \<const0> ;
  assign uio_out[3] = \<const0> ;
  assign uio_out[2] = \<const0> ;
  assign uio_out[1] = \<const0> ;
  assign uio_out[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  system_slice_0_0_tt_um_stereo_slice inst
       (.clk(clk),
        .rst_n(rst_n),
        .ui_in(ui_in),
        .uio_in(uio_in),
        .uo_out(uo_out));
endmodule

(* ORIG_REF_NAME = "mini_slice" *) 
module system_slice_0_0_mini_slice
   (Q,
    uo_out,
    ui_in,
    \l_bot_reg[6]_i_55 ,
    \rec_in_reg[6] ,
    clk,
    p_0_in,
    uio_in);
  output [3:0]Q;
  output [7:0]uo_out;
  input [7:0]ui_in;
  input \l_bot_reg[6]_i_55 ;
  input [0:0]\rec_in_reg[6] ;
  input clk;
  input [2:0]p_0_in;
  input [7:0]uio_in;

  wire [3:0]Q;
  wire [2:2]a;
  wire [5:0]b2_out;
  wire b_first;
  wire b_own;
  wire b_own0;
  wire b_real;
  wire b_use;
  wire [0:0]best_j;
  wire [7:0]best_s;
  wire [6:0]carry_l;
  wire clk;
  wire [5:0]cost;
  wire [6:0]dn_edge;
  wire f_uniq;
  wire [44:0]in_left;
  wire [44:0]in_right;
  wire [6:0]l_bot;
  wire \l_bot_reg[6]_i_55 ;
  wire [6:0]l_new;
  wire [6:0]l_top;
  wire [6:0]l_up0;
  wire [6:0]lmin;
  wire load;
  wire [0:0]m_s0;
  wire [0:0]m_sec;
  wire min90_return1;
  wire [6:0]old;
  wire [2:0]p_0_in;
  wire [6:0]p_0_in_0;
  wire [7:0]p_1_in;
  wire p_1_in0;
  wire [6:1]pw_k;
  wire [13:0]r_new;
  wire [14:0]rec_in;
  wire [0:0]\rec_in_reg[6] ;
  wire [14:0]rec_top;
  wire [0:0]rin_s;
  wire run;
  wire [7:0]s0;
  wire [7:0]s2;
  wire scan;
  wire [7:0]sec;
  wire sec2;
  wire u_cost_n_0;
  wire u_ctrl_n_0;
  wire u_ctrl_n_10;
  wire u_ctrl_n_100;
  wire u_ctrl_n_101;
  wire u_ctrl_n_102;
  wire u_ctrl_n_103;
  wire u_ctrl_n_104;
  wire u_ctrl_n_105;
  wire u_ctrl_n_106;
  wire u_ctrl_n_107;
  wire u_ctrl_n_108;
  wire u_ctrl_n_109;
  wire u_ctrl_n_11;
  wire u_ctrl_n_110;
  wire u_ctrl_n_111;
  wire u_ctrl_n_112;
  wire u_ctrl_n_113;
  wire u_ctrl_n_114;
  wire u_ctrl_n_115;
  wire u_ctrl_n_116;
  wire u_ctrl_n_118;
  wire u_ctrl_n_12;
  wire u_ctrl_n_126;
  wire u_ctrl_n_127;
  wire u_ctrl_n_128;
  wire u_ctrl_n_129;
  wire u_ctrl_n_13;
  wire u_ctrl_n_130;
  wire u_ctrl_n_131;
  wire u_ctrl_n_132;
  wire u_ctrl_n_133;
  wire u_ctrl_n_134;
  wire u_ctrl_n_135;
  wire u_ctrl_n_136;
  wire u_ctrl_n_137;
  wire u_ctrl_n_138;
  wire u_ctrl_n_139;
  wire u_ctrl_n_14;
  wire u_ctrl_n_140;
  wire u_ctrl_n_141;
  wire u_ctrl_n_142;
  wire u_ctrl_n_143;
  wire u_ctrl_n_144;
  wire u_ctrl_n_146;
  wire u_ctrl_n_147;
  wire u_ctrl_n_148;
  wire u_ctrl_n_149;
  wire u_ctrl_n_15;
  wire u_ctrl_n_150;
  wire u_ctrl_n_154;
  wire u_ctrl_n_156;
  wire u_ctrl_n_157;
  wire u_ctrl_n_158;
  wire u_ctrl_n_16;
  wire u_ctrl_n_2;
  wire u_ctrl_n_21;
  wire u_ctrl_n_22;
  wire u_ctrl_n_23;
  wire u_ctrl_n_24;
  wire u_ctrl_n_25;
  wire u_ctrl_n_26;
  wire u_ctrl_n_27;
  wire u_ctrl_n_28;
  wire u_ctrl_n_29;
  wire u_ctrl_n_30;
  wire u_ctrl_n_31;
  wire u_ctrl_n_32;
  wire u_ctrl_n_33;
  wire u_ctrl_n_35;
  wire u_ctrl_n_44;
  wire u_ctrl_n_45;
  wire u_ctrl_n_46;
  wire u_ctrl_n_47;
  wire u_ctrl_n_48;
  wire u_ctrl_n_49;
  wire u_ctrl_n_50;
  wire u_ctrl_n_51;
  wire u_ctrl_n_52;
  wire u_ctrl_n_53;
  wire u_ctrl_n_54;
  wire u_ctrl_n_55;
  wire u_ctrl_n_56;
  wire u_ctrl_n_57;
  wire u_ctrl_n_58;
  wire u_ctrl_n_59;
  wire u_ctrl_n_60;
  wire u_ctrl_n_61;
  wire u_ctrl_n_62;
  wire u_ctrl_n_63;
  wire u_ctrl_n_64;
  wire u_ctrl_n_65;
  wire u_ctrl_n_66;
  wire u_ctrl_n_67;
  wire u_ctrl_n_68;
  wire u_ctrl_n_69;
  wire u_ctrl_n_7;
  wire u_ctrl_n_70;
  wire u_ctrl_n_8;
  wire u_ctrl_n_9;
  wire u_ctrl_n_93;
  wire u_ctrl_n_94;
  wire u_ctrl_n_95;
  wire u_ctrl_n_96;
  wire u_ctrl_n_97;
  wire u_ctrl_n_98;
  wire u_ctrl_n_99;
  wire u_path_n_15;
  wire u_path_n_16;
  wire u_path_n_17;
  wire u_path_n_25;
  wire u_path_n_26;
  wire u_path_n_27;
  wire u_path_n_29;
  wire u_path_n_30;
  wire u_path_n_31;
  wire u_path_n_33;
  wire u_path_n_34;
  wire u_path_n_35;
  wire u_path_n_36;
  wire u_path_n_37;
  wire u_path_n_38;
  wire u_path_n_39;
  wire u_path_n_40;
  wire u_path_n_41;
  wire u_path_n_42;
  wire u_pick_n_16;
  wire u_pick_n_17;
  wire u_pick_n_18;
  wire u_pick_n_19;
  wire u_pick_n_20;
  wire u_pick_n_21;
  wire u_pick_n_22;
  wire u_pick_n_23;
  wire u_pick_n_24;
  wire u_pick_n_25;
  wire u_pick_n_26;
  wire u_pick_n_27;
  wire u_pick_n_28;
  wire u_pick_n_29;
  wire u_pick_n_30;
  wire u_pick_n_38;
  wire u_pick_n_39;
  wire u_pick_n_40;
  wire u_pick_n_41;
  wire u_pick_n_42;
  wire u_pick_n_43;
  wire u_pick_n_44;
  wire u_pick_n_68;
  wire u_pick_n_69;
  wire u_pick_n_70;
  wire u_pick_n_71;
  wire u_pick_n_72;
  wire u_pick_n_73;
  wire u_pick_n_74;
  wire u_pick_n_75;
  wire u_pick_n_76;
  wire u_pick_n_77;
  wire u_pick_n_78;
  wire u_pick_n_79;
  wire u_pick_n_80;
  wire u_pick_n_81;
  wire u_pick_n_82;
  wire u_pick_n_83;
  wire u_pick_n_85;
  wire u_pick_n_86;
  wire u_pick_n_87;
  wire u_pick_n_88;
  wire u_up_n_0;
  wire u_up_n_13;
  wire u_up_n_14;
  wire u_up_n_15;
  wire u_up_n_16;
  wire u_up_n_17;
  wire u_up_n_2;
  wire u_up_n_22;
  wire u_up_n_23;
  wire u_up_n_24;
  wire u_up_n_25;
  wire u_up_n_26;
  wire u_up_n_27;
  wire u_up_n_28;
  wire u_up_n_29;
  wire u_up_n_3;
  wire u_up_n_4;
  wire u_up_n_5;
  wire u_up_n_6;
  wire u_up_n_7;
  wire u_up_n_8;
  wire u_up_n_9;
  wire ucomb30_in;
  wire [7:0]ui_in;
  wire [7:0]uio_in;
  wire [2:0]uio_r;
  wire [7:0]uo_out;
  wire [3:0]uq;
  wire w_real;

  system_slice_0_0_ms_cost u_cost
       (.CO(u_ctrl_n_116),
        .O({u_ctrl_n_113,u_ctrl_n_114}),
        .Q(Q),
        .a(old[5]),
        .b_first(b_first),
        .b_real(b_real),
        .clk(clk),
        .cost(cost),
        .in_left(in_left),
        .in_right(in_right),
        .\l_bot_reg[5] (u_ctrl_n_115),
        .l_new(l_new[5]),
        .load(load),
        .p_1_in(u_cost_n_0),
        .\rs_ok_reg[15]_0 (u_ctrl_n_28),
        .scan(scan),
        .w_real(w_real));
  system_slice_0_0_ms_ctrl u_ctrl
       (.CO(sec2),
        .D(p_1_in),
        .DI(u_ctrl_n_132),
        .E(u_ctrl_n_7),
        .O({u_ctrl_n_113,u_ctrl_n_114}),
        .Q(carry_l),
        .S({u_ctrl_n_15,u_ctrl_n_16}),
        .SR({u_ctrl_n_23,u_ctrl_n_24}),
        .SS(u_ctrl_n_22),
        .a(old),
        .b_first(b_first),
        .b_first_reg_0(u_ctrl_n_112),
        .b_first_reg_1(u_ctrl_n_134),
        .b_own(b_own),
        .b_real(b_real),
        .b_real_reg_0(u_ctrl_n_93),
        .b_real_reg_1(u_ctrl_n_94),
        .b_real_reg_10(u_ctrl_n_105),
        .b_real_reg_11(u_ctrl_n_106),
        .b_real_reg_12(u_ctrl_n_107),
        .b_real_reg_13(u_ctrl_n_108),
        .b_real_reg_14(u_ctrl_n_109),
        .b_real_reg_15(u_ctrl_n_110),
        .b_real_reg_16(u_ctrl_n_111),
        .b_real_reg_17(u_ctrl_n_118),
        .b_real_reg_18(u_ctrl_n_135),
        .b_real_reg_2(u_ctrl_n_96),
        .b_real_reg_3(u_ctrl_n_97),
        .b_real_reg_4(u_ctrl_n_99),
        .b_real_reg_5(u_ctrl_n_100),
        .b_real_reg_6(u_ctrl_n_101),
        .b_real_reg_7(u_ctrl_n_102),
        .b_real_reg_8(u_ctrl_n_103),
        .b_real_reg_9(u_ctrl_n_104),
        .b_use(b_use),
        .b_use_reg_0(r_new),
        .b_v_reg_0(u_ctrl_n_35),
        .best_s(best_s),
        .\best_s_reg[6] (u_path_n_30),
        .\best_s_reg[7] (u_ctrl_n_95),
        .\carry_rec_reg[0] (u_pick_n_16),
        .\carry_rec_reg[0]_0 (u_pick_n_82),
        .\carry_rec_reg[10] ({u_ctrl_n_69,u_ctrl_n_70}),
        .\carry_rec_reg[10]_0 (u_pick_n_26),
        .\carry_rec_reg[10]_1 (u_pick_n_72),
        .\carry_rec_reg[11] (u_pick_n_27),
        .\carry_rec_reg[11]_0 (u_pick_n_71),
        .\carry_rec_reg[12] (u_pick_n_28),
        .\carry_rec_reg[12]_0 (u_pick_n_70),
        .\carry_rec_reg[13] (u_pick_n_29),
        .\carry_rec_reg[13]_0 (u_pick_n_69),
        .\carry_rec_reg[14] (u_pick_n_30),
        .\carry_rec_reg[14]_0 (u_pick_n_68),
        .\carry_rec_reg[14]_1 (rec_in),
        .\carry_rec_reg[1] (u_pick_n_17),
        .\carry_rec_reg[1]_0 (u_pick_n_81),
        .\carry_rec_reg[2] (u_pick_n_18),
        .\carry_rec_reg[2]_0 (u_pick_n_80),
        .\carry_rec_reg[3] (u_pick_n_19),
        .\carry_rec_reg[3]_0 (u_pick_n_79),
        .\carry_rec_reg[4] (u_pick_n_20),
        .\carry_rec_reg[4]_0 (u_pick_n_78),
        .\carry_rec_reg[5] (u_pick_n_21),
        .\carry_rec_reg[5]_0 (u_pick_n_77),
        .\carry_rec_reg[6] (u_pick_n_22),
        .\carry_rec_reg[6]_0 (u_pick_n_76),
        .\carry_rec_reg[7] (u_pick_n_23),
        .\carry_rec_reg[7]_0 (u_pick_n_75),
        .\carry_rec_reg[8] (u_pick_n_24),
        .\carry_rec_reg[8]_0 (u_pick_n_74),
        .\carry_rec_reg[9] (u_pick_n_25),
        .\carry_rec_reg[9]_0 (u_pick_n_73),
        .clk(clk),
        .cost(cost),
        .\gmin_reg[6]_0 (b2_out),
        .in_left(in_left),
        .in_right(in_right),
        .\l_bot[3]_i_10 ({u_path_n_25,u_path_n_26,u_path_n_27}),
        .\l_bot[6]_i_14_0 (u_ctrl_n_115),
        .\l_bot[6]_i_14_1 (u_ctrl_n_116),
        .\l_bot[6]_i_35 (min90_return1),
        .\l_bot_reg[3]_i_2_0 (a),
        .\l_bot_reg[6]_i_18_0 (dn_edge),
        .\l_bot_reg[6]_i_55_0 (\l_bot_reg[6]_i_55 ),
        .l_new({l_new[6],l_new[4:0]}),
        .l_up0(l_up0),
        .lmin({lmin[6:4],lmin[0]}),
        .\lmin_reg[5] (l_new[5]),
        .\lmin_reg[6] (u_path_n_29),
        .load(load),
        .\m_s0_reg[0] (u_up_n_17),
        .\m_s0_reg[1] (u_up_n_28),
        .\m_s0_reg[1]_0 (u_up_n_22),
        .\m_s0_reg[1]_1 (u_path_n_34),
        .\m_s0_reg[2] (u_up_n_16),
        .\m_s0_reg[2]_0 (u_up_n_23),
        .\m_s0_reg[2]_1 (u_path_n_33),
        .\m_s0_reg[3] (u_up_n_4),
        .\m_s0_reg[3]_0 (u_up_n_25),
        .\m_s0_reg[3]_1 (u_path_n_31),
        .\m_s0_reg[4] (u_up_n_13),
        .\m_s0_reg[4]_0 (u_up_n_24),
        .\m_s0_reg[5] (u_up_n_14),
        .\m_s0_reg[6] (u_up_n_15),
        .\m_sec_reg[7] ({u_up_n_5,u_up_n_6,u_up_n_7,u_up_n_8,u_up_n_9,uio_r}),
        .\m_sec_reg[7]_0 (rec_top),
        .\m_sec_reg[7]_1 (u_up_n_27),
        .\m_sec_reg[7]_2 (u_up_n_0),
        .own_wins_reg(b_own0),
        .p_1_in({u_ctrl_n_126,u_ctrl_n_127,u_ctrl_n_128,u_ctrl_n_129,u_ctrl_n_130,u_ctrl_n_131}),
        .\pos_reg[0]_0 (u_ctrl_n_13),
        .\pos_reg[0]_1 (u_ctrl_n_27),
        .\pos_reg[0]_2 (u_ctrl_n_148),
        .\pos_reg[2]_0 (u_ctrl_n_25),
        .\pos_reg[2]_1 (u_ctrl_n_154),
        .\rec_in_reg[6] (\rec_in_reg[6] ),
        .\rec_reg[0][13] ({p_0_in_0,u_pick_n_38,u_pick_n_39,u_pick_n_40,u_pick_n_41,u_pick_n_42,u_pick_n_43,u_pick_n_44}),
        .\rec_reg[0][7] (u_pick_n_83),
        .run(run),
        .run_reg_0(u_ctrl_n_14),
        .run_reg_1(m_s0),
        .run_reg_2(u_ctrl_n_146),
        .run_reg_3(u_ctrl_n_150),
        .run_reg_4(m_sec),
        .run_reg_5(rin_s),
        .s0(s0),
        .\s0_reg[7] (u_ctrl_n_29),
        .s2(s2),
        .\s2_reg[7] (u_ctrl_n_31),
        .scan(scan),
        .sg_first_reg_0(u_ctrl_n_28),
        .sg_valid_reg_0(u_ctrl_n_0),
        .sg_valid_reg_1(u_ctrl_n_2),
        .sg_valid_reg_2(u_ctrl_n_30),
        .sg_valid_reg_3(u_ctrl_n_32),
        .sg_valid_reg_4(u_ctrl_n_33),
        .\uc_reg[0]_0 (u_ctrl_n_59),
        .\uc_reg[0]_1 (u_ctrl_n_60),
        .\uc_reg[0]_2 (u_ctrl_n_63),
        .\uc_reg[0]_3 (u_ctrl_n_64),
        .\uc_reg[0]_4 (u_ctrl_n_67),
        .\uc_reg[0]_5 (u_ctrl_n_68),
        .\uc_reg[0]_6 (u_ctrl_n_133),
        .\uc_reg[0]_7 (u_ctrl_n_149),
        .\uc_reg[1]_0 (u_ctrl_n_61),
        .\uc_reg[1]_1 (u_ctrl_n_62),
        .\uc_reg[1]_2 (u_ctrl_n_65),
        .\uc_reg[1]_3 (u_ctrl_n_66),
        .\uc_reg[2]_0 (u_ctrl_n_10),
        .\uc_reg[2]_1 (u_ctrl_n_11),
        .\uc_reg[2]_2 (u_ctrl_n_12),
        .\uc_reg[2]_3 (u_ctrl_n_98),
        .\uc_reg[3]_0 (Q),
        .\uc_reg[3]_1 (u_ctrl_n_8),
        .\uc_reg[3]_2 (u_ctrl_n_9),
        .\uc_reg[3]_3 ({u_ctrl_n_44,u_ctrl_n_45,u_ctrl_n_46,u_ctrl_n_47,u_ctrl_n_48,u_ctrl_n_49,u_ctrl_n_50,u_ctrl_n_51,u_ctrl_n_52,u_ctrl_n_53,u_ctrl_n_54,u_ctrl_n_55,u_ctrl_n_56,u_ctrl_n_57,u_ctrl_n_58}),
        .\uc_reg[4]_0 (u_ctrl_n_26),
        .ui_in(ui_in),
        .\uio_r_reg[3] (u_ctrl_n_147),
        .\uio_r_reg[4] (u_ctrl_n_144),
        .\uio_r_reg[6] ({u_ctrl_n_136,u_ctrl_n_137,u_ctrl_n_138,u_ctrl_n_139,u_ctrl_n_140,u_ctrl_n_141,u_ctrl_n_142,u_ctrl_n_143}),
        .\uo[0]_i_7_0 (best_j),
        .\uo[1]_i_8 (ucomb30_in),
        .\uo[5]_i_11_0 (u_up_n_29),
        .\uo[6]_i_5_0 (l_top),
        .\uo[6]_i_5_1 (l_bot),
        .\uo[6]_i_8_0 ({pw_k[6:5],pw_k[2:1]}),
        .\uo[7]_i_100 ({p_1_in0,u_up_n_2,u_up_n_3}),
        .\uo[7]_i_10_0 (f_uniq),
        .\uo[7]_i_10_1 (sec),
        .\uo_reg[7]_i_60 (u_up_n_26),
        .uq(uq),
        .\uq_reg[0]_0 (u_ctrl_n_158),
        .\uq_reg[1]_0 (u_ctrl_n_157),
        .\uq_reg[2]_0 (u_ctrl_n_21),
        .\uq_reg[2]_1 (u_ctrl_n_156),
        .w_real(w_real));
  system_slice_0_0_ms_path u_path
       (.D(Q),
        .DI(u_ctrl_n_132),
        .E(u_ctrl_n_98),
        .Q(sec[5:0]),
        .S({u_path_n_15,u_path_n_16,u_path_n_17}),
        .a(old),
        .\best_j_reg[0]_0 (best_j),
        .\best_j_reg[1]_0 (u_path_n_34),
        .\best_j_reg[2]_0 (u_path_n_33),
        .\best_j_reg[3]_0 (u_path_n_31),
        .\best_j_reg[3]_1 (u_ctrl_n_118),
        .best_s(best_s),
        .\best_s_reg[0]_0 (u_ctrl_n_106),
        .\best_s_reg[1]_0 (u_ctrl_n_107),
        .\best_s_reg[2]_0 (u_ctrl_n_108),
        .\best_s_reg[3]_0 (u_ctrl_n_109),
        .\best_s_reg[4]_0 (u_ctrl_n_110),
        .\best_s_reg[5]_0 (u_ctrl_n_111),
        .\best_s_reg[6]_0 (u_path_n_30),
        .\best_s_reg[6]_1 (u_ctrl_n_135),
        .\best_s_reg[6]_2 (u_ctrl_n_96),
        .\best_s_reg[6]_3 (u_ctrl_n_112),
        .\best_s_reg[7]_0 ({u_path_n_35,u_path_n_36,u_path_n_37,u_path_n_38}),
        .\best_s_reg[7]_1 (u_ctrl_n_95),
        .carry_l(carry_l),
        .\carry_l_reg[6]_0 (u_ctrl_n_133),
        .clk(clk),
        .clk_0({u_path_n_25,u_path_n_26,u_path_n_27}),
        .clk_1(a),
        .\l_bot[3]_i_3 (min90_return1),
        .\l_bot_reg[6]_0 (l_bot),
        .\l_bot_reg[6]_i_15 (b2_out),
        .l_new(l_new),
        .\l_top_reg[6]_0 (l_top),
        .\l_top_reg[6]_1 (u_ctrl_n_97),
        .l_up0(l_up0),
        .lmin(lmin),
        .\lmin_reg[0]_0 (u_ctrl_n_99),
        .\lmin_reg[1]_0 (u_ctrl_n_100),
        .\lmin_reg[2]_0 (u_ctrl_n_101),
        .\lmin_reg[3]_0 (u_ctrl_n_102),
        .\lmin_reg[4]_0 (u_ctrl_n_103),
        .\lmin_reg[5]_0 (u_ctrl_n_104),
        .\lmin_reg[6]_0 (u_path_n_29),
        .\lmin_reg[6]_1 ({u_path_n_39,u_path_n_40,u_path_n_41,u_path_n_42}),
        .\lmin_reg[6]_2 (u_ctrl_n_93),
        .\lmin_reg[6]_3 (u_ctrl_n_94),
        .\lmin_reg[6]_4 (u_ctrl_n_105),
        .\lmin_reg[6]_5 (u_ctrl_n_134),
        .own_wins_reg_i_2({u_up_n_5,u_up_n_6,u_up_n_7,u_up_n_8,u_up_n_9,uio_r}),
        .p_0_in(p_0_in),
        .p_1_in({u_ctrl_n_126,u_cost_n_0,u_ctrl_n_127,u_ctrl_n_128,u_ctrl_n_129,u_ctrl_n_130,u_ctrl_n_131}),
        .scan(scan),
        .\uo[1]_i_2 (u_up_n_0),
        .\uo[1]_i_2_0 (u_ctrl_n_13),
        .\uo[1]_i_2_1 (u_ctrl_n_154));
  system_slice_0_0_ms_pick u_pick
       (.CO(sec2),
        .D(r_new),
        .E(u_ctrl_n_33),
        .Q({p_0_in_0,u_pick_n_38,u_pick_n_39,u_pick_n_40,u_pick_n_41,u_pick_n_42,u_pick_n_43,u_pick_n_44}),
        .S({u_path_n_15,u_path_n_16,u_path_n_17}),
        .a(old),
        .b_real(b_real),
        .b_use(b_use),
        .\carry_rec_reg[14]_0 (u_pick_n_83),
        .\carry_rec_reg[14]_1 (Q),
        .\carry_rec_reg[14]_2 (u_ctrl_n_35),
        .\carry_rec_reg[14]_3 ({u_ctrl_n_44,u_ctrl_n_45,u_ctrl_n_46,u_ctrl_n_47,u_ctrl_n_48,u_ctrl_n_49,u_ctrl_n_50,u_ctrl_n_51,u_ctrl_n_52,u_ctrl_n_53,u_ctrl_n_54,u_ctrl_n_55,u_ctrl_n_56,u_ctrl_n_57,u_ctrl_n_58}),
        .clk(clk),
        .l_new(l_new),
        .\rec_reg[0][0]_0 (u_ctrl_n_9),
        .\rec_reg[10][14]_0 (u_ctrl_n_60),
        .\rec_reg[11][14]_0 (u_ctrl_n_59),
        .\rec_reg[12][0]_0 (u_ctrl_n_12),
        .\rec_reg[13][0]_0 (u_ctrl_n_11),
        .\rec_reg[14][0]_0 (u_ctrl_n_10),
        .\rec_reg[15][13]_0 (u_pick_n_69),
        .\rec_reg[15][14]_0 (rec_top),
        .\rec_reg[15][14]_1 ({u_ctrl_n_69,u_ctrl_n_70}),
        .\rec_reg[15][14]_2 (u_ctrl_n_68),
        .\rec_reg[15][1]_0 (u_pick_n_81),
        .\rec_reg[15][2]_0 (u_pick_n_80),
        .\rec_reg[1][0]_0 (u_ctrl_n_8),
        .\rec_reg[2][0]_0 (u_ctrl_n_7),
        .\rec_reg[3][14]_0 (u_ctrl_n_67),
        .\rec_reg[4][14]_0 (u_ctrl_n_66),
        .\rec_reg[5][14]_0 (u_ctrl_n_65),
        .\rec_reg[6][14]_0 (u_ctrl_n_64),
        .\rec_reg[7][0]_0 (u_pick_n_82),
        .\rec_reg[7][10]_0 (u_pick_n_72),
        .\rec_reg[7][11]_0 (u_pick_n_71),
        .\rec_reg[7][12]_0 (u_pick_n_70),
        .\rec_reg[7][14]_0 (u_pick_n_68),
        .\rec_reg[7][14]_1 (u_ctrl_n_63),
        .\rec_reg[7][3]_0 (u_pick_n_79),
        .\rec_reg[7][4]_0 (u_pick_n_78),
        .\rec_reg[7][5]_0 (u_pick_n_77),
        .\rec_reg[7][6]_0 (u_pick_n_76),
        .\rec_reg[7][7]_0 (u_pick_n_75),
        .\rec_reg[7][8]_0 (u_pick_n_74),
        .\rec_reg[7][9]_0 (u_pick_n_73),
        .\rec_reg[8][14]_0 (u_ctrl_n_62),
        .\rec_reg[9][14]_0 (u_ctrl_n_61),
        .s0(s0),
        .\s0_reg[0]_0 (u_ctrl_n_0),
        .\s0_reg[6]_0 (u_ctrl_n_30),
        .\s0_reg[7]_0 (u_ctrl_n_29),
        .s2(s2),
        .\s2_reg[0]_0 (u_ctrl_n_2),
        .\s2_reg[6]_0 (u_ctrl_n_32),
        .\s2_reg[7]_0 (u_ctrl_n_31),
        .\sec_reg[7]_0 (sec),
        .\sec_reg[7]_1 ({u_pick_n_85,u_pick_n_86,u_pick_n_87,u_pick_n_88}),
        .\sec_reg[7]_2 (p_1_in),
        .\uc_reg[2] (u_pick_n_17),
        .\uc_reg[2]_0 (u_pick_n_18),
        .\uc_reg[2]_1 (u_pick_n_29),
        .\uc_reg[3] (u_pick_n_16),
        .\uc_reg[3]_0 (u_pick_n_19),
        .\uc_reg[3]_1 (u_pick_n_20),
        .\uc_reg[3]_10 (u_pick_n_30),
        .\uc_reg[3]_2 (u_pick_n_21),
        .\uc_reg[3]_3 (u_pick_n_22),
        .\uc_reg[3]_4 (u_pick_n_23),
        .\uc_reg[3]_5 (u_pick_n_24),
        .\uc_reg[3]_6 (u_pick_n_25),
        .\uc_reg[3]_7 (u_pick_n_26),
        .\uc_reg[3]_8 (u_pick_n_27),
        .\uc_reg[3]_9 (u_pick_n_28),
        .\uo_reg[4]_i_15 ({u_up_n_5,u_up_n_6,u_up_n_7,u_up_n_8,u_up_n_9,uio_r}));
  system_slice_0_0_ms_up u_up
       (.D({u_ctrl_n_136,u_ctrl_n_137,u_ctrl_n_138,u_ctrl_n_139,u_ctrl_n_140,u_ctrl_n_141,u_ctrl_n_142,u_ctrl_n_143}),
        .E(u_ctrl_n_148),
        .Q({p_1_in0,u_up_n_2,u_up_n_3}),
        .S({u_ctrl_n_15,u_ctrl_n_16}),
        .SR({u_ctrl_n_23,u_ctrl_n_24}),
        .SS(u_ctrl_n_22),
        .b_own(b_own),
        .best_s(best_s),
        .clk(clk),
        .\dn_edge_reg[6]_0 (dn_edge),
        .\dn_edge_reg[6]_1 (u_ctrl_n_146),
        .lmin(lmin),
        .\m_s0_reg[6]_0 (m_s0),
        .\m_s2_reg[0]_0 (u_ctrl_n_14),
        .\m_sec_reg[7]_0 (m_sec),
        .\mw_k_reg[6]_0 (u_ctrl_n_149),
        .own_wins_reg_0(u_up_n_0),
        .own_wins_reg_1({u_path_n_35,u_path_n_36,u_path_n_37,u_path_n_38}),
        .\pw_k_reg[0]_0 (u_up_n_17),
        .\pw_k_reg[0]_1 (load),
        .\pw_k_reg[3]_0 (u_up_n_25),
        .\pw_k_reg[4]_0 (u_up_n_24),
        .\pw_k_reg[6]_0 ({pw_k[6:5],pw_k[2:1]}),
        .\rec_in_reg[14]_0 (rec_in),
        .\rec_in_reg[14]_1 (u_ctrl_n_150),
        .\rin_s_reg[7]_0 (u_ctrl_n_25),
        .\rin_s_reg[7]_1 (rin_s),
        .run(run),
        .run_reg(u_up_n_4),
        .run_reg_0(u_up_n_13),
        .run_reg_1(u_up_n_14),
        .run_reg_2(u_up_n_15),
        .run_reg_3(u_up_n_16),
        .uio_in(uio_in),
        .\uio_r_reg[1]_0 (u_up_n_28),
        .\uio_r_reg[6]_0 (u_up_n_27),
        .\uio_r_reg[6]_1 (ucomb30_in),
        .\uio_r_reg[7]_0 ({u_up_n_5,u_up_n_6,u_up_n_7,u_up_n_8,u_up_n_9,uio_r}),
        .\uio_r_reg[7]_1 (u_up_n_29),
        .\uio_r_reg[7]_2 (b_own0),
        .\uo[2]_i_5 (u_ctrl_n_26),
        .\uo[2]_i_5_0 (u_ctrl_n_27),
        .\uo[3]_i_5 (u_ctrl_n_147),
        .\uo[4]_i_6 (u_ctrl_n_144),
        .\uo[5]_i_13 (u_up_n_22),
        .\uo[5]_i_13_0 (u_up_n_23),
        .\uo[5]_i_16 ({u_pick_n_85,u_pick_n_86,u_pick_n_87,u_pick_n_88}),
        .\uo[6]_i_10 ({u_path_n_39,u_path_n_40,u_path_n_41,u_path_n_42}),
        .\uo[7]_i_44_0 (u_ctrl_n_21),
        .\uo[7]_i_47_0 (f_uniq),
        .\uo[7]_i_52_0 (u_ctrl_n_156),
        .uo_out(uo_out),
        .\uo_reg[4]_i_15_0 (sec),
        .\uo_reg[7]_i_60_0 (u_ctrl_n_157),
        .\uo_reg[7]_i_63_0 (u_ctrl_n_158),
        .uq(uq),
        .\uq_reg[2] (u_up_n_26));
endmodule

(* ORIG_REF_NAME = "ms_cost" *) 
module system_slice_0_0_ms_cost
   (p_1_in,
    l_new,
    cost,
    load,
    in_right,
    clk,
    \rs_ok_reg[15]_0 ,
    in_left,
    w_real,
    b_real,
    a,
    O,
    \l_bot_reg[5] ,
    CO,
    b_first,
    Q,
    scan);
  output [0:0]p_1_in;
  output [0:0]l_new;
  output [5:0]cost;
  input load;
  input [44:0]in_right;
  input clk;
  input \rs_ok_reg[15]_0 ;
  input [44:0]in_left;
  input w_real;
  input b_real;
  input [0:0]a;
  input [1:0]O;
  input [0:0]\l_bot_reg[5] ;
  input [0:0]CO;
  input b_first;
  input [3:0]Q;
  input scan;

  wire [7:0]A;
  wire [0:0]CO;
  wire [1:0]O;
  wire [3:0]Q;
  wire [0:0]a;
  wire b_first;
  wire b_real;
  wire clk;
  wire [5:0]cost;
  wire [5:0]cur;
  wire hist_reg_0_15_0_0_n_0;
  wire hist_reg_0_15_10_10_i_2_n_0;
  wire hist_reg_0_15_10_10_i_3_n_0;
  wire hist_reg_0_15_10_10_i_4_n_0;
  wire hist_reg_0_15_10_10_i_5_n_0;
  wire hist_reg_0_15_10_10_i_6_n_0;
  wire hist_reg_0_15_10_10_i_7_n_0;
  wire hist_reg_0_15_10_10_i_8_n_0;
  wire hist_reg_0_15_10_10_i_9_n_0;
  wire hist_reg_0_15_11_11_i_2_n_0;
  wire hist_reg_0_15_1_1_n_0;
  wire hist_reg_0_15_2_2_n_0;
  wire hist_reg_0_15_3_3_n_0;
  wire hist_reg_0_15_4_4_n_0;
  wire hist_reg_0_15_5_5_n_0;
  wire hist_reg_0_15_6_6_i_10_n_0;
  wire hist_reg_0_15_6_6_i_11_n_0;
  wire hist_reg_0_15_6_6_i_12_n_0;
  wire hist_reg_0_15_6_6_i_13_n_0;
  wire hist_reg_0_15_6_6_i_14_n_0;
  wire hist_reg_0_15_6_6_i_15_n_0;
  wire hist_reg_0_15_6_6_i_2_n_0;
  wire hist_reg_0_15_6_6_i_3_n_0;
  wire hist_reg_0_15_6_6_i_4_n_0;
  wire hist_reg_0_15_6_6_i_5_n_0;
  wire hist_reg_0_15_6_6_i_6_n_0;
  wire hist_reg_0_15_6_6_i_7_n_0;
  wire hist_reg_0_15_6_6_i_8_n_0;
  wire hist_reg_0_15_6_6_i_9_n_0;
  wire hist_reg_0_15_7_7_i_10_n_0;
  wire hist_reg_0_15_7_7_i_11_n_0;
  wire hist_reg_0_15_7_7_i_12_n_0;
  wire hist_reg_0_15_7_7_i_13_n_0;
  wire hist_reg_0_15_7_7_i_14_n_0;
  wire hist_reg_0_15_7_7_i_15_n_0;
  wire hist_reg_0_15_7_7_i_16_n_0;
  wire hist_reg_0_15_7_7_i_17_n_0;
  wire hist_reg_0_15_7_7_i_18_n_0;
  wire hist_reg_0_15_7_7_i_19_n_0;
  wire hist_reg_0_15_7_7_i_20_n_0;
  wire hist_reg_0_15_7_7_i_21_n_0;
  wire hist_reg_0_15_7_7_i_22_n_0;
  wire hist_reg_0_15_7_7_i_23_n_0;
  wire hist_reg_0_15_7_7_i_24_n_0;
  wire hist_reg_0_15_7_7_i_25_n_0;
  wire hist_reg_0_15_7_7_i_26_n_0;
  wire hist_reg_0_15_7_7_i_27_n_0;
  wire hist_reg_0_15_7_7_i_28_n_0;
  wire hist_reg_0_15_7_7_i_29_n_0;
  wire hist_reg_0_15_7_7_i_2_n_0;
  wire hist_reg_0_15_7_7_i_30_n_0;
  wire hist_reg_0_15_7_7_i_31_n_0;
  wire hist_reg_0_15_7_7_i_32_n_0;
  wire hist_reg_0_15_7_7_i_33_n_0;
  wire hist_reg_0_15_7_7_i_34_n_0;
  wire hist_reg_0_15_7_7_i_35_n_0;
  wire hist_reg_0_15_7_7_i_36_n_0;
  wire hist_reg_0_15_7_7_i_37_n_0;
  wire hist_reg_0_15_7_7_i_38_n_0;
  wire hist_reg_0_15_7_7_i_39_n_0;
  wire hist_reg_0_15_7_7_i_3_n_0;
  wire hist_reg_0_15_7_7_i_40_n_0;
  wire hist_reg_0_15_7_7_i_41_n_0;
  wire hist_reg_0_15_7_7_i_42_n_0;
  wire hist_reg_0_15_7_7_i_43_n_0;
  wire hist_reg_0_15_7_7_i_44_n_0;
  wire hist_reg_0_15_7_7_i_45_n_0;
  wire hist_reg_0_15_7_7_i_46_n_0;
  wire hist_reg_0_15_7_7_i_47_n_0;
  wire hist_reg_0_15_7_7_i_4_n_0;
  wire hist_reg_0_15_7_7_i_5_n_0;
  wire hist_reg_0_15_7_7_i_6_n_0;
  wire hist_reg_0_15_7_7_i_7_n_0;
  wire hist_reg_0_15_7_7_i_8_n_0;
  wire hist_reg_0_15_7_7_i_9_n_0;
  wire hist_reg_0_15_8_8_i_10_n_0;
  wire hist_reg_0_15_8_8_i_11_n_0;
  wire hist_reg_0_15_8_8_i_12_n_0;
  wire hist_reg_0_15_8_8_i_13_n_0;
  wire hist_reg_0_15_8_8_i_14_n_0;
  wire hist_reg_0_15_8_8_i_15_n_0;
  wire hist_reg_0_15_8_8_i_16_n_0;
  wire hist_reg_0_15_8_8_i_17_n_0;
  wire hist_reg_0_15_8_8_i_18_n_0;
  wire hist_reg_0_15_8_8_i_19_n_0;
  wire hist_reg_0_15_8_8_i_20_n_0;
  wire hist_reg_0_15_8_8_i_21_n_0;
  wire hist_reg_0_15_8_8_i_22_n_0;
  wire hist_reg_0_15_8_8_i_23_n_0;
  wire hist_reg_0_15_8_8_i_24_n_0;
  wire hist_reg_0_15_8_8_i_25_n_0;
  wire hist_reg_0_15_8_8_i_26_n_0;
  wire hist_reg_0_15_8_8_i_2_n_0;
  wire hist_reg_0_15_8_8_i_3_n_0;
  wire hist_reg_0_15_8_8_i_4_n_0;
  wire hist_reg_0_15_8_8_i_5_n_0;
  wire hist_reg_0_15_8_8_i_6_n_0;
  wire hist_reg_0_15_8_8_i_7_n_0;
  wire hist_reg_0_15_8_8_i_8_n_0;
  wire hist_reg_0_15_8_8_i_9_n_0;
  wire hist_reg_0_15_9_9_i_2_n_0;
  wire hist_reg_0_15_9_9_i_3_n_0;
  wire hist_reg_0_15_9_9_i_4_n_0;
  wire hist_reg_0_15_9_9_i_5_n_0;
  wire hist_reg_0_15_9_9_i_6_n_0;
  wire hist_reg_0_15_9_9_i_7_n_0;
  wire [44:0]in_left;
  wire [44:0]in_right;
  wire \l_bot[1]_i_10_n_0 ;
  wire \l_bot[1]_i_11_n_0 ;
  wire \l_bot[1]_i_14_n_0 ;
  wire \l_bot[1]_i_15_n_0 ;
  wire \l_bot[1]_i_16_n_0 ;
  wire \l_bot[1]_i_17_n_0 ;
  wire \l_bot[1]_i_18_n_0 ;
  wire \l_bot[1]_i_19_n_0 ;
  wire \l_bot[1]_i_20_n_0 ;
  wire \l_bot[1]_i_21_n_0 ;
  wire \l_bot[1]_i_22_n_0 ;
  wire \l_bot[1]_i_23_n_0 ;
  wire \l_bot[1]_i_24_n_0 ;
  wire \l_bot[1]_i_25_n_0 ;
  wire \l_bot[1]_i_27_n_0 ;
  wire \l_bot[1]_i_28_n_0 ;
  wire \l_bot[1]_i_29_n_0 ;
  wire \l_bot[1]_i_30_n_0 ;
  wire \l_bot[1]_i_31_n_0 ;
  wire \l_bot[1]_i_32_n_0 ;
  wire \l_bot[1]_i_33_n_0 ;
  wire \l_bot[1]_i_34_n_0 ;
  wire \l_bot[1]_i_35_n_0 ;
  wire \l_bot[1]_i_36_n_0 ;
  wire \l_bot[1]_i_37_n_0 ;
  wire \l_bot[1]_i_4_n_0 ;
  wire \l_bot[1]_i_5_n_0 ;
  wire \l_bot[1]_i_6_n_0 ;
  wire \l_bot[1]_i_8_n_0 ;
  wire \l_bot[1]_i_9_n_0 ;
  wire \l_bot[5]_i_14_n_0 ;
  wire \l_bot[5]_i_15_n_0 ;
  wire \l_bot[5]_i_16_n_0 ;
  wire \l_bot[5]_i_17_n_0 ;
  wire \l_bot[5]_i_18_n_0 ;
  wire \l_bot[5]_i_19_n_0 ;
  wire \l_bot[5]_i_20_n_0 ;
  wire \l_bot[5]_i_21_n_0 ;
  wire \l_bot[5]_i_22_n_0 ;
  wire \l_bot[5]_i_23_n_0 ;
  wire \l_bot[5]_i_3_n_0 ;
  wire \l_bot[5]_i_4_n_0 ;
  wire \l_bot[5]_i_5_n_0 ;
  wire \l_bot[5]_i_6_n_0 ;
  wire \l_bot[5]_i_7_n_0 ;
  wire \l_bot[5]_i_8_n_0 ;
  wire \l_bot[5]_i_9_n_0 ;
  wire \l_bot_reg[1]_i_12_n_0 ;
  wire \l_bot_reg[1]_i_12_n_1 ;
  wire \l_bot_reg[1]_i_12_n_2 ;
  wire \l_bot_reg[1]_i_12_n_3 ;
  wire \l_bot_reg[1]_i_12_n_4 ;
  wire \l_bot_reg[1]_i_12_n_5 ;
  wire \l_bot_reg[1]_i_12_n_6 ;
  wire \l_bot_reg[1]_i_12_n_7 ;
  wire \l_bot_reg[1]_i_13_n_0 ;
  wire \l_bot_reg[1]_i_13_n_1 ;
  wire \l_bot_reg[1]_i_13_n_2 ;
  wire \l_bot_reg[1]_i_13_n_3 ;
  wire \l_bot_reg[1]_i_13_n_4 ;
  wire \l_bot_reg[1]_i_13_n_7 ;
  wire \l_bot_reg[1]_i_26_n_0 ;
  wire \l_bot_reg[1]_i_26_n_1 ;
  wire \l_bot_reg[1]_i_26_n_2 ;
  wire \l_bot_reg[1]_i_26_n_3 ;
  wire \l_bot_reg[1]_i_26_n_4 ;
  wire \l_bot_reg[1]_i_26_n_5 ;
  wire \l_bot_reg[1]_i_26_n_6 ;
  wire \l_bot_reg[1]_i_26_n_7 ;
  wire \l_bot_reg[1]_i_2_n_0 ;
  wire \l_bot_reg[1]_i_2_n_1 ;
  wire \l_bot_reg[1]_i_2_n_2 ;
  wire \l_bot_reg[1]_i_2_n_3 ;
  wire \l_bot_reg[1]_i_3_n_0 ;
  wire \l_bot_reg[1]_i_3_n_1 ;
  wire \l_bot_reg[1]_i_3_n_2 ;
  wire \l_bot_reg[1]_i_3_n_3 ;
  wire \l_bot_reg[1]_i_7_n_0 ;
  wire \l_bot_reg[1]_i_7_n_1 ;
  wire \l_bot_reg[1]_i_7_n_2 ;
  wire \l_bot_reg[1]_i_7_n_3 ;
  wire [0:0]\l_bot_reg[5] ;
  wire \l_bot_reg[5]_i_10_n_1 ;
  wire \l_bot_reg[5]_i_10_n_3 ;
  wire \l_bot_reg[5]_i_10_n_6 ;
  wire \l_bot_reg[5]_i_10_n_7 ;
  wire \l_bot_reg[5]_i_11_n_2 ;
  wire \l_bot_reg[5]_i_11_n_7 ;
  wire \l_bot_reg[5]_i_12_n_2 ;
  wire \l_bot_reg[5]_i_12_n_3 ;
  wire \l_bot_reg[5]_i_13_n_0 ;
  wire \l_bot_reg[5]_i_13_n_1 ;
  wire \l_bot_reg[5]_i_13_n_2 ;
  wire \l_bot_reg[5]_i_13_n_3 ;
  wire \l_bot_reg[5]_i_13_n_4 ;
  wire \l_bot_reg[5]_i_13_n_5 ;
  wire \l_bot_reg[5]_i_13_n_6 ;
  wire \l_bot_reg[5]_i_13_n_7 ;
  wire \l_bot_reg[5]_i_2_n_1 ;
  wire \l_bot_reg[5]_i_2_n_2 ;
  wire \l_bot_reg[5]_i_2_n_3 ;
  wire [0:0]l_new;
  wire [43:0]left;
  wire left_ok;
  wire load;
  wire [0:0]p_1_in;
  wire [5:0]raw;
  wire [15:0]rs_ok;
  wire \rs_ok_reg[15]_0 ;
  wire \rs_reg[15][0]_srl16_n_0 ;
  wire \rs_reg[15][10]_srl16_n_0 ;
  wire \rs_reg[15][11]_srl16_n_0 ;
  wire \rs_reg[15][12]_srl16_n_0 ;
  wire \rs_reg[15][13]_srl16_n_0 ;
  wire \rs_reg[15][14]_srl16_n_0 ;
  wire \rs_reg[15][15]_srl16_n_0 ;
  wire \rs_reg[15][16]_srl16_n_0 ;
  wire \rs_reg[15][17]_srl16_n_0 ;
  wire \rs_reg[15][18]_srl16_n_0 ;
  wire \rs_reg[15][19]_srl16_n_0 ;
  wire \rs_reg[15][1]_srl16_n_0 ;
  wire \rs_reg[15][20]_srl16_n_0 ;
  wire \rs_reg[15][21]_srl16_n_0 ;
  wire \rs_reg[15][22]_srl16_n_0 ;
  wire \rs_reg[15][23]_srl16_n_0 ;
  wire \rs_reg[15][24]_srl16_n_0 ;
  wire \rs_reg[15][25]_srl16_n_0 ;
  wire \rs_reg[15][26]_srl16_n_0 ;
  wire \rs_reg[15][27]_srl16_n_0 ;
  wire \rs_reg[15][28]_srl16_n_0 ;
  wire \rs_reg[15][29]_srl16_n_0 ;
  wire \rs_reg[15][2]_srl16_n_0 ;
  wire \rs_reg[15][30]_srl16_n_0 ;
  wire \rs_reg[15][31]_srl16_n_0 ;
  wire \rs_reg[15][32]_srl16_n_0 ;
  wire \rs_reg[15][33]_srl16_n_0 ;
  wire \rs_reg[15][34]_srl16_n_0 ;
  wire \rs_reg[15][35]_srl16_n_0 ;
  wire \rs_reg[15][36]_srl16_n_0 ;
  wire \rs_reg[15][37]_srl16_n_0 ;
  wire \rs_reg[15][38]_srl16_n_0 ;
  wire \rs_reg[15][39]_srl16_n_0 ;
  wire \rs_reg[15][3]_srl16_n_0 ;
  wire \rs_reg[15][40]_srl16_n_0 ;
  wire \rs_reg[15][41]_srl16_n_0 ;
  wire \rs_reg[15][42]_srl16_n_0 ;
  wire \rs_reg[15][43]_srl16_n_0 ;
  wire \rs_reg[15][4]_srl16_n_0 ;
  wire \rs_reg[15][5]_srl16_n_0 ;
  wire \rs_reg[15][6]_srl16_n_0 ;
  wire \rs_reg[15][7]_srl16_n_0 ;
  wire \rs_reg[15][8]_srl16_n_0 ;
  wire \rs_reg[15][9]_srl16_n_0 ;
  wire scan;
  wire w_real;
  wire [2:1]\NLW_l_bot_reg[1]_i_13_O_UNCONNECTED ;
  wire [1:0]\NLW_l_bot_reg[1]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_l_bot_reg[1]_i_3_O_UNCONNECTED ;
  wire [3:1]\NLW_l_bot_reg[5]_i_10_CO_UNCONNECTED ;
  wire [3:2]\NLW_l_bot_reg[5]_i_10_O_UNCONNECTED ;
  wire [3:0]\NLW_l_bot_reg[5]_i_11_CO_UNCONNECTED ;
  wire [3:1]\NLW_l_bot_reg[5]_i_11_O_UNCONNECTED ;
  wire [2:2]\NLW_l_bot_reg[5]_i_12_CO_UNCONNECTED ;
  wire [3:3]\NLW_l_bot_reg[5]_i_12_O_UNCONNECTED ;
  wire [3:3]\NLW_l_bot_reg[5]_i_2_CO_UNCONNECTED ;

  (* RTL_RAM_BITS = "192" *) 
  (* RTL_RAM_NAME = "ms_cost/hist_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    hist_reg_0_15_0_0
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(cur[0]),
        .O(hist_reg_0_15_0_0_n_0),
        .WCLK(clk),
        .WE(scan));
  (* RTL_RAM_BITS = "192" *) 
  (* RTL_RAM_NAME = "ms_cost/hist_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    hist_reg_0_15_10_10
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(raw[4]),
        .O(cur[4]),
        .WCLK(clk),
        .WE(scan));
  LUT1 #(
    .INIT(2'h1)) 
    hist_reg_0_15_10_10_i_1
       (.I0(hist_reg_0_15_10_10_i_2_n_0),
        .O(raw[4]));
  LUT6 #(
    .INIT(64'hFFFFE817FFFF17E8)) 
    hist_reg_0_15_10_10_i_2
       (.I0(hist_reg_0_15_10_10_i_3_n_0),
        .I1(hist_reg_0_15_10_10_i_4_n_0),
        .I2(hist_reg_0_15_10_10_i_5_n_0),
        .I3(hist_reg_0_15_10_10_i_6_n_0),
        .I4(hist_reg_0_15_6_6_i_2_n_0),
        .I5(hist_reg_0_15_10_10_i_7_n_0),
        .O(hist_reg_0_15_10_10_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h96)) 
    hist_reg_0_15_10_10_i_3
       (.I0(hist_reg_0_15_10_10_i_8_n_0),
        .I1(hist_reg_0_15_10_10_i_9_n_0),
        .I2(hist_reg_0_15_9_9_i_6_n_0),
        .O(hist_reg_0_15_10_10_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    hist_reg_0_15_10_10_i_4
       (.I0(hist_reg_0_15_8_8_i_12_n_0),
        .I1(hist_reg_0_15_8_8_i_13_n_0),
        .I2(hist_reg_0_15_8_8_i_11_n_0),
        .O(hist_reg_0_15_10_10_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h8E)) 
    hist_reg_0_15_10_10_i_5
       (.I0(hist_reg_0_15_8_8_i_10_n_0),
        .I1(hist_reg_0_15_8_8_i_9_n_0),
        .I2(hist_reg_0_15_8_8_i_8_n_0),
        .O(hist_reg_0_15_10_10_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h17)) 
    hist_reg_0_15_10_10_i_6
       (.I0(hist_reg_0_15_10_10_i_9_n_0),
        .I1(hist_reg_0_15_10_10_i_8_n_0),
        .I2(hist_reg_0_15_9_9_i_6_n_0),
        .O(hist_reg_0_15_10_10_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFDFDF4D4D040400)) 
    hist_reg_0_15_10_10_i_7
       (.I0(hist_reg_0_15_8_8_i_6_n_0),
        .I1(hist_reg_0_15_8_8_i_7_n_0),
        .I2(hist_reg_0_15_8_8_i_3_n_0),
        .I3(hist_reg_0_15_8_8_i_4_n_0),
        .I4(hist_reg_0_15_8_8_i_5_n_0),
        .I5(hist_reg_0_15_9_9_i_4_n_0),
        .O(hist_reg_0_15_10_10_i_7_n_0));
  LUT6 #(
    .INIT(64'h2B020200FFBFBF2B)) 
    hist_reg_0_15_10_10_i_8
       (.I0(hist_reg_0_15_7_7_i_33_n_0),
        .I1(hist_reg_0_15_8_8_i_21_n_0),
        .I2(hist_reg_0_15_7_7_i_46_n_0),
        .I3(hist_reg_0_15_8_8_i_20_n_0),
        .I4(hist_reg_0_15_7_7_i_34_n_0),
        .I5(hist_reg_0_15_8_8_i_19_n_0),
        .O(hist_reg_0_15_10_10_i_8_n_0));
  LUT5 #(
    .INIT(32'h00000020)) 
    hist_reg_0_15_10_10_i_9
       (.I0(hist_reg_0_15_8_8_i_22_n_0),
        .I1(hist_reg_0_15_7_7_i_20_n_0),
        .I2(hist_reg_0_15_8_8_i_24_n_0),
        .I3(hist_reg_0_15_7_7_i_42_n_0),
        .I4(hist_reg_0_15_8_8_i_25_n_0),
        .O(hist_reg_0_15_10_10_i_9_n_0));
  (* RTL_RAM_BITS = "192" *) 
  (* RTL_RAM_NAME = "ms_cost/hist_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    hist_reg_0_15_11_11
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(raw[5]),
        .O(cur[5]),
        .WCLK(clk),
        .WE(scan));
  LUT1 #(
    .INIT(2'h1)) 
    hist_reg_0_15_11_11_i_1
       (.I0(hist_reg_0_15_11_11_i_2_n_0),
        .O(raw[5]));
  LUT6 #(
    .INIT(64'h0000000017FF0017)) 
    hist_reg_0_15_11_11_i_2
       (.I0(hist_reg_0_15_10_10_i_5_n_0),
        .I1(hist_reg_0_15_10_10_i_4_n_0),
        .I2(hist_reg_0_15_10_10_i_3_n_0),
        .I3(hist_reg_0_15_10_10_i_7_n_0),
        .I4(hist_reg_0_15_10_10_i_6_n_0),
        .I5(hist_reg_0_15_6_6_i_2_n_0),
        .O(hist_reg_0_15_11_11_i_2_n_0));
  (* RTL_RAM_BITS = "192" *) 
  (* RTL_RAM_NAME = "ms_cost/hist_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    hist_reg_0_15_1_1
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(cur[1]),
        .O(hist_reg_0_15_1_1_n_0),
        .WCLK(clk),
        .WE(scan));
  (* RTL_RAM_BITS = "192" *) 
  (* RTL_RAM_NAME = "ms_cost/hist_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    hist_reg_0_15_2_2
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(cur[2]),
        .O(hist_reg_0_15_2_2_n_0),
        .WCLK(clk),
        .WE(scan));
  (* RTL_RAM_BITS = "192" *) 
  (* RTL_RAM_NAME = "ms_cost/hist_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    hist_reg_0_15_3_3
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(cur[3]),
        .O(hist_reg_0_15_3_3_n_0),
        .WCLK(clk),
        .WE(scan));
  (* RTL_RAM_BITS = "192" *) 
  (* RTL_RAM_NAME = "ms_cost/hist_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    hist_reg_0_15_4_4
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(cur[4]),
        .O(hist_reg_0_15_4_4_n_0),
        .WCLK(clk),
        .WE(scan));
  (* RTL_RAM_BITS = "192" *) 
  (* RTL_RAM_NAME = "ms_cost/hist_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    hist_reg_0_15_5_5
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(cur[5]),
        .O(hist_reg_0_15_5_5_n_0),
        .WCLK(clk),
        .WE(scan));
  (* RTL_RAM_BITS = "192" *) 
  (* RTL_RAM_NAME = "ms_cost/hist_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    hist_reg_0_15_6_6
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(raw[0]),
        .O(cur[0]),
        .WCLK(clk),
        .WE(scan));
  LUT3 #(
    .INIT(8'h41)) 
    hist_reg_0_15_6_6_i_1
       (.I0(hist_reg_0_15_6_6_i_2_n_0),
        .I1(hist_reg_0_15_6_6_i_3_n_0),
        .I2(hist_reg_0_15_6_6_i_4_n_0),
        .O(raw[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    hist_reg_0_15_6_6_i_10
       (.I0(rs_ok[3]),
        .I1(rs_ok[2]),
        .I2(Q[1]),
        .I3(rs_ok[1]),
        .I4(Q[0]),
        .I5(rs_ok[0]),
        .O(hist_reg_0_15_6_6_i_10_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    hist_reg_0_15_6_6_i_11
       (.I0(rs_ok[7]),
        .I1(rs_ok[6]),
        .I2(Q[1]),
        .I3(rs_ok[5]),
        .I4(Q[0]),
        .I5(rs_ok[4]),
        .O(hist_reg_0_15_6_6_i_11_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    hist_reg_0_15_6_6_i_12
       (.I0(left[11]),
        .I1(\rs_reg[15][11]_srl16_n_0 ),
        .O(hist_reg_0_15_6_6_i_12_n_0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    hist_reg_0_15_6_6_i_13
       (.I0(left[8]),
        .I1(\rs_reg[15][8]_srl16_n_0 ),
        .I2(left[7]),
        .I3(\rs_reg[15][7]_srl16_n_0 ),
        .I4(\rs_reg[15][9]_srl16_n_0 ),
        .I5(left[9]),
        .O(hist_reg_0_15_6_6_i_13_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    hist_reg_0_15_6_6_i_14
       (.I0(left[5]),
        .I1(\rs_reg[15][5]_srl16_n_0 ),
        .O(hist_reg_0_15_6_6_i_14_n_0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    hist_reg_0_15_6_6_i_15
       (.I0(left[2]),
        .I1(\rs_reg[15][2]_srl16_n_0 ),
        .I2(left[1]),
        .I3(\rs_reg[15][1]_srl16_n_0 ),
        .I4(\rs_reg[15][3]_srl16_n_0 ),
        .I5(left[3]),
        .O(hist_reg_0_15_6_6_i_15_n_0));
  LUT6 #(
    .INIT(64'h575757F7F7F757F7)) 
    hist_reg_0_15_6_6_i_2
       (.I0(left_ok),
        .I1(hist_reg_0_15_6_6_i_5_n_0),
        .I2(Q[3]),
        .I3(hist_reg_0_15_6_6_i_6_n_0),
        .I4(Q[2]),
        .I5(hist_reg_0_15_6_6_i_7_n_0),
        .O(hist_reg_0_15_6_6_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    hist_reg_0_15_6_6_i_3
       (.I0(hist_reg_0_15_7_7_i_4_n_0),
        .I1(hist_reg_0_15_7_7_i_3_n_0),
        .I2(hist_reg_0_15_7_7_i_2_n_0),
        .O(hist_reg_0_15_6_6_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    hist_reg_0_15_6_6_i_4
       (.I0(hist_reg_0_15_6_6_i_8_n_0),
        .I1(hist_reg_0_15_6_6_i_9_n_0),
        .O(hist_reg_0_15_6_6_i_4_n_0));
  MUXF7 hist_reg_0_15_6_6_i_5
       (.I0(hist_reg_0_15_6_6_i_10_n_0),
        .I1(hist_reg_0_15_6_6_i_11_n_0),
        .O(hist_reg_0_15_6_6_i_5_n_0),
        .S(Q[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    hist_reg_0_15_6_6_i_6
       (.I0(rs_ok[11]),
        .I1(rs_ok[10]),
        .I2(Q[1]),
        .I3(rs_ok[9]),
        .I4(Q[0]),
        .I5(rs_ok[8]),
        .O(hist_reg_0_15_6_6_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    hist_reg_0_15_6_6_i_7
       (.I0(rs_ok[15]),
        .I1(rs_ok[14]),
        .I2(Q[1]),
        .I3(rs_ok[13]),
        .I4(Q[0]),
        .I5(rs_ok[12]),
        .O(hist_reg_0_15_6_6_i_7_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    hist_reg_0_15_6_6_i_8
       (.I0(left[6]),
        .I1(\rs_reg[15][6]_srl16_n_0 ),
        .I2(\rs_reg[15][10]_srl16_n_0 ),
        .I3(left[10]),
        .I4(hist_reg_0_15_6_6_i_12_n_0),
        .I5(hist_reg_0_15_6_6_i_13_n_0),
        .O(hist_reg_0_15_6_6_i_8_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    hist_reg_0_15_6_6_i_9
       (.I0(left[0]),
        .I1(\rs_reg[15][0]_srl16_n_0 ),
        .I2(\rs_reg[15][4]_srl16_n_0 ),
        .I3(left[4]),
        .I4(hist_reg_0_15_6_6_i_14_n_0),
        .I5(hist_reg_0_15_6_6_i_15_n_0),
        .O(hist_reg_0_15_6_6_i_9_n_0));
  (* RTL_RAM_BITS = "192" *) 
  (* RTL_RAM_NAME = "ms_cost/hist_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    hist_reg_0_15_7_7
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(raw[1]),
        .O(cur[1]),
        .WCLK(clk),
        .WE(scan));
  LUT6 #(
    .INIT(64'h4001155454400115)) 
    hist_reg_0_15_7_7_i_1
       (.I0(hist_reg_0_15_6_6_i_2_n_0),
        .I1(hist_reg_0_15_7_7_i_2_n_0),
        .I2(hist_reg_0_15_7_7_i_3_n_0),
        .I3(hist_reg_0_15_7_7_i_4_n_0),
        .I4(hist_reg_0_15_7_7_i_5_n_0),
        .I5(hist_reg_0_15_6_6_i_4_n_0),
        .O(raw[1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    hist_reg_0_15_7_7_i_10
       (.I0(left[18]),
        .I1(\rs_reg[15][18]_srl16_n_0 ),
        .I2(\rs_reg[15][22]_srl16_n_0 ),
        .I3(left[22]),
        .I4(hist_reg_0_15_7_7_i_23_n_0),
        .I5(hist_reg_0_15_7_7_i_24_n_0),
        .O(hist_reg_0_15_7_7_i_10_n_0));
  LUT6 #(
    .INIT(64'h96C33C96693CC369)) 
    hist_reg_0_15_7_7_i_11
       (.I0(hist_reg_0_15_6_6_i_8_n_0),
        .I1(hist_reg_0_15_7_7_i_25_n_0),
        .I2(hist_reg_0_15_7_7_i_26_n_0),
        .I3(hist_reg_0_15_7_7_i_27_n_0),
        .I4(hist_reg_0_15_6_6_i_15_n_0),
        .I5(hist_reg_0_15_7_7_i_28_n_0),
        .O(hist_reg_0_15_7_7_i_11_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    hist_reg_0_15_7_7_i_12
       (.I0(hist_reg_0_15_7_7_i_29_n_0),
        .I1(hist_reg_0_15_7_7_i_30_n_0),
        .I2(hist_reg_0_15_7_7_i_31_n_0),
        .O(hist_reg_0_15_7_7_i_12_n_0));
  LUT6 #(
    .INIT(64'h5569695569AAAA69)) 
    hist_reg_0_15_7_7_i_13
       (.I0(hist_reg_0_15_7_7_i_32_n_0),
        .I1(left[42]),
        .I2(\rs_reg[15][42]_srl16_n_0 ),
        .I3(left[43]),
        .I4(\rs_reg[15][43]_srl16_n_0 ),
        .I5(hist_reg_0_15_7_7_i_8_n_0),
        .O(hist_reg_0_15_7_7_i_13_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    hist_reg_0_15_7_7_i_14
       (.I0(hist_reg_0_15_7_7_i_33_n_0),
        .I1(hist_reg_0_15_7_7_i_34_n_0),
        .I2(hist_reg_0_15_7_7_i_35_n_0),
        .O(hist_reg_0_15_7_7_i_14_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    hist_reg_0_15_7_7_i_15
       (.I0(left[35]),
        .I1(\rs_reg[15][35]_srl16_n_0 ),
        .O(hist_reg_0_15_7_7_i_15_n_0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    hist_reg_0_15_7_7_i_16
       (.I0(left[32]),
        .I1(\rs_reg[15][32]_srl16_n_0 ),
        .I2(left[31]),
        .I3(\rs_reg[15][31]_srl16_n_0 ),
        .I4(\rs_reg[15][33]_srl16_n_0 ),
        .I5(left[33]),
        .O(hist_reg_0_15_7_7_i_16_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    hist_reg_0_15_7_7_i_17
       (.I0(left[29]),
        .I1(\rs_reg[15][29]_srl16_n_0 ),
        .O(hist_reg_0_15_7_7_i_17_n_0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    hist_reg_0_15_7_7_i_18
       (.I0(left[26]),
        .I1(\rs_reg[15][26]_srl16_n_0 ),
        .I2(left[25]),
        .I3(\rs_reg[15][25]_srl16_n_0 ),
        .I4(\rs_reg[15][27]_srl16_n_0 ),
        .I5(left[27]),
        .O(hist_reg_0_15_7_7_i_18_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    hist_reg_0_15_7_7_i_19
       (.I0(left[41]),
        .I1(\rs_reg[15][41]_srl16_n_0 ),
        .O(hist_reg_0_15_7_7_i_19_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    hist_reg_0_15_7_7_i_2
       (.I0(hist_reg_0_15_7_7_i_6_n_0),
        .I1(hist_reg_0_15_7_7_i_7_n_0),
        .O(hist_reg_0_15_7_7_i_2_n_0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    hist_reg_0_15_7_7_i_20
       (.I0(left[38]),
        .I1(\rs_reg[15][38]_srl16_n_0 ),
        .I2(left[37]),
        .I3(\rs_reg[15][37]_srl16_n_0 ),
        .I4(\rs_reg[15][39]_srl16_n_0 ),
        .I5(left[39]),
        .O(hist_reg_0_15_7_7_i_20_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    hist_reg_0_15_7_7_i_21
       (.I0(left[17]),
        .I1(\rs_reg[15][17]_srl16_n_0 ),
        .O(hist_reg_0_15_7_7_i_21_n_0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    hist_reg_0_15_7_7_i_22
       (.I0(left[14]),
        .I1(\rs_reg[15][14]_srl16_n_0 ),
        .I2(left[13]),
        .I3(\rs_reg[15][13]_srl16_n_0 ),
        .I4(\rs_reg[15][15]_srl16_n_0 ),
        .I5(left[15]),
        .O(hist_reg_0_15_7_7_i_22_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    hist_reg_0_15_7_7_i_23
       (.I0(left[23]),
        .I1(\rs_reg[15][23]_srl16_n_0 ),
        .O(hist_reg_0_15_7_7_i_23_n_0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    hist_reg_0_15_7_7_i_24
       (.I0(left[20]),
        .I1(\rs_reg[15][20]_srl16_n_0 ),
        .I2(left[19]),
        .I3(\rs_reg[15][19]_srl16_n_0 ),
        .I4(\rs_reg[15][21]_srl16_n_0 ),
        .I5(left[21]),
        .O(hist_reg_0_15_7_7_i_24_n_0));
  LUT6 #(
    .INIT(64'hF99F90099009F99F)) 
    hist_reg_0_15_7_7_i_25
       (.I0(\rs_reg[15][4]_srl16_n_0 ),
        .I1(left[4]),
        .I2(\rs_reg[15][5]_srl16_n_0 ),
        .I3(left[5]),
        .I4(left[0]),
        .I5(\rs_reg[15][0]_srl16_n_0 ),
        .O(hist_reg_0_15_7_7_i_25_n_0));
  LUT6 #(
    .INIT(64'hF99F90099009F99F)) 
    hist_reg_0_15_7_7_i_26
       (.I0(left[3]),
        .I1(\rs_reg[15][3]_srl16_n_0 ),
        .I2(\rs_reg[15][1]_srl16_n_0 ),
        .I3(left[1]),
        .I4(\rs_reg[15][2]_srl16_n_0 ),
        .I5(left[2]),
        .O(hist_reg_0_15_7_7_i_26_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    hist_reg_0_15_7_7_i_27
       (.I0(left[5]),
        .I1(\rs_reg[15][5]_srl16_n_0 ),
        .I2(left[4]),
        .I3(\rs_reg[15][4]_srl16_n_0 ),
        .I4(\rs_reg[15][0]_srl16_n_0 ),
        .I5(left[0]),
        .O(hist_reg_0_15_7_7_i_27_n_0));
  LUT6 #(
    .INIT(64'hC6639CC69CC6C663)) 
    hist_reg_0_15_7_7_i_28
       (.I0(hist_reg_0_15_6_6_i_13_n_0),
        .I1(hist_reg_0_15_7_7_i_36_n_0),
        .I2(hist_reg_0_15_7_7_i_37_n_0),
        .I3(hist_reg_0_15_6_6_i_12_n_0),
        .I4(left[6]),
        .I5(\rs_reg[15][6]_srl16_n_0 ),
        .O(hist_reg_0_15_7_7_i_28_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    hist_reg_0_15_7_7_i_29
       (.I0(hist_reg_0_15_7_7_i_7_n_0),
        .I1(hist_reg_0_15_7_7_i_6_n_0),
        .O(hist_reg_0_15_7_7_i_29_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    hist_reg_0_15_7_7_i_3
       (.I0(hist_reg_0_15_7_7_i_8_n_0),
        .I1(left[42]),
        .I2(\rs_reg[15][42]_srl16_n_0 ),
        .I3(left[43]),
        .I4(\rs_reg[15][43]_srl16_n_0 ),
        .O(hist_reg_0_15_7_7_i_3_n_0));
  LUT6 #(
    .INIT(64'h366393399339C99C)) 
    hist_reg_0_15_7_7_i_30
       (.I0(hist_reg_0_15_7_7_i_18_n_0),
        .I1(hist_reg_0_15_7_7_i_38_n_0),
        .I2(left[24]),
        .I3(\rs_reg[15][24]_srl16_n_0 ),
        .I4(hist_reg_0_15_7_7_i_39_n_0),
        .I5(hist_reg_0_15_7_7_i_17_n_0),
        .O(hist_reg_0_15_7_7_i_30_n_0));
  LUT6 #(
    .INIT(64'hC6639CC69CC6C663)) 
    hist_reg_0_15_7_7_i_31
       (.I0(hist_reg_0_15_7_7_i_16_n_0),
        .I1(hist_reg_0_15_7_7_i_40_n_0),
        .I2(hist_reg_0_15_7_7_i_41_n_0),
        .I3(hist_reg_0_15_7_7_i_15_n_0),
        .I4(left[30]),
        .I5(\rs_reg[15][30]_srl16_n_0 ),
        .O(hist_reg_0_15_7_7_i_31_n_0));
  LUT6 #(
    .INIT(64'hC6639CC69CC6C663)) 
    hist_reg_0_15_7_7_i_32
       (.I0(hist_reg_0_15_7_7_i_20_n_0),
        .I1(hist_reg_0_15_7_7_i_42_n_0),
        .I2(hist_reg_0_15_7_7_i_43_n_0),
        .I3(hist_reg_0_15_7_7_i_19_n_0),
        .I4(left[36]),
        .I5(\rs_reg[15][36]_srl16_n_0 ),
        .O(hist_reg_0_15_7_7_i_32_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h1)) 
    hist_reg_0_15_7_7_i_33
       (.I0(hist_reg_0_15_7_7_i_10_n_0),
        .I1(hist_reg_0_15_7_7_i_9_n_0),
        .O(hist_reg_0_15_7_7_i_33_n_0));
  LUT6 #(
    .INIT(64'hC6639CC69CC6C663)) 
    hist_reg_0_15_7_7_i_34
       (.I0(hist_reg_0_15_7_7_i_22_n_0),
        .I1(hist_reg_0_15_7_7_i_44_n_0),
        .I2(hist_reg_0_15_7_7_i_45_n_0),
        .I3(hist_reg_0_15_7_7_i_21_n_0),
        .I4(left[12]),
        .I5(\rs_reg[15][12]_srl16_n_0 ),
        .O(hist_reg_0_15_7_7_i_34_n_0));
  LUT6 #(
    .INIT(64'hC6639CC69CC6C663)) 
    hist_reg_0_15_7_7_i_35
       (.I0(hist_reg_0_15_7_7_i_24_n_0),
        .I1(hist_reg_0_15_7_7_i_46_n_0),
        .I2(hist_reg_0_15_7_7_i_47_n_0),
        .I3(hist_reg_0_15_7_7_i_23_n_0),
        .I4(left[18]),
        .I5(\rs_reg[15][18]_srl16_n_0 ),
        .O(hist_reg_0_15_7_7_i_35_n_0));
  LUT6 #(
    .INIT(64'h06606FF66FF60660)) 
    hist_reg_0_15_7_7_i_36
       (.I0(left[9]),
        .I1(\rs_reg[15][9]_srl16_n_0 ),
        .I2(left[8]),
        .I3(\rs_reg[15][8]_srl16_n_0 ),
        .I4(left[7]),
        .I5(\rs_reg[15][7]_srl16_n_0 ),
        .O(hist_reg_0_15_7_7_i_36_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    hist_reg_0_15_7_7_i_37
       (.I0(left[10]),
        .I1(\rs_reg[15][10]_srl16_n_0 ),
        .O(hist_reg_0_15_7_7_i_37_n_0));
  LUT6 #(
    .INIT(64'hF99F90099009F99F)) 
    hist_reg_0_15_7_7_i_38
       (.I0(left[27]),
        .I1(\rs_reg[15][27]_srl16_n_0 ),
        .I2(\rs_reg[15][25]_srl16_n_0 ),
        .I3(left[25]),
        .I4(\rs_reg[15][26]_srl16_n_0 ),
        .I5(left[26]),
        .O(hist_reg_0_15_7_7_i_38_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    hist_reg_0_15_7_7_i_39
       (.I0(left[28]),
        .I1(\rs_reg[15][28]_srl16_n_0 ),
        .O(hist_reg_0_15_7_7_i_39_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h9)) 
    hist_reg_0_15_7_7_i_4
       (.I0(hist_reg_0_15_7_7_i_9_n_0),
        .I1(hist_reg_0_15_7_7_i_10_n_0),
        .O(hist_reg_0_15_7_7_i_4_n_0));
  LUT6 #(
    .INIT(64'h06606FF66FF60660)) 
    hist_reg_0_15_7_7_i_40
       (.I0(left[33]),
        .I1(\rs_reg[15][33]_srl16_n_0 ),
        .I2(left[32]),
        .I3(\rs_reg[15][32]_srl16_n_0 ),
        .I4(left[31]),
        .I5(\rs_reg[15][31]_srl16_n_0 ),
        .O(hist_reg_0_15_7_7_i_40_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    hist_reg_0_15_7_7_i_41
       (.I0(left[34]),
        .I1(\rs_reg[15][34]_srl16_n_0 ),
        .O(hist_reg_0_15_7_7_i_41_n_0));
  LUT6 #(
    .INIT(64'hF99F90099009F99F)) 
    hist_reg_0_15_7_7_i_42
       (.I0(left[39]),
        .I1(\rs_reg[15][39]_srl16_n_0 ),
        .I2(\rs_reg[15][37]_srl16_n_0 ),
        .I3(left[37]),
        .I4(\rs_reg[15][38]_srl16_n_0 ),
        .I5(left[38]),
        .O(hist_reg_0_15_7_7_i_42_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    hist_reg_0_15_7_7_i_43
       (.I0(left[40]),
        .I1(\rs_reg[15][40]_srl16_n_0 ),
        .O(hist_reg_0_15_7_7_i_43_n_0));
  LUT6 #(
    .INIT(64'hF99F90099009F99F)) 
    hist_reg_0_15_7_7_i_44
       (.I0(left[15]),
        .I1(\rs_reg[15][15]_srl16_n_0 ),
        .I2(\rs_reg[15][13]_srl16_n_0 ),
        .I3(left[13]),
        .I4(\rs_reg[15][14]_srl16_n_0 ),
        .I5(left[14]),
        .O(hist_reg_0_15_7_7_i_44_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    hist_reg_0_15_7_7_i_45
       (.I0(left[16]),
        .I1(\rs_reg[15][16]_srl16_n_0 ),
        .O(hist_reg_0_15_7_7_i_45_n_0));
  LUT6 #(
    .INIT(64'hF99F90099009F99F)) 
    hist_reg_0_15_7_7_i_46
       (.I0(left[21]),
        .I1(\rs_reg[15][21]_srl16_n_0 ),
        .I2(\rs_reg[15][19]_srl16_n_0 ),
        .I3(left[19]),
        .I4(\rs_reg[15][20]_srl16_n_0 ),
        .I5(left[20]),
        .O(hist_reg_0_15_7_7_i_46_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    hist_reg_0_15_7_7_i_47
       (.I0(left[22]),
        .I1(\rs_reg[15][22]_srl16_n_0 ),
        .O(hist_reg_0_15_7_7_i_47_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    hist_reg_0_15_7_7_i_5
       (.I0(hist_reg_0_15_7_7_i_11_n_0),
        .I1(hist_reg_0_15_7_7_i_12_n_0),
        .I2(hist_reg_0_15_7_7_i_13_n_0),
        .I3(hist_reg_0_15_7_7_i_14_n_0),
        .O(hist_reg_0_15_7_7_i_5_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    hist_reg_0_15_7_7_i_6
       (.I0(left[30]),
        .I1(\rs_reg[15][30]_srl16_n_0 ),
        .I2(\rs_reg[15][34]_srl16_n_0 ),
        .I3(left[34]),
        .I4(hist_reg_0_15_7_7_i_15_n_0),
        .I5(hist_reg_0_15_7_7_i_16_n_0),
        .O(hist_reg_0_15_7_7_i_6_n_0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    hist_reg_0_15_7_7_i_7
       (.I0(left[24]),
        .I1(\rs_reg[15][24]_srl16_n_0 ),
        .I2(\rs_reg[15][28]_srl16_n_0 ),
        .I3(left[28]),
        .I4(hist_reg_0_15_7_7_i_17_n_0),
        .I5(hist_reg_0_15_7_7_i_18_n_0),
        .O(hist_reg_0_15_7_7_i_7_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    hist_reg_0_15_7_7_i_8
       (.I0(left[36]),
        .I1(\rs_reg[15][36]_srl16_n_0 ),
        .I2(\rs_reg[15][40]_srl16_n_0 ),
        .I3(left[40]),
        .I4(hist_reg_0_15_7_7_i_19_n_0),
        .I5(hist_reg_0_15_7_7_i_20_n_0),
        .O(hist_reg_0_15_7_7_i_8_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    hist_reg_0_15_7_7_i_9
       (.I0(left[12]),
        .I1(\rs_reg[15][12]_srl16_n_0 ),
        .I2(\rs_reg[15][16]_srl16_n_0 ),
        .I3(left[16]),
        .I4(hist_reg_0_15_7_7_i_21_n_0),
        .I5(hist_reg_0_15_7_7_i_22_n_0),
        .O(hist_reg_0_15_7_7_i_9_n_0));
  (* RTL_RAM_BITS = "192" *) 
  (* RTL_RAM_NAME = "ms_cost/hist_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    hist_reg_0_15_8_8
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(raw[2]),
        .O(cur[2]),
        .WCLK(clk),
        .WE(scan));
  LUT1 #(
    .INIT(2'h1)) 
    hist_reg_0_15_8_8_i_1
       (.I0(hist_reg_0_15_8_8_i_2_n_0),
        .O(raw[2]));
  LUT6 #(
    .INIT(64'h0A00EFAEEFAEF5FF)) 
    hist_reg_0_15_8_8_i_10
       (.I0(hist_reg_0_15_8_8_i_22_n_0),
        .I1(hist_reg_0_15_8_8_i_23_n_0),
        .I2(hist_reg_0_15_7_7_i_20_n_0),
        .I3(hist_reg_0_15_8_8_i_24_n_0),
        .I4(hist_reg_0_15_7_7_i_42_n_0),
        .I5(hist_reg_0_15_8_8_i_25_n_0),
        .O(hist_reg_0_15_8_8_i_10_n_0));
  LUT6 #(
    .INIT(64'h000066966006F69F)) 
    hist_reg_0_15_8_8_i_11
       (.I0(hist_reg_0_15_7_7_i_25_n_0),
        .I1(hist_reg_0_15_7_7_i_26_n_0),
        .I2(hist_reg_0_15_7_7_i_27_n_0),
        .I3(hist_reg_0_15_6_6_i_15_n_0),
        .I4(hist_reg_0_15_7_7_i_28_n_0),
        .I5(hist_reg_0_15_6_6_i_8_n_0),
        .O(hist_reg_0_15_8_8_i_11_n_0));
  LUT6 #(
    .INIT(64'h3110733173313110)) 
    hist_reg_0_15_8_8_i_12
       (.I0(hist_reg_0_15_6_6_i_15_n_0),
        .I1(hist_reg_0_15_7_7_i_26_n_0),
        .I2(hist_reg_0_15_8_8_i_26_n_0),
        .I3(hist_reg_0_15_6_6_i_14_n_0),
        .I4(left[0]),
        .I5(\rs_reg[15][0]_srl16_n_0 ),
        .O(hist_reg_0_15_8_8_i_12_n_0));
  LUT6 #(
    .INIT(64'h099FFFFF00099FFF)) 
    hist_reg_0_15_8_8_i_13
       (.I0(\rs_reg[15][6]_srl16_n_0 ),
        .I1(left[6]),
        .I2(hist_reg_0_15_6_6_i_12_n_0),
        .I3(hist_reg_0_15_7_7_i_37_n_0),
        .I4(hist_reg_0_15_7_7_i_36_n_0),
        .I5(hist_reg_0_15_6_6_i_13_n_0),
        .O(hist_reg_0_15_8_8_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h96FF)) 
    hist_reg_0_15_8_8_i_14
       (.I0(hist_reg_0_15_7_7_i_2_n_0),
        .I1(hist_reg_0_15_7_7_i_3_n_0),
        .I2(hist_reg_0_15_7_7_i_4_n_0),
        .I3(hist_reg_0_15_6_6_i_4_n_0),
        .O(hist_reg_0_15_8_8_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    hist_reg_0_15_8_8_i_15
       (.I0(hist_reg_0_15_7_7_i_2_n_0),
        .I1(hist_reg_0_15_7_7_i_3_n_0),
        .I2(hist_reg_0_15_7_7_i_4_n_0),
        .O(hist_reg_0_15_8_8_i_15_n_0));
  LUT6 #(
    .INIT(64'hFFFF9FFF099F0009)) 
    hist_reg_0_15_8_8_i_16
       (.I0(left[24]),
        .I1(\rs_reg[15][24]_srl16_n_0 ),
        .I2(hist_reg_0_15_7_7_i_39_n_0),
        .I3(hist_reg_0_15_7_7_i_17_n_0),
        .I4(hist_reg_0_15_7_7_i_18_n_0),
        .I5(hist_reg_0_15_7_7_i_38_n_0),
        .O(hist_reg_0_15_8_8_i_16_n_0));
  LUT6 #(
    .INIT(64'h0000000096696996)) 
    hist_reg_0_15_8_8_i_17
       (.I0(left[30]),
        .I1(\rs_reg[15][30]_srl16_n_0 ),
        .I2(\rs_reg[15][34]_srl16_n_0 ),
        .I3(left[34]),
        .I4(hist_reg_0_15_7_7_i_15_n_0),
        .I5(hist_reg_0_15_7_7_i_16_n_0),
        .O(hist_reg_0_15_8_8_i_17_n_0));
  LUT6 #(
    .INIT(64'hF99F90099009F99F)) 
    hist_reg_0_15_8_8_i_18
       (.I0(\rs_reg[15][34]_srl16_n_0 ),
        .I1(left[34]),
        .I2(\rs_reg[15][35]_srl16_n_0 ),
        .I3(left[35]),
        .I4(left[30]),
        .I5(\rs_reg[15][30]_srl16_n_0 ),
        .O(hist_reg_0_15_8_8_i_18_n_0));
  LUT6 #(
    .INIT(64'hFFFF099F9FFF0009)) 
    hist_reg_0_15_8_8_i_19
       (.I0(\rs_reg[15][12]_srl16_n_0 ),
        .I1(left[12]),
        .I2(hist_reg_0_15_7_7_i_21_n_0),
        .I3(hist_reg_0_15_7_7_i_45_n_0),
        .I4(hist_reg_0_15_7_7_i_44_n_0),
        .I5(hist_reg_0_15_7_7_i_22_n_0),
        .O(hist_reg_0_15_8_8_i_19_n_0));
  LUT6 #(
    .INIT(64'h0069009600960069)) 
    hist_reg_0_15_8_8_i_2
       (.I0(hist_reg_0_15_8_8_i_3_n_0),
        .I1(hist_reg_0_15_8_8_i_4_n_0),
        .I2(hist_reg_0_15_8_8_i_5_n_0),
        .I3(hist_reg_0_15_6_6_i_2_n_0),
        .I4(hist_reg_0_15_8_8_i_6_n_0),
        .I5(hist_reg_0_15_8_8_i_7_n_0),
        .O(hist_reg_0_15_8_8_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000096696996)) 
    hist_reg_0_15_8_8_i_20
       (.I0(left[18]),
        .I1(\rs_reg[15][18]_srl16_n_0 ),
        .I2(\rs_reg[15][22]_srl16_n_0 ),
        .I3(left[22]),
        .I4(hist_reg_0_15_7_7_i_23_n_0),
        .I5(hist_reg_0_15_7_7_i_24_n_0),
        .O(hist_reg_0_15_8_8_i_20_n_0));
  LUT6 #(
    .INIT(64'hF99F90099009F99F)) 
    hist_reg_0_15_8_8_i_21
       (.I0(\rs_reg[15][22]_srl16_n_0 ),
        .I1(left[22]),
        .I2(\rs_reg[15][23]_srl16_n_0 ),
        .I3(left[23]),
        .I4(left[18]),
        .I5(\rs_reg[15][18]_srl16_n_0 ),
        .O(hist_reg_0_15_8_8_i_21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    hist_reg_0_15_8_8_i_22
       (.I0(\rs_reg[15][43]_srl16_n_0 ),
        .I1(left[43]),
        .I2(\rs_reg[15][42]_srl16_n_0 ),
        .I3(left[42]),
        .O(hist_reg_0_15_8_8_i_22_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    hist_reg_0_15_8_8_i_23
       (.I0(\rs_reg[15][43]_srl16_n_0 ),
        .I1(left[43]),
        .I2(\rs_reg[15][42]_srl16_n_0 ),
        .I3(left[42]),
        .O(hist_reg_0_15_8_8_i_23_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    hist_reg_0_15_8_8_i_24
       (.I0(left[41]),
        .I1(\rs_reg[15][41]_srl16_n_0 ),
        .I2(left[40]),
        .I3(\rs_reg[15][40]_srl16_n_0 ),
        .I4(\rs_reg[15][36]_srl16_n_0 ),
        .I5(left[36]),
        .O(hist_reg_0_15_8_8_i_24_n_0));
  LUT6 #(
    .INIT(64'hF99F90099009F99F)) 
    hist_reg_0_15_8_8_i_25
       (.I0(\rs_reg[15][40]_srl16_n_0 ),
        .I1(left[40]),
        .I2(\rs_reg[15][41]_srl16_n_0 ),
        .I3(left[41]),
        .I4(left[36]),
        .I5(\rs_reg[15][36]_srl16_n_0 ),
        .O(hist_reg_0_15_8_8_i_25_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    hist_reg_0_15_8_8_i_26
       (.I0(left[4]),
        .I1(\rs_reg[15][4]_srl16_n_0 ),
        .O(hist_reg_0_15_8_8_i_26_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h96)) 
    hist_reg_0_15_8_8_i_3
       (.I0(hist_reg_0_15_8_8_i_8_n_0),
        .I1(hist_reg_0_15_8_8_i_9_n_0),
        .I2(hist_reg_0_15_8_8_i_10_n_0),
        .O(hist_reg_0_15_8_8_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h69)) 
    hist_reg_0_15_8_8_i_4
       (.I0(hist_reg_0_15_8_8_i_11_n_0),
        .I1(hist_reg_0_15_8_8_i_12_n_0),
        .I2(hist_reg_0_15_8_8_i_13_n_0),
        .O(hist_reg_0_15_8_8_i_4_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    hist_reg_0_15_8_8_i_5
       (.I0(hist_reg_0_15_7_7_i_13_n_0),
        .I1(hist_reg_0_15_7_7_i_12_n_0),
        .I2(hist_reg_0_15_7_7_i_14_n_0),
        .O(hist_reg_0_15_8_8_i_5_n_0));
  LUT6 #(
    .INIT(64'hE88E8EE88EE8E88E)) 
    hist_reg_0_15_8_8_i_6
       (.I0(hist_reg_0_15_8_8_i_14_n_0),
        .I1(hist_reg_0_15_8_8_i_15_n_0),
        .I2(hist_reg_0_15_7_7_i_11_n_0),
        .I3(hist_reg_0_15_7_7_i_12_n_0),
        .I4(hist_reg_0_15_7_7_i_13_n_0),
        .I5(hist_reg_0_15_7_7_i_14_n_0),
        .O(hist_reg_0_15_8_8_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h1441)) 
    hist_reg_0_15_8_8_i_7
       (.I0(hist_reg_0_15_7_7_i_11_n_0),
        .I1(hist_reg_0_15_7_7_i_12_n_0),
        .I2(hist_reg_0_15_7_7_i_13_n_0),
        .I3(hist_reg_0_15_7_7_i_14_n_0),
        .O(hist_reg_0_15_8_8_i_7_n_0));
  LUT6 #(
    .INIT(64'h596565A69A595965)) 
    hist_reg_0_15_8_8_i_8
       (.I0(hist_reg_0_15_8_8_i_16_n_0),
        .I1(hist_reg_0_15_7_7_i_29_n_0),
        .I2(hist_reg_0_15_7_7_i_30_n_0),
        .I3(hist_reg_0_15_8_8_i_17_n_0),
        .I4(hist_reg_0_15_7_7_i_40_n_0),
        .I5(hist_reg_0_15_8_8_i_18_n_0),
        .O(hist_reg_0_15_8_8_i_8_n_0));
  LUT6 #(
    .INIT(64'hA96A6A5695A9A96A)) 
    hist_reg_0_15_8_8_i_9
       (.I0(hist_reg_0_15_8_8_i_19_n_0),
        .I1(hist_reg_0_15_7_7_i_34_n_0),
        .I2(hist_reg_0_15_8_8_i_20_n_0),
        .I3(hist_reg_0_15_7_7_i_46_n_0),
        .I4(hist_reg_0_15_8_8_i_21_n_0),
        .I5(hist_reg_0_15_7_7_i_33_n_0),
        .O(hist_reg_0_15_8_8_i_9_n_0));
  (* RTL_RAM_BITS = "192" *) 
  (* RTL_RAM_NAME = "ms_cost/hist_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    hist_reg_0_15_9_9
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(raw[3]),
        .O(cur[3]),
        .WCLK(clk),
        .WE(scan));
  LUT1 #(
    .INIT(2'h1)) 
    hist_reg_0_15_9_9_i_1
       (.I0(hist_reg_0_15_9_9_i_2_n_0),
        .O(raw[3]));
  LUT6 #(
    .INIT(64'h0071008E008E0071)) 
    hist_reg_0_15_9_9_i_2
       (.I0(hist_reg_0_15_8_8_i_5_n_0),
        .I1(hist_reg_0_15_8_8_i_4_n_0),
        .I2(hist_reg_0_15_8_8_i_3_n_0),
        .I3(hist_reg_0_15_6_6_i_2_n_0),
        .I4(hist_reg_0_15_9_9_i_3_n_0),
        .I5(hist_reg_0_15_9_9_i_4_n_0),
        .O(hist_reg_0_15_9_9_i_2_n_0));
  LUT5 #(
    .INIT(32'h4DD4D44D)) 
    hist_reg_0_15_9_9_i_3
       (.I0(hist_reg_0_15_8_8_i_6_n_0),
        .I1(hist_reg_0_15_8_8_i_7_n_0),
        .I2(hist_reg_0_15_8_8_i_3_n_0),
        .I3(hist_reg_0_15_8_8_i_4_n_0),
        .I4(hist_reg_0_15_8_8_i_5_n_0),
        .O(hist_reg_0_15_9_9_i_3_n_0));
  LUT6 #(
    .INIT(64'h2BD4D42BD42B2BD4)) 
    hist_reg_0_15_9_9_i_4
       (.I0(hist_reg_0_15_8_8_i_8_n_0),
        .I1(hist_reg_0_15_8_8_i_9_n_0),
        .I2(hist_reg_0_15_8_8_i_10_n_0),
        .I3(hist_reg_0_15_9_9_i_5_n_0),
        .I4(hist_reg_0_15_9_9_i_6_n_0),
        .I5(hist_reg_0_15_10_10_i_4_n_0),
        .O(hist_reg_0_15_9_9_i_4_n_0));
  LUT6 #(
    .INIT(64'h959595A995A9A9A9)) 
    hist_reg_0_15_9_9_i_5
       (.I0(hist_reg_0_15_10_10_i_9_n_0),
        .I1(hist_reg_0_15_8_8_i_19_n_0),
        .I2(hist_reg_0_15_9_9_i_7_n_0),
        .I3(hist_reg_0_15_7_7_i_34_n_0),
        .I4(hist_reg_0_15_7_7_i_35_n_0),
        .I5(hist_reg_0_15_7_7_i_33_n_0),
        .O(hist_reg_0_15_9_9_i_5_n_0));
  LUT6 #(
    .INIT(64'h4FDF0D4F0D4F040D)) 
    hist_reg_0_15_9_9_i_6
       (.I0(hist_reg_0_15_7_7_i_30_n_0),
        .I1(hist_reg_0_15_7_7_i_29_n_0),
        .I2(hist_reg_0_15_8_8_i_16_n_0),
        .I3(hist_reg_0_15_8_8_i_18_n_0),
        .I4(hist_reg_0_15_7_7_i_40_n_0),
        .I5(hist_reg_0_15_8_8_i_17_n_0),
        .O(hist_reg_0_15_9_9_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFF099F9FFF0009)) 
    hist_reg_0_15_9_9_i_7
       (.I0(\rs_reg[15][18]_srl16_n_0 ),
        .I1(left[18]),
        .I2(hist_reg_0_15_7_7_i_23_n_0),
        .I3(hist_reg_0_15_7_7_i_47_n_0),
        .I4(hist_reg_0_15_7_7_i_46_n_0),
        .I5(hist_reg_0_15_7_7_i_24_n_0),
        .O(hist_reg_0_15_9_9_i_7_n_0));
  LUT5 #(
    .INIT(32'h69969696)) 
    \l_bot[1]_i_10 
       (.I0(\l_bot_reg[5]_i_13_n_7 ),
        .I1(\l_bot_reg[5]_i_10_n_7 ),
        .I2(A[1]),
        .I3(\l_bot_reg[1]_i_26_n_4 ),
        .I4(\l_bot_reg[1]_i_12_n_4 ),
        .O(\l_bot[1]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \l_bot[1]_i_11 
       (.I0(\l_bot_reg[1]_i_26_n_4 ),
        .I1(\l_bot_reg[1]_i_12_n_4 ),
        .I2(A[0]),
        .O(\l_bot[1]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l_bot[1]_i_14 
       (.I0(\l_bot_reg[1]_i_12_n_5 ),
        .I1(\l_bot_reg[1]_i_26_n_5 ),
        .O(\l_bot[1]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l_bot[1]_i_15 
       (.I0(\l_bot_reg[1]_i_12_n_6 ),
        .I1(\l_bot_reg[1]_i_26_n_6 ),
        .O(\l_bot[1]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l_bot[1]_i_16 
       (.I0(\l_bot_reg[1]_i_12_n_7 ),
        .I1(\l_bot_reg[1]_i_26_n_7 ),
        .O(\l_bot[1]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l_bot[1]_i_17 
       (.I0(\l_bot_reg[1]_i_13_n_4 ),
        .I1(\l_bot_reg[1]_i_13_n_7 ),
        .O(\l_bot[1]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hFFF70020)) 
    \l_bot[1]_i_18 
       (.I0(w_real),
        .I1(hist_reg_0_15_8_8_i_2_n_0),
        .I2(hist_reg_0_15_2_2_n_0),
        .I3(b_first),
        .I4(cur[2]),
        .O(\l_bot[1]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0080)) 
    \l_bot[1]_i_19 
       (.I0(raw[1]),
        .I1(w_real),
        .I2(hist_reg_0_15_1_1_n_0),
        .I3(b_first),
        .I4(cur[1]),
        .O(\l_bot[1]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF4100)) 
    \l_bot[1]_i_20 
       (.I0(hist_reg_0_15_6_6_i_2_n_0),
        .I1(hist_reg_0_15_6_6_i_3_n_0),
        .I2(hist_reg_0_15_6_6_i_4_n_0),
        .I3(w_real),
        .I4(cur[0]),
        .O(\l_bot[1]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h41FFBEFF)) 
    \l_bot[1]_i_21 
       (.I0(hist_reg_0_15_6_6_i_2_n_0),
        .I1(hist_reg_0_15_6_6_i_3_n_0),
        .I2(hist_reg_0_15_6_6_i_4_n_0),
        .I3(w_real),
        .I4(cur[0]),
        .O(\l_bot[1]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hA9A6656A5659656A)) 
    \l_bot[1]_i_22 
       (.I0(\l_bot[1]_i_18_n_0 ),
        .I1(cur[3]),
        .I2(b_first),
        .I3(hist_reg_0_15_3_3_n_0),
        .I4(w_real),
        .I5(hist_reg_0_15_9_9_i_2_n_0),
        .O(\l_bot[1]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hA9A6656A5659656A)) 
    \l_bot[1]_i_23 
       (.I0(\l_bot[1]_i_19_n_0 ),
        .I1(cur[2]),
        .I2(b_first),
        .I3(hist_reg_0_15_2_2_n_0),
        .I4(w_real),
        .I5(hist_reg_0_15_8_8_i_2_n_0),
        .O(\l_bot[1]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h5659A9A6656A656A)) 
    \l_bot[1]_i_24 
       (.I0(\l_bot[1]_i_20_n_0 ),
        .I1(cur[1]),
        .I2(b_first),
        .I3(hist_reg_0_15_1_1_n_0),
        .I4(raw[1]),
        .I5(w_real),
        .O(\l_bot[1]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \l_bot[1]_i_25 
       (.I0(\l_bot[1]_i_34_n_0 ),
        .I1(hist_reg_0_15_0_0_n_0),
        .I2(b_first),
        .I3(cur[0]),
        .O(\l_bot[1]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \l_bot[1]_i_27 
       (.I0(A[5]),
        .I1(A[7]),
        .O(\l_bot[1]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \l_bot[1]_i_28 
       (.I0(A[4]),
        .I1(A[6]),
        .O(\l_bot[1]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \l_bot[1]_i_29 
       (.I0(A[3]),
        .I1(A[5]),
        .O(\l_bot[1]_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \l_bot[1]_i_30 
       (.I0(A[2]),
        .I1(A[4]),
        .O(\l_bot[1]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \l_bot[1]_i_31 
       (.I0(A[1]),
        .I1(A[3]),
        .O(\l_bot[1]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \l_bot[1]_i_32 
       (.I0(A[0]),
        .I1(A[2]),
        .O(\l_bot[1]_i_32_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \l_bot[1]_i_33 
       (.I0(A[1]),
        .O(\l_bot[1]_i_33_n_0 ));
  LUT5 #(
    .INIT(32'h41FFBEFF)) 
    \l_bot[1]_i_34 
       (.I0(hist_reg_0_15_6_6_i_2_n_0),
        .I1(hist_reg_0_15_6_6_i_3_n_0),
        .I2(hist_reg_0_15_6_6_i_4_n_0),
        .I3(w_real),
        .I4(cur[0]),
        .O(\l_bot[1]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l_bot[1]_i_35 
       (.I0(A[4]),
        .I1(A[2]),
        .O(\l_bot[1]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l_bot[1]_i_36 
       (.I0(A[3]),
        .I1(A[1]),
        .O(\l_bot[1]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l_bot[1]_i_37 
       (.I0(A[2]),
        .I1(A[0]),
        .O(\l_bot[1]_i_37_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \l_bot[1]_i_4 
       (.I0(\l_bot_reg[5]_i_13_n_6 ),
        .I1(A[2]),
        .I2(\l_bot_reg[5]_i_10_n_6 ),
        .O(\l_bot[1]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \l_bot[1]_i_5 
       (.I0(\l_bot_reg[5]_i_13_n_7 ),
        .I1(\l_bot_reg[5]_i_10_n_7 ),
        .I2(A[1]),
        .O(\l_bot[1]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \l_bot[1]_i_6 
       (.I0(A[1]),
        .I1(\l_bot_reg[5]_i_10_n_7 ),
        .I2(\l_bot_reg[5]_i_13_n_7 ),
        .O(\l_bot[1]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \l_bot[1]_i_8 
       (.I0(\l_bot_reg[5]_i_10_n_1 ),
        .I1(\l_bot_reg[5]_i_13_n_5 ),
        .I2(A[3]),
        .I3(\l_bot[1]_i_4_n_0 ),
        .O(\l_bot[1]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \l_bot[1]_i_9 
       (.I0(\l_bot_reg[5]_i_13_n_6 ),
        .I1(A[2]),
        .I2(\l_bot_reg[5]_i_10_n_6 ),
        .I3(\l_bot[1]_i_5_n_0 ),
        .O(\l_bot[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFEFFFEF)) 
    \l_bot[5]_i_1 
       (.I0(O[1]),
        .I1(\l_bot_reg[5] ),
        .I2(CO),
        .I3(O[0]),
        .I4(cost[5]),
        .I5(b_first),
        .O(l_new));
  LUT1 #(
    .INIT(2'h1)) 
    \l_bot[5]_i_14 
       (.I0(A[7]),
        .O(\l_bot[5]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \l_bot[5]_i_15 
       (.I0(A[6]),
        .O(\l_bot[5]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hAABAAA2A)) 
    \l_bot[5]_i_16 
       (.I0(cur[4]),
        .I1(hist_reg_0_15_10_10_i_2_n_0),
        .I2(w_real),
        .I3(b_first),
        .I4(hist_reg_0_15_4_4_n_0),
        .O(\l_bot[5]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hE0F0F2F0)) 
    \l_bot[5]_i_17 
       (.I0(hist_reg_0_15_3_3_n_0),
        .I1(b_first),
        .I2(cur[3]),
        .I3(w_real),
        .I4(hist_reg_0_15_9_9_i_2_n_0),
        .O(\l_bot[5]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hAABAAA2A)) 
    \l_bot[5]_i_18 
       (.I0(cur[5]),
        .I1(hist_reg_0_15_11_11_i_2_n_0),
        .I2(w_real),
        .I3(b_first),
        .I4(hist_reg_0_15_5_5_n_0),
        .O(\l_bot[5]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hA9A6656A5659656A)) 
    \l_bot[5]_i_19 
       (.I0(\l_bot[5]_i_16_n_0 ),
        .I1(cur[5]),
        .I2(b_first),
        .I3(hist_reg_0_15_5_5_n_0),
        .I4(w_real),
        .I5(hist_reg_0_15_11_11_i_2_n_0),
        .O(\l_bot[5]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hA9A6656A5659656A)) 
    \l_bot[5]_i_20 
       (.I0(\l_bot[5]_i_17_n_0 ),
        .I1(cur[4]),
        .I2(b_first),
        .I3(hist_reg_0_15_4_4_n_0),
        .I4(w_real),
        .I5(hist_reg_0_15_10_10_i_2_n_0),
        .O(\l_bot[5]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l_bot[5]_i_21 
       (.I0(A[7]),
        .I1(A[5]),
        .O(\l_bot[5]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l_bot[5]_i_22 
       (.I0(A[6]),
        .I1(A[4]),
        .O(\l_bot[5]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l_bot[5]_i_23 
       (.I0(A[5]),
        .I1(A[3]),
        .O(\l_bot[5]_i_23_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \l_bot[5]_i_3 
       (.I0(\l_bot_reg[5]_i_10_n_1 ),
        .I1(\l_bot_reg[5]_i_11_n_7 ),
        .I2(A[5]),
        .O(\l_bot[5]_i_3_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \l_bot[5]_i_4 
       (.I0(\l_bot_reg[5]_i_10_n_1 ),
        .I1(\l_bot_reg[5]_i_13_n_4 ),
        .I2(A[4]),
        .O(\l_bot[5]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \l_bot[5]_i_5 
       (.I0(\l_bot_reg[5]_i_10_n_1 ),
        .I1(\l_bot_reg[5]_i_13_n_5 ),
        .I2(A[3]),
        .O(\l_bot[5]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7E81)) 
    \l_bot[5]_i_6 
       (.I0(\l_bot_reg[5]_i_11_n_2 ),
        .I1(A[6]),
        .I2(\l_bot_reg[5]_i_10_n_1 ),
        .I3(A[7]),
        .O(\l_bot[5]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \l_bot[5]_i_7 
       (.I0(\l_bot[5]_i_3_n_0 ),
        .I1(A[6]),
        .I2(\l_bot_reg[5]_i_10_n_1 ),
        .I3(\l_bot_reg[5]_i_11_n_2 ),
        .O(\l_bot[5]_i_7_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \l_bot[5]_i_8 
       (.I0(\l_bot_reg[5]_i_10_n_1 ),
        .I1(\l_bot_reg[5]_i_11_n_7 ),
        .I2(A[5]),
        .I3(\l_bot[5]_i_4_n_0 ),
        .O(\l_bot[5]_i_8_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \l_bot[5]_i_9 
       (.I0(\l_bot_reg[5]_i_10_n_1 ),
        .I1(\l_bot_reg[5]_i_13_n_4 ),
        .I2(A[4]),
        .I3(\l_bot[5]_i_5_n_0 ),
        .O(\l_bot[5]_i_9_n_0 ));
  CARRY4 \l_bot_reg[1]_i_12 
       (.CI(\l_bot_reg[1]_i_13_n_0 ),
        .CO({\l_bot_reg[1]_i_12_n_0 ,\l_bot_reg[1]_i_12_n_1 ,\l_bot_reg[1]_i_12_n_2 ,\l_bot_reg[1]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI(A[5:2]),
        .O({\l_bot_reg[1]_i_12_n_4 ,\l_bot_reg[1]_i_12_n_5 ,\l_bot_reg[1]_i_12_n_6 ,\l_bot_reg[1]_i_12_n_7 }),
        .S({\l_bot[1]_i_27_n_0 ,\l_bot[1]_i_28_n_0 ,\l_bot[1]_i_29_n_0 ,\l_bot[1]_i_30_n_0 }));
  CARRY4 \l_bot_reg[1]_i_13 
       (.CI(1'b0),
        .CO({\l_bot_reg[1]_i_13_n_0 ,\l_bot_reg[1]_i_13_n_1 ,\l_bot_reg[1]_i_13_n_2 ,\l_bot_reg[1]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI({A[1:0],1'b0,1'b1}),
        .O({\l_bot_reg[1]_i_13_n_4 ,\NLW_l_bot_reg[1]_i_13_O_UNCONNECTED [2:1],\l_bot_reg[1]_i_13_n_7 }),
        .S({\l_bot[1]_i_31_n_0 ,\l_bot[1]_i_32_n_0 ,\l_bot[1]_i_33_n_0 ,A[0]}));
  CARRY4 \l_bot_reg[1]_i_2 
       (.CI(\l_bot_reg[1]_i_3_n_0 ),
        .CO({\l_bot_reg[1]_i_2_n_0 ,\l_bot_reg[1]_i_2_n_1 ,\l_bot_reg[1]_i_2_n_2 ,\l_bot_reg[1]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\l_bot[1]_i_4_n_0 ,\l_bot[1]_i_5_n_0 ,\l_bot[1]_i_6_n_0 ,A[0]}),
        .O({cost[1:0],\NLW_l_bot_reg[1]_i_2_O_UNCONNECTED [1:0]}),
        .S({\l_bot[1]_i_8_n_0 ,\l_bot[1]_i_9_n_0 ,\l_bot[1]_i_10_n_0 ,\l_bot[1]_i_11_n_0 }));
  CARRY4 \l_bot_reg[1]_i_26 
       (.CI(1'b0),
        .CO({\l_bot_reg[1]_i_26_n_0 ,\l_bot_reg[1]_i_26_n_1 ,\l_bot_reg[1]_i_26_n_2 ,\l_bot_reg[1]_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({A[4:2],1'b0}),
        .O({\l_bot_reg[1]_i_26_n_4 ,\l_bot_reg[1]_i_26_n_5 ,\l_bot_reg[1]_i_26_n_6 ,\l_bot_reg[1]_i_26_n_7 }),
        .S({\l_bot[1]_i_35_n_0 ,\l_bot[1]_i_36_n_0 ,\l_bot[1]_i_37_n_0 ,A[1]}));
  CARRY4 \l_bot_reg[1]_i_3 
       (.CI(1'b0),
        .CO({\l_bot_reg[1]_i_3_n_0 ,\l_bot_reg[1]_i_3_n_1 ,\l_bot_reg[1]_i_3_n_2 ,\l_bot_reg[1]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\l_bot_reg[1]_i_12_n_5 ,\l_bot_reg[1]_i_12_n_6 ,\l_bot_reg[1]_i_12_n_7 ,\l_bot_reg[1]_i_13_n_4 }),
        .O(\NLW_l_bot_reg[1]_i_3_O_UNCONNECTED [3:0]),
        .S({\l_bot[1]_i_14_n_0 ,\l_bot[1]_i_15_n_0 ,\l_bot[1]_i_16_n_0 ,\l_bot[1]_i_17_n_0 }));
  CARRY4 \l_bot_reg[1]_i_7 
       (.CI(1'b0),
        .CO({\l_bot_reg[1]_i_7_n_0 ,\l_bot_reg[1]_i_7_n_1 ,\l_bot_reg[1]_i_7_n_2 ,\l_bot_reg[1]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({\l_bot[1]_i_18_n_0 ,\l_bot[1]_i_19_n_0 ,\l_bot[1]_i_20_n_0 ,\l_bot[1]_i_21_n_0 }),
        .O(A[3:0]),
        .S({\l_bot[1]_i_22_n_0 ,\l_bot[1]_i_23_n_0 ,\l_bot[1]_i_24_n_0 ,\l_bot[1]_i_25_n_0 }));
  CARRY4 \l_bot_reg[5]_i_10 
       (.CI(\l_bot_reg[1]_i_12_n_0 ),
        .CO({\NLW_l_bot_reg[5]_i_10_CO_UNCONNECTED [3],\l_bot_reg[5]_i_10_n_1 ,\NLW_l_bot_reg[5]_i_10_CO_UNCONNECTED [1],\l_bot_reg[5]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,A[7:6]}),
        .O({\NLW_l_bot_reg[5]_i_10_O_UNCONNECTED [3:2],\l_bot_reg[5]_i_10_n_6 ,\l_bot_reg[5]_i_10_n_7 }),
        .S({1'b0,1'b1,\l_bot[5]_i_14_n_0 ,\l_bot[5]_i_15_n_0 }));
  CARRY4 \l_bot_reg[5]_i_11 
       (.CI(\l_bot_reg[5]_i_13_n_0 ),
        .CO({\NLW_l_bot_reg[5]_i_11_CO_UNCONNECTED [3:2],\l_bot_reg[5]_i_11_n_2 ,\NLW_l_bot_reg[5]_i_11_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_l_bot_reg[5]_i_11_O_UNCONNECTED [3:1],\l_bot_reg[5]_i_11_n_7 }),
        .S({1'b0,1'b0,1'b1,A[7]}));
  CARRY4 \l_bot_reg[5]_i_12 
       (.CI(\l_bot_reg[1]_i_7_n_0 ),
        .CO({A[7],\NLW_l_bot_reg[5]_i_12_CO_UNCONNECTED [2],\l_bot_reg[5]_i_12_n_2 ,\l_bot_reg[5]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\l_bot[5]_i_16_n_0 ,\l_bot[5]_i_17_n_0 }),
        .O({\NLW_l_bot_reg[5]_i_12_O_UNCONNECTED [3],A[6:4]}),
        .S({1'b1,\l_bot[5]_i_18_n_0 ,\l_bot[5]_i_19_n_0 ,\l_bot[5]_i_20_n_0 }));
  CARRY4 \l_bot_reg[5]_i_13 
       (.CI(\l_bot_reg[1]_i_26_n_0 ),
        .CO({\l_bot_reg[5]_i_13_n_0 ,\l_bot_reg[5]_i_13_n_1 ,\l_bot_reg[5]_i_13_n_2 ,\l_bot_reg[5]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,A[7:5]}),
        .O({\l_bot_reg[5]_i_13_n_4 ,\l_bot_reg[5]_i_13_n_5 ,\l_bot_reg[5]_i_13_n_6 ,\l_bot_reg[5]_i_13_n_7 }),
        .S({A[6],\l_bot[5]_i_21_n_0 ,\l_bot[5]_i_22_n_0 ,\l_bot[5]_i_23_n_0 }));
  CARRY4 \l_bot_reg[5]_i_2 
       (.CI(\l_bot_reg[1]_i_2_n_0 ),
        .CO({\NLW_l_bot_reg[5]_i_2_CO_UNCONNECTED [3],\l_bot_reg[5]_i_2_n_1 ,\l_bot_reg[5]_i_2_n_2 ,\l_bot_reg[5]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\l_bot[5]_i_3_n_0 ,\l_bot[5]_i_4_n_0 ,\l_bot[5]_i_5_n_0 }),
        .O(cost[5:2]),
        .S({\l_bot[5]_i_6_n_0 ,\l_bot[5]_i_7_n_0 ,\l_bot[5]_i_8_n_0 ,\l_bot[5]_i_9_n_0 }));
  FDRE left_ok_reg
       (.C(clk),
        .CE(load),
        .D(in_left[44]),
        .Q(left_ok),
        .R(1'b0));
  FDRE \left_reg[0] 
       (.C(clk),
        .CE(load),
        .D(in_left[0]),
        .Q(left[0]),
        .R(1'b0));
  FDRE \left_reg[10] 
       (.C(clk),
        .CE(load),
        .D(in_left[10]),
        .Q(left[10]),
        .R(1'b0));
  FDRE \left_reg[11] 
       (.C(clk),
        .CE(load),
        .D(in_left[11]),
        .Q(left[11]),
        .R(1'b0));
  FDRE \left_reg[12] 
       (.C(clk),
        .CE(load),
        .D(in_left[12]),
        .Q(left[12]),
        .R(1'b0));
  FDRE \left_reg[13] 
       (.C(clk),
        .CE(load),
        .D(in_left[13]),
        .Q(left[13]),
        .R(1'b0));
  FDRE \left_reg[14] 
       (.C(clk),
        .CE(load),
        .D(in_left[14]),
        .Q(left[14]),
        .R(1'b0));
  FDRE \left_reg[15] 
       (.C(clk),
        .CE(load),
        .D(in_left[15]),
        .Q(left[15]),
        .R(1'b0));
  FDRE \left_reg[16] 
       (.C(clk),
        .CE(load),
        .D(in_left[16]),
        .Q(left[16]),
        .R(1'b0));
  FDRE \left_reg[17] 
       (.C(clk),
        .CE(load),
        .D(in_left[17]),
        .Q(left[17]),
        .R(1'b0));
  FDRE \left_reg[18] 
       (.C(clk),
        .CE(load),
        .D(in_left[18]),
        .Q(left[18]),
        .R(1'b0));
  FDRE \left_reg[19] 
       (.C(clk),
        .CE(load),
        .D(in_left[19]),
        .Q(left[19]),
        .R(1'b0));
  FDRE \left_reg[1] 
       (.C(clk),
        .CE(load),
        .D(in_left[1]),
        .Q(left[1]),
        .R(1'b0));
  FDRE \left_reg[20] 
       (.C(clk),
        .CE(load),
        .D(in_left[20]),
        .Q(left[20]),
        .R(1'b0));
  FDRE \left_reg[21] 
       (.C(clk),
        .CE(load),
        .D(in_left[21]),
        .Q(left[21]),
        .R(1'b0));
  FDRE \left_reg[22] 
       (.C(clk),
        .CE(load),
        .D(in_left[22]),
        .Q(left[22]),
        .R(1'b0));
  FDRE \left_reg[23] 
       (.C(clk),
        .CE(load),
        .D(in_left[23]),
        .Q(left[23]),
        .R(1'b0));
  FDRE \left_reg[24] 
       (.C(clk),
        .CE(load),
        .D(in_left[24]),
        .Q(left[24]),
        .R(1'b0));
  FDRE \left_reg[25] 
       (.C(clk),
        .CE(load),
        .D(in_left[25]),
        .Q(left[25]),
        .R(1'b0));
  FDRE \left_reg[26] 
       (.C(clk),
        .CE(load),
        .D(in_left[26]),
        .Q(left[26]),
        .R(1'b0));
  FDRE \left_reg[27] 
       (.C(clk),
        .CE(load),
        .D(in_left[27]),
        .Q(left[27]),
        .R(1'b0));
  FDRE \left_reg[28] 
       (.C(clk),
        .CE(load),
        .D(in_left[28]),
        .Q(left[28]),
        .R(1'b0));
  FDRE \left_reg[29] 
       (.C(clk),
        .CE(load),
        .D(in_left[29]),
        .Q(left[29]),
        .R(1'b0));
  FDRE \left_reg[2] 
       (.C(clk),
        .CE(load),
        .D(in_left[2]),
        .Q(left[2]),
        .R(1'b0));
  FDRE \left_reg[30] 
       (.C(clk),
        .CE(load),
        .D(in_left[30]),
        .Q(left[30]),
        .R(1'b0));
  FDRE \left_reg[31] 
       (.C(clk),
        .CE(load),
        .D(in_left[31]),
        .Q(left[31]),
        .R(1'b0));
  FDRE \left_reg[32] 
       (.C(clk),
        .CE(load),
        .D(in_left[32]),
        .Q(left[32]),
        .R(1'b0));
  FDRE \left_reg[33] 
       (.C(clk),
        .CE(load),
        .D(in_left[33]),
        .Q(left[33]),
        .R(1'b0));
  FDRE \left_reg[34] 
       (.C(clk),
        .CE(load),
        .D(in_left[34]),
        .Q(left[34]),
        .R(1'b0));
  FDRE \left_reg[35] 
       (.C(clk),
        .CE(load),
        .D(in_left[35]),
        .Q(left[35]),
        .R(1'b0));
  FDRE \left_reg[36] 
       (.C(clk),
        .CE(load),
        .D(in_left[36]),
        .Q(left[36]),
        .R(1'b0));
  FDRE \left_reg[37] 
       (.C(clk),
        .CE(load),
        .D(in_left[37]),
        .Q(left[37]),
        .R(1'b0));
  FDRE \left_reg[38] 
       (.C(clk),
        .CE(load),
        .D(in_left[38]),
        .Q(left[38]),
        .R(1'b0));
  FDRE \left_reg[39] 
       (.C(clk),
        .CE(load),
        .D(in_left[39]),
        .Q(left[39]),
        .R(1'b0));
  FDRE \left_reg[3] 
       (.C(clk),
        .CE(load),
        .D(in_left[3]),
        .Q(left[3]),
        .R(1'b0));
  FDRE \left_reg[40] 
       (.C(clk),
        .CE(load),
        .D(in_left[40]),
        .Q(left[40]),
        .R(1'b0));
  FDRE \left_reg[41] 
       (.C(clk),
        .CE(load),
        .D(in_left[41]),
        .Q(left[41]),
        .R(1'b0));
  FDRE \left_reg[42] 
       (.C(clk),
        .CE(load),
        .D(in_left[42]),
        .Q(left[42]),
        .R(1'b0));
  FDRE \left_reg[43] 
       (.C(clk),
        .CE(load),
        .D(in_left[43]),
        .Q(left[43]),
        .R(1'b0));
  FDRE \left_reg[4] 
       (.C(clk),
        .CE(load),
        .D(in_left[4]),
        .Q(left[4]),
        .R(1'b0));
  FDRE \left_reg[5] 
       (.C(clk),
        .CE(load),
        .D(in_left[5]),
        .Q(left[5]),
        .R(1'b0));
  FDRE \left_reg[6] 
       (.C(clk),
        .CE(load),
        .D(in_left[6]),
        .Q(left[6]),
        .R(1'b0));
  FDRE \left_reg[7] 
       (.C(clk),
        .CE(load),
        .D(in_left[7]),
        .Q(left[7]),
        .R(1'b0));
  FDRE \left_reg[8] 
       (.C(clk),
        .CE(load),
        .D(in_left[8]),
        .Q(left[8]),
        .R(1'b0));
  FDRE \left_reg[9] 
       (.C(clk),
        .CE(load),
        .D(in_left[9]),
        .Q(left[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    lr_reg_0_15_5_5_i_1
       (.I0(l_new),
        .I1(b_real),
        .I2(a),
        .O(p_1_in));
  FDRE \rs_ok_reg[0] 
       (.C(clk),
        .CE(load),
        .D(in_right[44]),
        .Q(rs_ok[0]),
        .R(1'b0));
  FDRE \rs_ok_reg[10] 
       (.C(clk),
        .CE(load),
        .D(rs_ok[9]),
        .Q(rs_ok[10]),
        .R(\rs_ok_reg[15]_0 ));
  FDRE \rs_ok_reg[11] 
       (.C(clk),
        .CE(load),
        .D(rs_ok[10]),
        .Q(rs_ok[11]),
        .R(\rs_ok_reg[15]_0 ));
  FDRE \rs_ok_reg[12] 
       (.C(clk),
        .CE(load),
        .D(rs_ok[11]),
        .Q(rs_ok[12]),
        .R(\rs_ok_reg[15]_0 ));
  FDRE \rs_ok_reg[13] 
       (.C(clk),
        .CE(load),
        .D(rs_ok[12]),
        .Q(rs_ok[13]),
        .R(\rs_ok_reg[15]_0 ));
  FDRE \rs_ok_reg[14] 
       (.C(clk),
        .CE(load),
        .D(rs_ok[13]),
        .Q(rs_ok[14]),
        .R(\rs_ok_reg[15]_0 ));
  FDRE \rs_ok_reg[15] 
       (.C(clk),
        .CE(load),
        .D(rs_ok[14]),
        .Q(rs_ok[15]),
        .R(\rs_ok_reg[15]_0 ));
  FDRE \rs_ok_reg[1] 
       (.C(clk),
        .CE(load),
        .D(rs_ok[0]),
        .Q(rs_ok[1]),
        .R(\rs_ok_reg[15]_0 ));
  FDRE \rs_ok_reg[2] 
       (.C(clk),
        .CE(load),
        .D(rs_ok[1]),
        .Q(rs_ok[2]),
        .R(\rs_ok_reg[15]_0 ));
  FDRE \rs_ok_reg[3] 
       (.C(clk),
        .CE(load),
        .D(rs_ok[2]),
        .Q(rs_ok[3]),
        .R(\rs_ok_reg[15]_0 ));
  FDRE \rs_ok_reg[4] 
       (.C(clk),
        .CE(load),
        .D(rs_ok[3]),
        .Q(rs_ok[4]),
        .R(\rs_ok_reg[15]_0 ));
  FDRE \rs_ok_reg[5] 
       (.C(clk),
        .CE(load),
        .D(rs_ok[4]),
        .Q(rs_ok[5]),
        .R(\rs_ok_reg[15]_0 ));
  FDRE \rs_ok_reg[6] 
       (.C(clk),
        .CE(load),
        .D(rs_ok[5]),
        .Q(rs_ok[6]),
        .R(\rs_ok_reg[15]_0 ));
  FDRE \rs_ok_reg[7] 
       (.C(clk),
        .CE(load),
        .D(rs_ok[6]),
        .Q(rs_ok[7]),
        .R(\rs_ok_reg[15]_0 ));
  FDRE \rs_ok_reg[8] 
       (.C(clk),
        .CE(load),
        .D(rs_ok[7]),
        .Q(rs_ok[8]),
        .R(\rs_ok_reg[15]_0 ));
  FDRE \rs_ok_reg[9] 
       (.C(clk),
        .CE(load),
        .D(rs_ok[8]),
        .Q(rs_ok[9]),
        .R(\rs_ok_reg[15]_0 ));
  (* srl_bus_name = "\\inst/u_slice/u_cost/rs_reg[15] " *) 
  (* srl_name = "\\inst/u_slice/u_cost/rs_reg[15][0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rs_reg[15][0]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(load),
        .CLK(clk),
        .D(in_right[0]),
        .Q(\rs_reg[15][0]_srl16_n_0 ));
  (* srl_bus_name = "\\inst/u_slice/u_cost/rs_reg[15] " *) 
  (* srl_name = "\\inst/u_slice/u_cost/rs_reg[15][10]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rs_reg[15][10]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(load),
        .CLK(clk),
        .D(in_right[10]),
        .Q(\rs_reg[15][10]_srl16_n_0 ));
  (* srl_bus_name = "\\inst/u_slice/u_cost/rs_reg[15] " *) 
  (* srl_name = "\\inst/u_slice/u_cost/rs_reg[15][11]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rs_reg[15][11]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(load),
        .CLK(clk),
        .D(in_right[11]),
        .Q(\rs_reg[15][11]_srl16_n_0 ));
  (* srl_bus_name = "\\inst/u_slice/u_cost/rs_reg[15] " *) 
  (* srl_name = "\\inst/u_slice/u_cost/rs_reg[15][12]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rs_reg[15][12]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(load),
        .CLK(clk),
        .D(in_right[12]),
        .Q(\rs_reg[15][12]_srl16_n_0 ));
  (* srl_bus_name = "\\inst/u_slice/u_cost/rs_reg[15] " *) 
  (* srl_name = "\\inst/u_slice/u_cost/rs_reg[15][13]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rs_reg[15][13]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(load),
        .CLK(clk),
        .D(in_right[13]),
        .Q(\rs_reg[15][13]_srl16_n_0 ));
  (* srl_bus_name = "\\inst/u_slice/u_cost/rs_reg[15] " *) 
  (* srl_name = "\\inst/u_slice/u_cost/rs_reg[15][14]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rs_reg[15][14]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(load),
        .CLK(clk),
        .D(in_right[14]),
        .Q(\rs_reg[15][14]_srl16_n_0 ));
  (* srl_bus_name = "\\inst/u_slice/u_cost/rs_reg[15] " *) 
  (* srl_name = "\\inst/u_slice/u_cost/rs_reg[15][15]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rs_reg[15][15]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(load),
        .CLK(clk),
        .D(in_right[15]),
        .Q(\rs_reg[15][15]_srl16_n_0 ));
  (* srl_bus_name = "\\inst/u_slice/u_cost/rs_reg[15] " *) 
  (* srl_name = "\\inst/u_slice/u_cost/rs_reg[15][16]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rs_reg[15][16]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(load),
        .CLK(clk),
        .D(in_right[16]),
        .Q(\rs_reg[15][16]_srl16_n_0 ));
  (* srl_bus_name = "\\inst/u_slice/u_cost/rs_reg[15] " *) 
  (* srl_name = "\\inst/u_slice/u_cost/rs_reg[15][17]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rs_reg[15][17]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(load),
        .CLK(clk),
        .D(in_right[17]),
        .Q(\rs_reg[15][17]_srl16_n_0 ));
  (* srl_bus_name = "\\inst/u_slice/u_cost/rs_reg[15] " *) 
  (* srl_name = "\\inst/u_slice/u_cost/rs_reg[15][18]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rs_reg[15][18]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(load),
        .CLK(clk),
        .D(in_right[18]),
        .Q(\rs_reg[15][18]_srl16_n_0 ));
  (* srl_bus_name = "\\inst/u_slice/u_cost/rs_reg[15] " *) 
  (* srl_name = "\\inst/u_slice/u_cost/rs_reg[15][19]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rs_reg[15][19]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(load),
        .CLK(clk),
        .D(in_right[19]),
        .Q(\rs_reg[15][19]_srl16_n_0 ));
  (* srl_bus_name = "\\inst/u_slice/u_cost/rs_reg[15] " *) 
  (* srl_name = "\\inst/u_slice/u_cost/rs_reg[15][1]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rs_reg[15][1]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(load),
        .CLK(clk),
        .D(in_right[1]),
        .Q(\rs_reg[15][1]_srl16_n_0 ));
  (* srl_bus_name = "\\inst/u_slice/u_cost/rs_reg[15] " *) 
  (* srl_name = "\\inst/u_slice/u_cost/rs_reg[15][20]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rs_reg[15][20]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(load),
        .CLK(clk),
        .D(in_right[20]),
        .Q(\rs_reg[15][20]_srl16_n_0 ));
  (* srl_bus_name = "\\inst/u_slice/u_cost/rs_reg[15] " *) 
  (* srl_name = "\\inst/u_slice/u_cost/rs_reg[15][21]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rs_reg[15][21]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(load),
        .CLK(clk),
        .D(in_right[21]),
        .Q(\rs_reg[15][21]_srl16_n_0 ));
  (* srl_bus_name = "\\inst/u_slice/u_cost/rs_reg[15] " *) 
  (* srl_name = "\\inst/u_slice/u_cost/rs_reg[15][22]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rs_reg[15][22]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(load),
        .CLK(clk),
        .D(in_right[22]),
        .Q(\rs_reg[15][22]_srl16_n_0 ));
  (* srl_bus_name = "\\inst/u_slice/u_cost/rs_reg[15] " *) 
  (* srl_name = "\\inst/u_slice/u_cost/rs_reg[15][23]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rs_reg[15][23]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(load),
        .CLK(clk),
        .D(in_right[23]),
        .Q(\rs_reg[15][23]_srl16_n_0 ));
  (* srl_bus_name = "\\inst/u_slice/u_cost/rs_reg[15] " *) 
  (* srl_name = "\\inst/u_slice/u_cost/rs_reg[15][24]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rs_reg[15][24]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(load),
        .CLK(clk),
        .D(in_right[24]),
        .Q(\rs_reg[15][24]_srl16_n_0 ));
  (* srl_bus_name = "\\inst/u_slice/u_cost/rs_reg[15] " *) 
  (* srl_name = "\\inst/u_slice/u_cost/rs_reg[15][25]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rs_reg[15][25]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(load),
        .CLK(clk),
        .D(in_right[25]),
        .Q(\rs_reg[15][25]_srl16_n_0 ));
  (* srl_bus_name = "\\inst/u_slice/u_cost/rs_reg[15] " *) 
  (* srl_name = "\\inst/u_slice/u_cost/rs_reg[15][26]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rs_reg[15][26]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(load),
        .CLK(clk),
        .D(in_right[26]),
        .Q(\rs_reg[15][26]_srl16_n_0 ));
  (* srl_bus_name = "\\inst/u_slice/u_cost/rs_reg[15] " *) 
  (* srl_name = "\\inst/u_slice/u_cost/rs_reg[15][27]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rs_reg[15][27]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(load),
        .CLK(clk),
        .D(in_right[27]),
        .Q(\rs_reg[15][27]_srl16_n_0 ));
  (* srl_bus_name = "\\inst/u_slice/u_cost/rs_reg[15] " *) 
  (* srl_name = "\\inst/u_slice/u_cost/rs_reg[15][28]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rs_reg[15][28]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(load),
        .CLK(clk),
        .D(in_right[28]),
        .Q(\rs_reg[15][28]_srl16_n_0 ));
  (* srl_bus_name = "\\inst/u_slice/u_cost/rs_reg[15] " *) 
  (* srl_name = "\\inst/u_slice/u_cost/rs_reg[15][29]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rs_reg[15][29]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(load),
        .CLK(clk),
        .D(in_right[29]),
        .Q(\rs_reg[15][29]_srl16_n_0 ));
  (* srl_bus_name = "\\inst/u_slice/u_cost/rs_reg[15] " *) 
  (* srl_name = "\\inst/u_slice/u_cost/rs_reg[15][2]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rs_reg[15][2]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(load),
        .CLK(clk),
        .D(in_right[2]),
        .Q(\rs_reg[15][2]_srl16_n_0 ));
  (* srl_bus_name = "\\inst/u_slice/u_cost/rs_reg[15] " *) 
  (* srl_name = "\\inst/u_slice/u_cost/rs_reg[15][30]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rs_reg[15][30]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(load),
        .CLK(clk),
        .D(in_right[30]),
        .Q(\rs_reg[15][30]_srl16_n_0 ));
  (* srl_bus_name = "\\inst/u_slice/u_cost/rs_reg[15] " *) 
  (* srl_name = "\\inst/u_slice/u_cost/rs_reg[15][31]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rs_reg[15][31]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(load),
        .CLK(clk),
        .D(in_right[31]),
        .Q(\rs_reg[15][31]_srl16_n_0 ));
  (* srl_bus_name = "\\inst/u_slice/u_cost/rs_reg[15] " *) 
  (* srl_name = "\\inst/u_slice/u_cost/rs_reg[15][32]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rs_reg[15][32]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(load),
        .CLK(clk),
        .D(in_right[32]),
        .Q(\rs_reg[15][32]_srl16_n_0 ));
  (* srl_bus_name = "\\inst/u_slice/u_cost/rs_reg[15] " *) 
  (* srl_name = "\\inst/u_slice/u_cost/rs_reg[15][33]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rs_reg[15][33]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(load),
        .CLK(clk),
        .D(in_right[33]),
        .Q(\rs_reg[15][33]_srl16_n_0 ));
  (* srl_bus_name = "\\inst/u_slice/u_cost/rs_reg[15] " *) 
  (* srl_name = "\\inst/u_slice/u_cost/rs_reg[15][34]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rs_reg[15][34]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(load),
        .CLK(clk),
        .D(in_right[34]),
        .Q(\rs_reg[15][34]_srl16_n_0 ));
  (* srl_bus_name = "\\inst/u_slice/u_cost/rs_reg[15] " *) 
  (* srl_name = "\\inst/u_slice/u_cost/rs_reg[15][35]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rs_reg[15][35]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(load),
        .CLK(clk),
        .D(in_right[35]),
        .Q(\rs_reg[15][35]_srl16_n_0 ));
  (* srl_bus_name = "\\inst/u_slice/u_cost/rs_reg[15] " *) 
  (* srl_name = "\\inst/u_slice/u_cost/rs_reg[15][36]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rs_reg[15][36]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(load),
        .CLK(clk),
        .D(in_right[36]),
        .Q(\rs_reg[15][36]_srl16_n_0 ));
  (* srl_bus_name = "\\inst/u_slice/u_cost/rs_reg[15] " *) 
  (* srl_name = "\\inst/u_slice/u_cost/rs_reg[15][37]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rs_reg[15][37]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(load),
        .CLK(clk),
        .D(in_right[37]),
        .Q(\rs_reg[15][37]_srl16_n_0 ));
  (* srl_bus_name = "\\inst/u_slice/u_cost/rs_reg[15] " *) 
  (* srl_name = "\\inst/u_slice/u_cost/rs_reg[15][38]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rs_reg[15][38]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(load),
        .CLK(clk),
        .D(in_right[38]),
        .Q(\rs_reg[15][38]_srl16_n_0 ));
  (* srl_bus_name = "\\inst/u_slice/u_cost/rs_reg[15] " *) 
  (* srl_name = "\\inst/u_slice/u_cost/rs_reg[15][39]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rs_reg[15][39]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(load),
        .CLK(clk),
        .D(in_right[39]),
        .Q(\rs_reg[15][39]_srl16_n_0 ));
  (* srl_bus_name = "\\inst/u_slice/u_cost/rs_reg[15] " *) 
  (* srl_name = "\\inst/u_slice/u_cost/rs_reg[15][3]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rs_reg[15][3]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(load),
        .CLK(clk),
        .D(in_right[3]),
        .Q(\rs_reg[15][3]_srl16_n_0 ));
  (* srl_bus_name = "\\inst/u_slice/u_cost/rs_reg[15] " *) 
  (* srl_name = "\\inst/u_slice/u_cost/rs_reg[15][40]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rs_reg[15][40]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(load),
        .CLK(clk),
        .D(in_right[40]),
        .Q(\rs_reg[15][40]_srl16_n_0 ));
  (* srl_bus_name = "\\inst/u_slice/u_cost/rs_reg[15] " *) 
  (* srl_name = "\\inst/u_slice/u_cost/rs_reg[15][41]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rs_reg[15][41]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(load),
        .CLK(clk),
        .D(in_right[41]),
        .Q(\rs_reg[15][41]_srl16_n_0 ));
  (* srl_bus_name = "\\inst/u_slice/u_cost/rs_reg[15] " *) 
  (* srl_name = "\\inst/u_slice/u_cost/rs_reg[15][42]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rs_reg[15][42]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(load),
        .CLK(clk),
        .D(in_right[42]),
        .Q(\rs_reg[15][42]_srl16_n_0 ));
  (* srl_bus_name = "\\inst/u_slice/u_cost/rs_reg[15] " *) 
  (* srl_name = "\\inst/u_slice/u_cost/rs_reg[15][43]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rs_reg[15][43]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(load),
        .CLK(clk),
        .D(in_right[43]),
        .Q(\rs_reg[15][43]_srl16_n_0 ));
  (* srl_bus_name = "\\inst/u_slice/u_cost/rs_reg[15] " *) 
  (* srl_name = "\\inst/u_slice/u_cost/rs_reg[15][4]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rs_reg[15][4]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(load),
        .CLK(clk),
        .D(in_right[4]),
        .Q(\rs_reg[15][4]_srl16_n_0 ));
  (* srl_bus_name = "\\inst/u_slice/u_cost/rs_reg[15] " *) 
  (* srl_name = "\\inst/u_slice/u_cost/rs_reg[15][5]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rs_reg[15][5]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(load),
        .CLK(clk),
        .D(in_right[5]),
        .Q(\rs_reg[15][5]_srl16_n_0 ));
  (* srl_bus_name = "\\inst/u_slice/u_cost/rs_reg[15] " *) 
  (* srl_name = "\\inst/u_slice/u_cost/rs_reg[15][6]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rs_reg[15][6]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(load),
        .CLK(clk),
        .D(in_right[6]),
        .Q(\rs_reg[15][6]_srl16_n_0 ));
  (* srl_bus_name = "\\inst/u_slice/u_cost/rs_reg[15] " *) 
  (* srl_name = "\\inst/u_slice/u_cost/rs_reg[15][7]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rs_reg[15][7]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(load),
        .CLK(clk),
        .D(in_right[7]),
        .Q(\rs_reg[15][7]_srl16_n_0 ));
  (* srl_bus_name = "\\inst/u_slice/u_cost/rs_reg[15] " *) 
  (* srl_name = "\\inst/u_slice/u_cost/rs_reg[15][8]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rs_reg[15][8]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(load),
        .CLK(clk),
        .D(in_right[8]),
        .Q(\rs_reg[15][8]_srl16_n_0 ));
  (* srl_bus_name = "\\inst/u_slice/u_cost/rs_reg[15] " *) 
  (* srl_name = "\\inst/u_slice/u_cost/rs_reg[15][9]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rs_reg[15][9]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(load),
        .CLK(clk),
        .D(in_right[9]),
        .Q(\rs_reg[15][9]_srl16_n_0 ));
endmodule

(* ORIG_REF_NAME = "ms_ctrl" *) 
module system_slice_0_0_ms_ctrl
   (sg_valid_reg_0,
    load,
    sg_valid_reg_1,
    \uc_reg[3]_0 ,
    E,
    \uc_reg[3]_1 ,
    \uc_reg[3]_2 ,
    \uc_reg[2]_0 ,
    \uc_reg[2]_1 ,
    \uc_reg[2]_2 ,
    \pos_reg[0]_0 ,
    run_reg_0,
    S,
    uq,
    \uq_reg[2]_0 ,
    SS,
    SR,
    \pos_reg[2]_0 ,
    \uc_reg[4]_0 ,
    \pos_reg[0]_1 ,
    sg_first_reg_0,
    \s0_reg[7] ,
    sg_valid_reg_2,
    \s2_reg[7] ,
    sg_valid_reg_3,
    sg_valid_reg_4,
    scan,
    b_v_reg_0,
    D,
    \uc_reg[3]_3 ,
    \uc_reg[0]_0 ,
    \uc_reg[0]_1 ,
    \uc_reg[1]_0 ,
    \uc_reg[1]_1 ,
    \uc_reg[0]_2 ,
    \uc_reg[0]_3 ,
    \uc_reg[1]_2 ,
    \uc_reg[1]_3 ,
    \uc_reg[0]_4 ,
    \uc_reg[0]_5 ,
    \carry_rec_reg[10] ,
    l_new,
    b_use_reg_0,
    b_use,
    b_real,
    b_real_reg_0,
    b_real_reg_1,
    \best_s_reg[7] ,
    b_real_reg_2,
    b_real_reg_3,
    \uc_reg[2]_3 ,
    b_real_reg_4,
    b_real_reg_5,
    b_real_reg_6,
    b_real_reg_7,
    b_real_reg_8,
    b_real_reg_9,
    b_real_reg_10,
    b_real_reg_11,
    b_real_reg_12,
    b_real_reg_13,
    b_real_reg_14,
    b_real_reg_15,
    b_real_reg_16,
    b_first_reg_0,
    O,
    \l_bot[6]_i_14_0 ,
    \l_bot[6]_i_14_1 ,
    b_first,
    b_real_reg_17,
    \gmin_reg[6]_0 ,
    \l_bot[6]_i_35 ,
    p_1_in,
    DI,
    \uc_reg[0]_6 ,
    b_first_reg_1,
    b_real_reg_18,
    \uio_r_reg[6] ,
    \uio_r_reg[4] ,
    run_reg_1,
    run_reg_2,
    \uio_r_reg[3] ,
    \pos_reg[0]_2 ,
    \uc_reg[0]_7 ,
    run_reg_3,
    run_reg_4,
    run_reg_5,
    run,
    \pos_reg[2]_1 ,
    b_own,
    \uq_reg[2]_1 ,
    \uq_reg[1]_0 ,
    \uq_reg[0]_0 ,
    in_left,
    in_right,
    w_real,
    ui_in,
    Q,
    \l_bot_reg[6]_i_18_0 ,
    l_up0,
    \l_bot_reg[6]_i_55_0 ,
    \m_sec_reg[7] ,
    best_s,
    \uo[7]_i_100 ,
    \m_sec_reg[7]_0 ,
    \rec_in_reg[6] ,
    \uo[6]_i_8_0 ,
    s0,
    s2,
    CO,
    a,
    \carry_rec_reg[14] ,
    \carry_rec_reg[14]_0 ,
    \carry_rec_reg[14]_1 ,
    \carry_rec_reg[13] ,
    \carry_rec_reg[13]_0 ,
    \carry_rec_reg[12] ,
    \carry_rec_reg[12]_0 ,
    \carry_rec_reg[11] ,
    \carry_rec_reg[11]_0 ,
    \carry_rec_reg[10]_0 ,
    \carry_rec_reg[10]_1 ,
    \carry_rec_reg[9] ,
    \carry_rec_reg[9]_0 ,
    \carry_rec_reg[8] ,
    \carry_rec_reg[8]_0 ,
    \carry_rec_reg[7] ,
    \carry_rec_reg[7]_0 ,
    \carry_rec_reg[6] ,
    \carry_rec_reg[6]_0 ,
    \carry_rec_reg[5] ,
    \carry_rec_reg[5]_0 ,
    \carry_rec_reg[4] ,
    \carry_rec_reg[4]_0 ,
    \carry_rec_reg[3] ,
    \carry_rec_reg[3]_0 ,
    \carry_rec_reg[2] ,
    \carry_rec_reg[2]_0 ,
    \carry_rec_reg[1] ,
    \carry_rec_reg[1]_0 ,
    \carry_rec_reg[0] ,
    \carry_rec_reg[0]_0 ,
    \rec_reg[0][13] ,
    \rec_reg[0][7] ,
    \lmin_reg[5] ,
    \lmin_reg[6] ,
    \best_s_reg[6] ,
    cost,
    \l_bot_reg[3]_i_2_0 ,
    lmin,
    \l_bot[3]_i_10 ,
    \m_s0_reg[0] ,
    \m_s0_reg[1] ,
    \m_s0_reg[1]_0 ,
    \m_s0_reg[2] ,
    \m_s0_reg[2]_0 ,
    \m_s0_reg[3] ,
    \m_s0_reg[3]_0 ,
    \m_s0_reg[4] ,
    \m_s0_reg[4]_0 ,
    \uo[6]_i_5_0 ,
    \uo[6]_i_5_1 ,
    \m_s0_reg[1]_1 ,
    \m_s0_reg[2]_1 ,
    \m_s0_reg[3]_1 ,
    \m_s0_reg[5] ,
    \m_s0_reg[6] ,
    \m_sec_reg[7]_1 ,
    \uo[7]_i_10_0 ,
    \uo[7]_i_10_1 ,
    \m_sec_reg[7]_2 ,
    \uo[0]_i_7_0 ,
    \uo[1]_i_8 ,
    \uo[5]_i_11_0 ,
    own_wins_reg,
    \uo_reg[7]_i_60 ,
    clk);
  output sg_valid_reg_0;
  output load;
  output sg_valid_reg_1;
  output [3:0]\uc_reg[3]_0 ;
  output [0:0]E;
  output [0:0]\uc_reg[3]_1 ;
  output [0:0]\uc_reg[3]_2 ;
  output [0:0]\uc_reg[2]_0 ;
  output [0:0]\uc_reg[2]_1 ;
  output [0:0]\uc_reg[2]_2 ;
  output \pos_reg[0]_0 ;
  output [0:0]run_reg_0;
  output [1:0]S;
  output [3:0]uq;
  output [0:0]\uq_reg[2]_0 ;
  output [0:0]SS;
  output [1:0]SR;
  output [0:0]\pos_reg[2]_0 ;
  output \uc_reg[4]_0 ;
  output \pos_reg[0]_1 ;
  output sg_first_reg_0;
  output \s0_reg[7] ;
  output sg_valid_reg_2;
  output \s2_reg[7] ;
  output sg_valid_reg_3;
  output [0:0]sg_valid_reg_4;
  output scan;
  output [0:0]b_v_reg_0;
  output [7:0]D;
  output [14:0]\uc_reg[3]_3 ;
  output [0:0]\uc_reg[0]_0 ;
  output [0:0]\uc_reg[0]_1 ;
  output [0:0]\uc_reg[1]_0 ;
  output [0:0]\uc_reg[1]_1 ;
  output [0:0]\uc_reg[0]_2 ;
  output [0:0]\uc_reg[0]_3 ;
  output [0:0]\uc_reg[1]_2 ;
  output [0:0]\uc_reg[1]_3 ;
  output [0:0]\uc_reg[0]_4 ;
  output [0:0]\uc_reg[0]_5 ;
  output [1:0]\carry_rec_reg[10] ;
  output [5:0]l_new;
  output [13:0]b_use_reg_0;
  output b_use;
  output b_real;
  output b_real_reg_0;
  output b_real_reg_1;
  output \best_s_reg[7] ;
  output b_real_reg_2;
  output [0:0]b_real_reg_3;
  output [0:0]\uc_reg[2]_3 ;
  output b_real_reg_4;
  output b_real_reg_5;
  output b_real_reg_6;
  output b_real_reg_7;
  output b_real_reg_8;
  output b_real_reg_9;
  output b_real_reg_10;
  output b_real_reg_11;
  output b_real_reg_12;
  output b_real_reg_13;
  output b_real_reg_14;
  output b_real_reg_15;
  output b_real_reg_16;
  output b_first_reg_0;
  output [1:0]O;
  output [0:0]\l_bot[6]_i_14_0 ;
  output [0:0]\l_bot[6]_i_14_1 ;
  output b_first;
  output [0:0]b_real_reg_17;
  output [5:0]\gmin_reg[6]_0 ;
  output [0:0]\l_bot[6]_i_35 ;
  output [5:0]p_1_in;
  output [0:0]DI;
  output \uc_reg[0]_6 ;
  output [0:0]b_first_reg_1;
  output b_real_reg_18;
  output [7:0]\uio_r_reg[6] ;
  output \uio_r_reg[4] ;
  output [0:0]run_reg_1;
  output [0:0]run_reg_2;
  output \uio_r_reg[3] ;
  output [0:0]\pos_reg[0]_2 ;
  output [0:0]\uc_reg[0]_7 ;
  output [0:0]run_reg_3;
  output [0:0]run_reg_4;
  output [0:0]run_reg_5;
  output run;
  output \pos_reg[2]_1 ;
  output b_own;
  output [0:0]\uq_reg[2]_1 ;
  output \uq_reg[1]_0 ;
  output \uq_reg[0]_0 ;
  output [44:0]in_left;
  output [44:0]in_right;
  output w_real;
  input [7:0]ui_in;
  input [6:0]Q;
  input [6:0]\l_bot_reg[6]_i_18_0 ;
  input [6:0]l_up0;
  input \l_bot_reg[6]_i_55_0 ;
  input [7:0]\m_sec_reg[7] ;
  input [7:0]best_s;
  input [2:0]\uo[7]_i_100 ;
  input [14:0]\m_sec_reg[7]_0 ;
  input [0:0]\rec_in_reg[6] ;
  input [3:0]\uo[6]_i_8_0 ;
  input [7:0]s0;
  input [7:0]s2;
  input [0:0]CO;
  input [6:0]a;
  input \carry_rec_reg[14] ;
  input \carry_rec_reg[14]_0 ;
  input [14:0]\carry_rec_reg[14]_1 ;
  input \carry_rec_reg[13] ;
  input \carry_rec_reg[13]_0 ;
  input \carry_rec_reg[12] ;
  input \carry_rec_reg[12]_0 ;
  input \carry_rec_reg[11] ;
  input \carry_rec_reg[11]_0 ;
  input \carry_rec_reg[10]_0 ;
  input \carry_rec_reg[10]_1 ;
  input \carry_rec_reg[9] ;
  input \carry_rec_reg[9]_0 ;
  input \carry_rec_reg[8] ;
  input \carry_rec_reg[8]_0 ;
  input \carry_rec_reg[7] ;
  input \carry_rec_reg[7]_0 ;
  input \carry_rec_reg[6] ;
  input \carry_rec_reg[6]_0 ;
  input \carry_rec_reg[5] ;
  input \carry_rec_reg[5]_0 ;
  input \carry_rec_reg[4] ;
  input \carry_rec_reg[4]_0 ;
  input \carry_rec_reg[3] ;
  input \carry_rec_reg[3]_0 ;
  input \carry_rec_reg[2] ;
  input \carry_rec_reg[2]_0 ;
  input \carry_rec_reg[1] ;
  input \carry_rec_reg[1]_0 ;
  input \carry_rec_reg[0] ;
  input \carry_rec_reg[0]_0 ;
  input [13:0]\rec_reg[0][13] ;
  input [0:0]\rec_reg[0][7] ;
  input [0:0]\lmin_reg[5] ;
  input [0:0]\lmin_reg[6] ;
  input [0:0]\best_s_reg[6] ;
  input [5:0]cost;
  input [0:0]\l_bot_reg[3]_i_2_0 ;
  input [3:0]lmin;
  input [2:0]\l_bot[3]_i_10 ;
  input \m_s0_reg[0] ;
  input \m_s0_reg[1] ;
  input \m_s0_reg[1]_0 ;
  input \m_s0_reg[2] ;
  input \m_s0_reg[2]_0 ;
  input \m_s0_reg[3] ;
  input \m_s0_reg[3]_0 ;
  input \m_s0_reg[4] ;
  input \m_s0_reg[4]_0 ;
  input [6:0]\uo[6]_i_5_0 ;
  input [6:0]\uo[6]_i_5_1 ;
  input \m_s0_reg[1]_1 ;
  input \m_s0_reg[2]_1 ;
  input \m_s0_reg[3]_1 ;
  input \m_s0_reg[5] ;
  input \m_s0_reg[6] ;
  input \m_sec_reg[7]_1 ;
  input [0:0]\uo[7]_i_10_0 ;
  input [7:0]\uo[7]_i_10_1 ;
  input \m_sec_reg[7]_2 ;
  input [0:0]\uo[0]_i_7_0 ;
  input [0:0]\uo[1]_i_8 ;
  input [0:0]\uo[5]_i_11_0 ;
  input [0:0]own_wins_reg;
  input [0:0]\uo_reg[7]_i_60 ;
  input clk;

  wire [5:0]A;
  wire [0:0]CO;
  wire [7:0]D;
  wire [0:0]DI;
  wire [0:0]E;
  wire [1:0]O;
  wire [6:0]Q;
  wire [1:0]S;
  wire [1:0]SR;
  wire [0:0]SS;
  wire [6:0]a;
  wire act;
  wire act_i_1_n_0;
  wire act_i_2_n_0;
  wire b_first;
  wire b_first_reg_0;
  wire [0:0]b_first_reg_1;
  wire b_own;
  wire b_real;
  wire b_real_reg_0;
  wire b_real_reg_1;
  wire b_real_reg_10;
  wire b_real_reg_11;
  wire b_real_reg_12;
  wire b_real_reg_13;
  wire b_real_reg_14;
  wire b_real_reg_15;
  wire b_real_reg_16;
  wire [0:0]b_real_reg_17;
  wire b_real_reg_18;
  wire b_real_reg_2;
  wire [0:0]b_real_reg_3;
  wire b_real_reg_4;
  wire b_real_reg_5;
  wire b_real_reg_6;
  wire b_real_reg_7;
  wire b_real_reg_8;
  wire b_real_reg_9;
  wire b_use;
  wire [13:0]b_use_reg_0;
  wire b_v;
  wire b_v_i_1_n_0;
  wire [0:0]b_v_reg_0;
  wire [7:0]best_s;
  wire \best_s[6]_i_4_n_0 ;
  wire [0:0]\best_s_reg[6] ;
  wire \best_s_reg[7] ;
  wire \carry_rec_reg[0] ;
  wire \carry_rec_reg[0]_0 ;
  wire [1:0]\carry_rec_reg[10] ;
  wire \carry_rec_reg[10]_0 ;
  wire \carry_rec_reg[10]_1 ;
  wire \carry_rec_reg[11] ;
  wire \carry_rec_reg[11]_0 ;
  wire \carry_rec_reg[12] ;
  wire \carry_rec_reg[12]_0 ;
  wire \carry_rec_reg[13] ;
  wire \carry_rec_reg[13]_0 ;
  wire \carry_rec_reg[14] ;
  wire \carry_rec_reg[14]_0 ;
  wire [14:0]\carry_rec_reg[14]_1 ;
  wire \carry_rec_reg[1] ;
  wire \carry_rec_reg[1]_0 ;
  wire \carry_rec_reg[2] ;
  wire \carry_rec_reg[2]_0 ;
  wire \carry_rec_reg[3] ;
  wire \carry_rec_reg[3]_0 ;
  wire \carry_rec_reg[4] ;
  wire \carry_rec_reg[4]_0 ;
  wire \carry_rec_reg[5] ;
  wire \carry_rec_reg[5]_0 ;
  wire \carry_rec_reg[6] ;
  wire \carry_rec_reg[6]_0 ;
  wire \carry_rec_reg[7] ;
  wire \carry_rec_reg[7]_0 ;
  wire \carry_rec_reg[8] ;
  wire \carry_rec_reg[8]_0 ;
  wire \carry_rec_reg[9] ;
  wire \carry_rec_reg[9]_0 ;
  wire clk;
  wire [5:0]cost;
  wire \dn_edge[6]_i_3_n_0 ;
  wire \dn_edge[6]_i_4_n_0 ;
  wire \dn_edge[6]_i_5_n_0 ;
  wire [2:0]ftype;
  wire \ftype[0]_i_1_n_0 ;
  wire \ftype[1]_i_1_n_0 ;
  wire \ftype[2]_i_1_n_0 ;
  wire \ftype[2]_i_2_n_0 ;
  wire [6:0]gmin;
  wire \gmin[6]_i_1_n_0 ;
  wire [5:0]\gmin_reg[6]_0 ;
  wire hn_first;
  wire hn_first_i_1_n_0;
  wire hn_real;
  wire hn_real_i_1_n_0;
  wire hn_use;
  wire hn_use_i_1_n_0;
  wire [44:0]in_left;
  wire [44:0]in_right;
  wire [6:0]kstar;
  wire \kstar[6]_i_1_n_0 ;
  wire [2:0]\l_bot[3]_i_10 ;
  wire \l_bot[3]_i_16_n_0 ;
  wire \l_bot[3]_i_17_n_0 ;
  wire \l_bot[3]_i_18_n_0 ;
  wire \l_bot[3]_i_19_n_0 ;
  wire \l_bot[3]_i_3_n_0 ;
  wire \l_bot[3]_i_4_n_0 ;
  wire \l_bot[3]_i_5_n_0 ;
  wire \l_bot[3]_i_6_n_0 ;
  wire \l_bot[3]_i_7_n_0 ;
  wire \l_bot[3]_i_8_n_0 ;
  wire \l_bot[3]_i_9_n_0 ;
  wire \l_bot[6]_i_10_n_0 ;
  wire \l_bot[6]_i_11_n_0 ;
  wire \l_bot[6]_i_12_n_0 ;
  wire [0:0]\l_bot[6]_i_14_0 ;
  wire [0:0]\l_bot[6]_i_14_1 ;
  wire \l_bot[6]_i_14_n_0 ;
  wire \l_bot[6]_i_25_n_0 ;
  wire \l_bot[6]_i_28_n_0 ;
  wire \l_bot[6]_i_29_n_0 ;
  wire \l_bot[6]_i_30_n_0 ;
  wire \l_bot[6]_i_31_n_0 ;
  wire \l_bot[6]_i_32_n_0 ;
  wire [0:0]\l_bot[6]_i_35 ;
  wire \l_bot[6]_i_36_n_0 ;
  wire \l_bot[6]_i_37_n_0 ;
  wire \l_bot[6]_i_38_n_0 ;
  wire \l_bot[6]_i_39_n_0 ;
  wire \l_bot[6]_i_40_n_0 ;
  wire \l_bot[6]_i_41_n_0 ;
  wire \l_bot[6]_i_42_n_0 ;
  wire \l_bot[6]_i_43_n_0 ;
  wire \l_bot[6]_i_44_n_0 ;
  wire \l_bot[6]_i_45_n_0 ;
  wire \l_bot[6]_i_46_n_0 ;
  wire \l_bot[6]_i_47_n_0 ;
  wire \l_bot[6]_i_48_n_0 ;
  wire \l_bot[6]_i_49_n_0 ;
  wire \l_bot[6]_i_50_n_0 ;
  wire \l_bot[6]_i_51_n_0 ;
  wire \l_bot[6]_i_52_n_0 ;
  wire \l_bot[6]_i_53_n_0 ;
  wire \l_bot[6]_i_54_n_0 ;
  wire \l_bot[6]_i_56_n_0 ;
  wire \l_bot[6]_i_57_n_0 ;
  wire \l_bot[6]_i_58_n_0 ;
  wire \l_bot[6]_i_59_n_0 ;
  wire \l_bot[6]_i_5_n_0 ;
  wire \l_bot[6]_i_60_n_0 ;
  wire \l_bot[6]_i_61_n_0 ;
  wire \l_bot[6]_i_62_n_0 ;
  wire \l_bot[6]_i_63_n_0 ;
  wire \l_bot[6]_i_64_n_0 ;
  wire \l_bot[6]_i_65_n_0 ;
  wire \l_bot[6]_i_66_n_0 ;
  wire \l_bot[6]_i_67_n_0 ;
  wire \l_bot[6]_i_68_n_0 ;
  wire \l_bot[6]_i_69_n_0 ;
  wire \l_bot[6]_i_6_n_0 ;
  wire \l_bot[6]_i_70_n_0 ;
  wire \l_bot[6]_i_72_n_0 ;
  wire \l_bot[6]_i_73_n_0 ;
  wire \l_bot[6]_i_74_n_0 ;
  wire \l_bot[6]_i_7_n_0 ;
  wire \l_bot[6]_i_8_n_0 ;
  wire \l_bot[6]_i_9_n_0 ;
  wire \l_bot_reg[3]_i_12_n_0 ;
  wire \l_bot_reg[3]_i_12_n_1 ;
  wire \l_bot_reg[3]_i_12_n_2 ;
  wire \l_bot_reg[3]_i_12_n_3 ;
  wire [0:0]\l_bot_reg[3]_i_2_0 ;
  wire \l_bot_reg[3]_i_2_n_0 ;
  wire \l_bot_reg[3]_i_2_n_1 ;
  wire \l_bot_reg[3]_i_2_n_2 ;
  wire \l_bot_reg[3]_i_2_n_3 ;
  wire \l_bot_reg[3]_i_2_n_4 ;
  wire \l_bot_reg[3]_i_2_n_5 ;
  wire \l_bot_reg[3]_i_2_n_6 ;
  wire \l_bot_reg[3]_i_2_n_7 ;
  wire \l_bot_reg[6]_i_15_n_1 ;
  wire \l_bot_reg[6]_i_15_n_2 ;
  wire \l_bot_reg[6]_i_15_n_3 ;
  wire \l_bot_reg[6]_i_16_n_2 ;
  wire \l_bot_reg[6]_i_16_n_3 ;
  wire \l_bot_reg[6]_i_17_n_1 ;
  wire \l_bot_reg[6]_i_17_n_2 ;
  wire \l_bot_reg[6]_i_17_n_3 ;
  wire [6:0]\l_bot_reg[6]_i_18_0 ;
  wire \l_bot_reg[6]_i_18_n_2 ;
  wire \l_bot_reg[6]_i_18_n_3 ;
  wire \l_bot_reg[6]_i_22_n_0 ;
  wire \l_bot_reg[6]_i_22_n_1 ;
  wire \l_bot_reg[6]_i_22_n_2 ;
  wire \l_bot_reg[6]_i_22_n_3 ;
  wire \l_bot_reg[6]_i_3_n_0 ;
  wire \l_bot_reg[6]_i_3_n_1 ;
  wire \l_bot_reg[6]_i_3_n_2 ;
  wire \l_bot_reg[6]_i_3_n_3 ;
  wire \l_bot_reg[6]_i_3_n_5 ;
  wire \l_bot_reg[6]_i_3_n_7 ;
  wire \l_bot_reg[6]_i_55_0 ;
  wire \l_bot_reg[6]_i_55_n_0 ;
  wire \l_bot_reg[6]_i_55_n_1 ;
  wire \l_bot_reg[6]_i_55_n_2 ;
  wire \l_bot_reg[6]_i_55_n_3 ;
  wire [5:0]l_new;
  wire [6:0]l_up0;
  wire [43:8]left_sr0;
  wire [9:0]left_sr1;
  wire \left_sr[0]_i_1_n_0 ;
  wire \left_sr[0]_i_2_n_0 ;
  wire \left_sr[10]_i_1_n_0 ;
  wire \left_sr[10]_i_2_n_0 ;
  wire \left_sr[11]_i_1_n_0 ;
  wire \left_sr[12]_i_1_n_0 ;
  wire \left_sr[12]_i_2_n_0 ;
  wire \left_sr[13]_i_1_n_0 ;
  wire \left_sr[13]_i_2_n_0 ;
  wire \left_sr[13]_i_3_n_0 ;
  wire \left_sr[14]_i_1_n_0 ;
  wire \left_sr[15]_i_1_n_0 ;
  wire \left_sr[15]_i_2_n_0 ;
  wire \left_sr[16]_i_1_n_0 ;
  wire \left_sr[16]_i_2_n_0 ;
  wire \left_sr[17]_i_1_n_0 ;
  wire \left_sr[17]_i_2_n_0 ;
  wire \left_sr[18]_i_1_n_0 ;
  wire \left_sr[18]_i_2_n_0 ;
  wire \left_sr[19]_i_1_n_0 ;
  wire \left_sr[19]_i_2_n_0 ;
  wire \left_sr[1]_i_1_n_0 ;
  wire \left_sr[20]_i_1_n_0 ;
  wire \left_sr[20]_i_2_n_0 ;
  wire \left_sr[21]_i_1_n_0 ;
  wire \left_sr[21]_i_2_n_0 ;
  wire \left_sr[21]_i_3_n_0 ;
  wire \left_sr[22]_i_1_n_0 ;
  wire \left_sr[23]_i_1_n_0 ;
  wire \left_sr[23]_i_2_n_0 ;
  wire \left_sr[24]_i_1_n_0 ;
  wire \left_sr[25]_i_1_n_0 ;
  wire \left_sr[26]_i_1_n_0 ;
  wire \left_sr[26]_i_2_n_0 ;
  wire \left_sr[27]_i_1_n_0 ;
  wire \left_sr[28]_i_1_n_0 ;
  wire \left_sr[28]_i_2_n_0 ;
  wire \left_sr[29]_i_1_n_0 ;
  wire \left_sr[29]_i_2_n_0 ;
  wire \left_sr[29]_i_3_n_0 ;
  wire \left_sr[2]_i_1_n_0 ;
  wire \left_sr[2]_i_2_n_0 ;
  wire \left_sr[30]_i_1_n_0 ;
  wire \left_sr[31]_i_1_n_0 ;
  wire \left_sr[31]_i_2_n_0 ;
  wire \left_sr[32]_i_1_n_0 ;
  wire \left_sr[32]_i_2_n_0 ;
  wire \left_sr[32]_i_3_n_0 ;
  wire \left_sr[32]_i_4_n_0 ;
  wire \left_sr[32]_i_5_n_0 ;
  wire \left_sr[32]_i_6_n_0 ;
  wire \left_sr[32]_i_7_n_0 ;
  wire \left_sr[33]_i_1_n_0 ;
  wire \left_sr[33]_i_2_n_0 ;
  wire \left_sr[33]_i_3_n_0 ;
  wire \left_sr[33]_i_4_n_0 ;
  wire \left_sr[33]_i_5_n_0 ;
  wire \left_sr[33]_i_6_n_0 ;
  wire \left_sr[34]_i_1_n_0 ;
  wire \left_sr[34]_i_2_n_0 ;
  wire \left_sr[35]_i_1_n_0 ;
  wire \left_sr[35]_i_2_n_0 ;
  wire \left_sr[35]_i_3_n_0 ;
  wire \left_sr[35]_i_4_n_0 ;
  wire \left_sr[36]_i_1_n_0 ;
  wire \left_sr[36]_i_2_n_0 ;
  wire \left_sr[37]_i_1_n_0 ;
  wire \left_sr[37]_i_2_n_0 ;
  wire \left_sr[37]_i_3_n_0 ;
  wire \left_sr[37]_i_4_n_0 ;
  wire \left_sr[37]_i_5_n_0 ;
  wire \left_sr[37]_i_6_n_0 ;
  wire \left_sr[37]_i_7_n_0 ;
  wire \left_sr[37]_i_8_n_0 ;
  wire \left_sr[38]_i_1_n_0 ;
  wire \left_sr[38]_i_2_n_0 ;
  wire \left_sr[38]_i_3_n_0 ;
  wire \left_sr[39]_i_1_n_0 ;
  wire \left_sr[39]_i_2_n_0 ;
  wire \left_sr[39]_i_3_n_0 ;
  wire \left_sr[39]_i_4_n_0 ;
  wire \left_sr[39]_i_5_n_0 ;
  wire \left_sr[39]_i_6_n_0 ;
  wire \left_sr[39]_i_7_n_0 ;
  wire \left_sr[39]_i_8_n_0 ;
  wire \left_sr[3]_i_1_n_0 ;
  wire \left_sr[3]_i_2_n_0 ;
  wire \left_sr[40]_i_1_n_0 ;
  wire \left_sr[40]_i_3_n_0 ;
  wire \left_sr[41]_i_1_n_0 ;
  wire \left_sr[41]_i_3_n_0 ;
  wire \left_sr[42]_i_1_n_0 ;
  wire \left_sr[42]_i_2_n_0 ;
  wire \left_sr[42]_i_3_n_0 ;
  wire \left_sr[42]_i_4_n_0 ;
  wire \left_sr[42]_i_5_n_0 ;
  wire \left_sr[42]_i_6_n_0 ;
  wire \left_sr[42]_i_7_n_0 ;
  wire \left_sr[42]_i_8_n_0 ;
  wire \left_sr[43]_i_10_n_0 ;
  wire \left_sr[43]_i_11_n_0 ;
  wire \left_sr[43]_i_12_n_0 ;
  wire \left_sr[43]_i_13_n_0 ;
  wire \left_sr[43]_i_14_n_0 ;
  wire \left_sr[43]_i_15_n_0 ;
  wire \left_sr[43]_i_17_n_0 ;
  wire \left_sr[43]_i_18_n_0 ;
  wire \left_sr[43]_i_19_n_0 ;
  wire \left_sr[43]_i_1_n_0 ;
  wire \left_sr[43]_i_4_n_0 ;
  wire \left_sr[43]_i_5_n_0 ;
  wire \left_sr[43]_i_7_n_0 ;
  wire \left_sr[43]_i_9_n_0 ;
  wire \left_sr[44]_i_11_n_0 ;
  wire \left_sr[44]_i_12_n_0 ;
  wire \left_sr[44]_i_13_n_0 ;
  wire \left_sr[44]_i_14_n_0 ;
  wire \left_sr[44]_i_15_n_0 ;
  wire \left_sr[44]_i_16_n_0 ;
  wire \left_sr[44]_i_1_n_0 ;
  wire \left_sr[44]_i_2_n_0 ;
  wire \left_sr[44]_i_3_n_0 ;
  wire \left_sr[44]_i_5_n_0 ;
  wire \left_sr[44]_i_6_n_0 ;
  wire \left_sr[44]_i_7_n_0 ;
  wire \left_sr[44]_i_8_n_0 ;
  wire \left_sr[44]_i_9_n_0 ;
  wire \left_sr[4]_i_1_n_0 ;
  wire \left_sr[4]_i_2_n_0 ;
  wire \left_sr[5]_i_1_n_0 ;
  wire \left_sr[5]_i_2_n_0 ;
  wire \left_sr[5]_i_5_n_0 ;
  wire \left_sr[6]_i_1_n_0 ;
  wire \left_sr[7]_i_1_n_0 ;
  wire \left_sr[7]_i_2_n_0 ;
  wire \left_sr[8]_i_1_n_0 ;
  wire \left_sr[9]_i_1_n_0 ;
  wire \left_sr_reg[43]_i_3_n_0 ;
  wire \left_sr_reg[43]_i_3_n_1 ;
  wire \left_sr_reg[43]_i_3_n_2 ;
  wire \left_sr_reg[43]_i_3_n_3 ;
  wire \left_sr_reg[44]_i_4_n_0 ;
  wire \left_sr_reg[44]_i_4_n_1 ;
  wire \left_sr_reg[44]_i_4_n_2 ;
  wire \left_sr_reg[44]_i_4_n_3 ;
  wire \left_sr_reg[5]_i_3_n_3 ;
  wire [3:0]lmin;
  wire [0:0]\lmin_reg[5] ;
  wire [0:0]\lmin_reg[6] ;
  wire load;
  wire \m_s0[6]_i_2_n_0 ;
  wire \m_s0[6]_i_3_n_0 ;
  wire \m_s0[6]_i_4_n_0 ;
  wire \m_s0[6]_i_5_n_0 ;
  wire \m_s0_reg[0] ;
  wire \m_s0_reg[1] ;
  wire \m_s0_reg[1]_0 ;
  wire \m_s0_reg[1]_1 ;
  wire \m_s0_reg[2] ;
  wire \m_s0_reg[2]_0 ;
  wire \m_s0_reg[2]_1 ;
  wire \m_s0_reg[3] ;
  wire \m_s0_reg[3]_0 ;
  wire \m_s0_reg[3]_1 ;
  wire \m_s0_reg[4] ;
  wire \m_s0_reg[4]_0 ;
  wire \m_s0_reg[5] ;
  wire \m_s0_reg[6] ;
  wire \m_s2[6]_i_2_n_0 ;
  wire \m_s2[6]_i_3_n_0 ;
  wire \m_s2[6]_i_4_n_0 ;
  wire \m_s2[6]_i_5_n_0 ;
  wire \m_s2[6]_i_6_n_0 ;
  wire \m_sec[7]_i_2_n_0 ;
  wire \m_sec[7]_i_3_n_0 ;
  wire \m_sec[7]_i_4_n_0 ;
  wire [7:0]\m_sec_reg[7] ;
  wire [14:0]\m_sec_reg[7]_0 ;
  wire \m_sec_reg[7]_1 ;
  wire \m_sec_reg[7]_2 ;
  wire [2:0]n;
  wire n0;
  wire \n[0]_i_1_n_0 ;
  wire \n[1]_i_1_n_0 ;
  wire \n[2]_i_1_n_0 ;
  wire \n[2]_i_3_n_0 ;
  wire [0:0]own_wins_reg;
  wire [6:0]p1;
  wire \p1[6]_i_1_n_0 ;
  wire [6:0]p2;
  wire \p2[6]_i_1_n_0 ;
  wire [2:0]p_0_in;
  wire [5:0]p_1_in;
  wire p_4_in;
  wire [6:0]ph;
  wire \ph[0]_i_1_n_0 ;
  wire \ph[1]_i_1_n_0 ;
  wire \ph[2]_i_1_n_0 ;
  wire \ph[3]_i_1_n_0 ;
  wire \ph[4]_i_1_n_0 ;
  wire \ph[5]_i_1_n_0 ;
  wire \ph[5]_i_2_n_0 ;
  wire \ph[5]_i_3_n_0 ;
  wire \ph[5]_i_4_n_0 ;
  wire \ph[6]_i_1_n_0 ;
  wire [2:0]pos;
  wire \pos[0]_i_1_n_0 ;
  wire \pos[1]_i_1_n_0 ;
  wire \pos[2]_i_1_n_0 ;
  wire \pos_reg[0]_0 ;
  wire \pos_reg[0]_1 ;
  wire [0:0]\pos_reg[0]_2 ;
  wire [0:0]\pos_reg[2]_0 ;
  wire \pos_reg[2]_1 ;
  wire \rec[0][14]_i_3_n_0 ;
  wire \rec_in[14]_i_2_n_0 ;
  wire \rec_in[14]_i_3_n_0 ;
  wire \rec_in[14]_i_4_n_0 ;
  wire [0:0]\rec_in_reg[6] ;
  wire [13:0]\rec_reg[0][13] ;
  wire [0:0]\rec_reg[0][7] ;
  wire [43:8]right_sr0;
  wire [9:0]right_sr1;
  wire \right_sr[0]_i_1_n_0 ;
  wire \right_sr[0]_i_2_n_0 ;
  wire \right_sr[10]_i_1_n_0 ;
  wire \right_sr[10]_i_2_n_0 ;
  wire \right_sr[11]_i_1_n_0 ;
  wire \right_sr[12]_i_1_n_0 ;
  wire \right_sr[12]_i_2_n_0 ;
  wire \right_sr[13]_i_1_n_0 ;
  wire \right_sr[13]_i_2_n_0 ;
  wire \right_sr[13]_i_3_n_0 ;
  wire \right_sr[14]_i_1_n_0 ;
  wire \right_sr[15]_i_1_n_0 ;
  wire \right_sr[15]_i_2_n_0 ;
  wire \right_sr[16]_i_1_n_0 ;
  wire \right_sr[16]_i_2_n_0 ;
  wire \right_sr[17]_i_1_n_0 ;
  wire \right_sr[17]_i_2_n_0 ;
  wire \right_sr[18]_i_1_n_0 ;
  wire \right_sr[18]_i_2_n_0 ;
  wire \right_sr[19]_i_1_n_0 ;
  wire \right_sr[19]_i_2_n_0 ;
  wire \right_sr[1]_i_1_n_0 ;
  wire \right_sr[20]_i_1_n_0 ;
  wire \right_sr[20]_i_2_n_0 ;
  wire \right_sr[21]_i_1_n_0 ;
  wire \right_sr[21]_i_2_n_0 ;
  wire \right_sr[21]_i_3_n_0 ;
  wire \right_sr[22]_i_1_n_0 ;
  wire \right_sr[23]_i_1_n_0 ;
  wire \right_sr[23]_i_2_n_0 ;
  wire \right_sr[24]_i_1_n_0 ;
  wire \right_sr[25]_i_1_n_0 ;
  wire \right_sr[26]_i_1_n_0 ;
  wire \right_sr[26]_i_2_n_0 ;
  wire \right_sr[27]_i_1_n_0 ;
  wire \right_sr[28]_i_1_n_0 ;
  wire \right_sr[28]_i_2_n_0 ;
  wire \right_sr[29]_i_1_n_0 ;
  wire \right_sr[29]_i_2_n_0 ;
  wire \right_sr[29]_i_3_n_0 ;
  wire \right_sr[2]_i_1_n_0 ;
  wire \right_sr[2]_i_2_n_0 ;
  wire \right_sr[30]_i_1_n_0 ;
  wire \right_sr[31]_i_1_n_0 ;
  wire \right_sr[31]_i_2_n_0 ;
  wire \right_sr[32]_i_1_n_0 ;
  wire \right_sr[32]_i_2_n_0 ;
  wire \right_sr[32]_i_3_n_0 ;
  wire \right_sr[32]_i_4_n_0 ;
  wire \right_sr[32]_i_5_n_0 ;
  wire \right_sr[32]_i_6_n_0 ;
  wire \right_sr[32]_i_7_n_0 ;
  wire \right_sr[33]_i_1_n_0 ;
  wire \right_sr[33]_i_2_n_0 ;
  wire \right_sr[33]_i_3_n_0 ;
  wire \right_sr[33]_i_4_n_0 ;
  wire \right_sr[33]_i_5_n_0 ;
  wire \right_sr[33]_i_6_n_0 ;
  wire \right_sr[34]_i_1_n_0 ;
  wire \right_sr[34]_i_2_n_0 ;
  wire \right_sr[35]_i_1_n_0 ;
  wire \right_sr[35]_i_2_n_0 ;
  wire \right_sr[35]_i_3_n_0 ;
  wire \right_sr[35]_i_4_n_0 ;
  wire \right_sr[36]_i_1_n_0 ;
  wire \right_sr[36]_i_2_n_0 ;
  wire \right_sr[37]_i_1_n_0 ;
  wire \right_sr[37]_i_2_n_0 ;
  wire \right_sr[37]_i_3_n_0 ;
  wire \right_sr[37]_i_4_n_0 ;
  wire \right_sr[37]_i_5_n_0 ;
  wire \right_sr[37]_i_6_n_0 ;
  wire \right_sr[37]_i_7_n_0 ;
  wire \right_sr[37]_i_8_n_0 ;
  wire \right_sr[38]_i_1_n_0 ;
  wire \right_sr[38]_i_2_n_0 ;
  wire \right_sr[38]_i_3_n_0 ;
  wire \right_sr[39]_i_1_n_0 ;
  wire \right_sr[39]_i_2_n_0 ;
  wire \right_sr[39]_i_3_n_0 ;
  wire \right_sr[39]_i_4_n_0 ;
  wire \right_sr[39]_i_5_n_0 ;
  wire \right_sr[39]_i_6_n_0 ;
  wire \right_sr[39]_i_7_n_0 ;
  wire \right_sr[39]_i_8_n_0 ;
  wire \right_sr[3]_i_1_n_0 ;
  wire \right_sr[3]_i_2_n_0 ;
  wire \right_sr[40]_i_1_n_0 ;
  wire \right_sr[40]_i_3_n_0 ;
  wire \right_sr[41]_i_1_n_0 ;
  wire \right_sr[41]_i_3_n_0 ;
  wire \right_sr[42]_i_1_n_0 ;
  wire \right_sr[42]_i_2_n_0 ;
  wire \right_sr[42]_i_3_n_0 ;
  wire \right_sr[42]_i_4_n_0 ;
  wire \right_sr[42]_i_5_n_0 ;
  wire \right_sr[42]_i_6_n_0 ;
  wire \right_sr[42]_i_7_n_0 ;
  wire \right_sr[42]_i_8_n_0 ;
  wire \right_sr[43]_i_10_n_0 ;
  wire \right_sr[43]_i_11_n_0 ;
  wire \right_sr[43]_i_12_n_0 ;
  wire \right_sr[43]_i_13_n_0 ;
  wire \right_sr[43]_i_14_n_0 ;
  wire \right_sr[43]_i_15_n_0 ;
  wire \right_sr[43]_i_16_n_0 ;
  wire \right_sr[43]_i_1_n_0 ;
  wire \right_sr[43]_i_4_n_0 ;
  wire \right_sr[43]_i_5_n_0 ;
  wire \right_sr[43]_i_7_n_0 ;
  wire \right_sr[43]_i_8_n_0 ;
  wire \right_sr[43]_i_9_n_0 ;
  wire \right_sr[44]_i_11_n_0 ;
  wire \right_sr[44]_i_12_n_0 ;
  wire \right_sr[44]_i_13_n_0 ;
  wire \right_sr[44]_i_14_n_0 ;
  wire \right_sr[44]_i_15_n_0 ;
  wire \right_sr[44]_i_16_n_0 ;
  wire \right_sr[44]_i_17_n_0 ;
  wire \right_sr[44]_i_18_n_0 ;
  wire \right_sr[44]_i_19_n_0 ;
  wire \right_sr[44]_i_1_n_0 ;
  wire \right_sr[44]_i_20_n_0 ;
  wire \right_sr[44]_i_21_n_0 ;
  wire \right_sr[44]_i_22_n_0 ;
  wire \right_sr[44]_i_2_n_0 ;
  wire \right_sr[44]_i_3_n_0 ;
  wire \right_sr[44]_i_5_n_0 ;
  wire \right_sr[44]_i_6_n_0 ;
  wire \right_sr[44]_i_7_n_0 ;
  wire \right_sr[44]_i_8_n_0 ;
  wire \right_sr[44]_i_9_n_0 ;
  wire \right_sr[4]_i_1_n_0 ;
  wire \right_sr[4]_i_2_n_0 ;
  wire \right_sr[5]_i_1_n_0 ;
  wire \right_sr[5]_i_2_n_0 ;
  wire \right_sr[5]_i_4_n_0 ;
  wire \right_sr[5]_i_5_n_0 ;
  wire \right_sr[6]_i_1_n_0 ;
  wire \right_sr[7]_i_1_n_0 ;
  wire \right_sr[7]_i_2_n_0 ;
  wire \right_sr[8]_i_1_n_0 ;
  wire \right_sr[9]_i_1_n_0 ;
  wire \right_sr_reg[43]_i_3_n_0 ;
  wire \right_sr_reg[43]_i_3_n_1 ;
  wire \right_sr_reg[43]_i_3_n_2 ;
  wire \right_sr_reg[43]_i_3_n_3 ;
  wire \right_sr_reg[43]_i_6_n_2 ;
  wire \right_sr_reg[43]_i_6_n_3 ;
  wire \right_sr_reg[43]_i_6_n_5 ;
  wire \right_sr_reg[43]_i_6_n_6 ;
  wire \right_sr_reg[43]_i_6_n_7 ;
  wire \right_sr_reg[44]_i_10_n_0 ;
  wire \right_sr_reg[44]_i_10_n_1 ;
  wire \right_sr_reg[44]_i_10_n_2 ;
  wire \right_sr_reg[44]_i_10_n_3 ;
  wire \right_sr_reg[44]_i_10_n_4 ;
  wire \right_sr_reg[44]_i_10_n_5 ;
  wire \right_sr_reg[44]_i_10_n_6 ;
  wire \right_sr_reg[44]_i_10_n_7 ;
  wire \right_sr_reg[44]_i_4_n_0 ;
  wire \right_sr_reg[44]_i_4_n_1 ;
  wire \right_sr_reg[44]_i_4_n_2 ;
  wire \right_sr_reg[44]_i_4_n_3 ;
  wire \right_sr_reg[5]_i_3_n_3 ;
  wire \rin_s[7]_i_3_n_0 ;
  wire \rin_s[7]_i_4_n_0 ;
  wire run;
  wire run_i_1_n_0;
  wire run_i_2_n_0;
  wire [0:0]run_reg_0;
  wire [0:0]run_reg_1;
  wire [0:0]run_reg_2;
  wire [0:0]run_reg_3;
  wire [0:0]run_reg_4;
  wire [0:0]run_reg_5;
  wire [7:0]s0;
  wire \s0[6]_i_3_n_0 ;
  wire \s0[6]_i_4_n_0 ;
  wire \s0[6]_i_5_n_0 ;
  wire \s0[6]_i_6_n_0 ;
  wire \s0[6]_i_7_n_0 ;
  wire \s0_reg[7] ;
  wire [7:0]s2;
  wire \s2[6]_i_3_n_0 ;
  wire \s2[6]_i_4_n_0 ;
  wire \s2[6]_i_5_n_0 ;
  wire \s2[6]_i_6_n_0 ;
  wire \s2[6]_i_7_n_0 ;
  wire \s2_reg[7] ;
  wire scan;
  wire \sec[7]_i_14_n_0 ;
  wire \sec[7]_i_15_n_0 ;
  wire \sec[7]_i_16_n_0 ;
  wire \sec[7]_i_17_n_0 ;
  wire \sec[7]_i_18_n_0 ;
  wire \sec[7]_i_19_n_0 ;
  wire \sec[7]_i_20_n_0 ;
  wire \sec[7]_i_21_n_0 ;
  wire \sec[7]_i_22_n_0 ;
  wire \sec[7]_i_23_n_0 ;
  wire \sec[7]_i_24_n_0 ;
  wire \sec[7]_i_25_n_0 ;
  wire \sec[7]_i_26_n_0 ;
  wire \sec[7]_i_27_n_0 ;
  wire \sec[7]_i_28_n_0 ;
  wire \sec[7]_i_29_n_0 ;
  wire \sec[7]_i_30_n_0 ;
  wire \sec[7]_i_31_n_0 ;
  wire \sec[7]_i_32_n_0 ;
  wire \sec[7]_i_33_n_0 ;
  wire \sec[7]_i_34_n_0 ;
  wire \sec[7]_i_35_n_0 ;
  wire \sec[7]_i_36_n_0 ;
  wire \sec[7]_i_37_n_0 ;
  wire \sec[7]_i_38_n_0 ;
  wire \sec[7]_i_39_n_0 ;
  wire \sec[7]_i_40_n_0 ;
  wire \sec_reg[7]_i_4_n_0 ;
  wire \sec_reg[7]_i_4_n_1 ;
  wire \sec_reg[7]_i_4_n_2 ;
  wire \sec_reg[7]_i_4_n_3 ;
  wire \sec_reg[7]_i_5_n_0 ;
  wire \sec_reg[7]_i_5_n_1 ;
  wire \sec_reg[7]_i_5_n_2 ;
  wire \sec_reg[7]_i_5_n_3 ;
  wire sg_first;
  wire sg_first_i_1_n_0;
  wire sg_first_reg_0;
  wire sg_real;
  wire sg_real_i_1_n_0;
  wire sg_use;
  wire sg_use_i_1_n_0;
  wire sg_valid_i_1_n_0;
  wire sg_valid_reg_0;
  wire sg_valid_reg_1;
  wire sg_valid_reg_2;
  wire sg_valid_reg_3;
  wire [0:0]sg_valid_reg_4;
  wire sg_valid_reg_n_0;
  wire [6:0]\u_path/a ;
  wire [7:0]\u_path/b ;
  wire [7:6]\u_path/b2_out ;
  wire \u_path/min9_return1 ;
  wire [5:1]\u_path/p_0_in ;
  wire [7:7]\u_path/p_0_in__0 ;
  wire \u_up/up_on0 ;
  wire [6:4]uc;
  wire \uc[0]_i_1_n_0 ;
  wire \uc[1]_i_1_n_0 ;
  wire \uc[2]_i_1_n_0 ;
  wire \uc[3]_i_1_n_0 ;
  wire \uc[4]_i_1_n_0 ;
  wire \uc[5]_i_1_n_0 ;
  wire \uc[5]_i_2_n_0 ;
  wire \uc[5]_i_3_n_0 ;
  wire \uc[6]_i_1_n_0 ;
  wire [0:0]\uc_reg[0]_0 ;
  wire [0:0]\uc_reg[0]_1 ;
  wire [0:0]\uc_reg[0]_2 ;
  wire [0:0]\uc_reg[0]_3 ;
  wire [0:0]\uc_reg[0]_4 ;
  wire [0:0]\uc_reg[0]_5 ;
  wire \uc_reg[0]_6 ;
  wire [0:0]\uc_reg[0]_7 ;
  wire [0:0]\uc_reg[1]_0 ;
  wire [0:0]\uc_reg[1]_1 ;
  wire [0:0]\uc_reg[1]_2 ;
  wire [0:0]\uc_reg[1]_3 ;
  wire [0:0]\uc_reg[2]_0 ;
  wire [0:0]\uc_reg[2]_1 ;
  wire [0:0]\uc_reg[2]_2 ;
  wire [0:0]\uc_reg[2]_3 ;
  wire [3:0]\uc_reg[3]_0 ;
  wire [0:0]\uc_reg[3]_1 ;
  wire [0:0]\uc_reg[3]_2 ;
  wire [14:0]\uc_reg[3]_3 ;
  wire \uc_reg[4]_0 ;
  wire [7:0]ui_in;
  wire \ui_r_reg_n_0_[0] ;
  wire \ui_r_reg_n_0_[1] ;
  wire \ui_r_reg_n_0_[2] ;
  wire \ui_r_reg_n_0_[3] ;
  wire \uio_r_reg[3] ;
  wire \uio_r_reg[4] ;
  wire [7:0]\uio_r_reg[6] ;
  wire \uo[0]_i_10_n_0 ;
  wire \uo[0]_i_11_n_0 ;
  wire \uo[0]_i_13_n_0 ;
  wire \uo[0]_i_14_n_0 ;
  wire \uo[0]_i_15_n_0 ;
  wire \uo[0]_i_2_n_0 ;
  wire \uo[0]_i_3_n_0 ;
  wire \uo[0]_i_4_n_0 ;
  wire \uo[0]_i_5_n_0 ;
  wire \uo[0]_i_6_n_0 ;
  wire [0:0]\uo[0]_i_7_0 ;
  wire \uo[0]_i_7_n_0 ;
  wire \uo[0]_i_8_n_0 ;
  wire \uo[0]_i_9_n_0 ;
  wire \uo[1]_i_10_n_0 ;
  wire \uo[1]_i_11_n_0 ;
  wire \uo[1]_i_13_n_0 ;
  wire \uo[1]_i_14_n_0 ;
  wire \uo[1]_i_15_n_0 ;
  wire \uo[1]_i_2_n_0 ;
  wire \uo[1]_i_3_n_0 ;
  wire \uo[1]_i_4_n_0 ;
  wire \uo[1]_i_5_n_0 ;
  wire \uo[1]_i_6_n_0 ;
  wire [0:0]\uo[1]_i_8 ;
  wire \uo[1]_i_9_n_0 ;
  wire \uo[2]_i_10_n_0 ;
  wire \uo[2]_i_11_n_0 ;
  wire \uo[2]_i_13_n_0 ;
  wire \uo[2]_i_14_n_0 ;
  wire \uo[2]_i_15_n_0 ;
  wire \uo[2]_i_16_n_0 ;
  wire \uo[2]_i_17_n_0 ;
  wire \uo[2]_i_3_n_0 ;
  wire \uo[2]_i_4_n_0 ;
  wire \uo[2]_i_5_n_0 ;
  wire \uo[2]_i_6_n_0 ;
  wire \uo[2]_i_7_n_0 ;
  wire \uo[2]_i_9_n_0 ;
  wire \uo[3]_i_10_n_0 ;
  wire \uo[3]_i_12_n_0 ;
  wire \uo[3]_i_13_n_0 ;
  wire \uo[3]_i_14_n_0 ;
  wire \uo[3]_i_17_n_0 ;
  wire \uo[3]_i_18_n_0 ;
  wire \uo[3]_i_3_n_0 ;
  wire \uo[3]_i_4_n_0 ;
  wire \uo[3]_i_5_n_0 ;
  wire \uo[3]_i_6_n_0 ;
  wire \uo[3]_i_7_n_0 ;
  wire \uo[3]_i_9_n_0 ;
  wire \uo[4]_i_10_n_0 ;
  wire \uo[4]_i_11_n_0 ;
  wire \uo[4]_i_12_n_0 ;
  wire \uo[4]_i_14_n_0 ;
  wire \uo[4]_i_3_n_0 ;
  wire \uo[4]_i_4_n_0 ;
  wire \uo[4]_i_5_n_0 ;
  wire \uo[4]_i_6_n_0 ;
  wire \uo[4]_i_7_n_0 ;
  wire \uo[4]_i_8_n_0 ;
  wire \uo[4]_i_9_n_0 ;
  wire \uo[5]_i_10_n_0 ;
  wire [0:0]\uo[5]_i_11_0 ;
  wire \uo[5]_i_11_n_0 ;
  wire \uo[5]_i_14_n_0 ;
  wire \uo[5]_i_15_n_0 ;
  wire \uo[5]_i_16_n_0 ;
  wire \uo[5]_i_17_n_0 ;
  wire \uo[5]_i_18_n_0 ;
  wire \uo[5]_i_3_n_0 ;
  wire \uo[5]_i_4_n_0 ;
  wire \uo[5]_i_5_n_0 ;
  wire \uo[5]_i_6_n_0 ;
  wire \uo[5]_i_8_n_0 ;
  wire \uo[5]_i_9_n_0 ;
  wire \uo[6]_i_11_n_0 ;
  wire \uo[6]_i_12_n_0 ;
  wire \uo[6]_i_13_n_0 ;
  wire \uo[6]_i_14_n_0 ;
  wire \uo[6]_i_3_n_0 ;
  wire \uo[6]_i_4_n_0 ;
  wire [6:0]\uo[6]_i_5_0 ;
  wire [6:0]\uo[6]_i_5_1 ;
  wire \uo[6]_i_5_n_0 ;
  wire \uo[6]_i_6_n_0 ;
  wire \uo[6]_i_7_n_0 ;
  wire [3:0]\uo[6]_i_8_0 ;
  wire \uo[6]_i_8_n_0 ;
  wire \uo[6]_i_9_n_0 ;
  wire [2:0]\uo[7]_i_100 ;
  wire \uo[7]_i_109_n_0 ;
  wire [0:0]\uo[7]_i_10_0 ;
  wire [7:0]\uo[7]_i_10_1 ;
  wire \uo[7]_i_10_n_0 ;
  wire \uo[7]_i_11_n_0 ;
  wire \uo[7]_i_12_n_0 ;
  wire \uo[7]_i_13_n_0 ;
  wire \uo[7]_i_15_n_0 ;
  wire \uo[7]_i_16_n_0 ;
  wire \uo[7]_i_17_n_0 ;
  wire \uo[7]_i_18_n_0 ;
  wire \uo[7]_i_20_n_0 ;
  wire \uo[7]_i_21_n_0 ;
  wire \uo[7]_i_22_n_0 ;
  wire \uo[7]_i_23_n_0 ;
  wire \uo[7]_i_24_n_0 ;
  wire \uo[7]_i_25_n_0 ;
  wire \uo[7]_i_26_n_0 ;
  wire \uo[7]_i_27_n_0 ;
  wire \uo[7]_i_28_n_0 ;
  wire \uo[7]_i_29_n_0 ;
  wire \uo[7]_i_30_n_0 ;
  wire \uo[7]_i_31_n_0 ;
  wire \uo[7]_i_32_n_0 ;
  wire \uo[7]_i_33_n_0 ;
  wire \uo[7]_i_34_n_0 ;
  wire \uo[7]_i_35_n_0 ;
  wire \uo[7]_i_36_n_0 ;
  wire \uo[7]_i_37_n_0 ;
  wire \uo[7]_i_38_n_0 ;
  wire \uo[7]_i_39_n_0 ;
  wire \uo[7]_i_40_n_0 ;
  wire \uo[7]_i_41_n_0 ;
  wire \uo[7]_i_4_n_0 ;
  wire \uo[7]_i_5_n_0 ;
  wire \uo[7]_i_6_n_0 ;
  wire \uo[7]_i_7_n_0 ;
  wire \uo[7]_i_8_n_0 ;
  wire \uo_reg[7]_i_19_n_1 ;
  wire \uo_reg[7]_i_19_n_2 ;
  wire \uo_reg[7]_i_19_n_3 ;
  wire [0:0]\uo_reg[7]_i_60 ;
  wire [6:0]up_edge;
  wire \up_edge[6]_i_1_n_0 ;
  wire \up_edge[6]_i_2_n_0 ;
  wire \up_edge[6]_i_3_n_0 ;
  wire \up_edge[6]_i_4_n_0 ;
  wire \up_edge[6]_i_5_n_0 ;
  wire [3:0]uq;
  wire \uq[3]_i_1_n_0 ;
  wire \uq_reg[0]_0 ;
  wire \uq_reg[1]_0 ;
  wire [0:0]\uq_reg[2]_0 ;
  wire [0:0]\uq_reg[2]_1 ;
  wire w_first;
  wire w_real;
  wire w_real_i_3_n_0;
  wire w_real_i_4_n_0;
  wire [3:0]\NLW_l_bot_reg[6]_i_15_O_UNCONNECTED ;
  wire [2:2]\NLW_l_bot_reg[6]_i_16_CO_UNCONNECTED ;
  wire [3:3]\NLW_l_bot_reg[6]_i_16_O_UNCONNECTED ;
  wire [3:0]\NLW_l_bot_reg[6]_i_17_O_UNCONNECTED ;
  wire [2:2]\NLW_l_bot_reg[6]_i_18_CO_UNCONNECTED ;
  wire [3:3]\NLW_l_bot_reg[6]_i_18_O_UNCONNECTED ;
  wire [3:0]\NLW_l_bot_reg[6]_i_4_CO_UNCONNECTED ;
  wire [3:1]\NLW_l_bot_reg[6]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_l_bot_reg[6]_i_55_O_UNCONNECTED ;
  wire [3:1]\NLW_left_sr_reg[5]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_left_sr_reg[5]_i_3_O_UNCONNECTED ;
  wire [3:2]\NLW_right_sr_reg[43]_i_6_CO_UNCONNECTED ;
  wire [3:3]\NLW_right_sr_reg[43]_i_6_O_UNCONNECTED ;
  wire [3:1]\NLW_right_sr_reg[5]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_right_sr_reg[5]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_sec_reg[7]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_sec_reg[7]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[7]_i_19_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'hF800)) 
    act_i_1
       (.I0(act),
        .I1(act_i_2_n_0),
        .I2(load),
        .I3(\rec_in_reg[6] ),
        .O(act_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFDFFFF)) 
    act_i_2
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(ph[1]),
        .I3(ph[0]),
        .I4(\ftype[2]_i_2_n_0 ),
        .I5(p_0_in[2]),
        .O(act_i_2_n_0));
  FDRE act_reg
       (.C(clk),
        .CE(1'b1),
        .D(act_i_1_n_0),
        .Q(act),
        .R(1'b0));
  FDRE b_first_reg
       (.C(clk),
        .CE(load),
        .D(w_first),
        .Q(b_first),
        .R(1'b0));
  FDRE b_real_reg
       (.C(clk),
        .CE(load),
        .D(w_real),
        .Q(b_real),
        .R(SR[1]));
  FDRE b_use_reg
       (.C(clk),
        .CE(load),
        .D(sg_use),
        .Q(b_use),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    b_v_i_1
       (.I0(sg_first),
        .O(b_v_i_1_n_0));
  FDRE b_v_reg
       (.C(clk),
        .CE(load),
        .D(b_v_i_1_n_0),
        .Q(b_v),
        .R(SR[1]));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \best_j[3]_i_1 
       (.I0(\best_s_reg[6] ),
        .I1(b_real),
        .I2(uc[5]),
        .I3(uc[6]),
        .I4(act),
        .I5(uc[4]),
        .O(b_real_reg_17));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \best_s[0]_i_1 
       (.I0(l_new[0]),
        .I1(\best_s_reg[6] ),
        .I2(b_real),
        .I3(scan),
        .O(b_real_reg_11));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \best_s[1]_i_1 
       (.I0(l_new[1]),
        .I1(\best_s_reg[6] ),
        .I2(b_real),
        .I3(scan),
        .O(b_real_reg_12));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \best_s[2]_i_1 
       (.I0(l_new[2]),
        .I1(\best_s_reg[6] ),
        .I2(b_real),
        .I3(scan),
        .O(b_real_reg_13));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \best_s[3]_i_1 
       (.I0(l_new[3]),
        .I1(\best_s_reg[6] ),
        .I2(b_real),
        .I3(scan),
        .O(b_real_reg_14));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \best_s[4]_i_1 
       (.I0(l_new[4]),
        .I1(\best_s_reg[6] ),
        .I2(b_real),
        .I3(scan),
        .O(b_real_reg_15));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \best_s[5]_i_1 
       (.I0(\lmin_reg[5] ),
        .I1(\best_s_reg[6] ),
        .I2(b_real),
        .I3(scan),
        .O(b_real_reg_16));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h7F00)) 
    \best_s[6]_i_1 
       (.I0(scan),
        .I1(b_real),
        .I2(\best_s_reg[6] ),
        .I3(load),
        .O(b_real_reg_18));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    \best_s[6]_i_2 
       (.I0(load),
        .I1(\best_s_reg[6] ),
        .I2(b_real),
        .I3(scan),
        .O(b_real_reg_2));
  LUT6 #(
    .INIT(64'h0000000000FF00EF)) 
    \best_s[6]_i_3 
       (.I0(O[1]),
        .I1(\l_bot[6]_i_14_0 ),
        .I2(\l_bot[6]_i_14_1 ),
        .I3(b_first),
        .I4(\l_bot_reg[6]_i_3_n_5 ),
        .I5(\best_s[6]_i_4_n_0 ),
        .O(b_first_reg_0));
  LUT6 #(
    .INIT(64'hFFFBFFFFFFFFFFFF)) 
    \best_s[6]_i_4 
       (.I0(uc[4]),
        .I1(act),
        .I2(uc[6]),
        .I3(uc[5]),
        .I4(b_real),
        .I5(\best_s_reg[6] ),
        .O(\best_s[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h3FFF2AAA)) 
    \best_s[7]_i_1 
       (.I0(best_s[7]),
        .I1(scan),
        .I2(b_real),
        .I3(\best_s_reg[6] ),
        .I4(load),
        .O(\best_s_reg[7] ));
  LUT6 #(
    .INIT(64'hBAAAFFFFBAAA0000)) 
    \carry_rec[0]_i_1 
       (.I0(\carry_rec_reg[0] ),
        .I1(\uc_reg[3]_0 [3]),
        .I2(\uc_reg[3]_0 [2]),
        .I3(\carry_rec_reg[0]_0 ),
        .I4(\rec[0][14]_i_3_n_0 ),
        .I5(\carry_rec_reg[14]_1 [0]),
        .O(\uc_reg[3]_3 [0]));
  LUT6 #(
    .INIT(64'hBAAAFFFFBAAA0000)) 
    \carry_rec[10]_i_1 
       (.I0(\carry_rec_reg[10]_0 ),
        .I1(\uc_reg[3]_0 [3]),
        .I2(\uc_reg[3]_0 [2]),
        .I3(\carry_rec_reg[10]_1 ),
        .I4(\rec[0][14]_i_3_n_0 ),
        .I5(\carry_rec_reg[14]_1 [10]),
        .O(\uc_reg[3]_3 [10]));
  LUT6 #(
    .INIT(64'hBAAAFFFFBAAA0000)) 
    \carry_rec[11]_i_1 
       (.I0(\carry_rec_reg[11] ),
        .I1(\uc_reg[3]_0 [3]),
        .I2(\uc_reg[3]_0 [2]),
        .I3(\carry_rec_reg[11]_0 ),
        .I4(\rec[0][14]_i_3_n_0 ),
        .I5(\carry_rec_reg[14]_1 [11]),
        .O(\uc_reg[3]_3 [11]));
  LUT6 #(
    .INIT(64'hBAAAFFFFBAAA0000)) 
    \carry_rec[12]_i_1 
       (.I0(\carry_rec_reg[12] ),
        .I1(\uc_reg[3]_0 [3]),
        .I2(\uc_reg[3]_0 [2]),
        .I3(\carry_rec_reg[12]_0 ),
        .I4(\rec[0][14]_i_3_n_0 ),
        .I5(\carry_rec_reg[14]_1 [12]),
        .O(\uc_reg[3]_3 [12]));
  LUT6 #(
    .INIT(64'hEAAAFFFFEAAA0000)) 
    \carry_rec[13]_i_1 
       (.I0(\carry_rec_reg[13] ),
        .I1(\uc_reg[3]_0 [2]),
        .I2(\uc_reg[3]_0 [3]),
        .I3(\carry_rec_reg[13]_0 ),
        .I4(\rec[0][14]_i_3_n_0 ),
        .I5(\carry_rec_reg[14]_1 [13]),
        .O(\uc_reg[3]_3 [13]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAEAA)) 
    \carry_rec[14]_i_1 
       (.I0(load),
        .I1(b_v),
        .I2(uc[4]),
        .I3(act),
        .I4(uc[6]),
        .I5(uc[5]),
        .O(b_v_reg_0));
  LUT6 #(
    .INIT(64'hBAAAFFFFBAAA0000)) 
    \carry_rec[14]_i_2 
       (.I0(\carry_rec_reg[14] ),
        .I1(\uc_reg[3]_0 [3]),
        .I2(\uc_reg[3]_0 [2]),
        .I3(\carry_rec_reg[14]_0 ),
        .I4(\rec[0][14]_i_3_n_0 ),
        .I5(\carry_rec_reg[14]_1 [14]),
        .O(\uc_reg[3]_3 [14]));
  LUT6 #(
    .INIT(64'hEAAAFFFFEAAA0000)) 
    \carry_rec[1]_i_1 
       (.I0(\carry_rec_reg[1] ),
        .I1(\uc_reg[3]_0 [2]),
        .I2(\uc_reg[3]_0 [3]),
        .I3(\carry_rec_reg[1]_0 ),
        .I4(\rec[0][14]_i_3_n_0 ),
        .I5(\carry_rec_reg[14]_1 [1]),
        .O(\uc_reg[3]_3 [1]));
  LUT6 #(
    .INIT(64'hEAAAFFFFEAAA0000)) 
    \carry_rec[2]_i_1 
       (.I0(\carry_rec_reg[2] ),
        .I1(\uc_reg[3]_0 [2]),
        .I2(\uc_reg[3]_0 [3]),
        .I3(\carry_rec_reg[2]_0 ),
        .I4(\rec[0][14]_i_3_n_0 ),
        .I5(\carry_rec_reg[14]_1 [2]),
        .O(\uc_reg[3]_3 [2]));
  LUT6 #(
    .INIT(64'hBAAAFFFFBAAA0000)) 
    \carry_rec[3]_i_1 
       (.I0(\carry_rec_reg[3] ),
        .I1(\uc_reg[3]_0 [3]),
        .I2(\uc_reg[3]_0 [2]),
        .I3(\carry_rec_reg[3]_0 ),
        .I4(\rec[0][14]_i_3_n_0 ),
        .I5(\carry_rec_reg[14]_1 [3]),
        .O(\uc_reg[3]_3 [3]));
  LUT6 #(
    .INIT(64'hBAAAFFFFBAAA0000)) 
    \carry_rec[4]_i_1 
       (.I0(\carry_rec_reg[4] ),
        .I1(\uc_reg[3]_0 [3]),
        .I2(\uc_reg[3]_0 [2]),
        .I3(\carry_rec_reg[4]_0 ),
        .I4(\rec[0][14]_i_3_n_0 ),
        .I5(\carry_rec_reg[14]_1 [4]),
        .O(\uc_reg[3]_3 [4]));
  LUT6 #(
    .INIT(64'hBAAAFFFFBAAA0000)) 
    \carry_rec[5]_i_1 
       (.I0(\carry_rec_reg[5] ),
        .I1(\uc_reg[3]_0 [3]),
        .I2(\uc_reg[3]_0 [2]),
        .I3(\carry_rec_reg[5]_0 ),
        .I4(\rec[0][14]_i_3_n_0 ),
        .I5(\carry_rec_reg[14]_1 [5]),
        .O(\uc_reg[3]_3 [5]));
  LUT6 #(
    .INIT(64'hBAAAFFFFBAAA0000)) 
    \carry_rec[6]_i_1 
       (.I0(\carry_rec_reg[6] ),
        .I1(\uc_reg[3]_0 [3]),
        .I2(\uc_reg[3]_0 [2]),
        .I3(\carry_rec_reg[6]_0 ),
        .I4(\rec[0][14]_i_3_n_0 ),
        .I5(\carry_rec_reg[14]_1 [6]),
        .O(\uc_reg[3]_3 [6]));
  LUT6 #(
    .INIT(64'hBAAAFFFFBAAA0000)) 
    \carry_rec[7]_i_1 
       (.I0(\carry_rec_reg[7] ),
        .I1(\uc_reg[3]_0 [3]),
        .I2(\uc_reg[3]_0 [2]),
        .I3(\carry_rec_reg[7]_0 ),
        .I4(\rec[0][14]_i_3_n_0 ),
        .I5(\carry_rec_reg[14]_1 [7]),
        .O(\uc_reg[3]_3 [7]));
  LUT6 #(
    .INIT(64'hBAAAFFFFBAAA0000)) 
    \carry_rec[8]_i_1 
       (.I0(\carry_rec_reg[8] ),
        .I1(\uc_reg[3]_0 [3]),
        .I2(\uc_reg[3]_0 [2]),
        .I3(\carry_rec_reg[8]_0 ),
        .I4(\rec[0][14]_i_3_n_0 ),
        .I5(\carry_rec_reg[14]_1 [8]),
        .O(\uc_reg[3]_3 [8]));
  LUT6 #(
    .INIT(64'hBAAAFFFFBAAA0000)) 
    \carry_rec[9]_i_1 
       (.I0(\carry_rec_reg[9] ),
        .I1(\uc_reg[3]_0 [3]),
        .I2(\uc_reg[3]_0 [2]),
        .I3(\carry_rec_reg[9]_0 ),
        .I4(\rec[0][14]_i_3_n_0 ),
        .I5(\carry_rec_reg[14]_1 [9]),
        .O(\uc_reg[3]_3 [9]));
  LUT6 #(
    .INIT(64'h00000008FFFFFFFF)) 
    \dn_edge[6]_i_1 
       (.I0(\uo[7]_i_8_n_0 ),
        .I1(\dn_edge[6]_i_3_n_0 ),
        .I2(pos[0]),
        .I3(pos[1]),
        .I4(pos[2]),
        .I5(\rec_in_reg[6] ),
        .O(SS));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dn_edge[6]_i_2 
       (.I0(\uo[7]_i_8_n_0 ),
        .I1(\dn_edge[6]_i_3_n_0 ),
        .O(run_reg_2));
  LUT6 #(
    .INIT(64'h0000000004804004)) 
    \dn_edge[6]_i_3 
       (.I0(\uo[7]_i_17_n_0 ),
        .I1(\dn_edge[6]_i_4_n_0 ),
        .I2(\uo[7]_i_18_n_0 ),
        .I3(\dn_edge[6]_i_5_n_0 ),
        .I4(n[2]),
        .I5(\m_sec[7]_i_4_n_0 ),
        .O(\dn_edge[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0060900090000060)) 
    \dn_edge[6]_i_4 
       (.I0(n[1]),
        .I1(\pos_reg[0]_0 ),
        .I2(\m_s2[6]_i_3_n_0 ),
        .I3(n[0]),
        .I4(pos[0]),
        .I5(\uc_reg[3]_0 [0]),
        .O(\dn_edge[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \dn_edge[6]_i_5 
       (.I0(n[1]),
        .I1(n[0]),
        .O(\dn_edge[6]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \ftype[0]_i_1 
       (.I0(p_0_in[0]),
        .I1(ph[1]),
        .I2(ph[0]),
        .I3(\ftype[2]_i_2_n_0 ),
        .I4(ftype[0]),
        .O(\ftype[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \ftype[1]_i_1 
       (.I0(p_0_in[1]),
        .I1(ph[1]),
        .I2(ph[0]),
        .I3(\ftype[2]_i_2_n_0 ),
        .I4(ftype[1]),
        .O(\ftype[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \ftype[2]_i_1 
       (.I0(p_0_in[2]),
        .I1(ph[1]),
        .I2(ph[0]),
        .I3(\ftype[2]_i_2_n_0 ),
        .I4(ftype[2]),
        .O(\ftype[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \ftype[2]_i_2 
       (.I0(ph[2]),
        .I1(ph[4]),
        .I2(ph[5]),
        .I3(ph[6]),
        .I4(ph[3]),
        .O(\ftype[2]_i_2_n_0 ));
  FDRE \ftype_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\ftype[0]_i_1_n_0 ),
        .Q(ftype[0]),
        .R(SR[1]));
  FDRE \ftype_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\ftype[1]_i_1_n_0 ),
        .Q(ftype[1]),
        .R(SR[1]));
  FDRE \ftype_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\ftype[2]_i_1_n_0 ),
        .Q(ftype[2]),
        .R(SR[1]));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \gmin[6]_i_1 
       (.I0(ftype[0]),
        .I1(ftype[1]),
        .I2(ftype[2]),
        .I3(\ftype[2]_i_2_n_0 ),
        .I4(ph[0]),
        .I5(ph[1]),
        .O(\gmin[6]_i_1_n_0 ));
  FDRE \gmin_reg[0] 
       (.C(clk),
        .CE(\gmin[6]_i_1_n_0 ),
        .D(\ui_r_reg_n_0_[0] ),
        .Q(gmin[0]),
        .R(1'b0));
  FDRE \gmin_reg[1] 
       (.C(clk),
        .CE(\gmin[6]_i_1_n_0 ),
        .D(\ui_r_reg_n_0_[1] ),
        .Q(gmin[1]),
        .R(1'b0));
  FDRE \gmin_reg[2] 
       (.C(clk),
        .CE(\gmin[6]_i_1_n_0 ),
        .D(\ui_r_reg_n_0_[2] ),
        .Q(gmin[2]),
        .R(1'b0));
  FDRE \gmin_reg[3] 
       (.C(clk),
        .CE(\gmin[6]_i_1_n_0 ),
        .D(\ui_r_reg_n_0_[3] ),
        .Q(gmin[3]),
        .R(1'b0));
  FDRE \gmin_reg[4] 
       (.C(clk),
        .CE(\gmin[6]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(gmin[4]),
        .R(1'b0));
  FDRE \gmin_reg[5] 
       (.C(clk),
        .CE(\gmin[6]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(gmin[5]),
        .R(1'b0));
  FDRE \gmin_reg[6] 
       (.C(clk),
        .CE(\gmin[6]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(gmin[6]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0004)) 
    hist_reg_0_15_0_0_i_1
       (.I0(uc[4]),
        .I1(act),
        .I2(uc[6]),
        .I3(uc[5]),
        .O(scan));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    hn_first_i_1
       (.I0(\ui_r_reg_n_0_[0] ),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(run_i_2_n_0),
        .I4(p_0_in[2]),
        .I5(hn_first),
        .O(hn_first_i_1_n_0));
  FDRE hn_first_reg
       (.C(clk),
        .CE(1'b1),
        .D(hn_first_i_1_n_0),
        .Q(hn_first),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    hn_real_i_1
       (.I0(\ui_r_reg_n_0_[1] ),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(run_i_2_n_0),
        .I4(p_0_in[2]),
        .I5(hn_real),
        .O(hn_real_i_1_n_0));
  FDRE hn_real_reg
       (.C(clk),
        .CE(1'b1),
        .D(hn_real_i_1_n_0),
        .Q(hn_real),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    hn_use_i_1
       (.I0(\ui_r_reg_n_0_[2] ),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(run_i_2_n_0),
        .I4(p_0_in[2]),
        .I5(hn_use),
        .O(hn_use_i_1_n_0));
  FDRE hn_use_reg
       (.C(clk),
        .CE(1'b1),
        .D(hn_use_i_1_n_0),
        .Q(hn_use),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \kstar[6]_i_1 
       (.I0(ftype[0]),
        .I1(ftype[1]),
        .I2(ftype[2]),
        .I3(\ftype[2]_i_2_n_0 ),
        .I4(ph[0]),
        .I5(ph[1]),
        .O(\kstar[6]_i_1_n_0 ));
  FDRE \kstar_reg[0] 
       (.C(clk),
        .CE(\kstar[6]_i_1_n_0 ),
        .D(\ui_r_reg_n_0_[0] ),
        .Q(kstar[0]),
        .R(1'b0));
  FDRE \kstar_reg[1] 
       (.C(clk),
        .CE(\kstar[6]_i_1_n_0 ),
        .D(\ui_r_reg_n_0_[1] ),
        .Q(kstar[1]),
        .R(1'b0));
  FDRE \kstar_reg[2] 
       (.C(clk),
        .CE(\kstar[6]_i_1_n_0 ),
        .D(\ui_r_reg_n_0_[2] ),
        .Q(kstar[2]),
        .R(1'b0));
  FDRE \kstar_reg[3] 
       (.C(clk),
        .CE(\kstar[6]_i_1_n_0 ),
        .D(\ui_r_reg_n_0_[3] ),
        .Q(kstar[3]),
        .R(1'b0));
  FDRE \kstar_reg[4] 
       (.C(clk),
        .CE(\kstar[6]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(kstar[4]),
        .R(1'b0));
  FDRE \kstar_reg[5] 
       (.C(clk),
        .CE(\kstar[6]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(kstar[5]),
        .R(1'b0));
  FDRE \kstar_reg[6] 
       (.C(clk),
        .CE(\kstar[6]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(kstar[6]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFEF0000FFEF)) 
    \l_bot[0]_i_1 
       (.I0(O[1]),
        .I1(\l_bot[6]_i_14_0 ),
        .I2(\l_bot[6]_i_14_1 ),
        .I3(\l_bot_reg[3]_i_2_n_7 ),
        .I4(b_first),
        .I5(cost[0]),
        .O(l_new[0]));
  LUT6 #(
    .INIT(64'hFFFF0000FFEFFFEF)) 
    \l_bot[1]_i_1 
       (.I0(O[1]),
        .I1(\l_bot[6]_i_14_0 ),
        .I2(\l_bot[6]_i_14_1 ),
        .I3(\l_bot_reg[3]_i_2_n_6 ),
        .I4(cost[1]),
        .I5(b_first),
        .O(l_new[1]));
  LUT6 #(
    .INIT(64'hFFFF0000FFEFFFEF)) 
    \l_bot[2]_i_1 
       (.I0(O[1]),
        .I1(\l_bot[6]_i_14_0 ),
        .I2(\l_bot[6]_i_14_1 ),
        .I3(\l_bot_reg[3]_i_2_n_5 ),
        .I4(cost[2]),
        .I5(b_first),
        .O(l_new[2]));
  LUT6 #(
    .INIT(64'hFFFF0000FFEFFFEF)) 
    \l_bot[3]_i_1 
       (.I0(O[1]),
        .I1(\l_bot[6]_i_14_0 ),
        .I2(\l_bot[6]_i_14_1 ),
        .I3(\l_bot_reg[3]_i_2_n_4 ),
        .I4(cost[3]),
        .I5(b_first),
        .O(l_new[3]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \l_bot[3]_i_11 
       (.I0(a[1]),
        .I1(\l_bot[6]_i_35 ),
        .I2(\gmin_reg[6]_0 [1]),
        .O(\u_path/a [1]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \l_bot[3]_i_13 
       (.I0(a[2]),
        .I1(\l_bot[6]_i_35 ),
        .I2(\gmin_reg[6]_0 [2]),
        .I3(\u_path/min9_return1 ),
        .I4(\u_path/b [2]),
        .O(\u_path/p_0_in [2]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \l_bot[3]_i_14 
       (.I0(a[1]),
        .I1(\l_bot[6]_i_35 ),
        .I2(\gmin_reg[6]_0 [1]),
        .I3(\u_path/min9_return1 ),
        .I4(\u_path/b [1]),
        .O(\u_path/p_0_in [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \l_bot[3]_i_15 
       (.I0(a[0]),
        .I1(\l_bot[6]_i_35 ),
        .I2(\gmin_reg[6]_0 [0]),
        .O(\u_path/a [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \l_bot[3]_i_16 
       (.I0(gmin[3]),
        .I1(p2[3]),
        .O(\l_bot[3]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l_bot[3]_i_17 
       (.I0(gmin[2]),
        .I1(p2[2]),
        .O(\l_bot[3]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l_bot[3]_i_18 
       (.I0(gmin[1]),
        .I1(p2[1]),
        .O(\l_bot[3]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l_bot[3]_i_19 
       (.I0(gmin[0]),
        .I1(p2[0]),
        .O(\l_bot[3]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hB2BBB222)) 
    \l_bot[3]_i_3 
       (.I0(cost[2]),
        .I1(gmin[2]),
        .I2(\l_bot_reg[3]_i_2_0 ),
        .I3(\u_path/min9_return1 ),
        .I4(\u_path/b [2]),
        .O(\l_bot[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB2BBB222)) 
    \l_bot[3]_i_4 
       (.I0(cost[1]),
        .I1(gmin[1]),
        .I2(\u_path/a [1]),
        .I3(\u_path/min9_return1 ),
        .I4(\u_path/b [1]),
        .O(\l_bot[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hE2EEE222FFFFFFFF)) 
    \l_bot[3]_i_5 
       (.I0(\u_path/b [0]),
        .I1(\u_path/min9_return1 ),
        .I2(a[0]),
        .I3(\l_bot[6]_i_35 ),
        .I4(\gmin_reg[6]_0 [0]),
        .I5(gmin[0]),
        .O(\l_bot[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    \l_bot[3]_i_6 
       (.I0(\u_path/p_0_in [2]),
        .I1(gmin[2]),
        .I2(cost[2]),
        .I3(cost[3]),
        .I4(\u_path/p_0_in [3]),
        .I5(gmin[3]),
        .O(\l_bot[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    \l_bot[3]_i_7 
       (.I0(\u_path/p_0_in [1]),
        .I1(gmin[1]),
        .I2(cost[1]),
        .I3(cost[2]),
        .I4(\u_path/p_0_in [2]),
        .I5(gmin[2]),
        .O(\l_bot[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9996669666699969)) 
    \l_bot[3]_i_8 
       (.I0(\l_bot[3]_i_5_n_0 ),
        .I1(cost[1]),
        .I2(\u_path/b [1]),
        .I3(\u_path/min9_return1 ),
        .I4(\u_path/a [1]),
        .I5(gmin[1]),
        .O(\l_bot[3]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h9A95656A)) 
    \l_bot[3]_i_9 
       (.I0(gmin[0]),
        .I1(\u_path/a [0]),
        .I2(\u_path/min9_return1 ),
        .I3(\u_path/b [0]),
        .I4(cost[0]),
        .O(\l_bot[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFEFFFEF)) 
    \l_bot[4]_i_1 
       (.I0(O[1]),
        .I1(\l_bot[6]_i_14_0 ),
        .I2(\l_bot[6]_i_14_1 ),
        .I3(\l_bot_reg[6]_i_3_n_7 ),
        .I4(cost[4]),
        .I5(b_first),
        .O(l_new[4]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \l_bot[6]_i_1 
       (.I0(\uc_reg[3]_0 [2]),
        .I1(\uc_reg[3]_0 [3]),
        .I2(\uc_reg[3]_0 [0]),
        .I3(\uc_reg[3]_0 [1]),
        .I4(scan),
        .I5(b_real),
        .O(\uc_reg[2]_3 ));
  LUT5 #(
    .INIT(32'hB24D4DB2)) 
    \l_bot[6]_i_10 
       (.I0(\u_path/p_0_in [5]),
        .I1(gmin[5]),
        .I2(cost[5]),
        .I3(gmin[6]),
        .I4(\l_bot[6]_i_25_n_0 ),
        .O(\l_bot[6]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    \l_bot[6]_i_11 
       (.I0(\u_path/p_0_in [4]),
        .I1(gmin[4]),
        .I2(cost[4]),
        .I3(cost[5]),
        .I4(\u_path/p_0_in [5]),
        .I5(gmin[5]),
        .O(\l_bot[6]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    \l_bot[6]_i_12 
       (.I0(\u_path/p_0_in [3]),
        .I1(gmin[3]),
        .I2(cost[3]),
        .I3(cost[4]),
        .I4(\u_path/p_0_in [4]),
        .I5(gmin[4]),
        .O(\l_bot[6]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h22E2)) 
    \l_bot[6]_i_13 
       (.I0(\u_path/b [7]),
        .I1(\u_path/min9_return1 ),
        .I2(\u_path/b2_out [7]),
        .I3(\l_bot[6]_i_35 ),
        .O(\u_path/p_0_in__0 ));
  LUT4 #(
    .INIT(16'hB0BF)) 
    \l_bot[6]_i_14 
       (.I0(\l_bot[6]_i_35 ),
        .I1(\u_path/b2_out [7]),
        .I2(\u_path/min9_return1 ),
        .I3(\u_path/b [7]),
        .O(\l_bot[6]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \l_bot[6]_i_19 
       (.I0(a[5]),
        .I1(\l_bot[6]_i_35 ),
        .I2(\gmin_reg[6]_0 [5]),
        .O(\u_path/a [5]));
  LUT5 #(
    .INIT(32'h33333323)) 
    \l_bot[6]_i_2 
       (.I0(\l_bot_reg[6]_i_3_n_5 ),
        .I1(b_first),
        .I2(\l_bot[6]_i_14_1 ),
        .I3(\l_bot[6]_i_14_0 ),
        .I4(O[1]),
        .O(l_new[5]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \l_bot[6]_i_20 
       (.I0(a[4]),
        .I1(\l_bot[6]_i_35 ),
        .I2(\gmin_reg[6]_0 [4]),
        .O(\u_path/a [4]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \l_bot[6]_i_21 
       (.I0(a[3]),
        .I1(\l_bot[6]_i_35 ),
        .I2(\gmin_reg[6]_0 [3]),
        .O(\u_path/a [3]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \l_bot[6]_i_23 
       (.I0(a[6]),
        .I1(\l_bot[6]_i_35 ),
        .I2(\u_path/b2_out [6]),
        .O(\u_path/a [6]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \l_bot[6]_i_24 
       (.I0(a[5]),
        .I1(\l_bot[6]_i_35 ),
        .I2(\gmin_reg[6]_0 [5]),
        .I3(\u_path/min9_return1 ),
        .I4(\u_path/b [5]),
        .O(\u_path/p_0_in [5]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h1D001DFF)) 
    \l_bot[6]_i_25 
       (.I0(\u_path/b2_out [6]),
        .I1(\l_bot[6]_i_35 ),
        .I2(a[6]),
        .I3(\u_path/min9_return1 ),
        .I4(\u_path/b [6]),
        .O(\l_bot[6]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \l_bot[6]_i_26 
       (.I0(a[4]),
        .I1(\l_bot[6]_i_35 ),
        .I2(\gmin_reg[6]_0 [4]),
        .I3(\u_path/min9_return1 ),
        .I4(\u_path/b [4]),
        .O(\u_path/p_0_in [4]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \l_bot[6]_i_27 
       (.I0(a[3]),
        .I1(\l_bot[6]_i_35 ),
        .I2(\gmin_reg[6]_0 [3]),
        .I3(\u_path/min9_return1 ),
        .I4(\u_path/b [3]),
        .O(\u_path/p_0_in [3]));
  LUT3 #(
    .INIT(8'hF4)) 
    \l_bot[6]_i_28 
       (.I0(a[6]),
        .I1(\u_path/b2_out [6]),
        .I2(\u_path/b2_out [7]),
        .O(\l_bot[6]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \l_bot[6]_i_29 
       (.I0(\gmin_reg[6]_0 [5]),
        .I1(a[5]),
        .I2(\gmin_reg[6]_0 [4]),
        .I3(a[4]),
        .O(\l_bot[6]_i_29_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \l_bot[6]_i_30 
       (.I0(\gmin_reg[6]_0 [3]),
        .I1(a[3]),
        .I2(\gmin_reg[6]_0 [2]),
        .I3(a[2]),
        .O(\l_bot[6]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \l_bot[6]_i_31 
       (.I0(\gmin_reg[6]_0 [1]),
        .I1(a[1]),
        .I2(\gmin_reg[6]_0 [0]),
        .I3(a[0]),
        .O(\l_bot[6]_i_31_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \l_bot[6]_i_32 
       (.I0(a[6]),
        .I1(\u_path/b2_out [6]),
        .I2(\u_path/b2_out [7]),
        .O(\l_bot[6]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l_bot[6]_i_36 
       (.I0(gmin[6]),
        .I1(p2[6]),
        .O(\l_bot[6]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l_bot[6]_i_37 
       (.I0(gmin[5]),
        .I1(p2[5]),
        .O(\l_bot[6]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l_bot[6]_i_38 
       (.I0(gmin[4]),
        .I1(p2[4]),
        .O(\l_bot[6]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hFF0A2200FF0AFF22)) 
    \l_bot[6]_i_39 
       (.I0(\u_path/b [6]),
        .I1(\u_path/b2_out [6]),
        .I2(a[6]),
        .I3(\u_path/b [7]),
        .I4(\l_bot[6]_i_35 ),
        .I5(\u_path/b2_out [7]),
        .O(\l_bot[6]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h222222B2B2B222B2)) 
    \l_bot[6]_i_40 
       (.I0(\u_path/b [5]),
        .I1(\u_path/a [5]),
        .I2(\u_path/b [4]),
        .I3(\gmin_reg[6]_0 [4]),
        .I4(\l_bot[6]_i_35 ),
        .I5(a[4]),
        .O(\l_bot[6]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h222222B2B2B222B2)) 
    \l_bot[6]_i_41 
       (.I0(\u_path/b [3]),
        .I1(\u_path/a [3]),
        .I2(\u_path/b [2]),
        .I3(\gmin_reg[6]_0 [2]),
        .I4(\l_bot[6]_i_35 ),
        .I5(a[2]),
        .O(\l_bot[6]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h222222B2B2B222B2)) 
    \l_bot[6]_i_42 
       (.I0(\u_path/b [1]),
        .I1(\u_path/a [1]),
        .I2(\u_path/b [0]),
        .I3(\gmin_reg[6]_0 [0]),
        .I4(\l_bot[6]_i_35 ),
        .I5(a[0]),
        .O(\l_bot[6]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h2D0C210000210C2D)) 
    \l_bot[6]_i_43 
       (.I0(\u_path/b2_out [7]),
        .I1(\l_bot[6]_i_35 ),
        .I2(\u_path/b [7]),
        .I3(\u_path/b2_out [6]),
        .I4(a[6]),
        .I5(\u_path/b [6]),
        .O(\l_bot[6]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h9990009000099909)) 
    \l_bot[6]_i_44 
       (.I0(\u_path/a [5]),
        .I1(\u_path/b [5]),
        .I2(\gmin_reg[6]_0 [4]),
        .I3(\l_bot[6]_i_35 ),
        .I4(a[4]),
        .I5(\u_path/b [4]),
        .O(\l_bot[6]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h9990009000099909)) 
    \l_bot[6]_i_45 
       (.I0(\u_path/a [3]),
        .I1(\u_path/b [3]),
        .I2(\gmin_reg[6]_0 [2]),
        .I3(\l_bot[6]_i_35 ),
        .I4(a[2]),
        .I5(\u_path/b [2]),
        .O(\l_bot[6]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h9990009000099909)) 
    \l_bot[6]_i_46 
       (.I0(\u_path/a [1]),
        .I1(\u_path/b [1]),
        .I2(\gmin_reg[6]_0 [0]),
        .I3(\l_bot[6]_i_35 ),
        .I4(a[0]),
        .I5(\u_path/b [0]),
        .O(\l_bot[6]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h1D111DDDE2EEE222)) 
    \l_bot[6]_i_47 
       (.I0(\l_bot[6]_i_54_n_0 ),
        .I1(\l_bot_reg[6]_i_55_n_0 ),
        .I2(\l_bot_reg[6]_i_18_0 [6]),
        .I3(\l_bot[6]_i_56_n_0 ),
        .I4(Q[6]),
        .I5(p1[6]),
        .O(\l_bot[6]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \l_bot[6]_i_48 
       (.I0(\l_bot[6]_i_57_n_0 ),
        .I1(\l_bot_reg[6]_i_55_n_0 ),
        .I2(Q[5]),
        .I3(\l_bot[6]_i_56_n_0 ),
        .I4(\l_bot_reg[6]_i_18_0 [5]),
        .I5(p1[5]),
        .O(\l_bot[6]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \l_bot[6]_i_49 
       (.I0(\l_bot[6]_i_58_n_0 ),
        .I1(\l_bot_reg[6]_i_55_n_0 ),
        .I2(Q[4]),
        .I3(\l_bot[6]_i_56_n_0 ),
        .I4(\l_bot_reg[6]_i_18_0 [4]),
        .I5(p1[4]),
        .O(\l_bot[6]_i_49_n_0 ));
  LUT4 #(
    .INIT(16'hB0BF)) 
    \l_bot[6]_i_5 
       (.I0(\l_bot[6]_i_35 ),
        .I1(\u_path/b2_out [7]),
        .I2(\u_path/min9_return1 ),
        .I3(\u_path/b [7]),
        .O(\l_bot[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \l_bot[6]_i_50 
       (.I0(\l_bot[6]_i_59_n_0 ),
        .I1(\l_bot_reg[6]_i_55_n_0 ),
        .I2(Q[3]),
        .I3(\l_bot[6]_i_56_n_0 ),
        .I4(\l_bot_reg[6]_i_18_0 [3]),
        .I5(p1[3]),
        .O(\l_bot[6]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \l_bot[6]_i_51 
       (.I0(\l_bot[6]_i_60_n_0 ),
        .I1(\l_bot_reg[6]_i_55_n_0 ),
        .I2(Q[2]),
        .I3(\l_bot[6]_i_56_n_0 ),
        .I4(\l_bot_reg[6]_i_18_0 [2]),
        .I5(p1[2]),
        .O(\l_bot[6]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \l_bot[6]_i_52 
       (.I0(\l_bot[6]_i_61_n_0 ),
        .I1(\l_bot_reg[6]_i_55_n_0 ),
        .I2(Q[1]),
        .I3(\l_bot[6]_i_56_n_0 ),
        .I4(\l_bot_reg[6]_i_18_0 [1]),
        .I5(p1[1]),
        .O(\l_bot[6]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \l_bot[6]_i_53 
       (.I0(\l_bot[6]_i_62_n_0 ),
        .I1(\l_bot_reg[6]_i_55_n_0 ),
        .I2(Q[0]),
        .I3(\l_bot[6]_i_56_n_0 ),
        .I4(\l_bot_reg[6]_i_18_0 [0]),
        .I5(p1[0]),
        .O(\l_bot[6]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \l_bot[6]_i_54 
       (.I0(up_edge[6]),
        .I1(\uc_reg[3]_0 [3]),
        .I2(\uc_reg[3]_0 [1]),
        .I3(\uc_reg[3]_0 [0]),
        .I4(\uc_reg[3]_0 [2]),
        .I5(l_up0[6]),
        .O(\l_bot[6]_i_54_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \l_bot[6]_i_56 
       (.I0(\uc_reg[3]_0 [1]),
        .I1(\uc_reg[3]_0 [0]),
        .I2(\uc_reg[3]_0 [3]),
        .I3(\uc_reg[3]_0 [2]),
        .O(\l_bot[6]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \l_bot[6]_i_57 
       (.I0(up_edge[5]),
        .I1(\uc_reg[3]_0 [3]),
        .I2(\uc_reg[3]_0 [1]),
        .I3(\uc_reg[3]_0 [0]),
        .I4(\uc_reg[3]_0 [2]),
        .I5(l_up0[5]),
        .O(\l_bot[6]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \l_bot[6]_i_58 
       (.I0(up_edge[4]),
        .I1(\uc_reg[3]_0 [3]),
        .I2(\uc_reg[3]_0 [1]),
        .I3(\uc_reg[3]_0 [0]),
        .I4(\uc_reg[3]_0 [2]),
        .I5(l_up0[4]),
        .O(\l_bot[6]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \l_bot[6]_i_59 
       (.I0(up_edge[3]),
        .I1(\uc_reg[3]_0 [3]),
        .I2(\uc_reg[3]_0 [1]),
        .I3(\uc_reg[3]_0 [0]),
        .I4(\uc_reg[3]_0 [2]),
        .I5(l_up0[3]),
        .O(\l_bot[6]_i_59_n_0 ));
  LUT5 #(
    .INIT(32'hB2BBB222)) 
    \l_bot[6]_i_6 
       (.I0(cost[5]),
        .I1(gmin[5]),
        .I2(\u_path/a [5]),
        .I3(\u_path/min9_return1 ),
        .I4(\u_path/b [5]),
        .O(\l_bot[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \l_bot[6]_i_60 
       (.I0(up_edge[2]),
        .I1(\uc_reg[3]_0 [3]),
        .I2(\uc_reg[3]_0 [1]),
        .I3(\uc_reg[3]_0 [0]),
        .I4(\uc_reg[3]_0 [2]),
        .I5(l_up0[2]),
        .O(\l_bot[6]_i_60_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \l_bot[6]_i_61 
       (.I0(up_edge[1]),
        .I1(\uc_reg[3]_0 [3]),
        .I2(\uc_reg[3]_0 [1]),
        .I3(\uc_reg[3]_0 [0]),
        .I4(\uc_reg[3]_0 [2]),
        .I5(l_up0[1]),
        .O(\l_bot[6]_i_61_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \l_bot[6]_i_62 
       (.I0(up_edge[0]),
        .I1(\uc_reg[3]_0 [3]),
        .I2(\uc_reg[3]_0 [1]),
        .I3(\uc_reg[3]_0 [0]),
        .I4(\uc_reg[3]_0 [2]),
        .I5(l_up0[0]),
        .O(\l_bot[6]_i_62_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1D0000001D00)) 
    \l_bot[6]_i_63 
       (.I0(Q[6]),
        .I1(\l_bot[6]_i_56_n_0 ),
        .I2(\l_bot_reg[6]_i_18_0 [6]),
        .I3(l_up0[6]),
        .I4(\l_bot_reg[6]_i_55_0 ),
        .I5(up_edge[6]),
        .O(\l_bot[6]_i_63_n_0 ));
  LUT6 #(
    .INIT(64'h222222B2B2B222B2)) 
    \l_bot[6]_i_64 
       (.I0(\l_bot[6]_i_57_n_0 ),
        .I1(\l_bot[6]_i_72_n_0 ),
        .I2(\l_bot[6]_i_58_n_0 ),
        .I3(Q[4]),
        .I4(\l_bot[6]_i_56_n_0 ),
        .I5(\l_bot_reg[6]_i_18_0 [4]),
        .O(\l_bot[6]_i_64_n_0 ));
  LUT6 #(
    .INIT(64'h222222B2B2B222B2)) 
    \l_bot[6]_i_65 
       (.I0(\l_bot[6]_i_59_n_0 ),
        .I1(\l_bot[6]_i_73_n_0 ),
        .I2(\l_bot[6]_i_60_n_0 ),
        .I3(Q[2]),
        .I4(\l_bot[6]_i_56_n_0 ),
        .I5(\l_bot_reg[6]_i_18_0 [2]),
        .O(\l_bot[6]_i_65_n_0 ));
  LUT6 #(
    .INIT(64'h222222B2B2B222B2)) 
    \l_bot[6]_i_66 
       (.I0(\l_bot[6]_i_61_n_0 ),
        .I1(\l_bot[6]_i_74_n_0 ),
        .I2(\l_bot[6]_i_62_n_0 ),
        .I3(Q[0]),
        .I4(\l_bot[6]_i_56_n_0 ),
        .I5(\l_bot_reg[6]_i_18_0 [0]),
        .O(\l_bot[6]_i_66_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E21D1D1DE21D)) 
    \l_bot[6]_i_67 
       (.I0(Q[6]),
        .I1(\l_bot[6]_i_56_n_0 ),
        .I2(\l_bot_reg[6]_i_18_0 [6]),
        .I3(l_up0[6]),
        .I4(\l_bot_reg[6]_i_55_0 ),
        .I5(up_edge[6]),
        .O(\l_bot[6]_i_67_n_0 ));
  LUT6 #(
    .INIT(64'h9090900909099009)) 
    \l_bot[6]_i_68 
       (.I0(\l_bot[6]_i_72_n_0 ),
        .I1(\l_bot[6]_i_57_n_0 ),
        .I2(\l_bot[6]_i_58_n_0 ),
        .I3(Q[4]),
        .I4(\l_bot[6]_i_56_n_0 ),
        .I5(\l_bot_reg[6]_i_18_0 [4]),
        .O(\l_bot[6]_i_68_n_0 ));
  LUT6 #(
    .INIT(64'h9090900909099009)) 
    \l_bot[6]_i_69 
       (.I0(\l_bot[6]_i_73_n_0 ),
        .I1(\l_bot[6]_i_59_n_0 ),
        .I2(\l_bot[6]_i_60_n_0 ),
        .I3(Q[2]),
        .I4(\l_bot[6]_i_56_n_0 ),
        .I5(\l_bot_reg[6]_i_18_0 [2]),
        .O(\l_bot[6]_i_69_n_0 ));
  LUT5 #(
    .INIT(32'hB2BBB222)) 
    \l_bot[6]_i_7 
       (.I0(cost[4]),
        .I1(gmin[4]),
        .I2(\u_path/a [4]),
        .I3(\u_path/min9_return1 ),
        .I4(\u_path/b [4]),
        .O(\l_bot[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9090900909099009)) 
    \l_bot[6]_i_70 
       (.I0(\l_bot[6]_i_74_n_0 ),
        .I1(\l_bot[6]_i_61_n_0 ),
        .I2(\l_bot[6]_i_62_n_0 ),
        .I3(Q[0]),
        .I4(\l_bot[6]_i_56_n_0 ),
        .I5(\l_bot_reg[6]_i_18_0 [0]),
        .O(\l_bot[6]_i_70_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \l_bot[6]_i_72 
       (.I0(\l_bot_reg[6]_i_18_0 [5]),
        .I1(\uc_reg[3]_0 [1]),
        .I2(\uc_reg[3]_0 [0]),
        .I3(\uc_reg[3]_0 [3]),
        .I4(\uc_reg[3]_0 [2]),
        .I5(Q[5]),
        .O(\l_bot[6]_i_72_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \l_bot[6]_i_73 
       (.I0(\l_bot_reg[6]_i_18_0 [3]),
        .I1(\uc_reg[3]_0 [1]),
        .I2(\uc_reg[3]_0 [0]),
        .I3(\uc_reg[3]_0 [3]),
        .I4(\uc_reg[3]_0 [2]),
        .I5(Q[3]),
        .O(\l_bot[6]_i_73_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \l_bot[6]_i_74 
       (.I0(\l_bot_reg[6]_i_18_0 [1]),
        .I1(\uc_reg[3]_0 [1]),
        .I2(\uc_reg[3]_0 [0]),
        .I3(\uc_reg[3]_0 [3]),
        .I4(\uc_reg[3]_0 [2]),
        .I5(Q[1]),
        .O(\l_bot[6]_i_74_n_0 ));
  LUT5 #(
    .INIT(32'hB2BBB222)) 
    \l_bot[6]_i_8 
       (.I0(cost[3]),
        .I1(gmin[3]),
        .I2(\u_path/a [3]),
        .I3(\u_path/min9_return1 ),
        .I4(\u_path/b [3]),
        .O(\l_bot[6]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hBABF4540)) 
    \l_bot[6]_i_9 
       (.I0(gmin[6]),
        .I1(\u_path/a [6]),
        .I2(\u_path/min9_return1 ),
        .I3(\u_path/b [6]),
        .I4(\l_bot[6]_i_5_n_0 ),
        .O(\l_bot[6]_i_9_n_0 ));
  CARRY4 \l_bot_reg[3]_i_12 
       (.CI(1'b0),
        .CO({\l_bot_reg[3]_i_12_n_0 ,\l_bot_reg[3]_i_12_n_1 ,\l_bot_reg[3]_i_12_n_2 ,\l_bot_reg[3]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI(gmin[3:0]),
        .O(\gmin_reg[6]_0 [3:0]),
        .S({\l_bot[3]_i_16_n_0 ,\l_bot[3]_i_17_n_0 ,\l_bot[3]_i_18_n_0 ,\l_bot[3]_i_19_n_0 }));
  CARRY4 \l_bot_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\l_bot_reg[3]_i_2_n_0 ,\l_bot_reg[3]_i_2_n_1 ,\l_bot_reg[3]_i_2_n_2 ,\l_bot_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\l_bot[3]_i_3_n_0 ,\l_bot[3]_i_4_n_0 ,\l_bot[3]_i_5_n_0 ,cost[0]}),
        .O({\l_bot_reg[3]_i_2_n_4 ,\l_bot_reg[3]_i_2_n_5 ,\l_bot_reg[3]_i_2_n_6 ,\l_bot_reg[3]_i_2_n_7 }),
        .S({\l_bot[3]_i_6_n_0 ,\l_bot[3]_i_7_n_0 ,\l_bot[3]_i_8_n_0 ,\l_bot[3]_i_9_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \l_bot_reg[6]_i_15 
       (.CI(1'b0),
        .CO({\l_bot[6]_i_35 ,\l_bot_reg[6]_i_15_n_1 ,\l_bot_reg[6]_i_15_n_2 ,\l_bot_reg[6]_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI({\l_bot[6]_i_28_n_0 ,\l_bot[6]_i_29_n_0 ,\l_bot[6]_i_30_n_0 ,\l_bot[6]_i_31_n_0 }),
        .O(\NLW_l_bot_reg[6]_i_15_O_UNCONNECTED [3:0]),
        .S({\l_bot[6]_i_32_n_0 ,\l_bot[3]_i_10 }));
  CARRY4 \l_bot_reg[6]_i_16 
       (.CI(\l_bot_reg[3]_i_12_n_0 ),
        .CO({\u_path/b2_out [7],\NLW_l_bot_reg[6]_i_16_CO_UNCONNECTED [2],\l_bot_reg[6]_i_16_n_2 ,\l_bot_reg[6]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,gmin[6:4]}),
        .O({\NLW_l_bot_reg[6]_i_16_O_UNCONNECTED [3],\u_path/b2_out [6],\gmin_reg[6]_0 [5:4]}),
        .S({1'b1,\l_bot[6]_i_36_n_0 ,\l_bot[6]_i_37_n_0 ,\l_bot[6]_i_38_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \l_bot_reg[6]_i_17 
       (.CI(1'b0),
        .CO({\u_path/min9_return1 ,\l_bot_reg[6]_i_17_n_1 ,\l_bot_reg[6]_i_17_n_2 ,\l_bot_reg[6]_i_17_n_3 }),
        .CYINIT(1'b0),
        .DI({\l_bot[6]_i_39_n_0 ,\l_bot[6]_i_40_n_0 ,\l_bot[6]_i_41_n_0 ,\l_bot[6]_i_42_n_0 }),
        .O(\NLW_l_bot_reg[6]_i_17_O_UNCONNECTED [3:0]),
        .S({\l_bot[6]_i_43_n_0 ,\l_bot[6]_i_44_n_0 ,\l_bot[6]_i_45_n_0 ,\l_bot[6]_i_46_n_0 }));
  CARRY4 \l_bot_reg[6]_i_18 
       (.CI(\l_bot_reg[6]_i_22_n_0 ),
        .CO({\u_path/b [7],\NLW_l_bot_reg[6]_i_18_CO_UNCONNECTED [2],\l_bot_reg[6]_i_18_n_2 ,\l_bot_reg[6]_i_18_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,p1[6:4]}),
        .O({\NLW_l_bot_reg[6]_i_18_O_UNCONNECTED [3],\u_path/b [6:4]}),
        .S({1'b1,\l_bot[6]_i_47_n_0 ,\l_bot[6]_i_48_n_0 ,\l_bot[6]_i_49_n_0 }));
  CARRY4 \l_bot_reg[6]_i_22 
       (.CI(1'b0),
        .CO({\l_bot_reg[6]_i_22_n_0 ,\l_bot_reg[6]_i_22_n_1 ,\l_bot_reg[6]_i_22_n_2 ,\l_bot_reg[6]_i_22_n_3 }),
        .CYINIT(1'b0),
        .DI(p1[3:0]),
        .O(\u_path/b [3:0]),
        .S({\l_bot[6]_i_50_n_0 ,\l_bot[6]_i_51_n_0 ,\l_bot[6]_i_52_n_0 ,\l_bot[6]_i_53_n_0 }));
  CARRY4 \l_bot_reg[6]_i_3 
       (.CI(\l_bot_reg[3]_i_2_n_0 ),
        .CO({\l_bot_reg[6]_i_3_n_0 ,\l_bot_reg[6]_i_3_n_1 ,\l_bot_reg[6]_i_3_n_2 ,\l_bot_reg[6]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\l_bot[6]_i_5_n_0 ,\l_bot[6]_i_6_n_0 ,\l_bot[6]_i_7_n_0 ,\l_bot[6]_i_8_n_0 }),
        .O({O[1],\l_bot_reg[6]_i_3_n_5 ,O[0],\l_bot_reg[6]_i_3_n_7 }),
        .S({\l_bot[6]_i_9_n_0 ,\l_bot[6]_i_10_n_0 ,\l_bot[6]_i_11_n_0 ,\l_bot[6]_i_12_n_0 }));
  CARRY4 \l_bot_reg[6]_i_4 
       (.CI(\l_bot_reg[6]_i_3_n_0 ),
        .CO({\NLW_l_bot_reg[6]_i_4_CO_UNCONNECTED [3:2],\l_bot[6]_i_14_1 ,\NLW_l_bot_reg[6]_i_4_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\u_path/p_0_in__0 }),
        .O({\NLW_l_bot_reg[6]_i_4_O_UNCONNECTED [3:1],\l_bot[6]_i_14_0 }),
        .S({1'b0,1'b0,1'b1,\l_bot[6]_i_14_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \l_bot_reg[6]_i_55 
       (.CI(1'b0),
        .CO({\l_bot_reg[6]_i_55_n_0 ,\l_bot_reg[6]_i_55_n_1 ,\l_bot_reg[6]_i_55_n_2 ,\l_bot_reg[6]_i_55_n_3 }),
        .CYINIT(1'b0),
        .DI({\l_bot[6]_i_63_n_0 ,\l_bot[6]_i_64_n_0 ,\l_bot[6]_i_65_n_0 ,\l_bot[6]_i_66_n_0 }),
        .O(\NLW_l_bot_reg[6]_i_55_O_UNCONNECTED [3:0]),
        .S({\l_bot[6]_i_67_n_0 ,\l_bot[6]_i_68_n_0 ,\l_bot[6]_i_69_n_0 ,\l_bot[6]_i_70_n_0 }));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \l_top[6]_i_1 
       (.I0(b_real),
        .I1(scan),
        .I2(\uc_reg[3]_0 [3]),
        .I3(\uc_reg[3]_0 [2]),
        .I4(\uc_reg[3]_0 [0]),
        .I5(\uc_reg[3]_0 [1]),
        .O(b_real_reg_3));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \left_sr[0]_i_1 
       (.I0(\ui_r_reg_n_0_[0] ),
        .I1(\left_sr[13]_i_2_n_0 ),
        .I2(\left_sr[7]_i_2_n_0 ),
        .I3(\left_sr[0]_i_2_n_0 ),
        .I4(in_left[0]),
        .O(\left_sr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \left_sr[0]_i_2 
       (.I0(\left_sr[3]_i_2_n_0 ),
        .I1(left_sr1[0]),
        .I2(left_sr1[1]),
        .O(\left_sr[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \left_sr[10]_i_1 
       (.I0(\left_sr[13]_i_2_n_0 ),
        .I1(\left_sr[42]_i_2_n_0 ),
        .I2(\left_sr[21]_i_2_n_0 ),
        .I3(\left_sr[42]_i_3_n_0 ),
        .I4(\left_sr[10]_i_2_n_0 ),
        .I5(in_left[10]),
        .O(\left_sr[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0A000C0C0C0)) 
    \left_sr[10]_i_2 
       (.I0(\left_sr[7]_i_2_n_0 ),
        .I1(\left_sr[15]_i_2_n_0 ),
        .I2(\left_sr[44]_i_9_n_0 ),
        .I3(left_sr1[1]),
        .I4(left_sr1[0]),
        .I5(left_sr1[2]),
        .O(\left_sr[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    \left_sr[11]_i_1 
       (.I0(left_sr0[11]),
        .I1(left_sr1[5]),
        .I2(left_sr1[4]),
        .I3(\left_sr[43]_i_4_n_0 ),
        .I4(\left_sr[43]_i_5_n_0 ),
        .I5(in_left[11]),
        .O(\left_sr[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h03020002)) 
    \left_sr[11]_i_2 
       (.I0(\left_sr[35]_i_2_n_0 ),
        .I1(left_sr1[4]),
        .I2(left_sr1[5]),
        .I3(left_sr1[3]),
        .I4(\left_sr[35]_i_3_n_0 ),
        .O(left_sr0[11]));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \left_sr[12]_i_1 
       (.I0(\left_sr[44]_i_2_n_0 ),
        .I1(\left_sr[21]_i_2_n_0 ),
        .I2(\left_sr[13]_i_2_n_0 ),
        .I3(\left_sr[44]_i_5_n_0 ),
        .I4(\left_sr[12]_i_2_n_0 ),
        .I5(in_left[12]),
        .O(\left_sr[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF000CC004400CC00)) 
    \left_sr[12]_i_2 
       (.I0(left_sr1[0]),
        .I1(\left_sr[15]_i_2_n_0 ),
        .I2(\left_sr[7]_i_2_n_0 ),
        .I3(\left_sr[44]_i_9_n_0 ),
        .I4(left_sr1[2]),
        .I5(left_sr1[1]),
        .O(\left_sr[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \left_sr[13]_i_1 
       (.I0(\left_sr[37]_i_4_n_0 ),
        .I1(\left_sr[21]_i_2_n_0 ),
        .I2(\left_sr[13]_i_2_n_0 ),
        .I3(\left_sr[37]_i_3_n_0 ),
        .I4(\left_sr[13]_i_3_n_0 ),
        .I5(in_left[13]),
        .O(\left_sr[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \left_sr[13]_i_2 
       (.I0(left_sr1[4]),
        .I1(left_sr1[5]),
        .I2(left_sr1[3]),
        .O(\left_sr[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC0A000A0A0A0A0A0)) 
    \left_sr[13]_i_3 
       (.I0(\left_sr[15]_i_2_n_0 ),
        .I1(\left_sr[7]_i_2_n_0 ),
        .I2(\left_sr[44]_i_9_n_0 ),
        .I3(left_sr1[2]),
        .I4(left_sr1[0]),
        .I5(left_sr1[1]),
        .O(\left_sr[13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \left_sr[14]_i_1 
       (.I0(\left_sr[38]_i_2_n_0 ),
        .I1(\left_sr[21]_i_2_n_0 ),
        .I2(\left_sr[15]_i_2_n_0 ),
        .I3(\left_sr[38]_i_3_n_0 ),
        .I4(in_left[14]),
        .O(\left_sr[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \left_sr[15]_i_1 
       (.I0(\left_sr[39]_i_3_n_0 ),
        .I1(\left_sr[21]_i_2_n_0 ),
        .I2(\left_sr[15]_i_2_n_0 ),
        .I3(\left_sr[39]_i_5_n_0 ),
        .I4(in_left[15]),
        .O(\left_sr[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \left_sr[15]_i_2 
       (.I0(left_sr1[3]),
        .I1(left_sr1[5]),
        .I2(left_sr1[4]),
        .I3(\left_sr[43]_i_5_n_0 ),
        .O(\left_sr[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \left_sr[16]_i_1 
       (.I0(\left_sr[32]_i_2_n_0 ),
        .I1(\left_sr[21]_i_2_n_0 ),
        .I2(\left_sr[29]_i_2_n_0 ),
        .I3(\left_sr[32]_i_3_n_0 ),
        .I4(\left_sr[16]_i_2_n_0 ),
        .I5(in_left[16]),
        .O(\left_sr[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0A080B0A0A08080)) 
    \left_sr[16]_i_2 
       (.I0(\left_sr[15]_i_2_n_0 ),
        .I1(left_sr1[2]),
        .I2(\left_sr[44]_i_9_n_0 ),
        .I3(left_sr1[0]),
        .I4(left_sr1[1]),
        .I5(\left_sr[23]_i_2_n_0 ),
        .O(\left_sr[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \left_sr[17]_i_1 
       (.I0(\left_sr[33]_i_2_n_0 ),
        .I1(\left_sr[21]_i_2_n_0 ),
        .I2(\left_sr[29]_i_2_n_0 ),
        .I3(\left_sr[33]_i_3_n_0 ),
        .I4(\left_sr[17]_i_2_n_0 ),
        .I5(in_left[17]),
        .O(\left_sr[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA880000AAF00000)) 
    \left_sr[17]_i_2 
       (.I0(\left_sr[15]_i_2_n_0 ),
        .I1(left_sr1[0]),
        .I2(\left_sr[23]_i_2_n_0 ),
        .I3(left_sr1[2]),
        .I4(\left_sr[44]_i_9_n_0 ),
        .I5(left_sr1[1]),
        .O(\left_sr[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \left_sr[18]_i_1 
       (.I0(\left_sr[21]_i_2_n_0 ),
        .I1(\left_sr[42]_i_2_n_0 ),
        .I2(\left_sr[29]_i_2_n_0 ),
        .I3(\left_sr[42]_i_3_n_0 ),
        .I4(\left_sr[18]_i_2_n_0 ),
        .I5(in_left[18]),
        .O(\left_sr[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0A000C0C0C0)) 
    \left_sr[18]_i_2 
       (.I0(\left_sr[15]_i_2_n_0 ),
        .I1(\left_sr[23]_i_2_n_0 ),
        .I2(\left_sr[44]_i_9_n_0 ),
        .I3(left_sr1[1]),
        .I4(left_sr1[0]),
        .I5(left_sr1[2]),
        .O(\left_sr[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \left_sr[19]_i_1 
       (.I0(\left_sr[21]_i_2_n_0 ),
        .I1(\left_sr[35]_i_2_n_0 ),
        .I2(\left_sr[29]_i_2_n_0 ),
        .I3(\left_sr[35]_i_3_n_0 ),
        .I4(\left_sr[19]_i_2_n_0 ),
        .I5(in_left[19]),
        .O(\left_sr[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA800FF00A8000000)) 
    \left_sr[19]_i_2 
       (.I0(\left_sr[15]_i_2_n_0 ),
        .I1(left_sr1[0]),
        .I2(left_sr1[1]),
        .I3(\left_sr[44]_i_9_n_0 ),
        .I4(left_sr1[2]),
        .I5(\left_sr[23]_i_2_n_0 ),
        .O(\left_sr[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFFFFF08000000)) 
    \left_sr[1]_i_1 
       (.I0(\left_sr[33]_i_3_n_0 ),
        .I1(\left_sr[13]_i_2_n_0 ),
        .I2(left_sr1[1]),
        .I3(\left_sr[3]_i_2_n_0 ),
        .I4(\left_sr[7]_i_2_n_0 ),
        .I5(in_left[1]),
        .O(\left_sr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \left_sr[20]_i_1 
       (.I0(\left_sr[21]_i_2_n_0 ),
        .I1(\left_sr[44]_i_5_n_0 ),
        .I2(\left_sr[44]_i_2_n_0 ),
        .I3(\left_sr[29]_i_2_n_0 ),
        .I4(\left_sr[20]_i_2_n_0 ),
        .I5(in_left[20]),
        .O(\left_sr[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BFF000088000000)) 
    \left_sr[20]_i_2 
       (.I0(\left_sr[15]_i_2_n_0 ),
        .I1(left_sr1[1]),
        .I2(left_sr1[0]),
        .I3(left_sr1[2]),
        .I4(\left_sr[44]_i_9_n_0 ),
        .I5(\left_sr[23]_i_2_n_0 ),
        .O(\left_sr[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \left_sr[21]_i_1 
       (.I0(\left_sr[21]_i_2_n_0 ),
        .I1(\left_sr[37]_i_3_n_0 ),
        .I2(\left_sr[37]_i_4_n_0 ),
        .I3(\left_sr[29]_i_2_n_0 ),
        .I4(\left_sr[21]_i_3_n_0 ),
        .I5(in_left[21]),
        .O(\left_sr[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \left_sr[21]_i_2 
       (.I0(left_sr1[4]),
        .I1(left_sr1[5]),
        .I2(left_sr1[3]),
        .O(\left_sr[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8FFF000080000000)) 
    \left_sr[21]_i_3 
       (.I0(\left_sr[15]_i_2_n_0 ),
        .I1(left_sr1[0]),
        .I2(left_sr1[1]),
        .I3(left_sr1[2]),
        .I4(\left_sr[44]_i_9_n_0 ),
        .I5(\left_sr[23]_i_2_n_0 ),
        .O(\left_sr[21]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \left_sr[22]_i_1 
       (.I0(\left_sr[29]_i_2_n_0 ),
        .I1(\left_sr[38]_i_2_n_0 ),
        .I2(\left_sr[23]_i_2_n_0 ),
        .I3(\left_sr[38]_i_3_n_0 ),
        .I4(in_left[22]),
        .O(\left_sr[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \left_sr[23]_i_1 
       (.I0(\left_sr[29]_i_2_n_0 ),
        .I1(\left_sr[39]_i_3_n_0 ),
        .I2(\left_sr[23]_i_2_n_0 ),
        .I3(\left_sr[39]_i_5_n_0 ),
        .I4(in_left[23]),
        .O(\left_sr[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \left_sr[23]_i_2 
       (.I0(left_sr1[3]),
        .I1(\left_sr[43]_i_5_n_0 ),
        .I2(left_sr1[5]),
        .I3(left_sr1[4]),
        .O(\left_sr[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \left_sr[24]_i_1 
       (.I0(left_sr0[24]),
        .I1(left_sr1[4]),
        .I2(left_sr1[5]),
        .I3(\left_sr[40]_i_3_n_0 ),
        .I4(\left_sr[43]_i_5_n_0 ),
        .I5(in_left[24]),
        .O(\left_sr[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0088000000F00000)) 
    \left_sr[24]_i_2 
       (.I0(\left_sr[0]_i_2_n_0 ),
        .I1(\ui_r_reg_n_0_[0] ),
        .I2(\left_sr[32]_i_2_n_0 ),
        .I3(left_sr1[5]),
        .I4(left_sr1[4]),
        .I5(left_sr1[3]),
        .O(left_sr0[24]));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \left_sr[25]_i_1 
       (.I0(left_sr0[25]),
        .I1(left_sr1[4]),
        .I2(left_sr1[5]),
        .I3(\left_sr[41]_i_3_n_0 ),
        .I4(\left_sr[43]_i_5_n_0 ),
        .I5(in_left[25]),
        .O(\left_sr[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h0A000C00)) 
    \left_sr[25]_i_2 
       (.I0(\left_sr[33]_i_3_n_0 ),
        .I1(\left_sr[33]_i_2_n_0 ),
        .I2(left_sr1[5]),
        .I3(left_sr1[4]),
        .I4(left_sr1[3]),
        .O(left_sr0[25]));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \left_sr[26]_i_1 
       (.I0(\left_sr[29]_i_2_n_0 ),
        .I1(\left_sr[42]_i_2_n_0 ),
        .I2(\left_sr[37]_i_2_n_0 ),
        .I3(\left_sr[42]_i_3_n_0 ),
        .I4(\left_sr[26]_i_2_n_0 ),
        .I5(in_left[26]),
        .O(\left_sr[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0A000C0C0C0)) 
    \left_sr[26]_i_2 
       (.I0(\left_sr[23]_i_2_n_0 ),
        .I1(\left_sr[31]_i_2_n_0 ),
        .I2(\left_sr[44]_i_9_n_0 ),
        .I3(left_sr1[1]),
        .I4(left_sr1[0]),
        .I5(left_sr1[2]),
        .O(\left_sr[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \left_sr[27]_i_1 
       (.I0(left_sr0[27]),
        .I1(left_sr1[4]),
        .I2(left_sr1[5]),
        .I3(\left_sr[43]_i_4_n_0 ),
        .I4(\left_sr[43]_i_5_n_0 ),
        .I5(in_left[27]),
        .O(\left_sr[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h30200020)) 
    \left_sr[27]_i_2 
       (.I0(\left_sr[35]_i_2_n_0 ),
        .I1(left_sr1[5]),
        .I2(left_sr1[4]),
        .I3(left_sr1[3]),
        .I4(\left_sr[35]_i_3_n_0 ),
        .O(left_sr0[27]));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \left_sr[28]_i_1 
       (.I0(\left_sr[44]_i_2_n_0 ),
        .I1(\left_sr[37]_i_2_n_0 ),
        .I2(\left_sr[29]_i_2_n_0 ),
        .I3(\left_sr[44]_i_5_n_0 ),
        .I4(\left_sr[28]_i_2_n_0 ),
        .I5(in_left[28]),
        .O(\left_sr[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF000CC004400CC00)) 
    \left_sr[28]_i_2 
       (.I0(left_sr1[0]),
        .I1(\left_sr[31]_i_2_n_0 ),
        .I2(\left_sr[23]_i_2_n_0 ),
        .I3(\left_sr[44]_i_9_n_0 ),
        .I4(left_sr1[2]),
        .I5(left_sr1[1]),
        .O(\left_sr[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \left_sr[29]_i_1 
       (.I0(\left_sr[37]_i_4_n_0 ),
        .I1(\left_sr[37]_i_2_n_0 ),
        .I2(\left_sr[29]_i_2_n_0 ),
        .I3(\left_sr[37]_i_3_n_0 ),
        .I4(\left_sr[29]_i_3_n_0 ),
        .I5(in_left[29]),
        .O(\left_sr[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \left_sr[29]_i_2 
       (.I0(left_sr1[5]),
        .I1(left_sr1[4]),
        .I2(left_sr1[3]),
        .O(\left_sr[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC0A000A0A0A0A0A0)) 
    \left_sr[29]_i_3 
       (.I0(\left_sr[31]_i_2_n_0 ),
        .I1(\left_sr[23]_i_2_n_0 ),
        .I2(\left_sr[44]_i_9_n_0 ),
        .I3(left_sr1[2]),
        .I4(left_sr1[0]),
        .I5(left_sr1[1]),
        .O(\left_sr[29]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \left_sr[2]_i_1 
       (.I0(\left_sr[42]_i_3_n_0 ),
        .I1(\left_sr[13]_i_2_n_0 ),
        .I2(\left_sr[2]_i_2_n_0 ),
        .I3(\left_sr[7]_i_2_n_0 ),
        .I4(in_left[2]),
        .O(\left_sr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \left_sr[2]_i_2 
       (.I0(\left_sr[44]_i_9_n_0 ),
        .I1(left_sr1[1]),
        .I2(left_sr1[0]),
        .I3(left_sr1[2]),
        .O(\left_sr[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \left_sr[30]_i_1 
       (.I0(\left_sr[38]_i_2_n_0 ),
        .I1(\left_sr[37]_i_2_n_0 ),
        .I2(\left_sr[31]_i_2_n_0 ),
        .I3(\left_sr[38]_i_3_n_0 ),
        .I4(in_left[30]),
        .O(\left_sr[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \left_sr[31]_i_1 
       (.I0(\left_sr[39]_i_3_n_0 ),
        .I1(\left_sr[37]_i_2_n_0 ),
        .I2(\left_sr[31]_i_2_n_0 ),
        .I3(\left_sr[39]_i_5_n_0 ),
        .I4(in_left[31]),
        .O(\left_sr[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \left_sr[31]_i_2 
       (.I0(left_sr1[3]),
        .I1(left_sr1[4]),
        .I2(left_sr1[5]),
        .I3(\left_sr[43]_i_5_n_0 ),
        .O(\left_sr[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \left_sr[32]_i_1 
       (.I0(\left_sr[32]_i_2_n_0 ),
        .I1(\left_sr[37]_i_2_n_0 ),
        .I2(\left_sr[39]_i_2_n_0 ),
        .I3(\left_sr[32]_i_3_n_0 ),
        .I4(\left_sr[32]_i_4_n_0 ),
        .I5(in_left[32]),
        .O(\left_sr[32]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF222)) 
    \left_sr[32]_i_2 
       (.I0(\left_sr[32]_i_5_n_0 ),
        .I1(left_sr1[2]),
        .I2(\left_sr[32]_i_6_n_0 ),
        .I3(\ui_r_reg_n_0_[1] ),
        .I4(\left_sr[32]_i_7_n_0 ),
        .O(\left_sr[32]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \left_sr[32]_i_3 
       (.I0(left_sr1[1]),
        .I1(left_sr1[0]),
        .I2(\left_sr[3]_i_2_n_0 ),
        .I3(\ui_r_reg_n_0_[0] ),
        .O(\left_sr[32]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA0A080B0A0A08080)) 
    \left_sr[32]_i_4 
       (.I0(\left_sr[31]_i_2_n_0 ),
        .I1(left_sr1[2]),
        .I2(\left_sr[44]_i_9_n_0 ),
        .I3(left_sr1[0]),
        .I4(left_sr1[1]),
        .I5(\left_sr[39]_i_4_n_0 ),
        .O(\left_sr[32]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'hC8400000)) 
    \left_sr[32]_i_5 
       (.I0(left_sr1[0]),
        .I1(\left_sr[44]_i_9_n_0 ),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(left_sr1[1]),
        .O(\left_sr[32]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \left_sr[32]_i_6 
       (.I0(\left_sr[42]_i_7_n_0 ),
        .I1(left_sr1[0]),
        .I2(left_sr1[1]),
        .O(\left_sr[32]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000C0C0A0A0F000)) 
    \left_sr[32]_i_7 
       (.I0(\ui_r_reg_n_0_[3] ),
        .I1(\ui_r_reg_n_0_[2] ),
        .I2(\left_sr[42]_i_7_n_0 ),
        .I3(p_0_in[0]),
        .I4(left_sr1[0]),
        .I5(left_sr1[1]),
        .O(\left_sr[32]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \left_sr[33]_i_1 
       (.I0(\left_sr[33]_i_2_n_0 ),
        .I1(\left_sr[37]_i_2_n_0 ),
        .I2(\left_sr[39]_i_2_n_0 ),
        .I3(\left_sr[33]_i_3_n_0 ),
        .I4(\left_sr[33]_i_4_n_0 ),
        .I5(in_left[33]),
        .O(\left_sr[33]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFC8888888)) 
    \left_sr[33]_i_2 
       (.I0(\left_sr[33]_i_5_n_0 ),
        .I1(\left_sr[42]_i_7_n_0 ),
        .I2(left_sr1[1]),
        .I3(left_sr1[0]),
        .I4(\ui_r_reg_n_0_[2] ),
        .I5(\left_sr[33]_i_6_n_0 ),
        .O(\left_sr[33]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000044005000)) 
    \left_sr[33]_i_3 
       (.I0(left_sr1[1]),
        .I1(\ui_r_reg_n_0_[0] ),
        .I2(\ui_r_reg_n_0_[1] ),
        .I3(\left_sr[44]_i_9_n_0 ),
        .I4(left_sr1[0]),
        .I5(left_sr1[2]),
        .O(\left_sr[33]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAA880000AAF00000)) 
    \left_sr[33]_i_4 
       (.I0(\left_sr[31]_i_2_n_0 ),
        .I1(left_sr1[0]),
        .I2(\left_sr[39]_i_4_n_0 ),
        .I3(left_sr1[2]),
        .I4(\left_sr[44]_i_9_n_0 ),
        .I5(left_sr1[1]),
        .O(\left_sr[33]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'h22C0)) 
    \left_sr[33]_i_5 
       (.I0(\ui_r_reg_n_0_[3] ),
        .I1(left_sr1[0]),
        .I2(p_0_in[0]),
        .I3(left_sr1[1]),
        .O(\left_sr[33]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h202000000000C000)) 
    \left_sr[33]_i_6 
       (.I0(p_0_in[2]),
        .I1(left_sr1[2]),
        .I2(\left_sr[44]_i_9_n_0 ),
        .I3(p_0_in[1]),
        .I4(left_sr1[0]),
        .I5(left_sr1[1]),
        .O(\left_sr[33]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \left_sr[34]_i_1 
       (.I0(\left_sr[37]_i_2_n_0 ),
        .I1(\left_sr[42]_i_2_n_0 ),
        .I2(\left_sr[39]_i_2_n_0 ),
        .I3(\left_sr[42]_i_3_n_0 ),
        .I4(\left_sr[34]_i_2_n_0 ),
        .I5(in_left[34]),
        .O(\left_sr[34]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0A000C0C0C0)) 
    \left_sr[34]_i_2 
       (.I0(\left_sr[31]_i_2_n_0 ),
        .I1(\left_sr[39]_i_4_n_0 ),
        .I2(\left_sr[44]_i_9_n_0 ),
        .I3(left_sr1[1]),
        .I4(left_sr1[0]),
        .I5(left_sr1[2]),
        .O(\left_sr[34]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \left_sr[35]_i_1 
       (.I0(\left_sr[37]_i_2_n_0 ),
        .I1(\left_sr[35]_i_2_n_0 ),
        .I2(\left_sr[39]_i_2_n_0 ),
        .I3(\left_sr[35]_i_3_n_0 ),
        .I4(\left_sr[35]_i_4_n_0 ),
        .I5(in_left[35]),
        .O(\left_sr[35]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \left_sr[35]_i_2 
       (.I0(\left_sr[39]_i_7_n_0 ),
        .I1(left_sr1[2]),
        .O(\left_sr[35]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \left_sr[35]_i_3 
       (.I0(\left_sr[39]_i_6_n_0 ),
        .I1(left_sr1[2]),
        .O(\left_sr[35]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA800FF00A8000000)) 
    \left_sr[35]_i_4 
       (.I0(\left_sr[31]_i_2_n_0 ),
        .I1(left_sr1[0]),
        .I2(left_sr1[1]),
        .I3(\left_sr[44]_i_9_n_0 ),
        .I4(left_sr1[2]),
        .I5(\left_sr[39]_i_4_n_0 ),
        .O(\left_sr[35]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \left_sr[36]_i_1 
       (.I0(\left_sr[37]_i_2_n_0 ),
        .I1(\left_sr[44]_i_5_n_0 ),
        .I2(\left_sr[44]_i_2_n_0 ),
        .I3(\left_sr[39]_i_2_n_0 ),
        .I4(\left_sr[36]_i_2_n_0 ),
        .I5(in_left[36]),
        .O(\left_sr[36]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BFF000088000000)) 
    \left_sr[36]_i_2 
       (.I0(\left_sr[31]_i_2_n_0 ),
        .I1(left_sr1[1]),
        .I2(left_sr1[0]),
        .I3(left_sr1[2]),
        .I4(\left_sr[44]_i_9_n_0 ),
        .I5(\left_sr[39]_i_4_n_0 ),
        .O(\left_sr[36]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \left_sr[37]_i_1 
       (.I0(\left_sr[37]_i_2_n_0 ),
        .I1(\left_sr[37]_i_3_n_0 ),
        .I2(\left_sr[37]_i_4_n_0 ),
        .I3(\left_sr[39]_i_2_n_0 ),
        .I4(\left_sr[37]_i_5_n_0 ),
        .I5(in_left[37]),
        .O(\left_sr[37]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \left_sr[37]_i_2 
       (.I0(left_sr1[5]),
        .I1(left_sr1[4]),
        .I2(left_sr1[3]),
        .O(\left_sr[37]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \left_sr[37]_i_3 
       (.I0(left_sr1[1]),
        .I1(left_sr1[0]),
        .I2(\left_sr[42]_i_7_n_0 ),
        .I3(p_0_in[2]),
        .O(\left_sr[37]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF8F888888)) 
    \left_sr[37]_i_4 
       (.I0(\left_sr[37]_i_6_n_0 ),
        .I1(left_sr1[2]),
        .I2(\left_sr[37]_i_7_n_0 ),
        .I3(\ui_r_reg_n_0_[2] ),
        .I4(\left_sr[3]_i_2_n_0 ),
        .I5(\left_sr[37]_i_8_n_0 ),
        .O(\left_sr[37]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8FFF000080000000)) 
    \left_sr[37]_i_5 
       (.I0(\left_sr[31]_i_2_n_0 ),
        .I1(left_sr1[0]),
        .I2(left_sr1[1]),
        .I3(left_sr1[2]),
        .I4(\left_sr[44]_i_9_n_0 ),
        .I5(\left_sr[39]_i_4_n_0 ),
        .O(\left_sr[37]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h0000C840)) 
    \left_sr[37]_i_6 
       (.I0(left_sr1[0]),
        .I1(\left_sr[44]_i_9_n_0 ),
        .I2(\ui_r_reg_n_0_[1] ),
        .I3(\ui_r_reg_n_0_[0] ),
        .I4(left_sr1[1]),
        .O(\left_sr[37]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \left_sr[37]_i_7 
       (.I0(left_sr1[1]),
        .I1(left_sr1[0]),
        .O(\left_sr[37]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000AA00CC00F000)) 
    \left_sr[37]_i_8 
       (.I0(\ui_r_reg_n_0_[3] ),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(\left_sr[3]_i_2_n_0 ),
        .I4(left_sr1[0]),
        .I5(left_sr1[1]),
        .O(\left_sr[37]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \left_sr[38]_i_1 
       (.I0(\left_sr[39]_i_2_n_0 ),
        .I1(\left_sr[38]_i_2_n_0 ),
        .I2(\left_sr[39]_i_4_n_0 ),
        .I3(\left_sr[38]_i_3_n_0 ),
        .I4(in_left[38]),
        .O(\left_sr[38]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \left_sr[38]_i_2 
       (.I0(\left_sr[42]_i_6_n_0 ),
        .I1(left_sr1[2]),
        .I2(\left_sr[42]_i_5_n_0 ),
        .O(\left_sr[38]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h7F00)) 
    \left_sr[38]_i_3 
       (.I0(left_sr1[0]),
        .I1(left_sr1[1]),
        .I2(left_sr1[2]),
        .I3(\left_sr[44]_i_9_n_0 ),
        .O(\left_sr[38]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \left_sr[39]_i_1 
       (.I0(\left_sr[39]_i_2_n_0 ),
        .I1(\left_sr[39]_i_3_n_0 ),
        .I2(\left_sr[39]_i_4_n_0 ),
        .I3(\left_sr[39]_i_5_n_0 ),
        .I4(in_left[39]),
        .O(\left_sr[39]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \left_sr[39]_i_2 
       (.I0(left_sr1[4]),
        .I1(left_sr1[5]),
        .I2(left_sr1[3]),
        .O(\left_sr[39]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \left_sr[39]_i_3 
       (.I0(\left_sr[39]_i_6_n_0 ),
        .I1(left_sr1[2]),
        .I2(\left_sr[39]_i_7_n_0 ),
        .O(\left_sr[39]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \left_sr[39]_i_4 
       (.I0(left_sr1[3]),
        .I1(\left_sr[43]_i_5_n_0 ),
        .I2(left_sr1[4]),
        .I3(left_sr1[5]),
        .O(\left_sr[39]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hF0E0)) 
    \left_sr[39]_i_5 
       (.I0(left_sr1[1]),
        .I1(left_sr1[0]),
        .I2(\left_sr[44]_i_9_n_0 ),
        .I3(left_sr1[2]),
        .O(\left_sr[39]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE0400000E040)) 
    \left_sr[39]_i_6 
       (.I0(left_sr1[0]),
        .I1(\ui_r_reg_n_0_[3] ),
        .I2(\left_sr[44]_i_9_n_0 ),
        .I3(\ui_r_reg_n_0_[2] ),
        .I4(left_sr1[1]),
        .I5(\left_sr[39]_i_8_n_0 ),
        .O(\left_sr[39]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF000A0A0C0C00000)) 
    \left_sr[39]_i_7 
       (.I0(p_0_in[1]),
        .I1(p_0_in[2]),
        .I2(\left_sr[44]_i_9_n_0 ),
        .I3(p_0_in[0]),
        .I4(left_sr1[0]),
        .I5(left_sr1[1]),
        .O(\left_sr[39]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hA0C0)) 
    \left_sr[39]_i_8 
       (.I0(\ui_r_reg_n_0_[0] ),
        .I1(\ui_r_reg_n_0_[1] ),
        .I2(\left_sr[44]_i_9_n_0 ),
        .I3(left_sr1[0]),
        .O(\left_sr[39]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \left_sr[3]_i_1 
       (.I0(\left_sr[35]_i_3_n_0 ),
        .I1(\left_sr[13]_i_2_n_0 ),
        .I2(\left_sr[7]_i_2_n_0 ),
        .I3(\left_sr[3]_i_2_n_0 ),
        .I4(in_left[3]),
        .O(\left_sr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \left_sr[3]_i_2 
       (.I0(left_sr1[8]),
        .I1(left_sr1[9]),
        .I2(left_sr1[6]),
        .I3(left_sr1[7]),
        .I4(left_sr1[2]),
        .O(\left_sr[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \left_sr[40]_i_1 
       (.I0(left_sr0[40]),
        .I1(left_sr1[5]),
        .I2(left_sr1[4]),
        .I3(\left_sr[40]_i_3_n_0 ),
        .I4(\left_sr[43]_i_5_n_0 ),
        .I5(in_left[40]),
        .O(\left_sr[40]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0088000000F00000)) 
    \left_sr[40]_i_2 
       (.I0(\left_sr[0]_i_2_n_0 ),
        .I1(\ui_r_reg_n_0_[0] ),
        .I2(\left_sr[32]_i_2_n_0 ),
        .I3(left_sr1[4]),
        .I4(left_sr1[5]),
        .I5(left_sr1[3]),
        .O(left_sr0[40]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h33003400)) 
    \left_sr[40]_i_3 
       (.I0(left_sr1[0]),
        .I1(left_sr1[3]),
        .I2(left_sr1[1]),
        .I3(\left_sr[44]_i_9_n_0 ),
        .I4(left_sr1[2]),
        .O(\left_sr[40]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \left_sr[41]_i_1 
       (.I0(left_sr0[41]),
        .I1(left_sr1[5]),
        .I2(left_sr1[4]),
        .I3(\left_sr[41]_i_3_n_0 ),
        .I4(\left_sr[43]_i_5_n_0 ),
        .I5(in_left[41]),
        .O(\left_sr[41]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h0A000C00)) 
    \left_sr[41]_i_2 
       (.I0(\left_sr[33]_i_3_n_0 ),
        .I1(\left_sr[33]_i_2_n_0 ),
        .I2(left_sr1[4]),
        .I3(left_sr1[5]),
        .I4(left_sr1[3]),
        .O(left_sr0[41]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h55006200)) 
    \left_sr[41]_i_3 
       (.I0(left_sr1[3]),
        .I1(left_sr1[1]),
        .I2(left_sr1[0]),
        .I3(\left_sr[44]_i_9_n_0 ),
        .I4(left_sr1[2]),
        .O(\left_sr[41]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC808FFFFC8080000)) 
    \left_sr[42]_i_1 
       (.I0(\left_sr[42]_i_2_n_0 ),
        .I1(\left_sr[44]_i_3_n_0 ),
        .I2(left_sr1[3]),
        .I3(\left_sr[42]_i_3_n_0 ),
        .I4(\left_sr[42]_i_4_n_0 ),
        .I5(in_left[42]),
        .O(\left_sr[42]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \left_sr[42]_i_2 
       (.I0(\left_sr[42]_i_5_n_0 ),
        .I1(left_sr1[2]),
        .O(\left_sr[42]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \left_sr[42]_i_3 
       (.I0(\left_sr[42]_i_6_n_0 ),
        .I1(left_sr1[2]),
        .O(\left_sr[42]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000C0880000)) 
    \left_sr[42]_i_4 
       (.I0(\left_sr[42]_i_7_n_0 ),
        .I1(\left_sr[43]_i_5_n_0 ),
        .I2(\left_sr[2]_i_2_n_0 ),
        .I3(left_sr1[3]),
        .I4(left_sr1[5]),
        .I5(left_sr1[4]),
        .O(\left_sr[42]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF000C0C0AAAAAAAA)) 
    \left_sr[42]_i_5 
       (.I0(\left_sr[42]_i_8_n_0 ),
        .I1(p_0_in[0]),
        .I2(\left_sr[44]_i_9_n_0 ),
        .I3(\ui_r_reg_n_0_[3] ),
        .I4(left_sr1[0]),
        .I5(left_sr1[1]),
        .O(\left_sr[42]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0C000C00FA000A00)) 
    \left_sr[42]_i_6 
       (.I0(\ui_r_reg_n_0_[2] ),
        .I1(\ui_r_reg_n_0_[0] ),
        .I2(left_sr1[0]),
        .I3(\left_sr[44]_i_9_n_0 ),
        .I4(\ui_r_reg_n_0_[1] ),
        .I5(left_sr1[1]),
        .O(\left_sr[42]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \left_sr[42]_i_7 
       (.I0(left_sr1[2]),
        .I1(left_sr1[8]),
        .I2(left_sr1[9]),
        .I3(left_sr1[6]),
        .I4(left_sr1[7]),
        .O(\left_sr[42]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hA0C0)) 
    \left_sr[42]_i_8 
       (.I0(p_0_in[1]),
        .I1(p_0_in[2]),
        .I2(\left_sr[44]_i_9_n_0 ),
        .I3(left_sr1[0]),
        .O(\left_sr[42]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \left_sr[43]_i_1 
       (.I0(left_sr0[43]),
        .I1(left_sr1[5]),
        .I2(left_sr1[4]),
        .I3(\left_sr[43]_i_4_n_0 ),
        .I4(\left_sr[43]_i_5_n_0 ),
        .I5(in_left[43]),
        .O(\left_sr[43]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1171EE8E)) 
    \left_sr[43]_i_10 
       (.I0(\left_sr[44]_i_16_n_0 ),
        .I1(ph[3]),
        .I2(n[2]),
        .I3(ph[2]),
        .I4(ph[4]),
        .O(\left_sr[43]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h2DD2D22D)) 
    \left_sr[43]_i_11 
       (.I0(n[2]),
        .I1(ph[2]),
        .I2(ph[3]),
        .I3(\left_sr[44]_i_16_n_0 ),
        .I4(\left_sr[43]_i_7_n_0 ),
        .O(\left_sr[43]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \left_sr[43]_i_12 
       (.I0(A[2]),
        .I1(\left_sr[43]_i_18_n_0 ),
        .O(\left_sr[43]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h99696696)) 
    \left_sr[43]_i_13 
       (.I0(n[1]),
        .I1(ph[1]),
        .I2(ph[0]),
        .I3(n[0]),
        .I4(\left_sr[43]_i_19_n_0 ),
        .O(\left_sr[43]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0010110111010020)) 
    \left_sr[43]_i_14 
       (.I0(ph[4]),
        .I1(ph[5]),
        .I2(n[2]),
        .I3(ph[2]),
        .I4(ph[3]),
        .I5(\left_sr[44]_i_16_n_0 ),
        .O(\left_sr[43]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \left_sr[43]_i_15 
       (.I0(n[0]),
        .I1(ph[0]),
        .O(\left_sr[43]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'h4BB4)) 
    \left_sr[43]_i_16 
       (.I0(n[0]),
        .I1(ph[0]),
        .I2(ph[1]),
        .I3(n[1]),
        .O(A[1]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \left_sr[43]_i_17 
       (.I0(ph[2]),
        .I1(n[2]),
        .O(\left_sr[43]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h00101055FFEFEFAA)) 
    \left_sr[43]_i_18 
       (.I0(ph[4]),
        .I1(ph[2]),
        .I2(n[2]),
        .I3(ph[3]),
        .I4(\left_sr[44]_i_16_n_0 ),
        .I5(ph[5]),
        .O(\left_sr[43]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h1171EE8E)) 
    \left_sr[43]_i_19 
       (.I0(\left_sr[44]_i_16_n_0 ),
        .I1(ph[3]),
        .I2(n[2]),
        .I3(ph[2]),
        .I4(ph[4]),
        .O(\left_sr[43]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h30200020)) 
    \left_sr[43]_i_2 
       (.I0(\left_sr[35]_i_2_n_0 ),
        .I1(left_sr1[4]),
        .I2(left_sr1[5]),
        .I3(left_sr1[3]),
        .I4(\left_sr[35]_i_3_n_0 ),
        .O(left_sr0[43]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h0E00F000)) 
    \left_sr[43]_i_4 
       (.I0(left_sr1[0]),
        .I1(left_sr1[1]),
        .I2(left_sr1[3]),
        .I3(\left_sr[44]_i_9_n_0 ),
        .I4(left_sr1[2]),
        .O(\left_sr[43]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000808080808080)) 
    \left_sr[43]_i_5 
       (.I0(\up_edge[6]_i_5_n_0 ),
        .I1(\left_sr[43]_i_7_n_0 ),
        .I2(\left_sr[43]_i_14_n_0 ),
        .I3(\left_sr[43]_i_15_n_0 ),
        .I4(A[2]),
        .I5(A[1]),
        .O(\left_sr[43]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAA9A9A55)) 
    \left_sr[43]_i_6 
       (.I0(ph[4]),
        .I1(ph[2]),
        .I2(n[2]),
        .I3(ph[3]),
        .I4(\left_sr[44]_i_16_n_0 ),
        .O(A[4]));
  LUT6 #(
    .INIT(64'h0F0F0F1E0F1E1E1E)) 
    \left_sr[43]_i_7 
       (.I0(ph[4]),
        .I1(ph[5]),
        .I2(ph[6]),
        .I3(\left_sr[43]_i_17_n_0 ),
        .I4(ph[3]),
        .I5(\left_sr[44]_i_16_n_0 ),
        .O(\left_sr[43]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAEF751085108AEF7)) 
    \left_sr[43]_i_8 
       (.I0(ph[1]),
        .I1(ph[0]),
        .I2(n[0]),
        .I3(n[1]),
        .I4(n[2]),
        .I5(ph[2]),
        .O(A[2]));
  LUT4 #(
    .INIT(16'h4BB4)) 
    \left_sr[43]_i_9 
       (.I0(n[0]),
        .I1(ph[0]),
        .I2(ph[1]),
        .I3(n[1]),
        .O(\left_sr[43]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h8C80FFFF8C800000)) 
    \left_sr[44]_i_1 
       (.I0(\left_sr[44]_i_2_n_0 ),
        .I1(\left_sr[44]_i_3_n_0 ),
        .I2(left_sr1[3]),
        .I3(\left_sr[44]_i_5_n_0 ),
        .I4(\left_sr[44]_i_6_n_0 ),
        .I5(in_left[44]),
        .O(\left_sr[44]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \left_sr[44]_i_10 
       (.I0(ph[0]),
        .I1(n[0]),
        .O(A[0]));
  LUT6 #(
    .INIT(64'h9969669666969969)) 
    \left_sr[44]_i_11 
       (.I0(ph[0]),
        .I1(n[0]),
        .I2(n[2]),
        .I3(ph[2]),
        .I4(ph[3]),
        .I5(\left_sr[44]_i_16_n_0 ),
        .O(\left_sr[44]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h6669666696669696)) 
    \left_sr[44]_i_12 
       (.I0(ph[2]),
        .I1(n[2]),
        .I2(n[1]),
        .I3(n[0]),
        .I4(ph[0]),
        .I5(ph[1]),
        .O(\left_sr[44]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h9969)) 
    \left_sr[44]_i_13 
       (.I0(n[1]),
        .I1(ph[1]),
        .I2(ph[0]),
        .I3(n[0]),
        .O(\left_sr[44]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \left_sr[44]_i_14 
       (.I0(ph[0]),
        .I1(n[0]),
        .O(\left_sr[44]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \left_sr[44]_i_15 
       (.I0(left_sr1[7]),
        .I1(left_sr1[6]),
        .I2(left_sr1[9]),
        .I3(left_sr1[8]),
        .I4(left_sr1[2]),
        .I5(left_sr1[1]),
        .O(\left_sr[44]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h3C7D3C3C143C1414)) 
    \left_sr[44]_i_16 
       (.I0(n[1]),
        .I1(n[2]),
        .I2(ph[2]),
        .I3(n[0]),
        .I4(ph[0]),
        .I5(ph[1]),
        .O(\left_sr[44]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hBABABAAAAABAAAAA)) 
    \left_sr[44]_i_2 
       (.I0(\left_sr[44]_i_7_n_0 ),
        .I1(\left_sr[44]_i_8_n_0 ),
        .I2(\left_sr[44]_i_9_n_0 ),
        .I3(left_sr1[2]),
        .I4(p_0_in[0]),
        .I5(\ui_r_reg_n_0_[0] ),
        .O(\left_sr[44]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \left_sr[44]_i_3 
       (.I0(left_sr1[5]),
        .I1(left_sr1[4]),
        .O(\left_sr[44]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8800A00000000000)) 
    \left_sr[44]_i_5 
       (.I0(left_sr1[1]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\left_sr[44]_i_9_n_0 ),
        .I4(left_sr1[0]),
        .I5(left_sr1[2]),
        .O(\left_sr[44]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00B0000000800000)) 
    \left_sr[44]_i_6 
       (.I0(\left_sr[4]_i_2_n_0 ),
        .I1(left_sr1[3]),
        .I2(\left_sr[43]_i_5_n_0 ),
        .I3(left_sr1[4]),
        .I4(left_sr1[5]),
        .I5(\left_sr[44]_i_15_n_0 ),
        .O(\left_sr[44]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h88CCC0008800C000)) 
    \left_sr[44]_i_7 
       (.I0(\ui_r_reg_n_0_[1] ),
        .I1(\left_sr[3]_i_2_n_0 ),
        .I2(\ui_r_reg_n_0_[3] ),
        .I3(left_sr1[0]),
        .I4(left_sr1[1]),
        .I5(\ui_r_reg_n_0_[2] ),
        .O(\left_sr[44]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \left_sr[44]_i_8 
       (.I0(left_sr1[1]),
        .I1(left_sr1[0]),
        .O(\left_sr[44]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \left_sr[44]_i_9 
       (.I0(left_sr1[7]),
        .I1(left_sr1[6]),
        .I2(left_sr1[9]),
        .I3(left_sr1[8]),
        .O(\left_sr[44]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \left_sr[4]_i_1 
       (.I0(\left_sr[13]_i_2_n_0 ),
        .I1(\left_sr[44]_i_2_n_0 ),
        .I2(\left_sr[7]_i_2_n_0 ),
        .I3(\left_sr[4]_i_2_n_0 ),
        .I4(in_left[4]),
        .O(\left_sr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'h1F00)) 
    \left_sr[4]_i_2 
       (.I0(left_sr1[1]),
        .I1(left_sr1[0]),
        .I2(left_sr1[2]),
        .I3(\left_sr[44]_i_9_n_0 ),
        .O(\left_sr[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \left_sr[5]_i_1 
       (.I0(\left_sr[13]_i_2_n_0 ),
        .I1(\left_sr[37]_i_4_n_0 ),
        .I2(\left_sr[7]_i_2_n_0 ),
        .I3(\left_sr[5]_i_2_n_0 ),
        .I4(in_left[5]),
        .O(\left_sr[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000007)) 
    \left_sr[5]_i_2 
       (.I0(left_sr1[1]),
        .I1(left_sr1[2]),
        .I2(left_sr1[7]),
        .I3(left_sr1[6]),
        .I4(left_sr1[9]),
        .I5(left_sr1[8]),
        .O(\left_sr[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA9A995A9)) 
    \left_sr[5]_i_4 
       (.I0(ph[5]),
        .I1(\left_sr[44]_i_16_n_0 ),
        .I2(ph[3]),
        .I3(n[2]),
        .I4(ph[2]),
        .I5(ph[4]),
        .O(A[5]));
  LUT6 #(
    .INIT(64'h00101055FFEFEFAA)) 
    \left_sr[5]_i_5 
       (.I0(ph[4]),
        .I1(ph[2]),
        .I2(n[2]),
        .I3(ph[3]),
        .I4(\left_sr[44]_i_16_n_0 ),
        .I5(ph[5]),
        .O(\left_sr[5]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \left_sr[6]_i_1 
       (.I0(\left_sr[13]_i_2_n_0 ),
        .I1(\left_sr[38]_i_2_n_0 ),
        .I2(\left_sr[7]_i_2_n_0 ),
        .I3(\left_sr[38]_i_3_n_0 ),
        .I4(in_left[6]),
        .O(\left_sr[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \left_sr[7]_i_1 
       (.I0(\left_sr[13]_i_2_n_0 ),
        .I1(\left_sr[39]_i_3_n_0 ),
        .I2(\left_sr[7]_i_2_n_0 ),
        .I3(\left_sr[39]_i_5_n_0 ),
        .I4(in_left[7]),
        .O(\left_sr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \left_sr[7]_i_2 
       (.I0(left_sr1[3]),
        .I1(\left_sr[43]_i_5_n_0 ),
        .I2(left_sr1[4]),
        .I3(left_sr1[5]),
        .O(\left_sr[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    \left_sr[8]_i_1 
       (.I0(left_sr0[8]),
        .I1(left_sr1[5]),
        .I2(left_sr1[4]),
        .I3(\left_sr[40]_i_3_n_0 ),
        .I4(\left_sr[43]_i_5_n_0 ),
        .I5(in_left[8]),
        .O(\left_sr[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000088000000F0)) 
    \left_sr[8]_i_2 
       (.I0(\left_sr[0]_i_2_n_0 ),
        .I1(\ui_r_reg_n_0_[0] ),
        .I2(\left_sr[32]_i_2_n_0 ),
        .I3(left_sr1[4]),
        .I4(left_sr1[5]),
        .I5(left_sr1[3]),
        .O(left_sr0[8]));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    \left_sr[9]_i_1 
       (.I0(left_sr0[9]),
        .I1(left_sr1[5]),
        .I2(left_sr1[4]),
        .I3(\left_sr[41]_i_3_n_0 ),
        .I4(\left_sr[43]_i_5_n_0 ),
        .I5(in_left[9]),
        .O(\left_sr[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h000A000C)) 
    \left_sr[9]_i_2 
       (.I0(\left_sr[33]_i_3_n_0 ),
        .I1(\left_sr[33]_i_2_n_0 ),
        .I2(left_sr1[4]),
        .I3(left_sr1[5]),
        .I4(left_sr1[3]),
        .O(left_sr0[9]));
  FDRE \left_sr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\left_sr[0]_i_1_n_0 ),
        .Q(in_left[0]),
        .R(1'b0));
  FDRE \left_sr_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\left_sr[10]_i_1_n_0 ),
        .Q(in_left[10]),
        .R(1'b0));
  FDRE \left_sr_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\left_sr[11]_i_1_n_0 ),
        .Q(in_left[11]),
        .R(1'b0));
  FDRE \left_sr_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\left_sr[12]_i_1_n_0 ),
        .Q(in_left[12]),
        .R(1'b0));
  FDRE \left_sr_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\left_sr[13]_i_1_n_0 ),
        .Q(in_left[13]),
        .R(1'b0));
  FDRE \left_sr_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\left_sr[14]_i_1_n_0 ),
        .Q(in_left[14]),
        .R(1'b0));
  FDRE \left_sr_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\left_sr[15]_i_1_n_0 ),
        .Q(in_left[15]),
        .R(1'b0));
  FDRE \left_sr_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\left_sr[16]_i_1_n_0 ),
        .Q(in_left[16]),
        .R(1'b0));
  FDRE \left_sr_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\left_sr[17]_i_1_n_0 ),
        .Q(in_left[17]),
        .R(1'b0));
  FDRE \left_sr_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\left_sr[18]_i_1_n_0 ),
        .Q(in_left[18]),
        .R(1'b0));
  FDRE \left_sr_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\left_sr[19]_i_1_n_0 ),
        .Q(in_left[19]),
        .R(1'b0));
  FDRE \left_sr_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\left_sr[1]_i_1_n_0 ),
        .Q(in_left[1]),
        .R(1'b0));
  FDRE \left_sr_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\left_sr[20]_i_1_n_0 ),
        .Q(in_left[20]),
        .R(1'b0));
  FDRE \left_sr_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\left_sr[21]_i_1_n_0 ),
        .Q(in_left[21]),
        .R(1'b0));
  FDRE \left_sr_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\left_sr[22]_i_1_n_0 ),
        .Q(in_left[22]),
        .R(1'b0));
  FDRE \left_sr_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\left_sr[23]_i_1_n_0 ),
        .Q(in_left[23]),
        .R(1'b0));
  FDRE \left_sr_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\left_sr[24]_i_1_n_0 ),
        .Q(in_left[24]),
        .R(1'b0));
  FDRE \left_sr_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\left_sr[25]_i_1_n_0 ),
        .Q(in_left[25]),
        .R(1'b0));
  FDRE \left_sr_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\left_sr[26]_i_1_n_0 ),
        .Q(in_left[26]),
        .R(1'b0));
  FDRE \left_sr_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\left_sr[27]_i_1_n_0 ),
        .Q(in_left[27]),
        .R(1'b0));
  FDRE \left_sr_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\left_sr[28]_i_1_n_0 ),
        .Q(in_left[28]),
        .R(1'b0));
  FDRE \left_sr_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\left_sr[29]_i_1_n_0 ),
        .Q(in_left[29]),
        .R(1'b0));
  FDRE \left_sr_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\left_sr[2]_i_1_n_0 ),
        .Q(in_left[2]),
        .R(1'b0));
  FDRE \left_sr_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\left_sr[30]_i_1_n_0 ),
        .Q(in_left[30]),
        .R(1'b0));
  FDRE \left_sr_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\left_sr[31]_i_1_n_0 ),
        .Q(in_left[31]),
        .R(1'b0));
  FDRE \left_sr_reg[32] 
       (.C(clk),
        .CE(1'b1),
        .D(\left_sr[32]_i_1_n_0 ),
        .Q(in_left[32]),
        .R(1'b0));
  FDRE \left_sr_reg[33] 
       (.C(clk),
        .CE(1'b1),
        .D(\left_sr[33]_i_1_n_0 ),
        .Q(in_left[33]),
        .R(1'b0));
  FDRE \left_sr_reg[34] 
       (.C(clk),
        .CE(1'b1),
        .D(\left_sr[34]_i_1_n_0 ),
        .Q(in_left[34]),
        .R(1'b0));
  FDRE \left_sr_reg[35] 
       (.C(clk),
        .CE(1'b1),
        .D(\left_sr[35]_i_1_n_0 ),
        .Q(in_left[35]),
        .R(1'b0));
  FDRE \left_sr_reg[36] 
       (.C(clk),
        .CE(1'b1),
        .D(\left_sr[36]_i_1_n_0 ),
        .Q(in_left[36]),
        .R(1'b0));
  FDRE \left_sr_reg[37] 
       (.C(clk),
        .CE(1'b1),
        .D(\left_sr[37]_i_1_n_0 ),
        .Q(in_left[37]),
        .R(1'b0));
  FDRE \left_sr_reg[38] 
       (.C(clk),
        .CE(1'b1),
        .D(\left_sr[38]_i_1_n_0 ),
        .Q(in_left[38]),
        .R(1'b0));
  FDRE \left_sr_reg[39] 
       (.C(clk),
        .CE(1'b1),
        .D(\left_sr[39]_i_1_n_0 ),
        .Q(in_left[39]),
        .R(1'b0));
  FDRE \left_sr_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\left_sr[3]_i_1_n_0 ),
        .Q(in_left[3]),
        .R(1'b0));
  FDRE \left_sr_reg[40] 
       (.C(clk),
        .CE(1'b1),
        .D(\left_sr[40]_i_1_n_0 ),
        .Q(in_left[40]),
        .R(1'b0));
  FDRE \left_sr_reg[41] 
       (.C(clk),
        .CE(1'b1),
        .D(\left_sr[41]_i_1_n_0 ),
        .Q(in_left[41]),
        .R(1'b0));
  FDRE \left_sr_reg[42] 
       (.C(clk),
        .CE(1'b1),
        .D(\left_sr[42]_i_1_n_0 ),
        .Q(in_left[42]),
        .R(1'b0));
  FDRE \left_sr_reg[43] 
       (.C(clk),
        .CE(1'b1),
        .D(\left_sr[43]_i_1_n_0 ),
        .Q(in_left[43]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \left_sr_reg[43]_i_3 
       (.CI(\left_sr_reg[44]_i_4_n_0 ),
        .CO({\left_sr_reg[43]_i_3_n_0 ,\left_sr_reg[43]_i_3_n_1 ,\left_sr_reg[43]_i_3_n_2 ,\left_sr_reg[43]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({A[4],\left_sr[43]_i_7_n_0 ,A[2],\left_sr[43]_i_9_n_0 }),
        .O(left_sr1[7:4]),
        .S({\left_sr[43]_i_10_n_0 ,\left_sr[43]_i_11_n_0 ,\left_sr[43]_i_12_n_0 ,\left_sr[43]_i_13_n_0 }));
  FDRE \left_sr_reg[44] 
       (.C(clk),
        .CE(1'b1),
        .D(\left_sr[44]_i_1_n_0 ),
        .Q(in_left[44]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \left_sr_reg[44]_i_4 
       (.CI(1'b0),
        .CO({\left_sr_reg[44]_i_4_n_0 ,\left_sr_reg[44]_i_4_n_1 ,\left_sr_reg[44]_i_4_n_2 ,\left_sr_reg[44]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({A[0],1'b0,1'b0,1'b1}),
        .O(left_sr1[3:0]),
        .S({\left_sr[44]_i_11_n_0 ,\left_sr[44]_i_12_n_0 ,\left_sr[44]_i_13_n_0 ,\left_sr[44]_i_14_n_0 }));
  FDRE \left_sr_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\left_sr[4]_i_1_n_0 ),
        .Q(in_left[4]),
        .R(1'b0));
  FDRE \left_sr_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\left_sr[5]_i_1_n_0 ),
        .Q(in_left[5]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \left_sr_reg[5]_i_3 
       (.CI(\left_sr_reg[43]_i_3_n_0 ),
        .CO({\NLW_left_sr_reg[5]_i_3_CO_UNCONNECTED [3:1],\left_sr_reg[5]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,A[5]}),
        .O({\NLW_left_sr_reg[5]_i_3_O_UNCONNECTED [3:2],left_sr1[9:8]}),
        .S({1'b0,1'b0,\left_sr[43]_i_7_n_0 ,\left_sr[5]_i_5_n_0 }));
  FDRE \left_sr_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\left_sr[6]_i_1_n_0 ),
        .Q(in_left[6]),
        .R(1'b0));
  FDRE \left_sr_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\left_sr[7]_i_1_n_0 ),
        .Q(in_left[7]),
        .R(1'b0));
  FDRE \left_sr_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\left_sr[8]_i_1_n_0 ),
        .Q(in_left[8]),
        .R(1'b0));
  FDRE \left_sr_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\left_sr[9]_i_1_n_0 ),
        .Q(in_left[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \lmin[0]_i_1 
       (.I0(l_new[0]),
        .I1(\lmin_reg[6] ),
        .I2(b_real),
        .I3(scan),
        .O(b_real_reg_4));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \lmin[1]_i_1 
       (.I0(l_new[1]),
        .I1(\lmin_reg[6] ),
        .I2(b_real),
        .I3(scan),
        .O(b_real_reg_5));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \lmin[2]_i_1 
       (.I0(l_new[2]),
        .I1(\lmin_reg[6] ),
        .I2(b_real),
        .I3(scan),
        .O(b_real_reg_6));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \lmin[3]_i_1 
       (.I0(l_new[3]),
        .I1(\lmin_reg[6] ),
        .I2(b_real),
        .I3(scan),
        .O(b_real_reg_7));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \lmin[4]_i_1 
       (.I0(l_new[4]),
        .I1(\lmin_reg[6] ),
        .I2(b_real),
        .I3(scan),
        .O(b_real_reg_8));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \lmin[5]_i_1 
       (.I0(\lmin_reg[5] ),
        .I1(\lmin_reg[6] ),
        .I2(b_real),
        .I3(scan),
        .O(b_real_reg_9));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h7F00)) 
    \lmin[6]_i_1 
       (.I0(scan),
        .I1(b_real),
        .I2(\lmin_reg[6] ),
        .I3(load),
        .O(b_real_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    \lmin[6]_i_2 
       (.I0(load),
        .I1(\lmin_reg[6] ),
        .I2(b_real),
        .I3(scan),
        .O(b_real_reg_1));
  LUT4 #(
    .INIT(16'h8000)) 
    \lmin[6]_i_3 
       (.I0(l_new[5]),
        .I1(\lmin_reg[6] ),
        .I2(b_real),
        .I3(scan),
        .O(b_real_reg_10));
  LUT6 #(
    .INIT(64'hAAAA0000AAAA0200)) 
    \lmin[6]_i_5 
       (.I0(lmin[3]),
        .I1(O[1]),
        .I2(\l_bot[6]_i_14_0 ),
        .I3(\l_bot[6]_i_14_1 ),
        .I4(b_first),
        .I5(\l_bot_reg[6]_i_3_n_5 ),
        .O(DI));
  LUT6 #(
    .INIT(64'h00FF00EFFF00FF10)) 
    \lmin[6]_i_9 
       (.I0(O[1]),
        .I1(\l_bot[6]_i_14_0 ),
        .I2(\l_bot[6]_i_14_1 ),
        .I3(b_first),
        .I4(\l_bot_reg[6]_i_3_n_5 ),
        .I5(lmin[3]),
        .O(b_first_reg_1));
  LUT3 #(
    .INIT(8'hB8)) 
    lr_reg_0_15_0_0_i_1
       (.I0(l_new[0]),
        .I1(b_real),
        .I2(a[0]),
        .O(p_1_in[0]));
  LUT1 #(
    .INIT(2'h1)) 
    lr_reg_0_15_0_0_i_2
       (.I0(\uc_reg[3]_0 [0]),
        .O(\uc_reg[0]_6 ));
  LUT3 #(
    .INIT(8'hB8)) 
    lr_reg_0_15_1_1_i_1
       (.I0(l_new[1]),
        .I1(b_real),
        .I2(a[1]),
        .O(p_1_in[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    lr_reg_0_15_2_2_i_1
       (.I0(l_new[2]),
        .I1(b_real),
        .I2(a[2]),
        .O(p_1_in[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    lr_reg_0_15_3_3_i_1
       (.I0(l_new[3]),
        .I1(b_real),
        .I2(a[3]),
        .O(p_1_in[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    lr_reg_0_15_4_4_i_1
       (.I0(l_new[4]),
        .I1(b_real),
        .I2(a[4]),
        .O(p_1_in[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    lr_reg_0_15_6_6_i_1
       (.I0(l_new[5]),
        .I1(b_real),
        .I2(a[6]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_s0[6]_i_1 
       (.I0(\uo[7]_i_8_n_0 ),
        .I1(\m_s0[6]_i_2_n_0 ),
        .O(run_reg_1));
  LUT6 #(
    .INIT(64'h0000000006000000)) 
    \m_s0[6]_i_2 
       (.I0(\m_s0[6]_i_3_n_0 ),
        .I1(\uo[7]_i_17_n_0 ),
        .I2(\m_s2[6]_i_4_n_0 ),
        .I3(\m_s2[6]_i_3_n_0 ),
        .I4(\m_s0[6]_i_4_n_0 ),
        .I5(\m_s0[6]_i_5_n_0 ),
        .O(\m_s0[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \m_s0[6]_i_3 
       (.I0(n[2]),
        .I1(n[1]),
        .I2(n[0]),
        .O(\m_s0[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9969669666969969)) 
    \m_s0[6]_i_4 
       (.I0(\uc_reg[3]_0 [1]),
        .I1(pos[1]),
        .I2(\uc_reg[3]_0 [0]),
        .I3(pos[0]),
        .I4(n[0]),
        .I5(n[1]),
        .O(\m_s0[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hEEEBBBBE)) 
    \m_s0[6]_i_5 
       (.I0(\m_sec[7]_i_4_n_0 ),
        .I1(n[2]),
        .I2(n[0]),
        .I3(n[1]),
        .I4(\uo[7]_i_18_n_0 ),
        .O(\m_s0[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_s2[6]_i_1 
       (.I0(\uo[7]_i_8_n_0 ),
        .I1(\m_s2[6]_i_2_n_0 ),
        .O(run_reg_0));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \m_s2[6]_i_2 
       (.I0(\m_sec[7]_i_4_n_0 ),
        .I1(\m_s2[6]_i_3_n_0 ),
        .I2(\m_s2[6]_i_4_n_0 ),
        .I3(\m_s2[6]_i_5_n_0 ),
        .I4(\uo[7]_i_17_n_0 ),
        .I5(\m_s2[6]_i_6_n_0 ),
        .O(\m_s2[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0BF4)) 
    \m_s2[6]_i_3 
       (.I0(\uo[7]_i_16_n_0 ),
        .I1(uc[4]),
        .I2(uc[5]),
        .I3(uc[6]),
        .O(\m_s2[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_s2[6]_i_4 
       (.I0(n[0]),
        .I1(pos[0]),
        .I2(\uc_reg[3]_0 [0]),
        .O(\m_s2[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h69699669)) 
    \m_s2[6]_i_5 
       (.I0(n[1]),
        .I1(\uc_reg[3]_0 [1]),
        .I2(pos[1]),
        .I3(\uc_reg[3]_0 [0]),
        .I4(pos[0]),
        .O(\m_s2[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \m_s2[6]_i_6 
       (.I0(n[2]),
        .I1(\uo[7]_i_18_n_0 ),
        .O(\m_s2[6]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_sec[7]_i_1 
       (.I0(\uo[7]_i_8_n_0 ),
        .I1(\m_sec[7]_i_2_n_0 ),
        .O(run_reg_4));
  LUT6 #(
    .INIT(64'hFFFFFFFFFDDFDFFE)) 
    \m_sec[7]_i_2 
       (.I0(\uo[7]_i_17_n_0 ),
        .I1(\m_sec[7]_i_3_n_0 ),
        .I2(\uo[7]_i_18_n_0 ),
        .I3(n[2]),
        .I4(n[1]),
        .I5(\m_sec[7]_i_4_n_0 ),
        .O(\m_sec[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF69FF69FFFFFF)) 
    \m_sec[7]_i_3 
       (.I0(n[0]),
        .I1(pos[0]),
        .I2(\uc_reg[3]_0 [0]),
        .I3(\m_s2[6]_i_3_n_0 ),
        .I4(\pos_reg[0]_0 ),
        .I5(n[1]),
        .O(\m_sec[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEEAEFFFF77F7)) 
    \m_sec[7]_i_4 
       (.I0(uc[5]),
        .I1(\uo[7]_i_38_n_0 ),
        .I2(\uc_reg[3]_0 [2]),
        .I3(pos[2]),
        .I4(\uc_reg[3]_0 [3]),
        .I5(uc[4]),
        .O(\m_sec[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0800008000800800)) 
    \mw_k[6]_i_1 
       (.I0(\uo[7]_i_7_n_0 ),
        .I1(\uo[7]_i_8_n_0 ),
        .I2(\uc_reg[3]_0 [0]),
        .I3(pos[0]),
        .I4(pos[1]),
        .I5(\uc_reg[3]_0 [1]),
        .O(\uc_reg[0]_7 ));
  LUT6 #(
    .INIT(64'h0000800880080000)) 
    \mw_s[6]_i_1 
       (.I0(\uo[7]_i_7_n_0 ),
        .I1(\uo[7]_i_8_n_0 ),
        .I2(pos[0]),
        .I3(\uc_reg[3]_0 [0]),
        .I4(pos[1]),
        .I5(\uc_reg[3]_0 [1]),
        .O(\pos_reg[0]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \n[0]_i_1 
       (.I0(\ui_r_reg_n_0_[0] ),
        .I1(n0),
        .I2(n[0]),
        .O(\n[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \n[1]_i_1 
       (.I0(\ui_r_reg_n_0_[1] ),
        .I1(n0),
        .I2(n[1]),
        .O(\n[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \n[2]_i_1 
       (.I0(\ui_r_reg_n_0_[2] ),
        .I1(n0),
        .I2(n[2]),
        .O(\n[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \n[2]_i_2 
       (.I0(\up_edge[6]_i_3_n_0 ),
        .I1(ph[1]),
        .I2(ph[0]),
        .I3(ph[3]),
        .I4(ph[2]),
        .I5(\n[2]_i_3_n_0 ),
        .O(n0));
  LUT6 #(
    .INIT(64'h0000000044404444)) 
    \n[2]_i_3 
       (.I0(ftype[0]),
        .I1(ftype[1]),
        .I2(ph[1]),
        .I3(ph[0]),
        .I4(\ftype[2]_i_2_n_0 ),
        .I5(ftype[2]),
        .O(\n[2]_i_3_n_0 ));
  FDSE \n_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\n[0]_i_1_n_0 ),
        .Q(n[0]),
        .S(SR[1]));
  FDRE \n_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\n[1]_i_1_n_0 ),
        .Q(n[1]),
        .R(SR[1]));
  FDRE \n_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\n[2]_i_1_n_0 ),
        .Q(n[2]),
        .R(SR[1]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'hFF01)) 
    own_wins_i_1
       (.I0(pos[0]),
        .I1(pos[1]),
        .I2(pos[2]),
        .I3(own_wins_reg),
        .O(b_own));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \p1[6]_i_1 
       (.I0(ftype[2]),
        .I1(\ftype[2]_i_2_n_0 ),
        .I2(ph[0]),
        .I3(ph[1]),
        .I4(ftype[1]),
        .I5(ftype[0]),
        .O(\p1[6]_i_1_n_0 ));
  FDSE \p1_reg[0] 
       (.C(clk),
        .CE(\p1[6]_i_1_n_0 ),
        .D(\ui_r_reg_n_0_[0] ),
        .Q(p1[0]),
        .S(SR[1]));
  FDSE \p1_reg[1] 
       (.C(clk),
        .CE(\p1[6]_i_1_n_0 ),
        .D(\ui_r_reg_n_0_[1] ),
        .Q(p1[1]),
        .S(SR[1]));
  FDSE \p1_reg[2] 
       (.C(clk),
        .CE(\p1[6]_i_1_n_0 ),
        .D(\ui_r_reg_n_0_[2] ),
        .Q(p1[2]),
        .S(SR[1]));
  FDSE \p1_reg[3] 
       (.C(clk),
        .CE(\p1[6]_i_1_n_0 ),
        .D(\ui_r_reg_n_0_[3] ),
        .Q(p1[3]),
        .S(SR[1]));
  FDRE \p1_reg[4] 
       (.C(clk),
        .CE(\p1[6]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(p1[4]),
        .R(SR[1]));
  FDRE \p1_reg[5] 
       (.C(clk),
        .CE(\p1[6]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(p1[5]),
        .R(SR[1]));
  FDRE \p1_reg[6] 
       (.C(clk),
        .CE(\p1[6]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(p1[6]),
        .R(SR[1]));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \p2[6]_i_1 
       (.I0(ftype[2]),
        .I1(\ftype[2]_i_2_n_0 ),
        .I2(ph[0]),
        .I3(ph[1]),
        .I4(ftype[1]),
        .I5(ftype[0]),
        .O(\p2[6]_i_1_n_0 ));
  FDSE \p2_reg[0] 
       (.C(clk),
        .CE(\p2[6]_i_1_n_0 ),
        .D(\ui_r_reg_n_0_[0] ),
        .Q(p2[0]),
        .S(SR[1]));
  FDRE \p2_reg[1] 
       (.C(clk),
        .CE(\p2[6]_i_1_n_0 ),
        .D(\ui_r_reg_n_0_[1] ),
        .Q(p2[1]),
        .R(SR[1]));
  FDRE \p2_reg[2] 
       (.C(clk),
        .CE(\p2[6]_i_1_n_0 ),
        .D(\ui_r_reg_n_0_[2] ),
        .Q(p2[2]),
        .R(SR[1]));
  FDSE \p2_reg[3] 
       (.C(clk),
        .CE(\p2[6]_i_1_n_0 ),
        .D(\ui_r_reg_n_0_[3] ),
        .Q(p2[3]),
        .S(SR[1]));
  FDRE \p2_reg[4] 
       (.C(clk),
        .CE(\p2[6]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(p2[4]),
        .R(SR[1]));
  FDRE \p2_reg[5] 
       (.C(clk),
        .CE(\p2[6]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(p2[5]),
        .R(SR[1]));
  FDSE \p2_reg[6] 
       (.C(clk),
        .CE(\p2[6]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(p2[6]),
        .S(SR[1]));
  LUT2 #(
    .INIT(4'h1)) 
    \ph[0]_i_1 
       (.I0(ph[0]),
        .I1(ui_in[7]),
        .O(\ph[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \ph[1]_i_1 
       (.I0(ph[1]),
        .I1(ph[0]),
        .I2(ui_in[7]),
        .O(\ph[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \ph[2]_i_1 
       (.I0(ph[2]),
        .I1(ph[0]),
        .I2(ph[1]),
        .I3(ui_in[7]),
        .O(\ph[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \ph[3]_i_1 
       (.I0(ph[3]),
        .I1(ph[1]),
        .I2(ph[0]),
        .I3(ph[2]),
        .I4(ui_in[7]),
        .O(\ph[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \ph[4]_i_1 
       (.I0(ph[4]),
        .I1(ph[2]),
        .I2(ph[0]),
        .I3(ph[1]),
        .I4(ph[3]),
        .I5(ui_in[7]),
        .O(\ph[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \ph[5]_i_1 
       (.I0(ph[6]),
        .I1(\ph[5]_i_3_n_0 ),
        .I2(ui_in[7]),
        .O(\ph[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A6AAAAAA)) 
    \ph[5]_i_2 
       (.I0(ph[5]),
        .I1(ph[3]),
        .I2(\ph[5]_i_4_n_0 ),
        .I3(ph[2]),
        .I4(ph[4]),
        .I5(ui_in[7]),
        .O(\ph[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \ph[5]_i_3 
       (.I0(ph[4]),
        .I1(ph[2]),
        .I2(ph[0]),
        .I3(ph[1]),
        .I4(ph[3]),
        .I5(ph[5]),
        .O(\ph[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \ph[5]_i_4 
       (.I0(ph[0]),
        .I1(ph[1]),
        .O(\ph[5]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h0B)) 
    \ph[6]_i_1 
       (.I0(ph[6]),
        .I1(\ph[5]_i_3_n_0 ),
        .I2(ui_in[7]),
        .O(\ph[6]_i_1_n_0 ));
  FDSE \ph_reg[0] 
       (.C(clk),
        .CE(\ph[5]_i_1_n_0 ),
        .D(\ph[0]_i_1_n_0 ),
        .Q(ph[0]),
        .S(SR[1]));
  FDSE \ph_reg[1] 
       (.C(clk),
        .CE(\ph[5]_i_1_n_0 ),
        .D(\ph[1]_i_1_n_0 ),
        .Q(ph[1]),
        .S(SR[1]));
  FDSE \ph_reg[2] 
       (.C(clk),
        .CE(\ph[5]_i_1_n_0 ),
        .D(\ph[2]_i_1_n_0 ),
        .Q(ph[2]),
        .S(SR[1]));
  FDSE \ph_reg[3] 
       (.C(clk),
        .CE(\ph[5]_i_1_n_0 ),
        .D(\ph[3]_i_1_n_0 ),
        .Q(ph[3]),
        .S(SR[1]));
  FDSE \ph_reg[4] 
       (.C(clk),
        .CE(\ph[5]_i_1_n_0 ),
        .D(\ph[4]_i_1_n_0 ),
        .Q(ph[4]),
        .S(SR[1]));
  FDSE \ph_reg[5] 
       (.C(clk),
        .CE(\ph[5]_i_1_n_0 ),
        .D(\ph[5]_i_2_n_0 ),
        .Q(ph[5]),
        .S(SR[1]));
  FDSE \ph_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\ph[6]_i_1_n_0 ),
        .Q(ph[6]),
        .S(SR[1]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \pos[0]_i_1 
       (.I0(\m_sec_reg[7] [0]),
        .I1(run),
        .I2(pos[0]),
        .O(\pos[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \pos[1]_i_1 
       (.I0(\m_sec_reg[7] [1]),
        .I1(run),
        .I2(pos[1]),
        .O(\pos[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \pos[2]_i_1 
       (.I0(\m_sec_reg[7] [2]),
        .I1(run),
        .I2(pos[2]),
        .O(\pos[2]_i_1_n_0 ));
  FDRE \pos_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\pos[0]_i_1_n_0 ),
        .Q(pos[0]),
        .R(SR[1]));
  FDRE \pos_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\pos[1]_i_1_n_0 ),
        .Q(pos[1]),
        .R(SR[1]));
  FDRE \pos_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\pos[2]_i_1_n_0 ),
        .Q(pos[2]),
        .R(SR[1]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \rec[0][0]_i_1 
       (.I0(\uc_reg[3]_0 [0]),
        .I1(b_use),
        .I2(\rec_reg[0][7] ),
        .I3(b_real),
        .I4(\rec_reg[0][13] [0]),
        .O(b_use_reg_0[0]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \rec[0][10]_i_1 
       (.I0(l_new[3]),
        .I1(b_use),
        .I2(\rec_reg[0][7] ),
        .I3(b_real),
        .I4(\rec_reg[0][13] [10]),
        .O(b_use_reg_0[10]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \rec[0][11]_i_1 
       (.I0(l_new[4]),
        .I1(b_use),
        .I2(\rec_reg[0][7] ),
        .I3(b_real),
        .I4(\rec_reg[0][13] [11]),
        .O(b_use_reg_0[11]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \rec[0][12]_i_1 
       (.I0(\lmin_reg[5] ),
        .I1(b_use),
        .I2(\rec_reg[0][7] ),
        .I3(b_real),
        .I4(\rec_reg[0][13] [12]),
        .O(b_use_reg_0[12]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \rec[0][13]_i_1 
       (.I0(l_new[5]),
        .I1(b_use),
        .I2(\rec_reg[0][7] ),
        .I3(b_real),
        .I4(\rec_reg[0][13] [13]),
        .O(b_use_reg_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \rec[0][14]_i_1 
       (.I0(\uc_reg[3]_0 [3]),
        .I1(\uc_reg[3]_0 [2]),
        .I2(\rec[0][14]_i_3_n_0 ),
        .I3(\uc_reg[3]_0 [1]),
        .I4(\uc_reg[3]_0 [0]),
        .O(\uc_reg[3]_2 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \rec[0][14]_i_11 
       (.I0(l_new[3]),
        .I1(\rec_reg[0][13] [10]),
        .I2(l_new[2]),
        .I3(\rec_reg[0][13] [9]),
        .O(\carry_rec_reg[10] [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \rec[0][14]_i_12 
       (.I0(l_new[1]),
        .I1(\rec_reg[0][13] [8]),
        .I2(l_new[0]),
        .I3(\rec_reg[0][13] [7]),
        .O(\carry_rec_reg[10] [0]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \rec[0][14]_i_3 
       (.I0(uc[5]),
        .I1(uc[6]),
        .I2(act),
        .I3(uc[4]),
        .I4(b_v),
        .O(\rec[0][14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \rec[0][1]_i_1 
       (.I0(\uc_reg[3]_0 [1]),
        .I1(b_use),
        .I2(\rec_reg[0][7] ),
        .I3(b_real),
        .I4(\rec_reg[0][13] [1]),
        .O(b_use_reg_0[1]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \rec[0][2]_i_1 
       (.I0(\uc_reg[3]_0 [2]),
        .I1(b_use),
        .I2(\rec_reg[0][7] ),
        .I3(b_real),
        .I4(\rec_reg[0][13] [2]),
        .O(b_use_reg_0[2]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \rec[0][3]_i_1 
       (.I0(\uc_reg[3]_0 [3]),
        .I1(b_use),
        .I2(\rec_reg[0][7] ),
        .I3(b_real),
        .I4(\rec_reg[0][13] [3]),
        .O(b_use_reg_0[3]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \rec[0][4]_i_1 
       (.I0(pos[0]),
        .I1(b_use),
        .I2(\rec_reg[0][7] ),
        .I3(b_real),
        .I4(\rec_reg[0][13] [4]),
        .O(b_use_reg_0[4]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \rec[0][5]_i_1 
       (.I0(pos[1]),
        .I1(b_use),
        .I2(\rec_reg[0][7] ),
        .I3(b_real),
        .I4(\rec_reg[0][13] [5]),
        .O(b_use_reg_0[5]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \rec[0][6]_i_1 
       (.I0(pos[2]),
        .I1(b_use),
        .I2(\rec_reg[0][7] ),
        .I3(b_real),
        .I4(\rec_reg[0][13] [6]),
        .O(b_use_reg_0[6]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \rec[0][7]_i_1 
       (.I0(l_new[0]),
        .I1(b_use),
        .I2(\rec_reg[0][7] ),
        .I3(b_real),
        .I4(\rec_reg[0][13] [7]),
        .O(b_use_reg_0[7]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \rec[0][8]_i_1 
       (.I0(l_new[1]),
        .I1(b_use),
        .I2(\rec_reg[0][7] ),
        .I3(b_real),
        .I4(\rec_reg[0][13] [8]),
        .O(b_use_reg_0[8]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \rec[0][9]_i_1 
       (.I0(l_new[2]),
        .I1(b_use),
        .I2(\rec_reg[0][7] ),
        .I3(b_real),
        .I4(\rec_reg[0][13] [9]),
        .O(b_use_reg_0[9]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \rec[10][14]_i_1 
       (.I0(\uc_reg[3]_0 [0]),
        .I1(\uc_reg[3]_0 [1]),
        .I2(\rec[0][14]_i_3_n_0 ),
        .I3(\uc_reg[3]_0 [2]),
        .I4(\uc_reg[3]_0 [3]),
        .O(\uc_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \rec[11][14]_i_1 
       (.I0(\uc_reg[3]_0 [0]),
        .I1(\uc_reg[3]_0 [1]),
        .I2(\rec[0][14]_i_3_n_0 ),
        .I3(\uc_reg[3]_0 [2]),
        .I4(\uc_reg[3]_0 [3]),
        .O(\uc_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \rec[12][14]_i_1 
       (.I0(\rec[0][14]_i_3_n_0 ),
        .I1(\uc_reg[3]_0 [2]),
        .I2(\uc_reg[3]_0 [3]),
        .I3(\uc_reg[3]_0 [1]),
        .I4(\uc_reg[3]_0 [0]),
        .O(\uc_reg[2]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \rec[13][14]_i_1 
       (.I0(\rec[0][14]_i_3_n_0 ),
        .I1(\uc_reg[3]_0 [2]),
        .I2(\uc_reg[3]_0 [3]),
        .I3(\uc_reg[3]_0 [1]),
        .I4(\uc_reg[3]_0 [0]),
        .O(\uc_reg[2]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \rec[14][14]_i_1 
       (.I0(\rec[0][14]_i_3_n_0 ),
        .I1(\uc_reg[3]_0 [2]),
        .I2(\uc_reg[3]_0 [3]),
        .I3(\uc_reg[3]_0 [0]),
        .I4(\uc_reg[3]_0 [1]),
        .O(\uc_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \rec[15][14]_i_1 
       (.I0(\uc_reg[3]_0 [0]),
        .I1(\uc_reg[3]_0 [1]),
        .I2(\rec[0][14]_i_3_n_0 ),
        .I3(\uc_reg[3]_0 [2]),
        .I4(\uc_reg[3]_0 [3]),
        .O(\uc_reg[0]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \rec[1][14]_i_1 
       (.I0(\uc_reg[3]_0 [3]),
        .I1(\uc_reg[3]_0 [2]),
        .I2(\rec[0][14]_i_3_n_0 ),
        .I3(\uc_reg[3]_0 [1]),
        .I4(\uc_reg[3]_0 [0]),
        .O(\uc_reg[3]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \rec[2][14]_i_1 
       (.I0(\uc_reg[3]_0 [3]),
        .I1(\uc_reg[3]_0 [2]),
        .I2(\rec[0][14]_i_3_n_0 ),
        .I3(\uc_reg[3]_0 [0]),
        .I4(\uc_reg[3]_0 [1]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \rec[3][14]_i_1 
       (.I0(\uc_reg[3]_0 [0]),
        .I1(\uc_reg[3]_0 [1]),
        .I2(\uc_reg[3]_0 [3]),
        .I3(\uc_reg[3]_0 [2]),
        .I4(\rec[0][14]_i_3_n_0 ),
        .O(\uc_reg[0]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \rec[4][14]_i_1 
       (.I0(\uc_reg[3]_0 [1]),
        .I1(\uc_reg[3]_0 [0]),
        .I2(\rec[0][14]_i_3_n_0 ),
        .I3(\uc_reg[3]_0 [3]),
        .I4(\uc_reg[3]_0 [2]),
        .O(\uc_reg[1]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \rec[5][14]_i_1 
       (.I0(\uc_reg[3]_0 [1]),
        .I1(\uc_reg[3]_0 [0]),
        .I2(\rec[0][14]_i_3_n_0 ),
        .I3(\uc_reg[3]_0 [3]),
        .I4(\uc_reg[3]_0 [2]),
        .O(\uc_reg[1]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \rec[6][14]_i_1 
       (.I0(\uc_reg[3]_0 [0]),
        .I1(\uc_reg[3]_0 [1]),
        .I2(\rec[0][14]_i_3_n_0 ),
        .I3(\uc_reg[3]_0 [3]),
        .I4(\uc_reg[3]_0 [2]),
        .O(\uc_reg[0]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \rec[7][14]_i_1 
       (.I0(\uc_reg[3]_0 [0]),
        .I1(\uc_reg[3]_0 [1]),
        .I2(\rec[0][14]_i_3_n_0 ),
        .I3(\uc_reg[3]_0 [3]),
        .I4(\uc_reg[3]_0 [2]),
        .O(\uc_reg[0]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \rec[8][14]_i_1 
       (.I0(\uc_reg[3]_0 [1]),
        .I1(\uc_reg[3]_0 [0]),
        .I2(\rec[0][14]_i_3_n_0 ),
        .I3(\uc_reg[3]_0 [2]),
        .I4(\uc_reg[3]_0 [3]),
        .O(\uc_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \rec[9][14]_i_1 
       (.I0(\uc_reg[3]_0 [1]),
        .I1(\uc_reg[3]_0 [0]),
        .I2(\rec[0][14]_i_3_n_0 ),
        .I3(\uc_reg[3]_0 [2]),
        .I4(\uc_reg[3]_0 [3]),
        .O(\uc_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rec_in[14]_i_1 
       (.I0(\uo[7]_i_8_n_0 ),
        .I1(\rec_in[14]_i_2_n_0 ),
        .O(run_reg_3));
  LUT6 #(
    .INIT(64'h0202020000000002)) 
    \rec_in[14]_i_2 
       (.I0(\m_s2[6]_i_3_n_0 ),
        .I1(\rec_in[14]_i_3_n_0 ),
        .I2(\m_sec[7]_i_4_n_0 ),
        .I3(n[2]),
        .I4(\rec_in[14]_i_4_n_0 ),
        .I5(\uo[7]_i_17_n_0 ),
        .O(\rec_in[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFBE7DFFD7FFFFBE)) 
    \rec_in[14]_i_3 
       (.I0(\uo[7]_i_13_n_0 ),
        .I1(\uo[7]_i_18_n_0 ),
        .I2(n[2]),
        .I3(n[0]),
        .I4(n[1]),
        .I5(\pos_reg[0]_0 ),
        .O(\rec_in[14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rec_in[14]_i_4 
       (.I0(n[1]),
        .I1(n[0]),
        .O(\rec_in[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000008FFFFFFFF)) 
    \rec_in[6]_i_1 
       (.I0(\uo[7]_i_8_n_0 ),
        .I1(\rec_in[14]_i_2_n_0 ),
        .I2(pos[0]),
        .I3(pos[1]),
        .I4(pos[2]),
        .I5(\rec_in_reg[6] ),
        .O(SR[0]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \right_sr[0]_i_1 
       (.I0(\ui_r_reg_n_0_[0] ),
        .I1(\right_sr[13]_i_2_n_0 ),
        .I2(\right_sr[7]_i_2_n_0 ),
        .I3(\right_sr[0]_i_2_n_0 ),
        .I4(in_right[0]),
        .O(\right_sr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \right_sr[0]_i_2 
       (.I0(\right_sr[3]_i_2_n_0 ),
        .I1(right_sr1[0]),
        .I2(right_sr1[1]),
        .O(\right_sr[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \right_sr[10]_i_1 
       (.I0(\right_sr[13]_i_2_n_0 ),
        .I1(\right_sr[42]_i_2_n_0 ),
        .I2(\right_sr[21]_i_2_n_0 ),
        .I3(\right_sr[42]_i_3_n_0 ),
        .I4(\right_sr[10]_i_2_n_0 ),
        .I5(in_right[10]),
        .O(\right_sr[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0A000C0C0C0)) 
    \right_sr[10]_i_2 
       (.I0(\right_sr[7]_i_2_n_0 ),
        .I1(\right_sr[15]_i_2_n_0 ),
        .I2(\right_sr[44]_i_9_n_0 ),
        .I3(right_sr1[1]),
        .I4(right_sr1[0]),
        .I5(right_sr1[2]),
        .O(\right_sr[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    \right_sr[11]_i_1 
       (.I0(right_sr0[11]),
        .I1(right_sr1[5]),
        .I2(right_sr1[4]),
        .I3(\right_sr[43]_i_4_n_0 ),
        .I4(\right_sr[43]_i_5_n_0 ),
        .I5(in_right[11]),
        .O(\right_sr[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'h03020002)) 
    \right_sr[11]_i_2 
       (.I0(\right_sr[35]_i_2_n_0 ),
        .I1(right_sr1[4]),
        .I2(right_sr1[5]),
        .I3(right_sr1[3]),
        .I4(\right_sr[35]_i_3_n_0 ),
        .O(right_sr0[11]));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \right_sr[12]_i_1 
       (.I0(\right_sr[44]_i_2_n_0 ),
        .I1(\right_sr[21]_i_2_n_0 ),
        .I2(\right_sr[13]_i_2_n_0 ),
        .I3(\right_sr[44]_i_5_n_0 ),
        .I4(\right_sr[12]_i_2_n_0 ),
        .I5(in_right[12]),
        .O(\right_sr[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF000CC004400CC00)) 
    \right_sr[12]_i_2 
       (.I0(right_sr1[0]),
        .I1(\right_sr[15]_i_2_n_0 ),
        .I2(\right_sr[7]_i_2_n_0 ),
        .I3(\right_sr[44]_i_9_n_0 ),
        .I4(right_sr1[2]),
        .I5(right_sr1[1]),
        .O(\right_sr[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \right_sr[13]_i_1 
       (.I0(\right_sr[37]_i_4_n_0 ),
        .I1(\right_sr[21]_i_2_n_0 ),
        .I2(\right_sr[13]_i_2_n_0 ),
        .I3(\right_sr[37]_i_3_n_0 ),
        .I4(\right_sr[13]_i_3_n_0 ),
        .I5(in_right[13]),
        .O(\right_sr[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \right_sr[13]_i_2 
       (.I0(right_sr1[4]),
        .I1(right_sr1[5]),
        .I2(right_sr1[3]),
        .O(\right_sr[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC0A000A0A0A0A0A0)) 
    \right_sr[13]_i_3 
       (.I0(\right_sr[15]_i_2_n_0 ),
        .I1(\right_sr[7]_i_2_n_0 ),
        .I2(\right_sr[44]_i_9_n_0 ),
        .I3(right_sr1[2]),
        .I4(right_sr1[0]),
        .I5(right_sr1[1]),
        .O(\right_sr[13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \right_sr[14]_i_1 
       (.I0(\right_sr[38]_i_2_n_0 ),
        .I1(\right_sr[21]_i_2_n_0 ),
        .I2(\right_sr[15]_i_2_n_0 ),
        .I3(\right_sr[38]_i_3_n_0 ),
        .I4(in_right[14]),
        .O(\right_sr[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \right_sr[15]_i_1 
       (.I0(\right_sr[39]_i_3_n_0 ),
        .I1(\right_sr[21]_i_2_n_0 ),
        .I2(\right_sr[15]_i_2_n_0 ),
        .I3(\right_sr[39]_i_5_n_0 ),
        .I4(in_right[15]),
        .O(\right_sr[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \right_sr[15]_i_2 
       (.I0(right_sr1[3]),
        .I1(right_sr1[5]),
        .I2(right_sr1[4]),
        .I3(\right_sr[43]_i_5_n_0 ),
        .O(\right_sr[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \right_sr[16]_i_1 
       (.I0(\right_sr[32]_i_2_n_0 ),
        .I1(\right_sr[21]_i_2_n_0 ),
        .I2(\right_sr[29]_i_2_n_0 ),
        .I3(\right_sr[32]_i_3_n_0 ),
        .I4(\right_sr[16]_i_2_n_0 ),
        .I5(in_right[16]),
        .O(\right_sr[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0A080B0A0A08080)) 
    \right_sr[16]_i_2 
       (.I0(\right_sr[15]_i_2_n_0 ),
        .I1(right_sr1[2]),
        .I2(\right_sr[44]_i_9_n_0 ),
        .I3(right_sr1[0]),
        .I4(right_sr1[1]),
        .I5(\right_sr[23]_i_2_n_0 ),
        .O(\right_sr[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \right_sr[17]_i_1 
       (.I0(\right_sr[33]_i_2_n_0 ),
        .I1(\right_sr[21]_i_2_n_0 ),
        .I2(\right_sr[29]_i_2_n_0 ),
        .I3(\right_sr[33]_i_3_n_0 ),
        .I4(\right_sr[17]_i_2_n_0 ),
        .I5(in_right[17]),
        .O(\right_sr[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA880000AAF00000)) 
    \right_sr[17]_i_2 
       (.I0(\right_sr[15]_i_2_n_0 ),
        .I1(right_sr1[0]),
        .I2(\right_sr[23]_i_2_n_0 ),
        .I3(right_sr1[2]),
        .I4(\right_sr[44]_i_9_n_0 ),
        .I5(right_sr1[1]),
        .O(\right_sr[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \right_sr[18]_i_1 
       (.I0(\right_sr[21]_i_2_n_0 ),
        .I1(\right_sr[42]_i_2_n_0 ),
        .I2(\right_sr[29]_i_2_n_0 ),
        .I3(\right_sr[42]_i_3_n_0 ),
        .I4(\right_sr[18]_i_2_n_0 ),
        .I5(in_right[18]),
        .O(\right_sr[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0A000C0C0C0)) 
    \right_sr[18]_i_2 
       (.I0(\right_sr[15]_i_2_n_0 ),
        .I1(\right_sr[23]_i_2_n_0 ),
        .I2(\right_sr[44]_i_9_n_0 ),
        .I3(right_sr1[1]),
        .I4(right_sr1[0]),
        .I5(right_sr1[2]),
        .O(\right_sr[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \right_sr[19]_i_1 
       (.I0(\right_sr[21]_i_2_n_0 ),
        .I1(\right_sr[35]_i_2_n_0 ),
        .I2(\right_sr[29]_i_2_n_0 ),
        .I3(\right_sr[35]_i_3_n_0 ),
        .I4(\right_sr[19]_i_2_n_0 ),
        .I5(in_right[19]),
        .O(\right_sr[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA800FF00A8000000)) 
    \right_sr[19]_i_2 
       (.I0(\right_sr[15]_i_2_n_0 ),
        .I1(right_sr1[0]),
        .I2(right_sr1[1]),
        .I3(\right_sr[44]_i_9_n_0 ),
        .I4(right_sr1[2]),
        .I5(\right_sr[23]_i_2_n_0 ),
        .O(\right_sr[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFFFFF08000000)) 
    \right_sr[1]_i_1 
       (.I0(\right_sr[33]_i_3_n_0 ),
        .I1(\right_sr[13]_i_2_n_0 ),
        .I2(right_sr1[1]),
        .I3(\right_sr[3]_i_2_n_0 ),
        .I4(\right_sr[7]_i_2_n_0 ),
        .I5(in_right[1]),
        .O(\right_sr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \right_sr[20]_i_1 
       (.I0(\right_sr[21]_i_2_n_0 ),
        .I1(\right_sr[44]_i_5_n_0 ),
        .I2(\right_sr[44]_i_2_n_0 ),
        .I3(\right_sr[29]_i_2_n_0 ),
        .I4(\right_sr[20]_i_2_n_0 ),
        .I5(in_right[20]),
        .O(\right_sr[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BFF000088000000)) 
    \right_sr[20]_i_2 
       (.I0(\right_sr[15]_i_2_n_0 ),
        .I1(right_sr1[1]),
        .I2(right_sr1[0]),
        .I3(right_sr1[2]),
        .I4(\right_sr[44]_i_9_n_0 ),
        .I5(\right_sr[23]_i_2_n_0 ),
        .O(\right_sr[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \right_sr[21]_i_1 
       (.I0(\right_sr[21]_i_2_n_0 ),
        .I1(\right_sr[37]_i_3_n_0 ),
        .I2(\right_sr[37]_i_4_n_0 ),
        .I3(\right_sr[29]_i_2_n_0 ),
        .I4(\right_sr[21]_i_3_n_0 ),
        .I5(in_right[21]),
        .O(\right_sr[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \right_sr[21]_i_2 
       (.I0(right_sr1[4]),
        .I1(right_sr1[5]),
        .I2(right_sr1[3]),
        .O(\right_sr[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8FFF000080000000)) 
    \right_sr[21]_i_3 
       (.I0(\right_sr[15]_i_2_n_0 ),
        .I1(right_sr1[0]),
        .I2(right_sr1[1]),
        .I3(right_sr1[2]),
        .I4(\right_sr[44]_i_9_n_0 ),
        .I5(\right_sr[23]_i_2_n_0 ),
        .O(\right_sr[21]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \right_sr[22]_i_1 
       (.I0(\right_sr[29]_i_2_n_0 ),
        .I1(\right_sr[38]_i_2_n_0 ),
        .I2(\right_sr[23]_i_2_n_0 ),
        .I3(\right_sr[38]_i_3_n_0 ),
        .I4(in_right[22]),
        .O(\right_sr[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \right_sr[23]_i_1 
       (.I0(\right_sr[29]_i_2_n_0 ),
        .I1(\right_sr[39]_i_3_n_0 ),
        .I2(\right_sr[23]_i_2_n_0 ),
        .I3(\right_sr[39]_i_5_n_0 ),
        .I4(in_right[23]),
        .O(\right_sr[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \right_sr[23]_i_2 
       (.I0(right_sr1[3]),
        .I1(\right_sr[43]_i_5_n_0 ),
        .I2(right_sr1[5]),
        .I3(right_sr1[4]),
        .O(\right_sr[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \right_sr[24]_i_1 
       (.I0(right_sr0[24]),
        .I1(right_sr1[4]),
        .I2(right_sr1[5]),
        .I3(\right_sr[40]_i_3_n_0 ),
        .I4(\right_sr[43]_i_5_n_0 ),
        .I5(in_right[24]),
        .O(\right_sr[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0088000000F00000)) 
    \right_sr[24]_i_2 
       (.I0(\right_sr[0]_i_2_n_0 ),
        .I1(\ui_r_reg_n_0_[0] ),
        .I2(\right_sr[32]_i_2_n_0 ),
        .I3(right_sr1[5]),
        .I4(right_sr1[4]),
        .I5(right_sr1[3]),
        .O(right_sr0[24]));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \right_sr[25]_i_1 
       (.I0(right_sr0[25]),
        .I1(right_sr1[4]),
        .I2(right_sr1[5]),
        .I3(\right_sr[41]_i_3_n_0 ),
        .I4(\right_sr[43]_i_5_n_0 ),
        .I5(in_right[25]),
        .O(\right_sr[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h0A000C00)) 
    \right_sr[25]_i_2 
       (.I0(\right_sr[33]_i_3_n_0 ),
        .I1(\right_sr[33]_i_2_n_0 ),
        .I2(right_sr1[5]),
        .I3(right_sr1[4]),
        .I4(right_sr1[3]),
        .O(right_sr0[25]));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \right_sr[26]_i_1 
       (.I0(\right_sr[29]_i_2_n_0 ),
        .I1(\right_sr[42]_i_2_n_0 ),
        .I2(\right_sr[37]_i_2_n_0 ),
        .I3(\right_sr[42]_i_3_n_0 ),
        .I4(\right_sr[26]_i_2_n_0 ),
        .I5(in_right[26]),
        .O(\right_sr[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0A000C0C0C0)) 
    \right_sr[26]_i_2 
       (.I0(\right_sr[23]_i_2_n_0 ),
        .I1(\right_sr[31]_i_2_n_0 ),
        .I2(\right_sr[44]_i_9_n_0 ),
        .I3(right_sr1[1]),
        .I4(right_sr1[0]),
        .I5(right_sr1[2]),
        .O(\right_sr[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \right_sr[27]_i_1 
       (.I0(right_sr0[27]),
        .I1(right_sr1[4]),
        .I2(right_sr1[5]),
        .I3(\right_sr[43]_i_4_n_0 ),
        .I4(\right_sr[43]_i_5_n_0 ),
        .I5(in_right[27]),
        .O(\right_sr[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h30200020)) 
    \right_sr[27]_i_2 
       (.I0(\right_sr[35]_i_2_n_0 ),
        .I1(right_sr1[5]),
        .I2(right_sr1[4]),
        .I3(right_sr1[3]),
        .I4(\right_sr[35]_i_3_n_0 ),
        .O(right_sr0[27]));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \right_sr[28]_i_1 
       (.I0(\right_sr[44]_i_2_n_0 ),
        .I1(\right_sr[37]_i_2_n_0 ),
        .I2(\right_sr[29]_i_2_n_0 ),
        .I3(\right_sr[44]_i_5_n_0 ),
        .I4(\right_sr[28]_i_2_n_0 ),
        .I5(in_right[28]),
        .O(\right_sr[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF000CC004400CC00)) 
    \right_sr[28]_i_2 
       (.I0(right_sr1[0]),
        .I1(\right_sr[31]_i_2_n_0 ),
        .I2(\right_sr[23]_i_2_n_0 ),
        .I3(\right_sr[44]_i_9_n_0 ),
        .I4(right_sr1[2]),
        .I5(right_sr1[1]),
        .O(\right_sr[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \right_sr[29]_i_1 
       (.I0(\right_sr[37]_i_4_n_0 ),
        .I1(\right_sr[37]_i_2_n_0 ),
        .I2(\right_sr[29]_i_2_n_0 ),
        .I3(\right_sr[37]_i_3_n_0 ),
        .I4(\right_sr[29]_i_3_n_0 ),
        .I5(in_right[29]),
        .O(\right_sr[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \right_sr[29]_i_2 
       (.I0(right_sr1[5]),
        .I1(right_sr1[4]),
        .I2(right_sr1[3]),
        .O(\right_sr[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC0A000A0A0A0A0A0)) 
    \right_sr[29]_i_3 
       (.I0(\right_sr[31]_i_2_n_0 ),
        .I1(\right_sr[23]_i_2_n_0 ),
        .I2(\right_sr[44]_i_9_n_0 ),
        .I3(right_sr1[2]),
        .I4(right_sr1[0]),
        .I5(right_sr1[1]),
        .O(\right_sr[29]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \right_sr[2]_i_1 
       (.I0(\right_sr[42]_i_3_n_0 ),
        .I1(\right_sr[13]_i_2_n_0 ),
        .I2(\right_sr[2]_i_2_n_0 ),
        .I3(\right_sr[7]_i_2_n_0 ),
        .I4(in_right[2]),
        .O(\right_sr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \right_sr[2]_i_2 
       (.I0(\right_sr[44]_i_9_n_0 ),
        .I1(right_sr1[1]),
        .I2(right_sr1[0]),
        .I3(right_sr1[2]),
        .O(\right_sr[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \right_sr[30]_i_1 
       (.I0(\right_sr[38]_i_2_n_0 ),
        .I1(\right_sr[37]_i_2_n_0 ),
        .I2(\right_sr[31]_i_2_n_0 ),
        .I3(\right_sr[38]_i_3_n_0 ),
        .I4(in_right[30]),
        .O(\right_sr[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \right_sr[31]_i_1 
       (.I0(\right_sr[39]_i_3_n_0 ),
        .I1(\right_sr[37]_i_2_n_0 ),
        .I2(\right_sr[31]_i_2_n_0 ),
        .I3(\right_sr[39]_i_5_n_0 ),
        .I4(in_right[31]),
        .O(\right_sr[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \right_sr[31]_i_2 
       (.I0(right_sr1[3]),
        .I1(right_sr1[4]),
        .I2(right_sr1[5]),
        .I3(\right_sr[43]_i_5_n_0 ),
        .O(\right_sr[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \right_sr[32]_i_1 
       (.I0(\right_sr[32]_i_2_n_0 ),
        .I1(\right_sr[37]_i_2_n_0 ),
        .I2(\right_sr[39]_i_2_n_0 ),
        .I3(\right_sr[32]_i_3_n_0 ),
        .I4(\right_sr[32]_i_4_n_0 ),
        .I5(in_right[32]),
        .O(\right_sr[32]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF222)) 
    \right_sr[32]_i_2 
       (.I0(\right_sr[32]_i_5_n_0 ),
        .I1(right_sr1[2]),
        .I2(\right_sr[32]_i_6_n_0 ),
        .I3(\ui_r_reg_n_0_[1] ),
        .I4(\right_sr[32]_i_7_n_0 ),
        .O(\right_sr[32]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \right_sr[32]_i_3 
       (.I0(right_sr1[1]),
        .I1(right_sr1[0]),
        .I2(\right_sr[3]_i_2_n_0 ),
        .I3(\ui_r_reg_n_0_[0] ),
        .O(\right_sr[32]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA0A080B0A0A08080)) 
    \right_sr[32]_i_4 
       (.I0(\right_sr[31]_i_2_n_0 ),
        .I1(right_sr1[2]),
        .I2(\right_sr[44]_i_9_n_0 ),
        .I3(right_sr1[0]),
        .I4(right_sr1[1]),
        .I5(\right_sr[39]_i_4_n_0 ),
        .O(\right_sr[32]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'hC8400000)) 
    \right_sr[32]_i_5 
       (.I0(right_sr1[0]),
        .I1(\right_sr[44]_i_9_n_0 ),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(right_sr1[1]),
        .O(\right_sr[32]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \right_sr[32]_i_6 
       (.I0(\right_sr[42]_i_7_n_0 ),
        .I1(right_sr1[0]),
        .I2(right_sr1[1]),
        .O(\right_sr[32]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000C0C0A0A0F000)) 
    \right_sr[32]_i_7 
       (.I0(\ui_r_reg_n_0_[3] ),
        .I1(\ui_r_reg_n_0_[2] ),
        .I2(\right_sr[42]_i_7_n_0 ),
        .I3(p_0_in[0]),
        .I4(right_sr1[0]),
        .I5(right_sr1[1]),
        .O(\right_sr[32]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \right_sr[33]_i_1 
       (.I0(\right_sr[33]_i_2_n_0 ),
        .I1(\right_sr[37]_i_2_n_0 ),
        .I2(\right_sr[39]_i_2_n_0 ),
        .I3(\right_sr[33]_i_3_n_0 ),
        .I4(\right_sr[33]_i_4_n_0 ),
        .I5(in_right[33]),
        .O(\right_sr[33]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFC8888888)) 
    \right_sr[33]_i_2 
       (.I0(\right_sr[33]_i_5_n_0 ),
        .I1(\right_sr[42]_i_7_n_0 ),
        .I2(right_sr1[1]),
        .I3(right_sr1[0]),
        .I4(\ui_r_reg_n_0_[2] ),
        .I5(\right_sr[33]_i_6_n_0 ),
        .O(\right_sr[33]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000044005000)) 
    \right_sr[33]_i_3 
       (.I0(right_sr1[1]),
        .I1(\ui_r_reg_n_0_[0] ),
        .I2(\ui_r_reg_n_0_[1] ),
        .I3(\right_sr[44]_i_9_n_0 ),
        .I4(right_sr1[0]),
        .I5(right_sr1[2]),
        .O(\right_sr[33]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAA880000AAF00000)) 
    \right_sr[33]_i_4 
       (.I0(\right_sr[31]_i_2_n_0 ),
        .I1(right_sr1[0]),
        .I2(\right_sr[39]_i_4_n_0 ),
        .I3(right_sr1[2]),
        .I4(\right_sr[44]_i_9_n_0 ),
        .I5(right_sr1[1]),
        .O(\right_sr[33]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'h22C0)) 
    \right_sr[33]_i_5 
       (.I0(\ui_r_reg_n_0_[3] ),
        .I1(right_sr1[0]),
        .I2(p_0_in[0]),
        .I3(right_sr1[1]),
        .O(\right_sr[33]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h202000000000C000)) 
    \right_sr[33]_i_6 
       (.I0(p_0_in[2]),
        .I1(right_sr1[2]),
        .I2(\right_sr[44]_i_9_n_0 ),
        .I3(p_0_in[1]),
        .I4(right_sr1[0]),
        .I5(right_sr1[1]),
        .O(\right_sr[33]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \right_sr[34]_i_1 
       (.I0(\right_sr[37]_i_2_n_0 ),
        .I1(\right_sr[42]_i_2_n_0 ),
        .I2(\right_sr[39]_i_2_n_0 ),
        .I3(\right_sr[42]_i_3_n_0 ),
        .I4(\right_sr[34]_i_2_n_0 ),
        .I5(in_right[34]),
        .O(\right_sr[34]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0A000C0C0C0)) 
    \right_sr[34]_i_2 
       (.I0(\right_sr[31]_i_2_n_0 ),
        .I1(\right_sr[39]_i_4_n_0 ),
        .I2(\right_sr[44]_i_9_n_0 ),
        .I3(right_sr1[1]),
        .I4(right_sr1[0]),
        .I5(right_sr1[2]),
        .O(\right_sr[34]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \right_sr[35]_i_1 
       (.I0(\right_sr[37]_i_2_n_0 ),
        .I1(\right_sr[35]_i_2_n_0 ),
        .I2(\right_sr[39]_i_2_n_0 ),
        .I3(\right_sr[35]_i_3_n_0 ),
        .I4(\right_sr[35]_i_4_n_0 ),
        .I5(in_right[35]),
        .O(\right_sr[35]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \right_sr[35]_i_2 
       (.I0(\right_sr[39]_i_7_n_0 ),
        .I1(right_sr1[2]),
        .O(\right_sr[35]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \right_sr[35]_i_3 
       (.I0(\right_sr[39]_i_6_n_0 ),
        .I1(right_sr1[2]),
        .O(\right_sr[35]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA800FF00A8000000)) 
    \right_sr[35]_i_4 
       (.I0(\right_sr[31]_i_2_n_0 ),
        .I1(right_sr1[0]),
        .I2(right_sr1[1]),
        .I3(\right_sr[44]_i_9_n_0 ),
        .I4(right_sr1[2]),
        .I5(\right_sr[39]_i_4_n_0 ),
        .O(\right_sr[35]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \right_sr[36]_i_1 
       (.I0(\right_sr[37]_i_2_n_0 ),
        .I1(\right_sr[44]_i_5_n_0 ),
        .I2(\right_sr[44]_i_2_n_0 ),
        .I3(\right_sr[39]_i_2_n_0 ),
        .I4(\right_sr[36]_i_2_n_0 ),
        .I5(in_right[36]),
        .O(\right_sr[36]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BFF000088000000)) 
    \right_sr[36]_i_2 
       (.I0(\right_sr[31]_i_2_n_0 ),
        .I1(right_sr1[1]),
        .I2(right_sr1[0]),
        .I3(right_sr1[2]),
        .I4(\right_sr[44]_i_9_n_0 ),
        .I5(\right_sr[39]_i_4_n_0 ),
        .O(\right_sr[36]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \right_sr[37]_i_1 
       (.I0(\right_sr[37]_i_2_n_0 ),
        .I1(\right_sr[37]_i_3_n_0 ),
        .I2(\right_sr[37]_i_4_n_0 ),
        .I3(\right_sr[39]_i_2_n_0 ),
        .I4(\right_sr[37]_i_5_n_0 ),
        .I5(in_right[37]),
        .O(\right_sr[37]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \right_sr[37]_i_2 
       (.I0(right_sr1[5]),
        .I1(right_sr1[4]),
        .I2(right_sr1[3]),
        .O(\right_sr[37]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \right_sr[37]_i_3 
       (.I0(right_sr1[1]),
        .I1(right_sr1[0]),
        .I2(\right_sr[42]_i_7_n_0 ),
        .I3(p_0_in[2]),
        .O(\right_sr[37]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF8F888888)) 
    \right_sr[37]_i_4 
       (.I0(\right_sr[37]_i_6_n_0 ),
        .I1(right_sr1[2]),
        .I2(\right_sr[37]_i_7_n_0 ),
        .I3(\ui_r_reg_n_0_[2] ),
        .I4(\right_sr[3]_i_2_n_0 ),
        .I5(\right_sr[37]_i_8_n_0 ),
        .O(\right_sr[37]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8FFF000080000000)) 
    \right_sr[37]_i_5 
       (.I0(\right_sr[31]_i_2_n_0 ),
        .I1(right_sr1[0]),
        .I2(right_sr1[1]),
        .I3(right_sr1[2]),
        .I4(\right_sr[44]_i_9_n_0 ),
        .I5(\right_sr[39]_i_4_n_0 ),
        .O(\right_sr[37]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h0000C840)) 
    \right_sr[37]_i_6 
       (.I0(right_sr1[0]),
        .I1(\right_sr[44]_i_9_n_0 ),
        .I2(\ui_r_reg_n_0_[1] ),
        .I3(\ui_r_reg_n_0_[0] ),
        .I4(right_sr1[1]),
        .O(\right_sr[37]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \right_sr[37]_i_7 
       (.I0(right_sr1[1]),
        .I1(right_sr1[0]),
        .O(\right_sr[37]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000AA00CC00F000)) 
    \right_sr[37]_i_8 
       (.I0(\ui_r_reg_n_0_[3] ),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(\right_sr[3]_i_2_n_0 ),
        .I4(right_sr1[0]),
        .I5(right_sr1[1]),
        .O(\right_sr[37]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \right_sr[38]_i_1 
       (.I0(\right_sr[39]_i_2_n_0 ),
        .I1(\right_sr[38]_i_2_n_0 ),
        .I2(\right_sr[39]_i_4_n_0 ),
        .I3(\right_sr[38]_i_3_n_0 ),
        .I4(in_right[38]),
        .O(\right_sr[38]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \right_sr[38]_i_2 
       (.I0(\right_sr[42]_i_6_n_0 ),
        .I1(right_sr1[2]),
        .I2(\right_sr[42]_i_5_n_0 ),
        .O(\right_sr[38]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'h7F00)) 
    \right_sr[38]_i_3 
       (.I0(right_sr1[0]),
        .I1(right_sr1[1]),
        .I2(right_sr1[2]),
        .I3(\right_sr[44]_i_9_n_0 ),
        .O(\right_sr[38]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \right_sr[39]_i_1 
       (.I0(\right_sr[39]_i_2_n_0 ),
        .I1(\right_sr[39]_i_3_n_0 ),
        .I2(\right_sr[39]_i_4_n_0 ),
        .I3(\right_sr[39]_i_5_n_0 ),
        .I4(in_right[39]),
        .O(\right_sr[39]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \right_sr[39]_i_2 
       (.I0(right_sr1[4]),
        .I1(right_sr1[5]),
        .I2(right_sr1[3]),
        .O(\right_sr[39]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \right_sr[39]_i_3 
       (.I0(\right_sr[39]_i_6_n_0 ),
        .I1(right_sr1[2]),
        .I2(\right_sr[39]_i_7_n_0 ),
        .O(\right_sr[39]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \right_sr[39]_i_4 
       (.I0(right_sr1[3]),
        .I1(\right_sr[43]_i_5_n_0 ),
        .I2(right_sr1[4]),
        .I3(right_sr1[5]),
        .O(\right_sr[39]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'hF0E0)) 
    \right_sr[39]_i_5 
       (.I0(right_sr1[1]),
        .I1(right_sr1[0]),
        .I2(\right_sr[44]_i_9_n_0 ),
        .I3(right_sr1[2]),
        .O(\right_sr[39]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE0400000E040)) 
    \right_sr[39]_i_6 
       (.I0(right_sr1[0]),
        .I1(\ui_r_reg_n_0_[3] ),
        .I2(\right_sr[44]_i_9_n_0 ),
        .I3(\ui_r_reg_n_0_[2] ),
        .I4(right_sr1[1]),
        .I5(\right_sr[39]_i_8_n_0 ),
        .O(\right_sr[39]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF000A0A0C0C00000)) 
    \right_sr[39]_i_7 
       (.I0(p_0_in[1]),
        .I1(p_0_in[2]),
        .I2(\right_sr[44]_i_9_n_0 ),
        .I3(p_0_in[0]),
        .I4(right_sr1[0]),
        .I5(right_sr1[1]),
        .O(\right_sr[39]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hA0C0)) 
    \right_sr[39]_i_8 
       (.I0(\ui_r_reg_n_0_[0] ),
        .I1(\ui_r_reg_n_0_[1] ),
        .I2(\right_sr[44]_i_9_n_0 ),
        .I3(right_sr1[0]),
        .O(\right_sr[39]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \right_sr[3]_i_1 
       (.I0(\right_sr[35]_i_3_n_0 ),
        .I1(\right_sr[13]_i_2_n_0 ),
        .I2(\right_sr[7]_i_2_n_0 ),
        .I3(\right_sr[3]_i_2_n_0 ),
        .I4(in_right[3]),
        .O(\right_sr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \right_sr[3]_i_2 
       (.I0(right_sr1[8]),
        .I1(right_sr1[9]),
        .I2(right_sr1[6]),
        .I3(right_sr1[7]),
        .I4(right_sr1[2]),
        .O(\right_sr[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \right_sr[40]_i_1 
       (.I0(right_sr0[40]),
        .I1(right_sr1[5]),
        .I2(right_sr1[4]),
        .I3(\right_sr[40]_i_3_n_0 ),
        .I4(\right_sr[43]_i_5_n_0 ),
        .I5(in_right[40]),
        .O(\right_sr[40]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0088000000F00000)) 
    \right_sr[40]_i_2 
       (.I0(\right_sr[0]_i_2_n_0 ),
        .I1(\ui_r_reg_n_0_[0] ),
        .I2(\right_sr[32]_i_2_n_0 ),
        .I3(right_sr1[4]),
        .I4(right_sr1[5]),
        .I5(right_sr1[3]),
        .O(right_sr0[40]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h33003400)) 
    \right_sr[40]_i_3 
       (.I0(right_sr1[0]),
        .I1(right_sr1[3]),
        .I2(right_sr1[1]),
        .I3(\right_sr[44]_i_9_n_0 ),
        .I4(right_sr1[2]),
        .O(\right_sr[40]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \right_sr[41]_i_1 
       (.I0(right_sr0[41]),
        .I1(right_sr1[5]),
        .I2(right_sr1[4]),
        .I3(\right_sr[41]_i_3_n_0 ),
        .I4(\right_sr[43]_i_5_n_0 ),
        .I5(in_right[41]),
        .O(\right_sr[41]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h0A000C00)) 
    \right_sr[41]_i_2 
       (.I0(\right_sr[33]_i_3_n_0 ),
        .I1(\right_sr[33]_i_2_n_0 ),
        .I2(right_sr1[4]),
        .I3(right_sr1[5]),
        .I4(right_sr1[3]),
        .O(right_sr0[41]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h55006200)) 
    \right_sr[41]_i_3 
       (.I0(right_sr1[3]),
        .I1(right_sr1[1]),
        .I2(right_sr1[0]),
        .I3(\right_sr[44]_i_9_n_0 ),
        .I4(right_sr1[2]),
        .O(\right_sr[41]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC808FFFFC8080000)) 
    \right_sr[42]_i_1 
       (.I0(\right_sr[42]_i_2_n_0 ),
        .I1(\right_sr[44]_i_3_n_0 ),
        .I2(right_sr1[3]),
        .I3(\right_sr[42]_i_3_n_0 ),
        .I4(\right_sr[42]_i_4_n_0 ),
        .I5(in_right[42]),
        .O(\right_sr[42]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \right_sr[42]_i_2 
       (.I0(\right_sr[42]_i_5_n_0 ),
        .I1(right_sr1[2]),
        .O(\right_sr[42]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \right_sr[42]_i_3 
       (.I0(\right_sr[42]_i_6_n_0 ),
        .I1(right_sr1[2]),
        .O(\right_sr[42]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000C0880000)) 
    \right_sr[42]_i_4 
       (.I0(\right_sr[42]_i_7_n_0 ),
        .I1(\right_sr[43]_i_5_n_0 ),
        .I2(\right_sr[2]_i_2_n_0 ),
        .I3(right_sr1[3]),
        .I4(right_sr1[5]),
        .I5(right_sr1[4]),
        .O(\right_sr[42]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF000C0C0AAAAAAAA)) 
    \right_sr[42]_i_5 
       (.I0(\right_sr[42]_i_8_n_0 ),
        .I1(p_0_in[0]),
        .I2(\right_sr[44]_i_9_n_0 ),
        .I3(\ui_r_reg_n_0_[3] ),
        .I4(right_sr1[0]),
        .I5(right_sr1[1]),
        .O(\right_sr[42]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0C000C00FA000A00)) 
    \right_sr[42]_i_6 
       (.I0(\ui_r_reg_n_0_[2] ),
        .I1(\ui_r_reg_n_0_[0] ),
        .I2(right_sr1[0]),
        .I3(\right_sr[44]_i_9_n_0 ),
        .I4(\ui_r_reg_n_0_[1] ),
        .I5(right_sr1[1]),
        .O(\right_sr[42]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \right_sr[42]_i_7 
       (.I0(right_sr1[2]),
        .I1(right_sr1[8]),
        .I2(right_sr1[9]),
        .I3(right_sr1[6]),
        .I4(right_sr1[7]),
        .O(\right_sr[42]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hA0C0)) 
    \right_sr[42]_i_8 
       (.I0(p_0_in[1]),
        .I1(p_0_in[2]),
        .I2(\right_sr[44]_i_9_n_0 ),
        .I3(right_sr1[0]),
        .O(\right_sr[42]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \right_sr[43]_i_1 
       (.I0(right_sr0[43]),
        .I1(right_sr1[5]),
        .I2(right_sr1[4]),
        .I3(\right_sr[43]_i_4_n_0 ),
        .I4(\right_sr[43]_i_5_n_0 ),
        .I5(in_right[43]),
        .O(\right_sr[43]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \right_sr[43]_i_10 
       (.I0(\right_sr_reg[44]_i_10_n_6 ),
        .I1(\right_sr_reg[43]_i_6_n_7 ),
        .O(\right_sr[43]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \right_sr[43]_i_11 
       (.I0(\right_sr_reg[43]_i_6_n_7 ),
        .I1(\right_sr_reg[44]_i_10_n_4 ),
        .I2(\right_sr_reg[43]_i_6_n_5 ),
        .I3(\right_sr_reg[43]_i_6_n_6 ),
        .O(\right_sr[43]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \right_sr[43]_i_12 
       (.I0(ph[4]),
        .I1(pos[1]),
        .O(\right_sr[43]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hDF0D)) 
    \right_sr[43]_i_13 
       (.I0(n[2]),
        .I1(pos[2]),
        .I2(pos[0]),
        .I3(ph[3]),
        .O(\right_sr[43]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h2D)) 
    \right_sr[43]_i_14 
       (.I0(pos[2]),
        .I1(ph[5]),
        .I2(ph[6]),
        .O(\right_sr[43]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hD22D)) 
    \right_sr[43]_i_15 
       (.I0(pos[1]),
        .I1(ph[4]),
        .I2(ph[5]),
        .I3(pos[2]),
        .O(\right_sr[43]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hB2BB4D444D44B2BB)) 
    \right_sr[43]_i_16 
       (.I0(ph[3]),
        .I1(pos[0]),
        .I2(pos[2]),
        .I3(n[2]),
        .I4(pos[1]),
        .I5(ph[4]),
        .O(\right_sr[43]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'h30200020)) 
    \right_sr[43]_i_2 
       (.I0(\right_sr[35]_i_2_n_0 ),
        .I1(right_sr1[4]),
        .I2(right_sr1[5]),
        .I3(right_sr1[3]),
        .I4(\right_sr[35]_i_3_n_0 ),
        .O(right_sr0[43]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h0E00F000)) 
    \right_sr[43]_i_4 
       (.I0(right_sr1[0]),
        .I1(right_sr1[1]),
        .I2(right_sr1[3]),
        .I3(\right_sr[44]_i_9_n_0 ),
        .I4(right_sr1[2]),
        .O(\right_sr[43]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h2AAA0000)) 
    \right_sr[43]_i_5 
       (.I0(\up_edge[6]_i_5_n_0 ),
        .I1(\right_sr_reg[44]_i_10_n_6 ),
        .I2(\right_sr_reg[44]_i_10_n_5 ),
        .I3(\right_sr_reg[44]_i_10_n_7 ),
        .I4(\right_sr[43]_i_11_n_0 ),
        .O(\right_sr[43]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \right_sr[43]_i_7 
       (.I0(\right_sr_reg[43]_i_6_n_7 ),
        .O(\right_sr[43]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \right_sr[43]_i_8 
       (.I0(\right_sr_reg[44]_i_10_n_4 ),
        .I1(\right_sr_reg[43]_i_6_n_5 ),
        .O(\right_sr[43]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \right_sr[43]_i_9 
       (.I0(\right_sr_reg[44]_i_10_n_5 ),
        .I1(\right_sr_reg[43]_i_6_n_6 ),
        .O(\right_sr[43]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h8C80FFFF8C800000)) 
    \right_sr[44]_i_1 
       (.I0(\right_sr[44]_i_2_n_0 ),
        .I1(\right_sr[44]_i_3_n_0 ),
        .I2(right_sr1[3]),
        .I3(\right_sr[44]_i_5_n_0 ),
        .I4(\right_sr[44]_i_6_n_0 ),
        .I5(in_right[44]),
        .O(\right_sr[44]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \right_sr[44]_i_11 
       (.I0(\right_sr_reg[44]_i_10_n_7 ),
        .I1(\right_sr_reg[44]_i_10_n_4 ),
        .O(\right_sr[44]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \right_sr[44]_i_12 
       (.I0(\right_sr_reg[44]_i_10_n_5 ),
        .O(\right_sr[44]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \right_sr[44]_i_13 
       (.I0(\right_sr_reg[44]_i_10_n_6 ),
        .O(\right_sr[44]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \right_sr[44]_i_14 
       (.I0(right_sr1[7]),
        .I1(right_sr1[6]),
        .I2(right_sr1[9]),
        .I3(right_sr1[8]),
        .I4(right_sr1[2]),
        .I5(right_sr1[1]),
        .O(\right_sr[44]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hFF6F6606)) 
    \right_sr[44]_i_15 
       (.I0(pos[2]),
        .I1(n[2]),
        .I2(n[1]),
        .I3(pos[1]),
        .I4(ph[2]),
        .O(\right_sr[44]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h2DD2D22D)) 
    \right_sr[44]_i_16 
       (.I0(n[1]),
        .I1(pos[1]),
        .I2(pos[2]),
        .I3(n[2]),
        .I4(ph[2]),
        .O(\right_sr[44]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \right_sr[44]_i_17 
       (.I0(pos[1]),
        .I1(n[1]),
        .I2(ph[1]),
        .O(\right_sr[44]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h81E87E177E1781E8)) 
    \right_sr[44]_i_18 
       (.I0(ph[2]),
        .I1(\right_sr[44]_i_22_n_0 ),
        .I2(pos[2]),
        .I3(n[2]),
        .I4(pos[0]),
        .I5(ph[3]),
        .O(\right_sr[44]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h6969966969966969)) 
    \right_sr[44]_i_19 
       (.I0(ph[2]),
        .I1(n[2]),
        .I2(pos[2]),
        .I3(ph[1]),
        .I4(n[1]),
        .I5(pos[1]),
        .O(\right_sr[44]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hBABABAAAAABAAAAA)) 
    \right_sr[44]_i_2 
       (.I0(\right_sr[44]_i_7_n_0 ),
        .I1(\right_sr[44]_i_8_n_0 ),
        .I2(\right_sr[44]_i_9_n_0 ),
        .I3(right_sr1[2]),
        .I4(p_0_in[0]),
        .I5(\ui_r_reg_n_0_[0] ),
        .O(\right_sr[44]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h69699669)) 
    \right_sr[44]_i_20 
       (.I0(ph[1]),
        .I1(n[1]),
        .I2(pos[1]),
        .I3(n[0]),
        .I4(pos[0]),
        .O(\right_sr[44]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \right_sr[44]_i_21 
       (.I0(n[0]),
        .I1(pos[0]),
        .I2(ph[0]),
        .O(\right_sr[44]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \right_sr[44]_i_22 
       (.I0(pos[1]),
        .I1(n[1]),
        .O(\right_sr[44]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \right_sr[44]_i_3 
       (.I0(right_sr1[5]),
        .I1(right_sr1[4]),
        .O(\right_sr[44]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8800A00000000000)) 
    \right_sr[44]_i_5 
       (.I0(right_sr1[1]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\right_sr[44]_i_9_n_0 ),
        .I4(right_sr1[0]),
        .I5(right_sr1[2]),
        .O(\right_sr[44]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00B0000000800000)) 
    \right_sr[44]_i_6 
       (.I0(\right_sr[4]_i_2_n_0 ),
        .I1(right_sr1[3]),
        .I2(\right_sr[43]_i_5_n_0 ),
        .I3(right_sr1[4]),
        .I4(right_sr1[5]),
        .I5(\right_sr[44]_i_14_n_0 ),
        .O(\right_sr[44]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h88CCC0008800C000)) 
    \right_sr[44]_i_7 
       (.I0(\ui_r_reg_n_0_[1] ),
        .I1(\right_sr[3]_i_2_n_0 ),
        .I2(\ui_r_reg_n_0_[3] ),
        .I3(right_sr1[0]),
        .I4(right_sr1[1]),
        .I5(\ui_r_reg_n_0_[2] ),
        .O(\right_sr[44]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \right_sr[44]_i_8 
       (.I0(right_sr1[1]),
        .I1(right_sr1[0]),
        .O(\right_sr[44]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \right_sr[44]_i_9 
       (.I0(right_sr1[7]),
        .I1(right_sr1[6]),
        .I2(right_sr1[9]),
        .I3(right_sr1[8]),
        .O(\right_sr[44]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \right_sr[4]_i_1 
       (.I0(\right_sr[13]_i_2_n_0 ),
        .I1(\right_sr[44]_i_2_n_0 ),
        .I2(\right_sr[7]_i_2_n_0 ),
        .I3(\right_sr[4]_i_2_n_0 ),
        .I4(in_right[4]),
        .O(\right_sr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'h1F00)) 
    \right_sr[4]_i_2 
       (.I0(right_sr1[1]),
        .I1(right_sr1[0]),
        .I2(right_sr1[2]),
        .I3(\right_sr[44]_i_9_n_0 ),
        .O(\right_sr[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \right_sr[5]_i_1 
       (.I0(\right_sr[13]_i_2_n_0 ),
        .I1(\right_sr[37]_i_4_n_0 ),
        .I2(\right_sr[7]_i_2_n_0 ),
        .I3(\right_sr[5]_i_2_n_0 ),
        .I4(in_right[5]),
        .O(\right_sr[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000007)) 
    \right_sr[5]_i_2 
       (.I0(right_sr1[1]),
        .I1(right_sr1[2]),
        .I2(right_sr1[7]),
        .I3(right_sr1[6]),
        .I4(right_sr1[9]),
        .I5(right_sr1[8]),
        .O(\right_sr[5]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \right_sr[5]_i_4 
       (.I0(\right_sr_reg[43]_i_6_n_5 ),
        .O(\right_sr[5]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \right_sr[5]_i_5 
       (.I0(\right_sr_reg[43]_i_6_n_6 ),
        .O(\right_sr[5]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \right_sr[6]_i_1 
       (.I0(\right_sr[13]_i_2_n_0 ),
        .I1(\right_sr[38]_i_2_n_0 ),
        .I2(\right_sr[7]_i_2_n_0 ),
        .I3(\right_sr[38]_i_3_n_0 ),
        .I4(in_right[6]),
        .O(\right_sr[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \right_sr[7]_i_1 
       (.I0(\right_sr[13]_i_2_n_0 ),
        .I1(\right_sr[39]_i_3_n_0 ),
        .I2(\right_sr[7]_i_2_n_0 ),
        .I3(\right_sr[39]_i_5_n_0 ),
        .I4(in_right[7]),
        .O(\right_sr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \right_sr[7]_i_2 
       (.I0(right_sr1[3]),
        .I1(\right_sr[43]_i_5_n_0 ),
        .I2(right_sr1[4]),
        .I3(right_sr1[5]),
        .O(\right_sr[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    \right_sr[8]_i_1 
       (.I0(right_sr0[8]),
        .I1(right_sr1[5]),
        .I2(right_sr1[4]),
        .I3(\right_sr[40]_i_3_n_0 ),
        .I4(\right_sr[43]_i_5_n_0 ),
        .I5(in_right[8]),
        .O(\right_sr[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000088000000F0)) 
    \right_sr[8]_i_2 
       (.I0(\right_sr[0]_i_2_n_0 ),
        .I1(\ui_r_reg_n_0_[0] ),
        .I2(\right_sr[32]_i_2_n_0 ),
        .I3(right_sr1[4]),
        .I4(right_sr1[5]),
        .I5(right_sr1[3]),
        .O(right_sr0[8]));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    \right_sr[9]_i_1 
       (.I0(right_sr0[9]),
        .I1(right_sr1[5]),
        .I2(right_sr1[4]),
        .I3(\right_sr[41]_i_3_n_0 ),
        .I4(\right_sr[43]_i_5_n_0 ),
        .I5(in_right[9]),
        .O(\right_sr[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h000A000C)) 
    \right_sr[9]_i_2 
       (.I0(\right_sr[33]_i_3_n_0 ),
        .I1(\right_sr[33]_i_2_n_0 ),
        .I2(right_sr1[4]),
        .I3(right_sr1[5]),
        .I4(right_sr1[3]),
        .O(right_sr0[9]));
  FDRE \right_sr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\right_sr[0]_i_1_n_0 ),
        .Q(in_right[0]),
        .R(1'b0));
  FDRE \right_sr_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\right_sr[10]_i_1_n_0 ),
        .Q(in_right[10]),
        .R(1'b0));
  FDRE \right_sr_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\right_sr[11]_i_1_n_0 ),
        .Q(in_right[11]),
        .R(1'b0));
  FDRE \right_sr_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\right_sr[12]_i_1_n_0 ),
        .Q(in_right[12]),
        .R(1'b0));
  FDRE \right_sr_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\right_sr[13]_i_1_n_0 ),
        .Q(in_right[13]),
        .R(1'b0));
  FDRE \right_sr_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\right_sr[14]_i_1_n_0 ),
        .Q(in_right[14]),
        .R(1'b0));
  FDRE \right_sr_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\right_sr[15]_i_1_n_0 ),
        .Q(in_right[15]),
        .R(1'b0));
  FDRE \right_sr_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\right_sr[16]_i_1_n_0 ),
        .Q(in_right[16]),
        .R(1'b0));
  FDRE \right_sr_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\right_sr[17]_i_1_n_0 ),
        .Q(in_right[17]),
        .R(1'b0));
  FDRE \right_sr_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\right_sr[18]_i_1_n_0 ),
        .Q(in_right[18]),
        .R(1'b0));
  FDRE \right_sr_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\right_sr[19]_i_1_n_0 ),
        .Q(in_right[19]),
        .R(1'b0));
  FDRE \right_sr_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\right_sr[1]_i_1_n_0 ),
        .Q(in_right[1]),
        .R(1'b0));
  FDRE \right_sr_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\right_sr[20]_i_1_n_0 ),
        .Q(in_right[20]),
        .R(1'b0));
  FDRE \right_sr_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\right_sr[21]_i_1_n_0 ),
        .Q(in_right[21]),
        .R(1'b0));
  FDRE \right_sr_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\right_sr[22]_i_1_n_0 ),
        .Q(in_right[22]),
        .R(1'b0));
  FDRE \right_sr_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\right_sr[23]_i_1_n_0 ),
        .Q(in_right[23]),
        .R(1'b0));
  FDRE \right_sr_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\right_sr[24]_i_1_n_0 ),
        .Q(in_right[24]),
        .R(1'b0));
  FDRE \right_sr_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\right_sr[25]_i_1_n_0 ),
        .Q(in_right[25]),
        .R(1'b0));
  FDRE \right_sr_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\right_sr[26]_i_1_n_0 ),
        .Q(in_right[26]),
        .R(1'b0));
  FDRE \right_sr_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\right_sr[27]_i_1_n_0 ),
        .Q(in_right[27]),
        .R(1'b0));
  FDRE \right_sr_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\right_sr[28]_i_1_n_0 ),
        .Q(in_right[28]),
        .R(1'b0));
  FDRE \right_sr_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\right_sr[29]_i_1_n_0 ),
        .Q(in_right[29]),
        .R(1'b0));
  FDRE \right_sr_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\right_sr[2]_i_1_n_0 ),
        .Q(in_right[2]),
        .R(1'b0));
  FDRE \right_sr_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\right_sr[30]_i_1_n_0 ),
        .Q(in_right[30]),
        .R(1'b0));
  FDRE \right_sr_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\right_sr[31]_i_1_n_0 ),
        .Q(in_right[31]),
        .R(1'b0));
  FDRE \right_sr_reg[32] 
       (.C(clk),
        .CE(1'b1),
        .D(\right_sr[32]_i_1_n_0 ),
        .Q(in_right[32]),
        .R(1'b0));
  FDRE \right_sr_reg[33] 
       (.C(clk),
        .CE(1'b1),
        .D(\right_sr[33]_i_1_n_0 ),
        .Q(in_right[33]),
        .R(1'b0));
  FDRE \right_sr_reg[34] 
       (.C(clk),
        .CE(1'b1),
        .D(\right_sr[34]_i_1_n_0 ),
        .Q(in_right[34]),
        .R(1'b0));
  FDRE \right_sr_reg[35] 
       (.C(clk),
        .CE(1'b1),
        .D(\right_sr[35]_i_1_n_0 ),
        .Q(in_right[35]),
        .R(1'b0));
  FDRE \right_sr_reg[36] 
       (.C(clk),
        .CE(1'b1),
        .D(\right_sr[36]_i_1_n_0 ),
        .Q(in_right[36]),
        .R(1'b0));
  FDRE \right_sr_reg[37] 
       (.C(clk),
        .CE(1'b1),
        .D(\right_sr[37]_i_1_n_0 ),
        .Q(in_right[37]),
        .R(1'b0));
  FDRE \right_sr_reg[38] 
       (.C(clk),
        .CE(1'b1),
        .D(\right_sr[38]_i_1_n_0 ),
        .Q(in_right[38]),
        .R(1'b0));
  FDRE \right_sr_reg[39] 
       (.C(clk),
        .CE(1'b1),
        .D(\right_sr[39]_i_1_n_0 ),
        .Q(in_right[39]),
        .R(1'b0));
  FDRE \right_sr_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\right_sr[3]_i_1_n_0 ),
        .Q(in_right[3]),
        .R(1'b0));
  FDRE \right_sr_reg[40] 
       (.C(clk),
        .CE(1'b1),
        .D(\right_sr[40]_i_1_n_0 ),
        .Q(in_right[40]),
        .R(1'b0));
  FDRE \right_sr_reg[41] 
       (.C(clk),
        .CE(1'b1),
        .D(\right_sr[41]_i_1_n_0 ),
        .Q(in_right[41]),
        .R(1'b0));
  FDRE \right_sr_reg[42] 
       (.C(clk),
        .CE(1'b1),
        .D(\right_sr[42]_i_1_n_0 ),
        .Q(in_right[42]),
        .R(1'b0));
  FDRE \right_sr_reg[43] 
       (.C(clk),
        .CE(1'b1),
        .D(\right_sr[43]_i_1_n_0 ),
        .Q(in_right[43]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \right_sr_reg[43]_i_3 
       (.CI(\right_sr_reg[44]_i_4_n_0 ),
        .CO({\right_sr_reg[43]_i_3_n_0 ,\right_sr_reg[43]_i_3_n_1 ,\right_sr_reg[43]_i_3_n_2 ,\right_sr_reg[43]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\right_sr_reg[43]_i_6_n_7 ,\right_sr_reg[44]_i_10_n_4 ,\right_sr_reg[44]_i_10_n_5 ,\right_sr_reg[44]_i_10_n_6 }),
        .O(right_sr1[7:4]),
        .S({\right_sr[43]_i_7_n_0 ,\right_sr[43]_i_8_n_0 ,\right_sr[43]_i_9_n_0 ,\right_sr[43]_i_10_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \right_sr_reg[43]_i_6 
       (.CI(\right_sr_reg[44]_i_10_n_0 ),
        .CO({\NLW_right_sr_reg[43]_i_6_CO_UNCONNECTED [3:2],\right_sr_reg[43]_i_6_n_2 ,\right_sr_reg[43]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\right_sr[43]_i_12_n_0 ,\right_sr[43]_i_13_n_0 }),
        .O({\NLW_right_sr_reg[43]_i_6_O_UNCONNECTED [3],\right_sr_reg[43]_i_6_n_5 ,\right_sr_reg[43]_i_6_n_6 ,\right_sr_reg[43]_i_6_n_7 }),
        .S({1'b0,\right_sr[43]_i_14_n_0 ,\right_sr[43]_i_15_n_0 ,\right_sr[43]_i_16_n_0 }));
  FDRE \right_sr_reg[44] 
       (.C(clk),
        .CE(1'b1),
        .D(\right_sr[44]_i_1_n_0 ),
        .Q(in_right[44]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \right_sr_reg[44]_i_10 
       (.CI(1'b0),
        .CO({\right_sr_reg[44]_i_10_n_0 ,\right_sr_reg[44]_i_10_n_1 ,\right_sr_reg[44]_i_10_n_2 ,\right_sr_reg[44]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({\right_sr[44]_i_15_n_0 ,\right_sr[44]_i_16_n_0 ,\right_sr[44]_i_17_n_0 ,ph[0]}),
        .O({\right_sr_reg[44]_i_10_n_4 ,\right_sr_reg[44]_i_10_n_5 ,\right_sr_reg[44]_i_10_n_6 ,\right_sr_reg[44]_i_10_n_7 }),
        .S({\right_sr[44]_i_18_n_0 ,\right_sr[44]_i_19_n_0 ,\right_sr[44]_i_20_n_0 ,\right_sr[44]_i_21_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \right_sr_reg[44]_i_4 
       (.CI(1'b0),
        .CO({\right_sr_reg[44]_i_4_n_0 ,\right_sr_reg[44]_i_4_n_1 ,\right_sr_reg[44]_i_4_n_2 ,\right_sr_reg[44]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\right_sr_reg[44]_i_10_n_7 ,1'b0,1'b0,1'b1}),
        .O(right_sr1[3:0]),
        .S({\right_sr[44]_i_11_n_0 ,\right_sr[44]_i_12_n_0 ,\right_sr[44]_i_13_n_0 ,\right_sr_reg[44]_i_10_n_7 }));
  FDRE \right_sr_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\right_sr[4]_i_1_n_0 ),
        .Q(in_right[4]),
        .R(1'b0));
  FDRE \right_sr_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\right_sr[5]_i_1_n_0 ),
        .Q(in_right[5]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \right_sr_reg[5]_i_3 
       (.CI(\right_sr_reg[43]_i_3_n_0 ),
        .CO({\NLW_right_sr_reg[5]_i_3_CO_UNCONNECTED [3:1],\right_sr_reg[5]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\right_sr_reg[43]_i_6_n_6 }),
        .O({\NLW_right_sr_reg[5]_i_3_O_UNCONNECTED [3:2],right_sr1[9:8]}),
        .S({1'b0,1'b0,\right_sr[5]_i_4_n_0 ,\right_sr[5]_i_5_n_0 }));
  FDRE \right_sr_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\right_sr[6]_i_1_n_0 ),
        .Q(in_right[6]),
        .R(1'b0));
  FDRE \right_sr_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\right_sr[7]_i_1_n_0 ),
        .Q(in_right[7]),
        .R(1'b0));
  FDRE \right_sr_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\right_sr[8]_i_1_n_0 ),
        .Q(in_right[8]),
        .R(1'b0));
  FDRE \right_sr_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\right_sr[9]_i_1_n_0 ),
        .Q(in_right[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \rin_s[7]_i_1 
       (.I0(\uo[7]_i_8_n_0 ),
        .I1(\rin_s[7]_i_3_n_0 ),
        .I2(pos[2]),
        .I3(pos[1]),
        .I4(pos[0]),
        .O(\pos_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rin_s[7]_i_2 
       (.I0(\uo[7]_i_8_n_0 ),
        .I1(\rin_s[7]_i_3_n_0 ),
        .O(run_reg_5));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hFFFFBFFE)) 
    \rin_s[7]_i_3 
       (.I0(\rin_s[7]_i_4_n_0 ),
        .I1(\uo[7]_i_17_n_0 ),
        .I2(n[2]),
        .I3(\uo[7]_i_18_n_0 ),
        .I4(\m_sec[7]_i_4_n_0 ),
        .O(\rin_s[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6F66FFFFFFFFF)) 
    \rin_s[7]_i_4 
       (.I0(\pos_reg[0]_0 ),
        .I1(n[1]),
        .I2(n[0]),
        .I3(pos[0]),
        .I4(\uc_reg[3]_0 [0]),
        .I5(\m_s2[6]_i_3_n_0 ),
        .O(\rin_s[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rs_ok[15]_i_1 
       (.I0(sg_first),
        .I1(load),
        .O(sg_first_reg_0));
  LUT6 #(
    .INIT(64'h888880888A888888)) 
    run_i_1
       (.I0(\rec_in_reg[6] ),
        .I1(run),
        .I2(p_0_in[2]),
        .I3(run_i_2_n_0),
        .I4(p_0_in[0]),
        .I5(p_0_in[1]),
        .O(run_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h10)) 
    run_i_2
       (.I0(ph[1]),
        .I1(ph[0]),
        .I2(\ftype[2]_i_2_n_0 ),
        .O(run_i_2_n_0));
  FDRE run_reg
       (.C(clk),
        .CE(1'b1),
        .D(run_i_1_n_0),
        .Q(run),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s0[6]_i_1 
       (.I0(\s0[6]_i_3_n_0 ),
        .I1(load),
        .O(sg_valid_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \s0[6]_i_2 
       (.I0(load),
        .I1(\s0[6]_i_3_n_0 ),
        .O(sg_valid_reg_0));
  LUT5 #(
    .INIT(32'hFFFBFFFF)) 
    \s0[6]_i_3 
       (.I0(\s0[6]_i_4_n_0 ),
        .I1(scan),
        .I2(\s0[6]_i_5_n_0 ),
        .I3(\s0[6]_i_6_n_0 ),
        .I4(\s0[6]_i_7_n_0 ),
        .O(\s0[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h5556AAAA)) 
    \s0[6]_i_4 
       (.I0(pos[2]),
        .I1(kstar[5]),
        .I2(\sec[7]_i_34_n_0 ),
        .I3(kstar[4]),
        .I4(kstar[6]),
        .O(\s0[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hFFF9CC6F)) 
    \s0[6]_i_5 
       (.I0(kstar[1]),
        .I1(\uc_reg[3]_0 [1]),
        .I2(kstar[0]),
        .I3(\sec[7]_i_37_n_0 ),
        .I4(\uc_reg[3]_0 [0]),
        .O(\s0[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEEFFFFEBBBAAAAB)) 
    \s0[6]_i_6 
       (.I0(\sec[7]_i_38_n_0 ),
        .I1(\sec[7]_i_37_n_0 ),
        .I2(kstar[1]),
        .I3(kstar[0]),
        .I4(kstar[2]),
        .I5(\uc_reg[3]_0 [2]),
        .O(\s0[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9900006400999901)) 
    \s0[6]_i_7 
       (.I0(pos[1]),
        .I1(kstar[5]),
        .I2(kstar[6]),
        .I3(\sec[7]_i_34_n_0 ),
        .I4(kstar[4]),
        .I5(pos[0]),
        .O(\s0[6]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'h73)) 
    \s0[7]_i_1 
       (.I0(load),
        .I1(\s0[6]_i_3_n_0 ),
        .I2(s0[7]),
        .O(\s0_reg[7] ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s2[6]_i_1 
       (.I0(\s2[6]_i_3_n_0 ),
        .I1(load),
        .O(sg_valid_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \s2[6]_i_2 
       (.I0(load),
        .I1(\s2[6]_i_3_n_0 ),
        .O(sg_valid_reg_1));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \s2[6]_i_3 
       (.I0(\s2[6]_i_4_n_0 ),
        .I1(\s2[6]_i_5_n_0 ),
        .I2(scan),
        .I3(\s2[6]_i_6_n_0 ),
        .I4(\s2[6]_i_7_n_0 ),
        .O(\s2[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC9C0C0C900060900)) 
    \s2[6]_i_4 
       (.I0(kstar[3]),
        .I1(\uc_reg[3]_0 [3]),
        .I2(\sec[7]_i_33_n_0 ),
        .I3(\sec[7]_i_32_n_0 ),
        .I4(kstar[2]),
        .I5(\uc_reg[3]_0 [2]),
        .O(\s2[6]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7887)) 
    \s2[6]_i_5 
       (.I0(\sec[7]_i_30_n_0 ),
        .I1(kstar[5]),
        .I2(kstar[6]),
        .I3(pos[2]),
        .O(\s2[6]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hCC090060)) 
    \s2[6]_i_6 
       (.I0(kstar[1]),
        .I1(\uc_reg[3]_0 [1]),
        .I2(kstar[0]),
        .I3(\sec[7]_i_33_n_0 ),
        .I4(\uc_reg[3]_0 [0]),
        .O(\s2[6]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h90090960)) 
    \s2[6]_i_7 
       (.I0(kstar[5]),
        .I1(pos[1]),
        .I2(kstar[4]),
        .I3(\sec[7]_i_31_n_0 ),
        .I4(pos[0]),
        .O(\s2[6]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'h73)) 
    \s2[7]_i_1 
       (.I0(load),
        .I1(\s2[6]_i_3_n_0 ),
        .I2(s2[7]),
        .O(\s2_reg[7] ));
  LUT6 #(
    .INIT(64'hABFFFFFFA8000000)) 
    \sec[0]_i_1 
       (.I0(a[0]),
        .I1(\sec_reg[7]_i_5_n_0 ),
        .I2(\sec_reg[7]_i_4_n_0 ),
        .I3(scan),
        .I4(CO),
        .I5(load),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hABFFFFFFA8000000)) 
    \sec[1]_i_1 
       (.I0(a[1]),
        .I1(\sec_reg[7]_i_5_n_0 ),
        .I2(\sec_reg[7]_i_4_n_0 ),
        .I3(scan),
        .I4(CO),
        .I5(load),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hABFFFFFFA8000000)) 
    \sec[2]_i_1 
       (.I0(a[2]),
        .I1(\sec_reg[7]_i_5_n_0 ),
        .I2(\sec_reg[7]_i_4_n_0 ),
        .I3(scan),
        .I4(CO),
        .I5(load),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hABFFFFFFA8000000)) 
    \sec[3]_i_1 
       (.I0(a[3]),
        .I1(\sec_reg[7]_i_5_n_0 ),
        .I2(\sec_reg[7]_i_4_n_0 ),
        .I3(scan),
        .I4(CO),
        .I5(load),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hABFFFFFFA8000000)) 
    \sec[4]_i_1 
       (.I0(a[4]),
        .I1(\sec_reg[7]_i_5_n_0 ),
        .I2(\sec_reg[7]_i_4_n_0 ),
        .I3(scan),
        .I4(CO),
        .I5(load),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hABFFFFFFA8000000)) 
    \sec[5]_i_1 
       (.I0(a[5]),
        .I1(\sec_reg[7]_i_5_n_0 ),
        .I2(\sec_reg[7]_i_4_n_0 ),
        .I3(scan),
        .I4(CO),
        .I5(load),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hABFFFFFFA8000000)) 
    \sec[6]_i_1 
       (.I0(a[6]),
        .I1(\sec_reg[7]_i_5_n_0 ),
        .I2(\sec_reg[7]_i_4_n_0 ),
        .I3(scan),
        .I4(CO),
        .I5(load),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hEAEAEAAA)) 
    \sec[7]_i_1 
       (.I0(load),
        .I1(CO),
        .I2(scan),
        .I3(\sec_reg[7]_i_4_n_0 ),
        .I4(\sec_reg[7]_i_5_n_0 ),
        .O(sg_valid_reg_4));
  LUT4 #(
    .INIT(16'h802A)) 
    \sec[7]_i_14 
       (.I0(pos[2]),
        .I1(\sec[7]_i_30_n_0 ),
        .I2(kstar[5]),
        .I3(kstar[6]),
        .O(\sec[7]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h2CBA08A2)) 
    \sec[7]_i_15 
       (.I0(pos[1]),
        .I1(kstar[4]),
        .I2(\sec[7]_i_31_n_0 ),
        .I3(kstar[5]),
        .I4(pos[0]),
        .O(\sec[7]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h00002BE200002282)) 
    \sec[7]_i_16 
       (.I0(\uc_reg[3]_0 [3]),
        .I1(kstar[3]),
        .I2(kstar[2]),
        .I3(\sec[7]_i_32_n_0 ),
        .I4(\sec[7]_i_33_n_0 ),
        .I5(\uc_reg[3]_0 [2]),
        .O(\sec[7]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h00E20082)) 
    \sec[7]_i_17 
       (.I0(\uc_reg[3]_0 [1]),
        .I1(kstar[1]),
        .I2(kstar[0]),
        .I3(\sec[7]_i_33_n_0 ),
        .I4(\uc_reg[3]_0 [0]),
        .O(\sec[7]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h7887)) 
    \sec[7]_i_18 
       (.I0(\sec[7]_i_30_n_0 ),
        .I1(kstar[5]),
        .I2(kstar[6]),
        .I3(pos[2]),
        .O(\sec[7]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h90090960)) 
    \sec[7]_i_19 
       (.I0(kstar[5]),
        .I1(pos[1]),
        .I2(kstar[4]),
        .I3(\sec[7]_i_31_n_0 ),
        .I4(pos[0]),
        .O(\sec[7]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h2A2A2AAA)) 
    \sec[7]_i_2 
       (.I0(load),
        .I1(CO),
        .I2(scan),
        .I3(\sec_reg[7]_i_4_n_0 ),
        .I4(\sec_reg[7]_i_5_n_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hC9C0C0C900060900)) 
    \sec[7]_i_20 
       (.I0(kstar[3]),
        .I1(\uc_reg[3]_0 [3]),
        .I2(\sec[7]_i_33_n_0 ),
        .I3(\sec[7]_i_32_n_0 ),
        .I4(kstar[2]),
        .I5(\uc_reg[3]_0 [2]),
        .O(\sec[7]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hCC090060)) 
    \sec[7]_i_21 
       (.I0(kstar[1]),
        .I1(\uc_reg[3]_0 [1]),
        .I2(kstar[0]),
        .I3(\sec[7]_i_33_n_0 ),
        .I4(\uc_reg[3]_0 [0]),
        .O(\sec[7]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h0000FE00)) 
    \sec[7]_i_22 
       (.I0(kstar[5]),
        .I1(\sec[7]_i_34_n_0 ),
        .I2(kstar[4]),
        .I3(kstar[6]),
        .I4(pos[2]),
        .O(\sec[7]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h55500004F555500C)) 
    \sec[7]_i_23 
       (.I0(pos[1]),
        .I1(kstar[6]),
        .I2(kstar[4]),
        .I3(\sec[7]_i_34_n_0 ),
        .I4(kstar[5]),
        .I5(pos[0]),
        .O(\sec[7]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h022F)) 
    \sec[7]_i_24 
       (.I0(\sec[7]_i_35_n_0 ),
        .I1(\uc_reg[3]_0 [2]),
        .I2(\uc_reg[3]_0 [3]),
        .I3(\sec[7]_i_36_n_0 ),
        .O(\sec[7]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h10011013)) 
    \sec[7]_i_25 
       (.I0(\uc_reg[3]_0 [1]),
        .I1(\sec[7]_i_37_n_0 ),
        .I2(kstar[1]),
        .I3(kstar[0]),
        .I4(\uc_reg[3]_0 [0]),
        .O(\sec[7]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'hAAA85557)) 
    \sec[7]_i_26 
       (.I0(kstar[6]),
        .I1(kstar[4]),
        .I2(\sec[7]_i_34_n_0 ),
        .I3(kstar[5]),
        .I4(pos[2]),
        .O(\sec[7]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h9900006400999901)) 
    \sec[7]_i_27 
       (.I0(pos[1]),
        .I1(kstar[5]),
        .I2(kstar[6]),
        .I3(\sec[7]_i_34_n_0 ),
        .I4(kstar[4]),
        .I5(pos[0]),
        .O(\sec[7]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055559996)) 
    \sec[7]_i_28 
       (.I0(\uc_reg[3]_0 [2]),
        .I1(kstar[2]),
        .I2(kstar[0]),
        .I3(kstar[1]),
        .I4(\sec[7]_i_37_n_0 ),
        .I5(\sec[7]_i_38_n_0 ),
        .O(\sec[7]_i_28_n_0 ));
  LUT5 #(
    .INIT(32'h10460254)) 
    \sec[7]_i_29 
       (.I0(\uc_reg[3]_0 [0]),
        .I1(\sec[7]_i_37_n_0 ),
        .I2(kstar[0]),
        .I3(\uc_reg[3]_0 [1]),
        .I4(kstar[1]),
        .O(\sec[7]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \sec[7]_i_30 
       (.I0(kstar[4]),
        .I1(\sec[7]_i_39_n_0 ),
        .I2(kstar[2]),
        .I3(kstar[1]),
        .I4(kstar[0]),
        .I5(kstar[3]),
        .O(\sec[7]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \sec[7]_i_31 
       (.I0(kstar[3]),
        .I1(kstar[0]),
        .I2(kstar[1]),
        .I3(kstar[2]),
        .I4(\sec[7]_i_39_n_0 ),
        .O(\sec[7]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \sec[7]_i_32 
       (.I0(kstar[1]),
        .I1(kstar[0]),
        .O(\sec[7]_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \sec[7]_i_33 
       (.I0(kstar[3]),
        .I1(kstar[0]),
        .I2(kstar[1]),
        .I3(kstar[2]),
        .I4(\sec[7]_i_39_n_0 ),
        .O(\sec[7]_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sec[7]_i_34 
       (.I0(kstar[3]),
        .I1(kstar[1]),
        .I2(kstar[2]),
        .I3(kstar[0]),
        .O(\sec[7]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h5401)) 
    \sec[7]_i_35 
       (.I0(\sec[7]_i_37_n_0 ),
        .I1(kstar[1]),
        .I2(kstar[0]),
        .I3(kstar[2]),
        .O(\sec[7]_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h55565557)) 
    \sec[7]_i_36 
       (.I0(kstar[3]),
        .I1(kstar[1]),
        .I2(kstar[2]),
        .I3(kstar[0]),
        .I4(\sec[7]_i_40_n_0 ),
        .O(\sec[7]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \sec[7]_i_37 
       (.I0(kstar[4]),
        .I1(kstar[5]),
        .I2(kstar[6]),
        .I3(kstar[1]),
        .I4(kstar[2]),
        .I5(kstar[3]),
        .O(\sec[7]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h5555555AAAAAAAA6)) 
    \sec[7]_i_38 
       (.I0(\uc_reg[3]_0 [3]),
        .I1(\sec[7]_i_40_n_0 ),
        .I2(kstar[0]),
        .I3(kstar[2]),
        .I4(kstar[1]),
        .I5(kstar[3]),
        .O(\sec[7]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hFF6FF6FFF9FFFF6F)) 
    \sec[7]_i_39 
       (.I0(n[2]),
        .I1(kstar[6]),
        .I2(n[0]),
        .I3(kstar[4]),
        .I4(kstar[5]),
        .I5(n[1]),
        .O(\sec[7]_i_39_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \sec[7]_i_40 
       (.I0(kstar[6]),
        .I1(kstar[5]),
        .I2(kstar[4]),
        .O(\sec[7]_i_40_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \sec_reg[7]_i_4 
       (.CI(1'b0),
        .CO({\sec_reg[7]_i_4_n_0 ,\sec_reg[7]_i_4_n_1 ,\sec_reg[7]_i_4_n_2 ,\sec_reg[7]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\sec[7]_i_14_n_0 ,\sec[7]_i_15_n_0 ,\sec[7]_i_16_n_0 ,\sec[7]_i_17_n_0 }),
        .O(\NLW_sec_reg[7]_i_4_O_UNCONNECTED [3:0]),
        .S({\sec[7]_i_18_n_0 ,\sec[7]_i_19_n_0 ,\sec[7]_i_20_n_0 ,\sec[7]_i_21_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \sec_reg[7]_i_5 
       (.CI(1'b0),
        .CO({\sec_reg[7]_i_5_n_0 ,\sec_reg[7]_i_5_n_1 ,\sec_reg[7]_i_5_n_2 ,\sec_reg[7]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({\sec[7]_i_22_n_0 ,\sec[7]_i_23_n_0 ,\sec[7]_i_24_n_0 ,\sec[7]_i_25_n_0 }),
        .O(\NLW_sec_reg[7]_i_5_O_UNCONNECTED [3:0]),
        .S({\sec[7]_i_26_n_0 ,\sec[7]_i_27_n_0 ,\sec[7]_i_28_n_0 ,\sec[7]_i_29_n_0 }));
  LUT3 #(
    .INIT(8'hB8)) 
    sg_first_i_1
       (.I0(hn_first),
        .I1(p_4_in),
        .I2(sg_first),
        .O(sg_first_i_1_n_0));
  FDRE sg_first_reg
       (.C(clk),
        .CE(1'b1),
        .D(sg_first_i_1_n_0),
        .Q(sg_first),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    sg_real_i_1
       (.I0(hn_real),
        .I1(p_4_in),
        .I2(sg_real),
        .O(sg_real_i_1_n_0));
  FDRE sg_real_reg
       (.C(clk),
        .CE(1'b1),
        .D(sg_real_i_1_n_0),
        .Q(sg_real),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    sg_use_i_1
       (.I0(hn_use),
        .I1(p_4_in),
        .I2(sg_use),
        .O(sg_use_i_1_n_0));
  FDRE sg_use_reg
       (.C(clk),
        .CE(1'b1),
        .D(sg_use_i_1_n_0),
        .Q(sg_use),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h88A08800)) 
    sg_valid_i_1
       (.I0(\rec_in_reg[6] ),
        .I1(run),
        .I2(sg_valid_reg_n_0),
        .I3(p_4_in),
        .I4(act_i_2_n_0),
        .O(sg_valid_i_1_n_0));
  FDRE sg_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(sg_valid_i_1_n_0),
        .Q(sg_valid_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \uc[0]_i_1 
       (.I0(\uc_reg[3]_0 [0]),
        .I1(load),
        .O(\uc[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \uc[1]_i_1 
       (.I0(\uc_reg[3]_0 [1]),
        .I1(\uc_reg[3]_0 [0]),
        .I2(load),
        .O(\uc[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \uc[2]_i_1 
       (.I0(\uc_reg[3]_0 [2]),
        .I1(\uc_reg[3]_0 [0]),
        .I2(\uc_reg[3]_0 [1]),
        .I3(load),
        .O(\uc[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \uc[3]_i_1 
       (.I0(\uc_reg[3]_0 [3]),
        .I1(\uc_reg[3]_0 [1]),
        .I2(\uc_reg[3]_0 [0]),
        .I3(\uc_reg[3]_0 [2]),
        .I4(load),
        .O(\uc[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \uc[4]_i_1 
       (.I0(uc[4]),
        .I1(\uc_reg[3]_0 [2]),
        .I2(\uc_reg[3]_0 [0]),
        .I3(\uc_reg[3]_0 [1]),
        .I4(\uc_reg[3]_0 [3]),
        .I5(load),
        .O(\uc[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    \uc[5]_i_1 
       (.I0(uc[6]),
        .I1(uc[4]),
        .I2(\uc[5]_i_3_n_0 ),
        .I3(uc[5]),
        .I4(load),
        .O(\uc[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h009A)) 
    \uc[5]_i_2 
       (.I0(uc[5]),
        .I1(\uc[5]_i_3_n_0 ),
        .I2(uc[4]),
        .I3(load),
        .O(\uc[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \uc[5]_i_3 
       (.I0(\uc_reg[3]_0 [2]),
        .I1(\uc_reg[3]_0 [0]),
        .I2(\uc_reg[3]_0 [1]),
        .I3(\uc_reg[3]_0 [3]),
        .O(\uc[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000AEAA)) 
    \uc[6]_i_1 
       (.I0(uc[6]),
        .I1(uc[4]),
        .I2(\uc[5]_i_3_n_0 ),
        .I3(uc[5]),
        .I4(load),
        .O(\uc[6]_i_1_n_0 ));
  FDSE \uc_reg[0] 
       (.C(clk),
        .CE(\uc[5]_i_1_n_0 ),
        .D(\uc[0]_i_1_n_0 ),
        .Q(\uc_reg[3]_0 [0]),
        .S(SR[1]));
  FDSE \uc_reg[1] 
       (.C(clk),
        .CE(\uc[5]_i_1_n_0 ),
        .D(\uc[1]_i_1_n_0 ),
        .Q(\uc_reg[3]_0 [1]),
        .S(SR[1]));
  FDSE \uc_reg[2] 
       (.C(clk),
        .CE(\uc[5]_i_1_n_0 ),
        .D(\uc[2]_i_1_n_0 ),
        .Q(\uc_reg[3]_0 [2]),
        .S(SR[1]));
  FDSE \uc_reg[3] 
       (.C(clk),
        .CE(\uc[5]_i_1_n_0 ),
        .D(\uc[3]_i_1_n_0 ),
        .Q(\uc_reg[3]_0 [3]),
        .S(SR[1]));
  FDSE \uc_reg[4] 
       (.C(clk),
        .CE(\uc[5]_i_1_n_0 ),
        .D(\uc[4]_i_1_n_0 ),
        .Q(uc[4]),
        .S(SR[1]));
  FDSE \uc_reg[5] 
       (.C(clk),
        .CE(\uc[5]_i_1_n_0 ),
        .D(\uc[5]_i_2_n_0 ),
        .Q(uc[5]),
        .S(SR[1]));
  FDSE \uc_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\uc[6]_i_1_n_0 ),
        .Q(uc[6]),
        .S(SR[1]));
  FDRE \ui_r_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(ui_in[0]),
        .Q(\ui_r_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \ui_r_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(ui_in[1]),
        .Q(\ui_r_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \ui_r_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(ui_in[2]),
        .Q(\ui_r_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \ui_r_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(ui_in[3]),
        .Q(\ui_r_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \ui_r_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(ui_in[4]),
        .Q(p_0_in[0]),
        .R(1'b0));
  FDRE \ui_r_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(ui_in[5]),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE \ui_r_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(ui_in[6]),
        .Q(p_0_in[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBBBBBBBBABABABAA)) 
    \uo[0]_i_1 
       (.I0(\uo[0]_i_2_n_0 ),
        .I1(\uo[0]_i_3_n_0 ),
        .I2(\uo[0]_i_4_n_0 ),
        .I3(\uo[0]_i_5_n_0 ),
        .I4(\uo[0]_i_6_n_0 ),
        .I5(\uo[0]_i_7_n_0 ),
        .O(\uio_r_reg[6] [0]));
  LUT6 #(
    .INIT(64'h6066600066666666)) 
    \uo[0]_i_10 
       (.I0(pos[0]),
        .I1(\uc_reg[3]_0 [0]),
        .I2(\uo[0]_i_7_0 ),
        .I3(\m_sec_reg[7]_2 ),
        .I4(\m_sec_reg[7] [0]),
        .I5(\pos_reg[0]_0 ),
        .O(\uo[0]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \uo[0]_i_11 
       (.I0(\uo[2]_i_17_n_0 ),
        .I1(\m_sec_reg[7] [0]),
        .I2(\uo[7]_i_22_n_0 ),
        .I3(s2[0]),
        .I4(\m_s2[6]_i_2_n_0 ),
        .O(\uo[0]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    \uo[0]_i_13 
       (.I0(\m_s0[6]_i_2_n_0 ),
        .I1(s0[0]),
        .I2(\uo[7]_i_22_n_0 ),
        .I3(\m_sec_reg[7] [0]),
        .O(\uo[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEF22222220)) 
    \uo[0]_i_14 
       (.I0(\m_sec_reg[7] [0]),
        .I1(\uo[5]_i_11_0 ),
        .I2(pos[2]),
        .I3(pos[1]),
        .I4(pos[0]),
        .I5(\uo[7]_i_10_1 [0]),
        .O(\uo[0]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \uo[0]_i_15 
       (.I0(\uo[7]_i_12_n_0 ),
        .I1(\uo[6]_i_5_1 [0]),
        .I2(\uo[7]_i_11_n_0 ),
        .I3(\m_sec_reg[7] [0]),
        .O(\uo[0]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \uo[0]_i_2 
       (.I0(run),
        .I1(\m_sec_reg[7] [0]),
        .O(\uo[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5555555D5D5D5D5D)) 
    \uo[0]_i_3 
       (.I0(\uo[7]_i_8_n_0 ),
        .I1(\uo[7]_i_7_n_0 ),
        .I2(\uo[0]_i_8_n_0 ),
        .I3(\pos_reg[0]_0 ),
        .I4(\uo[0]_i_9_n_0 ),
        .I5(\uo[0]_i_10_n_0 ),
        .O(\uo[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hEEEF)) 
    \uo[0]_i_4 
       (.I0(\dn_edge[6]_i_3_n_0 ),
        .I1(\uo[7]_i_12_n_0 ),
        .I2(\rin_s[7]_i_3_n_0 ),
        .I3(\m_sec_reg[7]_0 [7]),
        .O(\uo[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF0E000E)) 
    \uo[0]_i_5 
       (.I0(\uo[0]_i_11_n_0 ),
        .I1(\m_s0_reg[0] ),
        .I2(\uo[0]_i_13_n_0 ),
        .I3(\uo[2]_i_14_n_0 ),
        .I4(\uo[0]_i_14_n_0 ),
        .I5(\rec_in[14]_i_2_n_0 ),
        .O(\uo[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \uo[0]_i_6 
       (.I0(\uo[4]_i_10_n_0 ),
        .I1(\rec_in[14]_i_2_n_0 ),
        .I2(\m_sec_reg[7]_0 [0]),
        .O(\uo[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAEEEAEEEAEE)) 
    \uo[0]_i_7 
       (.I0(\uo[0]_i_15_n_0 ),
        .I1(\uo[7]_i_7_n_0 ),
        .I2(\uo[0]_i_10_n_0 ),
        .I3(\pos_reg[0]_0 ),
        .I4(\uo[6]_i_5_0 [0]),
        .I5(\dn_edge[6]_i_3_n_0 ),
        .O(\uo[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9999999990999000)) 
    \uo[0]_i_8 
       (.I0(pos[0]),
        .I1(\uc_reg[3]_0 [0]),
        .I2(\m_sec_reg[7] [0]),
        .I3(\uo[7]_i_15_n_0 ),
        .I4(best_s[0]),
        .I5(\pos_reg[0]_0 ),
        .O(\uo[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEF22222220)) 
    \uo[0]_i_9 
       (.I0(\m_sec_reg[7] [0]),
        .I1(\uo[1]_i_8 ),
        .I2(pos[2]),
        .I3(pos[1]),
        .I4(pos[0]),
        .I5(lmin[0]),
        .O(\uo[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55551110)) 
    \uo[1]_i_1 
       (.I0(\uo[1]_i_2_n_0 ),
        .I1(\uo[1]_i_3_n_0 ),
        .I2(\uo[1]_i_4_n_0 ),
        .I3(\uo[1]_i_5_n_0 ),
        .I4(\uo[1]_i_6_n_0 ),
        .I5(\m_s0_reg[1] ),
        .O(\uio_r_reg[6] [1]));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \uo[1]_i_10 
       (.I0(\uo[2]_i_17_n_0 ),
        .I1(\m_sec_reg[7] [1]),
        .I2(\uo[7]_i_22_n_0 ),
        .I3(s2[1]),
        .I4(\m_s2[6]_i_2_n_0 ),
        .O(\uo[1]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'hD)) 
    \uo[1]_i_11 
       (.I0(\uc_reg[4]_0 ),
        .I1(\uo[6]_i_8_0 [0]),
        .O(\uo[1]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h02A2)) 
    \uo[1]_i_13 
       (.I0(\m_s0[6]_i_2_n_0 ),
        .I1(s0[1]),
        .I2(\uo[7]_i_22_n_0 ),
        .I3(\m_sec_reg[7] [1]),
        .O(\uo[1]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hBABFAAAA)) 
    \uo[1]_i_14 
       (.I0(\rec_in[14]_i_2_n_0 ),
        .I1(\m_sec_reg[7] [1]),
        .I2(\uo[5]_i_16_n_0 ),
        .I3(\uo[7]_i_10_1 [1]),
        .I4(\uo[2]_i_14_n_0 ),
        .O(\uo[1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFF8F8F8F88888888)) 
    \uo[1]_i_15 
       (.I0(\dn_edge[6]_i_3_n_0 ),
        .I1(\uo[6]_i_5_0 [1]),
        .I2(\pos_reg[0]_0 ),
        .I3(\uo[7]_i_13_n_0 ),
        .I4(\m_s0_reg[1]_1 ),
        .I5(\uo[7]_i_7_n_0 ),
        .O(\uo[1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h5D555D555D555DDD)) 
    \uo[1]_i_2 
       (.I0(\uo[7]_i_8_n_0 ),
        .I1(\uo[7]_i_7_n_0 ),
        .I2(\m_s0_reg[1]_1 ),
        .I3(\uo[7]_i_13_n_0 ),
        .I4(\pos_reg[0]_0 ),
        .I5(\uo[1]_i_9_n_0 ),
        .O(\uo[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hEEEF)) 
    \uo[1]_i_3 
       (.I0(\dn_edge[6]_i_3_n_0 ),
        .I1(\uo[7]_i_12_n_0 ),
        .I2(\rin_s[7]_i_3_n_0 ),
        .I3(\m_sec_reg[7]_0 [8]),
        .O(\uo[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF00AE)) 
    \uo[1]_i_4 
       (.I0(\uo[1]_i_10_n_0 ),
        .I1(\uo[1]_i_11_n_0 ),
        .I2(\m_s0_reg[1]_0 ),
        .I3(\uo[1]_i_13_n_0 ),
        .I4(\uo[2]_i_14_n_0 ),
        .I5(\uo[1]_i_14_n_0 ),
        .O(\uo[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \uo[1]_i_5 
       (.I0(\uo[4]_i_10_n_0 ),
        .I1(\rec_in[14]_i_2_n_0 ),
        .I2(\m_sec_reg[7]_0 [1]),
        .O(\uo[1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB800)) 
    \uo[1]_i_6 
       (.I0(\m_sec_reg[7] [1]),
        .I1(\uo[7]_i_11_n_0 ),
        .I2(\uo[6]_i_5_1 [1]),
        .I3(\uo[7]_i_12_n_0 ),
        .I4(\uo[1]_i_15_n_0 ),
        .O(\uo[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEF22222220)) 
    \uo[1]_i_9 
       (.I0(\m_sec_reg[7] [1]),
        .I1(own_wins_reg),
        .I2(pos[2]),
        .I3(pos[1]),
        .I4(pos[0]),
        .I5(best_s[1]),
        .O(\uo[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBABABABAA)) 
    \uo[2]_i_1 
       (.I0(\m_s0_reg[2] ),
        .I1(\uo[2]_i_3_n_0 ),
        .I2(\uo[2]_i_4_n_0 ),
        .I3(\uo[2]_i_5_n_0 ),
        .I4(\uo[2]_i_6_n_0 ),
        .I5(\uo[2]_i_7_n_0 ),
        .O(\uio_r_reg[6] [2]));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \uo[2]_i_10 
       (.I0(\uo[2]_i_17_n_0 ),
        .I1(\m_sec_reg[7] [2]),
        .I2(\uo[7]_i_22_n_0 ),
        .I3(s2[2]),
        .I4(\m_s2[6]_i_2_n_0 ),
        .O(\uo[2]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'hD)) 
    \uo[2]_i_11 
       (.I0(\uc_reg[4]_0 ),
        .I1(\uo[6]_i_8_0 [1]),
        .O(\uo[2]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h02A2)) 
    \uo[2]_i_13 
       (.I0(\m_s0[6]_i_2_n_0 ),
        .I1(s0[2]),
        .I2(\uo[7]_i_22_n_0 ),
        .I3(\m_sec_reg[7] [2]),
        .O(\uo[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010202001)) 
    \uo[2]_i_14 
       (.I0(\uo[7]_i_18_n_0 ),
        .I1(\m_sec[7]_i_3_n_0 ),
        .I2(\uo[7]_i_17_n_0 ),
        .I3(n[2]),
        .I4(n[1]),
        .I5(\m_sec[7]_i_4_n_0 ),
        .O(\uo[2]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hBABFAAAA)) 
    \uo[2]_i_15 
       (.I0(\rec_in[14]_i_2_n_0 ),
        .I1(\m_sec_reg[7] [2]),
        .I2(\uo[5]_i_16_n_0 ),
        .I3(\uo[7]_i_10_1 [2]),
        .I4(\uo[2]_i_14_n_0 ),
        .O(\uo[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFF8F8F8F88888888)) 
    \uo[2]_i_16 
       (.I0(\dn_edge[6]_i_3_n_0 ),
        .I1(\uo[6]_i_5_0 [2]),
        .I2(\pos_reg[0]_0 ),
        .I3(\uo[7]_i_13_n_0 ),
        .I4(\m_s0_reg[2]_1 ),
        .I5(\uo[7]_i_7_n_0 ),
        .O(\uo[2]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000040)) 
    \uo[2]_i_17 
       (.I0(\uo[7]_i_39_n_0 ),
        .I1(\m_s0[6]_i_4_n_0 ),
        .I2(\m_s2[6]_i_3_n_0 ),
        .I3(n[0]),
        .I4(\uo[7]_i_13_n_0 ),
        .I5(\uo[7]_i_40_n_0 ),
        .O(\uo[2]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h5D555D555D555DDD)) 
    \uo[2]_i_3 
       (.I0(\uo[7]_i_8_n_0 ),
        .I1(\uo[7]_i_7_n_0 ),
        .I2(\m_s0_reg[2]_1 ),
        .I3(\uo[7]_i_13_n_0 ),
        .I4(\pos_reg[0]_0 ),
        .I5(\uo[2]_i_9_n_0 ),
        .O(\uo[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hEEEF)) 
    \uo[2]_i_4 
       (.I0(\dn_edge[6]_i_3_n_0 ),
        .I1(\uo[7]_i_12_n_0 ),
        .I2(\rin_s[7]_i_3_n_0 ),
        .I3(\m_sec_reg[7]_0 [9]),
        .O(\uo[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF00AE)) 
    \uo[2]_i_5 
       (.I0(\uo[2]_i_10_n_0 ),
        .I1(\uo[2]_i_11_n_0 ),
        .I2(\m_s0_reg[2]_0 ),
        .I3(\uo[2]_i_13_n_0 ),
        .I4(\uo[2]_i_14_n_0 ),
        .I5(\uo[2]_i_15_n_0 ),
        .O(\uo[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \uo[2]_i_6 
       (.I0(\uo[4]_i_10_n_0 ),
        .I1(\rec_in[14]_i_2_n_0 ),
        .I2(\m_sec_reg[7]_0 [2]),
        .O(\uo[2]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB800)) 
    \uo[2]_i_7 
       (.I0(\m_sec_reg[7] [2]),
        .I1(\uo[7]_i_11_n_0 ),
        .I2(\uo[6]_i_5_1 [2]),
        .I3(\uo[7]_i_12_n_0 ),
        .I4(\uo[2]_i_16_n_0 ),
        .O(\uo[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEF22222220)) 
    \uo[2]_i_9 
       (.I0(\m_sec_reg[7] [2]),
        .I1(own_wins_reg),
        .I2(pos[2]),
        .I3(pos[1]),
        .I4(pos[0]),
        .I5(best_s[2]),
        .O(\uo[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBABABABAA)) 
    \uo[3]_i_1 
       (.I0(\m_s0_reg[3] ),
        .I1(\uo[3]_i_3_n_0 ),
        .I2(\uo[3]_i_4_n_0 ),
        .I3(\uo[3]_i_5_n_0 ),
        .I4(\uo[3]_i_6_n_0 ),
        .I5(\uo[3]_i_7_n_0 ),
        .O(\uio_r_reg[6] [3]));
  LUT6 #(
    .INIT(64'hBBBBBBBF88888880)) 
    \uo[3]_i_10 
       (.I0(\m_sec_reg[7] [3]),
        .I1(\m_sec_reg[7] [7]),
        .I2(pos[2]),
        .I3(pos[1]),
        .I4(pos[0]),
        .I5(s0[3]),
        .O(\uo[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000280000)) 
    \uo[3]_i_12 
       (.I0(\m_s2[6]_i_3_n_0 ),
        .I1(n[1]),
        .I2(\pos_reg[0]_0 ),
        .I3(\uo[3]_i_17_n_0 ),
        .I4(\m_s2[6]_i_4_n_0 ),
        .I5(\uo[3]_i_18_n_0 ),
        .O(\uo[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEF22222220)) 
    \uo[3]_i_13 
       (.I0(\m_sec_reg[7] [3]),
        .I1(\uo[5]_i_11_0 ),
        .I2(pos[2]),
        .I3(pos[1]),
        .I4(pos[0]),
        .I5(\uo[7]_i_10_1 [3]),
        .O(\uo[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFF8F8F8F88888888)) 
    \uo[3]_i_14 
       (.I0(\dn_edge[6]_i_3_n_0 ),
        .I1(\uo[6]_i_5_0 [3]),
        .I2(\pos_reg[0]_0 ),
        .I3(\uo[7]_i_13_n_0 ),
        .I4(\m_s0_reg[3]_1 ),
        .I5(\uo[7]_i_7_n_0 ),
        .O(\uo[3]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \uo[3]_i_16 
       (.I0(\uo[2]_i_17_n_0 ),
        .I1(\m_sec_reg[7] [3]),
        .I2(\uo[7]_i_22_n_0 ),
        .I3(s2[3]),
        .I4(\m_s2[6]_i_2_n_0 ),
        .O(\uio_r_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \uo[3]_i_17 
       (.I0(\uo[7]_i_18_n_0 ),
        .I1(n[2]),
        .I2(n[1]),
        .O(\uo[3]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hABFE)) 
    \uo[3]_i_18 
       (.I0(\m_sec[7]_i_4_n_0 ),
        .I1(n[1]),
        .I2(n[2]),
        .I3(\uo[7]_i_17_n_0 ),
        .O(\uo[3]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h5D555D555D555DDD)) 
    \uo[3]_i_3 
       (.I0(\uo[7]_i_8_n_0 ),
        .I1(\uo[7]_i_7_n_0 ),
        .I2(\m_s0_reg[3]_1 ),
        .I3(\uo[7]_i_13_n_0 ),
        .I4(\pos_reg[0]_0 ),
        .I5(\uo[3]_i_9_n_0 ),
        .O(\uo[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hEEEF)) 
    \uo[3]_i_4 
       (.I0(\dn_edge[6]_i_3_n_0 ),
        .I1(\uo[7]_i_12_n_0 ),
        .I2(\rin_s[7]_i_3_n_0 ),
        .I3(\m_sec_reg[7]_0 [10]),
        .O(\uo[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFD000D0)) 
    \uo[3]_i_5 
       (.I0(\m_s0[6]_i_2_n_0 ),
        .I1(\uo[3]_i_10_n_0 ),
        .I2(\m_s0_reg[3]_0 ),
        .I3(\uo[3]_i_12_n_0 ),
        .I4(\uo[3]_i_13_n_0 ),
        .I5(\rec_in[14]_i_2_n_0 ),
        .O(\uo[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \uo[3]_i_6 
       (.I0(\uo[4]_i_10_n_0 ),
        .I1(\rec_in[14]_i_2_n_0 ),
        .I2(\m_sec_reg[7]_0 [3]),
        .O(\uo[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB800)) 
    \uo[3]_i_7 
       (.I0(\m_sec_reg[7] [3]),
        .I1(\uo[7]_i_11_n_0 ),
        .I2(\uo[6]_i_5_1 [3]),
        .I3(\uo[7]_i_12_n_0 ),
        .I4(\uo[3]_i_14_n_0 ),
        .O(\uo[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEF22222220)) 
    \uo[3]_i_9 
       (.I0(\m_sec_reg[7] [3]),
        .I1(own_wins_reg),
        .I2(pos[2]),
        .I3(pos[1]),
        .I4(pos[0]),
        .I5(best_s[3]),
        .O(\uo[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBABABABAA)) 
    \uo[4]_i_1 
       (.I0(\m_s0_reg[4] ),
        .I1(\uo[4]_i_3_n_0 ),
        .I2(\uo[4]_i_4_n_0 ),
        .I3(\uo[4]_i_5_n_0 ),
        .I4(\uo[4]_i_6_n_0 ),
        .I5(\uo[4]_i_7_n_0 ),
        .O(\uio_r_reg[6] [4]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h00002001)) 
    \uo[4]_i_10 
       (.I0(\uo[7]_i_17_n_0 ),
        .I1(\m_sec[7]_i_4_n_0 ),
        .I2(n[2]),
        .I3(\uo[7]_i_18_n_0 ),
        .I4(\rin_s[7]_i_4_n_0 ),
        .O(\uo[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEF22222220)) 
    \uo[4]_i_11 
       (.I0(\m_sec_reg[7] [4]),
        .I1(\uo[5]_i_11_0 ),
        .I2(pos[2]),
        .I3(pos[1]),
        .I4(pos[0]),
        .I5(\uo[7]_i_10_1 [4]),
        .O(\uo[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBF88888880)) 
    \uo[4]_i_12 
       (.I0(\m_sec_reg[7] [4]),
        .I1(\m_sec_reg[7] [7]),
        .I2(pos[2]),
        .I3(pos[1]),
        .I4(pos[0]),
        .I5(s0[4]),
        .O(\uo[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFF8F8F8F88888888)) 
    \uo[4]_i_14 
       (.I0(\dn_edge[6]_i_3_n_0 ),
        .I1(\uo[6]_i_5_0 [4]),
        .I2(\pos_reg[0]_0 ),
        .I3(\uo[7]_i_13_n_0 ),
        .I4(\uo[4]_i_8_n_0 ),
        .I5(\uo[7]_i_7_n_0 ),
        .O(\uo[4]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \uo[4]_i_18 
       (.I0(\m_s0[6]_i_2_n_0 ),
        .I1(\m_sec_reg[7] [4]),
        .I2(\uo[7]_i_22_n_0 ),
        .I3(s2[4]),
        .I4(\m_s2[6]_i_2_n_0 ),
        .O(\uio_r_reg[4] ));
  LUT6 #(
    .INIT(64'h5D555D555D555DDD)) 
    \uo[4]_i_3 
       (.I0(\uo[7]_i_8_n_0 ),
        .I1(\uo[7]_i_7_n_0 ),
        .I2(\uo[4]_i_8_n_0 ),
        .I3(\uo[7]_i_13_n_0 ),
        .I4(\pos_reg[0]_0 ),
        .I5(\uo[4]_i_9_n_0 ),
        .O(\uo[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hEEEF)) 
    \uo[4]_i_4 
       (.I0(\dn_edge[6]_i_3_n_0 ),
        .I1(\uo[7]_i_12_n_0 ),
        .I2(\rin_s[7]_i_3_n_0 ),
        .I3(\m_sec_reg[7]_0 [11]),
        .O(\uo[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \uo[4]_i_5 
       (.I0(\uo[4]_i_10_n_0 ),
        .I1(\rec_in[14]_i_2_n_0 ),
        .I2(\m_sec_reg[7]_0 [4]),
        .O(\uo[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000550544444444)) 
    \uo[4]_i_6 
       (.I0(\rec_in[14]_i_2_n_0 ),
        .I1(\uo[4]_i_11_n_0 ),
        .I2(\m_s0[6]_i_2_n_0 ),
        .I3(\uo[4]_i_12_n_0 ),
        .I4(\m_s0_reg[4]_0 ),
        .I5(\m_sec[7]_i_2_n_0 ),
        .O(\uo[4]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB800)) 
    \uo[4]_i_7 
       (.I0(\m_sec_reg[7] [4]),
        .I1(\uo[7]_i_11_n_0 ),
        .I2(\uo[6]_i_5_1 [4]),
        .I3(\uo[7]_i_12_n_0 ),
        .I4(\uo[4]_i_14_n_0 ),
        .O(\uo[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BF8FBF80B080)) 
    \uo[4]_i_8 
       (.I0(pos[0]),
        .I1(\m_sec_reg[7]_2 ),
        .I2(\pos_reg[0]_0 ),
        .I3(\m_sec_reg[7] [4]),
        .I4(\pos_reg[2]_1 ),
        .I5(lmin[1]),
        .O(\uo[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEF22222220)) 
    \uo[4]_i_9 
       (.I0(\m_sec_reg[7] [4]),
        .I1(own_wins_reg),
        .I2(pos[2]),
        .I3(pos[1]),
        .I4(pos[0]),
        .I5(best_s[4]),
        .O(\uo[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFBBAAAAAAAA)) 
    \uo[5]_i_1 
       (.I0(\m_s0_reg[5] ),
        .I1(\uo[5]_i_3_n_0 ),
        .I2(\uo[5]_i_4_n_0 ),
        .I3(\uo[5]_i_5_n_0 ),
        .I4(\uo[5]_i_6_n_0 ),
        .I5(\uo[7]_i_8_n_0 ),
        .O(\uio_r_reg[6] [5]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \uo[5]_i_10 
       (.I0(\uc_reg[4]_0 ),
        .I1(\uo[6]_i_8_0 [2]),
        .I2(\pos_reg[0]_1 ),
        .I3(\m_s2[6]_i_2_n_0 ),
        .I4(\uo[5]_i_14_n_0 ),
        .I5(\uo[5]_i_15_n_0 ),
        .O(\uo[5]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h8A80)) 
    \uo[5]_i_11 
       (.I0(\uo[3]_i_12_n_0 ),
        .I1(\m_sec_reg[7] [5]),
        .I2(\uo[5]_i_16_n_0 ),
        .I3(\uo[7]_i_10_1 [5]),
        .O(\uo[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200200000)) 
    \uo[5]_i_12 
       (.I0(\m_s2[6]_i_3_n_0 ),
        .I1(\uo[5]_i_17_n_0 ),
        .I2(\uo[7]_i_27_n_0 ),
        .I3(\uo[7]_i_26_n_0 ),
        .I4(\uo[5]_i_18_n_0 ),
        .I5(\uo[7]_i_17_n_0 ),
        .O(\uc_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \uo[5]_i_13 
       (.I0(\m_s2[6]_i_2_n_0 ),
        .I1(\uo[7]_i_41_n_0 ),
        .O(\pos_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hBBBBBBBF88888880)) 
    \uo[5]_i_14 
       (.I0(\m_sec_reg[7] [5]),
        .I1(\m_sec_reg[7] [7]),
        .I2(pos[2]),
        .I3(pos[1]),
        .I4(pos[0]),
        .I5(s2[5]),
        .O(\uo[5]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \uo[5]_i_15 
       (.I0(\uo[7]_i_21_n_0 ),
        .I1(s0[5]),
        .I2(\uo[7]_i_22_n_0 ),
        .I3(\m_sec_reg[7] [5]),
        .O(\uo[5]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h5554)) 
    \uo[5]_i_16 
       (.I0(\uo[5]_i_11_0 ),
        .I1(pos[2]),
        .I2(pos[1]),
        .I3(pos[0]),
        .O(\uo[5]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFEBD7FF7DFFFFEB)) 
    \uo[5]_i_17 
       (.I0(\uo[7]_i_13_n_0 ),
        .I1(\uo[7]_i_18_n_0 ),
        .I2(n[2]),
        .I3(n[0]),
        .I4(n[1]),
        .I5(\pos_reg[0]_0 ),
        .O(\uo[5]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \uo[5]_i_18 
       (.I0(n[2]),
        .I1(n[1]),
        .I2(n[0]),
        .O(\uo[5]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hD7FFD7FF5555D7FF)) 
    \uo[5]_i_3 
       (.I0(\uo[7]_i_7_n_0 ),
        .I1(pos[0]),
        .I2(\uc_reg[3]_0 [0]),
        .I3(\uo[5]_i_8_n_0 ),
        .I4(\uo[5]_i_9_n_0 ),
        .I5(\pos_reg[0]_0 ),
        .O(\uo[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00022202)) 
    \uo[5]_i_4 
       (.I0(\uo[7]_i_7_n_0 ),
        .I1(\pos_reg[0]_0 ),
        .I2(best_s[5]),
        .I3(\uo[7]_i_15_n_0 ),
        .I4(\m_sec_reg[7] [5]),
        .I5(\uo[7]_i_13_n_0 ),
        .O(\uo[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8FFFFFFF8FFF8)) 
    \uo[5]_i_5 
       (.I0(\m_sec_reg[7]_0 [5]),
        .I1(\rec_in[14]_i_2_n_0 ),
        .I2(\uo[5]_i_10_n_0 ),
        .I3(\uo[5]_i_11_n_0 ),
        .I4(\uo[6]_i_7_n_0 ),
        .I5(\m_sec_reg[7]_0 [12]),
        .O(\uo[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \uo[5]_i_6 
       (.I0(\m_sec_reg[7] [5]),
        .I1(\uo[7]_i_11_n_0 ),
        .I2(\uo[6]_i_5_1 [5]),
        .I3(\uo[7]_i_12_n_0 ),
        .I4(\dn_edge[6]_i_3_n_0 ),
        .I5(\uo[6]_i_5_0 [5]),
        .O(\uo[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BF8FBF80B080)) 
    \uo[5]_i_8 
       (.I0(pos[1]),
        .I1(\m_sec_reg[7]_2 ),
        .I2(\pos_reg[0]_0 ),
        .I3(\m_sec_reg[7] [5]),
        .I4(\pos_reg[2]_1 ),
        .I5(lmin[2]),
        .O(\uo[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9999999990999000)) 
    \uo[5]_i_9 
       (.I0(pos[0]),
        .I1(\uc_reg[3]_0 [0]),
        .I2(\m_sec_reg[7] [5]),
        .I3(\uo[7]_i_15_n_0 ),
        .I4(best_s[5]),
        .I5(\pos_reg[0]_0 ),
        .O(\uo[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFEAEAAAAAAAAA)) 
    \uo[6]_i_1 
       (.I0(\m_s0_reg[6] ),
        .I1(\uo[6]_i_3_n_0 ),
        .I2(\uo[7]_i_7_n_0 ),
        .I3(\uo[6]_i_4_n_0 ),
        .I4(\uo[6]_i_5_n_0 ),
        .I5(\uo[7]_i_8_n_0 ),
        .O(\uio_r_reg[6] [6]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'h5554)) 
    \uo[6]_i_10 
       (.I0(\uo[1]_i_8 ),
        .I1(pos[2]),
        .I2(pos[1]),
        .I3(pos[0]),
        .O(\pos_reg[2]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'h41)) 
    \uo[6]_i_11 
       (.I0(\m_sec[7]_i_4_n_0 ),
        .I1(\uo[7]_i_17_n_0 ),
        .I2(n[2]),
        .O(\uo[6]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h8F888888)) 
    \uo[6]_i_12 
       (.I0(\uo[6]_i_14_n_0 ),
        .I1(\m_s2[6]_i_2_n_0 ),
        .I2(\uo[7]_i_41_n_0 ),
        .I3(\uo[6]_i_8_0 [3]),
        .I4(\uc_reg[4]_0 ),
        .O(\uo[6]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h8A80)) 
    \uo[6]_i_13 
       (.I0(\uo[3]_i_12_n_0 ),
        .I1(\m_sec_reg[7] [6]),
        .I2(\uo[5]_i_16_n_0 ),
        .I3(\uo[7]_i_10_1 [6]),
        .O(\uo[6]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBF88888880)) 
    \uo[6]_i_14 
       (.I0(\m_sec_reg[7] [6]),
        .I1(\m_sec_reg[7] [7]),
        .I2(pos[2]),
        .I3(pos[1]),
        .I4(pos[0]),
        .I5(s2[6]),
        .O(\uo[6]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000000B800B8)) 
    \uo[6]_i_3 
       (.I0(\m_sec_reg[7] [6]),
        .I1(\uo[7]_i_15_n_0 ),
        .I2(best_s[6]),
        .I3(\pos_reg[0]_0 ),
        .I4(\uo[6]_i_6_n_0 ),
        .I5(\uo[7]_i_13_n_0 ),
        .O(\uo[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9999999990999000)) 
    \uo[6]_i_4 
       (.I0(pos[0]),
        .I1(\uc_reg[3]_0 [0]),
        .I2(\m_sec_reg[7] [6]),
        .I3(\uo[7]_i_15_n_0 ),
        .I4(best_s[6]),
        .I5(\pos_reg[0]_0 ),
        .O(\uo[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF222)) 
    \uo[6]_i_5 
       (.I0(\m_sec_reg[7]_0 [13]),
        .I1(\uo[6]_i_7_n_0 ),
        .I2(\rec_in[14]_i_2_n_0 ),
        .I3(\m_sec_reg[7]_0 [6]),
        .I4(\uo[6]_i_8_n_0 ),
        .I5(\uo[6]_i_9_n_0 ),
        .O(\uo[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BF8FBF80B080)) 
    \uo[6]_i_6 
       (.I0(pos[2]),
        .I1(\m_sec_reg[7]_2 ),
        .I2(\pos_reg[0]_0 ),
        .I3(\m_sec_reg[7] [6]),
        .I4(\pos_reg[2]_1 ),
        .I5(lmin[3]),
        .O(\uo[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h7FF7FFFFFFFFFFFF)) 
    \uo[6]_i_7 
       (.I0(\m_s2[6]_i_4_n_0 ),
        .I1(\m_s2[6]_i_6_n_0 ),
        .I2(n[1]),
        .I3(\pos_reg[0]_0 ),
        .I4(\uo[6]_i_11_n_0 ),
        .I5(\m_s2[6]_i_3_n_0 ),
        .O(\uo[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFA808)) 
    \uo[6]_i_8 
       (.I0(\uo[7]_i_21_n_0 ),
        .I1(s0[6]),
        .I2(\uo[7]_i_22_n_0 ),
        .I3(\m_sec_reg[7] [6]),
        .I4(\uo[6]_i_12_n_0 ),
        .I5(\uo[6]_i_13_n_0 ),
        .O(\uo[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \uo[6]_i_9 
       (.I0(\m_sec_reg[7] [6]),
        .I1(\uo[7]_i_11_n_0 ),
        .I2(\uo[6]_i_5_1 [6]),
        .I3(\uo[7]_i_12_n_0 ),
        .I4(\dn_edge[6]_i_3_n_0 ),
        .I5(\uo[6]_i_5_0 [6]),
        .O(\uo[6]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \uo[7]_i_1 
       (.I0(\rec_in_reg[6] ),
        .O(SR[1]));
  LUT6 #(
    .INIT(64'h0000570057005700)) 
    \uo[7]_i_10 
       (.I0(\uo[7]_i_21_n_0 ),
        .I1(\uo[7]_i_22_n_0 ),
        .I2(s0[7]),
        .I3(\uo[7]_i_23_n_0 ),
        .I4(\uo[3]_i_12_n_0 ),
        .I5(\uo[7]_i_24_n_0 ),
        .O(\uo[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h993F66C099C066C0)) 
    \uo[7]_i_106 
       (.I0(uq[1]),
        .I1(uq[2]),
        .I2(\uo[7]_i_100 [1]),
        .I3(\uo[7]_i_100 [2]),
        .I4(uq[3]),
        .I5(\uo[7]_i_100 [0]),
        .O(\uq_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h05CFC5FF)) 
    \uo[7]_i_109 
       (.I0(\uo[7]_i_100 [1]),
        .I1(uq[2]),
        .I2(\uo[7]_i_100 [2]),
        .I3(uq[3]),
        .I4(uq[0]),
        .O(\uo[7]_i_109_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFEEFEFFFFFFFF)) 
    \uo[7]_i_11 
       (.I0(\uo[7]_i_25_n_0 ),
        .I1(\m_sec[7]_i_4_n_0 ),
        .I2(pos[2]),
        .I3(\up_edge[6]_i_2_n_0 ),
        .I4(\uo[7]_i_17_n_0 ),
        .I5(\m_s2[6]_i_3_n_0 ),
        .O(\uo[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0400000004040400)) 
    \uo[7]_i_12 
       (.I0(\uo[7]_i_26_n_0 ),
        .I1(\m_s2[6]_i_3_n_0 ),
        .I2(\uo[7]_i_27_n_0 ),
        .I3(\uo[7]_i_28_n_0 ),
        .I4(\uo[7]_i_29_n_0 ),
        .I5(\uo[7]_i_17_n_0 ),
        .O(\uo[7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h87B7)) 
    \uo[7]_i_125 
       (.I0(uq[0]),
        .I1(\uo[7]_i_100 [2]),
        .I2(uq[1]),
        .I3(\uo[7]_i_100 [1]),
        .O(\uq_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \uo[7]_i_13 
       (.I0(\uc_reg[3]_0 [0]),
        .I1(pos[0]),
        .O(\uo[7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \uo[7]_i_14 
       (.I0(pos[0]),
        .I1(\uc_reg[3]_0 [0]),
        .I2(pos[1]),
        .I3(\uc_reg[3]_0 [1]),
        .O(\pos_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h5554)) 
    \uo[7]_i_15 
       (.I0(own_wins_reg),
        .I1(pos[2]),
        .I2(pos[1]),
        .I3(pos[0]),
        .O(\uo[7]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000000071FF0071)) 
    \uo[7]_i_16 
       (.I0(\uc_reg[3]_0 [1]),
        .I1(\uo[7]_i_30_n_0 ),
        .I2(pos[1]),
        .I3(\uc_reg[3]_0 [2]),
        .I4(pos[2]),
        .I5(\uc_reg[3]_0 [3]),
        .O(\uo[7]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h9A9A599A599A5959)) 
    \uo[7]_i_17 
       (.I0(\uc_reg[3]_0 [3]),
        .I1(\uc_reg[3]_0 [2]),
        .I2(pos[2]),
        .I3(pos[1]),
        .I4(\uo[7]_i_30_n_0 ),
        .I5(\uc_reg[3]_0 [1]),
        .O(\uo[7]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h5D04A2FBA2FB5D04)) 
    \uo[7]_i_18 
       (.I0(pos[1]),
        .I1(\uc_reg[3]_0 [0]),
        .I2(pos[0]),
        .I3(\uc_reg[3]_0 [1]),
        .I4(pos[2]),
        .I5(\uc_reg[3]_0 [2]),
        .O(\uo[7]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAEFFAFAFAAAAAAAA)) 
    \uo[7]_i_2 
       (.I0(\m_sec_reg[7]_1 ),
        .I1(\uo[7]_i_4_n_0 ),
        .I2(\uo[7]_i_5_n_0 ),
        .I3(\uo[7]_i_6_n_0 ),
        .I4(\uo[7]_i_7_n_0 ),
        .I5(\uo[7]_i_8_n_0 ),
        .O(\uio_r_reg[6] [7]));
  LUT6 #(
    .INIT(64'hEEEEEEEEAEAEEEAE)) 
    \uo[7]_i_20 
       (.I0(uc[5]),
        .I1(uc[4]),
        .I2(\uo[7]_i_38_n_0 ),
        .I3(\uc_reg[3]_0 [2]),
        .I4(pos[2]),
        .I5(\uc_reg[3]_0 [3]),
        .O(\uo[7]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008200)) 
    \uo[7]_i_21 
       (.I0(\m_s2[6]_i_3_n_0 ),
        .I1(\uo[7]_i_13_n_0 ),
        .I2(n[0]),
        .I3(\m_s0[6]_i_4_n_0 ),
        .I4(\uo[7]_i_39_n_0 ),
        .I5(\uo[7]_i_40_n_0 ),
        .O(\uo[7]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \uo[7]_i_22 
       (.I0(\m_sec_reg[7] [7]),
        .I1(pos[2]),
        .I2(pos[1]),
        .I3(pos[0]),
        .O(\uo[7]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h5700575757575757)) 
    \uo[7]_i_23 
       (.I0(\m_s2[6]_i_2_n_0 ),
        .I1(s2[7]),
        .I2(\uo[7]_i_22_n_0 ),
        .I3(\uo[7]_i_41_n_0 ),
        .I4(\uo[7]_i_10_0 ),
        .I5(\uc_reg[4]_0 ),
        .O(\uo[7]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEF22222220)) 
    \uo[7]_i_24 
       (.I0(\m_sec_reg[7] [7]),
        .I1(\uo[5]_i_11_0 ),
        .I2(pos[2]),
        .I3(pos[1]),
        .I4(pos[0]),
        .I5(\uo[7]_i_10_1 [7]),
        .O(\uo[7]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'hFBF7FEFD)) 
    \uo[7]_i_25 
       (.I0(\uc_reg[3]_0 [2]),
        .I1(\uc_reg[3]_0 [1]),
        .I2(\uc_reg[3]_0 [0]),
        .I3(pos[1]),
        .I4(pos[0]),
        .O(\uo[7]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h9999999959599959)) 
    \uo[7]_i_26 
       (.I0(uc[5]),
        .I1(uc[4]),
        .I2(\uo[7]_i_38_n_0 ),
        .I3(\uc_reg[3]_0 [2]),
        .I4(pos[2]),
        .I5(\uc_reg[3]_0 [3]),
        .O(\uo[7]_i_26_n_0 ));
  LUT5 #(
    .INIT(32'h65665555)) 
    \uo[7]_i_27 
       (.I0(uc[4]),
        .I1(\uc_reg[3]_0 [3]),
        .I2(pos[2]),
        .I3(\uc_reg[3]_0 [2]),
        .I4(\uo[7]_i_38_n_0 ),
        .O(\uo[7]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h3F2F0FFB030200B0)) 
    \uo[7]_i_28 
       (.I0(\uo[7]_i_13_n_0 ),
        .I1(\pos_reg[0]_0 ),
        .I2(n[2]),
        .I3(n[0]),
        .I4(n[1]),
        .I5(\uo[7]_i_18_n_0 ),
        .O(\uo[7]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \uo[7]_i_29 
       (.I0(n[2]),
        .I1(n[0]),
        .I2(n[1]),
        .O(\uo[7]_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \uo[7]_i_30 
       (.I0(\uc_reg[3]_0 [0]),
        .I1(pos[0]),
        .O(\uo[7]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \uo[7]_i_31 
       (.I0(n[2]),
        .I1(n[1]),
        .I2(\m_sec[7]_i_4_n_0 ),
        .O(\uo[7]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h0BB3)) 
    \uo[7]_i_32 
       (.I0(\uo[7]_i_18_n_0 ),
        .I1(\uo[7]_i_17_n_0 ),
        .I2(n[1]),
        .I3(n[2]),
        .O(\uo[7]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h147DD71414144114)) 
    \uo[7]_i_33 
       (.I0(n[1]),
        .I1(\uc_reg[3]_0 [1]),
        .I2(pos[1]),
        .I3(\uc_reg[3]_0 [0]),
        .I4(pos[0]),
        .I5(n[0]),
        .O(\uo[7]_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h0BF4)) 
    \uo[7]_i_34 
       (.I0(\uo[7]_i_16_n_0 ),
        .I1(uc[4]),
        .I2(uc[5]),
        .I3(uc[6]),
        .O(\uo[7]_i_34_n_0 ));
  LUT5 #(
    .INIT(32'h80780700)) 
    \uo[7]_i_35 
       (.I0(n[1]),
        .I1(n[2]),
        .I2(\uo[7]_i_16_n_0 ),
        .I3(uc[4]),
        .I4(uc[5]),
        .O(\uo[7]_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h1680)) 
    \uo[7]_i_36 
       (.I0(\uo[7]_i_18_n_0 ),
        .I1(n[1]),
        .I2(n[2]),
        .I3(\uo[7]_i_17_n_0 ),
        .O(\uo[7]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h6900006900699600)) 
    \uo[7]_i_37 
       (.I0(pos[1]),
        .I1(\uc_reg[3]_0 [1]),
        .I2(n[1]),
        .I3(\uc_reg[3]_0 [0]),
        .I4(pos[0]),
        .I5(n[0]),
        .O(\uo[7]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hA2FBFFFFA2FBA2FB)) 
    \uo[7]_i_38 
       (.I0(pos[1]),
        .I1(\uc_reg[3]_0 [0]),
        .I2(pos[0]),
        .I3(\uc_reg[3]_0 [1]),
        .I4(\uc_reg[3]_0 [2]),
        .I5(pos[2]),
        .O(\uo[7]_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hA956)) 
    \uo[7]_i_39 
       (.I0(\uo[7]_i_18_n_0 ),
        .I1(n[1]),
        .I2(n[0]),
        .I3(n[2]),
        .O(\uo[7]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h9009900999699009)) 
    \uo[7]_i_4 
       (.I0(\uc_reg[3]_0 [1]),
        .I1(pos[1]),
        .I2(\uc_reg[3]_0 [0]),
        .I3(pos[0]),
        .I4(\m_sec_reg[7] [7]),
        .I5(\m_sec_reg[7]_2 ),
        .O(\uo[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hAAABFFFE)) 
    \uo[7]_i_40 
       (.I0(\m_sec[7]_i_4_n_0 ),
        .I1(n[2]),
        .I2(n[1]),
        .I3(n[0]),
        .I4(\uo[7]_i_17_n_0 ),
        .O(\uo[7]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hBDEFFFF7FFF7BDEF)) 
    \uo[7]_i_41 
       (.I0(pos[0]),
        .I1(pos[1]),
        .I2(n[0]),
        .I3(n[1]),
        .I4(pos[2]),
        .I5(n[2]),
        .O(\uo[7]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h00D0D0D0D0D0D0D0)) 
    \uo[7]_i_5 
       (.I0(\m_sec_reg[7]_0 [14]),
        .I1(\rin_s[7]_i_3_n_0 ),
        .I2(\uo[7]_i_10_n_0 ),
        .I3(\m_sec_reg[7] [7]),
        .I4(\uo[7]_i_11_n_0 ),
        .I5(\uo[7]_i_12_n_0 ),
        .O(\uo[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBCBCBCBFFFFFFCFF)) 
    \uo[7]_i_6 
       (.I0(\m_sec_reg[7]_2 ),
        .I1(\uo[7]_i_13_n_0 ),
        .I2(\pos_reg[0]_0 ),
        .I3(best_s[7]),
        .I4(\uo[7]_i_15_n_0 ),
        .I5(\m_sec_reg[7] [7]),
        .O(\uo[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h9F)) 
    \uo[7]_i_65 
       (.I0(uq[2]),
        .I1(uq[3]),
        .I2(\uo[7]_i_100 [2]),
        .O(\uq_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h0000012000000000)) 
    \uo[7]_i_7 
       (.I0(uc[5]),
        .I1(uc[6]),
        .I2(\uo[7]_i_16_n_0 ),
        .I3(uc[4]),
        .I4(\uo[7]_i_17_n_0 ),
        .I5(\uo[7]_i_18_n_0 ),
        .O(\uo[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \uo[7]_i_74 
       (.I0(uq[2]),
        .I1(\uo[7]_i_100 [2]),
        .O(\uq_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h8A8A51510FFF0FFF)) 
    \uo[7]_i_78 
       (.I0(uq[1]),
        .I1(uq[0]),
        .I2(uq[3]),
        .I3(\uo[7]_i_100 [1]),
        .I4(uq[2]),
        .I5(\uo[7]_i_100 [2]),
        .O(S[1]));
  LUT5 #(
    .INIT(32'h69966666)) 
    \uo[7]_i_79 
       (.I0(\uo_reg[7]_i_60 ),
        .I1(\uo[7]_i_109_n_0 ),
        .I2(uq[1]),
        .I3(uq[3]),
        .I4(\uo[7]_i_100 [2]),
        .O(S[0]));
  LUT5 #(
    .INIT(32'h88800000)) 
    \uo[7]_i_8 
       (.I0(run),
        .I1(\u_up/up_on0 ),
        .I2(\uo[7]_i_20_n_0 ),
        .I3(uc[6]),
        .I4(act),
        .O(\uo[7]_i_8_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \uo_reg[7]_i_19 
       (.CI(1'b0),
        .CO({\u_up/up_on0 ,\uo_reg[7]_i_19_n_1 ,\uo_reg[7]_i_19_n_2 ,\uo_reg[7]_i_19_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,\uo[7]_i_31_n_0 ,\uo[7]_i_32_n_0 ,\uo[7]_i_33_n_0 }),
        .O(\NLW_uo_reg[7]_i_19_O_UNCONNECTED [3:0]),
        .S({\uo[7]_i_34_n_0 ,\uo[7]_i_35_n_0 ,\uo[7]_i_36_n_0 ,\uo[7]_i_37_n_0 }));
  LUT6 #(
    .INIT(64'h9060000000000000)) 
    \up_edge[6]_i_1 
       (.I0(\up_edge[6]_i_2_n_0 ),
        .I1(pos[2]),
        .I2(\up_edge[6]_i_3_n_0 ),
        .I3(ph[2]),
        .I4(\up_edge[6]_i_4_n_0 ),
        .I5(\up_edge[6]_i_5_n_0 ),
        .O(\up_edge[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \up_edge[6]_i_2 
       (.I0(pos[1]),
        .I1(pos[0]),
        .O(\up_edge[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \up_edge[6]_i_3 
       (.I0(ph[4]),
        .I1(ph[5]),
        .I2(ph[6]),
        .O(\up_edge[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4100000A00824100)) 
    \up_edge[6]_i_4 
       (.I0(ph[0]),
        .I1(pos[2]),
        .I2(ph[3]),
        .I3(pos[0]),
        .I4(pos[1]),
        .I5(ph[1]),
        .O(\up_edge[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000EF00000000)) 
    \up_edge[6]_i_5 
       (.I0(ph[1]),
        .I1(ph[0]),
        .I2(\ftype[2]_i_2_n_0 ),
        .I3(ftype[2]),
        .I4(ftype[1]),
        .I5(ftype[0]),
        .O(\up_edge[6]_i_5_n_0 ));
  FDRE \up_edge_reg[0] 
       (.C(clk),
        .CE(\up_edge[6]_i_1_n_0 ),
        .D(\ui_r_reg_n_0_[0] ),
        .Q(up_edge[0]),
        .R(1'b0));
  FDRE \up_edge_reg[1] 
       (.C(clk),
        .CE(\up_edge[6]_i_1_n_0 ),
        .D(\ui_r_reg_n_0_[1] ),
        .Q(up_edge[1]),
        .R(1'b0));
  FDRE \up_edge_reg[2] 
       (.C(clk),
        .CE(\up_edge[6]_i_1_n_0 ),
        .D(\ui_r_reg_n_0_[2] ),
        .Q(up_edge[2]),
        .R(1'b0));
  FDRE \up_edge_reg[3] 
       (.C(clk),
        .CE(\up_edge[6]_i_1_n_0 ),
        .D(\ui_r_reg_n_0_[3] ),
        .Q(up_edge[3]),
        .R(1'b0));
  FDRE \up_edge_reg[4] 
       (.C(clk),
        .CE(\up_edge[6]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(up_edge[4]),
        .R(1'b0));
  FDRE \up_edge_reg[5] 
       (.C(clk),
        .CE(\up_edge[6]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(up_edge[5]),
        .R(1'b0));
  FDRE \up_edge_reg[6] 
       (.C(clk),
        .CE(\up_edge[6]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(up_edge[6]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \uq[3]_i_1 
       (.I0(ftype[2]),
        .I1(\ftype[2]_i_2_n_0 ),
        .I2(ph[0]),
        .I3(ph[1]),
        .I4(ftype[1]),
        .I5(ftype[0]),
        .O(\uq[3]_i_1_n_0 ));
  FDSE \uq_reg[0] 
       (.C(clk),
        .CE(\uq[3]_i_1_n_0 ),
        .D(\ui_r_reg_n_0_[0] ),
        .Q(uq[0]),
        .S(SR[1]));
  FDSE \uq_reg[1] 
       (.C(clk),
        .CE(\uq[3]_i_1_n_0 ),
        .D(\ui_r_reg_n_0_[1] ),
        .Q(uq[1]),
        .S(SR[1]));
  FDRE \uq_reg[2] 
       (.C(clk),
        .CE(\uq[3]_i_1_n_0 ),
        .D(\ui_r_reg_n_0_[2] ),
        .Q(uq[2]),
        .R(SR[1]));
  FDRE \uq_reg[3] 
       (.C(clk),
        .CE(\uq[3]_i_1_n_0 ),
        .D(\ui_r_reg_n_0_[3] ),
        .Q(uq[3]),
        .R(SR[1]));
  FDRE w_first_reg
       (.C(clk),
        .CE(load),
        .D(sg_first),
        .Q(w_first),
        .R(SR[1]));
  LUT2 #(
    .INIT(4'h8)) 
    w_real_i_1
       (.I0(p_4_in),
        .I1(sg_valid_reg_n_0),
        .O(load));
  LUT6 #(
    .INIT(64'h2080208020808020)) 
    w_real_i_2
       (.I0(w_real_i_3_n_0),
        .I1(ph[2]),
        .I2(\up_edge[6]_i_3_n_0 ),
        .I3(n[2]),
        .I4(n[0]),
        .I5(n[1]),
        .O(p_4_in));
  LUT6 #(
    .INIT(64'h9000009000903000)) 
    w_real_i_3
       (.I0(n[2]),
        .I1(ph[3]),
        .I2(w_real_i_4_n_0),
        .I3(ph[1]),
        .I4(n[1]),
        .I5(n[0]),
        .O(w_real_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h00040400)) 
    w_real_i_4
       (.I0(ftype[2]),
        .I1(ftype[0]),
        .I2(ftype[1]),
        .I3(ph[0]),
        .I4(n[0]),
        .O(w_real_i_4_n_0));
  FDRE w_real_reg
       (.C(clk),
        .CE(load),
        .D(sg_real),
        .Q(w_real),
        .R(SR[1]));
endmodule

(* ORIG_REF_NAME = "ms_path" *) 
module system_slice_0_0_ms_path
   (lmin,
    best_s,
    S,
    a,
    clk_0,
    clk_1,
    \lmin_reg[6]_0 ,
    \best_s_reg[6]_0 ,
    \best_j_reg[3]_0 ,
    \best_j_reg[0]_0 ,
    \best_j_reg[2]_0 ,
    \best_j_reg[1]_0 ,
    \best_s_reg[7]_0 ,
    \lmin_reg[6]_1 ,
    \l_bot_reg[6]_0 ,
    \l_top_reg[6]_0 ,
    l_up0,
    carry_l,
    \lmin_reg[6]_2 ,
    \lmin_reg[6]_3 ,
    \lmin_reg[6]_4 ,
    clk,
    \lmin_reg[5]_0 ,
    \lmin_reg[4]_0 ,
    \lmin_reg[3]_0 ,
    \lmin_reg[2]_0 ,
    \lmin_reg[1]_0 ,
    \lmin_reg[0]_0 ,
    \best_s_reg[6]_1 ,
    \best_s_reg[6]_2 ,
    \best_s_reg[6]_3 ,
    \best_s_reg[5]_0 ,
    \best_s_reg[4]_0 ,
    \best_s_reg[3]_0 ,
    \best_s_reg[2]_0 ,
    \best_s_reg[1]_0 ,
    \best_s_reg[0]_0 ,
    \best_s_reg[7]_1 ,
    Q,
    \l_bot_reg[6]_i_15 ,
    \l_bot[3]_i_3 ,
    l_new,
    DI,
    \lmin_reg[6]_5 ,
    \uo[1]_i_2 ,
    \uo[1]_i_2_0 ,
    own_wins_reg_i_2,
    \uo[1]_i_2_1 ,
    E,
    \l_top_reg[6]_1 ,
    \best_j_reg[3]_1 ,
    D,
    p_1_in,
    scan,
    \carry_l_reg[6]_0 ,
    p_0_in);
  output [6:0]lmin;
  output [7:0]best_s;
  output [2:0]S;
  output [6:0]a;
  output [2:0]clk_0;
  output [0:0]clk_1;
  output [0:0]\lmin_reg[6]_0 ;
  output [0:0]\best_s_reg[6]_0 ;
  output \best_j_reg[3]_0 ;
  output [0:0]\best_j_reg[0]_0 ;
  output \best_j_reg[2]_0 ;
  output \best_j_reg[1]_0 ;
  output [3:0]\best_s_reg[7]_0 ;
  output [3:0]\lmin_reg[6]_1 ;
  output [6:0]\l_bot_reg[6]_0 ;
  output [6:0]\l_top_reg[6]_0 ;
  output [6:0]l_up0;
  output [6:0]carry_l;
  input \lmin_reg[6]_2 ;
  input \lmin_reg[6]_3 ;
  input \lmin_reg[6]_4 ;
  input clk;
  input \lmin_reg[5]_0 ;
  input \lmin_reg[4]_0 ;
  input \lmin_reg[3]_0 ;
  input \lmin_reg[2]_0 ;
  input \lmin_reg[1]_0 ;
  input \lmin_reg[0]_0 ;
  input \best_s_reg[6]_1 ;
  input \best_s_reg[6]_2 ;
  input \best_s_reg[6]_3 ;
  input \best_s_reg[5]_0 ;
  input \best_s_reg[4]_0 ;
  input \best_s_reg[3]_0 ;
  input \best_s_reg[2]_0 ;
  input \best_s_reg[1]_0 ;
  input \best_s_reg[0]_0 ;
  input \best_s_reg[7]_1 ;
  input [5:0]Q;
  input [5:0]\l_bot_reg[6]_i_15 ;
  input [0:0]\l_bot[3]_i_3 ;
  input [6:0]l_new;
  input [0:0]DI;
  input [0:0]\lmin_reg[6]_5 ;
  input \uo[1]_i_2 ;
  input \uo[1]_i_2_0 ;
  input [7:0]own_wins_reg_i_2;
  input \uo[1]_i_2_1 ;
  input [0:0]E;
  input [0:0]\l_top_reg[6]_1 ;
  input [0:0]\best_j_reg[3]_1 ;
  input [3:0]D;
  input [6:0]p_1_in;
  input scan;
  input \carry_l_reg[6]_0 ;
  input [2:0]p_0_in;

  wire [3:0]D;
  wire [0:0]DI;
  wire [0:0]E;
  wire [5:0]Q;
  wire [2:0]S;
  wire [6:0]a;
  wire [3:1]best_j;
  wire \best_j[3]_i_10_n_0 ;
  wire \best_j[3]_i_3_n_0 ;
  wire \best_j[3]_i_4_n_0 ;
  wire \best_j[3]_i_5_n_0 ;
  wire \best_j[3]_i_6_n_0 ;
  wire \best_j[3]_i_7_n_0 ;
  wire \best_j[3]_i_8_n_0 ;
  wire \best_j[3]_i_9_n_0 ;
  wire [0:0]\best_j_reg[0]_0 ;
  wire \best_j_reg[1]_0 ;
  wire \best_j_reg[2]_0 ;
  wire \best_j_reg[3]_0 ;
  wire [0:0]\best_j_reg[3]_1 ;
  wire \best_j_reg[3]_i_2_n_1 ;
  wire \best_j_reg[3]_i_2_n_2 ;
  wire \best_j_reg[3]_i_2_n_3 ;
  wire [7:0]best_s;
  wire \best_s_reg[0]_0 ;
  wire \best_s_reg[1]_0 ;
  wire \best_s_reg[2]_0 ;
  wire \best_s_reg[3]_0 ;
  wire \best_s_reg[4]_0 ;
  wire \best_s_reg[5]_0 ;
  wire [0:0]\best_s_reg[6]_0 ;
  wire \best_s_reg[6]_1 ;
  wire \best_s_reg[6]_2 ;
  wire \best_s_reg[6]_3 ;
  wire [3:0]\best_s_reg[7]_0 ;
  wire \best_s_reg[7]_1 ;
  wire [6:0]carry_l;
  wire \carry_l_reg[6]_0 ;
  wire clk;
  wire [2:0]clk_0;
  wire [0:0]clk_1;
  wire [0:0]\l_bot[3]_i_3 ;
  wire [6:0]\l_bot_reg[6]_0 ;
  wire [5:0]\l_bot_reg[6]_i_15 ;
  wire [6:0]l_new;
  wire [6:0]\l_top_reg[6]_0 ;
  wire [0:0]\l_top_reg[6]_1 ;
  wire [6:0]l_up0;
  wire [6:0]lmin;
  wire \lmin[6]_i_10_n_0 ;
  wire \lmin[6]_i_11_n_0 ;
  wire \lmin[6]_i_12_n_0 ;
  wire \lmin[6]_i_6_n_0 ;
  wire \lmin[6]_i_7_n_0 ;
  wire \lmin[6]_i_8_n_0 ;
  wire \lmin_reg[0]_0 ;
  wire \lmin_reg[1]_0 ;
  wire \lmin_reg[2]_0 ;
  wire \lmin_reg[3]_0 ;
  wire \lmin_reg[4]_0 ;
  wire \lmin_reg[5]_0 ;
  wire [0:0]\lmin_reg[6]_0 ;
  wire [3:0]\lmin_reg[6]_1 ;
  wire \lmin_reg[6]_2 ;
  wire \lmin_reg[6]_3 ;
  wire \lmin_reg[6]_4 ;
  wire [0:0]\lmin_reg[6]_5 ;
  wire \lmin_reg[6]_i_4_n_1 ;
  wire \lmin_reg[6]_i_4_n_2 ;
  wire \lmin_reg[6]_i_4_n_3 ;
  wire [7:0]own_wins_reg_i_2;
  wire [2:0]p_0_in;
  wire [6:0]p_1_in;
  wire scan;
  wire \uo[1]_i_2 ;
  wire \uo[1]_i_2_0 ;
  wire \uo[1]_i_2_1 ;
  wire [3:0]\NLW_best_j_reg[3]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_lmin_reg[6]_i_4_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h9009)) 
    \best_j[3]_i_10 
       (.I0(best_s[0]),
        .I1(l_new[0]),
        .I2(l_new[1]),
        .I3(best_s[1]),
        .O(\best_j[3]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \best_j[3]_i_3 
       (.I0(l_new[6]),
        .I1(best_s[6]),
        .I2(best_s[7]),
        .O(\best_j[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \best_j[3]_i_4 
       (.I0(best_s[5]),
        .I1(l_new[5]),
        .I2(best_s[4]),
        .I3(l_new[4]),
        .O(\best_j[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \best_j[3]_i_5 
       (.I0(best_s[3]),
        .I1(l_new[3]),
        .I2(best_s[2]),
        .I3(l_new[2]),
        .O(\best_j[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \best_j[3]_i_6 
       (.I0(best_s[1]),
        .I1(l_new[1]),
        .I2(best_s[0]),
        .I3(l_new[0]),
        .O(\best_j[3]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \best_j[3]_i_7 
       (.I0(l_new[6]),
        .I1(best_s[6]),
        .I2(best_s[7]),
        .O(\best_j[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \best_j[3]_i_8 
       (.I0(best_s[4]),
        .I1(l_new[4]),
        .I2(l_new[5]),
        .I3(best_s[5]),
        .O(\best_j[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \best_j[3]_i_9 
       (.I0(best_s[2]),
        .I1(l_new[2]),
        .I2(l_new[3]),
        .I3(best_s[3]),
        .O(\best_j[3]_i_9_n_0 ));
  FDRE \best_j_reg[0] 
       (.C(clk),
        .CE(\best_j_reg[3]_1 ),
        .D(D[0]),
        .Q(\best_j_reg[0]_0 ),
        .R(1'b0));
  FDRE \best_j_reg[1] 
       (.C(clk),
        .CE(\best_j_reg[3]_1 ),
        .D(D[1]),
        .Q(best_j[1]),
        .R(1'b0));
  FDRE \best_j_reg[2] 
       (.C(clk),
        .CE(\best_j_reg[3]_1 ),
        .D(D[2]),
        .Q(best_j[2]),
        .R(1'b0));
  FDRE \best_j_reg[3] 
       (.C(clk),
        .CE(\best_j_reg[3]_1 ),
        .D(D[3]),
        .Q(best_j[3]),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \best_j_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\best_s_reg[6]_0 ,\best_j_reg[3]_i_2_n_1 ,\best_j_reg[3]_i_2_n_2 ,\best_j_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\best_j[3]_i_3_n_0 ,\best_j[3]_i_4_n_0 ,\best_j[3]_i_5_n_0 ,\best_j[3]_i_6_n_0 }),
        .O(\NLW_best_j_reg[3]_i_2_O_UNCONNECTED [3:0]),
        .S({\best_j[3]_i_7_n_0 ,\best_j[3]_i_8_n_0 ,\best_j[3]_i_9_n_0 ,\best_j[3]_i_10_n_0 }));
  FDSE \best_s_reg[0] 
       (.C(clk),
        .CE(\best_s_reg[6]_2 ),
        .D(\best_s_reg[0]_0 ),
        .Q(best_s[0]),
        .S(\best_s_reg[6]_1 ));
  FDSE \best_s_reg[1] 
       (.C(clk),
        .CE(\best_s_reg[6]_2 ),
        .D(\best_s_reg[1]_0 ),
        .Q(best_s[1]),
        .S(\best_s_reg[6]_1 ));
  FDSE \best_s_reg[2] 
       (.C(clk),
        .CE(\best_s_reg[6]_2 ),
        .D(\best_s_reg[2]_0 ),
        .Q(best_s[2]),
        .S(\best_s_reg[6]_1 ));
  FDSE \best_s_reg[3] 
       (.C(clk),
        .CE(\best_s_reg[6]_2 ),
        .D(\best_s_reg[3]_0 ),
        .Q(best_s[3]),
        .S(\best_s_reg[6]_1 ));
  FDSE \best_s_reg[4] 
       (.C(clk),
        .CE(\best_s_reg[6]_2 ),
        .D(\best_s_reg[4]_0 ),
        .Q(best_s[4]),
        .S(\best_s_reg[6]_1 ));
  FDSE \best_s_reg[5] 
       (.C(clk),
        .CE(\best_s_reg[6]_2 ),
        .D(\best_s_reg[5]_0 ),
        .Q(best_s[5]),
        .S(\best_s_reg[6]_1 ));
  FDSE \best_s_reg[6] 
       (.C(clk),
        .CE(\best_s_reg[6]_2 ),
        .D(\best_s_reg[6]_3 ),
        .Q(best_s[6]),
        .S(\best_s_reg[6]_1 ));
  FDRE \best_s_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\best_s_reg[7]_1 ),
        .Q(best_s[7]),
        .R(1'b0));
  FDRE \carry_l_reg[0] 
       (.C(clk),
        .CE(scan),
        .D(a[0]),
        .Q(carry_l[0]),
        .R(1'b0));
  FDRE \carry_l_reg[1] 
       (.C(clk),
        .CE(scan),
        .D(a[1]),
        .Q(carry_l[1]),
        .R(1'b0));
  FDRE \carry_l_reg[2] 
       (.C(clk),
        .CE(scan),
        .D(a[2]),
        .Q(carry_l[2]),
        .R(1'b0));
  FDRE \carry_l_reg[3] 
       (.C(clk),
        .CE(scan),
        .D(a[3]),
        .Q(carry_l[3]),
        .R(1'b0));
  FDRE \carry_l_reg[4] 
       (.C(clk),
        .CE(scan),
        .D(a[4]),
        .Q(carry_l[4]),
        .R(1'b0));
  FDRE \carry_l_reg[5] 
       (.C(clk),
        .CE(scan),
        .D(a[5]),
        .Q(carry_l[5]),
        .R(1'b0));
  FDRE \carry_l_reg[6] 
       (.C(clk),
        .CE(scan),
        .D(a[6]),
        .Q(carry_l[6]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \l_bot[3]_i_10 
       (.I0(a[2]),
        .I1(\l_bot[3]_i_3 ),
        .I2(\l_bot_reg[6]_i_15 [2]),
        .O(clk_1));
  LUT4 #(
    .INIT(16'h9009)) 
    \l_bot[6]_i_33 
       (.I0(a[5]),
        .I1(\l_bot_reg[6]_i_15 [5]),
        .I2(a[4]),
        .I3(\l_bot_reg[6]_i_15 [4]),
        .O(clk_0[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \l_bot[6]_i_34 
       (.I0(a[3]),
        .I1(\l_bot_reg[6]_i_15 [3]),
        .I2(a[2]),
        .I3(\l_bot_reg[6]_i_15 [2]),
        .O(clk_0[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \l_bot[6]_i_35 
       (.I0(a[1]),
        .I1(\l_bot_reg[6]_i_15 [1]),
        .I2(a[0]),
        .I3(\l_bot_reg[6]_i_15 [0]),
        .O(clk_0[0]));
  FDRE \l_bot_reg[0] 
       (.C(clk),
        .CE(E),
        .D(l_new[0]),
        .Q(\l_bot_reg[6]_0 [0]),
        .R(1'b0));
  FDRE \l_bot_reg[1] 
       (.C(clk),
        .CE(E),
        .D(l_new[1]),
        .Q(\l_bot_reg[6]_0 [1]),
        .R(1'b0));
  FDRE \l_bot_reg[2] 
       (.C(clk),
        .CE(E),
        .D(l_new[2]),
        .Q(\l_bot_reg[6]_0 [2]),
        .R(1'b0));
  FDRE \l_bot_reg[3] 
       (.C(clk),
        .CE(E),
        .D(l_new[3]),
        .Q(\l_bot_reg[6]_0 [3]),
        .R(1'b0));
  FDRE \l_bot_reg[4] 
       (.C(clk),
        .CE(E),
        .D(l_new[4]),
        .Q(\l_bot_reg[6]_0 [4]),
        .R(1'b0));
  FDRE \l_bot_reg[5] 
       (.C(clk),
        .CE(E),
        .D(l_new[5]),
        .Q(\l_bot_reg[6]_0 [5]),
        .R(1'b0));
  FDRE \l_bot_reg[6] 
       (.C(clk),
        .CE(E),
        .D(l_new[6]),
        .Q(\l_bot_reg[6]_0 [6]),
        .R(1'b0));
  FDRE \l_top_reg[0] 
       (.C(clk),
        .CE(\l_top_reg[6]_1 ),
        .D(l_new[0]),
        .Q(\l_top_reg[6]_0 [0]),
        .R(1'b0));
  FDRE \l_top_reg[1] 
       (.C(clk),
        .CE(\l_top_reg[6]_1 ),
        .D(l_new[1]),
        .Q(\l_top_reg[6]_0 [1]),
        .R(1'b0));
  FDRE \l_top_reg[2] 
       (.C(clk),
        .CE(\l_top_reg[6]_1 ),
        .D(l_new[2]),
        .Q(\l_top_reg[6]_0 [2]),
        .R(1'b0));
  FDRE \l_top_reg[3] 
       (.C(clk),
        .CE(\l_top_reg[6]_1 ),
        .D(l_new[3]),
        .Q(\l_top_reg[6]_0 [3]),
        .R(1'b0));
  FDRE \l_top_reg[4] 
       (.C(clk),
        .CE(\l_top_reg[6]_1 ),
        .D(l_new[4]),
        .Q(\l_top_reg[6]_0 [4]),
        .R(1'b0));
  FDRE \l_top_reg[5] 
       (.C(clk),
        .CE(\l_top_reg[6]_1 ),
        .D(l_new[5]),
        .Q(\l_top_reg[6]_0 [5]),
        .R(1'b0));
  FDRE \l_top_reg[6] 
       (.C(clk),
        .CE(\l_top_reg[6]_1 ),
        .D(l_new[6]),
        .Q(\l_top_reg[6]_0 [6]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h9009)) 
    \lmin[6]_i_10 
       (.I0(lmin[4]),
        .I1(l_new[4]),
        .I2(l_new[5]),
        .I3(lmin[5]),
        .O(\lmin[6]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \lmin[6]_i_11 
       (.I0(lmin[2]),
        .I1(l_new[2]),
        .I2(l_new[3]),
        .I3(lmin[3]),
        .O(\lmin[6]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \lmin[6]_i_12 
       (.I0(lmin[0]),
        .I1(l_new[0]),
        .I2(l_new[1]),
        .I3(lmin[1]),
        .O(\lmin[6]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \lmin[6]_i_6 
       (.I0(lmin[5]),
        .I1(l_new[5]),
        .I2(lmin[4]),
        .I3(l_new[4]),
        .O(\lmin[6]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \lmin[6]_i_7 
       (.I0(lmin[3]),
        .I1(l_new[3]),
        .I2(lmin[2]),
        .I3(l_new[2]),
        .O(\lmin[6]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \lmin[6]_i_8 
       (.I0(lmin[1]),
        .I1(l_new[1]),
        .I2(lmin[0]),
        .I3(l_new[0]),
        .O(\lmin[6]_i_8_n_0 ));
  FDSE \lmin_reg[0] 
       (.C(clk),
        .CE(\lmin_reg[6]_3 ),
        .D(\lmin_reg[0]_0 ),
        .Q(lmin[0]),
        .S(\lmin_reg[6]_2 ));
  FDSE \lmin_reg[1] 
       (.C(clk),
        .CE(\lmin_reg[6]_3 ),
        .D(\lmin_reg[1]_0 ),
        .Q(lmin[1]),
        .S(\lmin_reg[6]_2 ));
  FDSE \lmin_reg[2] 
       (.C(clk),
        .CE(\lmin_reg[6]_3 ),
        .D(\lmin_reg[2]_0 ),
        .Q(lmin[2]),
        .S(\lmin_reg[6]_2 ));
  FDSE \lmin_reg[3] 
       (.C(clk),
        .CE(\lmin_reg[6]_3 ),
        .D(\lmin_reg[3]_0 ),
        .Q(lmin[3]),
        .S(\lmin_reg[6]_2 ));
  FDSE \lmin_reg[4] 
       (.C(clk),
        .CE(\lmin_reg[6]_3 ),
        .D(\lmin_reg[4]_0 ),
        .Q(lmin[4]),
        .S(\lmin_reg[6]_2 ));
  FDSE \lmin_reg[5] 
       (.C(clk),
        .CE(\lmin_reg[6]_3 ),
        .D(\lmin_reg[5]_0 ),
        .Q(lmin[5]),
        .S(\lmin_reg[6]_2 ));
  FDSE \lmin_reg[6] 
       (.C(clk),
        .CE(\lmin_reg[6]_3 ),
        .D(\lmin_reg[6]_4 ),
        .Q(lmin[6]),
        .S(\lmin_reg[6]_2 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \lmin_reg[6]_i_4 
       (.CI(1'b0),
        .CO({\lmin_reg[6]_0 ,\lmin_reg[6]_i_4_n_1 ,\lmin_reg[6]_i_4_n_2 ,\lmin_reg[6]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({DI,\lmin[6]_i_6_n_0 ,\lmin[6]_i_7_n_0 ,\lmin[6]_i_8_n_0 }),
        .O(\NLW_lmin_reg[6]_i_4_O_UNCONNECTED [3:0]),
        .S({\lmin_reg[6]_5 ,\lmin[6]_i_10_n_0 ,\lmin[6]_i_11_n_0 ,\lmin[6]_i_12_n_0 }));
  (* RTL_RAM_BITS = "112" *) 
  (* RTL_RAM_NAME = "ms_path/lr_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    lr_reg_0_15_0_0
       (.A0(D[0]),
        .A1(D[1]),
        .A2(D[2]),
        .A3(D[3]),
        .A4(1'b0),
        .D(p_1_in[0]),
        .DPO(l_up0[0]),
        .DPRA0(\carry_l_reg[6]_0 ),
        .DPRA1(p_0_in[0]),
        .DPRA2(p_0_in[1]),
        .DPRA3(p_0_in[2]),
        .DPRA4(1'b0),
        .SPO(a[0]),
        .WCLK(clk),
        .WE(scan));
  (* RTL_RAM_BITS = "112" *) 
  (* RTL_RAM_NAME = "ms_path/lr_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    lr_reg_0_15_1_1
       (.A0(D[0]),
        .A1(D[1]),
        .A2(D[2]),
        .A3(D[3]),
        .A4(1'b0),
        .D(p_1_in[1]),
        .DPO(l_up0[1]),
        .DPRA0(\carry_l_reg[6]_0 ),
        .DPRA1(p_0_in[0]),
        .DPRA2(p_0_in[1]),
        .DPRA3(p_0_in[2]),
        .DPRA4(1'b0),
        .SPO(a[1]),
        .WCLK(clk),
        .WE(scan));
  (* RTL_RAM_BITS = "112" *) 
  (* RTL_RAM_NAME = "ms_path/lr_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    lr_reg_0_15_2_2
       (.A0(D[0]),
        .A1(D[1]),
        .A2(D[2]),
        .A3(D[3]),
        .A4(1'b0),
        .D(p_1_in[2]),
        .DPO(l_up0[2]),
        .DPRA0(\carry_l_reg[6]_0 ),
        .DPRA1(p_0_in[0]),
        .DPRA2(p_0_in[1]),
        .DPRA3(p_0_in[2]),
        .DPRA4(1'b0),
        .SPO(a[2]),
        .WCLK(clk),
        .WE(scan));
  (* RTL_RAM_BITS = "112" *) 
  (* RTL_RAM_NAME = "ms_path/lr_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    lr_reg_0_15_3_3
       (.A0(D[0]),
        .A1(D[1]),
        .A2(D[2]),
        .A3(D[3]),
        .A4(1'b0),
        .D(p_1_in[3]),
        .DPO(l_up0[3]),
        .DPRA0(\carry_l_reg[6]_0 ),
        .DPRA1(p_0_in[0]),
        .DPRA2(p_0_in[1]),
        .DPRA3(p_0_in[2]),
        .DPRA4(1'b0),
        .SPO(a[3]),
        .WCLK(clk),
        .WE(scan));
  (* RTL_RAM_BITS = "112" *) 
  (* RTL_RAM_NAME = "ms_path/lr_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    lr_reg_0_15_4_4
       (.A0(D[0]),
        .A1(D[1]),
        .A2(D[2]),
        .A3(D[3]),
        .A4(1'b0),
        .D(p_1_in[4]),
        .DPO(l_up0[4]),
        .DPRA0(\carry_l_reg[6]_0 ),
        .DPRA1(p_0_in[0]),
        .DPRA2(p_0_in[1]),
        .DPRA3(p_0_in[2]),
        .DPRA4(1'b0),
        .SPO(a[4]),
        .WCLK(clk),
        .WE(scan));
  (* RTL_RAM_BITS = "112" *) 
  (* RTL_RAM_NAME = "ms_path/lr_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    lr_reg_0_15_5_5
       (.A0(D[0]),
        .A1(D[1]),
        .A2(D[2]),
        .A3(D[3]),
        .A4(1'b0),
        .D(p_1_in[5]),
        .DPO(l_up0[5]),
        .DPRA0(\carry_l_reg[6]_0 ),
        .DPRA1(p_0_in[0]),
        .DPRA2(p_0_in[1]),
        .DPRA3(p_0_in[2]),
        .DPRA4(1'b0),
        .SPO(a[5]),
        .WCLK(clk),
        .WE(scan));
  (* RTL_RAM_BITS = "112" *) 
  (* RTL_RAM_NAME = "ms_path/lr_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    lr_reg_0_15_6_6
       (.A0(D[0]),
        .A1(D[1]),
        .A2(D[2]),
        .A3(D[3]),
        .A4(1'b0),
        .D(p_1_in[6]),
        .DPO(l_up0[6]),
        .DPRA0(\carry_l_reg[6]_0 ),
        .DPRA1(p_0_in[0]),
        .DPRA2(p_0_in[1]),
        .DPRA3(p_0_in[2]),
        .DPRA4(1'b0),
        .SPO(a[6]),
        .WCLK(clk),
        .WE(scan));
  LUT4 #(
    .INIT(16'h9009)) 
    own_wins_i_10
       (.I0(best_s[1]),
        .I1(own_wins_reg_i_2[1]),
        .I2(best_s[0]),
        .I3(own_wins_reg_i_2[0]),
        .O(\best_s_reg[7]_0 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    own_wins_i_7
       (.I0(best_s[7]),
        .I1(own_wins_reg_i_2[7]),
        .I2(best_s[6]),
        .I3(own_wins_reg_i_2[6]),
        .O(\best_s_reg[7]_0 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    own_wins_i_8
       (.I0(best_s[5]),
        .I1(own_wins_reg_i_2[5]),
        .I2(best_s[4]),
        .I3(own_wins_reg_i_2[4]),
        .O(\best_s_reg[7]_0 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    own_wins_i_9
       (.I0(best_s[3]),
        .I1(own_wins_reg_i_2[3]),
        .I2(best_s[2]),
        .I3(own_wins_reg_i_2[2]),
        .O(\best_s_reg[7]_0 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \sec[7]_i_11 
       (.I0(a[5]),
        .I1(Q[5]),
        .I2(a[4]),
        .I3(Q[4]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \sec[7]_i_12 
       (.I0(a[3]),
        .I1(Q[3]),
        .I2(a[2]),
        .I3(Q[2]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \sec[7]_i_13 
       (.I0(a[1]),
        .I1(Q[1]),
        .I2(a[0]),
        .I3(Q[0]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[0]_i_21 
       (.I0(lmin[6]),
        .I1(own_wins_reg_i_2[6]),
        .O(\lmin_reg[6]_1 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[0]_i_22 
       (.I0(lmin[5]),
        .I1(own_wins_reg_i_2[5]),
        .I2(lmin[4]),
        .I3(own_wins_reg_i_2[4]),
        .O(\lmin_reg[6]_1 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[0]_i_23 
       (.I0(lmin[3]),
        .I1(own_wins_reg_i_2[3]),
        .I2(lmin[2]),
        .I3(own_wins_reg_i_2[2]),
        .O(\lmin_reg[6]_1 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[0]_i_24 
       (.I0(lmin[1]),
        .I1(own_wins_reg_i_2[1]),
        .I2(lmin[0]),
        .I3(own_wins_reg_i_2[0]),
        .O(\lmin_reg[6]_1 [0]));
  LUT6 #(
    .INIT(64'hBF80BF8FBF80B080)) 
    \uo[1]_i_8 
       (.I0(best_j[1]),
        .I1(\uo[1]_i_2 ),
        .I2(\uo[1]_i_2_0 ),
        .I3(own_wins_reg_i_2[1]),
        .I4(\uo[1]_i_2_1 ),
        .I5(lmin[1]),
        .O(\best_j_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hBF80BF8FBF80B080)) 
    \uo[2]_i_8 
       (.I0(best_j[2]),
        .I1(\uo[1]_i_2 ),
        .I2(\uo[1]_i_2_0 ),
        .I3(own_wins_reg_i_2[2]),
        .I4(\uo[1]_i_2_1 ),
        .I5(lmin[2]),
        .O(\best_j_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hBF80BF8FBF80B080)) 
    \uo[3]_i_8 
       (.I0(best_j[3]),
        .I1(\uo[1]_i_2 ),
        .I2(\uo[1]_i_2_0 ),
        .I3(own_wins_reg_i_2[3]),
        .I4(\uo[1]_i_2_1 ),
        .I5(lmin[3]),
        .O(\best_j_reg[3]_0 ));
endmodule

(* ORIG_REF_NAME = "ms_pick" *) 
module system_slice_0_0_ms_pick
   (s0,
    s2,
    \uc_reg[3] ,
    \uc_reg[2] ,
    \uc_reg[2]_0 ,
    \uc_reg[3]_0 ,
    \uc_reg[3]_1 ,
    \uc_reg[3]_2 ,
    \uc_reg[3]_3 ,
    \uc_reg[3]_4 ,
    \uc_reg[3]_5 ,
    \uc_reg[3]_6 ,
    \uc_reg[3]_7 ,
    \uc_reg[3]_8 ,
    \uc_reg[3]_9 ,
    \uc_reg[2]_1 ,
    \uc_reg[3]_10 ,
    Q,
    \sec_reg[7]_0 ,
    \rec_reg[15][14]_0 ,
    \rec_reg[7][14]_0 ,
    \rec_reg[15][13]_0 ,
    \rec_reg[7][12]_0 ,
    \rec_reg[7][11]_0 ,
    \rec_reg[7][10]_0 ,
    \rec_reg[7][9]_0 ,
    \rec_reg[7][8]_0 ,
    \rec_reg[7][7]_0 ,
    \rec_reg[7][6]_0 ,
    \rec_reg[7][5]_0 ,
    \rec_reg[7][4]_0 ,
    \rec_reg[7][3]_0 ,
    \rec_reg[15][2]_0 ,
    \rec_reg[15][1]_0 ,
    \rec_reg[7][0]_0 ,
    \carry_rec_reg[14]_0 ,
    CO,
    \sec_reg[7]_1 ,
    \s0_reg[6]_0 ,
    \s0_reg[0]_0 ,
    a,
    clk,
    \s0_reg[7]_0 ,
    \s2_reg[6]_0 ,
    \s2_reg[0]_0 ,
    \s2_reg[7]_0 ,
    \carry_rec_reg[14]_1 ,
    l_new,
    D,
    b_real,
    b_use,
    S,
    \rec_reg[15][14]_1 ,
    \uo_reg[4]_i_15 ,
    E,
    \sec_reg[7]_2 ,
    \rec_reg[0][0]_0 ,
    \rec_reg[1][0]_0 ,
    \rec_reg[2][0]_0 ,
    \rec_reg[3][14]_0 ,
    \rec_reg[4][14]_0 ,
    \rec_reg[5][14]_0 ,
    \rec_reg[6][14]_0 ,
    \rec_reg[7][14]_1 ,
    \rec_reg[8][14]_0 ,
    \rec_reg[9][14]_0 ,
    \rec_reg[10][14]_0 ,
    \rec_reg[11][14]_0 ,
    \rec_reg[12][0]_0 ,
    \rec_reg[13][0]_0 ,
    \rec_reg[14][0]_0 ,
    \carry_rec_reg[14]_2 ,
    \carry_rec_reg[14]_3 ,
    \rec_reg[15][14]_2 );
  output [7:0]s0;
  output [7:0]s2;
  output \uc_reg[3] ;
  output \uc_reg[2] ;
  output \uc_reg[2]_0 ;
  output \uc_reg[3]_0 ;
  output \uc_reg[3]_1 ;
  output \uc_reg[3]_2 ;
  output \uc_reg[3]_3 ;
  output \uc_reg[3]_4 ;
  output \uc_reg[3]_5 ;
  output \uc_reg[3]_6 ;
  output \uc_reg[3]_7 ;
  output \uc_reg[3]_8 ;
  output \uc_reg[3]_9 ;
  output \uc_reg[2]_1 ;
  output \uc_reg[3]_10 ;
  output [13:0]Q;
  output [7:0]\sec_reg[7]_0 ;
  output [14:0]\rec_reg[15][14]_0 ;
  output \rec_reg[7][14]_0 ;
  output \rec_reg[15][13]_0 ;
  output \rec_reg[7][12]_0 ;
  output \rec_reg[7][11]_0 ;
  output \rec_reg[7][10]_0 ;
  output \rec_reg[7][9]_0 ;
  output \rec_reg[7][8]_0 ;
  output \rec_reg[7][7]_0 ;
  output \rec_reg[7][6]_0 ;
  output \rec_reg[7][5]_0 ;
  output \rec_reg[7][4]_0 ;
  output \rec_reg[7][3]_0 ;
  output \rec_reg[15][2]_0 ;
  output \rec_reg[15][1]_0 ;
  output \rec_reg[7][0]_0 ;
  output [0:0]\carry_rec_reg[14]_0 ;
  output [0:0]CO;
  output [3:0]\sec_reg[7]_1 ;
  input \s0_reg[6]_0 ;
  input \s0_reg[0]_0 ;
  input [6:0]a;
  input clk;
  input \s0_reg[7]_0 ;
  input \s2_reg[6]_0 ;
  input \s2_reg[0]_0 ;
  input \s2_reg[7]_0 ;
  input [3:0]\carry_rec_reg[14]_1 ;
  input [6:0]l_new;
  input [13:0]D;
  input b_real;
  input b_use;
  input [2:0]S;
  input [1:0]\rec_reg[15][14]_1 ;
  input [7:0]\uo_reg[4]_i_15 ;
  input [0:0]E;
  input [7:0]\sec_reg[7]_2 ;
  input [0:0]\rec_reg[0][0]_0 ;
  input [0:0]\rec_reg[1][0]_0 ;
  input [0:0]\rec_reg[2][0]_0 ;
  input [0:0]\rec_reg[3][14]_0 ;
  input [0:0]\rec_reg[4][14]_0 ;
  input [0:0]\rec_reg[5][14]_0 ;
  input [0:0]\rec_reg[6][14]_0 ;
  input [0:0]\rec_reg[7][14]_1 ;
  input [0:0]\rec_reg[8][14]_0 ;
  input [0:0]\rec_reg[9][14]_0 ;
  input [0:0]\rec_reg[10][14]_0 ;
  input [0:0]\rec_reg[11][14]_0 ;
  input [0:0]\rec_reg[12][0]_0 ;
  input [0:0]\rec_reg[13][0]_0 ;
  input [0:0]\rec_reg[14][0]_0 ;
  input [0:0]\carry_rec_reg[14]_2 ;
  input [14:0]\carry_rec_reg[14]_3 ;
  input [0:0]\rec_reg[15][14]_2 ;

  wire [0:0]CO;
  wire [13:0]D;
  wire [0:0]E;
  wire [13:0]Q;
  wire [2:0]S;
  wire [6:0]a;
  wire b_real;
  wire b_use;
  wire \carry_rec[0]_i_4_n_0 ;
  wire \carry_rec[0]_i_5_n_0 ;
  wire \carry_rec[0]_i_6_n_0 ;
  wire \carry_rec[10]_i_4_n_0 ;
  wire \carry_rec[10]_i_5_n_0 ;
  wire \carry_rec[10]_i_6_n_0 ;
  wire \carry_rec[11]_i_4_n_0 ;
  wire \carry_rec[11]_i_5_n_0 ;
  wire \carry_rec[11]_i_6_n_0 ;
  wire \carry_rec[12]_i_4_n_0 ;
  wire \carry_rec[12]_i_5_n_0 ;
  wire \carry_rec[12]_i_6_n_0 ;
  wire \carry_rec[13]_i_4_n_0 ;
  wire \carry_rec[13]_i_5_n_0 ;
  wire \carry_rec[13]_i_6_n_0 ;
  wire \carry_rec[14]_i_5_n_0 ;
  wire \carry_rec[14]_i_6_n_0 ;
  wire \carry_rec[14]_i_7_n_0 ;
  wire \carry_rec[1]_i_4_n_0 ;
  wire \carry_rec[1]_i_5_n_0 ;
  wire \carry_rec[1]_i_6_n_0 ;
  wire \carry_rec[2]_i_4_n_0 ;
  wire \carry_rec[2]_i_5_n_0 ;
  wire \carry_rec[2]_i_6_n_0 ;
  wire \carry_rec[3]_i_4_n_0 ;
  wire \carry_rec[3]_i_5_n_0 ;
  wire \carry_rec[3]_i_6_n_0 ;
  wire \carry_rec[4]_i_4_n_0 ;
  wire \carry_rec[4]_i_5_n_0 ;
  wire \carry_rec[4]_i_6_n_0 ;
  wire \carry_rec[5]_i_4_n_0 ;
  wire \carry_rec[5]_i_5_n_0 ;
  wire \carry_rec[5]_i_6_n_0 ;
  wire \carry_rec[6]_i_4_n_0 ;
  wire \carry_rec[6]_i_5_n_0 ;
  wire \carry_rec[6]_i_6_n_0 ;
  wire \carry_rec[7]_i_4_n_0 ;
  wire \carry_rec[7]_i_5_n_0 ;
  wire \carry_rec[7]_i_6_n_0 ;
  wire \carry_rec[8]_i_4_n_0 ;
  wire \carry_rec[8]_i_5_n_0 ;
  wire \carry_rec[8]_i_6_n_0 ;
  wire \carry_rec[9]_i_4_n_0 ;
  wire \carry_rec[9]_i_5_n_0 ;
  wire \carry_rec[9]_i_6_n_0 ;
  wire [0:0]\carry_rec_reg[14]_0 ;
  wire [3:0]\carry_rec_reg[14]_1 ;
  wire [0:0]\carry_rec_reg[14]_2 ;
  wire [14:0]\carry_rec_reg[14]_3 ;
  wire clk;
  wire [6:0]l_new;
  wire [7:7]p_0_in;
  wire [14:14]r_new;
  wire \rec[0][14]_i_10_n_0 ;
  wire \rec[0][14]_i_5_n_0 ;
  wire \rec[0][14]_i_6_n_0 ;
  wire \rec[0][14]_i_7_n_0 ;
  wire \rec[0][14]_i_8_n_0 ;
  wire \rec[0][14]_i_9_n_0 ;
  wire [0:0]\rec_reg[0][0]_0 ;
  wire \rec_reg[0][14]_i_4_n_1 ;
  wire \rec_reg[0][14]_i_4_n_2 ;
  wire \rec_reg[0][14]_i_4_n_3 ;
  wire [14:0]\rec_reg[0]_0 ;
  wire [0:0]\rec_reg[10][14]_0 ;
  wire [14:0]\rec_reg[10]_10 ;
  wire [0:0]\rec_reg[11][14]_0 ;
  wire [14:0]\rec_reg[11]_11 ;
  wire [0:0]\rec_reg[12][0]_0 ;
  wire [14:0]\rec_reg[12]_12 ;
  wire [0:0]\rec_reg[13][0]_0 ;
  wire [14:0]\rec_reg[13]_13 ;
  wire [0:0]\rec_reg[14][0]_0 ;
  wire [14:0]\rec_reg[14]_14 ;
  wire \rec_reg[15][13]_0 ;
  wire [14:0]\rec_reg[15][14]_0 ;
  wire [1:0]\rec_reg[15][14]_1 ;
  wire [0:0]\rec_reg[15][14]_2 ;
  wire \rec_reg[15][1]_0 ;
  wire \rec_reg[15][2]_0 ;
  wire [0:0]\rec_reg[1][0]_0 ;
  wire [14:0]\rec_reg[1]_1 ;
  wire [0:0]\rec_reg[2][0]_0 ;
  wire [14:0]\rec_reg[2]_2 ;
  wire [0:0]\rec_reg[3][14]_0 ;
  wire [14:0]\rec_reg[3]_3 ;
  wire [0:0]\rec_reg[4][14]_0 ;
  wire [14:0]\rec_reg[4]_4 ;
  wire [0:0]\rec_reg[5][14]_0 ;
  wire [14:0]\rec_reg[5]_5 ;
  wire [0:0]\rec_reg[6][14]_0 ;
  wire [14:0]\rec_reg[6]_6 ;
  wire \rec_reg[7][0]_0 ;
  wire \rec_reg[7][10]_0 ;
  wire \rec_reg[7][11]_0 ;
  wire \rec_reg[7][12]_0 ;
  wire \rec_reg[7][14]_0 ;
  wire [0:0]\rec_reg[7][14]_1 ;
  wire \rec_reg[7][3]_0 ;
  wire \rec_reg[7][4]_0 ;
  wire \rec_reg[7][5]_0 ;
  wire \rec_reg[7][6]_0 ;
  wire \rec_reg[7][7]_0 ;
  wire \rec_reg[7][8]_0 ;
  wire \rec_reg[7][9]_0 ;
  wire [14:0]\rec_reg[7]_7 ;
  wire [0:0]\rec_reg[8][14]_0 ;
  wire [14:0]\rec_reg[8]_8 ;
  wire [0:0]\rec_reg[9][14]_0 ;
  wire [14:0]\rec_reg[9]_9 ;
  wire [7:0]s0;
  wire \s0_reg[0]_0 ;
  wire \s0_reg[6]_0 ;
  wire \s0_reg[7]_0 ;
  wire [7:0]s2;
  wire \s2_reg[0]_0 ;
  wire \s2_reg[6]_0 ;
  wire \s2_reg[7]_0 ;
  wire \sec[7]_i_10_n_0 ;
  wire \sec[7]_i_6_n_0 ;
  wire \sec[7]_i_7_n_0 ;
  wire \sec[7]_i_8_n_0 ;
  wire \sec[7]_i_9_n_0 ;
  wire [7:0]\sec_reg[7]_0 ;
  wire [3:0]\sec_reg[7]_1 ;
  wire [7:0]\sec_reg[7]_2 ;
  wire \sec_reg[7]_i_3_n_1 ;
  wire \sec_reg[7]_i_3_n_2 ;
  wire \sec_reg[7]_i_3_n_3 ;
  wire \uc_reg[2] ;
  wire \uc_reg[2]_0 ;
  wire \uc_reg[2]_1 ;
  wire \uc_reg[3] ;
  wire \uc_reg[3]_0 ;
  wire \uc_reg[3]_1 ;
  wire \uc_reg[3]_10 ;
  wire \uc_reg[3]_2 ;
  wire \uc_reg[3]_3 ;
  wire \uc_reg[3]_4 ;
  wire \uc_reg[3]_5 ;
  wire \uc_reg[3]_6 ;
  wire \uc_reg[3]_7 ;
  wire \uc_reg[3]_8 ;
  wire \uc_reg[3]_9 ;
  wire [7:0]\uo_reg[4]_i_15 ;
  wire [3:0]\NLW_rec_reg[0][14]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_sec_reg[7]_i_3_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hA0CFA0C0)) 
    \carry_rec[0]_i_2 
       (.I0(\carry_rec[0]_i_4_n_0 ),
        .I1(\carry_rec[0]_i_5_n_0 ),
        .I2(\carry_rec_reg[14]_1 [3]),
        .I3(\carry_rec_reg[14]_1 [2]),
        .I4(\carry_rec[0]_i_6_n_0 ),
        .O(\uc_reg[3] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[0]_i_3 
       (.I0(\rec_reg[7]_7 [0]),
        .I1(\rec_reg[6]_6 [0]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[5]_5 [0]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[4]_4 [0]),
        .O(\rec_reg[7][0]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[0]_i_4 
       (.I0(\rec_reg[15][14]_0 [0]),
        .I1(\rec_reg[14]_14 [0]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[13]_13 [0]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[12]_12 [0]),
        .O(\carry_rec[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[0]_i_5 
       (.I0(\rec_reg[11]_11 [0]),
        .I1(\rec_reg[10]_10 [0]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[9]_9 [0]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[8]_8 [0]),
        .O(\carry_rec[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[0]_i_6 
       (.I0(\rec_reg[3]_3 [0]),
        .I1(\rec_reg[2]_2 [0]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[1]_1 [0]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[0]_0 [0]),
        .O(\carry_rec[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hA0CFA0C0)) 
    \carry_rec[10]_i_2 
       (.I0(\carry_rec[10]_i_4_n_0 ),
        .I1(\carry_rec[10]_i_5_n_0 ),
        .I2(\carry_rec_reg[14]_1 [3]),
        .I3(\carry_rec_reg[14]_1 [2]),
        .I4(\carry_rec[10]_i_6_n_0 ),
        .O(\uc_reg[3]_7 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[10]_i_3 
       (.I0(\rec_reg[7]_7 [10]),
        .I1(\rec_reg[6]_6 [10]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[5]_5 [10]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[4]_4 [10]),
        .O(\rec_reg[7][10]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[10]_i_4 
       (.I0(\rec_reg[15][14]_0 [10]),
        .I1(\rec_reg[14]_14 [10]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[13]_13 [10]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[12]_12 [10]),
        .O(\carry_rec[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[10]_i_5 
       (.I0(\rec_reg[11]_11 [10]),
        .I1(\rec_reg[10]_10 [10]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[9]_9 [10]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[8]_8 [10]),
        .O(\carry_rec[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[10]_i_6 
       (.I0(\rec_reg[3]_3 [10]),
        .I1(\rec_reg[2]_2 [10]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[1]_1 [10]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[0]_0 [10]),
        .O(\carry_rec[10]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hA0CFA0C0)) 
    \carry_rec[11]_i_2 
       (.I0(\carry_rec[11]_i_4_n_0 ),
        .I1(\carry_rec[11]_i_5_n_0 ),
        .I2(\carry_rec_reg[14]_1 [3]),
        .I3(\carry_rec_reg[14]_1 [2]),
        .I4(\carry_rec[11]_i_6_n_0 ),
        .O(\uc_reg[3]_8 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[11]_i_3 
       (.I0(\rec_reg[7]_7 [11]),
        .I1(\rec_reg[6]_6 [11]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[5]_5 [11]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[4]_4 [11]),
        .O(\rec_reg[7][11]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[11]_i_4 
       (.I0(\rec_reg[15][14]_0 [11]),
        .I1(\rec_reg[14]_14 [11]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[13]_13 [11]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[12]_12 [11]),
        .O(\carry_rec[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[11]_i_5 
       (.I0(\rec_reg[11]_11 [11]),
        .I1(\rec_reg[10]_10 [11]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[9]_9 [11]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[8]_8 [11]),
        .O(\carry_rec[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[11]_i_6 
       (.I0(\rec_reg[3]_3 [11]),
        .I1(\rec_reg[2]_2 [11]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[1]_1 [11]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[0]_0 [11]),
        .O(\carry_rec[11]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hA0CFA0C0)) 
    \carry_rec[12]_i_2 
       (.I0(\carry_rec[12]_i_4_n_0 ),
        .I1(\carry_rec[12]_i_5_n_0 ),
        .I2(\carry_rec_reg[14]_1 [3]),
        .I3(\carry_rec_reg[14]_1 [2]),
        .I4(\carry_rec[12]_i_6_n_0 ),
        .O(\uc_reg[3]_9 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[12]_i_3 
       (.I0(\rec_reg[7]_7 [12]),
        .I1(\rec_reg[6]_6 [12]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[5]_5 [12]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[4]_4 [12]),
        .O(\rec_reg[7][12]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[12]_i_4 
       (.I0(\rec_reg[15][14]_0 [12]),
        .I1(\rec_reg[14]_14 [12]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[13]_13 [12]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[12]_12 [12]),
        .O(\carry_rec[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[12]_i_5 
       (.I0(\rec_reg[11]_11 [12]),
        .I1(\rec_reg[10]_10 [12]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[9]_9 [12]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[8]_8 [12]),
        .O(\carry_rec[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[12]_i_6 
       (.I0(\rec_reg[3]_3 [12]),
        .I1(\rec_reg[2]_2 [12]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[1]_1 [12]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[0]_0 [12]),
        .O(\carry_rec[12]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \carry_rec[13]_i_2 
       (.I0(\carry_rec[13]_i_4_n_0 ),
        .I1(\carry_rec[13]_i_5_n_0 ),
        .I2(\carry_rec_reg[14]_1 [2]),
        .I3(\carry_rec_reg[14]_1 [3]),
        .I4(\carry_rec[13]_i_6_n_0 ),
        .O(\uc_reg[2]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[13]_i_3 
       (.I0(\rec_reg[15][14]_0 [13]),
        .I1(\rec_reg[14]_14 [13]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[13]_13 [13]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[12]_12 [13]),
        .O(\rec_reg[15][13]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[13]_i_4 
       (.I0(\rec_reg[3]_3 [13]),
        .I1(\rec_reg[2]_2 [13]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[1]_1 [13]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[0]_0 [13]),
        .O(\carry_rec[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[13]_i_5 
       (.I0(\rec_reg[7]_7 [13]),
        .I1(\rec_reg[6]_6 [13]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[5]_5 [13]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[4]_4 [13]),
        .O(\carry_rec[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[13]_i_6 
       (.I0(\rec_reg[11]_11 [13]),
        .I1(\rec_reg[10]_10 [13]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[9]_9 [13]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[8]_8 [13]),
        .O(\carry_rec[13]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hA0CFA0C0)) 
    \carry_rec[14]_i_3 
       (.I0(\carry_rec[14]_i_5_n_0 ),
        .I1(\carry_rec[14]_i_6_n_0 ),
        .I2(\carry_rec_reg[14]_1 [3]),
        .I3(\carry_rec_reg[14]_1 [2]),
        .I4(\carry_rec[14]_i_7_n_0 ),
        .O(\uc_reg[3]_10 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[14]_i_4 
       (.I0(\rec_reg[7]_7 [14]),
        .I1(\rec_reg[6]_6 [14]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[5]_5 [14]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[4]_4 [14]),
        .O(\rec_reg[7][14]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[14]_i_5 
       (.I0(\rec_reg[15][14]_0 [14]),
        .I1(\rec_reg[14]_14 [14]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[13]_13 [14]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[12]_12 [14]),
        .O(\carry_rec[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[14]_i_6 
       (.I0(\rec_reg[11]_11 [14]),
        .I1(\rec_reg[10]_10 [14]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[9]_9 [14]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[8]_8 [14]),
        .O(\carry_rec[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[14]_i_7 
       (.I0(\rec_reg[3]_3 [14]),
        .I1(\rec_reg[2]_2 [14]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[1]_1 [14]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[0]_0 [14]),
        .O(\carry_rec[14]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \carry_rec[1]_i_2 
       (.I0(\carry_rec[1]_i_4_n_0 ),
        .I1(\carry_rec[1]_i_5_n_0 ),
        .I2(\carry_rec_reg[14]_1 [2]),
        .I3(\carry_rec_reg[14]_1 [3]),
        .I4(\carry_rec[1]_i_6_n_0 ),
        .O(\uc_reg[2] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[1]_i_3 
       (.I0(\rec_reg[15][14]_0 [1]),
        .I1(\rec_reg[14]_14 [1]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[13]_13 [1]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[12]_12 [1]),
        .O(\rec_reg[15][1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[1]_i_4 
       (.I0(\rec_reg[3]_3 [1]),
        .I1(\rec_reg[2]_2 [1]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[1]_1 [1]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[0]_0 [1]),
        .O(\carry_rec[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[1]_i_5 
       (.I0(\rec_reg[7]_7 [1]),
        .I1(\rec_reg[6]_6 [1]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[5]_5 [1]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[4]_4 [1]),
        .O(\carry_rec[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[1]_i_6 
       (.I0(\rec_reg[11]_11 [1]),
        .I1(\rec_reg[10]_10 [1]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[9]_9 [1]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[8]_8 [1]),
        .O(\carry_rec[1]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \carry_rec[2]_i_2 
       (.I0(\carry_rec[2]_i_4_n_0 ),
        .I1(\carry_rec[2]_i_5_n_0 ),
        .I2(\carry_rec_reg[14]_1 [2]),
        .I3(\carry_rec_reg[14]_1 [3]),
        .I4(\carry_rec[2]_i_6_n_0 ),
        .O(\uc_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[2]_i_3 
       (.I0(\rec_reg[15][14]_0 [2]),
        .I1(\rec_reg[14]_14 [2]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[13]_13 [2]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[12]_12 [2]),
        .O(\rec_reg[15][2]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[2]_i_4 
       (.I0(\rec_reg[3]_3 [2]),
        .I1(\rec_reg[2]_2 [2]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[1]_1 [2]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[0]_0 [2]),
        .O(\carry_rec[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[2]_i_5 
       (.I0(\rec_reg[7]_7 [2]),
        .I1(\rec_reg[6]_6 [2]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[5]_5 [2]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[4]_4 [2]),
        .O(\carry_rec[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[2]_i_6 
       (.I0(\rec_reg[11]_11 [2]),
        .I1(\rec_reg[10]_10 [2]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[9]_9 [2]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[8]_8 [2]),
        .O(\carry_rec[2]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hA0CFA0C0)) 
    \carry_rec[3]_i_2 
       (.I0(\carry_rec[3]_i_4_n_0 ),
        .I1(\carry_rec[3]_i_5_n_0 ),
        .I2(\carry_rec_reg[14]_1 [3]),
        .I3(\carry_rec_reg[14]_1 [2]),
        .I4(\carry_rec[3]_i_6_n_0 ),
        .O(\uc_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[3]_i_3 
       (.I0(\rec_reg[7]_7 [3]),
        .I1(\rec_reg[6]_6 [3]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[5]_5 [3]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[4]_4 [3]),
        .O(\rec_reg[7][3]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[3]_i_4 
       (.I0(\rec_reg[15][14]_0 [3]),
        .I1(\rec_reg[14]_14 [3]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[13]_13 [3]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[12]_12 [3]),
        .O(\carry_rec[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[3]_i_5 
       (.I0(\rec_reg[11]_11 [3]),
        .I1(\rec_reg[10]_10 [3]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[9]_9 [3]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[8]_8 [3]),
        .O(\carry_rec[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[3]_i_6 
       (.I0(\rec_reg[3]_3 [3]),
        .I1(\rec_reg[2]_2 [3]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[1]_1 [3]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[0]_0 [3]),
        .O(\carry_rec[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hA0CFA0C0)) 
    \carry_rec[4]_i_2 
       (.I0(\carry_rec[4]_i_4_n_0 ),
        .I1(\carry_rec[4]_i_5_n_0 ),
        .I2(\carry_rec_reg[14]_1 [3]),
        .I3(\carry_rec_reg[14]_1 [2]),
        .I4(\carry_rec[4]_i_6_n_0 ),
        .O(\uc_reg[3]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[4]_i_3 
       (.I0(\rec_reg[7]_7 [4]),
        .I1(\rec_reg[6]_6 [4]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[5]_5 [4]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[4]_4 [4]),
        .O(\rec_reg[7][4]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[4]_i_4 
       (.I0(\rec_reg[15][14]_0 [4]),
        .I1(\rec_reg[14]_14 [4]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[13]_13 [4]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[12]_12 [4]),
        .O(\carry_rec[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[4]_i_5 
       (.I0(\rec_reg[11]_11 [4]),
        .I1(\rec_reg[10]_10 [4]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[9]_9 [4]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[8]_8 [4]),
        .O(\carry_rec[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[4]_i_6 
       (.I0(\rec_reg[3]_3 [4]),
        .I1(\rec_reg[2]_2 [4]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[1]_1 [4]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[0]_0 [4]),
        .O(\carry_rec[4]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hA0CFA0C0)) 
    \carry_rec[5]_i_2 
       (.I0(\carry_rec[5]_i_4_n_0 ),
        .I1(\carry_rec[5]_i_5_n_0 ),
        .I2(\carry_rec_reg[14]_1 [3]),
        .I3(\carry_rec_reg[14]_1 [2]),
        .I4(\carry_rec[5]_i_6_n_0 ),
        .O(\uc_reg[3]_2 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[5]_i_3 
       (.I0(\rec_reg[7]_7 [5]),
        .I1(\rec_reg[6]_6 [5]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[5]_5 [5]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[4]_4 [5]),
        .O(\rec_reg[7][5]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[5]_i_4 
       (.I0(\rec_reg[15][14]_0 [5]),
        .I1(\rec_reg[14]_14 [5]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[13]_13 [5]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[12]_12 [5]),
        .O(\carry_rec[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[5]_i_5 
       (.I0(\rec_reg[11]_11 [5]),
        .I1(\rec_reg[10]_10 [5]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[9]_9 [5]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[8]_8 [5]),
        .O(\carry_rec[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[5]_i_6 
       (.I0(\rec_reg[3]_3 [5]),
        .I1(\rec_reg[2]_2 [5]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[1]_1 [5]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[0]_0 [5]),
        .O(\carry_rec[5]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hA0CFA0C0)) 
    \carry_rec[6]_i_2 
       (.I0(\carry_rec[6]_i_4_n_0 ),
        .I1(\carry_rec[6]_i_5_n_0 ),
        .I2(\carry_rec_reg[14]_1 [3]),
        .I3(\carry_rec_reg[14]_1 [2]),
        .I4(\carry_rec[6]_i_6_n_0 ),
        .O(\uc_reg[3]_3 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[6]_i_3 
       (.I0(\rec_reg[7]_7 [6]),
        .I1(\rec_reg[6]_6 [6]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[5]_5 [6]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[4]_4 [6]),
        .O(\rec_reg[7][6]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[6]_i_4 
       (.I0(\rec_reg[15][14]_0 [6]),
        .I1(\rec_reg[14]_14 [6]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[13]_13 [6]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[12]_12 [6]),
        .O(\carry_rec[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[6]_i_5 
       (.I0(\rec_reg[11]_11 [6]),
        .I1(\rec_reg[10]_10 [6]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[9]_9 [6]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[8]_8 [6]),
        .O(\carry_rec[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[6]_i_6 
       (.I0(\rec_reg[3]_3 [6]),
        .I1(\rec_reg[2]_2 [6]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[1]_1 [6]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[0]_0 [6]),
        .O(\carry_rec[6]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hA0CFA0C0)) 
    \carry_rec[7]_i_2 
       (.I0(\carry_rec[7]_i_4_n_0 ),
        .I1(\carry_rec[7]_i_5_n_0 ),
        .I2(\carry_rec_reg[14]_1 [3]),
        .I3(\carry_rec_reg[14]_1 [2]),
        .I4(\carry_rec[7]_i_6_n_0 ),
        .O(\uc_reg[3]_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[7]_i_3 
       (.I0(\rec_reg[7]_7 [7]),
        .I1(\rec_reg[6]_6 [7]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[5]_5 [7]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[4]_4 [7]),
        .O(\rec_reg[7][7]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[7]_i_4 
       (.I0(\rec_reg[15][14]_0 [7]),
        .I1(\rec_reg[14]_14 [7]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[13]_13 [7]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[12]_12 [7]),
        .O(\carry_rec[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[7]_i_5 
       (.I0(\rec_reg[11]_11 [7]),
        .I1(\rec_reg[10]_10 [7]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[9]_9 [7]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[8]_8 [7]),
        .O(\carry_rec[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[7]_i_6 
       (.I0(\rec_reg[3]_3 [7]),
        .I1(\rec_reg[2]_2 [7]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[1]_1 [7]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[0]_0 [7]),
        .O(\carry_rec[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hA0CFA0C0)) 
    \carry_rec[8]_i_2 
       (.I0(\carry_rec[8]_i_4_n_0 ),
        .I1(\carry_rec[8]_i_5_n_0 ),
        .I2(\carry_rec_reg[14]_1 [3]),
        .I3(\carry_rec_reg[14]_1 [2]),
        .I4(\carry_rec[8]_i_6_n_0 ),
        .O(\uc_reg[3]_5 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[8]_i_3 
       (.I0(\rec_reg[7]_7 [8]),
        .I1(\rec_reg[6]_6 [8]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[5]_5 [8]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[4]_4 [8]),
        .O(\rec_reg[7][8]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[8]_i_4 
       (.I0(\rec_reg[15][14]_0 [8]),
        .I1(\rec_reg[14]_14 [8]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[13]_13 [8]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[12]_12 [8]),
        .O(\carry_rec[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[8]_i_5 
       (.I0(\rec_reg[11]_11 [8]),
        .I1(\rec_reg[10]_10 [8]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[9]_9 [8]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[8]_8 [8]),
        .O(\carry_rec[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[8]_i_6 
       (.I0(\rec_reg[3]_3 [8]),
        .I1(\rec_reg[2]_2 [8]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[1]_1 [8]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[0]_0 [8]),
        .O(\carry_rec[8]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hA0CFA0C0)) 
    \carry_rec[9]_i_2 
       (.I0(\carry_rec[9]_i_4_n_0 ),
        .I1(\carry_rec[9]_i_5_n_0 ),
        .I2(\carry_rec_reg[14]_1 [3]),
        .I3(\carry_rec_reg[14]_1 [2]),
        .I4(\carry_rec[9]_i_6_n_0 ),
        .O(\uc_reg[3]_6 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[9]_i_3 
       (.I0(\rec_reg[7]_7 [9]),
        .I1(\rec_reg[6]_6 [9]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[5]_5 [9]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[4]_4 [9]),
        .O(\rec_reg[7][9]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[9]_i_4 
       (.I0(\rec_reg[15][14]_0 [9]),
        .I1(\rec_reg[14]_14 [9]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[13]_13 [9]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[12]_12 [9]),
        .O(\carry_rec[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[9]_i_5 
       (.I0(\rec_reg[11]_11 [9]),
        .I1(\rec_reg[10]_10 [9]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[9]_9 [9]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[8]_8 [9]),
        .O(\carry_rec[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \carry_rec[9]_i_6 
       (.I0(\rec_reg[3]_3 [9]),
        .I1(\rec_reg[2]_2 [9]),
        .I2(\carry_rec_reg[14]_1 [1]),
        .I3(\rec_reg[1]_1 [9]),
        .I4(\carry_rec_reg[14]_1 [0]),
        .I5(\rec_reg[0]_0 [9]),
        .O(\carry_rec[9]_i_6_n_0 ));
  FDRE \carry_rec_reg[0] 
       (.C(clk),
        .CE(\carry_rec_reg[14]_2 ),
        .D(\carry_rec_reg[14]_3 [0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \carry_rec_reg[10] 
       (.C(clk),
        .CE(\carry_rec_reg[14]_2 ),
        .D(\carry_rec_reg[14]_3 [10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \carry_rec_reg[11] 
       (.C(clk),
        .CE(\carry_rec_reg[14]_2 ),
        .D(\carry_rec_reg[14]_3 [11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \carry_rec_reg[12] 
       (.C(clk),
        .CE(\carry_rec_reg[14]_2 ),
        .D(\carry_rec_reg[14]_3 [12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \carry_rec_reg[13] 
       (.C(clk),
        .CE(\carry_rec_reg[14]_2 ),
        .D(\carry_rec_reg[14]_3 [13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \carry_rec_reg[14] 
       (.C(clk),
        .CE(\carry_rec_reg[14]_2 ),
        .D(\carry_rec_reg[14]_3 [14]),
        .Q(p_0_in),
        .R(1'b0));
  FDRE \carry_rec_reg[1] 
       (.C(clk),
        .CE(\carry_rec_reg[14]_2 ),
        .D(\carry_rec_reg[14]_3 [1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \carry_rec_reg[2] 
       (.C(clk),
        .CE(\carry_rec_reg[14]_2 ),
        .D(\carry_rec_reg[14]_3 [2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \carry_rec_reg[3] 
       (.C(clk),
        .CE(\carry_rec_reg[14]_2 ),
        .D(\carry_rec_reg[14]_3 [3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \carry_rec_reg[4] 
       (.C(clk),
        .CE(\carry_rec_reg[14]_2 ),
        .D(\carry_rec_reg[14]_3 [4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \carry_rec_reg[5] 
       (.C(clk),
        .CE(\carry_rec_reg[14]_2 ),
        .D(\carry_rec_reg[14]_3 [5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \carry_rec_reg[6] 
       (.C(clk),
        .CE(\carry_rec_reg[14]_2 ),
        .D(\carry_rec_reg[14]_3 [6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \carry_rec_reg[7] 
       (.C(clk),
        .CE(\carry_rec_reg[14]_2 ),
        .D(\carry_rec_reg[14]_3 [7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \carry_rec_reg[8] 
       (.C(clk),
        .CE(\carry_rec_reg[14]_2 ),
        .D(\carry_rec_reg[14]_3 [8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \carry_rec_reg[9] 
       (.C(clk),
        .CE(\carry_rec_reg[14]_2 ),
        .D(\carry_rec_reg[14]_3 [9]),
        .Q(Q[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h9009)) 
    \rec[0][14]_i_10 
       (.I0(l_new[5]),
        .I1(Q[12]),
        .I2(l_new[4]),
        .I3(Q[11]),
        .O(\rec[0][14]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h2AAA)) 
    \rec[0][14]_i_2 
       (.I0(p_0_in),
        .I1(b_real),
        .I2(\carry_rec_reg[14]_0 ),
        .I3(b_use),
        .O(r_new));
  LUT3 #(
    .INIT(8'hBA)) 
    \rec[0][14]_i_5 
       (.I0(p_0_in),
        .I1(l_new[6]),
        .I2(Q[13]),
        .O(\rec[0][14]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \rec[0][14]_i_6 
       (.I0(Q[12]),
        .I1(l_new[5]),
        .I2(Q[11]),
        .I3(l_new[4]),
        .O(\rec[0][14]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \rec[0][14]_i_7 
       (.I0(Q[10]),
        .I1(l_new[3]),
        .I2(Q[9]),
        .I3(l_new[2]),
        .O(\rec[0][14]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \rec[0][14]_i_8 
       (.I0(Q[8]),
        .I1(l_new[1]),
        .I2(Q[7]),
        .I3(l_new[0]),
        .O(\rec[0][14]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h41)) 
    \rec[0][14]_i_9 
       (.I0(p_0_in),
        .I1(l_new[6]),
        .I2(Q[13]),
        .O(\rec[0][14]_i_9_n_0 ));
  FDRE \rec_reg[0][0] 
       (.C(clk),
        .CE(\rec_reg[0][0]_0 ),
        .D(D[0]),
        .Q(\rec_reg[0]_0 [0]),
        .R(1'b0));
  FDRE \rec_reg[0][10] 
       (.C(clk),
        .CE(\rec_reg[0][0]_0 ),
        .D(D[10]),
        .Q(\rec_reg[0]_0 [10]),
        .R(1'b0));
  FDRE \rec_reg[0][11] 
       (.C(clk),
        .CE(\rec_reg[0][0]_0 ),
        .D(D[11]),
        .Q(\rec_reg[0]_0 [11]),
        .R(1'b0));
  FDRE \rec_reg[0][12] 
       (.C(clk),
        .CE(\rec_reg[0][0]_0 ),
        .D(D[12]),
        .Q(\rec_reg[0]_0 [12]),
        .R(1'b0));
  FDRE \rec_reg[0][13] 
       (.C(clk),
        .CE(\rec_reg[0][0]_0 ),
        .D(D[13]),
        .Q(\rec_reg[0]_0 [13]),
        .R(1'b0));
  FDRE \rec_reg[0][14] 
       (.C(clk),
        .CE(\rec_reg[0][0]_0 ),
        .D(r_new),
        .Q(\rec_reg[0]_0 [14]),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \rec_reg[0][14]_i_4 
       (.CI(1'b0),
        .CO({\carry_rec_reg[14]_0 ,\rec_reg[0][14]_i_4_n_1 ,\rec_reg[0][14]_i_4_n_2 ,\rec_reg[0][14]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\rec[0][14]_i_5_n_0 ,\rec[0][14]_i_6_n_0 ,\rec[0][14]_i_7_n_0 ,\rec[0][14]_i_8_n_0 }),
        .O(\NLW_rec_reg[0][14]_i_4_O_UNCONNECTED [3:0]),
        .S({\rec[0][14]_i_9_n_0 ,\rec[0][14]_i_10_n_0 ,\rec_reg[15][14]_1 }));
  FDRE \rec_reg[0][1] 
       (.C(clk),
        .CE(\rec_reg[0][0]_0 ),
        .D(D[1]),
        .Q(\rec_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \rec_reg[0][2] 
       (.C(clk),
        .CE(\rec_reg[0][0]_0 ),
        .D(D[2]),
        .Q(\rec_reg[0]_0 [2]),
        .R(1'b0));
  FDRE \rec_reg[0][3] 
       (.C(clk),
        .CE(\rec_reg[0][0]_0 ),
        .D(D[3]),
        .Q(\rec_reg[0]_0 [3]),
        .R(1'b0));
  FDRE \rec_reg[0][4] 
       (.C(clk),
        .CE(\rec_reg[0][0]_0 ),
        .D(D[4]),
        .Q(\rec_reg[0]_0 [4]),
        .R(1'b0));
  FDRE \rec_reg[0][5] 
       (.C(clk),
        .CE(\rec_reg[0][0]_0 ),
        .D(D[5]),
        .Q(\rec_reg[0]_0 [5]),
        .R(1'b0));
  FDRE \rec_reg[0][6] 
       (.C(clk),
        .CE(\rec_reg[0][0]_0 ),
        .D(D[6]),
        .Q(\rec_reg[0]_0 [6]),
        .R(1'b0));
  FDRE \rec_reg[0][7] 
       (.C(clk),
        .CE(\rec_reg[0][0]_0 ),
        .D(D[7]),
        .Q(\rec_reg[0]_0 [7]),
        .R(1'b0));
  FDRE \rec_reg[0][8] 
       (.C(clk),
        .CE(\rec_reg[0][0]_0 ),
        .D(D[8]),
        .Q(\rec_reg[0]_0 [8]),
        .R(1'b0));
  FDRE \rec_reg[0][9] 
       (.C(clk),
        .CE(\rec_reg[0][0]_0 ),
        .D(D[9]),
        .Q(\rec_reg[0]_0 [9]),
        .R(1'b0));
  FDRE \rec_reg[10][0] 
       (.C(clk),
        .CE(\rec_reg[10][14]_0 ),
        .D(D[0]),
        .Q(\rec_reg[10]_10 [0]),
        .R(1'b0));
  FDRE \rec_reg[10][10] 
       (.C(clk),
        .CE(\rec_reg[10][14]_0 ),
        .D(D[10]),
        .Q(\rec_reg[10]_10 [10]),
        .R(1'b0));
  FDRE \rec_reg[10][11] 
       (.C(clk),
        .CE(\rec_reg[10][14]_0 ),
        .D(D[11]),
        .Q(\rec_reg[10]_10 [11]),
        .R(1'b0));
  FDRE \rec_reg[10][12] 
       (.C(clk),
        .CE(\rec_reg[10][14]_0 ),
        .D(D[12]),
        .Q(\rec_reg[10]_10 [12]),
        .R(1'b0));
  FDRE \rec_reg[10][13] 
       (.C(clk),
        .CE(\rec_reg[10][14]_0 ),
        .D(D[13]),
        .Q(\rec_reg[10]_10 [13]),
        .R(1'b0));
  FDRE \rec_reg[10][14] 
       (.C(clk),
        .CE(\rec_reg[10][14]_0 ),
        .D(r_new),
        .Q(\rec_reg[10]_10 [14]),
        .R(1'b0));
  FDRE \rec_reg[10][1] 
       (.C(clk),
        .CE(\rec_reg[10][14]_0 ),
        .D(D[1]),
        .Q(\rec_reg[10]_10 [1]),
        .R(1'b0));
  FDRE \rec_reg[10][2] 
       (.C(clk),
        .CE(\rec_reg[10][14]_0 ),
        .D(D[2]),
        .Q(\rec_reg[10]_10 [2]),
        .R(1'b0));
  FDRE \rec_reg[10][3] 
       (.C(clk),
        .CE(\rec_reg[10][14]_0 ),
        .D(D[3]),
        .Q(\rec_reg[10]_10 [3]),
        .R(1'b0));
  FDRE \rec_reg[10][4] 
       (.C(clk),
        .CE(\rec_reg[10][14]_0 ),
        .D(D[4]),
        .Q(\rec_reg[10]_10 [4]),
        .R(1'b0));
  FDRE \rec_reg[10][5] 
       (.C(clk),
        .CE(\rec_reg[10][14]_0 ),
        .D(D[5]),
        .Q(\rec_reg[10]_10 [5]),
        .R(1'b0));
  FDRE \rec_reg[10][6] 
       (.C(clk),
        .CE(\rec_reg[10][14]_0 ),
        .D(D[6]),
        .Q(\rec_reg[10]_10 [6]),
        .R(1'b0));
  FDRE \rec_reg[10][7] 
       (.C(clk),
        .CE(\rec_reg[10][14]_0 ),
        .D(D[7]),
        .Q(\rec_reg[10]_10 [7]),
        .R(1'b0));
  FDRE \rec_reg[10][8] 
       (.C(clk),
        .CE(\rec_reg[10][14]_0 ),
        .D(D[8]),
        .Q(\rec_reg[10]_10 [8]),
        .R(1'b0));
  FDRE \rec_reg[10][9] 
       (.C(clk),
        .CE(\rec_reg[10][14]_0 ),
        .D(D[9]),
        .Q(\rec_reg[10]_10 [9]),
        .R(1'b0));
  FDRE \rec_reg[11][0] 
       (.C(clk),
        .CE(\rec_reg[11][14]_0 ),
        .D(D[0]),
        .Q(\rec_reg[11]_11 [0]),
        .R(1'b0));
  FDRE \rec_reg[11][10] 
       (.C(clk),
        .CE(\rec_reg[11][14]_0 ),
        .D(D[10]),
        .Q(\rec_reg[11]_11 [10]),
        .R(1'b0));
  FDRE \rec_reg[11][11] 
       (.C(clk),
        .CE(\rec_reg[11][14]_0 ),
        .D(D[11]),
        .Q(\rec_reg[11]_11 [11]),
        .R(1'b0));
  FDRE \rec_reg[11][12] 
       (.C(clk),
        .CE(\rec_reg[11][14]_0 ),
        .D(D[12]),
        .Q(\rec_reg[11]_11 [12]),
        .R(1'b0));
  FDRE \rec_reg[11][13] 
       (.C(clk),
        .CE(\rec_reg[11][14]_0 ),
        .D(D[13]),
        .Q(\rec_reg[11]_11 [13]),
        .R(1'b0));
  FDRE \rec_reg[11][14] 
       (.C(clk),
        .CE(\rec_reg[11][14]_0 ),
        .D(r_new),
        .Q(\rec_reg[11]_11 [14]),
        .R(1'b0));
  FDRE \rec_reg[11][1] 
       (.C(clk),
        .CE(\rec_reg[11][14]_0 ),
        .D(D[1]),
        .Q(\rec_reg[11]_11 [1]),
        .R(1'b0));
  FDRE \rec_reg[11][2] 
       (.C(clk),
        .CE(\rec_reg[11][14]_0 ),
        .D(D[2]),
        .Q(\rec_reg[11]_11 [2]),
        .R(1'b0));
  FDRE \rec_reg[11][3] 
       (.C(clk),
        .CE(\rec_reg[11][14]_0 ),
        .D(D[3]),
        .Q(\rec_reg[11]_11 [3]),
        .R(1'b0));
  FDRE \rec_reg[11][4] 
       (.C(clk),
        .CE(\rec_reg[11][14]_0 ),
        .D(D[4]),
        .Q(\rec_reg[11]_11 [4]),
        .R(1'b0));
  FDRE \rec_reg[11][5] 
       (.C(clk),
        .CE(\rec_reg[11][14]_0 ),
        .D(D[5]),
        .Q(\rec_reg[11]_11 [5]),
        .R(1'b0));
  FDRE \rec_reg[11][6] 
       (.C(clk),
        .CE(\rec_reg[11][14]_0 ),
        .D(D[6]),
        .Q(\rec_reg[11]_11 [6]),
        .R(1'b0));
  FDRE \rec_reg[11][7] 
       (.C(clk),
        .CE(\rec_reg[11][14]_0 ),
        .D(D[7]),
        .Q(\rec_reg[11]_11 [7]),
        .R(1'b0));
  FDRE \rec_reg[11][8] 
       (.C(clk),
        .CE(\rec_reg[11][14]_0 ),
        .D(D[8]),
        .Q(\rec_reg[11]_11 [8]),
        .R(1'b0));
  FDRE \rec_reg[11][9] 
       (.C(clk),
        .CE(\rec_reg[11][14]_0 ),
        .D(D[9]),
        .Q(\rec_reg[11]_11 [9]),
        .R(1'b0));
  FDRE \rec_reg[12][0] 
       (.C(clk),
        .CE(\rec_reg[12][0]_0 ),
        .D(D[0]),
        .Q(\rec_reg[12]_12 [0]),
        .R(1'b0));
  FDRE \rec_reg[12][10] 
       (.C(clk),
        .CE(\rec_reg[12][0]_0 ),
        .D(D[10]),
        .Q(\rec_reg[12]_12 [10]),
        .R(1'b0));
  FDRE \rec_reg[12][11] 
       (.C(clk),
        .CE(\rec_reg[12][0]_0 ),
        .D(D[11]),
        .Q(\rec_reg[12]_12 [11]),
        .R(1'b0));
  FDRE \rec_reg[12][12] 
       (.C(clk),
        .CE(\rec_reg[12][0]_0 ),
        .D(D[12]),
        .Q(\rec_reg[12]_12 [12]),
        .R(1'b0));
  FDRE \rec_reg[12][13] 
       (.C(clk),
        .CE(\rec_reg[12][0]_0 ),
        .D(D[13]),
        .Q(\rec_reg[12]_12 [13]),
        .R(1'b0));
  FDRE \rec_reg[12][14] 
       (.C(clk),
        .CE(\rec_reg[12][0]_0 ),
        .D(r_new),
        .Q(\rec_reg[12]_12 [14]),
        .R(1'b0));
  FDRE \rec_reg[12][1] 
       (.C(clk),
        .CE(\rec_reg[12][0]_0 ),
        .D(D[1]),
        .Q(\rec_reg[12]_12 [1]),
        .R(1'b0));
  FDRE \rec_reg[12][2] 
       (.C(clk),
        .CE(\rec_reg[12][0]_0 ),
        .D(D[2]),
        .Q(\rec_reg[12]_12 [2]),
        .R(1'b0));
  FDRE \rec_reg[12][3] 
       (.C(clk),
        .CE(\rec_reg[12][0]_0 ),
        .D(D[3]),
        .Q(\rec_reg[12]_12 [3]),
        .R(1'b0));
  FDRE \rec_reg[12][4] 
       (.C(clk),
        .CE(\rec_reg[12][0]_0 ),
        .D(D[4]),
        .Q(\rec_reg[12]_12 [4]),
        .R(1'b0));
  FDRE \rec_reg[12][5] 
       (.C(clk),
        .CE(\rec_reg[12][0]_0 ),
        .D(D[5]),
        .Q(\rec_reg[12]_12 [5]),
        .R(1'b0));
  FDRE \rec_reg[12][6] 
       (.C(clk),
        .CE(\rec_reg[12][0]_0 ),
        .D(D[6]),
        .Q(\rec_reg[12]_12 [6]),
        .R(1'b0));
  FDRE \rec_reg[12][7] 
       (.C(clk),
        .CE(\rec_reg[12][0]_0 ),
        .D(D[7]),
        .Q(\rec_reg[12]_12 [7]),
        .R(1'b0));
  FDRE \rec_reg[12][8] 
       (.C(clk),
        .CE(\rec_reg[12][0]_0 ),
        .D(D[8]),
        .Q(\rec_reg[12]_12 [8]),
        .R(1'b0));
  FDRE \rec_reg[12][9] 
       (.C(clk),
        .CE(\rec_reg[12][0]_0 ),
        .D(D[9]),
        .Q(\rec_reg[12]_12 [9]),
        .R(1'b0));
  FDRE \rec_reg[13][0] 
       (.C(clk),
        .CE(\rec_reg[13][0]_0 ),
        .D(D[0]),
        .Q(\rec_reg[13]_13 [0]),
        .R(1'b0));
  FDRE \rec_reg[13][10] 
       (.C(clk),
        .CE(\rec_reg[13][0]_0 ),
        .D(D[10]),
        .Q(\rec_reg[13]_13 [10]),
        .R(1'b0));
  FDRE \rec_reg[13][11] 
       (.C(clk),
        .CE(\rec_reg[13][0]_0 ),
        .D(D[11]),
        .Q(\rec_reg[13]_13 [11]),
        .R(1'b0));
  FDRE \rec_reg[13][12] 
       (.C(clk),
        .CE(\rec_reg[13][0]_0 ),
        .D(D[12]),
        .Q(\rec_reg[13]_13 [12]),
        .R(1'b0));
  FDRE \rec_reg[13][13] 
       (.C(clk),
        .CE(\rec_reg[13][0]_0 ),
        .D(D[13]),
        .Q(\rec_reg[13]_13 [13]),
        .R(1'b0));
  FDRE \rec_reg[13][14] 
       (.C(clk),
        .CE(\rec_reg[13][0]_0 ),
        .D(r_new),
        .Q(\rec_reg[13]_13 [14]),
        .R(1'b0));
  FDRE \rec_reg[13][1] 
       (.C(clk),
        .CE(\rec_reg[13][0]_0 ),
        .D(D[1]),
        .Q(\rec_reg[13]_13 [1]),
        .R(1'b0));
  FDRE \rec_reg[13][2] 
       (.C(clk),
        .CE(\rec_reg[13][0]_0 ),
        .D(D[2]),
        .Q(\rec_reg[13]_13 [2]),
        .R(1'b0));
  FDRE \rec_reg[13][3] 
       (.C(clk),
        .CE(\rec_reg[13][0]_0 ),
        .D(D[3]),
        .Q(\rec_reg[13]_13 [3]),
        .R(1'b0));
  FDRE \rec_reg[13][4] 
       (.C(clk),
        .CE(\rec_reg[13][0]_0 ),
        .D(D[4]),
        .Q(\rec_reg[13]_13 [4]),
        .R(1'b0));
  FDRE \rec_reg[13][5] 
       (.C(clk),
        .CE(\rec_reg[13][0]_0 ),
        .D(D[5]),
        .Q(\rec_reg[13]_13 [5]),
        .R(1'b0));
  FDRE \rec_reg[13][6] 
       (.C(clk),
        .CE(\rec_reg[13][0]_0 ),
        .D(D[6]),
        .Q(\rec_reg[13]_13 [6]),
        .R(1'b0));
  FDRE \rec_reg[13][7] 
       (.C(clk),
        .CE(\rec_reg[13][0]_0 ),
        .D(D[7]),
        .Q(\rec_reg[13]_13 [7]),
        .R(1'b0));
  FDRE \rec_reg[13][8] 
       (.C(clk),
        .CE(\rec_reg[13][0]_0 ),
        .D(D[8]),
        .Q(\rec_reg[13]_13 [8]),
        .R(1'b0));
  FDRE \rec_reg[13][9] 
       (.C(clk),
        .CE(\rec_reg[13][0]_0 ),
        .D(D[9]),
        .Q(\rec_reg[13]_13 [9]),
        .R(1'b0));
  FDRE \rec_reg[14][0] 
       (.C(clk),
        .CE(\rec_reg[14][0]_0 ),
        .D(D[0]),
        .Q(\rec_reg[14]_14 [0]),
        .R(1'b0));
  FDRE \rec_reg[14][10] 
       (.C(clk),
        .CE(\rec_reg[14][0]_0 ),
        .D(D[10]),
        .Q(\rec_reg[14]_14 [10]),
        .R(1'b0));
  FDRE \rec_reg[14][11] 
       (.C(clk),
        .CE(\rec_reg[14][0]_0 ),
        .D(D[11]),
        .Q(\rec_reg[14]_14 [11]),
        .R(1'b0));
  FDRE \rec_reg[14][12] 
       (.C(clk),
        .CE(\rec_reg[14][0]_0 ),
        .D(D[12]),
        .Q(\rec_reg[14]_14 [12]),
        .R(1'b0));
  FDRE \rec_reg[14][13] 
       (.C(clk),
        .CE(\rec_reg[14][0]_0 ),
        .D(D[13]),
        .Q(\rec_reg[14]_14 [13]),
        .R(1'b0));
  FDRE \rec_reg[14][14] 
       (.C(clk),
        .CE(\rec_reg[14][0]_0 ),
        .D(r_new),
        .Q(\rec_reg[14]_14 [14]),
        .R(1'b0));
  FDRE \rec_reg[14][1] 
       (.C(clk),
        .CE(\rec_reg[14][0]_0 ),
        .D(D[1]),
        .Q(\rec_reg[14]_14 [1]),
        .R(1'b0));
  FDRE \rec_reg[14][2] 
       (.C(clk),
        .CE(\rec_reg[14][0]_0 ),
        .D(D[2]),
        .Q(\rec_reg[14]_14 [2]),
        .R(1'b0));
  FDRE \rec_reg[14][3] 
       (.C(clk),
        .CE(\rec_reg[14][0]_0 ),
        .D(D[3]),
        .Q(\rec_reg[14]_14 [3]),
        .R(1'b0));
  FDRE \rec_reg[14][4] 
       (.C(clk),
        .CE(\rec_reg[14][0]_0 ),
        .D(D[4]),
        .Q(\rec_reg[14]_14 [4]),
        .R(1'b0));
  FDRE \rec_reg[14][5] 
       (.C(clk),
        .CE(\rec_reg[14][0]_0 ),
        .D(D[5]),
        .Q(\rec_reg[14]_14 [5]),
        .R(1'b0));
  FDRE \rec_reg[14][6] 
       (.C(clk),
        .CE(\rec_reg[14][0]_0 ),
        .D(D[6]),
        .Q(\rec_reg[14]_14 [6]),
        .R(1'b0));
  FDRE \rec_reg[14][7] 
       (.C(clk),
        .CE(\rec_reg[14][0]_0 ),
        .D(D[7]),
        .Q(\rec_reg[14]_14 [7]),
        .R(1'b0));
  FDRE \rec_reg[14][8] 
       (.C(clk),
        .CE(\rec_reg[14][0]_0 ),
        .D(D[8]),
        .Q(\rec_reg[14]_14 [8]),
        .R(1'b0));
  FDRE \rec_reg[14][9] 
       (.C(clk),
        .CE(\rec_reg[14][0]_0 ),
        .D(D[9]),
        .Q(\rec_reg[14]_14 [9]),
        .R(1'b0));
  FDRE \rec_reg[15][0] 
       (.C(clk),
        .CE(\rec_reg[15][14]_2 ),
        .D(D[0]),
        .Q(\rec_reg[15][14]_0 [0]),
        .R(1'b0));
  FDRE \rec_reg[15][10] 
       (.C(clk),
        .CE(\rec_reg[15][14]_2 ),
        .D(D[10]),
        .Q(\rec_reg[15][14]_0 [10]),
        .R(1'b0));
  FDRE \rec_reg[15][11] 
       (.C(clk),
        .CE(\rec_reg[15][14]_2 ),
        .D(D[11]),
        .Q(\rec_reg[15][14]_0 [11]),
        .R(1'b0));
  FDRE \rec_reg[15][12] 
       (.C(clk),
        .CE(\rec_reg[15][14]_2 ),
        .D(D[12]),
        .Q(\rec_reg[15][14]_0 [12]),
        .R(1'b0));
  FDRE \rec_reg[15][13] 
       (.C(clk),
        .CE(\rec_reg[15][14]_2 ),
        .D(D[13]),
        .Q(\rec_reg[15][14]_0 [13]),
        .R(1'b0));
  FDRE \rec_reg[15][14] 
       (.C(clk),
        .CE(\rec_reg[15][14]_2 ),
        .D(r_new),
        .Q(\rec_reg[15][14]_0 [14]),
        .R(1'b0));
  FDRE \rec_reg[15][1] 
       (.C(clk),
        .CE(\rec_reg[15][14]_2 ),
        .D(D[1]),
        .Q(\rec_reg[15][14]_0 [1]),
        .R(1'b0));
  FDRE \rec_reg[15][2] 
       (.C(clk),
        .CE(\rec_reg[15][14]_2 ),
        .D(D[2]),
        .Q(\rec_reg[15][14]_0 [2]),
        .R(1'b0));
  FDRE \rec_reg[15][3] 
       (.C(clk),
        .CE(\rec_reg[15][14]_2 ),
        .D(D[3]),
        .Q(\rec_reg[15][14]_0 [3]),
        .R(1'b0));
  FDRE \rec_reg[15][4] 
       (.C(clk),
        .CE(\rec_reg[15][14]_2 ),
        .D(D[4]),
        .Q(\rec_reg[15][14]_0 [4]),
        .R(1'b0));
  FDRE \rec_reg[15][5] 
       (.C(clk),
        .CE(\rec_reg[15][14]_2 ),
        .D(D[5]),
        .Q(\rec_reg[15][14]_0 [5]),
        .R(1'b0));
  FDRE \rec_reg[15][6] 
       (.C(clk),
        .CE(\rec_reg[15][14]_2 ),
        .D(D[6]),
        .Q(\rec_reg[15][14]_0 [6]),
        .R(1'b0));
  FDRE \rec_reg[15][7] 
       (.C(clk),
        .CE(\rec_reg[15][14]_2 ),
        .D(D[7]),
        .Q(\rec_reg[15][14]_0 [7]),
        .R(1'b0));
  FDRE \rec_reg[15][8] 
       (.C(clk),
        .CE(\rec_reg[15][14]_2 ),
        .D(D[8]),
        .Q(\rec_reg[15][14]_0 [8]),
        .R(1'b0));
  FDRE \rec_reg[15][9] 
       (.C(clk),
        .CE(\rec_reg[15][14]_2 ),
        .D(D[9]),
        .Q(\rec_reg[15][14]_0 [9]),
        .R(1'b0));
  FDRE \rec_reg[1][0] 
       (.C(clk),
        .CE(\rec_reg[1][0]_0 ),
        .D(D[0]),
        .Q(\rec_reg[1]_1 [0]),
        .R(1'b0));
  FDRE \rec_reg[1][10] 
       (.C(clk),
        .CE(\rec_reg[1][0]_0 ),
        .D(D[10]),
        .Q(\rec_reg[1]_1 [10]),
        .R(1'b0));
  FDRE \rec_reg[1][11] 
       (.C(clk),
        .CE(\rec_reg[1][0]_0 ),
        .D(D[11]),
        .Q(\rec_reg[1]_1 [11]),
        .R(1'b0));
  FDRE \rec_reg[1][12] 
       (.C(clk),
        .CE(\rec_reg[1][0]_0 ),
        .D(D[12]),
        .Q(\rec_reg[1]_1 [12]),
        .R(1'b0));
  FDRE \rec_reg[1][13] 
       (.C(clk),
        .CE(\rec_reg[1][0]_0 ),
        .D(D[13]),
        .Q(\rec_reg[1]_1 [13]),
        .R(1'b0));
  FDRE \rec_reg[1][14] 
       (.C(clk),
        .CE(\rec_reg[1][0]_0 ),
        .D(r_new),
        .Q(\rec_reg[1]_1 [14]),
        .R(1'b0));
  FDRE \rec_reg[1][1] 
       (.C(clk),
        .CE(\rec_reg[1][0]_0 ),
        .D(D[1]),
        .Q(\rec_reg[1]_1 [1]),
        .R(1'b0));
  FDRE \rec_reg[1][2] 
       (.C(clk),
        .CE(\rec_reg[1][0]_0 ),
        .D(D[2]),
        .Q(\rec_reg[1]_1 [2]),
        .R(1'b0));
  FDRE \rec_reg[1][3] 
       (.C(clk),
        .CE(\rec_reg[1][0]_0 ),
        .D(D[3]),
        .Q(\rec_reg[1]_1 [3]),
        .R(1'b0));
  FDRE \rec_reg[1][4] 
       (.C(clk),
        .CE(\rec_reg[1][0]_0 ),
        .D(D[4]),
        .Q(\rec_reg[1]_1 [4]),
        .R(1'b0));
  FDRE \rec_reg[1][5] 
       (.C(clk),
        .CE(\rec_reg[1][0]_0 ),
        .D(D[5]),
        .Q(\rec_reg[1]_1 [5]),
        .R(1'b0));
  FDRE \rec_reg[1][6] 
       (.C(clk),
        .CE(\rec_reg[1][0]_0 ),
        .D(D[6]),
        .Q(\rec_reg[1]_1 [6]),
        .R(1'b0));
  FDRE \rec_reg[1][7] 
       (.C(clk),
        .CE(\rec_reg[1][0]_0 ),
        .D(D[7]),
        .Q(\rec_reg[1]_1 [7]),
        .R(1'b0));
  FDRE \rec_reg[1][8] 
       (.C(clk),
        .CE(\rec_reg[1][0]_0 ),
        .D(D[8]),
        .Q(\rec_reg[1]_1 [8]),
        .R(1'b0));
  FDRE \rec_reg[1][9] 
       (.C(clk),
        .CE(\rec_reg[1][0]_0 ),
        .D(D[9]),
        .Q(\rec_reg[1]_1 [9]),
        .R(1'b0));
  FDRE \rec_reg[2][0] 
       (.C(clk),
        .CE(\rec_reg[2][0]_0 ),
        .D(D[0]),
        .Q(\rec_reg[2]_2 [0]),
        .R(1'b0));
  FDRE \rec_reg[2][10] 
       (.C(clk),
        .CE(\rec_reg[2][0]_0 ),
        .D(D[10]),
        .Q(\rec_reg[2]_2 [10]),
        .R(1'b0));
  FDRE \rec_reg[2][11] 
       (.C(clk),
        .CE(\rec_reg[2][0]_0 ),
        .D(D[11]),
        .Q(\rec_reg[2]_2 [11]),
        .R(1'b0));
  FDRE \rec_reg[2][12] 
       (.C(clk),
        .CE(\rec_reg[2][0]_0 ),
        .D(D[12]),
        .Q(\rec_reg[2]_2 [12]),
        .R(1'b0));
  FDRE \rec_reg[2][13] 
       (.C(clk),
        .CE(\rec_reg[2][0]_0 ),
        .D(D[13]),
        .Q(\rec_reg[2]_2 [13]),
        .R(1'b0));
  FDRE \rec_reg[2][14] 
       (.C(clk),
        .CE(\rec_reg[2][0]_0 ),
        .D(r_new),
        .Q(\rec_reg[2]_2 [14]),
        .R(1'b0));
  FDRE \rec_reg[2][1] 
       (.C(clk),
        .CE(\rec_reg[2][0]_0 ),
        .D(D[1]),
        .Q(\rec_reg[2]_2 [1]),
        .R(1'b0));
  FDRE \rec_reg[2][2] 
       (.C(clk),
        .CE(\rec_reg[2][0]_0 ),
        .D(D[2]),
        .Q(\rec_reg[2]_2 [2]),
        .R(1'b0));
  FDRE \rec_reg[2][3] 
       (.C(clk),
        .CE(\rec_reg[2][0]_0 ),
        .D(D[3]),
        .Q(\rec_reg[2]_2 [3]),
        .R(1'b0));
  FDRE \rec_reg[2][4] 
       (.C(clk),
        .CE(\rec_reg[2][0]_0 ),
        .D(D[4]),
        .Q(\rec_reg[2]_2 [4]),
        .R(1'b0));
  FDRE \rec_reg[2][5] 
       (.C(clk),
        .CE(\rec_reg[2][0]_0 ),
        .D(D[5]),
        .Q(\rec_reg[2]_2 [5]),
        .R(1'b0));
  FDRE \rec_reg[2][6] 
       (.C(clk),
        .CE(\rec_reg[2][0]_0 ),
        .D(D[6]),
        .Q(\rec_reg[2]_2 [6]),
        .R(1'b0));
  FDRE \rec_reg[2][7] 
       (.C(clk),
        .CE(\rec_reg[2][0]_0 ),
        .D(D[7]),
        .Q(\rec_reg[2]_2 [7]),
        .R(1'b0));
  FDRE \rec_reg[2][8] 
       (.C(clk),
        .CE(\rec_reg[2][0]_0 ),
        .D(D[8]),
        .Q(\rec_reg[2]_2 [8]),
        .R(1'b0));
  FDRE \rec_reg[2][9] 
       (.C(clk),
        .CE(\rec_reg[2][0]_0 ),
        .D(D[9]),
        .Q(\rec_reg[2]_2 [9]),
        .R(1'b0));
  FDRE \rec_reg[3][0] 
       (.C(clk),
        .CE(\rec_reg[3][14]_0 ),
        .D(D[0]),
        .Q(\rec_reg[3]_3 [0]),
        .R(1'b0));
  FDRE \rec_reg[3][10] 
       (.C(clk),
        .CE(\rec_reg[3][14]_0 ),
        .D(D[10]),
        .Q(\rec_reg[3]_3 [10]),
        .R(1'b0));
  FDRE \rec_reg[3][11] 
       (.C(clk),
        .CE(\rec_reg[3][14]_0 ),
        .D(D[11]),
        .Q(\rec_reg[3]_3 [11]),
        .R(1'b0));
  FDRE \rec_reg[3][12] 
       (.C(clk),
        .CE(\rec_reg[3][14]_0 ),
        .D(D[12]),
        .Q(\rec_reg[3]_3 [12]),
        .R(1'b0));
  FDRE \rec_reg[3][13] 
       (.C(clk),
        .CE(\rec_reg[3][14]_0 ),
        .D(D[13]),
        .Q(\rec_reg[3]_3 [13]),
        .R(1'b0));
  FDRE \rec_reg[3][14] 
       (.C(clk),
        .CE(\rec_reg[3][14]_0 ),
        .D(r_new),
        .Q(\rec_reg[3]_3 [14]),
        .R(1'b0));
  FDRE \rec_reg[3][1] 
       (.C(clk),
        .CE(\rec_reg[3][14]_0 ),
        .D(D[1]),
        .Q(\rec_reg[3]_3 [1]),
        .R(1'b0));
  FDRE \rec_reg[3][2] 
       (.C(clk),
        .CE(\rec_reg[3][14]_0 ),
        .D(D[2]),
        .Q(\rec_reg[3]_3 [2]),
        .R(1'b0));
  FDRE \rec_reg[3][3] 
       (.C(clk),
        .CE(\rec_reg[3][14]_0 ),
        .D(D[3]),
        .Q(\rec_reg[3]_3 [3]),
        .R(1'b0));
  FDRE \rec_reg[3][4] 
       (.C(clk),
        .CE(\rec_reg[3][14]_0 ),
        .D(D[4]),
        .Q(\rec_reg[3]_3 [4]),
        .R(1'b0));
  FDRE \rec_reg[3][5] 
       (.C(clk),
        .CE(\rec_reg[3][14]_0 ),
        .D(D[5]),
        .Q(\rec_reg[3]_3 [5]),
        .R(1'b0));
  FDRE \rec_reg[3][6] 
       (.C(clk),
        .CE(\rec_reg[3][14]_0 ),
        .D(D[6]),
        .Q(\rec_reg[3]_3 [6]),
        .R(1'b0));
  FDRE \rec_reg[3][7] 
       (.C(clk),
        .CE(\rec_reg[3][14]_0 ),
        .D(D[7]),
        .Q(\rec_reg[3]_3 [7]),
        .R(1'b0));
  FDRE \rec_reg[3][8] 
       (.C(clk),
        .CE(\rec_reg[3][14]_0 ),
        .D(D[8]),
        .Q(\rec_reg[3]_3 [8]),
        .R(1'b0));
  FDRE \rec_reg[3][9] 
       (.C(clk),
        .CE(\rec_reg[3][14]_0 ),
        .D(D[9]),
        .Q(\rec_reg[3]_3 [9]),
        .R(1'b0));
  FDRE \rec_reg[4][0] 
       (.C(clk),
        .CE(\rec_reg[4][14]_0 ),
        .D(D[0]),
        .Q(\rec_reg[4]_4 [0]),
        .R(1'b0));
  FDRE \rec_reg[4][10] 
       (.C(clk),
        .CE(\rec_reg[4][14]_0 ),
        .D(D[10]),
        .Q(\rec_reg[4]_4 [10]),
        .R(1'b0));
  FDRE \rec_reg[4][11] 
       (.C(clk),
        .CE(\rec_reg[4][14]_0 ),
        .D(D[11]),
        .Q(\rec_reg[4]_4 [11]),
        .R(1'b0));
  FDRE \rec_reg[4][12] 
       (.C(clk),
        .CE(\rec_reg[4][14]_0 ),
        .D(D[12]),
        .Q(\rec_reg[4]_4 [12]),
        .R(1'b0));
  FDRE \rec_reg[4][13] 
       (.C(clk),
        .CE(\rec_reg[4][14]_0 ),
        .D(D[13]),
        .Q(\rec_reg[4]_4 [13]),
        .R(1'b0));
  FDRE \rec_reg[4][14] 
       (.C(clk),
        .CE(\rec_reg[4][14]_0 ),
        .D(r_new),
        .Q(\rec_reg[4]_4 [14]),
        .R(1'b0));
  FDRE \rec_reg[4][1] 
       (.C(clk),
        .CE(\rec_reg[4][14]_0 ),
        .D(D[1]),
        .Q(\rec_reg[4]_4 [1]),
        .R(1'b0));
  FDRE \rec_reg[4][2] 
       (.C(clk),
        .CE(\rec_reg[4][14]_0 ),
        .D(D[2]),
        .Q(\rec_reg[4]_4 [2]),
        .R(1'b0));
  FDRE \rec_reg[4][3] 
       (.C(clk),
        .CE(\rec_reg[4][14]_0 ),
        .D(D[3]),
        .Q(\rec_reg[4]_4 [3]),
        .R(1'b0));
  FDRE \rec_reg[4][4] 
       (.C(clk),
        .CE(\rec_reg[4][14]_0 ),
        .D(D[4]),
        .Q(\rec_reg[4]_4 [4]),
        .R(1'b0));
  FDRE \rec_reg[4][5] 
       (.C(clk),
        .CE(\rec_reg[4][14]_0 ),
        .D(D[5]),
        .Q(\rec_reg[4]_4 [5]),
        .R(1'b0));
  FDRE \rec_reg[4][6] 
       (.C(clk),
        .CE(\rec_reg[4][14]_0 ),
        .D(D[6]),
        .Q(\rec_reg[4]_4 [6]),
        .R(1'b0));
  FDRE \rec_reg[4][7] 
       (.C(clk),
        .CE(\rec_reg[4][14]_0 ),
        .D(D[7]),
        .Q(\rec_reg[4]_4 [7]),
        .R(1'b0));
  FDRE \rec_reg[4][8] 
       (.C(clk),
        .CE(\rec_reg[4][14]_0 ),
        .D(D[8]),
        .Q(\rec_reg[4]_4 [8]),
        .R(1'b0));
  FDRE \rec_reg[4][9] 
       (.C(clk),
        .CE(\rec_reg[4][14]_0 ),
        .D(D[9]),
        .Q(\rec_reg[4]_4 [9]),
        .R(1'b0));
  FDRE \rec_reg[5][0] 
       (.C(clk),
        .CE(\rec_reg[5][14]_0 ),
        .D(D[0]),
        .Q(\rec_reg[5]_5 [0]),
        .R(1'b0));
  FDRE \rec_reg[5][10] 
       (.C(clk),
        .CE(\rec_reg[5][14]_0 ),
        .D(D[10]),
        .Q(\rec_reg[5]_5 [10]),
        .R(1'b0));
  FDRE \rec_reg[5][11] 
       (.C(clk),
        .CE(\rec_reg[5][14]_0 ),
        .D(D[11]),
        .Q(\rec_reg[5]_5 [11]),
        .R(1'b0));
  FDRE \rec_reg[5][12] 
       (.C(clk),
        .CE(\rec_reg[5][14]_0 ),
        .D(D[12]),
        .Q(\rec_reg[5]_5 [12]),
        .R(1'b0));
  FDRE \rec_reg[5][13] 
       (.C(clk),
        .CE(\rec_reg[5][14]_0 ),
        .D(D[13]),
        .Q(\rec_reg[5]_5 [13]),
        .R(1'b0));
  FDRE \rec_reg[5][14] 
       (.C(clk),
        .CE(\rec_reg[5][14]_0 ),
        .D(r_new),
        .Q(\rec_reg[5]_5 [14]),
        .R(1'b0));
  FDRE \rec_reg[5][1] 
       (.C(clk),
        .CE(\rec_reg[5][14]_0 ),
        .D(D[1]),
        .Q(\rec_reg[5]_5 [1]),
        .R(1'b0));
  FDRE \rec_reg[5][2] 
       (.C(clk),
        .CE(\rec_reg[5][14]_0 ),
        .D(D[2]),
        .Q(\rec_reg[5]_5 [2]),
        .R(1'b0));
  FDRE \rec_reg[5][3] 
       (.C(clk),
        .CE(\rec_reg[5][14]_0 ),
        .D(D[3]),
        .Q(\rec_reg[5]_5 [3]),
        .R(1'b0));
  FDRE \rec_reg[5][4] 
       (.C(clk),
        .CE(\rec_reg[5][14]_0 ),
        .D(D[4]),
        .Q(\rec_reg[5]_5 [4]),
        .R(1'b0));
  FDRE \rec_reg[5][5] 
       (.C(clk),
        .CE(\rec_reg[5][14]_0 ),
        .D(D[5]),
        .Q(\rec_reg[5]_5 [5]),
        .R(1'b0));
  FDRE \rec_reg[5][6] 
       (.C(clk),
        .CE(\rec_reg[5][14]_0 ),
        .D(D[6]),
        .Q(\rec_reg[5]_5 [6]),
        .R(1'b0));
  FDRE \rec_reg[5][7] 
       (.C(clk),
        .CE(\rec_reg[5][14]_0 ),
        .D(D[7]),
        .Q(\rec_reg[5]_5 [7]),
        .R(1'b0));
  FDRE \rec_reg[5][8] 
       (.C(clk),
        .CE(\rec_reg[5][14]_0 ),
        .D(D[8]),
        .Q(\rec_reg[5]_5 [8]),
        .R(1'b0));
  FDRE \rec_reg[5][9] 
       (.C(clk),
        .CE(\rec_reg[5][14]_0 ),
        .D(D[9]),
        .Q(\rec_reg[5]_5 [9]),
        .R(1'b0));
  FDRE \rec_reg[6][0] 
       (.C(clk),
        .CE(\rec_reg[6][14]_0 ),
        .D(D[0]),
        .Q(\rec_reg[6]_6 [0]),
        .R(1'b0));
  FDRE \rec_reg[6][10] 
       (.C(clk),
        .CE(\rec_reg[6][14]_0 ),
        .D(D[10]),
        .Q(\rec_reg[6]_6 [10]),
        .R(1'b0));
  FDRE \rec_reg[6][11] 
       (.C(clk),
        .CE(\rec_reg[6][14]_0 ),
        .D(D[11]),
        .Q(\rec_reg[6]_6 [11]),
        .R(1'b0));
  FDRE \rec_reg[6][12] 
       (.C(clk),
        .CE(\rec_reg[6][14]_0 ),
        .D(D[12]),
        .Q(\rec_reg[6]_6 [12]),
        .R(1'b0));
  FDRE \rec_reg[6][13] 
       (.C(clk),
        .CE(\rec_reg[6][14]_0 ),
        .D(D[13]),
        .Q(\rec_reg[6]_6 [13]),
        .R(1'b0));
  FDRE \rec_reg[6][14] 
       (.C(clk),
        .CE(\rec_reg[6][14]_0 ),
        .D(r_new),
        .Q(\rec_reg[6]_6 [14]),
        .R(1'b0));
  FDRE \rec_reg[6][1] 
       (.C(clk),
        .CE(\rec_reg[6][14]_0 ),
        .D(D[1]),
        .Q(\rec_reg[6]_6 [1]),
        .R(1'b0));
  FDRE \rec_reg[6][2] 
       (.C(clk),
        .CE(\rec_reg[6][14]_0 ),
        .D(D[2]),
        .Q(\rec_reg[6]_6 [2]),
        .R(1'b0));
  FDRE \rec_reg[6][3] 
       (.C(clk),
        .CE(\rec_reg[6][14]_0 ),
        .D(D[3]),
        .Q(\rec_reg[6]_6 [3]),
        .R(1'b0));
  FDRE \rec_reg[6][4] 
       (.C(clk),
        .CE(\rec_reg[6][14]_0 ),
        .D(D[4]),
        .Q(\rec_reg[6]_6 [4]),
        .R(1'b0));
  FDRE \rec_reg[6][5] 
       (.C(clk),
        .CE(\rec_reg[6][14]_0 ),
        .D(D[5]),
        .Q(\rec_reg[6]_6 [5]),
        .R(1'b0));
  FDRE \rec_reg[6][6] 
       (.C(clk),
        .CE(\rec_reg[6][14]_0 ),
        .D(D[6]),
        .Q(\rec_reg[6]_6 [6]),
        .R(1'b0));
  FDRE \rec_reg[6][7] 
       (.C(clk),
        .CE(\rec_reg[6][14]_0 ),
        .D(D[7]),
        .Q(\rec_reg[6]_6 [7]),
        .R(1'b0));
  FDRE \rec_reg[6][8] 
       (.C(clk),
        .CE(\rec_reg[6][14]_0 ),
        .D(D[8]),
        .Q(\rec_reg[6]_6 [8]),
        .R(1'b0));
  FDRE \rec_reg[6][9] 
       (.C(clk),
        .CE(\rec_reg[6][14]_0 ),
        .D(D[9]),
        .Q(\rec_reg[6]_6 [9]),
        .R(1'b0));
  FDRE \rec_reg[7][0] 
       (.C(clk),
        .CE(\rec_reg[7][14]_1 ),
        .D(D[0]),
        .Q(\rec_reg[7]_7 [0]),
        .R(1'b0));
  FDRE \rec_reg[7][10] 
       (.C(clk),
        .CE(\rec_reg[7][14]_1 ),
        .D(D[10]),
        .Q(\rec_reg[7]_7 [10]),
        .R(1'b0));
  FDRE \rec_reg[7][11] 
       (.C(clk),
        .CE(\rec_reg[7][14]_1 ),
        .D(D[11]),
        .Q(\rec_reg[7]_7 [11]),
        .R(1'b0));
  FDRE \rec_reg[7][12] 
       (.C(clk),
        .CE(\rec_reg[7][14]_1 ),
        .D(D[12]),
        .Q(\rec_reg[7]_7 [12]),
        .R(1'b0));
  FDRE \rec_reg[7][13] 
       (.C(clk),
        .CE(\rec_reg[7][14]_1 ),
        .D(D[13]),
        .Q(\rec_reg[7]_7 [13]),
        .R(1'b0));
  FDRE \rec_reg[7][14] 
       (.C(clk),
        .CE(\rec_reg[7][14]_1 ),
        .D(r_new),
        .Q(\rec_reg[7]_7 [14]),
        .R(1'b0));
  FDRE \rec_reg[7][1] 
       (.C(clk),
        .CE(\rec_reg[7][14]_1 ),
        .D(D[1]),
        .Q(\rec_reg[7]_7 [1]),
        .R(1'b0));
  FDRE \rec_reg[7][2] 
       (.C(clk),
        .CE(\rec_reg[7][14]_1 ),
        .D(D[2]),
        .Q(\rec_reg[7]_7 [2]),
        .R(1'b0));
  FDRE \rec_reg[7][3] 
       (.C(clk),
        .CE(\rec_reg[7][14]_1 ),
        .D(D[3]),
        .Q(\rec_reg[7]_7 [3]),
        .R(1'b0));
  FDRE \rec_reg[7][4] 
       (.C(clk),
        .CE(\rec_reg[7][14]_1 ),
        .D(D[4]),
        .Q(\rec_reg[7]_7 [4]),
        .R(1'b0));
  FDRE \rec_reg[7][5] 
       (.C(clk),
        .CE(\rec_reg[7][14]_1 ),
        .D(D[5]),
        .Q(\rec_reg[7]_7 [5]),
        .R(1'b0));
  FDRE \rec_reg[7][6] 
       (.C(clk),
        .CE(\rec_reg[7][14]_1 ),
        .D(D[6]),
        .Q(\rec_reg[7]_7 [6]),
        .R(1'b0));
  FDRE \rec_reg[7][7] 
       (.C(clk),
        .CE(\rec_reg[7][14]_1 ),
        .D(D[7]),
        .Q(\rec_reg[7]_7 [7]),
        .R(1'b0));
  FDRE \rec_reg[7][8] 
       (.C(clk),
        .CE(\rec_reg[7][14]_1 ),
        .D(D[8]),
        .Q(\rec_reg[7]_7 [8]),
        .R(1'b0));
  FDRE \rec_reg[7][9] 
       (.C(clk),
        .CE(\rec_reg[7][14]_1 ),
        .D(D[9]),
        .Q(\rec_reg[7]_7 [9]),
        .R(1'b0));
  FDRE \rec_reg[8][0] 
       (.C(clk),
        .CE(\rec_reg[8][14]_0 ),
        .D(D[0]),
        .Q(\rec_reg[8]_8 [0]),
        .R(1'b0));
  FDRE \rec_reg[8][10] 
       (.C(clk),
        .CE(\rec_reg[8][14]_0 ),
        .D(D[10]),
        .Q(\rec_reg[8]_8 [10]),
        .R(1'b0));
  FDRE \rec_reg[8][11] 
       (.C(clk),
        .CE(\rec_reg[8][14]_0 ),
        .D(D[11]),
        .Q(\rec_reg[8]_8 [11]),
        .R(1'b0));
  FDRE \rec_reg[8][12] 
       (.C(clk),
        .CE(\rec_reg[8][14]_0 ),
        .D(D[12]),
        .Q(\rec_reg[8]_8 [12]),
        .R(1'b0));
  FDRE \rec_reg[8][13] 
       (.C(clk),
        .CE(\rec_reg[8][14]_0 ),
        .D(D[13]),
        .Q(\rec_reg[8]_8 [13]),
        .R(1'b0));
  FDRE \rec_reg[8][14] 
       (.C(clk),
        .CE(\rec_reg[8][14]_0 ),
        .D(r_new),
        .Q(\rec_reg[8]_8 [14]),
        .R(1'b0));
  FDRE \rec_reg[8][1] 
       (.C(clk),
        .CE(\rec_reg[8][14]_0 ),
        .D(D[1]),
        .Q(\rec_reg[8]_8 [1]),
        .R(1'b0));
  FDRE \rec_reg[8][2] 
       (.C(clk),
        .CE(\rec_reg[8][14]_0 ),
        .D(D[2]),
        .Q(\rec_reg[8]_8 [2]),
        .R(1'b0));
  FDRE \rec_reg[8][3] 
       (.C(clk),
        .CE(\rec_reg[8][14]_0 ),
        .D(D[3]),
        .Q(\rec_reg[8]_8 [3]),
        .R(1'b0));
  FDRE \rec_reg[8][4] 
       (.C(clk),
        .CE(\rec_reg[8][14]_0 ),
        .D(D[4]),
        .Q(\rec_reg[8]_8 [4]),
        .R(1'b0));
  FDRE \rec_reg[8][5] 
       (.C(clk),
        .CE(\rec_reg[8][14]_0 ),
        .D(D[5]),
        .Q(\rec_reg[8]_8 [5]),
        .R(1'b0));
  FDRE \rec_reg[8][6] 
       (.C(clk),
        .CE(\rec_reg[8][14]_0 ),
        .D(D[6]),
        .Q(\rec_reg[8]_8 [6]),
        .R(1'b0));
  FDRE \rec_reg[8][7] 
       (.C(clk),
        .CE(\rec_reg[8][14]_0 ),
        .D(D[7]),
        .Q(\rec_reg[8]_8 [7]),
        .R(1'b0));
  FDRE \rec_reg[8][8] 
       (.C(clk),
        .CE(\rec_reg[8][14]_0 ),
        .D(D[8]),
        .Q(\rec_reg[8]_8 [8]),
        .R(1'b0));
  FDRE \rec_reg[8][9] 
       (.C(clk),
        .CE(\rec_reg[8][14]_0 ),
        .D(D[9]),
        .Q(\rec_reg[8]_8 [9]),
        .R(1'b0));
  FDRE \rec_reg[9][0] 
       (.C(clk),
        .CE(\rec_reg[9][14]_0 ),
        .D(D[0]),
        .Q(\rec_reg[9]_9 [0]),
        .R(1'b0));
  FDRE \rec_reg[9][10] 
       (.C(clk),
        .CE(\rec_reg[9][14]_0 ),
        .D(D[10]),
        .Q(\rec_reg[9]_9 [10]),
        .R(1'b0));
  FDRE \rec_reg[9][11] 
       (.C(clk),
        .CE(\rec_reg[9][14]_0 ),
        .D(D[11]),
        .Q(\rec_reg[9]_9 [11]),
        .R(1'b0));
  FDRE \rec_reg[9][12] 
       (.C(clk),
        .CE(\rec_reg[9][14]_0 ),
        .D(D[12]),
        .Q(\rec_reg[9]_9 [12]),
        .R(1'b0));
  FDRE \rec_reg[9][13] 
       (.C(clk),
        .CE(\rec_reg[9][14]_0 ),
        .D(D[13]),
        .Q(\rec_reg[9]_9 [13]),
        .R(1'b0));
  FDRE \rec_reg[9][14] 
       (.C(clk),
        .CE(\rec_reg[9][14]_0 ),
        .D(r_new),
        .Q(\rec_reg[9]_9 [14]),
        .R(1'b0));
  FDRE \rec_reg[9][1] 
       (.C(clk),
        .CE(\rec_reg[9][14]_0 ),
        .D(D[1]),
        .Q(\rec_reg[9]_9 [1]),
        .R(1'b0));
  FDRE \rec_reg[9][2] 
       (.C(clk),
        .CE(\rec_reg[9][14]_0 ),
        .D(D[2]),
        .Q(\rec_reg[9]_9 [2]),
        .R(1'b0));
  FDRE \rec_reg[9][3] 
       (.C(clk),
        .CE(\rec_reg[9][14]_0 ),
        .D(D[3]),
        .Q(\rec_reg[9]_9 [3]),
        .R(1'b0));
  FDRE \rec_reg[9][4] 
       (.C(clk),
        .CE(\rec_reg[9][14]_0 ),
        .D(D[4]),
        .Q(\rec_reg[9]_9 [4]),
        .R(1'b0));
  FDRE \rec_reg[9][5] 
       (.C(clk),
        .CE(\rec_reg[9][14]_0 ),
        .D(D[5]),
        .Q(\rec_reg[9]_9 [5]),
        .R(1'b0));
  FDRE \rec_reg[9][6] 
       (.C(clk),
        .CE(\rec_reg[9][14]_0 ),
        .D(D[6]),
        .Q(\rec_reg[9]_9 [6]),
        .R(1'b0));
  FDRE \rec_reg[9][7] 
       (.C(clk),
        .CE(\rec_reg[9][14]_0 ),
        .D(D[7]),
        .Q(\rec_reg[9]_9 [7]),
        .R(1'b0));
  FDRE \rec_reg[9][8] 
       (.C(clk),
        .CE(\rec_reg[9][14]_0 ),
        .D(D[8]),
        .Q(\rec_reg[9]_9 [8]),
        .R(1'b0));
  FDRE \rec_reg[9][9] 
       (.C(clk),
        .CE(\rec_reg[9][14]_0 ),
        .D(D[9]),
        .Q(\rec_reg[9]_9 [9]),
        .R(1'b0));
  FDRE \s0_reg[0] 
       (.C(clk),
        .CE(\s0_reg[0]_0 ),
        .D(a[0]),
        .Q(s0[0]),
        .R(\s0_reg[6]_0 ));
  FDRE \s0_reg[1] 
       (.C(clk),
        .CE(\s0_reg[0]_0 ),
        .D(a[1]),
        .Q(s0[1]),
        .R(\s0_reg[6]_0 ));
  FDRE \s0_reg[2] 
       (.C(clk),
        .CE(\s0_reg[0]_0 ),
        .D(a[2]),
        .Q(s0[2]),
        .R(\s0_reg[6]_0 ));
  FDRE \s0_reg[3] 
       (.C(clk),
        .CE(\s0_reg[0]_0 ),
        .D(a[3]),
        .Q(s0[3]),
        .R(\s0_reg[6]_0 ));
  FDRE \s0_reg[4] 
       (.C(clk),
        .CE(\s0_reg[0]_0 ),
        .D(a[4]),
        .Q(s0[4]),
        .R(\s0_reg[6]_0 ));
  FDRE \s0_reg[5] 
       (.C(clk),
        .CE(\s0_reg[0]_0 ),
        .D(a[5]),
        .Q(s0[5]),
        .R(\s0_reg[6]_0 ));
  FDRE \s0_reg[6] 
       (.C(clk),
        .CE(\s0_reg[0]_0 ),
        .D(a[6]),
        .Q(s0[6]),
        .R(\s0_reg[6]_0 ));
  FDRE \s0_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s0_reg[7]_0 ),
        .Q(s0[7]),
        .R(1'b0));
  FDRE \s2_reg[0] 
       (.C(clk),
        .CE(\s2_reg[0]_0 ),
        .D(a[0]),
        .Q(s2[0]),
        .R(\s2_reg[6]_0 ));
  FDRE \s2_reg[1] 
       (.C(clk),
        .CE(\s2_reg[0]_0 ),
        .D(a[1]),
        .Q(s2[1]),
        .R(\s2_reg[6]_0 ));
  FDRE \s2_reg[2] 
       (.C(clk),
        .CE(\s2_reg[0]_0 ),
        .D(a[2]),
        .Q(s2[2]),
        .R(\s2_reg[6]_0 ));
  FDRE \s2_reg[3] 
       (.C(clk),
        .CE(\s2_reg[0]_0 ),
        .D(a[3]),
        .Q(s2[3]),
        .R(\s2_reg[6]_0 ));
  FDRE \s2_reg[4] 
       (.C(clk),
        .CE(\s2_reg[0]_0 ),
        .D(a[4]),
        .Q(s2[4]),
        .R(\s2_reg[6]_0 ));
  FDRE \s2_reg[5] 
       (.C(clk),
        .CE(\s2_reg[0]_0 ),
        .D(a[5]),
        .Q(s2[5]),
        .R(\s2_reg[6]_0 ));
  FDRE \s2_reg[6] 
       (.C(clk),
        .CE(\s2_reg[0]_0 ),
        .D(a[6]),
        .Q(s2[6]),
        .R(\s2_reg[6]_0 ));
  FDRE \s2_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s2_reg[7]_0 ),
        .Q(s2[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h41)) 
    \sec[7]_i_10 
       (.I0(\sec_reg[7]_0 [7]),
        .I1(a[6]),
        .I2(\sec_reg[7]_0 [6]),
        .O(\sec[7]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \sec[7]_i_6 
       (.I0(\sec_reg[7]_0 [7]),
        .I1(a[6]),
        .I2(\sec_reg[7]_0 [6]),
        .O(\sec[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \sec[7]_i_7 
       (.I0(\sec_reg[7]_0 [5]),
        .I1(a[5]),
        .I2(\sec_reg[7]_0 [4]),
        .I3(a[4]),
        .O(\sec[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \sec[7]_i_8 
       (.I0(\sec_reg[7]_0 [3]),
        .I1(a[3]),
        .I2(\sec_reg[7]_0 [2]),
        .I3(a[2]),
        .O(\sec[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \sec[7]_i_9 
       (.I0(\sec_reg[7]_0 [1]),
        .I1(a[1]),
        .I2(\sec_reg[7]_0 [0]),
        .I3(a[0]),
        .O(\sec[7]_i_9_n_0 ));
  FDRE \sec_reg[0] 
       (.C(clk),
        .CE(E),
        .D(\sec_reg[7]_2 [0]),
        .Q(\sec_reg[7]_0 [0]),
        .R(1'b0));
  FDRE \sec_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\sec_reg[7]_2 [1]),
        .Q(\sec_reg[7]_0 [1]),
        .R(1'b0));
  FDRE \sec_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\sec_reg[7]_2 [2]),
        .Q(\sec_reg[7]_0 [2]),
        .R(1'b0));
  FDRE \sec_reg[3] 
       (.C(clk),
        .CE(E),
        .D(\sec_reg[7]_2 [3]),
        .Q(\sec_reg[7]_0 [3]),
        .R(1'b0));
  FDRE \sec_reg[4] 
       (.C(clk),
        .CE(E),
        .D(\sec_reg[7]_2 [4]),
        .Q(\sec_reg[7]_0 [4]),
        .R(1'b0));
  FDRE \sec_reg[5] 
       (.C(clk),
        .CE(E),
        .D(\sec_reg[7]_2 [5]),
        .Q(\sec_reg[7]_0 [5]),
        .R(1'b0));
  FDRE \sec_reg[6] 
       (.C(clk),
        .CE(E),
        .D(\sec_reg[7]_2 [6]),
        .Q(\sec_reg[7]_0 [6]),
        .R(1'b0));
  FDRE \sec_reg[7] 
       (.C(clk),
        .CE(E),
        .D(\sec_reg[7]_2 [7]),
        .Q(\sec_reg[7]_0 [7]),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \sec_reg[7]_i_3 
       (.CI(1'b0),
        .CO({CO,\sec_reg[7]_i_3_n_1 ,\sec_reg[7]_i_3_n_2 ,\sec_reg[7]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\sec[7]_i_6_n_0 ,\sec[7]_i_7_n_0 ,\sec[7]_i_8_n_0 ,\sec[7]_i_9_n_0 }),
        .O(\NLW_sec_reg[7]_i_3_O_UNCONNECTED [3:0]),
        .S({\sec[7]_i_10_n_0 ,S}));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[4]_i_23 
       (.I0(\sec_reg[7]_0 [7]),
        .I1(\uo_reg[4]_i_15 [7]),
        .I2(\sec_reg[7]_0 [6]),
        .I3(\uo_reg[4]_i_15 [6]),
        .O(\sec_reg[7]_1 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[4]_i_24 
       (.I0(\sec_reg[7]_0 [5]),
        .I1(\uo_reg[4]_i_15 [5]),
        .I2(\sec_reg[7]_0 [4]),
        .I3(\uo_reg[4]_i_15 [4]),
        .O(\sec_reg[7]_1 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[4]_i_25 
       (.I0(\sec_reg[7]_0 [3]),
        .I1(\uo_reg[4]_i_15 [3]),
        .I2(\sec_reg[7]_0 [2]),
        .I3(\uo_reg[4]_i_15 [2]),
        .O(\sec_reg[7]_1 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[4]_i_26 
       (.I0(\sec_reg[7]_0 [1]),
        .I1(\uo_reg[4]_i_15 [1]),
        .I2(\sec_reg[7]_0 [0]),
        .I3(\uo_reg[4]_i_15 [0]),
        .O(\sec_reg[7]_1 [0]));
endmodule

(* ORIG_REF_NAME = "ms_up" *) 
module system_slice_0_0_ms_up
   (own_wins_reg_0,
    Q,
    run_reg,
    \uio_r_reg[7]_0 ,
    run_reg_0,
    run_reg_1,
    run_reg_2,
    run_reg_3,
    \pw_k_reg[0]_0 ,
    \pw_k_reg[6]_0 ,
    \uo[5]_i_13 ,
    \uo[5]_i_13_0 ,
    \pw_k_reg[4]_0 ,
    \pw_k_reg[3]_0 ,
    \uq_reg[2] ,
    \uio_r_reg[6]_0 ,
    \uio_r_reg[1]_0 ,
    \uio_r_reg[7]_1 ,
    \uio_r_reg[7]_2 ,
    \uio_r_reg[6]_1 ,
    \uo[7]_i_47_0 ,
    uo_out,
    \dn_edge_reg[6]_0 ,
    \rec_in_reg[14]_0 ,
    E,
    b_own,
    clk,
    run,
    \uo[2]_i_5 ,
    \uo[2]_i_5_0 ,
    \uo[4]_i_6 ,
    \uo[3]_i_5 ,
    \uo_reg[4]_i_15_0 ,
    best_s,
    lmin,
    uq,
    \uo_reg[7]_i_60_0 ,
    \uo[5]_i_16 ,
    own_wins_reg_1,
    \uo[6]_i_10 ,
    \uo[7]_i_52_0 ,
    S,
    \uo[7]_i_44_0 ,
    \uo_reg[7]_i_63_0 ,
    uio_in,
    \mw_k_reg[6]_0 ,
    D,
    \pw_k_reg[0]_1 ,
    \m_sec_reg[7]_0 ,
    \m_s2_reg[0]_0 ,
    \m_s0_reg[6]_0 ,
    SR,
    SS,
    \dn_edge_reg[6]_1 ,
    \rin_s_reg[7]_0 ,
    \rin_s_reg[7]_1 ,
    \rec_in_reg[14]_1 );
  output own_wins_reg_0;
  output [2:0]Q;
  output run_reg;
  output [7:0]\uio_r_reg[7]_0 ;
  output run_reg_0;
  output run_reg_1;
  output run_reg_2;
  output run_reg_3;
  output \pw_k_reg[0]_0 ;
  output [3:0]\pw_k_reg[6]_0 ;
  output \uo[5]_i_13 ;
  output \uo[5]_i_13_0 ;
  output \pw_k_reg[4]_0 ;
  output \pw_k_reg[3]_0 ;
  output [0:0]\uq_reg[2] ;
  output \uio_r_reg[6]_0 ;
  output \uio_r_reg[1]_0 ;
  output [0:0]\uio_r_reg[7]_1 ;
  output [0:0]\uio_r_reg[7]_2 ;
  output [0:0]\uio_r_reg[6]_1 ;
  output [0:0]\uo[7]_i_47_0 ;
  output [7:0]uo_out;
  output [6:0]\dn_edge_reg[6]_0 ;
  output [14:0]\rec_in_reg[14]_0 ;
  input [0:0]E;
  input b_own;
  input clk;
  input run;
  input \uo[2]_i_5 ;
  input \uo[2]_i_5_0 ;
  input \uo[4]_i_6 ;
  input \uo[3]_i_5 ;
  input [7:0]\uo_reg[4]_i_15_0 ;
  input [7:0]best_s;
  input [6:0]lmin;
  input [3:0]uq;
  input \uo_reg[7]_i_60_0 ;
  input [3:0]\uo[5]_i_16 ;
  input [3:0]own_wins_reg_1;
  input [3:0]\uo[6]_i_10 ;
  input [0:0]\uo[7]_i_52_0 ;
  input [1:0]S;
  input [0:0]\uo[7]_i_44_0 ;
  input \uo_reg[7]_i_63_0 ;
  input [7:0]uio_in;
  input [0:0]\mw_k_reg[6]_0 ;
  input [7:0]D;
  input [0:0]\pw_k_reg[0]_1 ;
  input [0:0]\m_sec_reg[7]_0 ;
  input [0:0]\m_s2_reg[0]_0 ;
  input [0:0]\m_s0_reg[6]_0 ;
  input [1:0]SR;
  input [0:0]SS;
  input [0:0]\dn_edge_reg[6]_1 ;
  input [0:0]\rin_s_reg[7]_0 ;
  input [0:0]\rin_s_reg[7]_1 ;
  input [0:0]\rec_in_reg[14]_1 ;

  wire [3:3]C;
  wire [7:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire [1:0]S;
  wire [1:0]SR;
  wire [0:0]SS;
  wire b_own;
  wire [7:0]best_s;
  wire clk;
  wire data0;
  wire [6:0]\dn_edge_reg[6]_0 ;
  wire [0:0]\dn_edge_reg[6]_1 ;
  wire [7:0]f_b0;
  wire [13:4]f_margin;
  wire f_off11_in;
  wire [12:0]f_uniq0;
  wire [9:1]fit2;
  wire [6:0]lmin;
  wire [0:0]\m_s0_reg[6]_0 ;
  wire \m_s0_reg_n_0_[0] ;
  wire \m_s0_reg_n_0_[1] ;
  wire \m_s0_reg_n_0_[2] ;
  wire \m_s0_reg_n_0_[3] ;
  wire \m_s0_reg_n_0_[4] ;
  wire \m_s0_reg_n_0_[5] ;
  wire \m_s0_reg_n_0_[6] ;
  wire [0:0]\m_s2_reg[0]_0 ;
  wire \m_s2_reg_n_0_[0] ;
  wire \m_s2_reg_n_0_[1] ;
  wire \m_s2_reg_n_0_[2] ;
  wire \m_s2_reg_n_0_[3] ;
  wire \m_s2_reg_n_0_[4] ;
  wire \m_s2_reg_n_0_[5] ;
  wire \m_s2_reg_n_0_[6] ;
  wire [0:0]\m_sec_reg[7]_0 ;
  wire \m_sec_reg_n_0_[0] ;
  wire \m_sec_reg_n_0_[1] ;
  wire \m_sec_reg_n_0_[2] ;
  wire \m_sec_reg_n_0_[3] ;
  wire \m_sec_reg_n_0_[4] ;
  wire [0:0]\mw_k_reg[6]_0 ;
  wire \mw_k_reg_n_0_[0] ;
  wire \mw_k_reg_n_0_[1] ;
  wire \mw_k_reg_n_0_[2] ;
  wire \mw_k_reg_n_0_[3] ;
  wire \mw_k_reg_n_0_[4] ;
  wire \mw_k_reg_n_0_[5] ;
  wire \mw_k_reg_n_0_[6] ;
  wire \mw_s_reg_n_0_[0] ;
  wire \mw_s_reg_n_0_[1] ;
  wire \mw_s_reg_n_0_[2] ;
  wire \mw_s_reg_n_0_[3] ;
  wire \mw_s_reg_n_0_[4] ;
  wire \mw_s_reg_n_0_[5] ;
  wire \mw_s_reg_n_0_[6] ;
  wire own_wins_i_3_n_0;
  wire own_wins_i_4_n_0;
  wire own_wins_i_5_n_0;
  wire own_wins_i_6_n_0;
  wire own_wins_reg_0;
  wire [3:0]own_wins_reg_1;
  wire own_wins_reg_i_2_n_1;
  wire own_wins_reg_i_2_n_2;
  wire own_wins_reg_i_2_n_3;
  wire [7:1]p_0_in;
  wire [12:3]pt;
  wire [6:0]pt0;
  wire [4:0]pw_k;
  wire \pw_k_reg[0]_0 ;
  wire [0:0]\pw_k_reg[0]_1 ;
  wire \pw_k_reg[3]_0 ;
  wire \pw_k_reg[4]_0 ;
  wire [3:0]\pw_k_reg[6]_0 ;
  wire [14:0]\rec_in_reg[14]_0 ;
  wire [0:0]\rec_in_reg[14]_1 ;
  wire [0:0]\rin_s_reg[7]_0 ;
  wire [0:0]\rin_s_reg[7]_1 ;
  wire \rin_s_reg_n_0_[0] ;
  wire \rin_s_reg_n_0_[1] ;
  wire \rin_s_reg_n_0_[2] ;
  wire \rin_s_reg_n_0_[3] ;
  wire \rin_s_reg_n_0_[4] ;
  wire \rin_s_reg_n_0_[5] ;
  wire \rin_s_reg_n_0_[6] ;
  wire \rin_s_reg_n_0_[7] ;
  wire run;
  wire run_reg;
  wire run_reg_0;
  wire run_reg_1;
  wire run_reg_2;
  wire run_reg_3;
  wire [7:0]uio_in;
  wire \uio_r_reg[1]_0 ;
  wire \uio_r_reg[6]_0 ;
  wire [0:0]\uio_r_reg[6]_1 ;
  wire [7:0]\uio_r_reg[7]_0 ;
  wire [0:0]\uio_r_reg[7]_1 ;
  wire [0:0]\uio_r_reg[7]_2 ;
  wire \uo[0]_i_17_n_0 ;
  wire \uo[0]_i_18_n_0 ;
  wire \uo[0]_i_19_n_0 ;
  wire \uo[0]_i_20_n_0 ;
  wire \uo[1]_i_100_n_0 ;
  wire \uo[1]_i_101_n_0 ;
  wire \uo[1]_i_102_n_0 ;
  wire \uo[1]_i_104_n_0 ;
  wire \uo[1]_i_16_n_0 ;
  wire \uo[1]_i_17_n_0 ;
  wire \uo[1]_i_18_n_0 ;
  wire \uo[1]_i_19_n_0 ;
  wire \uo[1]_i_20_n_0 ;
  wire \uo[1]_i_24_n_0 ;
  wire \uo[1]_i_25_n_0 ;
  wire \uo[1]_i_27_n_0 ;
  wire \uo[1]_i_28_n_0 ;
  wire \uo[1]_i_30_n_0 ;
  wire \uo[1]_i_31_n_0 ;
  wire \uo[1]_i_32_n_0 ;
  wire \uo[1]_i_33_n_0 ;
  wire \uo[1]_i_34_n_0 ;
  wire \uo[1]_i_35_n_0 ;
  wire \uo[1]_i_36_n_0 ;
  wire \uo[1]_i_37_n_0 ;
  wire \uo[1]_i_40_n_0 ;
  wire \uo[1]_i_41_n_0 ;
  wire \uo[1]_i_42_n_0 ;
  wire \uo[1]_i_43_n_0 ;
  wire \uo[1]_i_44_n_0 ;
  wire \uo[1]_i_45_n_0 ;
  wire \uo[1]_i_46_n_0 ;
  wire \uo[1]_i_47_n_0 ;
  wire \uo[1]_i_49_n_0 ;
  wire \uo[1]_i_50_n_0 ;
  wire \uo[1]_i_51_n_0 ;
  wire \uo[1]_i_52_n_0 ;
  wire \uo[1]_i_53_n_0 ;
  wire \uo[1]_i_54_n_0 ;
  wire \uo[1]_i_55_n_0 ;
  wire \uo[1]_i_56_n_0 ;
  wire \uo[1]_i_59_n_0 ;
  wire \uo[1]_i_60_n_0 ;
  wire \uo[1]_i_61_n_0 ;
  wire \uo[1]_i_62_n_0 ;
  wire \uo[1]_i_63_n_0 ;
  wire \uo[1]_i_64_n_0 ;
  wire \uo[1]_i_65_n_0 ;
  wire \uo[1]_i_66_n_0 ;
  wire \uo[1]_i_68_n_0 ;
  wire \uo[1]_i_69_n_0 ;
  wire \uo[1]_i_70_n_0 ;
  wire \uo[1]_i_72_n_0 ;
  wire \uo[1]_i_73_n_0 ;
  wire \uo[1]_i_74_n_0 ;
  wire \uo[1]_i_75_n_0 ;
  wire \uo[1]_i_76_n_0 ;
  wire \uo[1]_i_77_n_0 ;
  wire \uo[1]_i_78_n_0 ;
  wire \uo[1]_i_79_n_0 ;
  wire \uo[1]_i_80_n_0 ;
  wire \uo[1]_i_81_n_0 ;
  wire \uo[1]_i_82_n_0 ;
  wire \uo[1]_i_83_n_0 ;
  wire \uo[1]_i_84_n_0 ;
  wire \uo[1]_i_85_n_0 ;
  wire \uo[1]_i_86_n_0 ;
  wire \uo[1]_i_87_n_0 ;
  wire \uo[1]_i_88_n_0 ;
  wire \uo[1]_i_89_n_0 ;
  wire \uo[1]_i_90_n_0 ;
  wire \uo[1]_i_91_n_0 ;
  wire \uo[1]_i_92_n_0 ;
  wire \uo[1]_i_93_n_0 ;
  wire \uo[1]_i_94_n_0 ;
  wire \uo[1]_i_95_n_0 ;
  wire \uo[1]_i_96_n_0 ;
  wire \uo[1]_i_97_n_0 ;
  wire \uo[1]_i_98_n_0 ;
  wire \uo[1]_i_99_n_0 ;
  wire \uo[2]_i_100_n_0 ;
  wire \uo[2]_i_101_n_0 ;
  wire \uo[2]_i_102_n_0 ;
  wire \uo[2]_i_103_n_0 ;
  wire \uo[2]_i_104_n_0 ;
  wire \uo[2]_i_105_n_0 ;
  wire \uo[2]_i_106_n_0 ;
  wire \uo[2]_i_107_n_0 ;
  wire \uo[2]_i_108_n_0 ;
  wire \uo[2]_i_109_n_0 ;
  wire \uo[2]_i_110_n_0 ;
  wire \uo[2]_i_111_n_0 ;
  wire \uo[2]_i_112_n_0 ;
  wire \uo[2]_i_113_n_0 ;
  wire \uo[2]_i_116_n_0 ;
  wire \uo[2]_i_117_n_0 ;
  wire \uo[2]_i_118_n_0 ;
  wire \uo[2]_i_119_n_0 ;
  wire \uo[2]_i_120_n_0 ;
  wire \uo[2]_i_121_n_0 ;
  wire \uo[2]_i_122_n_0 ;
  wire \uo[2]_i_124_n_0 ;
  wire \uo[2]_i_125_n_0 ;
  wire \uo[2]_i_126_n_0 ;
  wire \uo[2]_i_127_n_0 ;
  wire \uo[2]_i_128_n_0 ;
  wire \uo[2]_i_129_n_0 ;
  wire \uo[2]_i_130_n_0 ;
  wire \uo[2]_i_131_n_0 ;
  wire \uo[2]_i_134_n_0 ;
  wire \uo[2]_i_135_n_0 ;
  wire \uo[2]_i_136_n_0 ;
  wire \uo[2]_i_137_n_0 ;
  wire \uo[2]_i_138_n_0 ;
  wire \uo[2]_i_139_n_0 ;
  wire \uo[2]_i_140_n_0 ;
  wire \uo[2]_i_142_n_0 ;
  wire \uo[2]_i_143_n_0 ;
  wire \uo[2]_i_144_n_0 ;
  wire \uo[2]_i_145_n_0 ;
  wire \uo[2]_i_146_n_0 ;
  wire \uo[2]_i_147_n_0 ;
  wire \uo[2]_i_148_n_0 ;
  wire \uo[2]_i_149_n_0 ;
  wire \uo[2]_i_152_n_0 ;
  wire \uo[2]_i_153_n_0 ;
  wire \uo[2]_i_154_n_0 ;
  wire \uo[2]_i_155_n_0 ;
  wire \uo[2]_i_156_n_0 ;
  wire \uo[2]_i_157_n_0 ;
  wire \uo[2]_i_158_n_0 ;
  wire \uo[2]_i_159_n_0 ;
  wire \uo[2]_i_162_n_0 ;
  wire \uo[2]_i_163_n_0 ;
  wire \uo[2]_i_164_n_0 ;
  wire \uo[2]_i_165_n_0 ;
  wire \uo[2]_i_166_n_0 ;
  wire \uo[2]_i_167_n_0 ;
  wire \uo[2]_i_168_n_0 ;
  wire \uo[2]_i_169_n_0 ;
  wire \uo[2]_i_172_n_0 ;
  wire \uo[2]_i_173_n_0 ;
  wire \uo[2]_i_174_n_0 ;
  wire \uo[2]_i_175_n_0 ;
  wire \uo[2]_i_176_n_0 ;
  wire \uo[2]_i_177_n_0 ;
  wire \uo[2]_i_178_n_0 ;
  wire \uo[2]_i_179_n_0 ;
  wire \uo[2]_i_180_n_0 ;
  wire \uo[2]_i_181_n_0 ;
  wire \uo[2]_i_182_n_0 ;
  wire \uo[2]_i_183_n_0 ;
  wire \uo[2]_i_184_n_0 ;
  wire \uo[2]_i_185_n_0 ;
  wire \uo[2]_i_186_n_0 ;
  wire \uo[2]_i_187_n_0 ;
  wire \uo[2]_i_188_n_0 ;
  wire \uo[2]_i_189_n_0 ;
  wire \uo[2]_i_190_n_0 ;
  wire \uo[2]_i_191_n_0 ;
  wire \uo[2]_i_192_n_0 ;
  wire \uo[2]_i_193_n_0 ;
  wire \uo[2]_i_194_n_0 ;
  wire \uo[2]_i_195_n_0 ;
  wire \uo[2]_i_196_n_0 ;
  wire \uo[2]_i_197_n_0 ;
  wire \uo[2]_i_198_n_0 ;
  wire \uo[2]_i_199_n_0 ;
  wire \uo[2]_i_19_n_0 ;
  wire \uo[2]_i_200_n_0 ;
  wire \uo[2]_i_201_n_0 ;
  wire \uo[2]_i_202_n_0 ;
  wire \uo[2]_i_203_n_0 ;
  wire \uo[2]_i_205_n_0 ;
  wire \uo[2]_i_206_n_0 ;
  wire \uo[2]_i_207_n_0 ;
  wire \uo[2]_i_208_n_0 ;
  wire \uo[2]_i_209_n_0 ;
  wire \uo[2]_i_20_n_0 ;
  wire \uo[2]_i_210_n_0 ;
  wire \uo[2]_i_211_n_0 ;
  wire \uo[2]_i_212_n_0 ;
  wire \uo[2]_i_213_n_0 ;
  wire \uo[2]_i_214_n_0 ;
  wire \uo[2]_i_215_n_0 ;
  wire \uo[2]_i_216_n_0 ;
  wire \uo[2]_i_21_n_0 ;
  wire \uo[2]_i_221_n_0 ;
  wire \uo[2]_i_222_n_0 ;
  wire \uo[2]_i_223_n_0 ;
  wire \uo[2]_i_224_n_0 ;
  wire \uo[2]_i_225_n_0 ;
  wire \uo[2]_i_226_n_0 ;
  wire \uo[2]_i_227_n_0 ;
  wire \uo[2]_i_228_n_0 ;
  wire \uo[2]_i_229_n_0 ;
  wire \uo[2]_i_22_n_0 ;
  wire \uo[2]_i_230_n_0 ;
  wire \uo[2]_i_231_n_0 ;
  wire \uo[2]_i_232_n_0 ;
  wire \uo[2]_i_233_n_0 ;
  wire \uo[2]_i_234_n_0 ;
  wire \uo[2]_i_235_n_0 ;
  wire \uo[2]_i_236_n_0 ;
  wire \uo[2]_i_237_n_0 ;
  wire \uo[2]_i_23_n_0 ;
  wire \uo[2]_i_241_n_0 ;
  wire \uo[2]_i_242_n_0 ;
  wire \uo[2]_i_243_n_0 ;
  wire \uo[2]_i_244_n_0 ;
  wire \uo[2]_i_245_n_0 ;
  wire \uo[2]_i_246_n_0 ;
  wire \uo[2]_i_247_n_0 ;
  wire \uo[2]_i_248_n_0 ;
  wire \uo[2]_i_249_n_0 ;
  wire \uo[2]_i_24_n_0 ;
  wire \uo[2]_i_250_n_0 ;
  wire \uo[2]_i_251_n_0 ;
  wire \uo[2]_i_254_n_0 ;
  wire \uo[2]_i_255_n_0 ;
  wire \uo[2]_i_256_n_0 ;
  wire \uo[2]_i_257_n_0 ;
  wire \uo[2]_i_258_n_0 ;
  wire \uo[2]_i_259_n_0 ;
  wire \uo[2]_i_25_n_0 ;
  wire \uo[2]_i_260_n_0 ;
  wire \uo[2]_i_261_n_0 ;
  wire \uo[2]_i_262_n_0 ;
  wire \uo[2]_i_265_n_0 ;
  wire \uo[2]_i_266_n_0 ;
  wire \uo[2]_i_267_n_0 ;
  wire \uo[2]_i_268_n_0 ;
  wire \uo[2]_i_269_n_0 ;
  wire \uo[2]_i_26_n_0 ;
  wire \uo[2]_i_270_n_0 ;
  wire \uo[2]_i_271_n_0 ;
  wire \uo[2]_i_272_n_0 ;
  wire \uo[2]_i_273_n_0 ;
  wire \uo[2]_i_275_n_0 ;
  wire \uo[2]_i_276_n_0 ;
  wire \uo[2]_i_277_n_0 ;
  wire \uo[2]_i_278_n_0 ;
  wire \uo[2]_i_279_n_0 ;
  wire \uo[2]_i_27_n_0 ;
  wire \uo[2]_i_280_n_0 ;
  wire \uo[2]_i_281_n_0 ;
  wire \uo[2]_i_282_n_0 ;
  wire \uo[2]_i_283_n_0 ;
  wire \uo[2]_i_284_n_0 ;
  wire \uo[2]_i_286_n_0 ;
  wire \uo[2]_i_287_n_0 ;
  wire \uo[2]_i_288_n_0 ;
  wire \uo[2]_i_289_n_0 ;
  wire \uo[2]_i_28_n_0 ;
  wire \uo[2]_i_290_n_0 ;
  wire \uo[2]_i_291_n_0 ;
  wire \uo[2]_i_292_n_0 ;
  wire \uo[2]_i_293_n_0 ;
  wire \uo[2]_i_294_n_0 ;
  wire \uo[2]_i_296_n_0 ;
  wire \uo[2]_i_297_n_0 ;
  wire \uo[2]_i_298_n_0 ;
  wire \uo[2]_i_299_n_0 ;
  wire \uo[2]_i_29_n_0 ;
  wire \uo[2]_i_300_n_0 ;
  wire \uo[2]_i_301_n_0 ;
  wire \uo[2]_i_302_n_0 ;
  wire \uo[2]_i_303_n_0 ;
  wire \uo[2]_i_304_n_0 ;
  wire \uo[2]_i_307_n_0 ;
  wire \uo[2]_i_308_n_0 ;
  wire \uo[2]_i_309_n_0 ;
  wire \uo[2]_i_30_n_0 ;
  wire \uo[2]_i_310_n_0 ;
  wire \uo[2]_i_311_n_0 ;
  wire \uo[2]_i_312_n_0 ;
  wire \uo[2]_i_313_n_0 ;
  wire \uo[2]_i_314_n_0 ;
  wire \uo[2]_i_315_n_0 ;
  wire \uo[2]_i_316_n_0 ;
  wire \uo[2]_i_317_n_0 ;
  wire \uo[2]_i_318_n_0 ;
  wire \uo[2]_i_319_n_0 ;
  wire \uo[2]_i_320_n_0 ;
  wire \uo[2]_i_321_n_0 ;
  wire \uo[2]_i_322_n_0 ;
  wire \uo[2]_i_323_n_0 ;
  wire \uo[2]_i_324_n_0 ;
  wire \uo[2]_i_325_n_0 ;
  wire \uo[2]_i_326_n_0 ;
  wire \uo[2]_i_327_n_0 ;
  wire \uo[2]_i_328_n_0 ;
  wire \uo[2]_i_329_n_0 ;
  wire \uo[2]_i_330_n_0 ;
  wire \uo[2]_i_331_n_0 ;
  wire \uo[2]_i_332_n_0 ;
  wire \uo[2]_i_333_n_0 ;
  wire \uo[2]_i_334_n_0 ;
  wire \uo[2]_i_335_n_0 ;
  wire \uo[2]_i_336_n_0 ;
  wire \uo[2]_i_337_n_0 ;
  wire \uo[2]_i_338_n_0 ;
  wire \uo[2]_i_339_n_0 ;
  wire \uo[2]_i_340_n_0 ;
  wire \uo[2]_i_341_n_0 ;
  wire \uo[2]_i_345_n_0 ;
  wire \uo[2]_i_346_n_0 ;
  wire \uo[2]_i_347_n_0 ;
  wire \uo[2]_i_348_n_0 ;
  wire \uo[2]_i_349_n_0 ;
  wire \uo[2]_i_350_n_0 ;
  wire \uo[2]_i_351_n_0 ;
  wire \uo[2]_i_352_n_0 ;
  wire \uo[2]_i_353_n_0 ;
  wire \uo[2]_i_44_n_0 ;
  wire \uo[2]_i_45_n_0 ;
  wire \uo[2]_i_46_n_0 ;
  wire \uo[2]_i_47_n_0 ;
  wire \uo[2]_i_48_n_0 ;
  wire \uo[2]_i_5 ;
  wire \uo[2]_i_51_n_0 ;
  wire \uo[2]_i_52_n_0 ;
  wire \uo[2]_i_53_n_0 ;
  wire \uo[2]_i_54_n_0 ;
  wire \uo[2]_i_55_n_0 ;
  wire \uo[2]_i_56_n_0 ;
  wire \uo[2]_i_57_n_0 ;
  wire \uo[2]_i_58_n_0 ;
  wire \uo[2]_i_5_0 ;
  wire \uo[2]_i_61_n_0 ;
  wire \uo[2]_i_62_n_0 ;
  wire \uo[2]_i_63_n_0 ;
  wire \uo[2]_i_64_n_0 ;
  wire \uo[2]_i_65_n_0 ;
  wire \uo[2]_i_66_n_0 ;
  wire \uo[2]_i_67_n_0 ;
  wire \uo[2]_i_68_n_0 ;
  wire \uo[2]_i_70_n_0 ;
  wire \uo[2]_i_71_n_0 ;
  wire \uo[2]_i_74_n_0 ;
  wire \uo[2]_i_75_n_0 ;
  wire \uo[2]_i_77_n_0 ;
  wire \uo[2]_i_78_n_0 ;
  wire \uo[2]_i_80_n_0 ;
  wire \uo[2]_i_81_n_0 ;
  wire \uo[2]_i_83_n_0 ;
  wire \uo[2]_i_84_n_0 ;
  wire \uo[2]_i_85_n_0 ;
  wire \uo[2]_i_86_n_0 ;
  wire \uo[2]_i_87_n_0 ;
  wire \uo[2]_i_88_n_0 ;
  wire \uo[2]_i_89_n_0 ;
  wire \uo[2]_i_90_n_0 ;
  wire \uo[2]_i_91_n_0 ;
  wire \uo[2]_i_92_n_0 ;
  wire \uo[2]_i_96_n_0 ;
  wire \uo[2]_i_97_n_0 ;
  wire \uo[2]_i_98_n_0 ;
  wire \uo[2]_i_99_n_0 ;
  wire \uo[3]_i_15_n_0 ;
  wire \uo[3]_i_5 ;
  wire \uo[4]_i_100_n_0 ;
  wire \uo[4]_i_101_n_0 ;
  wire \uo[4]_i_102_n_0 ;
  wire \uo[4]_i_106_n_0 ;
  wire \uo[4]_i_107_n_0 ;
  wire \uo[4]_i_108_n_0 ;
  wire \uo[4]_i_109_n_0 ;
  wire \uo[4]_i_110_n_0 ;
  wire \uo[4]_i_111_n_0 ;
  wire \uo[4]_i_112_n_0 ;
  wire \uo[4]_i_113_n_0 ;
  wire \uo[4]_i_114_n_0 ;
  wire \uo[4]_i_115_n_0 ;
  wire \uo[4]_i_116_n_0 ;
  wire \uo[4]_i_118_n_0 ;
  wire \uo[4]_i_119_n_0 ;
  wire \uo[4]_i_120_n_0 ;
  wire \uo[4]_i_121_n_0 ;
  wire \uo[4]_i_122_n_0 ;
  wire \uo[4]_i_123_n_0 ;
  wire \uo[4]_i_124_n_0 ;
  wire \uo[4]_i_125_n_0 ;
  wire \uo[4]_i_129_n_0 ;
  wire \uo[4]_i_130_n_0 ;
  wire \uo[4]_i_131_n_0 ;
  wire \uo[4]_i_132_n_0 ;
  wire \uo[4]_i_133_n_0 ;
  wire \uo[4]_i_134_n_0 ;
  wire \uo[4]_i_135_n_0 ;
  wire \uo[4]_i_136_n_0 ;
  wire \uo[4]_i_137_n_0 ;
  wire \uo[4]_i_138_n_0 ;
  wire \uo[4]_i_140_n_0 ;
  wire \uo[4]_i_141_n_0 ;
  wire \uo[4]_i_143_n_0 ;
  wire \uo[4]_i_144_n_0 ;
  wire \uo[4]_i_145_n_0 ;
  wire \uo[4]_i_146_n_0 ;
  wire \uo[4]_i_147_n_0 ;
  wire \uo[4]_i_148_n_0 ;
  wire \uo[4]_i_149_n_0 ;
  wire \uo[4]_i_150_n_0 ;
  wire \uo[4]_i_152_n_0 ;
  wire \uo[4]_i_153_n_0 ;
  wire \uo[4]_i_154_n_0 ;
  wire \uo[4]_i_155_n_0 ;
  wire \uo[4]_i_156_n_0 ;
  wire \uo[4]_i_157_n_0 ;
  wire \uo[4]_i_158_n_0 ;
  wire \uo[4]_i_162_n_0 ;
  wire \uo[4]_i_163_n_0 ;
  wire \uo[4]_i_164_n_0 ;
  wire \uo[4]_i_165_n_0 ;
  wire \uo[4]_i_166_n_0 ;
  wire \uo[4]_i_167_n_0 ;
  wire \uo[4]_i_168_n_0 ;
  wire \uo[4]_i_169_n_0 ;
  wire \uo[4]_i_16_n_0 ;
  wire \uo[4]_i_170_n_0 ;
  wire \uo[4]_i_171_n_0 ;
  wire \uo[4]_i_172_n_0 ;
  wire \uo[4]_i_173_n_0 ;
  wire \uo[4]_i_174_n_0 ;
  wire \uo[4]_i_175_n_0 ;
  wire \uo[4]_i_176_n_0 ;
  wire \uo[4]_i_177_n_0 ;
  wire \uo[4]_i_178_n_0 ;
  wire \uo[4]_i_179_n_0 ;
  wire \uo[4]_i_17_n_0 ;
  wire \uo[4]_i_180_n_0 ;
  wire \uo[4]_i_181_n_0 ;
  wire \uo[4]_i_182_n_0 ;
  wire \uo[4]_i_183_n_0 ;
  wire \uo[4]_i_184_n_0 ;
  wire \uo[4]_i_185_n_0 ;
  wire \uo[4]_i_186_n_0 ;
  wire \uo[4]_i_189_n_0 ;
  wire \uo[4]_i_190_n_0 ;
  wire \uo[4]_i_191_n_0 ;
  wire \uo[4]_i_192_n_0 ;
  wire \uo[4]_i_193_n_0 ;
  wire \uo[4]_i_194_n_0 ;
  wire \uo[4]_i_195_n_0 ;
  wire \uo[4]_i_196_n_0 ;
  wire \uo[4]_i_197_n_0 ;
  wire \uo[4]_i_198_n_0 ;
  wire \uo[4]_i_199_n_0 ;
  wire \uo[4]_i_19_n_0 ;
  wire \uo[4]_i_200_n_0 ;
  wire \uo[4]_i_201_n_0 ;
  wire \uo[4]_i_202_n_0 ;
  wire \uo[4]_i_203_n_0 ;
  wire \uo[4]_i_204_n_0 ;
  wire \uo[4]_i_205_n_0 ;
  wire \uo[4]_i_206_n_0 ;
  wire \uo[4]_i_207_n_0 ;
  wire \uo[4]_i_208_n_0 ;
  wire \uo[4]_i_209_n_0 ;
  wire \uo[4]_i_20_n_0 ;
  wire \uo[4]_i_210_n_0 ;
  wire \uo[4]_i_211_n_0 ;
  wire \uo[4]_i_212_n_0 ;
  wire \uo[4]_i_213_n_0 ;
  wire \uo[4]_i_214_n_0 ;
  wire \uo[4]_i_21_n_0 ;
  wire \uo[4]_i_22_n_0 ;
  wire \uo[4]_i_27_n_0 ;
  wire \uo[4]_i_28_n_0 ;
  wire \uo[4]_i_29_n_0 ;
  wire \uo[4]_i_30_n_0 ;
  wire \uo[4]_i_34_n_0 ;
  wire \uo[4]_i_37_n_0 ;
  wire \uo[4]_i_38_n_0 ;
  wire \uo[4]_i_42_n_0 ;
  wire \uo[4]_i_43_n_0 ;
  wire \uo[4]_i_46_n_0 ;
  wire \uo[4]_i_47_n_0 ;
  wire \uo[4]_i_48_n_0 ;
  wire \uo[4]_i_49_n_0 ;
  wire \uo[4]_i_50_n_0 ;
  wire \uo[4]_i_51_n_0 ;
  wire \uo[4]_i_52_n_0 ;
  wire \uo[4]_i_53_n_0 ;
  wire \uo[4]_i_55_n_0 ;
  wire \uo[4]_i_56_n_0 ;
  wire \uo[4]_i_57_n_0 ;
  wire \uo[4]_i_58_n_0 ;
  wire \uo[4]_i_59_n_0 ;
  wire \uo[4]_i_6 ;
  wire \uo[4]_i_60_n_0 ;
  wire \uo[4]_i_61_n_0 ;
  wire \uo[4]_i_62_n_0 ;
  wire \uo[4]_i_65_n_0 ;
  wire \uo[4]_i_66_n_0 ;
  wire \uo[4]_i_67_n_0 ;
  wire \uo[4]_i_68_n_0 ;
  wire \uo[4]_i_69_n_0 ;
  wire \uo[4]_i_70_n_0 ;
  wire \uo[4]_i_71_n_0 ;
  wire \uo[4]_i_72_n_0 ;
  wire \uo[4]_i_74_n_0 ;
  wire \uo[4]_i_75_n_0 ;
  wire \uo[4]_i_76_n_0 ;
  wire \uo[4]_i_77_n_0 ;
  wire \uo[4]_i_78_n_0 ;
  wire \uo[4]_i_79_n_0 ;
  wire \uo[4]_i_80_n_0 ;
  wire \uo[4]_i_81_n_0 ;
  wire \uo[4]_i_84_n_0 ;
  wire \uo[4]_i_85_n_0 ;
  wire \uo[4]_i_86_n_0 ;
  wire \uo[4]_i_87_n_0 ;
  wire \uo[4]_i_88_n_0 ;
  wire \uo[4]_i_89_n_0 ;
  wire \uo[4]_i_90_n_0 ;
  wire \uo[4]_i_91_n_0 ;
  wire \uo[4]_i_92_n_0 ;
  wire \uo[4]_i_93_n_0 ;
  wire \uo[4]_i_94_n_0 ;
  wire \uo[4]_i_95_n_0 ;
  wire \uo[4]_i_96_n_0 ;
  wire \uo[4]_i_97_n_0 ;
  wire \uo[4]_i_98_n_0 ;
  wire \uo[4]_i_99_n_0 ;
  wire \uo[5]_i_13 ;
  wire \uo[5]_i_13_0 ;
  wire [3:0]\uo[5]_i_16 ;
  wire \uo[5]_i_7_n_0 ;
  wire [3:0]\uo[6]_i_10 ;
  wire \uo[7]_i_100_n_0 ;
  wire \uo[7]_i_101_n_0 ;
  wire \uo[7]_i_102_n_0 ;
  wire \uo[7]_i_103_n_0 ;
  wire \uo[7]_i_104_n_0 ;
  wire \uo[7]_i_105_n_0 ;
  wire \uo[7]_i_107_n_0 ;
  wire \uo[7]_i_108_n_0 ;
  wire \uo[7]_i_110_n_0 ;
  wire \uo[7]_i_111_n_0 ;
  wire \uo[7]_i_112_n_0 ;
  wire \uo[7]_i_113_n_0 ;
  wire \uo[7]_i_114_n_0 ;
  wire \uo[7]_i_115_n_0 ;
  wire \uo[7]_i_116_n_0 ;
  wire \uo[7]_i_117_n_0 ;
  wire \uo[7]_i_118_n_0 ;
  wire \uo[7]_i_119_n_0 ;
  wire \uo[7]_i_120_n_0 ;
  wire \uo[7]_i_121_n_0 ;
  wire \uo[7]_i_122_n_0 ;
  wire \uo[7]_i_123_n_0 ;
  wire \uo[7]_i_124_n_0 ;
  wire \uo[7]_i_126_n_0 ;
  wire \uo[7]_i_127_n_0 ;
  wire \uo[7]_i_128_n_0 ;
  wire \uo[7]_i_129_n_0 ;
  wire \uo[7]_i_130_n_0 ;
  wire \uo[7]_i_131_n_0 ;
  wire [0:0]\uo[7]_i_44_0 ;
  wire \uo[7]_i_44_n_0 ;
  wire \uo[7]_i_45_n_0 ;
  wire \uo[7]_i_46_n_0 ;
  wire [0:0]\uo[7]_i_47_0 ;
  wire \uo[7]_i_47_n_0 ;
  wire \uo[7]_i_48_n_0 ;
  wire \uo[7]_i_49_n_0 ;
  wire \uo[7]_i_50_n_0 ;
  wire \uo[7]_i_51_n_0 ;
  wire [0:0]\uo[7]_i_52_0 ;
  wire \uo[7]_i_52_n_0 ;
  wire \uo[7]_i_53_n_0 ;
  wire \uo[7]_i_54_n_0 ;
  wire \uo[7]_i_55_n_0 ;
  wire \uo[7]_i_64_n_0 ;
  wire \uo[7]_i_66_n_0 ;
  wire \uo[7]_i_67_n_0 ;
  wire \uo[7]_i_68_n_0 ;
  wire \uo[7]_i_69_n_0 ;
  wire \uo[7]_i_70_n_0 ;
  wire \uo[7]_i_71_n_0 ;
  wire \uo[7]_i_72_n_0 ;
  wire \uo[7]_i_73_n_0 ;
  wire \uo[7]_i_76_n_0 ;
  wire \uo[7]_i_77_n_0 ;
  wire \uo[7]_i_80_n_0 ;
  wire \uo[7]_i_81_n_0 ;
  wire \uo[7]_i_82_n_0 ;
  wire \uo[7]_i_83_n_0 ;
  wire \uo[7]_i_84_n_0 ;
  wire \uo[7]_i_85_n_0 ;
  wire \uo[7]_i_86_n_0 ;
  wire \uo[7]_i_87_n_0 ;
  wire \uo[7]_i_88_n_0 ;
  wire \uo[7]_i_89_n_0 ;
  wire \uo[7]_i_90_n_0 ;
  wire \uo[7]_i_91_n_0 ;
  wire \uo[7]_i_92_n_0 ;
  wire \uo[7]_i_93_n_0 ;
  wire \uo[7]_i_94_n_0 ;
  wire \uo[7]_i_95_n_0 ;
  wire \uo[7]_i_96_n_0 ;
  wire \uo[7]_i_97_n_0 ;
  wire \uo[7]_i_98_n_0 ;
  wire \uo[7]_i_99_n_0 ;
  wire \uo[7]_i_9_n_0 ;
  wire [7:0]uo_out;
  wire \uo_reg[0]_i_16_n_1 ;
  wire \uo_reg[0]_i_16_n_2 ;
  wire \uo_reg[0]_i_16_n_3 ;
  wire \uo_reg[1]_i_103_n_1 ;
  wire \uo_reg[1]_i_103_n_3 ;
  wire \uo_reg[1]_i_103_n_6 ;
  wire \uo_reg[1]_i_103_n_7 ;
  wire \uo_reg[1]_i_21_n_3 ;
  wire \uo_reg[1]_i_22_n_3 ;
  wire \uo_reg[1]_i_23_n_0 ;
  wire \uo_reg[1]_i_23_n_1 ;
  wire \uo_reg[1]_i_23_n_2 ;
  wire \uo_reg[1]_i_23_n_3 ;
  wire \uo_reg[1]_i_26_n_0 ;
  wire \uo_reg[1]_i_26_n_1 ;
  wire \uo_reg[1]_i_26_n_2 ;
  wire \uo_reg[1]_i_26_n_3 ;
  wire \uo_reg[1]_i_29_n_0 ;
  wire \uo_reg[1]_i_29_n_1 ;
  wire \uo_reg[1]_i_29_n_2 ;
  wire \uo_reg[1]_i_29_n_3 ;
  wire \uo_reg[1]_i_38_n_3 ;
  wire \uo_reg[1]_i_39_n_0 ;
  wire \uo_reg[1]_i_39_n_1 ;
  wire \uo_reg[1]_i_39_n_2 ;
  wire \uo_reg[1]_i_39_n_3 ;
  wire \uo_reg[1]_i_48_n_0 ;
  wire \uo_reg[1]_i_48_n_2 ;
  wire \uo_reg[1]_i_48_n_3 ;
  wire \uo_reg[1]_i_48_n_5 ;
  wire \uo_reg[1]_i_48_n_6 ;
  wire \uo_reg[1]_i_48_n_7 ;
  wire \uo_reg[1]_i_57_n_0 ;
  wire \uo_reg[1]_i_57_n_1 ;
  wire \uo_reg[1]_i_57_n_2 ;
  wire \uo_reg[1]_i_57_n_3 ;
  wire \uo_reg[1]_i_57_n_4 ;
  wire \uo_reg[1]_i_57_n_5 ;
  wire \uo_reg[1]_i_57_n_6 ;
  wire \uo_reg[1]_i_57_n_7 ;
  wire \uo_reg[1]_i_58_n_0 ;
  wire \uo_reg[1]_i_58_n_1 ;
  wire \uo_reg[1]_i_58_n_2 ;
  wire \uo_reg[1]_i_58_n_3 ;
  wire \uo_reg[1]_i_58_n_4 ;
  wire \uo_reg[1]_i_58_n_5 ;
  wire \uo_reg[1]_i_58_n_6 ;
  wire \uo_reg[1]_i_58_n_7 ;
  wire \uo_reg[1]_i_67_n_0 ;
  wire \uo_reg[1]_i_67_n_1 ;
  wire \uo_reg[1]_i_67_n_2 ;
  wire \uo_reg[1]_i_67_n_3 ;
  wire \uo_reg[1]_i_67_n_4 ;
  wire \uo_reg[1]_i_67_n_5 ;
  wire \uo_reg[1]_i_67_n_6 ;
  wire \uo_reg[1]_i_67_n_7 ;
  wire \uo_reg[1]_i_71_n_0 ;
  wire \uo_reg[1]_i_71_n_1 ;
  wire \uo_reg[1]_i_71_n_2 ;
  wire \uo_reg[1]_i_71_n_3 ;
  wire \uo_reg[1]_i_71_n_4 ;
  wire \uo_reg[1]_i_71_n_5 ;
  wire \uo_reg[1]_i_71_n_6 ;
  wire \uo_reg[1]_i_71_n_7 ;
  wire \uo_reg[2]_i_114_n_0 ;
  wire \uo_reg[2]_i_114_n_1 ;
  wire \uo_reg[2]_i_114_n_2 ;
  wire \uo_reg[2]_i_114_n_3 ;
  wire \uo_reg[2]_i_115_n_0 ;
  wire \uo_reg[2]_i_115_n_1 ;
  wire \uo_reg[2]_i_115_n_2 ;
  wire \uo_reg[2]_i_115_n_3 ;
  wire \uo_reg[2]_i_123_n_0 ;
  wire \uo_reg[2]_i_123_n_1 ;
  wire \uo_reg[2]_i_123_n_2 ;
  wire \uo_reg[2]_i_123_n_3 ;
  wire \uo_reg[2]_i_132_n_2 ;
  wire \uo_reg[2]_i_132_n_7 ;
  wire \uo_reg[2]_i_133_n_0 ;
  wire \uo_reg[2]_i_133_n_1 ;
  wire \uo_reg[2]_i_133_n_2 ;
  wire \uo_reg[2]_i_133_n_3 ;
  wire \uo_reg[2]_i_141_n_0 ;
  wire \uo_reg[2]_i_141_n_1 ;
  wire \uo_reg[2]_i_141_n_2 ;
  wire \uo_reg[2]_i_141_n_3 ;
  wire \uo_reg[2]_i_150_n_1 ;
  wire \uo_reg[2]_i_150_n_3 ;
  wire \uo_reg[2]_i_150_n_6 ;
  wire \uo_reg[2]_i_150_n_7 ;
  wire \uo_reg[2]_i_151_n_0 ;
  wire \uo_reg[2]_i_151_n_1 ;
  wire \uo_reg[2]_i_151_n_2 ;
  wire \uo_reg[2]_i_151_n_3 ;
  wire \uo_reg[2]_i_160_n_1 ;
  wire \uo_reg[2]_i_160_n_3 ;
  wire \uo_reg[2]_i_160_n_6 ;
  wire \uo_reg[2]_i_160_n_7 ;
  wire \uo_reg[2]_i_161_n_0 ;
  wire \uo_reg[2]_i_161_n_1 ;
  wire \uo_reg[2]_i_161_n_2 ;
  wire \uo_reg[2]_i_161_n_3 ;
  wire \uo_reg[2]_i_170_n_3 ;
  wire \uo_reg[2]_i_171_n_0 ;
  wire \uo_reg[2]_i_171_n_1 ;
  wire \uo_reg[2]_i_171_n_2 ;
  wire \uo_reg[2]_i_171_n_3 ;
  wire \uo_reg[2]_i_18_n_2 ;
  wire \uo_reg[2]_i_18_n_3 ;
  wire \uo_reg[2]_i_217_n_0 ;
  wire \uo_reg[2]_i_217_n_1 ;
  wire \uo_reg[2]_i_217_n_2 ;
  wire \uo_reg[2]_i_217_n_3 ;
  wire \uo_reg[2]_i_217_n_4 ;
  wire \uo_reg[2]_i_217_n_5 ;
  wire \uo_reg[2]_i_217_n_6 ;
  wire \uo_reg[2]_i_217_n_7 ;
  wire \uo_reg[2]_i_218_n_0 ;
  wire \uo_reg[2]_i_218_n_1 ;
  wire \uo_reg[2]_i_218_n_2 ;
  wire \uo_reg[2]_i_218_n_3 ;
  wire \uo_reg[2]_i_218_n_4 ;
  wire \uo_reg[2]_i_218_n_5 ;
  wire \uo_reg[2]_i_218_n_6 ;
  wire \uo_reg[2]_i_218_n_7 ;
  wire \uo_reg[2]_i_219_n_0 ;
  wire \uo_reg[2]_i_219_n_1 ;
  wire \uo_reg[2]_i_219_n_2 ;
  wire \uo_reg[2]_i_219_n_3 ;
  wire \uo_reg[2]_i_219_n_4 ;
  wire \uo_reg[2]_i_219_n_5 ;
  wire \uo_reg[2]_i_219_n_6 ;
  wire \uo_reg[2]_i_219_n_7 ;
  wire \uo_reg[2]_i_220_n_2 ;
  wire \uo_reg[2]_i_220_n_7 ;
  wire \uo_reg[2]_i_238_n_0 ;
  wire \uo_reg[2]_i_238_n_1 ;
  wire \uo_reg[2]_i_238_n_2 ;
  wire \uo_reg[2]_i_238_n_3 ;
  wire \uo_reg[2]_i_238_n_4 ;
  wire \uo_reg[2]_i_238_n_5 ;
  wire \uo_reg[2]_i_238_n_6 ;
  wire \uo_reg[2]_i_238_n_7 ;
  wire \uo_reg[2]_i_239_n_0 ;
  wire \uo_reg[2]_i_239_n_1 ;
  wire \uo_reg[2]_i_239_n_2 ;
  wire \uo_reg[2]_i_239_n_3 ;
  wire \uo_reg[2]_i_239_n_4 ;
  wire \uo_reg[2]_i_239_n_5 ;
  wire \uo_reg[2]_i_239_n_6 ;
  wire \uo_reg[2]_i_239_n_7 ;
  wire \uo_reg[2]_i_240_n_1 ;
  wire \uo_reg[2]_i_240_n_3 ;
  wire \uo_reg[2]_i_240_n_6 ;
  wire \uo_reg[2]_i_252_n_0 ;
  wire \uo_reg[2]_i_252_n_1 ;
  wire \uo_reg[2]_i_252_n_2 ;
  wire \uo_reg[2]_i_252_n_3 ;
  wire \uo_reg[2]_i_252_n_4 ;
  wire \uo_reg[2]_i_252_n_5 ;
  wire \uo_reg[2]_i_252_n_6 ;
  wire \uo_reg[2]_i_252_n_7 ;
  wire \uo_reg[2]_i_253_n_0 ;
  wire \uo_reg[2]_i_253_n_1 ;
  wire \uo_reg[2]_i_253_n_2 ;
  wire \uo_reg[2]_i_253_n_3 ;
  wire \uo_reg[2]_i_253_n_4 ;
  wire \uo_reg[2]_i_253_n_5 ;
  wire \uo_reg[2]_i_253_n_6 ;
  wire \uo_reg[2]_i_253_n_7 ;
  wire \uo_reg[2]_i_263_n_0 ;
  wire \uo_reg[2]_i_263_n_1 ;
  wire \uo_reg[2]_i_263_n_2 ;
  wire \uo_reg[2]_i_263_n_3 ;
  wire \uo_reg[2]_i_263_n_4 ;
  wire \uo_reg[2]_i_263_n_5 ;
  wire \uo_reg[2]_i_263_n_6 ;
  wire \uo_reg[2]_i_263_n_7 ;
  wire \uo_reg[2]_i_264_n_0 ;
  wire \uo_reg[2]_i_264_n_1 ;
  wire \uo_reg[2]_i_264_n_2 ;
  wire \uo_reg[2]_i_264_n_3 ;
  wire \uo_reg[2]_i_264_n_4 ;
  wire \uo_reg[2]_i_264_n_5 ;
  wire \uo_reg[2]_i_264_n_6 ;
  wire \uo_reg[2]_i_264_n_7 ;
  wire \uo_reg[2]_i_274_n_0 ;
  wire \uo_reg[2]_i_274_n_1 ;
  wire \uo_reg[2]_i_274_n_2 ;
  wire \uo_reg[2]_i_274_n_3 ;
  wire \uo_reg[2]_i_274_n_4 ;
  wire \uo_reg[2]_i_274_n_5 ;
  wire \uo_reg[2]_i_274_n_6 ;
  wire \uo_reg[2]_i_285_n_0 ;
  wire \uo_reg[2]_i_285_n_1 ;
  wire \uo_reg[2]_i_285_n_2 ;
  wire \uo_reg[2]_i_285_n_3 ;
  wire \uo_reg[2]_i_285_n_4 ;
  wire \uo_reg[2]_i_285_n_5 ;
  wire \uo_reg[2]_i_285_n_6 ;
  wire \uo_reg[2]_i_285_n_7 ;
  wire \uo_reg[2]_i_295_n_0 ;
  wire \uo_reg[2]_i_295_n_1 ;
  wire \uo_reg[2]_i_295_n_2 ;
  wire \uo_reg[2]_i_295_n_3 ;
  wire \uo_reg[2]_i_295_n_4 ;
  wire \uo_reg[2]_i_295_n_5 ;
  wire \uo_reg[2]_i_295_n_6 ;
  wire \uo_reg[2]_i_305_n_0 ;
  wire \uo_reg[2]_i_305_n_1 ;
  wire \uo_reg[2]_i_305_n_2 ;
  wire \uo_reg[2]_i_305_n_3 ;
  wire \uo_reg[2]_i_305_n_4 ;
  wire \uo_reg[2]_i_305_n_5 ;
  wire \uo_reg[2]_i_305_n_6 ;
  wire \uo_reg[2]_i_305_n_7 ;
  wire \uo_reg[2]_i_306_n_0 ;
  wire \uo_reg[2]_i_306_n_1 ;
  wire \uo_reg[2]_i_306_n_2 ;
  wire \uo_reg[2]_i_306_n_3 ;
  wire \uo_reg[2]_i_306_n_4 ;
  wire \uo_reg[2]_i_306_n_5 ;
  wire \uo_reg[2]_i_306_n_6 ;
  wire \uo_reg[2]_i_306_n_7 ;
  wire \uo_reg[2]_i_31_n_0 ;
  wire \uo_reg[2]_i_31_n_1 ;
  wire \uo_reg[2]_i_31_n_2 ;
  wire \uo_reg[2]_i_31_n_3 ;
  wire \uo_reg[2]_i_32_n_3 ;
  wire \uo_reg[2]_i_33_n_0 ;
  wire \uo_reg[2]_i_33_n_1 ;
  wire \uo_reg[2]_i_33_n_2 ;
  wire \uo_reg[2]_i_33_n_3 ;
  wire \uo_reg[2]_i_342_n_1 ;
  wire \uo_reg[2]_i_342_n_3 ;
  wire \uo_reg[2]_i_342_n_6 ;
  wire \uo_reg[2]_i_343_n_0 ;
  wire \uo_reg[2]_i_343_n_2 ;
  wire \uo_reg[2]_i_343_n_3 ;
  wire \uo_reg[2]_i_343_n_5 ;
  wire \uo_reg[2]_i_343_n_6 ;
  wire \uo_reg[2]_i_343_n_7 ;
  wire \uo_reg[2]_i_344_n_0 ;
  wire \uo_reg[2]_i_344_n_1 ;
  wire \uo_reg[2]_i_344_n_2 ;
  wire \uo_reg[2]_i_344_n_3 ;
  wire \uo_reg[2]_i_344_n_4 ;
  wire \uo_reg[2]_i_344_n_5 ;
  wire \uo_reg[2]_i_344_n_6 ;
  wire \uo_reg[2]_i_344_n_7 ;
  wire \uo_reg[2]_i_34_n_2 ;
  wire \uo_reg[2]_i_35_n_2 ;
  wire \uo_reg[2]_i_35_n_3 ;
  wire \uo_reg[2]_i_36_n_0 ;
  wire \uo_reg[2]_i_36_n_1 ;
  wire \uo_reg[2]_i_36_n_2 ;
  wire \uo_reg[2]_i_36_n_3 ;
  wire \uo_reg[2]_i_37_n_3 ;
  wire \uo_reg[2]_i_38_n_3 ;
  wire \uo_reg[2]_i_39_n_3 ;
  wire \uo_reg[2]_i_40_n_3 ;
  wire \uo_reg[2]_i_41_n_3 ;
  wire \uo_reg[2]_i_42_n_3 ;
  wire \uo_reg[2]_i_43_n_0 ;
  wire \uo_reg[2]_i_43_n_1 ;
  wire \uo_reg[2]_i_43_n_2 ;
  wire \uo_reg[2]_i_43_n_3 ;
  wire \uo_reg[2]_i_49_n_0 ;
  wire \uo_reg[2]_i_49_n_1 ;
  wire \uo_reg[2]_i_49_n_2 ;
  wire \uo_reg[2]_i_49_n_3 ;
  wire \uo_reg[2]_i_50_n_0 ;
  wire \uo_reg[2]_i_50_n_1 ;
  wire \uo_reg[2]_i_50_n_2 ;
  wire \uo_reg[2]_i_50_n_3 ;
  wire \uo_reg[2]_i_59_n_0 ;
  wire \uo_reg[2]_i_59_n_1 ;
  wire \uo_reg[2]_i_59_n_2 ;
  wire \uo_reg[2]_i_59_n_3 ;
  wire \uo_reg[2]_i_60_n_0 ;
  wire \uo_reg[2]_i_60_n_2 ;
  wire \uo_reg[2]_i_60_n_3 ;
  wire \uo_reg[2]_i_69_n_0 ;
  wire \uo_reg[2]_i_69_n_1 ;
  wire \uo_reg[2]_i_69_n_2 ;
  wire \uo_reg[2]_i_69_n_3 ;
  wire \uo_reg[2]_i_72_n_0 ;
  wire \uo_reg[2]_i_72_n_1 ;
  wire \uo_reg[2]_i_72_n_2 ;
  wire \uo_reg[2]_i_72_n_3 ;
  wire \uo_reg[2]_i_73_n_0 ;
  wire \uo_reg[2]_i_73_n_1 ;
  wire \uo_reg[2]_i_73_n_2 ;
  wire \uo_reg[2]_i_73_n_3 ;
  wire \uo_reg[2]_i_76_n_0 ;
  wire \uo_reg[2]_i_76_n_1 ;
  wire \uo_reg[2]_i_76_n_2 ;
  wire \uo_reg[2]_i_76_n_3 ;
  wire \uo_reg[2]_i_79_n_0 ;
  wire \uo_reg[2]_i_79_n_1 ;
  wire \uo_reg[2]_i_79_n_2 ;
  wire \uo_reg[2]_i_79_n_3 ;
  wire \uo_reg[2]_i_82_n_0 ;
  wire \uo_reg[2]_i_82_n_1 ;
  wire \uo_reg[2]_i_82_n_2 ;
  wire \uo_reg[2]_i_82_n_3 ;
  wire \uo_reg[2]_i_93_n_3 ;
  wire \uo_reg[2]_i_94_n_0 ;
  wire \uo_reg[2]_i_94_n_1 ;
  wire \uo_reg[2]_i_94_n_2 ;
  wire \uo_reg[2]_i_94_n_3 ;
  wire \uo_reg[2]_i_95_n_0 ;
  wire \uo_reg[2]_i_95_n_1 ;
  wire \uo_reg[2]_i_95_n_2 ;
  wire \uo_reg[2]_i_95_n_3 ;
  wire \uo_reg[4]_i_103_n_0 ;
  wire \uo_reg[4]_i_103_n_1 ;
  wire \uo_reg[4]_i_103_n_2 ;
  wire \uo_reg[4]_i_103_n_3 ;
  wire \uo_reg[4]_i_103_n_4 ;
  wire \uo_reg[4]_i_103_n_5 ;
  wire \uo_reg[4]_i_103_n_6 ;
  wire \uo_reg[4]_i_103_n_7 ;
  wire \uo_reg[4]_i_104_n_0 ;
  wire \uo_reg[4]_i_104_n_1 ;
  wire \uo_reg[4]_i_104_n_2 ;
  wire \uo_reg[4]_i_104_n_3 ;
  wire \uo_reg[4]_i_104_n_4 ;
  wire \uo_reg[4]_i_104_n_5 ;
  wire \uo_reg[4]_i_104_n_6 ;
  wire \uo_reg[4]_i_104_n_7 ;
  wire \uo_reg[4]_i_105_n_1 ;
  wire \uo_reg[4]_i_105_n_3 ;
  wire \uo_reg[4]_i_105_n_6 ;
  wire \uo_reg[4]_i_117_n_0 ;
  wire \uo_reg[4]_i_117_n_1 ;
  wire \uo_reg[4]_i_117_n_2 ;
  wire \uo_reg[4]_i_117_n_3 ;
  wire \uo_reg[4]_i_126_n_0 ;
  wire \uo_reg[4]_i_126_n_1 ;
  wire \uo_reg[4]_i_126_n_2 ;
  wire \uo_reg[4]_i_126_n_3 ;
  wire \uo_reg[4]_i_126_n_4 ;
  wire \uo_reg[4]_i_126_n_5 ;
  wire \uo_reg[4]_i_126_n_6 ;
  wire \uo_reg[4]_i_126_n_7 ;
  wire \uo_reg[4]_i_127_n_0 ;
  wire \uo_reg[4]_i_127_n_1 ;
  wire \uo_reg[4]_i_127_n_2 ;
  wire \uo_reg[4]_i_127_n_3 ;
  wire \uo_reg[4]_i_127_n_4 ;
  wire \uo_reg[4]_i_127_n_5 ;
  wire \uo_reg[4]_i_127_n_6 ;
  wire \uo_reg[4]_i_127_n_7 ;
  wire \uo_reg[4]_i_128_n_0 ;
  wire \uo_reg[4]_i_128_n_1 ;
  wire \uo_reg[4]_i_128_n_2 ;
  wire \uo_reg[4]_i_128_n_3 ;
  wire \uo_reg[4]_i_139_n_0 ;
  wire \uo_reg[4]_i_139_n_1 ;
  wire \uo_reg[4]_i_139_n_2 ;
  wire \uo_reg[4]_i_139_n_3 ;
  wire \uo_reg[4]_i_139_n_4 ;
  wire \uo_reg[4]_i_139_n_5 ;
  wire \uo_reg[4]_i_139_n_6 ;
  wire \uo_reg[4]_i_139_n_7 ;
  wire \uo_reg[4]_i_142_n_0 ;
  wire \uo_reg[4]_i_142_n_2 ;
  wire \uo_reg[4]_i_142_n_3 ;
  wire \uo_reg[4]_i_142_n_5 ;
  wire \uo_reg[4]_i_142_n_6 ;
  wire \uo_reg[4]_i_142_n_7 ;
  wire \uo_reg[4]_i_159_n_0 ;
  wire \uo_reg[4]_i_159_n_1 ;
  wire \uo_reg[4]_i_159_n_2 ;
  wire \uo_reg[4]_i_159_n_3 ;
  wire \uo_reg[4]_i_159_n_4 ;
  wire \uo_reg[4]_i_159_n_5 ;
  wire \uo_reg[4]_i_159_n_6 ;
  wire [7:0]\uo_reg[4]_i_15_0 ;
  wire \uo_reg[4]_i_15_n_1 ;
  wire \uo_reg[4]_i_15_n_2 ;
  wire \uo_reg[4]_i_15_n_3 ;
  wire \uo_reg[4]_i_160_n_0 ;
  wire \uo_reg[4]_i_160_n_1 ;
  wire \uo_reg[4]_i_160_n_2 ;
  wire \uo_reg[4]_i_160_n_3 ;
  wire \uo_reg[4]_i_160_n_4 ;
  wire \uo_reg[4]_i_160_n_5 ;
  wire \uo_reg[4]_i_160_n_6 ;
  wire \uo_reg[4]_i_160_n_7 ;
  wire \uo_reg[4]_i_161_n_1 ;
  wire \uo_reg[4]_i_161_n_3 ;
  wire \uo_reg[4]_i_161_n_6 ;
  wire \uo_reg[4]_i_187_n_0 ;
  wire \uo_reg[4]_i_187_n_1 ;
  wire \uo_reg[4]_i_187_n_2 ;
  wire \uo_reg[4]_i_187_n_3 ;
  wire \uo_reg[4]_i_187_n_4 ;
  wire \uo_reg[4]_i_187_n_5 ;
  wire \uo_reg[4]_i_187_n_6 ;
  wire \uo_reg[4]_i_188_n_0 ;
  wire \uo_reg[4]_i_188_n_1 ;
  wire \uo_reg[4]_i_188_n_2 ;
  wire \uo_reg[4]_i_188_n_3 ;
  wire \uo_reg[4]_i_188_n_4 ;
  wire \uo_reg[4]_i_188_n_5 ;
  wire \uo_reg[4]_i_188_n_6 ;
  wire \uo_reg[4]_i_188_n_7 ;
  wire \uo_reg[4]_i_31_n_3 ;
  wire \uo_reg[4]_i_32_n_2 ;
  wire \uo_reg[4]_i_32_n_3 ;
  wire \uo_reg[4]_i_33_n_3 ;
  wire \uo_reg[4]_i_35_n_0 ;
  wire \uo_reg[4]_i_35_n_1 ;
  wire \uo_reg[4]_i_35_n_2 ;
  wire \uo_reg[4]_i_35_n_3 ;
  wire \uo_reg[4]_i_36_n_0 ;
  wire \uo_reg[4]_i_36_n_1 ;
  wire \uo_reg[4]_i_36_n_2 ;
  wire \uo_reg[4]_i_36_n_3 ;
  wire \uo_reg[4]_i_39_n_0 ;
  wire \uo_reg[4]_i_39_n_1 ;
  wire \uo_reg[4]_i_39_n_2 ;
  wire \uo_reg[4]_i_39_n_3 ;
  wire \uo_reg[4]_i_41_n_0 ;
  wire \uo_reg[4]_i_41_n_1 ;
  wire \uo_reg[4]_i_41_n_2 ;
  wire \uo_reg[4]_i_41_n_3 ;
  wire \uo_reg[4]_i_45_n_0 ;
  wire \uo_reg[4]_i_45_n_1 ;
  wire \uo_reg[4]_i_45_n_2 ;
  wire \uo_reg[4]_i_45_n_3 ;
  wire \uo_reg[4]_i_54_n_0 ;
  wire \uo_reg[4]_i_54_n_1 ;
  wire \uo_reg[4]_i_54_n_2 ;
  wire \uo_reg[4]_i_54_n_3 ;
  wire \uo_reg[4]_i_63_n_1 ;
  wire \uo_reg[4]_i_63_n_3 ;
  wire \uo_reg[4]_i_63_n_6 ;
  wire \uo_reg[4]_i_63_n_7 ;
  wire \uo_reg[4]_i_64_n_0 ;
  wire \uo_reg[4]_i_64_n_1 ;
  wire \uo_reg[4]_i_64_n_2 ;
  wire \uo_reg[4]_i_64_n_3 ;
  wire \uo_reg[4]_i_73_n_0 ;
  wire \uo_reg[4]_i_73_n_1 ;
  wire \uo_reg[4]_i_73_n_2 ;
  wire \uo_reg[4]_i_73_n_3 ;
  wire \uo_reg[4]_i_82_n_3 ;
  wire \uo_reg[4]_i_83_n_0 ;
  wire \uo_reg[4]_i_83_n_1 ;
  wire \uo_reg[4]_i_83_n_2 ;
  wire \uo_reg[4]_i_83_n_3 ;
  wire \uo_reg[7]_i_42_n_3 ;
  wire \uo_reg[7]_i_43_n_0 ;
  wire \uo_reg[7]_i_43_n_1 ;
  wire \uo_reg[7]_i_43_n_2 ;
  wire \uo_reg[7]_i_43_n_3 ;
  wire \uo_reg[7]_i_56_n_3 ;
  wire \uo_reg[7]_i_58_n_3 ;
  wire \uo_reg[7]_i_59_n_0 ;
  wire \uo_reg[7]_i_59_n_1 ;
  wire \uo_reg[7]_i_59_n_2 ;
  wire \uo_reg[7]_i_59_n_3 ;
  wire \uo_reg[7]_i_60_0 ;
  wire \uo_reg[7]_i_60_n_0 ;
  wire \uo_reg[7]_i_60_n_1 ;
  wire \uo_reg[7]_i_60_n_2 ;
  wire \uo_reg[7]_i_60_n_3 ;
  wire \uo_reg[7]_i_61_n_0 ;
  wire \uo_reg[7]_i_61_n_1 ;
  wire \uo_reg[7]_i_61_n_2 ;
  wire \uo_reg[7]_i_61_n_3 ;
  wire \uo_reg[7]_i_62_n_0 ;
  wire \uo_reg[7]_i_62_n_1 ;
  wire \uo_reg[7]_i_62_n_2 ;
  wire \uo_reg[7]_i_62_n_3 ;
  wire \uo_reg[7]_i_63_0 ;
  wire \uo_reg[7]_i_63_n_0 ;
  wire \uo_reg[7]_i_63_n_1 ;
  wire \uo_reg[7]_i_63_n_2 ;
  wire \uo_reg[7]_i_63_n_3 ;
  wire [3:0]uq;
  wire [0:0]\uq_reg[2] ;
  wire [3:0]NLW_own_wins_reg_i_2_O_UNCONNECTED;
  wire [3:0]\NLW_uo_reg[0]_i_16_O_UNCONNECTED ;
  wire [3:1]\NLW_uo_reg[1]_i_103_CO_UNCONNECTED ;
  wire [3:2]\NLW_uo_reg[1]_i_103_O_UNCONNECTED ;
  wire [3:1]\NLW_uo_reg[1]_i_21_CO_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[1]_i_21_O_UNCONNECTED ;
  wire [3:1]\NLW_uo_reg[1]_i_22_CO_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[1]_i_22_O_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[1]_i_23_O_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[1]_i_26_O_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[1]_i_29_O_UNCONNECTED ;
  wire [3:1]\NLW_uo_reg[1]_i_38_CO_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[1]_i_38_O_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[1]_i_39_O_UNCONNECTED ;
  wire [2:2]\NLW_uo_reg[1]_i_48_CO_UNCONNECTED ;
  wire [3:3]\NLW_uo_reg[1]_i_48_O_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[2]_i_123_O_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[2]_i_132_CO_UNCONNECTED ;
  wire [3:1]\NLW_uo_reg[2]_i_132_O_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[2]_i_133_O_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[2]_i_141_O_UNCONNECTED ;
  wire [3:1]\NLW_uo_reg[2]_i_150_CO_UNCONNECTED ;
  wire [3:2]\NLW_uo_reg[2]_i_150_O_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[2]_i_151_O_UNCONNECTED ;
  wire [3:1]\NLW_uo_reg[2]_i_160_CO_UNCONNECTED ;
  wire [3:2]\NLW_uo_reg[2]_i_160_O_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[2]_i_161_O_UNCONNECTED ;
  wire [3:1]\NLW_uo_reg[2]_i_170_CO_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[2]_i_170_O_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[2]_i_171_O_UNCONNECTED ;
  wire [3:3]\NLW_uo_reg[2]_i_18_CO_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[2]_i_18_O_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[2]_i_220_CO_UNCONNECTED ;
  wire [3:1]\NLW_uo_reg[2]_i_220_O_UNCONNECTED ;
  wire [3:1]\NLW_uo_reg[2]_i_240_CO_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[2]_i_240_O_UNCONNECTED ;
  wire [0:0]\NLW_uo_reg[2]_i_274_O_UNCONNECTED ;
  wire [0:0]\NLW_uo_reg[2]_i_295_O_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[2]_i_31_O_UNCONNECTED ;
  wire [3:1]\NLW_uo_reg[2]_i_32_CO_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[2]_i_32_O_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[2]_i_33_O_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[2]_i_34_CO_UNCONNECTED ;
  wire [3:1]\NLW_uo_reg[2]_i_34_O_UNCONNECTED ;
  wire [3:1]\NLW_uo_reg[2]_i_342_CO_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[2]_i_342_O_UNCONNECTED ;
  wire [2:2]\NLW_uo_reg[2]_i_343_CO_UNCONNECTED ;
  wire [3:3]\NLW_uo_reg[2]_i_343_O_UNCONNECTED ;
  wire [2:2]\NLW_uo_reg[2]_i_35_CO_UNCONNECTED ;
  wire [3:3]\NLW_uo_reg[2]_i_35_O_UNCONNECTED ;
  wire [3:1]\NLW_uo_reg[2]_i_37_CO_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[2]_i_37_O_UNCONNECTED ;
  wire [3:1]\NLW_uo_reg[2]_i_38_CO_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[2]_i_38_O_UNCONNECTED ;
  wire [3:1]\NLW_uo_reg[2]_i_39_CO_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[2]_i_39_O_UNCONNECTED ;
  wire [3:1]\NLW_uo_reg[2]_i_40_CO_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[2]_i_40_O_UNCONNECTED ;
  wire [3:1]\NLW_uo_reg[2]_i_41_CO_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[2]_i_41_O_UNCONNECTED ;
  wire [3:1]\NLW_uo_reg[2]_i_42_CO_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[2]_i_42_O_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[2]_i_43_O_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[2]_i_49_O_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[2]_i_50_O_UNCONNECTED ;
  wire [2:2]\NLW_uo_reg[2]_i_60_CO_UNCONNECTED ;
  wire [3:3]\NLW_uo_reg[2]_i_60_O_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[2]_i_69_O_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[2]_i_72_O_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[2]_i_73_O_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[2]_i_76_O_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[2]_i_79_O_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[2]_i_82_O_UNCONNECTED ;
  wire [3:1]\NLW_uo_reg[2]_i_93_CO_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[2]_i_93_O_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[2]_i_95_O_UNCONNECTED ;
  wire [3:1]\NLW_uo_reg[4]_i_105_CO_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[4]_i_105_O_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[4]_i_128_O_UNCONNECTED ;
  wire [2:2]\NLW_uo_reg[4]_i_142_CO_UNCONNECTED ;
  wire [3:3]\NLW_uo_reg[4]_i_142_O_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[4]_i_15_O_UNCONNECTED ;
  wire [0:0]\NLW_uo_reg[4]_i_159_O_UNCONNECTED ;
  wire [3:1]\NLW_uo_reg[4]_i_161_CO_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[4]_i_161_O_UNCONNECTED ;
  wire [0:0]\NLW_uo_reg[4]_i_187_O_UNCONNECTED ;
  wire [3:1]\NLW_uo_reg[4]_i_31_CO_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[4]_i_31_O_UNCONNECTED ;
  wire [3:2]\NLW_uo_reg[4]_i_32_CO_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[4]_i_32_O_UNCONNECTED ;
  wire [3:1]\NLW_uo_reg[4]_i_33_CO_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[4]_i_33_O_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[4]_i_35_O_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[4]_i_36_O_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[4]_i_39_O_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[4]_i_41_O_UNCONNECTED ;
  wire [3:1]\NLW_uo_reg[4]_i_44_CO_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[4]_i_44_O_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[4]_i_45_O_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[4]_i_54_O_UNCONNECTED ;
  wire [3:1]\NLW_uo_reg[4]_i_63_CO_UNCONNECTED ;
  wire [3:2]\NLW_uo_reg[4]_i_63_O_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[4]_i_64_O_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[4]_i_73_O_UNCONNECTED ;
  wire [3:1]\NLW_uo_reg[4]_i_82_CO_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[4]_i_82_O_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[4]_i_83_O_UNCONNECTED ;
  wire [3:2]\NLW_uo_reg[7]_i_42_CO_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[7]_i_42_O_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[7]_i_43_O_UNCONNECTED ;
  wire [3:1]\NLW_uo_reg[7]_i_56_CO_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[7]_i_56_O_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[7]_i_57_CO_UNCONNECTED ;
  wire [3:1]\NLW_uo_reg[7]_i_57_O_UNCONNECTED ;
  wire [3:1]\NLW_uo_reg[7]_i_58_CO_UNCONNECTED ;
  wire [3:0]\NLW_uo_reg[7]_i_58_O_UNCONNECTED ;

  FDSE \dn_edge_reg[0] 
       (.C(clk),
        .CE(\dn_edge_reg[6]_1 ),
        .D(\uio_r_reg[7]_0 [0]),
        .Q(\dn_edge_reg[6]_0 [0]),
        .S(SS));
  FDSE \dn_edge_reg[1] 
       (.C(clk),
        .CE(\dn_edge_reg[6]_1 ),
        .D(\uio_r_reg[7]_0 [1]),
        .Q(\dn_edge_reg[6]_0 [1]),
        .S(SS));
  FDSE \dn_edge_reg[2] 
       (.C(clk),
        .CE(\dn_edge_reg[6]_1 ),
        .D(\uio_r_reg[7]_0 [2]),
        .Q(\dn_edge_reg[6]_0 [2]),
        .S(SS));
  FDSE \dn_edge_reg[3] 
       (.C(clk),
        .CE(\dn_edge_reg[6]_1 ),
        .D(\uio_r_reg[7]_0 [3]),
        .Q(\dn_edge_reg[6]_0 [3]),
        .S(SS));
  FDSE \dn_edge_reg[4] 
       (.C(clk),
        .CE(\dn_edge_reg[6]_1 ),
        .D(\uio_r_reg[7]_0 [4]),
        .Q(\dn_edge_reg[6]_0 [4]),
        .S(SS));
  FDSE \dn_edge_reg[5] 
       (.C(clk),
        .CE(\dn_edge_reg[6]_1 ),
        .D(\uio_r_reg[7]_0 [5]),
        .Q(\dn_edge_reg[6]_0 [5]),
        .S(SS));
  FDSE \dn_edge_reg[6] 
       (.C(clk),
        .CE(\dn_edge_reg[6]_1 ),
        .D(\uio_r_reg[7]_0 [6]),
        .Q(\dn_edge_reg[6]_0 [6]),
        .S(SS));
  FDRE \m_s0_reg[0] 
       (.C(clk),
        .CE(\m_s0_reg[6]_0 ),
        .D(D[0]),
        .Q(\m_s0_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \m_s0_reg[1] 
       (.C(clk),
        .CE(\m_s0_reg[6]_0 ),
        .D(D[1]),
        .Q(\m_s0_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \m_s0_reg[2] 
       (.C(clk),
        .CE(\m_s0_reg[6]_0 ),
        .D(D[2]),
        .Q(\m_s0_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \m_s0_reg[3] 
       (.C(clk),
        .CE(\m_s0_reg[6]_0 ),
        .D(D[3]),
        .Q(\m_s0_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \m_s0_reg[4] 
       (.C(clk),
        .CE(\m_s0_reg[6]_0 ),
        .D(D[4]),
        .Q(\m_s0_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \m_s0_reg[5] 
       (.C(clk),
        .CE(\m_s0_reg[6]_0 ),
        .D(D[5]),
        .Q(\m_s0_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \m_s0_reg[6] 
       (.C(clk),
        .CE(\m_s0_reg[6]_0 ),
        .D(D[6]),
        .Q(\m_s0_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \m_s2_reg[0] 
       (.C(clk),
        .CE(\m_s2_reg[0]_0 ),
        .D(D[0]),
        .Q(\m_s2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \m_s2_reg[1] 
       (.C(clk),
        .CE(\m_s2_reg[0]_0 ),
        .D(D[1]),
        .Q(\m_s2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \m_s2_reg[2] 
       (.C(clk),
        .CE(\m_s2_reg[0]_0 ),
        .D(D[2]),
        .Q(\m_s2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \m_s2_reg[3] 
       (.C(clk),
        .CE(\m_s2_reg[0]_0 ),
        .D(D[3]),
        .Q(\m_s2_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \m_s2_reg[4] 
       (.C(clk),
        .CE(\m_s2_reg[0]_0 ),
        .D(D[4]),
        .Q(\m_s2_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \m_s2_reg[5] 
       (.C(clk),
        .CE(\m_s2_reg[0]_0 ),
        .D(D[5]),
        .Q(\m_s2_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \m_s2_reg[6] 
       (.C(clk),
        .CE(\m_s2_reg[0]_0 ),
        .D(D[6]),
        .Q(\m_s2_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \m_sec_reg[0] 
       (.C(clk),
        .CE(\m_sec_reg[7]_0 ),
        .D(D[0]),
        .Q(\m_sec_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \m_sec_reg[1] 
       (.C(clk),
        .CE(\m_sec_reg[7]_0 ),
        .D(D[1]),
        .Q(\m_sec_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \m_sec_reg[2] 
       (.C(clk),
        .CE(\m_sec_reg[7]_0 ),
        .D(D[2]),
        .Q(\m_sec_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \m_sec_reg[3] 
       (.C(clk),
        .CE(\m_sec_reg[7]_0 ),
        .D(D[3]),
        .Q(\m_sec_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \m_sec_reg[4] 
       (.C(clk),
        .CE(\m_sec_reg[7]_0 ),
        .D(D[4]),
        .Q(\m_sec_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \m_sec_reg[5] 
       (.C(clk),
        .CE(\m_sec_reg[7]_0 ),
        .D(D[5]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \m_sec_reg[6] 
       (.C(clk),
        .CE(\m_sec_reg[7]_0 ),
        .D(D[6]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \m_sec_reg[7] 
       (.C(clk),
        .CE(\m_sec_reg[7]_0 ),
        .D(D[7]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \mw_k_reg[0] 
       (.C(clk),
        .CE(\mw_k_reg[6]_0 ),
        .D(D[0]),
        .Q(\mw_k_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \mw_k_reg[1] 
       (.C(clk),
        .CE(\mw_k_reg[6]_0 ),
        .D(D[1]),
        .Q(\mw_k_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \mw_k_reg[2] 
       (.C(clk),
        .CE(\mw_k_reg[6]_0 ),
        .D(D[2]),
        .Q(\mw_k_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \mw_k_reg[3] 
       (.C(clk),
        .CE(\mw_k_reg[6]_0 ),
        .D(D[3]),
        .Q(\mw_k_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \mw_k_reg[4] 
       (.C(clk),
        .CE(\mw_k_reg[6]_0 ),
        .D(D[4]),
        .Q(\mw_k_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \mw_k_reg[5] 
       (.C(clk),
        .CE(\mw_k_reg[6]_0 ),
        .D(D[5]),
        .Q(\mw_k_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \mw_k_reg[6] 
       (.C(clk),
        .CE(\mw_k_reg[6]_0 ),
        .D(D[6]),
        .Q(\mw_k_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \mw_s_reg[0] 
       (.C(clk),
        .CE(E),
        .D(D[0]),
        .Q(\mw_s_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \mw_s_reg[1] 
       (.C(clk),
        .CE(E),
        .D(D[1]),
        .Q(\mw_s_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \mw_s_reg[2] 
       (.C(clk),
        .CE(E),
        .D(D[2]),
        .Q(\mw_s_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \mw_s_reg[3] 
       (.C(clk),
        .CE(E),
        .D(D[3]),
        .Q(\mw_s_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \mw_s_reg[4] 
       (.C(clk),
        .CE(E),
        .D(D[4]),
        .Q(\mw_s_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \mw_s_reg[5] 
       (.C(clk),
        .CE(E),
        .D(D[5]),
        .Q(\mw_s_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \mw_s_reg[6] 
       (.C(clk),
        .CE(E),
        .D(D[6]),
        .Q(\mw_s_reg_n_0_[6] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h22B2)) 
    own_wins_i_3
       (.I0(\uio_r_reg[7]_0 [7]),
        .I1(best_s[7]),
        .I2(\uio_r_reg[7]_0 [6]),
        .I3(best_s[6]),
        .O(own_wins_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    own_wins_i_4
       (.I0(\uio_r_reg[7]_0 [5]),
        .I1(best_s[5]),
        .I2(\uio_r_reg[7]_0 [4]),
        .I3(best_s[4]),
        .O(own_wins_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    own_wins_i_5
       (.I0(\uio_r_reg[7]_0 [3]),
        .I1(best_s[3]),
        .I2(\uio_r_reg[7]_0 [2]),
        .I3(best_s[2]),
        .O(own_wins_i_5_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    own_wins_i_6
       (.I0(\uio_r_reg[7]_0 [1]),
        .I1(best_s[1]),
        .I2(\uio_r_reg[7]_0 [0]),
        .I3(best_s[0]),
        .O(own_wins_i_6_n_0));
  FDRE own_wins_reg
       (.C(clk),
        .CE(E),
        .D(b_own),
        .Q(own_wins_reg_0),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 own_wins_reg_i_2
       (.CI(1'b0),
        .CO({\uio_r_reg[7]_2 ,own_wins_reg_i_2_n_1,own_wins_reg_i_2_n_2,own_wins_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({own_wins_i_3_n_0,own_wins_i_4_n_0,own_wins_i_5_n_0,own_wins_i_6_n_0}),
        .O(NLW_own_wins_reg_i_2_O_UNCONNECTED[3:0]),
        .S(own_wins_reg_1));
  FDRE \pw_k_reg[0] 
       (.C(clk),
        .CE(\pw_k_reg[0]_1 ),
        .D(\mw_k_reg_n_0_[0] ),
        .Q(pw_k[0]),
        .R(1'b0));
  FDRE \pw_k_reg[1] 
       (.C(clk),
        .CE(\pw_k_reg[0]_1 ),
        .D(\mw_k_reg_n_0_[1] ),
        .Q(\pw_k_reg[6]_0 [0]),
        .R(1'b0));
  FDRE \pw_k_reg[2] 
       (.C(clk),
        .CE(\pw_k_reg[0]_1 ),
        .D(\mw_k_reg_n_0_[2] ),
        .Q(\pw_k_reg[6]_0 [1]),
        .R(1'b0));
  FDRE \pw_k_reg[3] 
       (.C(clk),
        .CE(\pw_k_reg[0]_1 ),
        .D(\mw_k_reg_n_0_[3] ),
        .Q(pw_k[3]),
        .R(1'b0));
  FDRE \pw_k_reg[4] 
       (.C(clk),
        .CE(\pw_k_reg[0]_1 ),
        .D(\mw_k_reg_n_0_[4] ),
        .Q(pw_k[4]),
        .R(1'b0));
  FDRE \pw_k_reg[5] 
       (.C(clk),
        .CE(\pw_k_reg[0]_1 ),
        .D(\mw_k_reg_n_0_[5] ),
        .Q(\pw_k_reg[6]_0 [2]),
        .R(1'b0));
  FDRE \pw_k_reg[6] 
       (.C(clk),
        .CE(\pw_k_reg[0]_1 ),
        .D(\mw_k_reg_n_0_[6] ),
        .Q(\pw_k_reg[6]_0 [3]),
        .R(1'b0));
  FDRE \pw_s_reg[0] 
       (.C(clk),
        .CE(\pw_k_reg[0]_1 ),
        .D(\mw_s_reg_n_0_[0] ),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE \pw_s_reg[1] 
       (.C(clk),
        .CE(\pw_k_reg[0]_1 ),
        .D(\mw_s_reg_n_0_[1] ),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE \pw_s_reg[2] 
       (.C(clk),
        .CE(\pw_k_reg[0]_1 ),
        .D(\mw_s_reg_n_0_[2] ),
        .Q(p_0_in[3]),
        .R(1'b0));
  FDRE \pw_s_reg[3] 
       (.C(clk),
        .CE(\pw_k_reg[0]_1 ),
        .D(\mw_s_reg_n_0_[3] ),
        .Q(p_0_in[4]),
        .R(1'b0));
  FDRE \pw_s_reg[4] 
       (.C(clk),
        .CE(\pw_k_reg[0]_1 ),
        .D(\mw_s_reg_n_0_[4] ),
        .Q(p_0_in[5]),
        .R(1'b0));
  FDRE \pw_s_reg[5] 
       (.C(clk),
        .CE(\pw_k_reg[0]_1 ),
        .D(\mw_s_reg_n_0_[5] ),
        .Q(p_0_in[6]),
        .R(1'b0));
  FDRE \pw_s_reg[6] 
       (.C(clk),
        .CE(\pw_k_reg[0]_1 ),
        .D(\mw_s_reg_n_0_[6] ),
        .Q(p_0_in[7]),
        .R(1'b0));
  FDRE \rec_in_reg[0] 
       (.C(clk),
        .CE(\rec_in_reg[14]_1 ),
        .D(\uio_r_reg[7]_0 [0]),
        .Q(\rec_in_reg[14]_0 [0]),
        .R(SR[0]));
  FDRE \rec_in_reg[10] 
       (.C(clk),
        .CE(\rec_in_reg[14]_1 ),
        .D(\rin_s_reg_n_0_[3] ),
        .Q(\rec_in_reg[14]_0 [10]),
        .R(SR[1]));
  FDRE \rec_in_reg[11] 
       (.C(clk),
        .CE(\rec_in_reg[14]_1 ),
        .D(\rin_s_reg_n_0_[4] ),
        .Q(\rec_in_reg[14]_0 [11]),
        .R(SR[1]));
  FDRE \rec_in_reg[12] 
       (.C(clk),
        .CE(\rec_in_reg[14]_1 ),
        .D(\rin_s_reg_n_0_[5] ),
        .Q(\rec_in_reg[14]_0 [12]),
        .R(SR[1]));
  FDRE \rec_in_reg[13] 
       (.C(clk),
        .CE(\rec_in_reg[14]_1 ),
        .D(\rin_s_reg_n_0_[6] ),
        .Q(\rec_in_reg[14]_0 [13]),
        .R(SR[1]));
  FDSE \rec_in_reg[14] 
       (.C(clk),
        .CE(\rec_in_reg[14]_1 ),
        .D(\rin_s_reg_n_0_[7] ),
        .Q(\rec_in_reg[14]_0 [14]),
        .S(SR[1]));
  FDRE \rec_in_reg[1] 
       (.C(clk),
        .CE(\rec_in_reg[14]_1 ),
        .D(\uio_r_reg[7]_0 [1]),
        .Q(\rec_in_reg[14]_0 [1]),
        .R(SR[0]));
  FDRE \rec_in_reg[2] 
       (.C(clk),
        .CE(\rec_in_reg[14]_1 ),
        .D(\uio_r_reg[7]_0 [2]),
        .Q(\rec_in_reg[14]_0 [2]),
        .R(SR[0]));
  FDRE \rec_in_reg[3] 
       (.C(clk),
        .CE(\rec_in_reg[14]_1 ),
        .D(\uio_r_reg[7]_0 [3]),
        .Q(\rec_in_reg[14]_0 [3]),
        .R(SR[0]));
  FDRE \rec_in_reg[4] 
       (.C(clk),
        .CE(\rec_in_reg[14]_1 ),
        .D(\uio_r_reg[7]_0 [4]),
        .Q(\rec_in_reg[14]_0 [4]),
        .R(SR[0]));
  FDRE \rec_in_reg[5] 
       (.C(clk),
        .CE(\rec_in_reg[14]_1 ),
        .D(\uio_r_reg[7]_0 [5]),
        .Q(\rec_in_reg[14]_0 [5]),
        .R(SR[0]));
  FDRE \rec_in_reg[6] 
       (.C(clk),
        .CE(\rec_in_reg[14]_1 ),
        .D(\uio_r_reg[7]_0 [6]),
        .Q(\rec_in_reg[14]_0 [6]),
        .R(SR[0]));
  FDRE \rec_in_reg[7] 
       (.C(clk),
        .CE(\rec_in_reg[14]_1 ),
        .D(\rin_s_reg_n_0_[0] ),
        .Q(\rec_in_reg[14]_0 [7]),
        .R(SR[1]));
  FDRE \rec_in_reg[8] 
       (.C(clk),
        .CE(\rec_in_reg[14]_1 ),
        .D(\rin_s_reg_n_0_[1] ),
        .Q(\rec_in_reg[14]_0 [8]),
        .R(SR[1]));
  FDRE \rec_in_reg[9] 
       (.C(clk),
        .CE(\rec_in_reg[14]_1 ),
        .D(\rin_s_reg_n_0_[2] ),
        .Q(\rec_in_reg[14]_0 [9]),
        .R(SR[1]));
  FDRE \rin_s_reg[0] 
       (.C(clk),
        .CE(\rin_s_reg[7]_1 ),
        .D(\uio_r_reg[7]_0 [0]),
        .Q(\rin_s_reg_n_0_[0] ),
        .R(\rin_s_reg[7]_0 ));
  FDRE \rin_s_reg[1] 
       (.C(clk),
        .CE(\rin_s_reg[7]_1 ),
        .D(\uio_r_reg[7]_0 [1]),
        .Q(\rin_s_reg_n_0_[1] ),
        .R(\rin_s_reg[7]_0 ));
  FDRE \rin_s_reg[2] 
       (.C(clk),
        .CE(\rin_s_reg[7]_1 ),
        .D(\uio_r_reg[7]_0 [2]),
        .Q(\rin_s_reg_n_0_[2] ),
        .R(\rin_s_reg[7]_0 ));
  FDRE \rin_s_reg[3] 
       (.C(clk),
        .CE(\rin_s_reg[7]_1 ),
        .D(\uio_r_reg[7]_0 [3]),
        .Q(\rin_s_reg_n_0_[3] ),
        .R(\rin_s_reg[7]_0 ));
  FDRE \rin_s_reg[4] 
       (.C(clk),
        .CE(\rin_s_reg[7]_1 ),
        .D(\uio_r_reg[7]_0 [4]),
        .Q(\rin_s_reg_n_0_[4] ),
        .R(\rin_s_reg[7]_0 ));
  FDRE \rin_s_reg[5] 
       (.C(clk),
        .CE(\rin_s_reg[7]_1 ),
        .D(\uio_r_reg[7]_0 [5]),
        .Q(\rin_s_reg_n_0_[5] ),
        .R(\rin_s_reg[7]_0 ));
  FDRE \rin_s_reg[6] 
       (.C(clk),
        .CE(\rin_s_reg[7]_1 ),
        .D(\uio_r_reg[7]_0 [6]),
        .Q(\rin_s_reg_n_0_[6] ),
        .R(\rin_s_reg[7]_0 ));
  FDSE \rin_s_reg[7] 
       (.C(clk),
        .CE(\rin_s_reg[7]_1 ),
        .D(\uio_r_reg[7]_0 [7]),
        .Q(\rin_s_reg_n_0_[7] ),
        .S(\rin_s_reg[7]_0 ));
  FDRE \uio_r_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(uio_in[0]),
        .Q(\uio_r_reg[7]_0 [0]),
        .R(1'b0));
  FDRE \uio_r_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(uio_in[1]),
        .Q(\uio_r_reg[7]_0 [1]),
        .R(1'b0));
  FDRE \uio_r_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(uio_in[2]),
        .Q(\uio_r_reg[7]_0 [2]),
        .R(1'b0));
  FDRE \uio_r_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(uio_in[3]),
        .Q(\uio_r_reg[7]_0 [3]),
        .R(1'b0));
  FDRE \uio_r_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(uio_in[4]),
        .Q(\uio_r_reg[7]_0 [4]),
        .R(1'b0));
  FDRE \uio_r_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(uio_in[5]),
        .Q(\uio_r_reg[7]_0 [5]),
        .R(1'b0));
  FDRE \uio_r_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(uio_in[6]),
        .Q(\uio_r_reg[7]_0 [6]),
        .R(1'b0));
  FDRE \uio_r_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(uio_in[7]),
        .Q(\uio_r_reg[7]_0 [7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h80808080808080D0)) 
    \uo[0]_i_12 
       (.I0(\uo[2]_i_5 ),
        .I1(pw_k[0]),
        .I2(\uo[2]_i_5_0 ),
        .I3(f_off11_in),
        .I4(\uo[1]_i_18_n_0 ),
        .I5(\uo[1]_i_17_n_0 ),
        .O(\pw_k_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \uo[0]_i_17 
       (.I0(\uio_r_reg[7]_0 [6]),
        .I1(lmin[6]),
        .O(\uo[0]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[0]_i_18 
       (.I0(\uio_r_reg[7]_0 [5]),
        .I1(lmin[5]),
        .I2(\uio_r_reg[7]_0 [4]),
        .I3(lmin[4]),
        .O(\uo[0]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[0]_i_19 
       (.I0(\uio_r_reg[7]_0 [3]),
        .I1(lmin[3]),
        .I2(\uio_r_reg[7]_0 [2]),
        .I3(lmin[2]),
        .O(\uo[0]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[0]_i_20 
       (.I0(\uio_r_reg[7]_0 [1]),
        .I1(lmin[1]),
        .I2(\uio_r_reg[7]_0 [0]),
        .I3(lmin[0]),
        .O(\uo[0]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \uo[1]_i_100 
       (.I0(fit2[1]),
        .I1(fit2[4]),
        .I2(fit2[2]),
        .I3(fit2[5]),
        .O(\uo[1]_i_100_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \uo[1]_i_101 
       (.I0(f_b0[0]),
        .I1(fit2[3]),
        .I2(fit2[1]),
        .I3(fit2[4]),
        .O(\uo[1]_i_101_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \uo[1]_i_102 
       (.I0(f_b0[0]),
        .I1(fit2[3]),
        .O(\uo[1]_i_102_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \uo[1]_i_104 
       (.I0(\uo_reg[2]_i_93_n_3 ),
        .O(\uo[1]_i_104_n_0 ));
  LUT6 #(
    .INIT(64'h55555514FFFFFFFF)) 
    \uo[1]_i_12 
       (.I0(\uo[2]_i_5 ),
        .I1(\uo[1]_i_16_n_0 ),
        .I2(\uo[1]_i_17_n_0 ),
        .I3(\uo[1]_i_18_n_0 ),
        .I4(f_off11_in),
        .I5(\uo[2]_i_5_0 ),
        .O(\uo[5]_i_13 ));
  LUT6 #(
    .INIT(64'h4444444544444444)) 
    \uo[1]_i_16 
       (.I0(\uo[2]_i_27_n_0 ),
        .I1(\uo[1]_i_19_n_0 ),
        .I2(\uo_reg[2]_i_34_n_2 ),
        .I3(\uo_reg[2]_i_33_n_0 ),
        .I4(\uo[2]_i_25_n_0 ),
        .I5(\uo[1]_i_20_n_0 ),
        .O(\uo[1]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT5 #(
    .INIT(32'hFFABFFA8)) 
    \uo[1]_i_17 
       (.I0(\uo[2]_i_26_n_0 ),
        .I1(\uo[2]_i_25_n_0 ),
        .I2(\uo_reg[4]_i_31_n_3 ),
        .I3(\uo_reg[4]_i_32_n_2 ),
        .I4(\uo[4]_i_27_n_0 ),
        .O(\uo[1]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \uo[1]_i_18 
       (.I0(\uo[2]_i_20_n_0 ),
        .I1(\uo[4]_i_27_n_0 ),
        .I2(\uo[1]_i_16_n_0 ),
        .I3(\uo[2]_i_30_n_0 ),
        .I4(\uo[4]_i_28_n_0 ),
        .O(\uo[1]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hEEEFEEEFEEEFEEEE)) 
    \uo[1]_i_19 
       (.I0(\uo_reg[2]_i_40_n_3 ),
        .I1(\uo_reg[2]_i_39_n_3 ),
        .I2(\uo_reg[2]_i_37_n_3 ),
        .I3(\uo_reg[2]_i_38_n_3 ),
        .I4(\uo_reg[2]_i_32_n_3 ),
        .I5(\uo_reg[2]_i_31_n_0 ),
        .O(\uo[1]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF1110)) 
    \uo[1]_i_20 
       (.I0(\uo_reg[2]_i_42_n_3 ),
        .I1(\uo_reg[2]_i_41_n_3 ),
        .I2(\uo_reg[1]_i_21_n_3 ),
        .I3(\uo_reg[1]_i_22_n_3 ),
        .I4(\uo_reg[4]_i_35_n_0 ),
        .I5(\uo_reg[4]_i_33_n_3 ),
        .O(\uo[1]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \uo[1]_i_24 
       (.I0(\uo_reg[2]_i_34_n_2 ),
        .I1(\uo_reg[1]_i_38_n_3 ),
        .O(\uo[1]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[1]_i_25 
       (.I0(\uo_reg[2]_i_34_n_2 ),
        .I1(\uo_reg[1]_i_38_n_3 ),
        .O(\uo[1]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \uo[1]_i_27 
       (.I0(\uo_reg[2]_i_34_n_2 ),
        .I1(\uo_reg[1]_i_48_n_0 ),
        .O(\uo[1]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[1]_i_28 
       (.I0(\uo_reg[1]_i_48_n_0 ),
        .I1(\uo_reg[2]_i_34_n_2 ),
        .O(\uo[1]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h15)) 
    \uo[1]_i_30 
       (.I0(\uo_reg[2]_i_34_n_2 ),
        .I1(\uo_reg[1]_i_57_n_4 ),
        .I2(\uo_reg[1]_i_57_n_5 ),
        .O(\uo[1]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h15)) 
    \uo[1]_i_31 
       (.I0(\uo_reg[2]_i_34_n_2 ),
        .I1(\uo_reg[1]_i_57_n_6 ),
        .I2(\uo_reg[1]_i_57_n_7 ),
        .O(\uo[1]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[1]_i_32 
       (.I0(pt[11]),
        .I1(\uo_reg[1]_i_58_n_4 ),
        .I2(pt[10]),
        .I3(\uo_reg[1]_i_58_n_5 ),
        .O(\uo[1]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[1]_i_33 
       (.I0(pt[9]),
        .I1(\uo_reg[1]_i_58_n_6 ),
        .I2(pt[8]),
        .I3(\uo_reg[1]_i_58_n_7 ),
        .O(\uo[1]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h18)) 
    \uo[1]_i_34 
       (.I0(\uo_reg[1]_i_57_n_4 ),
        .I1(\uo_reg[1]_i_57_n_5 ),
        .I2(\uo_reg[2]_i_34_n_2 ),
        .O(\uo[1]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h18)) 
    \uo[1]_i_35 
       (.I0(\uo_reg[1]_i_57_n_6 ),
        .I1(\uo_reg[1]_i_57_n_7 ),
        .I2(\uo_reg[2]_i_34_n_2 ),
        .O(\uo[1]_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[1]_i_36 
       (.I0(\uo_reg[1]_i_58_n_4 ),
        .I1(pt[11]),
        .I2(\uo_reg[1]_i_58_n_5 ),
        .I3(pt[10]),
        .O(\uo[1]_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[1]_i_37 
       (.I0(\uo_reg[1]_i_58_n_6 ),
        .I1(pt[9]),
        .I2(\uo_reg[1]_i_58_n_7 ),
        .I3(pt[8]),
        .O(\uo[1]_i_37_n_0 ));
  LUT3 #(
    .INIT(8'h0B)) 
    \uo[1]_i_40 
       (.I0(\uo_reg[1]_i_48_n_0 ),
        .I1(\uo_reg[1]_i_48_n_5 ),
        .I2(\uo_reg[2]_i_34_n_2 ),
        .O(\uo[1]_i_40_n_0 ));
  LUT3 #(
    .INIT(8'h15)) 
    \uo[1]_i_41 
       (.I0(\uo_reg[2]_i_34_n_2 ),
        .I1(\uo_reg[1]_i_48_n_6 ),
        .I2(\uo_reg[1]_i_48_n_7 ),
        .O(\uo[1]_i_41_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[1]_i_42 
       (.I0(pt[11]),
        .I1(\uo_reg[1]_i_67_n_4 ),
        .I2(pt[10]),
        .I3(\uo_reg[1]_i_67_n_5 ),
        .O(\uo[1]_i_42_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[1]_i_43 
       (.I0(pt[9]),
        .I1(\uo_reg[1]_i_67_n_6 ),
        .I2(pt[8]),
        .I3(\uo_reg[1]_i_67_n_7 ),
        .O(\uo[1]_i_43_n_0 ));
  LUT3 #(
    .INIT(8'h42)) 
    \uo[1]_i_44 
       (.I0(\uo_reg[1]_i_48_n_5 ),
        .I1(\uo_reg[1]_i_48_n_0 ),
        .I2(\uo_reg[2]_i_34_n_2 ),
        .O(\uo[1]_i_44_n_0 ));
  LUT3 #(
    .INIT(8'h18)) 
    \uo[1]_i_45 
       (.I0(\uo_reg[1]_i_48_n_6 ),
        .I1(\uo_reg[1]_i_48_n_7 ),
        .I2(\uo_reg[2]_i_34_n_2 ),
        .O(\uo[1]_i_45_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[1]_i_46 
       (.I0(\uo_reg[1]_i_67_n_4 ),
        .I1(pt[11]),
        .I2(\uo_reg[1]_i_67_n_5 ),
        .I3(pt[10]),
        .O(\uo[1]_i_46_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[1]_i_47 
       (.I0(\uo_reg[1]_i_67_n_6 ),
        .I1(pt[9]),
        .I2(\uo_reg[1]_i_67_n_7 ),
        .I3(pt[8]),
        .O(\uo[1]_i_47_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[1]_i_49 
       (.I0(pt[7]),
        .I1(\uo_reg[1]_i_71_n_4 ),
        .I2(pt[6]),
        .I3(\uo_reg[1]_i_71_n_5 ),
        .O(\uo[1]_i_49_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[1]_i_50 
       (.I0(pt[5]),
        .I1(\uo_reg[1]_i_71_n_6 ),
        .I2(pt[4]),
        .I3(\uo_reg[1]_i_71_n_7 ),
        .O(\uo[1]_i_50_n_0 ));
  LUT4 #(
    .INIT(16'h444D)) 
    \uo[1]_i_51 
       (.I0(fit2[2]),
        .I1(pt[3]),
        .I2(fit2[1]),
        .I3(\uo[2]_i_180_n_0 ),
        .O(\uo[1]_i_51_n_0 ));
  LUT4 #(
    .INIT(16'h1F44)) 
    \uo[1]_i_52 
       (.I0(\uo_reg[2]_i_60_n_0 ),
        .I1(f_b0[0]),
        .I2(\uo[2]_i_181_n_0 ),
        .I3(fit2[1]),
        .O(\uo[1]_i_52_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[1]_i_53 
       (.I0(\uo_reg[1]_i_71_n_4 ),
        .I1(pt[7]),
        .I2(\uo_reg[1]_i_71_n_5 ),
        .I3(pt[6]),
        .O(\uo[1]_i_53_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[1]_i_54 
       (.I0(\uo_reg[1]_i_71_n_6 ),
        .I1(pt[5]),
        .I2(\uo_reg[1]_i_71_n_7 ),
        .I3(pt[4]),
        .O(\uo[1]_i_54_n_0 ));
  LUT4 #(
    .INIT(16'h6006)) 
    \uo[1]_i_55 
       (.I0(\uo[2]_i_180_n_0 ),
        .I1(fit2[1]),
        .I2(pt[3]),
        .I3(fit2[2]),
        .O(\uo[1]_i_55_n_0 ));
  LUT4 #(
    .INIT(16'h2033)) 
    \uo[1]_i_56 
       (.I0(\uo_reg[2]_i_60_n_0 ),
        .I1(f_b0[0]),
        .I2(\uo[2]_i_181_n_0 ),
        .I3(fit2[1]),
        .O(\uo[1]_i_56_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[1]_i_59 
       (.I0(pt[7]),
        .I1(\uo_reg[4]_i_160_n_4 ),
        .I2(pt[6]),
        .I3(\uo_reg[4]_i_160_n_5 ),
        .O(\uo[1]_i_59_n_0 ));
  LUT5 #(
    .INIT(32'hB22222B2)) 
    \uo[1]_i_60 
       (.I0(pt[5]),
        .I1(\uo_reg[4]_i_160_n_6 ),
        .I2(pt[4]),
        .I3(fit2[2]),
        .I4(f_b0[0]),
        .O(\uo[1]_i_60_n_0 ));
  LUT4 #(
    .INIT(16'h1F01)) 
    \uo[1]_i_61 
       (.I0(f_b0[0]),
        .I1(\uo[2]_i_180_n_0 ),
        .I2(fit2[1]),
        .I3(pt[3]),
        .O(\uo[1]_i_61_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \uo[1]_i_62 
       (.I0(fit2[1]),
        .I1(f_b0[0]),
        .I2(\uo[4]_i_137_n_0 ),
        .O(\uo[1]_i_62_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[1]_i_63 
       (.I0(\uo_reg[4]_i_160_n_4 ),
        .I1(pt[7]),
        .I2(\uo_reg[4]_i_160_n_5 ),
        .I3(pt[6]),
        .O(\uo[1]_i_63_n_0 ));
  LUT5 #(
    .INIT(32'h09909009)) 
    \uo[1]_i_64 
       (.I0(\uo_reg[4]_i_160_n_6 ),
        .I1(pt[5]),
        .I2(f_b0[0]),
        .I3(fit2[2]),
        .I4(pt[4]),
        .O(\uo[1]_i_64_n_0 ));
  LUT4 #(
    .INIT(16'h0990)) 
    \uo[1]_i_65 
       (.I0(pt[3]),
        .I1(fit2[1]),
        .I2(f_b0[0]),
        .I3(\uo[2]_i_180_n_0 ),
        .O(\uo[1]_i_65_n_0 ));
  LUT3 #(
    .INIT(8'hF1)) 
    \uo[1]_i_66 
       (.I0(fit2[1]),
        .I1(f_b0[0]),
        .I2(\uo[4]_i_137_n_0 ),
        .O(\uo[1]_i_66_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \uo[1]_i_68 
       (.I0(fit2[8]),
        .O(\uo[1]_i_68_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \uo[1]_i_69 
       (.I0(fit2[8]),
        .O(\uo[1]_i_69_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \uo[1]_i_7 
       (.I0(\uio_r_reg[7]_0 [1]),
        .I1(\uio_r_reg[7]_0 [0]),
        .I2(run),
        .O(\uio_r_reg[1]_0 ));
  LUT3 #(
    .INIT(8'h2D)) 
    \uo[1]_i_70 
       (.I0(fit2[7]),
        .I1(\uo_reg[2]_i_93_n_3 ),
        .I2(fit2[8]),
        .O(\uo[1]_i_70_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \uo[1]_i_72 
       (.I0(\uo_reg[2]_i_93_n_3 ),
        .I1(\uo_reg[1]_i_103_n_1 ),
        .O(\uo[1]_i_72_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[1]_i_73 
       (.I0(\uo_reg[2]_i_93_n_3 ),
        .I1(\uo_reg[1]_i_103_n_1 ),
        .O(\uo[1]_i_73_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \uo[1]_i_74 
       (.I0(\uo_reg[2]_i_93_n_3 ),
        .I1(fit2[8]),
        .O(\uo[1]_i_74_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \uo[1]_i_75 
       (.I0(\uo_reg[1]_i_103_n_7 ),
        .I1(fit2[7]),
        .O(\uo[1]_i_75_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \uo[1]_i_76 
       (.I0(\uo_reg[2]_i_93_n_3 ),
        .I1(\uo_reg[1]_i_103_n_1 ),
        .O(\uo[1]_i_76_n_0 ));
  LUT3 #(
    .INIT(8'h65)) 
    \uo[1]_i_77 
       (.I0(\uo_reg[1]_i_103_n_1 ),
        .I1(\uo_reg[1]_i_103_n_6 ),
        .I2(\uo_reg[2]_i_93_n_3 ),
        .O(\uo[1]_i_77_n_0 ));
  LUT3 #(
    .INIT(8'h6C)) 
    \uo[1]_i_78 
       (.I0(fit2[8]),
        .I1(\uo_reg[1]_i_103_n_6 ),
        .I2(\uo_reg[2]_i_93_n_3 ),
        .O(\uo[1]_i_78_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \uo[1]_i_79 
       (.I0(fit2[7]),
        .I1(\uo_reg[1]_i_103_n_7 ),
        .I2(\uo_reg[2]_i_93_n_3 ),
        .I3(fit2[8]),
        .O(\uo[1]_i_79_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \uo[1]_i_80 
       (.I0(fit2[7]),
        .I1(\uo_reg[1]_i_103_n_7 ),
        .O(\uo[1]_i_80_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \uo[1]_i_81 
       (.I0(fit2[8]),
        .I1(fit2[5]),
        .O(\uo[1]_i_81_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \uo[1]_i_82 
       (.I0(fit2[7]),
        .I1(fit2[4]),
        .O(\uo[1]_i_82_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \uo[1]_i_83 
       (.I0(fit2[6]),
        .I1(fit2[3]),
        .O(\uo[1]_i_83_n_0 ));
  LUT4 #(
    .INIT(16'h6669)) 
    \uo[1]_i_84 
       (.I0(\uo_reg[1]_i_103_n_7 ),
        .I1(fit2[7]),
        .I2(fit2[6]),
        .I3(\uo_reg[2]_i_93_n_3 ),
        .O(\uo[1]_i_84_n_0 ));
  LUT4 #(
    .INIT(16'h4BB4)) 
    \uo[1]_i_85 
       (.I0(fit2[5]),
        .I1(fit2[8]),
        .I2(fit2[6]),
        .I3(\uo_reg[2]_i_93_n_3 ),
        .O(\uo[1]_i_85_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \uo[1]_i_86 
       (.I0(fit2[4]),
        .I1(fit2[7]),
        .I2(fit2[8]),
        .I3(fit2[5]),
        .O(\uo[1]_i_86_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \uo[1]_i_87 
       (.I0(fit2[3]),
        .I1(fit2[6]),
        .I2(fit2[7]),
        .I3(fit2[4]),
        .O(\uo[1]_i_87_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \uo[1]_i_88 
       (.I0(fit2[7]),
        .I1(\uo_reg[2]_i_93_n_3 ),
        .O(\uo[1]_i_88_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \uo[1]_i_89 
       (.I0(fit2[7]),
        .I1(fit2[5]),
        .O(\uo[1]_i_89_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \uo[1]_i_90 
       (.I0(fit2[6]),
        .I1(fit2[4]),
        .O(\uo[1]_i_90_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \uo[1]_i_91 
       (.I0(fit2[5]),
        .I1(fit2[3]),
        .O(\uo[1]_i_91_n_0 ));
  LUT4 #(
    .INIT(16'h6966)) 
    \uo[1]_i_92 
       (.I0(\uo_reg[2]_i_93_n_3 ),
        .I1(fit2[7]),
        .I2(fit2[6]),
        .I3(fit2[8]),
        .O(\uo[1]_i_92_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \uo[1]_i_93 
       (.I0(fit2[5]),
        .I1(fit2[7]),
        .I2(fit2[6]),
        .I3(fit2[8]),
        .O(\uo[1]_i_93_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \uo[1]_i_94 
       (.I0(fit2[4]),
        .I1(fit2[6]),
        .I2(fit2[5]),
        .I3(fit2[7]),
        .O(\uo[1]_i_94_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \uo[1]_i_95 
       (.I0(fit2[3]),
        .I1(fit2[5]),
        .I2(fit2[4]),
        .I3(fit2[6]),
        .O(\uo[1]_i_95_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \uo[1]_i_96 
       (.I0(fit2[5]),
        .I1(fit2[2]),
        .O(\uo[1]_i_96_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \uo[1]_i_97 
       (.I0(fit2[4]),
        .I1(fit2[1]),
        .O(\uo[1]_i_97_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \uo[1]_i_98 
       (.I0(fit2[3]),
        .I1(f_b0[0]),
        .O(\uo[1]_i_98_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \uo[1]_i_99 
       (.I0(fit2[2]),
        .I1(fit2[5]),
        .I2(fit2[3]),
        .I3(fit2[6]),
        .O(\uo[1]_i_99_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \uo[2]_i_100 
       (.I0(\uo_reg[2]_i_34_n_2 ),
        .I1(\uo_reg[2]_i_93_n_3 ),
        .O(\uo[2]_i_100_n_0 ));
  LUT4 #(
    .INIT(16'h6006)) 
    \uo[2]_i_101 
       (.I0(pt[11]),
        .I1(\uo_reg[2]_i_93_n_3 ),
        .I2(fit2[8]),
        .I3(pt[10]),
        .O(\uo[2]_i_101_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[2]_i_102 
       (.I0(fit2[7]),
        .I1(pt[9]),
        .I2(fit2[6]),
        .I3(pt[8]),
        .O(\uo[2]_i_102_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[2]_i_103 
       (.I0(pt[7]),
        .I1(\uo[4]_i_94_n_0 ),
        .I2(pt[6]),
        .I3(\uo[2]_i_198_n_0 ),
        .O(\uo[2]_i_103_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[2]_i_104 
       (.I0(pt[5]),
        .I1(\uo[2]_i_199_n_0 ),
        .I2(pt[4]),
        .I3(\uo[2]_i_200_n_0 ),
        .O(\uo[2]_i_104_n_0 ));
  LUT5 #(
    .INIT(32'hA802EA83)) 
    \uo[2]_i_105 
       (.I0(pt[3]),
        .I1(f_b0[0]),
        .I2(fit2[1]),
        .I3(fit2[2]),
        .I4(\uo[2]_i_180_n_0 ),
        .O(\uo[2]_i_105_n_0 ));
  LUT4 #(
    .INIT(16'h1F44)) 
    \uo[2]_i_106 
       (.I0(\uo_reg[2]_i_60_n_0 ),
        .I1(f_b0[0]),
        .I2(\uo[2]_i_181_n_0 ),
        .I3(fit2[1]),
        .O(\uo[2]_i_106_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[2]_i_107 
       (.I0(\uo[4]_i_94_n_0 ),
        .I1(pt[7]),
        .I2(\uo[2]_i_198_n_0 ),
        .I3(pt[6]),
        .O(\uo[2]_i_107_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[2]_i_108 
       (.I0(\uo[2]_i_199_n_0 ),
        .I1(pt[5]),
        .I2(\uo[2]_i_200_n_0 ),
        .I3(pt[4]),
        .O(\uo[2]_i_108_n_0 ));
  LUT5 #(
    .INIT(32'h60060690)) 
    \uo[2]_i_109 
       (.I0(fit2[2]),
        .I1(pt[3]),
        .I2(\uo[2]_i_180_n_0 ),
        .I3(f_b0[0]),
        .I4(fit2[1]),
        .O(\uo[2]_i_109_n_0 ));
  LUT4 #(
    .INIT(16'h2033)) 
    \uo[2]_i_110 
       (.I0(\uo_reg[2]_i_60_n_0 ),
        .I1(f_b0[0]),
        .I2(\uo[2]_i_181_n_0 ),
        .I3(fit2[1]),
        .O(\uo[2]_i_110_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \uo[2]_i_111 
       (.I0(fit2[7]),
        .I1(\uo[2]_i_112_n_0 ),
        .I2(fit2[6]),
        .I3(fit2[8]),
        .O(\uo[2]_i_111_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \uo[2]_i_112 
       (.I0(fit2[4]),
        .I1(fit2[2]),
        .I2(f_b0[0]),
        .I3(fit2[1]),
        .I4(fit2[3]),
        .I5(fit2[5]),
        .O(\uo[2]_i_112_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT4 #(
    .INIT(16'h5565)) 
    \uo[2]_i_113 
       (.I0(fit2[8]),
        .I1(fit2[7]),
        .I2(\uo[2]_i_112_n_0 ),
        .I3(fit2[6]),
        .O(\uo[2]_i_113_n_0 ));
  LUT5 #(
    .INIT(32'hF0A5D287)) 
    \uo[2]_i_116 
       (.I0(\uo_reg[2]_i_93_n_3 ),
        .I1(\uo[2]_i_111_n_0 ),
        .I2(pt0[6]),
        .I3(\uo[2]_i_181_n_0 ),
        .I4(\uo_reg[2]_i_60_n_0 ),
        .O(\uo[2]_i_116_n_0 ));
  LUT5 #(
    .INIT(32'hF096A587)) 
    \uo[2]_i_117 
       (.I0(\uo_reg[2]_i_93_n_3 ),
        .I1(\uo[2]_i_111_n_0 ),
        .I2(pt0[5]),
        .I3(\uo_reg[2]_i_60_n_0 ),
        .I4(\uo[2]_i_181_n_0 ),
        .O(\uo[2]_i_117_n_0 ));
  LUT5 #(
    .INIT(32'hA6A655A6)) 
    \uo[2]_i_118 
       (.I0(pt0[4]),
        .I1(fit2[8]),
        .I2(\uo[2]_i_181_n_0 ),
        .I3(\uo[2]_i_113_n_0 ),
        .I4(\uo_reg[2]_i_60_n_0 ),
        .O(\uo[2]_i_118_n_0 ));
  LUT6 #(
    .INIT(64'hFF0055AA9A6510EF)) 
    \uo[2]_i_119 
       (.I0(fit2[7]),
        .I1(fit2[6]),
        .I2(\uo[2]_i_112_n_0 ),
        .I3(pt0[3]),
        .I4(\uo[2]_i_181_n_0 ),
        .I5(\uo_reg[2]_i_60_n_0 ),
        .O(\uo[2]_i_119_n_0 ));
  LUT6 #(
    .INIT(64'h45544555FFFFFFFF)) 
    \uo[2]_i_12 
       (.I0(\uo[2]_i_5 ),
        .I1(f_off11_in),
        .I2(\uo[2]_i_19_n_0 ),
        .I3(\uo[2]_i_20_n_0 ),
        .I4(\uo[2]_i_21_n_0 ),
        .I5(\uo[2]_i_5_0 ),
        .O(\uo[5]_i_13_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[2]_i_120 
       (.I0(\m_s2_reg_n_0_[6] ),
        .I1(\m_s0_reg_n_0_[6] ),
        .O(\uo[2]_i_120_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[2]_i_121 
       (.I0(\m_s2_reg_n_0_[5] ),
        .I1(\m_s0_reg_n_0_[5] ),
        .O(\uo[2]_i_121_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[2]_i_122 
       (.I0(\m_s2_reg_n_0_[4] ),
        .I1(\m_s0_reg_n_0_[4] ),
        .O(\uo[2]_i_122_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \uo[2]_i_124 
       (.I0(\uo_reg[2]_i_34_n_2 ),
        .I1(\uo_reg[2]_i_132_n_2 ),
        .I2(\uo_reg[2]_i_132_n_7 ),
        .O(\uo[2]_i_124_n_0 ));
  LUT3 #(
    .INIT(8'h15)) 
    \uo[2]_i_125 
       (.I0(\uo_reg[2]_i_34_n_2 ),
        .I1(\uo_reg[2]_i_217_n_4 ),
        .I2(\uo_reg[2]_i_217_n_5 ),
        .O(\uo[2]_i_125_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[2]_i_126 
       (.I0(pt[11]),
        .I1(\uo_reg[2]_i_217_n_6 ),
        .I2(pt[10]),
        .I3(\uo_reg[2]_i_217_n_7 ),
        .O(\uo[2]_i_126_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[2]_i_127 
       (.I0(pt[9]),
        .I1(\uo_reg[2]_i_218_n_7 ),
        .I2(pt[8]),
        .I3(\uo_reg[2]_i_219_n_4 ),
        .O(\uo[2]_i_127_n_0 ));
  LUT3 #(
    .INIT(8'h42)) 
    \uo[2]_i_128 
       (.I0(\uo_reg[2]_i_132_n_7 ),
        .I1(\uo_reg[2]_i_34_n_2 ),
        .I2(\uo_reg[2]_i_132_n_2 ),
        .O(\uo[2]_i_128_n_0 ));
  LUT3 #(
    .INIT(8'h18)) 
    \uo[2]_i_129 
       (.I0(\uo_reg[2]_i_217_n_4 ),
        .I1(\uo_reg[2]_i_217_n_5 ),
        .I2(\uo_reg[2]_i_34_n_2 ),
        .O(\uo[2]_i_129_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[2]_i_130 
       (.I0(\uo_reg[2]_i_217_n_6 ),
        .I1(pt[11]),
        .I2(\uo_reg[2]_i_217_n_7 ),
        .I3(pt[10]),
        .O(\uo[2]_i_130_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[2]_i_131 
       (.I0(\uo_reg[2]_i_218_n_7 ),
        .I1(pt[9]),
        .I2(\uo_reg[2]_i_219_n_4 ),
        .I3(pt[8]),
        .O(\uo[2]_i_131_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \uo[2]_i_134 
       (.I0(\uo_reg[2]_i_34_n_2 ),
        .O(\uo[2]_i_134_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \uo[2]_i_135 
       (.I0(\uo_reg[2]_i_93_n_3 ),
        .I1(\uo_reg[2]_i_34_n_2 ),
        .O(\uo[2]_i_135_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[2]_i_136 
       (.I0(pt[11]),
        .I1(fit2[8]),
        .I2(pt[10]),
        .I3(fit2[7]),
        .O(\uo[2]_i_136_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[2]_i_137 
       (.I0(pt[9]),
        .I1(fit2[6]),
        .I2(pt[8]),
        .I3(fit2[5]),
        .O(\uo[2]_i_137_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[2]_i_138 
       (.I0(\uo_reg[2]_i_93_n_3 ),
        .I1(\uo_reg[2]_i_34_n_2 ),
        .O(\uo[2]_i_138_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[2]_i_139 
       (.I0(fit2[8]),
        .I1(pt[11]),
        .I2(fit2[7]),
        .I3(pt[10]),
        .O(\uo[2]_i_139_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[2]_i_140 
       (.I0(fit2[6]),
        .I1(pt[9]),
        .I2(fit2[5]),
        .I3(pt[8]),
        .O(\uo[2]_i_140_n_0 ));
  LUT3 #(
    .INIT(8'h15)) 
    \uo[2]_i_142 
       (.I0(\uo_reg[2]_i_34_n_2 ),
        .I1(\uo_reg[2]_i_150_n_6 ),
        .I2(\uo_reg[2]_i_150_n_7 ),
        .O(\uo[2]_i_142_n_0 ));
  LUT3 #(
    .INIT(8'h15)) 
    \uo[2]_i_143 
       (.I0(\uo_reg[2]_i_34_n_2 ),
        .I1(\uo_reg[2]_i_238_n_4 ),
        .I2(\uo_reg[2]_i_238_n_5 ),
        .O(\uo[2]_i_143_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[2]_i_144 
       (.I0(pt[11]),
        .I1(\uo_reg[2]_i_238_n_6 ),
        .I2(pt[10]),
        .I3(\uo_reg[2]_i_238_n_7 ),
        .O(\uo[2]_i_144_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[2]_i_145 
       (.I0(pt[9]),
        .I1(\uo_reg[2]_i_239_n_4 ),
        .I2(pt[8]),
        .I3(\uo_reg[2]_i_239_n_5 ),
        .O(\uo[2]_i_145_n_0 ));
  LUT3 #(
    .INIT(8'h18)) 
    \uo[2]_i_146 
       (.I0(\uo_reg[2]_i_150_n_6 ),
        .I1(\uo_reg[2]_i_150_n_7 ),
        .I2(\uo_reg[2]_i_34_n_2 ),
        .O(\uo[2]_i_146_n_0 ));
  LUT3 #(
    .INIT(8'h18)) 
    \uo[2]_i_147 
       (.I0(\uo_reg[2]_i_238_n_4 ),
        .I1(\uo_reg[2]_i_238_n_5 ),
        .I2(\uo_reg[2]_i_34_n_2 ),
        .O(\uo[2]_i_147_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[2]_i_148 
       (.I0(\uo_reg[2]_i_238_n_6 ),
        .I1(pt[11]),
        .I2(\uo_reg[2]_i_238_n_7 ),
        .I3(pt[10]),
        .O(\uo[2]_i_148_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[2]_i_149 
       (.I0(\uo_reg[2]_i_239_n_4 ),
        .I1(pt[9]),
        .I2(\uo_reg[2]_i_239_n_5 ),
        .I3(pt[8]),
        .O(\uo[2]_i_149_n_0 ));
  LUT3 #(
    .INIT(8'h15)) 
    \uo[2]_i_152 
       (.I0(\uo_reg[2]_i_34_n_2 ),
        .I1(\uo_reg[2]_i_160_n_6 ),
        .I2(\uo_reg[2]_i_160_n_7 ),
        .O(\uo[2]_i_152_n_0 ));
  LUT3 #(
    .INIT(8'h15)) 
    \uo[2]_i_153 
       (.I0(\uo_reg[2]_i_34_n_2 ),
        .I1(\uo_reg[2]_i_252_n_4 ),
        .I2(\uo_reg[2]_i_252_n_5 ),
        .O(\uo[2]_i_153_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[2]_i_154 
       (.I0(pt[11]),
        .I1(\uo_reg[2]_i_252_n_6 ),
        .I2(pt[10]),
        .I3(\uo_reg[2]_i_252_n_7 ),
        .O(\uo[2]_i_154_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[2]_i_155 
       (.I0(pt[9]),
        .I1(\uo_reg[2]_i_253_n_4 ),
        .I2(pt[8]),
        .I3(\uo_reg[2]_i_253_n_5 ),
        .O(\uo[2]_i_155_n_0 ));
  LUT3 #(
    .INIT(8'h18)) 
    \uo[2]_i_156 
       (.I0(\uo_reg[2]_i_160_n_6 ),
        .I1(\uo_reg[2]_i_160_n_7 ),
        .I2(\uo_reg[2]_i_34_n_2 ),
        .O(\uo[2]_i_156_n_0 ));
  LUT3 #(
    .INIT(8'h18)) 
    \uo[2]_i_157 
       (.I0(\uo_reg[2]_i_252_n_4 ),
        .I1(\uo_reg[2]_i_252_n_5 ),
        .I2(\uo_reg[2]_i_34_n_2 ),
        .O(\uo[2]_i_157_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[2]_i_158 
       (.I0(\uo_reg[2]_i_252_n_6 ),
        .I1(pt[11]),
        .I2(\uo_reg[2]_i_252_n_7 ),
        .I3(pt[10]),
        .O(\uo[2]_i_158_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[2]_i_159 
       (.I0(\uo_reg[2]_i_253_n_4 ),
        .I1(pt[9]),
        .I2(\uo_reg[2]_i_253_n_5 ),
        .I3(pt[8]),
        .O(\uo[2]_i_159_n_0 ));
  LUT3 #(
    .INIT(8'h15)) 
    \uo[2]_i_162 
       (.I0(\uo_reg[2]_i_34_n_2 ),
        .I1(\uo_reg[2]_i_263_n_4 ),
        .I2(\uo_reg[2]_i_263_n_5 ),
        .O(\uo[2]_i_162_n_0 ));
  LUT3 #(
    .INIT(8'h15)) 
    \uo[2]_i_163 
       (.I0(\uo_reg[2]_i_34_n_2 ),
        .I1(\uo_reg[2]_i_263_n_6 ),
        .I2(\uo_reg[2]_i_263_n_7 ),
        .O(\uo[2]_i_163_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[2]_i_164 
       (.I0(pt[11]),
        .I1(\uo_reg[2]_i_264_n_4 ),
        .I2(pt[10]),
        .I3(\uo_reg[2]_i_264_n_5 ),
        .O(\uo[2]_i_164_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[2]_i_165 
       (.I0(pt[9]),
        .I1(\uo_reg[2]_i_264_n_6 ),
        .I2(pt[8]),
        .I3(\uo_reg[2]_i_264_n_7 ),
        .O(\uo[2]_i_165_n_0 ));
  LUT3 #(
    .INIT(8'h18)) 
    \uo[2]_i_166 
       (.I0(\uo_reg[2]_i_263_n_4 ),
        .I1(\uo_reg[2]_i_263_n_5 ),
        .I2(\uo_reg[2]_i_34_n_2 ),
        .O(\uo[2]_i_166_n_0 ));
  LUT3 #(
    .INIT(8'h18)) 
    \uo[2]_i_167 
       (.I0(\uo_reg[2]_i_263_n_6 ),
        .I1(\uo_reg[2]_i_263_n_7 ),
        .I2(\uo_reg[2]_i_34_n_2 ),
        .O(\uo[2]_i_167_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[2]_i_168 
       (.I0(\uo_reg[2]_i_264_n_4 ),
        .I1(pt[11]),
        .I2(\uo_reg[2]_i_264_n_5 ),
        .I3(pt[10]),
        .O(\uo[2]_i_168_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[2]_i_169 
       (.I0(\uo_reg[2]_i_264_n_6 ),
        .I1(pt[9]),
        .I2(\uo_reg[2]_i_264_n_7 ),
        .I3(pt[8]),
        .O(\uo[2]_i_169_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \uo[2]_i_172 
       (.I0(\uo[2]_i_111_n_0 ),
        .I1(\uo_reg[2]_i_34_n_2 ),
        .I2(\uo_reg[2]_i_93_n_3 ),
        .O(\uo[2]_i_172_n_0 ));
  LUT3 #(
    .INIT(8'h0D)) 
    \uo[2]_i_173 
       (.I0(\uo_reg[2]_i_93_n_3 ),
        .I1(\uo[2]_i_111_n_0 ),
        .I2(\uo_reg[2]_i_34_n_2 ),
        .O(\uo[2]_i_173_n_0 ));
  LUT6 #(
    .INIT(64'h9A00FF9A0000FF00)) 
    \uo[2]_i_174 
       (.I0(fit2[7]),
        .I1(fit2[6]),
        .I2(\uo[2]_i_112_n_0 ),
        .I3(pt[11]),
        .I4(\uo[2]_i_113_n_0 ),
        .I5(pt[10]),
        .O(\uo[2]_i_174_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[2]_i_175 
       (.I0(pt[9]),
        .I1(\uo[4]_i_94_n_0 ),
        .I2(pt[8]),
        .I3(\uo[2]_i_198_n_0 ),
        .O(\uo[2]_i_175_n_0 ));
  LUT3 #(
    .INIT(8'h87)) 
    \uo[2]_i_176 
       (.I0(\uo_reg[2]_i_93_n_3 ),
        .I1(\uo[2]_i_111_n_0 ),
        .I2(\uo_reg[2]_i_34_n_2 ),
        .O(\uo[2]_i_176_n_0 ));
  LUT3 #(
    .INIT(8'h92)) 
    \uo[2]_i_177 
       (.I0(\uo_reg[2]_i_93_n_3 ),
        .I1(\uo[2]_i_111_n_0 ),
        .I2(\uo_reg[2]_i_34_n_2 ),
        .O(\uo[2]_i_177_n_0 ));
  LUT6 #(
    .INIT(64'h650000659A00009A)) 
    \uo[2]_i_178 
       (.I0(fit2[7]),
        .I1(fit2[6]),
        .I2(\uo[2]_i_112_n_0 ),
        .I3(\uo[2]_i_113_n_0 ),
        .I4(pt[11]),
        .I5(pt[10]),
        .O(\uo[2]_i_178_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[2]_i_179 
       (.I0(\uo[4]_i_94_n_0 ),
        .I1(pt[9]),
        .I2(\uo[2]_i_198_n_0 ),
        .I3(pt[8]),
        .O(\uo[2]_i_179_n_0 ));
  LUT5 #(
    .INIT(32'hFE00ABAB)) 
    \uo[2]_i_180 
       (.I0(\uo_reg[2]_i_60_n_0 ),
        .I1(fit2[1]),
        .I2(f_b0[0]),
        .I3(\uo[2]_i_181_n_0 ),
        .I4(fit2[2]),
        .O(\uo[2]_i_180_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    \uo[2]_i_181 
       (.I0(\uo[2]_i_273_n_0 ),
        .I1(pt0[2]),
        .I2(pt0[5]),
        .I3(pt0[3]),
        .I4(\uo_reg[2]_i_60_n_0 ),
        .O(\uo[2]_i_181_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \uo[2]_i_182 
       (.I0(f_b0[7]),
        .I1(p_0_in[7]),
        .O(\uo[2]_i_182_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \uo[2]_i_183 
       (.I0(f_b0[6]),
        .I1(p_0_in[6]),
        .O(\uo[2]_i_183_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \uo[2]_i_184 
       (.I0(f_b0[5]),
        .I1(p_0_in[5]),
        .O(\uo[2]_i_184_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \uo[2]_i_185 
       (.I0(f_b0[4]),
        .I1(p_0_in[4]),
        .O(\uo[2]_i_185_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \uo[2]_i_186 
       (.I0(p_0_in[7]),
        .I1(f_b0[7]),
        .O(\uo[2]_i_186_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \uo[2]_i_187 
       (.I0(p_0_in[6]),
        .I1(f_b0[6]),
        .I2(p_0_in[7]),
        .I3(f_b0[7]),
        .O(\uo[2]_i_187_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \uo[2]_i_188 
       (.I0(p_0_in[5]),
        .I1(f_b0[5]),
        .I2(p_0_in[6]),
        .I3(f_b0[6]),
        .O(\uo[2]_i_188_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \uo[2]_i_189 
       (.I0(p_0_in[4]),
        .I1(f_b0[4]),
        .I2(p_0_in[5]),
        .I3(f_b0[5]),
        .O(\uo[2]_i_189_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFECCCE)) 
    \uo[2]_i_19 
       (.I0(\uo[4]_i_27_n_0 ),
        .I1(\uo_reg[4]_i_32_n_2 ),
        .I2(\uo_reg[4]_i_31_n_3 ),
        .I3(\uo[2]_i_25_n_0 ),
        .I4(\uo[2]_i_26_n_0 ),
        .I5(\uo[1]_i_16_n_0 ),
        .O(\uo[2]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[2]_i_190 
       (.I0(pt[7]),
        .I1(fit2[5]),
        .I2(pt[6]),
        .I3(fit2[4]),
        .O(\uo[2]_i_190_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[2]_i_191 
       (.I0(pt[5]),
        .I1(fit2[3]),
        .I2(pt[4]),
        .I3(fit2[2]),
        .O(\uo[2]_i_191_n_0 ));
  LUT4 #(
    .INIT(16'h1F01)) 
    \uo[2]_i_192 
       (.I0(f_b0[0]),
        .I1(\uo[2]_i_180_n_0 ),
        .I2(fit2[1]),
        .I3(pt[3]),
        .O(\uo[2]_i_192_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \uo[2]_i_193 
       (.I0(fit2[1]),
        .I1(f_b0[0]),
        .I2(\uo[4]_i_137_n_0 ),
        .O(\uo[2]_i_193_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[2]_i_194 
       (.I0(fit2[5]),
        .I1(pt[7]),
        .I2(fit2[4]),
        .I3(pt[6]),
        .O(\uo[2]_i_194_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[2]_i_195 
       (.I0(fit2[3]),
        .I1(pt[5]),
        .I2(pt[4]),
        .I3(fit2[2]),
        .O(\uo[2]_i_195_n_0 ));
  LUT4 #(
    .INIT(16'h0990)) 
    \uo[2]_i_196 
       (.I0(pt[3]),
        .I1(fit2[1]),
        .I2(f_b0[0]),
        .I3(\uo[2]_i_180_n_0 ),
        .O(\uo[2]_i_196_n_0 ));
  LUT3 #(
    .INIT(8'hF1)) 
    \uo[2]_i_197 
       (.I0(fit2[1]),
        .I1(f_b0[0]),
        .I2(\uo[4]_i_137_n_0 ),
        .O(\uo[2]_i_197_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555556)) 
    \uo[2]_i_198 
       (.I0(fit2[5]),
        .I1(fit2[4]),
        .I2(fit2[2]),
        .I3(f_b0[0]),
        .I4(fit2[1]),
        .I5(fit2[3]),
        .O(\uo[2]_i_198_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT5 #(
    .INIT(32'h55555556)) 
    \uo[2]_i_199 
       (.I0(fit2[4]),
        .I1(fit2[3]),
        .I2(fit2[1]),
        .I3(f_b0[0]),
        .I4(fit2[2]),
        .O(\uo[2]_i_199_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \uo[2]_i_2 
       (.I0(run),
        .I1(\uio_r_reg[7]_0 [0]),
        .I2(\uio_r_reg[7]_0 [1]),
        .I3(\uio_r_reg[7]_0 [2]),
        .O(run_reg_3));
  LUT6 #(
    .INIT(64'h4444444444444445)) 
    \uo[2]_i_20 
       (.I0(\uo[2]_i_27_n_0 ),
        .I1(\uo[2]_i_28_n_0 ),
        .I2(\uo[2]_i_29_n_0 ),
        .I3(\uo[2]_i_30_n_0 ),
        .I4(\uo_reg[2]_i_31_n_0 ),
        .I5(\uo_reg[2]_i_32_n_3 ),
        .O(\uo[2]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT4 #(
    .INIT(16'h5556)) 
    \uo[2]_i_200 
       (.I0(fit2[3]),
        .I1(fit2[2]),
        .I2(f_b0[0]),
        .I3(fit2[1]),
        .O(\uo[2]_i_200_n_0 ));
  LUT5 #(
    .INIT(32'hA6A655A6)) 
    \uo[2]_i_201 
       (.I0(pt0[2]),
        .I1(fit2[6]),
        .I2(\uo[2]_i_181_n_0 ),
        .I3(\uo[4]_i_94_n_0 ),
        .I4(\uo_reg[2]_i_60_n_0 ),
        .O(\uo[2]_i_201_n_0 ));
  LUT5 #(
    .INIT(32'hA6A655A6)) 
    \uo[2]_i_202 
       (.I0(pt0[1]),
        .I1(fit2[5]),
        .I2(\uo[2]_i_181_n_0 ),
        .I3(\uo[2]_i_198_n_0 ),
        .I4(\uo_reg[2]_i_60_n_0 ),
        .O(\uo[2]_i_202_n_0 ));
  LUT5 #(
    .INIT(32'hA6A655A6)) 
    \uo[2]_i_203 
       (.I0(pt0[0]),
        .I1(fit2[4]),
        .I2(\uo[2]_i_181_n_0 ),
        .I3(\uo[2]_i_199_n_0 ),
        .I4(\uo_reg[2]_i_60_n_0 ),
        .O(\uo[2]_i_203_n_0 ));
  LUT6 #(
    .INIT(64'h0001FFFF55545554)) 
    \uo[2]_i_204 
       (.I0(\uo_reg[2]_i_60_n_0 ),
        .I1(fit2[2]),
        .I2(f_b0[0]),
        .I3(fit2[1]),
        .I4(\uo[2]_i_181_n_0 ),
        .I5(fit2[3]),
        .O(C));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[2]_i_205 
       (.I0(\m_s2_reg_n_0_[3] ),
        .I1(\m_s0_reg_n_0_[3] ),
        .O(\uo[2]_i_205_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[2]_i_206 
       (.I0(\m_s2_reg_n_0_[2] ),
        .I1(\m_s0_reg_n_0_[2] ),
        .O(\uo[2]_i_206_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[2]_i_207 
       (.I0(\m_s2_reg_n_0_[1] ),
        .I1(\m_s0_reg_n_0_[1] ),
        .O(\uo[2]_i_207_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[2]_i_208 
       (.I0(\m_s2_reg_n_0_[0] ),
        .I1(\m_s0_reg_n_0_[0] ),
        .O(\uo[2]_i_208_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[2]_i_209 
       (.I0(pt[7]),
        .I1(\uo_reg[2]_i_219_n_5 ),
        .I2(pt[6]),
        .I3(\uo_reg[2]_i_219_n_6 ),
        .O(\uo[2]_i_209_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \uo[2]_i_21 
       (.I0(\uo_reg[4]_i_32_n_2 ),
        .I1(\uo_reg[4]_i_31_n_3 ),
        .I2(\uo[2]_i_25_n_0 ),
        .I3(\uo_reg[2]_i_33_n_0 ),
        .I4(\uo_reg[2]_i_34_n_2 ),
        .O(\uo[2]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[2]_i_210 
       (.I0(pt[5]),
        .I1(\uo_reg[2]_i_219_n_7 ),
        .I2(pt[4]),
        .I3(\uo_reg[2]_i_274_n_4 ),
        .O(\uo[2]_i_210_n_0 ));
  LUT4 #(
    .INIT(16'h222B)) 
    \uo[2]_i_211 
       (.I0(pt[3]),
        .I1(\uo_reg[2]_i_274_n_5 ),
        .I2(\uo_reg[2]_i_274_n_6 ),
        .I3(\uo[2]_i_180_n_0 ),
        .O(\uo[2]_i_211_n_0 ));
  LUT5 #(
    .INIT(32'h3F771300)) 
    \uo[2]_i_212 
       (.I0(\uo_reg[2]_i_60_n_0 ),
        .I1(f_b0[0]),
        .I2(\uo[2]_i_181_n_0 ),
        .I3(fit2[1]),
        .I4(\uo[4]_i_140_n_0 ),
        .O(\uo[2]_i_212_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[2]_i_213 
       (.I0(\uo_reg[2]_i_219_n_5 ),
        .I1(pt[7]),
        .I2(\uo_reg[2]_i_219_n_6 ),
        .I3(pt[6]),
        .O(\uo[2]_i_213_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[2]_i_214 
       (.I0(\uo_reg[2]_i_219_n_7 ),
        .I1(pt[5]),
        .I2(\uo_reg[2]_i_274_n_4 ),
        .I3(pt[4]),
        .O(\uo[2]_i_214_n_0 ));
  LUT4 #(
    .INIT(16'h0990)) 
    \uo[2]_i_215 
       (.I0(\uo_reg[2]_i_274_n_5 ),
        .I1(pt[3]),
        .I2(\uo[2]_i_180_n_0 ),
        .I3(\uo_reg[2]_i_274_n_6 ),
        .O(\uo[2]_i_215_n_0 ));
  LUT5 #(
    .INIT(32'h00002C77)) 
    \uo[2]_i_216 
       (.I0(\uo_reg[2]_i_60_n_0 ),
        .I1(f_b0[0]),
        .I2(\uo[2]_i_181_n_0 ),
        .I3(fit2[1]),
        .I4(\uo[4]_i_140_n_0 ),
        .O(\uo[2]_i_216_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[2]_i_22 
       (.I0(p_0_in[7]),
        .I1(f_b0[7]),
        .I2(p_0_in[6]),
        .I3(f_b0[6]),
        .O(\uo[2]_i_22_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \uo[2]_i_221 
       (.I0(\uo_reg[2]_i_220_n_2 ),
        .O(\uo[2]_i_221_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[2]_i_222 
       (.I0(pt[7]),
        .I1(fit2[4]),
        .I2(pt[6]),
        .I3(fit2[3]),
        .O(\uo[2]_i_222_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[2]_i_223 
       (.I0(pt[5]),
        .I1(fit2[2]),
        .I2(pt[4]),
        .I3(fit2[1]),
        .O(\uo[2]_i_223_n_0 ));
  LUT3 #(
    .INIT(8'h4D)) 
    \uo[2]_i_224 
       (.I0(f_b0[0]),
        .I1(pt[3]),
        .I2(\uo[2]_i_180_n_0 ),
        .O(\uo[2]_i_224_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \uo[2]_i_225 
       (.I0(fit2[1]),
        .I1(f_b0[0]),
        .I2(\uo[4]_i_137_n_0 ),
        .O(\uo[2]_i_225_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[2]_i_226 
       (.I0(fit2[4]),
        .I1(pt[7]),
        .I2(fit2[3]),
        .I3(pt[6]),
        .O(\uo[2]_i_226_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[2]_i_227 
       (.I0(fit2[2]),
        .I1(pt[5]),
        .I2(pt[4]),
        .I3(fit2[1]),
        .O(\uo[2]_i_227_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \uo[2]_i_228 
       (.I0(\uo[2]_i_180_n_0 ),
        .I1(pt[3]),
        .I2(f_b0[0]),
        .O(\uo[2]_i_228_n_0 ));
  LUT3 #(
    .INIT(8'hF1)) 
    \uo[2]_i_229 
       (.I0(fit2[1]),
        .I1(f_b0[0]),
        .I2(\uo[4]_i_137_n_0 ),
        .O(\uo[2]_i_229_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \uo[2]_i_23 
       (.I0(f_b0[4]),
        .I1(p_0_in[4]),
        .I2(f_b0[5]),
        .I3(p_0_in[5]),
        .I4(f_b0[3]),
        .I5(p_0_in[3]),
        .O(\uo[2]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[2]_i_230 
       (.I0(pt[7]),
        .I1(\uo_reg[2]_i_239_n_6 ),
        .I2(pt[6]),
        .I3(\uo_reg[2]_i_239_n_7 ),
        .O(\uo[2]_i_230_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[2]_i_231 
       (.I0(pt[5]),
        .I1(\uo_reg[2]_i_285_n_4 ),
        .I2(pt[4]),
        .I3(\uo_reg[2]_i_285_n_5 ),
        .O(\uo[2]_i_231_n_0 ));
  LUT4 #(
    .INIT(16'h222B)) 
    \uo[2]_i_232 
       (.I0(pt[3]),
        .I1(\uo_reg[2]_i_285_n_6 ),
        .I2(\uo_reg[2]_i_285_n_7 ),
        .I3(\uo[2]_i_180_n_0 ),
        .O(\uo[2]_i_232_n_0 ));
  LUT4 #(
    .INIT(16'h1F44)) 
    \uo[2]_i_233 
       (.I0(\uo_reg[2]_i_60_n_0 ),
        .I1(f_b0[0]),
        .I2(\uo[2]_i_181_n_0 ),
        .I3(fit2[1]),
        .O(\uo[2]_i_233_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[2]_i_234 
       (.I0(\uo_reg[2]_i_239_n_6 ),
        .I1(pt[7]),
        .I2(\uo_reg[2]_i_239_n_7 ),
        .I3(pt[6]),
        .O(\uo[2]_i_234_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[2]_i_235 
       (.I0(\uo_reg[2]_i_285_n_4 ),
        .I1(pt[5]),
        .I2(\uo_reg[2]_i_285_n_5 ),
        .I3(pt[4]),
        .O(\uo[2]_i_235_n_0 ));
  LUT4 #(
    .INIT(16'h0990)) 
    \uo[2]_i_236 
       (.I0(\uo_reg[2]_i_285_n_6 ),
        .I1(pt[3]),
        .I2(\uo[2]_i_180_n_0 ),
        .I3(\uo_reg[2]_i_285_n_7 ),
        .O(\uo[2]_i_236_n_0 ));
  LUT4 #(
    .INIT(16'h2033)) 
    \uo[2]_i_237 
       (.I0(\uo_reg[2]_i_60_n_0 ),
        .I1(f_b0[0]),
        .I2(\uo[2]_i_181_n_0 ),
        .I3(fit2[1]),
        .O(\uo[2]_i_237_n_0 ));
  LUT5 #(
    .INIT(32'h00009009)) 
    \uo[2]_i_24 
       (.I0(f_b0[2]),
        .I1(p_0_in[2]),
        .I2(f_b0[1]),
        .I3(p_0_in[1]),
        .I4(f_b0[0]),
        .O(\uo[2]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \uo[2]_i_241 
       (.I0(\uo_reg[2]_i_240_n_6 ),
        .I1(\uo_reg[2]_i_93_n_3 ),
        .O(\uo[2]_i_241_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \uo[2]_i_242 
       (.I0(\uo_reg[2]_i_240_n_1 ),
        .O(\uo[2]_i_242_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \uo[2]_i_243 
       (.I0(\uo_reg[2]_i_93_n_3 ),
        .I1(\uo_reg[2]_i_240_n_6 ),
        .I2(\uo_reg[2]_i_240_n_1 ),
        .O(\uo[2]_i_243_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[2]_i_244 
       (.I0(pt[7]),
        .I1(\uo_reg[2]_i_253_n_6 ),
        .I2(pt[6]),
        .I3(\uo_reg[2]_i_253_n_7 ),
        .O(\uo[2]_i_244_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[2]_i_245 
       (.I0(pt[5]),
        .I1(\uo_reg[2]_i_295_n_4 ),
        .I2(pt[4]),
        .I3(\uo_reg[2]_i_295_n_5 ),
        .O(\uo[2]_i_245_n_0 ));
  LUT4 #(
    .INIT(16'h222B)) 
    \uo[2]_i_246 
       (.I0(pt[3]),
        .I1(\uo_reg[2]_i_295_n_6 ),
        .I2(\uo[2]_i_180_n_0 ),
        .I3(f_b0[0]),
        .O(\uo[2]_i_246_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \uo[2]_i_247 
       (.I0(fit2[1]),
        .I1(f_b0[0]),
        .I2(\uo[4]_i_137_n_0 ),
        .O(\uo[2]_i_247_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[2]_i_248 
       (.I0(\uo_reg[2]_i_253_n_6 ),
        .I1(pt[7]),
        .I2(\uo_reg[2]_i_253_n_7 ),
        .I3(pt[6]),
        .O(\uo[2]_i_248_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[2]_i_249 
       (.I0(\uo_reg[2]_i_295_n_4 ),
        .I1(pt[5]),
        .I2(\uo_reg[2]_i_295_n_5 ),
        .I3(pt[4]),
        .O(\uo[2]_i_249_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \uo[2]_i_25 
       (.I0(\uo_reg[2]_i_37_n_3 ),
        .I1(\uo_reg[2]_i_38_n_3 ),
        .I2(\uo_reg[2]_i_39_n_3 ),
        .I3(\uo_reg[2]_i_40_n_3 ),
        .I4(\uo_reg[2]_i_31_n_0 ),
        .I5(\uo_reg[2]_i_32_n_3 ),
        .O(\uo[2]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h0990)) 
    \uo[2]_i_250 
       (.I0(\uo_reg[2]_i_295_n_6 ),
        .I1(pt[3]),
        .I2(\uo[2]_i_180_n_0 ),
        .I3(f_b0[0]),
        .O(\uo[2]_i_250_n_0 ));
  LUT3 #(
    .INIT(8'hF1)) 
    \uo[2]_i_251 
       (.I0(fit2[1]),
        .I1(f_b0[0]),
        .I2(\uo[4]_i_137_n_0 ),
        .O(\uo[2]_i_251_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \uo[2]_i_254 
       (.I0(\uo_reg[2]_i_93_n_3 ),
        .O(\uo[2]_i_254_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[2]_i_255 
       (.I0(pt[7]),
        .I1(\uo_reg[2]_i_305_n_4 ),
        .I2(pt[6]),
        .I3(\uo_reg[2]_i_305_n_5 ),
        .O(\uo[2]_i_255_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[2]_i_256 
       (.I0(pt[5]),
        .I1(\uo_reg[2]_i_305_n_6 ),
        .I2(pt[4]),
        .I3(\uo_reg[2]_i_305_n_7 ),
        .O(\uo[2]_i_256_n_0 ));
  LUT4 #(
    .INIT(16'h222B)) 
    \uo[2]_i_257 
       (.I0(pt[3]),
        .I1(\uo_reg[2]_i_306_n_5 ),
        .I2(\uo_reg[2]_i_306_n_6 ),
        .I3(\uo[2]_i_180_n_0 ),
        .O(\uo[2]_i_257_n_0 ));
  LUT6 #(
    .INIT(64'h1F440000FFFF1F44)) 
    \uo[2]_i_258 
       (.I0(\uo_reg[2]_i_60_n_0 ),
        .I1(f_b0[0]),
        .I2(\uo[2]_i_181_n_0 ),
        .I3(fit2[1]),
        .I4(\uo[4]_i_140_n_0 ),
        .I5(\uo_reg[2]_i_306_n_7 ),
        .O(\uo[2]_i_258_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[2]_i_259 
       (.I0(\uo_reg[2]_i_305_n_4 ),
        .I1(pt[7]),
        .I2(\uo_reg[2]_i_305_n_5 ),
        .I3(pt[6]),
        .O(\uo[2]_i_259_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F2F2F3F2)) 
    \uo[2]_i_26 
       (.I0(\uo_reg[2]_i_38_n_3 ),
        .I1(\uo_reg[2]_i_39_n_3 ),
        .I2(\uo_reg[2]_i_40_n_3 ),
        .I3(\uo_reg[2]_i_32_n_3 ),
        .I4(\uo_reg[2]_i_37_n_3 ),
        .I5(\uo_reg[4]_i_31_n_3 ),
        .O(\uo[2]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[2]_i_260 
       (.I0(\uo_reg[2]_i_305_n_6 ),
        .I1(pt[5]),
        .I2(\uo_reg[2]_i_305_n_7 ),
        .I3(pt[4]),
        .O(\uo[2]_i_260_n_0 ));
  LUT4 #(
    .INIT(16'h0990)) 
    \uo[2]_i_261 
       (.I0(\uo_reg[2]_i_306_n_5 ),
        .I1(pt[3]),
        .I2(\uo[2]_i_180_n_0 ),
        .I3(\uo_reg[2]_i_306_n_6 ),
        .O(\uo[2]_i_261_n_0 ));
  LUT6 #(
    .INIT(64'h00001F440000E0BB)) 
    \uo[2]_i_262 
       (.I0(\uo_reg[2]_i_60_n_0 ),
        .I1(f_b0[0]),
        .I2(\uo[2]_i_181_n_0 ),
        .I3(fit2[1]),
        .I4(\uo[4]_i_140_n_0 ),
        .I5(\uo_reg[2]_i_306_n_7 ),
        .O(\uo[2]_i_262_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[2]_i_265 
       (.I0(pt[7]),
        .I1(\uo[2]_i_199_n_0 ),
        .I2(pt[6]),
        .I3(\uo[2]_i_200_n_0 ),
        .O(\uo[2]_i_265_n_0 ));
  LUT5 #(
    .INIT(32'hEA83A802)) 
    \uo[2]_i_266 
       (.I0(pt[5]),
        .I1(f_b0[0]),
        .I2(fit2[1]),
        .I3(fit2[2]),
        .I4(pt[4]),
        .O(\uo[2]_i_266_n_0 ));
  LUT3 #(
    .INIT(8'h4D)) 
    \uo[2]_i_267 
       (.I0(f_b0[0]),
        .I1(pt[3]),
        .I2(\uo[2]_i_180_n_0 ),
        .O(\uo[2]_i_267_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \uo[2]_i_268 
       (.I0(fit2[1]),
        .I1(f_b0[0]),
        .I2(\uo[4]_i_137_n_0 ),
        .O(\uo[2]_i_268_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[2]_i_269 
       (.I0(\uo[2]_i_199_n_0 ),
        .I1(pt[7]),
        .I2(\uo[2]_i_200_n_0 ),
        .I3(pt[6]),
        .O(\uo[2]_i_269_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \uo[2]_i_27 
       (.I0(\uo_reg[4]_i_32_n_2 ),
        .I1(\uo_reg[4]_i_31_n_3 ),
        .O(\uo[2]_i_27_n_0 ));
  LUT5 #(
    .INIT(32'h06606009)) 
    \uo[2]_i_270 
       (.I0(fit2[2]),
        .I1(pt[5]),
        .I2(f_b0[0]),
        .I3(fit2[1]),
        .I4(pt[4]),
        .O(\uo[2]_i_270_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \uo[2]_i_271 
       (.I0(\uo[2]_i_180_n_0 ),
        .I1(pt[3]),
        .I2(f_b0[0]),
        .O(\uo[2]_i_271_n_0 ));
  LUT3 #(
    .INIT(8'hF1)) 
    \uo[2]_i_272 
       (.I0(fit2[1]),
        .I1(f_b0[0]),
        .I2(\uo[4]_i_137_n_0 ),
        .O(\uo[2]_i_272_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \uo[2]_i_273 
       (.I0(pt0[4]),
        .I1(pt0[0]),
        .I2(pt0[6]),
        .I3(pt0[1]),
        .O(\uo[2]_i_273_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \uo[2]_i_275 
       (.I0(\uo_reg[2]_i_218_n_5 ),
        .O(\uo[2]_i_275_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \uo[2]_i_276 
       (.I0(\uo_reg[2]_i_93_n_3 ),
        .O(\uo[2]_i_276_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[2]_i_277 
       (.I0(\uo_reg[2]_i_93_n_3 ),
        .I1(fit2[8]),
        .O(\uo[2]_i_277_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \uo[2]_i_278 
       (.I0(fit2[7]),
        .I1(\uo_reg[2]_i_93_n_3 ),
        .O(\uo[2]_i_278_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[2]_i_279 
       (.I0(fit2[6]),
        .I1(fit2[8]),
        .O(\uo[2]_i_279_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \uo[2]_i_28 
       (.I0(\uo_reg[2]_i_40_n_3 ),
        .I1(\uo_reg[2]_i_39_n_3 ),
        .I2(\uo_reg[2]_i_38_n_3 ),
        .I3(\uo_reg[2]_i_37_n_3 ),
        .O(\uo[2]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[2]_i_280 
       (.I0(fit2[5]),
        .I1(fit2[7]),
        .O(\uo[2]_i_280_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[2]_i_281 
       (.I0(fit2[4]),
        .I1(fit2[6]),
        .O(\uo[2]_i_281_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[2]_i_282 
       (.I0(fit2[3]),
        .I1(fit2[5]),
        .O(\uo[2]_i_282_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[2]_i_283 
       (.I0(fit2[2]),
        .I1(fit2[4]),
        .O(\uo[2]_i_283_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \uo[2]_i_284 
       (.I0(\uo_reg[2]_i_93_n_3 ),
        .O(\uo[2]_i_284_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[2]_i_286 
       (.I0(\uo_reg[2]_i_93_n_3 ),
        .I1(\uo_reg[2]_i_240_n_6 ),
        .O(\uo[2]_i_286_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \uo[2]_i_287 
       (.I0(\uo_reg[2]_i_93_n_3 ),
        .O(\uo[2]_i_287_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[2]_i_288 
       (.I0(\uo_reg[2]_i_93_n_3 ),
        .I1(fit2[8]),
        .O(\uo[2]_i_288_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[2]_i_289 
       (.I0(\uo_reg[2]_i_93_n_3 ),
        .I1(fit2[7]),
        .O(\uo[2]_i_289_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \uo[2]_i_29 
       (.I0(\uo_reg[4]_i_35_n_0 ),
        .I1(\uo_reg[4]_i_33_n_3 ),
        .I2(\uo_reg[2]_i_41_n_3 ),
        .I3(\uo_reg[2]_i_42_n_3 ),
        .O(\uo[2]_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \uo[2]_i_290 
       (.I0(fit2[8]),
        .I1(fit2[6]),
        .O(\uo[2]_i_290_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \uo[2]_i_291 
       (.I0(fit2[7]),
        .I1(fit2[5]),
        .O(\uo[2]_i_291_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \uo[2]_i_292 
       (.I0(fit2[6]),
        .I1(fit2[4]),
        .O(\uo[2]_i_292_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \uo[2]_i_293 
       (.I0(fit2[5]),
        .I1(fit2[3]),
        .O(\uo[2]_i_293_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \uo[2]_i_294 
       (.I0(\uo_reg[2]_i_93_n_3 ),
        .O(\uo[2]_i_294_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \uo[2]_i_296 
       (.I0(fit2[8]),
        .O(\uo[2]_i_296_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \uo[2]_i_297 
       (.I0(fit2[8]),
        .O(\uo[2]_i_297_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \uo[2]_i_298 
       (.I0(fit2[8]),
        .I1(\uo_reg[2]_i_93_n_3 ),
        .O(\uo[2]_i_298_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \uo[2]_i_299 
       (.I0(fit2[7]),
        .I1(\uo_reg[2]_i_93_n_3 ),
        .O(\uo[2]_i_299_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \uo[2]_i_30 
       (.I0(\uo_reg[2]_i_34_n_2 ),
        .I1(\uo_reg[2]_i_33_n_0 ),
        .O(\uo[2]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[2]_i_300 
       (.I0(fit2[6]),
        .I1(fit2[8]),
        .O(\uo[2]_i_300_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[2]_i_301 
       (.I0(fit2[5]),
        .I1(fit2[7]),
        .O(\uo[2]_i_301_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[2]_i_302 
       (.I0(fit2[4]),
        .I1(fit2[6]),
        .O(\uo[2]_i_302_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[2]_i_303 
       (.I0(fit2[3]),
        .I1(fit2[5]),
        .O(\uo[2]_i_303_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[2]_i_304 
       (.I0(fit2[2]),
        .I1(fit2[4]),
        .O(\uo[2]_i_304_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \uo[2]_i_307 
       (.I0(\uo_reg[2]_i_93_n_3 ),
        .I1(\uo_reg[2]_i_342_n_1 ),
        .O(\uo[2]_i_307_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[2]_i_308 
       (.I0(\uo_reg[2]_i_93_n_3 ),
        .I1(\uo_reg[2]_i_342_n_1 ),
        .O(\uo[2]_i_308_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \uo[2]_i_309 
       (.I0(fit2[8]),
        .I1(\uo_reg[2]_i_343_n_0 ),
        .O(\uo[2]_i_309_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \uo[2]_i_310 
       (.I0(\uo_reg[2]_i_343_n_5 ),
        .I1(fit2[7]),
        .O(\uo[2]_i_310_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \uo[2]_i_311 
       (.I0(\uo_reg[2]_i_93_n_3 ),
        .I1(\uo_reg[2]_i_342_n_1 ),
        .O(\uo[2]_i_311_n_0 ));
  LUT3 #(
    .INIT(8'h65)) 
    \uo[2]_i_312 
       (.I0(\uo_reg[2]_i_342_n_1 ),
        .I1(\uo_reg[2]_i_342_n_6 ),
        .I2(\uo_reg[2]_i_93_n_3 ),
        .O(\uo[2]_i_312_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \uo[2]_i_313 
       (.I0(\uo_reg[2]_i_343_n_0 ),
        .I1(fit2[8]),
        .I2(\uo_reg[2]_i_342_n_6 ),
        .I3(\uo_reg[2]_i_93_n_3 ),
        .O(\uo[2]_i_313_n_0 ));
  LUT4 #(
    .INIT(16'hD22D)) 
    \uo[2]_i_314 
       (.I0(fit2[7]),
        .I1(\uo_reg[2]_i_343_n_5 ),
        .I2(\uo_reg[2]_i_343_n_0 ),
        .I3(fit2[8]),
        .O(\uo[2]_i_314_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \uo[2]_i_315 
       (.I0(fit2[7]),
        .I1(\uo_reg[2]_i_343_n_5 ),
        .O(\uo[2]_i_315_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \uo[2]_i_316 
       (.I0(\uo_reg[2]_i_343_n_7 ),
        .I1(fit2[5]),
        .O(\uo[2]_i_316_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \uo[2]_i_317 
       (.I0(\uo_reg[2]_i_344_n_4 ),
        .I1(fit2[4]),
        .O(\uo[2]_i_317_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \uo[2]_i_318 
       (.I0(\uo_reg[2]_i_344_n_5 ),
        .I1(fit2[3]),
        .O(\uo[2]_i_318_n_0 ));
  LUT4 #(
    .INIT(16'h6966)) 
    \uo[2]_i_319 
       (.I0(\uo_reg[2]_i_343_n_5 ),
        .I1(fit2[7]),
        .I2(fit2[6]),
        .I3(\uo_reg[2]_i_343_n_6 ),
        .O(\uo[2]_i_319_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \uo[2]_i_320 
       (.I0(fit2[5]),
        .I1(\uo_reg[2]_i_343_n_7 ),
        .I2(\uo_reg[2]_i_343_n_6 ),
        .I3(fit2[6]),
        .O(\uo[2]_i_320_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \uo[2]_i_321 
       (.I0(fit2[4]),
        .I1(\uo_reg[2]_i_344_n_4 ),
        .I2(\uo_reg[2]_i_343_n_7 ),
        .I3(fit2[5]),
        .O(\uo[2]_i_321_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \uo[2]_i_322 
       (.I0(fit2[3]),
        .I1(\uo_reg[2]_i_344_n_5 ),
        .I2(\uo_reg[2]_i_344_n_4 ),
        .I3(fit2[4]),
        .O(\uo[2]_i_322_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[2]_i_323 
       (.I0(fit2[1]),
        .I1(fit2[3]),
        .O(\uo[2]_i_323_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[2]_i_324 
       (.I0(fit2[2]),
        .I1(f_b0[0]),
        .O(\uo[2]_i_324_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \uo[2]_i_325 
       (.I0(fit2[1]),
        .O(\uo[2]_i_325_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \uo[2]_i_326 
       (.I0(fit2[4]),
        .I1(fit2[2]),
        .O(\uo[2]_i_326_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \uo[2]_i_327 
       (.I0(fit2[3]),
        .I1(fit2[1]),
        .O(\uo[2]_i_327_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \uo[2]_i_328 
       (.I0(f_b0[0]),
        .I1(fit2[2]),
        .O(\uo[2]_i_328_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[2]_i_329 
       (.I0(fit2[1]),
        .I1(fit2[3]),
        .O(\uo[2]_i_329_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[2]_i_330 
       (.I0(fit2[2]),
        .I1(f_b0[0]),
        .O(\uo[2]_i_330_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \uo[2]_i_331 
       (.I0(fit2[1]),
        .O(\uo[2]_i_331_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \uo[2]_i_332 
       (.I0(\uo_reg[2]_i_344_n_6 ),
        .I1(fit2[2]),
        .O(\uo[2]_i_332_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \uo[2]_i_333 
       (.I0(\uo_reg[2]_i_344_n_7 ),
        .I1(fit2[1]),
        .O(\uo[2]_i_333_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \uo[2]_i_334 
       (.I0(\uo_reg[2]_i_306_n_4 ),
        .I1(f_b0[0]),
        .O(\uo[2]_i_334_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \uo[2]_i_335 
       (.I0(fit2[2]),
        .I1(\uo_reg[2]_i_344_n_6 ),
        .I2(\uo_reg[2]_i_344_n_5 ),
        .I3(fit2[3]),
        .O(\uo[2]_i_335_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \uo[2]_i_336 
       (.I0(fit2[1]),
        .I1(\uo_reg[2]_i_344_n_7 ),
        .I2(\uo_reg[2]_i_344_n_6 ),
        .I3(fit2[2]),
        .O(\uo[2]_i_336_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \uo[2]_i_337 
       (.I0(f_b0[0]),
        .I1(\uo_reg[2]_i_306_n_4 ),
        .I2(\uo_reg[2]_i_344_n_7 ),
        .I3(fit2[1]),
        .O(\uo[2]_i_337_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \uo[2]_i_338 
       (.I0(f_b0[0]),
        .I1(\uo_reg[2]_i_306_n_4 ),
        .O(\uo[2]_i_338_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[2]_i_339 
       (.I0(fit2[1]),
        .I1(fit2[3]),
        .O(\uo[2]_i_339_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[2]_i_340 
       (.I0(fit2[2]),
        .I1(f_b0[0]),
        .O(\uo[2]_i_340_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \uo[2]_i_341 
       (.I0(fit2[1]),
        .O(\uo[2]_i_341_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \uo[2]_i_345 
       (.I0(\uo_reg[2]_i_93_n_3 ),
        .O(\uo[2]_i_345_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \uo[2]_i_346 
       (.I0(\uo_reg[2]_i_93_n_3 ),
        .O(\uo[2]_i_346_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[2]_i_347 
       (.I0(\uo_reg[2]_i_93_n_3 ),
        .I1(fit2[8]),
        .O(\uo[2]_i_347_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \uo[2]_i_348 
       (.I0(fit2[7]),
        .I1(\uo_reg[2]_i_93_n_3 ),
        .O(\uo[2]_i_348_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[2]_i_349 
       (.I0(fit2[6]),
        .I1(fit2[8]),
        .O(\uo[2]_i_349_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[2]_i_350 
       (.I0(fit2[5]),
        .I1(fit2[7]),
        .O(\uo[2]_i_350_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[2]_i_351 
       (.I0(fit2[4]),
        .I1(fit2[6]),
        .O(\uo[2]_i_351_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[2]_i_352 
       (.I0(fit2[3]),
        .I1(fit2[5]),
        .O(\uo[2]_i_352_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[2]_i_353 
       (.I0(fit2[2]),
        .I1(fit2[4]),
        .O(\uo[2]_i_353_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \uo[2]_i_44 
       (.I0(\uo_reg[2]_i_34_n_2 ),
        .O(\uo[2]_i_44_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \uo[2]_i_45 
       (.I0(\uo_reg[2]_i_93_n_3 ),
        .I1(pt[11]),
        .I2(pt[10]),
        .O(\uo[2]_i_45_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[2]_i_46 
       (.I0(pt[9]),
        .I1(fit2[8]),
        .I2(pt[8]),
        .I3(fit2[7]),
        .O(\uo[2]_i_46_n_0 ));
  LUT3 #(
    .INIT(8'h18)) 
    \uo[2]_i_47 
       (.I0(pt[11]),
        .I1(pt[10]),
        .I2(\uo_reg[2]_i_93_n_3 ),
        .O(\uo[2]_i_47_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[2]_i_48 
       (.I0(fit2[8]),
        .I1(pt[9]),
        .I2(fit2[7]),
        .I3(pt[8]),
        .O(\uo[2]_i_48_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \uo[2]_i_51 
       (.I0(\uo_reg[2]_i_34_n_2 ),
        .I1(\uo_reg[2]_i_93_n_3 ),
        .I2(\uo[2]_i_111_n_0 ),
        .O(\uo[2]_i_51_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \uo[2]_i_52 
       (.I0(\uo[2]_i_111_n_0 ),
        .I1(\uo_reg[2]_i_34_n_2 ),
        .I2(\uo_reg[2]_i_93_n_3 ),
        .O(\uo[2]_i_52_n_0 ));
  LUT4 #(
    .INIT(16'hE0CE)) 
    \uo[2]_i_53 
       (.I0(pt[10]),
        .I1(pt[11]),
        .I2(\uo[2]_i_111_n_0 ),
        .I3(\uo_reg[2]_i_93_n_3 ),
        .O(\uo[2]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'h9A00FF9A0000FF00)) 
    \uo[2]_i_54 
       (.I0(fit2[7]),
        .I1(fit2[6]),
        .I2(\uo[2]_i_112_n_0 ),
        .I3(pt[9]),
        .I4(\uo[2]_i_113_n_0 ),
        .I5(pt[8]),
        .O(\uo[2]_i_54_n_0 ));
  LUT3 #(
    .INIT(8'h95)) 
    \uo[2]_i_55 
       (.I0(\uo_reg[2]_i_34_n_2 ),
        .I1(\uo_reg[2]_i_93_n_3 ),
        .I2(\uo[2]_i_111_n_0 ),
        .O(\uo[2]_i_55_n_0 ));
  LUT3 #(
    .INIT(8'h87)) 
    \uo[2]_i_56 
       (.I0(\uo_reg[2]_i_93_n_3 ),
        .I1(\uo[2]_i_111_n_0 ),
        .I2(\uo_reg[2]_i_34_n_2 ),
        .O(\uo[2]_i_56_n_0 ));
  LUT4 #(
    .INIT(16'h1841)) 
    \uo[2]_i_57 
       (.I0(pt[11]),
        .I1(\uo_reg[2]_i_93_n_3 ),
        .I2(\uo[2]_i_111_n_0 ),
        .I3(pt[10]),
        .O(\uo[2]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'h650000659A00009A)) 
    \uo[2]_i_58 
       (.I0(fit2[7]),
        .I1(fit2[6]),
        .I2(\uo[2]_i_112_n_0 ),
        .I3(\uo[2]_i_113_n_0 ),
        .I4(pt[9]),
        .I5(pt[8]),
        .O(\uo[2]_i_58_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \uo[2]_i_61 
       (.I0(\uo[2]_i_111_n_0 ),
        .I1(\uo_reg[2]_i_93_n_3 ),
        .I2(\uo_reg[2]_i_60_n_0 ),
        .O(\uo[2]_i_61_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \uo[2]_i_62 
       (.I0(\m_s0_reg_n_0_[6] ),
        .I1(\m_s2_reg_n_0_[6] ),
        .O(\uo[2]_i_62_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \uo[2]_i_63 
       (.I0(\m_s0_reg_n_0_[5] ),
        .I1(\m_s2_reg_n_0_[5] ),
        .O(\uo[2]_i_63_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \uo[2]_i_64 
       (.I0(\m_s0_reg_n_0_[4] ),
        .I1(\m_s2_reg_n_0_[4] ),
        .O(\uo[2]_i_64_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \uo[2]_i_65 
       (.I0(\m_s0_reg_n_0_[3] ),
        .I1(\m_s2_reg_n_0_[3] ),
        .O(\uo[2]_i_65_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \uo[2]_i_66 
       (.I0(\m_s0_reg_n_0_[2] ),
        .I1(\m_s2_reg_n_0_[2] ),
        .O(\uo[2]_i_66_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \uo[2]_i_67 
       (.I0(\m_s0_reg_n_0_[1] ),
        .I1(\m_s2_reg_n_0_[1] ),
        .O(\uo[2]_i_67_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \uo[2]_i_68 
       (.I0(\m_s0_reg_n_0_[0] ),
        .I1(\m_s2_reg_n_0_[0] ),
        .O(\uo[2]_i_68_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \uo[2]_i_70 
       (.I0(\uo_reg[2]_i_34_n_2 ),
        .I1(\uo_reg[2]_i_132_n_2 ),
        .O(\uo[2]_i_70_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[2]_i_71 
       (.I0(\uo_reg[2]_i_34_n_2 ),
        .I1(\uo_reg[2]_i_132_n_2 ),
        .O(\uo[2]_i_71_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \uo[2]_i_74 
       (.I0(\uo_reg[2]_i_34_n_2 ),
        .I1(\uo_reg[2]_i_150_n_1 ),
        .O(\uo[2]_i_74_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[2]_i_75 
       (.I0(\uo_reg[2]_i_34_n_2 ),
        .I1(\uo_reg[2]_i_150_n_1 ),
        .O(\uo[2]_i_75_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \uo[2]_i_77 
       (.I0(\uo_reg[2]_i_34_n_2 ),
        .I1(\uo_reg[2]_i_160_n_1 ),
        .O(\uo[2]_i_77_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[2]_i_78 
       (.I0(\uo_reg[2]_i_34_n_2 ),
        .I1(\uo_reg[2]_i_160_n_1 ),
        .O(\uo[2]_i_78_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \uo[2]_i_80 
       (.I0(\uo_reg[2]_i_34_n_2 ),
        .I1(\uo_reg[2]_i_170_n_3 ),
        .O(\uo[2]_i_80_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[2]_i_81 
       (.I0(\uo_reg[2]_i_34_n_2 ),
        .I1(\uo_reg[2]_i_170_n_3 ),
        .O(\uo[2]_i_81_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \uo[2]_i_83 
       (.I0(\uo_reg[2]_i_34_n_2 ),
        .I1(\uo_reg[2]_i_93_n_3 ),
        .I2(\uo[2]_i_111_n_0 ),
        .O(\uo[2]_i_83_n_0 ));
  LUT3 #(
    .INIT(8'h95)) 
    \uo[2]_i_84 
       (.I0(\uo_reg[2]_i_34_n_2 ),
        .I1(\uo_reg[2]_i_93_n_3 ),
        .I2(\uo[2]_i_111_n_0 ),
        .O(\uo[2]_i_84_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[2]_i_85 
       (.I0(pt[7]),
        .I1(fit2[6]),
        .I2(pt[6]),
        .I3(fit2[5]),
        .O(\uo[2]_i_85_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[2]_i_86 
       (.I0(pt[5]),
        .I1(fit2[4]),
        .I2(pt[4]),
        .I3(fit2[3]),
        .O(\uo[2]_i_86_n_0 ));
  LUT4 #(
    .INIT(16'h444D)) 
    \uo[2]_i_87 
       (.I0(fit2[2]),
        .I1(pt[3]),
        .I2(fit2[1]),
        .I3(\uo[2]_i_180_n_0 ),
        .O(\uo[2]_i_87_n_0 ));
  LUT4 #(
    .INIT(16'h1F44)) 
    \uo[2]_i_88 
       (.I0(\uo_reg[2]_i_60_n_0 ),
        .I1(f_b0[0]),
        .I2(\uo[2]_i_181_n_0 ),
        .I3(fit2[1]),
        .O(\uo[2]_i_88_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[2]_i_89 
       (.I0(fit2[6]),
        .I1(pt[7]),
        .I2(fit2[5]),
        .I3(pt[6]),
        .O(\uo[2]_i_89_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[2]_i_90 
       (.I0(fit2[4]),
        .I1(pt[5]),
        .I2(pt[4]),
        .I3(fit2[3]),
        .O(\uo[2]_i_90_n_0 ));
  LUT4 #(
    .INIT(16'h6006)) 
    \uo[2]_i_91 
       (.I0(\uo[2]_i_180_n_0 ),
        .I1(fit2[1]),
        .I2(pt[3]),
        .I3(fit2[2]),
        .O(\uo[2]_i_91_n_0 ));
  LUT4 #(
    .INIT(16'h2033)) 
    \uo[2]_i_92 
       (.I0(\uo_reg[2]_i_60_n_0 ),
        .I1(f_b0[0]),
        .I2(\uo[2]_i_181_n_0 ),
        .I3(fit2[1]),
        .O(\uo[2]_i_92_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \uo[2]_i_96 
       (.I0(\uo_reg[2]_i_34_n_2 ),
        .O(\uo[2]_i_96_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \uo[2]_i_97 
       (.I0(\uo_reg[2]_i_34_n_2 ),
        .O(\uo[2]_i_97_n_0 ));
  LUT4 #(
    .INIT(16'hF440)) 
    \uo[2]_i_98 
       (.I0(fit2[8]),
        .I1(pt[10]),
        .I2(\uo_reg[2]_i_93_n_3 ),
        .I3(pt[11]),
        .O(\uo[2]_i_98_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[2]_i_99 
       (.I0(pt[9]),
        .I1(fit2[7]),
        .I2(pt[8]),
        .I3(fit2[6]),
        .O(\uo[2]_i_99_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAA003000)) 
    \uo[3]_i_11 
       (.I0(pw_k[3]),
        .I1(\uo[3]_i_15_n_0 ),
        .I2(\uo[4]_i_16_n_0 ),
        .I3(\uo[2]_i_5_0 ),
        .I4(\uo[2]_i_5 ),
        .I5(\uo[3]_i_5 ),
        .O(\pw_k_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \uo[3]_i_15 
       (.I0(f_off11_in),
        .I1(\uo_reg[4]_i_32_n_2 ),
        .I2(\uo_reg[4]_i_31_n_3 ),
        .O(\uo[3]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT5 #(
    .INIT(32'h15554000)) 
    \uo[3]_i_2 
       (.I0(run),
        .I1(\uio_r_reg[7]_0 [1]),
        .I2(\uio_r_reg[7]_0 [0]),
        .I3(\uio_r_reg[7]_0 [2]),
        .I4(\uio_r_reg[7]_0 [3]),
        .O(run_reg));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[4]_i_100 
       (.I0(\uo_reg[4]_i_139_n_4 ),
        .I1(pt[5]),
        .I2(\uo_reg[4]_i_139_n_5 ),
        .I3(pt[4]),
        .O(\uo[4]_i_100_n_0 ));
  LUT4 #(
    .INIT(16'h0990)) 
    \uo[4]_i_101 
       (.I0(\uo_reg[4]_i_139_n_6 ),
        .I1(pt[3]),
        .I2(\uo[2]_i_180_n_0 ),
        .I3(\uo_reg[4]_i_139_n_7 ),
        .O(\uo[4]_i_101_n_0 ));
  LUT5 #(
    .INIT(32'h00002C77)) 
    \uo[4]_i_102 
       (.I0(\uo_reg[2]_i_60_n_0 ),
        .I1(f_b0[0]),
        .I2(\uo[2]_i_181_n_0 ),
        .I3(fit2[1]),
        .I4(\uo[4]_i_140_n_0 ),
        .O(\uo[4]_i_102_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \uo[4]_i_106 
       (.I0(\uo_reg[4]_i_105_n_6 ),
        .I1(\uo_reg[2]_i_93_n_3 ),
        .O(\uo[4]_i_106_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \uo[4]_i_107 
       (.I0(\uo_reg[4]_i_105_n_1 ),
        .O(\uo[4]_i_107_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \uo[4]_i_108 
       (.I0(\uo_reg[2]_i_93_n_3 ),
        .I1(\uo_reg[4]_i_105_n_6 ),
        .I2(\uo_reg[4]_i_105_n_1 ),
        .O(\uo[4]_i_108_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[4]_i_109 
       (.I0(pt[7]),
        .I1(fit2[3]),
        .I2(pt[6]),
        .I3(fit2[2]),
        .O(\uo[4]_i_109_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[4]_i_110 
       (.I0(pt[5]),
        .I1(fit2[1]),
        .I2(pt[4]),
        .I3(f_b0[0]),
        .O(\uo[4]_i_110_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \uo[4]_i_111 
       (.I0(pt[3]),
        .I1(\uo[2]_i_180_n_0 ),
        .O(\uo[4]_i_111_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \uo[4]_i_112 
       (.I0(fit2[1]),
        .I1(f_b0[0]),
        .I2(\uo[4]_i_137_n_0 ),
        .O(\uo[4]_i_112_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[4]_i_113 
       (.I0(fit2[3]),
        .I1(pt[7]),
        .I2(fit2[2]),
        .I3(pt[6]),
        .O(\uo[4]_i_113_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[4]_i_114 
       (.I0(fit2[1]),
        .I1(pt[5]),
        .I2(pt[4]),
        .I3(f_b0[0]),
        .O(\uo[4]_i_114_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \uo[4]_i_115 
       (.I0(\uo[2]_i_180_n_0 ),
        .I1(pt[3]),
        .O(\uo[4]_i_115_n_0 ));
  LUT3 #(
    .INIT(8'hF1)) 
    \uo[4]_i_116 
       (.I0(fit2[1]),
        .I1(f_b0[0]),
        .I2(\uo[4]_i_137_n_0 ),
        .O(\uo[4]_i_116_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[4]_i_118 
       (.I0(pt[7]),
        .I1(\uo_reg[4]_i_127_n_7 ),
        .I2(pt[6]),
        .I3(\uo_reg[4]_i_159_n_4 ),
        .O(\uo[4]_i_118_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[4]_i_119 
       (.I0(pt[5]),
        .I1(\uo_reg[4]_i_159_n_5 ),
        .I2(pt[4]),
        .I3(\uo_reg[4]_i_159_n_6 ),
        .O(\uo[4]_i_119_n_0 ));
  LUT4 #(
    .INIT(16'h222B)) 
    \uo[4]_i_120 
       (.I0(pt[3]),
        .I1(\uo_reg[4]_i_160_n_7 ),
        .I2(fit2[1]),
        .I3(\uo[2]_i_180_n_0 ),
        .O(\uo[4]_i_120_n_0 ));
  LUT4 #(
    .INIT(16'h1F44)) 
    \uo[4]_i_121 
       (.I0(\uo_reg[2]_i_60_n_0 ),
        .I1(f_b0[0]),
        .I2(\uo[2]_i_181_n_0 ),
        .I3(fit2[1]),
        .O(\uo[4]_i_121_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[4]_i_122 
       (.I0(\uo_reg[4]_i_127_n_7 ),
        .I1(pt[7]),
        .I2(\uo_reg[4]_i_159_n_4 ),
        .I3(pt[6]),
        .O(\uo[4]_i_122_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[4]_i_123 
       (.I0(\uo_reg[4]_i_159_n_5 ),
        .I1(pt[5]),
        .I2(\uo_reg[4]_i_159_n_6 ),
        .I3(pt[4]),
        .O(\uo[4]_i_123_n_0 ));
  LUT4 #(
    .INIT(16'h0990)) 
    \uo[4]_i_124 
       (.I0(\uo_reg[4]_i_160_n_7 ),
        .I1(pt[3]),
        .I2(\uo[2]_i_180_n_0 ),
        .I3(fit2[1]),
        .O(\uo[4]_i_124_n_0 ));
  LUT4 #(
    .INIT(16'h2033)) 
    \uo[4]_i_125 
       (.I0(\uo_reg[2]_i_60_n_0 ),
        .I1(f_b0[0]),
        .I2(\uo[2]_i_181_n_0 ),
        .I3(fit2[1]),
        .O(\uo[4]_i_125_n_0 ));
  LUT3 #(
    .INIT(8'h0D)) 
    \uo[4]_i_129 
       (.I0(\uo_reg[2]_i_93_n_3 ),
        .I1(\uo[2]_i_111_n_0 ),
        .I2(\uo_reg[2]_i_34_n_2 ),
        .O(\uo[4]_i_129_n_0 ));
  LUT6 #(
    .INIT(64'h000F0F0F07070F0F)) 
    \uo[4]_i_13 
       (.I0(\uo[4]_i_16_n_0 ),
        .I1(\uo[4]_i_17_n_0 ),
        .I2(\uo[4]_i_6 ),
        .I3(pw_k[4]),
        .I4(\uo[2]_i_5_0 ),
        .I5(\uo[2]_i_5 ),
        .O(\pw_k_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h4444414455555555)) 
    \uo[4]_i_130 
       (.I0(\uo_reg[2]_i_34_n_2 ),
        .I1(fit2[8]),
        .I2(fit2[7]),
        .I3(\uo[2]_i_112_n_0 ),
        .I4(fit2[6]),
        .I5(\uo_reg[2]_i_93_n_3 ),
        .O(\uo[4]_i_130_n_0 ));
  LUT6 #(
    .INIT(64'h9A009A00FF9A9A00)) 
    \uo[4]_i_131 
       (.I0(fit2[7]),
        .I1(fit2[6]),
        .I2(\uo[2]_i_112_n_0 ),
        .I3(pt[11]),
        .I4(pt[10]),
        .I5(\uo[4]_i_94_n_0 ),
        .O(\uo[4]_i_131_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[4]_i_132 
       (.I0(pt[9]),
        .I1(\uo[2]_i_198_n_0 ),
        .I2(pt[8]),
        .I3(\uo[2]_i_199_n_0 ),
        .O(\uo[4]_i_132_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \uo[4]_i_133 
       (.I0(\uo_reg[2]_i_93_n_3 ),
        .I1(\uo[2]_i_111_n_0 ),
        .I2(\uo_reg[2]_i_34_n_2 ),
        .O(\uo[4]_i_133_n_0 ));
  LUT4 #(
    .INIT(16'h0960)) 
    \uo[4]_i_134 
       (.I0(\uo_reg[2]_i_93_n_3 ),
        .I1(\uo[2]_i_111_n_0 ),
        .I2(\uo[2]_i_113_n_0 ),
        .I3(\uo_reg[2]_i_34_n_2 ),
        .O(\uo[4]_i_134_n_0 ));
  LUT6 #(
    .INIT(64'h659A00000000659A)) 
    \uo[4]_i_135 
       (.I0(fit2[7]),
        .I1(fit2[6]),
        .I2(\uo[2]_i_112_n_0 ),
        .I3(pt[11]),
        .I4(\uo[4]_i_94_n_0 ),
        .I5(pt[10]),
        .O(\uo[4]_i_135_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[4]_i_136 
       (.I0(\uo[2]_i_198_n_0 ),
        .I1(pt[9]),
        .I2(\uo[2]_i_199_n_0 ),
        .I3(pt[8]),
        .O(\uo[4]_i_136_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \uo[4]_i_137 
       (.I0(\uo[2]_i_273_n_0 ),
        .I1(pt0[2]),
        .I2(pt0[5]),
        .I3(pt0[3]),
        .I4(\uo_reg[2]_i_60_n_0 ),
        .O(\uo[4]_i_137_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \uo[4]_i_138 
       (.I0(f_b0[0]),
        .I1(fit2[1]),
        .O(\uo[4]_i_138_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA2)) 
    \uo[4]_i_140 
       (.I0(f_b0[0]),
        .I1(\uo_reg[2]_i_60_n_0 ),
        .I2(pt0[3]),
        .I3(pt0[5]),
        .I4(pt0[2]),
        .I5(\uo[2]_i_273_n_0 ),
        .O(\uo[4]_i_140_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \uo[4]_i_141 
       (.I0(\uo_reg[2]_i_93_n_3 ),
        .I1(\uo_reg[4]_i_142_n_0 ),
        .O(\uo[4]_i_141_n_0 ));
  LUT3 #(
    .INIT(8'hC6)) 
    \uo[4]_i_143 
       (.I0(\uo_reg[4]_i_142_n_0 ),
        .I1(\uo_reg[4]_i_105_n_6 ),
        .I2(\uo_reg[2]_i_93_n_3 ),
        .O(\uo[4]_i_143_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \uo[4]_i_144 
       (.I0(\uo_reg[4]_i_142_n_5 ),
        .I1(\uo_reg[4]_i_142_n_0 ),
        .I2(\uo_reg[2]_i_93_n_3 ),
        .O(\uo[4]_i_144_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[4]_i_145 
       (.I0(\uo_reg[4]_i_142_n_5 ),
        .I1(fit2[8]),
        .O(\uo[4]_i_145_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \uo[4]_i_146 
       (.I0(fit2[7]),
        .I1(\uo_reg[4]_i_142_n_6 ),
        .O(\uo[4]_i_146_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \uo[4]_i_147 
       (.I0(fit2[6]),
        .I1(\uo_reg[4]_i_142_n_7 ),
        .O(\uo[4]_i_147_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \uo[4]_i_148 
       (.I0(fit2[5]),
        .I1(\uo_reg[4]_i_188_n_4 ),
        .O(\uo[4]_i_148_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \uo[4]_i_149 
       (.I0(fit2[4]),
        .I1(\uo_reg[4]_i_188_n_5 ),
        .O(\uo[4]_i_149_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \uo[4]_i_150 
       (.I0(fit2[3]),
        .I1(\uo_reg[4]_i_188_n_6 ),
        .O(\uo[4]_i_150_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \uo[4]_i_151 
       (.I0(\uo_reg[2]_i_93_n_3 ),
        .O(fit2[9]));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[4]_i_152 
       (.I0(p_0_in[4]),
        .I1(f_b0[4]),
        .O(\uo[4]_i_152_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \uo[4]_i_153 
       (.I0(f_b0[2]),
        .I1(p_0_in[2]),
        .O(\uo[4]_i_153_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[4]_i_154 
       (.I0(p_0_in[2]),
        .I1(f_b0[2]),
        .O(\uo[4]_i_154_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \uo[4]_i_155 
       (.I0(p_0_in[3]),
        .I1(f_b0[3]),
        .I2(f_b0[4]),
        .I3(p_0_in[4]),
        .O(\uo[4]_i_155_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \uo[4]_i_156 
       (.I0(p_0_in[2]),
        .I1(f_b0[2]),
        .I2(p_0_in[3]),
        .I3(f_b0[3]),
        .O(\uo[4]_i_156_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \uo[4]_i_157 
       (.I0(p_0_in[1]),
        .I1(f_b0[1]),
        .I2(f_b0[2]),
        .I3(p_0_in[2]),
        .O(\uo[4]_i_157_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \uo[4]_i_158 
       (.I0(f_b0[1]),
        .I1(p_0_in[1]),
        .O(\uo[4]_i_158_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000151)) 
    \uo[4]_i_16 
       (.I0(\uo[2]_i_20_n_0 ),
        .I1(\uo[4]_i_27_n_0 ),
        .I2(\uo[4]_i_28_n_0 ),
        .I3(\uo[4]_i_29_n_0 ),
        .I4(\uo[1]_i_16_n_0 ),
        .I5(\uo[4]_i_30_n_0 ),
        .O(\uo[4]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \uo[4]_i_162 
       (.I0(\uo_reg[2]_i_93_n_3 ),
        .I1(fit2[8]),
        .O(\uo[4]_i_162_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \uo[4]_i_163 
       (.I0(fit2[8]),
        .I1(\uo_reg[2]_i_93_n_3 ),
        .O(\uo[4]_i_163_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \uo[4]_i_164 
       (.I0(\uo_reg[4]_i_161_n_6 ),
        .I1(\uo_reg[2]_i_93_n_3 ),
        .I2(\uo_reg[4]_i_161_n_1 ),
        .O(\uo[4]_i_164_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \uo[4]_i_165 
       (.I0(\uo_reg[4]_i_161_n_6 ),
        .O(\uo[4]_i_165_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \uo[4]_i_166 
       (.I0(\uo_reg[2]_i_93_n_3 ),
        .I1(fit2[8]),
        .O(\uo[4]_i_166_n_0 ));
  LUT3 #(
    .INIT(8'h59)) 
    \uo[4]_i_167 
       (.I0(fit2[8]),
        .I1(fit2[7]),
        .I2(\uo_reg[2]_i_93_n_3 ),
        .O(\uo[4]_i_167_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \uo[4]_i_168 
       (.I0(fit2[8]),
        .I1(fit2[6]),
        .O(\uo[4]_i_168_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \uo[4]_i_169 
       (.I0(fit2[7]),
        .I1(fit2[5]),
        .O(\uo[4]_i_169_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \uo[4]_i_17 
       (.I0(f_off11_in),
        .I1(\uo_reg[4]_i_31_n_3 ),
        .I2(\uo_reg[4]_i_32_n_2 ),
        .O(\uo[4]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \uo[4]_i_170 
       (.I0(fit2[6]),
        .I1(fit2[4]),
        .O(\uo[4]_i_170_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \uo[4]_i_171 
       (.I0(fit2[5]),
        .I1(fit2[3]),
        .O(\uo[4]_i_171_n_0 ));
  LUT4 #(
    .INIT(16'h4BB4)) 
    \uo[4]_i_172 
       (.I0(fit2[6]),
        .I1(fit2[8]),
        .I2(fit2[7]),
        .I3(\uo_reg[2]_i_93_n_3 ),
        .O(\uo[4]_i_172_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \uo[4]_i_173 
       (.I0(fit2[5]),
        .I1(fit2[7]),
        .I2(fit2[6]),
        .I3(fit2[8]),
        .O(\uo[4]_i_173_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \uo[4]_i_174 
       (.I0(fit2[4]),
        .I1(fit2[6]),
        .I2(fit2[5]),
        .I3(fit2[7]),
        .O(\uo[4]_i_174_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \uo[4]_i_175 
       (.I0(fit2[3]),
        .I1(fit2[5]),
        .I2(fit2[4]),
        .I3(fit2[6]),
        .O(\uo[4]_i_175_n_0 ));
  LUT6 #(
    .INIT(64'hFEAAA803AAA80002)) 
    \uo[4]_i_176 
       (.I0(pt[7]),
        .I1(fit2[1]),
        .I2(f_b0[0]),
        .I3(fit2[2]),
        .I4(fit2[3]),
        .I5(pt[6]),
        .O(\uo[4]_i_176_n_0 ));
  LUT4 #(
    .INIT(16'h88B2)) 
    \uo[4]_i_177 
       (.I0(pt[5]),
        .I1(fit2[1]),
        .I2(pt[4]),
        .I3(f_b0[0]),
        .O(\uo[4]_i_177_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \uo[4]_i_178 
       (.I0(pt[3]),
        .I1(\uo[2]_i_180_n_0 ),
        .O(\uo[4]_i_178_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \uo[4]_i_179 
       (.I0(fit2[1]),
        .I1(f_b0[0]),
        .I2(\uo[4]_i_137_n_0 ),
        .O(\uo[4]_i_179_n_0 ));
  LUT6 #(
    .INIT(64'h0606066060606009)) 
    \uo[4]_i_180 
       (.I0(fit2[3]),
        .I1(pt[7]),
        .I2(fit2[2]),
        .I3(fit2[1]),
        .I4(f_b0[0]),
        .I5(pt[6]),
        .O(\uo[4]_i_180_n_0 ));
  LUT4 #(
    .INIT(16'h6009)) 
    \uo[4]_i_181 
       (.I0(fit2[1]),
        .I1(pt[5]),
        .I2(pt[4]),
        .I3(f_b0[0]),
        .O(\uo[4]_i_181_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \uo[4]_i_182 
       (.I0(\uo[2]_i_180_n_0 ),
        .I1(pt[3]),
        .O(\uo[4]_i_182_n_0 ));
  LUT3 #(
    .INIT(8'hF1)) 
    \uo[4]_i_183 
       (.I0(fit2[1]),
        .I1(f_b0[0]),
        .I2(\uo[4]_i_137_n_0 ),
        .O(\uo[4]_i_183_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \uo[4]_i_184 
       (.I0(fit2[2]),
        .I1(\uo_reg[4]_i_188_n_7 ),
        .O(\uo[4]_i_184_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \uo[4]_i_185 
       (.I0(fit2[1]),
        .I1(\uo_reg[4]_i_187_n_4 ),
        .O(\uo[4]_i_185_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \uo[4]_i_186 
       (.I0(f_b0[0]),
        .I1(\uo_reg[4]_i_187_n_5 ),
        .O(\uo[4]_i_186_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \uo[4]_i_189 
       (.I0(\uo_reg[2]_i_93_n_3 ),
        .O(\uo[4]_i_189_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[4]_i_19 
       (.I0(\uio_r_reg[7]_0 [7]),
        .I1(\uo_reg[4]_i_15_0 [7]),
        .I2(\uio_r_reg[7]_0 [6]),
        .I3(\uo_reg[4]_i_15_0 [6]),
        .O(\uo[4]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[4]_i_190 
       (.I0(\uo_reg[2]_i_93_n_3 ),
        .I1(fit2[8]),
        .O(\uo[4]_i_190_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \uo[4]_i_191 
       (.I0(fit2[7]),
        .I1(\uo_reg[2]_i_93_n_3 ),
        .O(\uo[4]_i_191_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[4]_i_192 
       (.I0(fit2[6]),
        .I1(fit2[8]),
        .O(\uo[4]_i_192_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \uo[4]_i_193 
       (.I0(fit2[4]),
        .I1(fit2[2]),
        .O(\uo[4]_i_193_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \uo[4]_i_194 
       (.I0(fit2[3]),
        .I1(fit2[1]),
        .O(\uo[4]_i_194_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \uo[4]_i_195 
       (.I0(fit2[2]),
        .I1(f_b0[0]),
        .O(\uo[4]_i_195_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \uo[4]_i_196 
       (.I0(fit2[2]),
        .I1(fit2[4]),
        .I2(fit2[3]),
        .I3(fit2[5]),
        .O(\uo[4]_i_196_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \uo[4]_i_197 
       (.I0(fit2[1]),
        .I1(fit2[3]),
        .I2(fit2[2]),
        .I3(fit2[4]),
        .O(\uo[4]_i_197_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \uo[4]_i_198 
       (.I0(f_b0[0]),
        .I1(fit2[2]),
        .I2(fit2[1]),
        .I3(fit2[3]),
        .O(\uo[4]_i_198_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \uo[4]_i_199 
       (.I0(f_b0[0]),
        .I1(fit2[2]),
        .O(\uo[4]_i_199_n_0 ));
  LUT6 #(
    .INIT(64'h1555555540000000)) 
    \uo[4]_i_2 
       (.I0(run),
        .I1(\uio_r_reg[7]_0 [2]),
        .I2(\uio_r_reg[7]_0 [0]),
        .I3(\uio_r_reg[7]_0 [1]),
        .I4(\uio_r_reg[7]_0 [3]),
        .I5(\uio_r_reg[7]_0 [4]),
        .O(run_reg_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[4]_i_20 
       (.I0(\uio_r_reg[7]_0 [5]),
        .I1(\uo_reg[4]_i_15_0 [5]),
        .I2(\uio_r_reg[7]_0 [4]),
        .I3(\uo_reg[4]_i_15_0 [4]),
        .O(\uo[4]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \uo[4]_i_200 
       (.I0(fit2[4]),
        .I1(fit2[2]),
        .O(\uo[4]_i_200_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \uo[4]_i_201 
       (.I0(fit2[3]),
        .I1(fit2[1]),
        .O(\uo[4]_i_201_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \uo[4]_i_202 
       (.I0(fit2[2]),
        .I1(f_b0[0]),
        .O(\uo[4]_i_202_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \uo[4]_i_203 
       (.I0(fit2[2]),
        .I1(fit2[4]),
        .I2(fit2[3]),
        .I3(fit2[5]),
        .O(\uo[4]_i_203_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \uo[4]_i_204 
       (.I0(fit2[1]),
        .I1(fit2[3]),
        .I2(fit2[2]),
        .I3(fit2[4]),
        .O(\uo[4]_i_204_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \uo[4]_i_205 
       (.I0(f_b0[0]),
        .I1(fit2[2]),
        .I2(fit2[1]),
        .I3(fit2[3]),
        .O(\uo[4]_i_205_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \uo[4]_i_206 
       (.I0(f_b0[0]),
        .I1(fit2[2]),
        .O(\uo[4]_i_206_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \uo[4]_i_207 
       (.I0(\uo_reg[2]_i_93_n_3 ),
        .O(\uo[4]_i_207_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[4]_i_208 
       (.I0(fit2[1]),
        .I1(fit2[3]),
        .O(\uo[4]_i_208_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[4]_i_209 
       (.I0(fit2[2]),
        .I1(f_b0[0]),
        .O(\uo[4]_i_209_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[4]_i_21 
       (.I0(\uio_r_reg[7]_0 [3]),
        .I1(\uo_reg[4]_i_15_0 [3]),
        .I2(\uio_r_reg[7]_0 [2]),
        .I3(\uo_reg[4]_i_15_0 [2]),
        .O(\uo[4]_i_21_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \uo[4]_i_210 
       (.I0(fit2[1]),
        .O(\uo[4]_i_210_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[4]_i_211 
       (.I0(fit2[5]),
        .I1(fit2[7]),
        .O(\uo[4]_i_211_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[4]_i_212 
       (.I0(fit2[4]),
        .I1(fit2[6]),
        .O(\uo[4]_i_212_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[4]_i_213 
       (.I0(fit2[3]),
        .I1(fit2[5]),
        .O(\uo[4]_i_213_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[4]_i_214 
       (.I0(fit2[2]),
        .I1(fit2[4]),
        .O(\uo[4]_i_214_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[4]_i_22 
       (.I0(\uio_r_reg[7]_0 [1]),
        .I1(\uo_reg[4]_i_15_0 [1]),
        .I2(\uio_r_reg[7]_0 [0]),
        .I3(\uo_reg[4]_i_15_0 [0]),
        .O(\uo[4]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT5 #(
    .INIT(32'hFFFF00F4)) 
    \uo[4]_i_27 
       (.I0(\uo_reg[4]_i_33_n_3 ),
        .I1(\uo[4]_i_34_n_0 ),
        .I2(\uo_reg[4]_i_35_n_0 ),
        .I3(\uo_reg[2]_i_33_n_0 ),
        .I4(\uo_reg[2]_i_34_n_2 ),
        .O(\uo[4]_i_27_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \uo[4]_i_28 
       (.I0(\uo_reg[2]_i_32_n_3 ),
        .I1(\uo_reg[2]_i_31_n_0 ),
        .I2(\uo[2]_i_28_n_0 ),
        .I3(\uo_reg[4]_i_31_n_3 ),
        .I4(\uo_reg[4]_i_32_n_2 ),
        .O(\uo[4]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \uo[4]_i_29 
       (.I0(\uo_reg[4]_i_32_n_2 ),
        .I1(\uo[2]_i_26_n_0 ),
        .O(\uo[4]_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT5 #(
    .INIT(32'hEEEEEEEF)) 
    \uo[4]_i_30 
       (.I0(\uo_reg[4]_i_31_n_3 ),
        .I1(\uo_reg[4]_i_32_n_2 ),
        .I2(\uo_reg[2]_i_34_n_2 ),
        .I3(\uo_reg[2]_i_33_n_0 ),
        .I4(\uo[2]_i_25_n_0 ),
        .O(\uo[4]_i_30_n_0 ));
  LUT5 #(
    .INIT(32'hBABBBABA)) 
    \uo[4]_i_34 
       (.I0(\uo_reg[2]_i_42_n_3 ),
        .I1(\uo_reg[2]_i_41_n_3 ),
        .I2(\uo_reg[1]_i_22_n_3 ),
        .I3(\uo_reg[1]_i_21_n_3 ),
        .I4(data0),
        .O(\uo[4]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \uo[4]_i_37 
       (.I0(\uo_reg[2]_i_34_n_2 ),
        .I1(\uo_reg[4]_i_63_n_1 ),
        .O(\uo[4]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[4]_i_38 
       (.I0(\uo_reg[2]_i_34_n_2 ),
        .I1(\uo_reg[4]_i_63_n_1 ),
        .O(\uo[4]_i_38_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \uo[4]_i_40 
       (.I0(\uo_reg[2]_i_34_n_2 ),
        .O(pt[12]));
  LUT2 #(
    .INIT(4'h2)) 
    \uo[4]_i_42 
       (.I0(\uo_reg[2]_i_34_n_2 ),
        .I1(\uo_reg[4]_i_82_n_3 ),
        .O(\uo[4]_i_42_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \uo[4]_i_43 
       (.I0(\uo_reg[2]_i_34_n_2 ),
        .I1(\uo_reg[4]_i_82_n_3 ),
        .O(\uo[4]_i_43_n_0 ));
  LUT3 #(
    .INIT(8'h4C)) 
    \uo[4]_i_46 
       (.I0(\uo[2]_i_111_n_0 ),
        .I1(\uo_reg[2]_i_34_n_2 ),
        .I2(\uo_reg[2]_i_93_n_3 ),
        .O(\uo[4]_i_46_n_0 ));
  LUT3 #(
    .INIT(8'h0D)) 
    \uo[4]_i_47 
       (.I0(\uo_reg[2]_i_93_n_3 ),
        .I1(\uo[2]_i_111_n_0 ),
        .I2(\uo_reg[2]_i_34_n_2 ),
        .O(\uo[4]_i_47_n_0 ));
  LUT5 #(
    .INIT(32'h9090F990)) 
    \uo[4]_i_48 
       (.I0(\uo_reg[2]_i_93_n_3 ),
        .I1(\uo[2]_i_111_n_0 ),
        .I2(pt[11]),
        .I3(pt[10]),
        .I4(\uo[2]_i_113_n_0 ),
        .O(\uo[4]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h9A009A00FF9A9A00)) 
    \uo[4]_i_49 
       (.I0(fit2[7]),
        .I1(fit2[6]),
        .I2(\uo[2]_i_112_n_0 ),
        .I3(pt[9]),
        .I4(pt[8]),
        .I5(\uo[4]_i_94_n_0 ),
        .O(\uo[4]_i_49_n_0 ));
  LUT3 #(
    .INIT(8'h95)) 
    \uo[4]_i_50 
       (.I0(\uo_reg[2]_i_34_n_2 ),
        .I1(\uo[2]_i_111_n_0 ),
        .I2(\uo_reg[2]_i_93_n_3 ),
        .O(\uo[4]_i_50_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \uo[4]_i_51 
       (.I0(\uo_reg[2]_i_93_n_3 ),
        .I1(\uo[2]_i_111_n_0 ),
        .I2(\uo_reg[2]_i_34_n_2 ),
        .O(\uo[4]_i_51_n_0 ));
  LUT5 #(
    .INIT(32'h69000069)) 
    \uo[4]_i_52 
       (.I0(\uo_reg[2]_i_93_n_3 ),
        .I1(\uo[2]_i_111_n_0 ),
        .I2(pt[11]),
        .I3(\uo[2]_i_113_n_0 ),
        .I4(pt[10]),
        .O(\uo[4]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h659A00000000659A)) 
    \uo[4]_i_53 
       (.I0(fit2[7]),
        .I1(fit2[6]),
        .I2(\uo[2]_i_112_n_0 ),
        .I3(pt[9]),
        .I4(\uo[4]_i_94_n_0 ),
        .I5(pt[8]),
        .O(\uo[4]_i_53_n_0 ));
  LUT3 #(
    .INIT(8'h15)) 
    \uo[4]_i_55 
       (.I0(\uo_reg[2]_i_34_n_2 ),
        .I1(\uo_reg[4]_i_63_n_6 ),
        .I2(\uo_reg[4]_i_63_n_7 ),
        .O(\uo[4]_i_55_n_0 ));
  LUT3 #(
    .INIT(8'h15)) 
    \uo[4]_i_56 
       (.I0(\uo_reg[2]_i_34_n_2 ),
        .I1(\uo_reg[4]_i_103_n_4 ),
        .I2(\uo_reg[4]_i_103_n_5 ),
        .O(\uo[4]_i_56_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[4]_i_57 
       (.I0(pt[11]),
        .I1(\uo_reg[4]_i_103_n_6 ),
        .I2(pt[10]),
        .I3(\uo_reg[4]_i_103_n_7 ),
        .O(\uo[4]_i_57_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[4]_i_58 
       (.I0(pt[9]),
        .I1(\uo_reg[4]_i_104_n_4 ),
        .I2(pt[8]),
        .I3(\uo_reg[4]_i_104_n_5 ),
        .O(\uo[4]_i_58_n_0 ));
  LUT3 #(
    .INIT(8'h18)) 
    \uo[4]_i_59 
       (.I0(\uo_reg[4]_i_63_n_6 ),
        .I1(\uo_reg[4]_i_63_n_7 ),
        .I2(\uo_reg[2]_i_34_n_2 ),
        .O(\uo[4]_i_59_n_0 ));
  LUT3 #(
    .INIT(8'h18)) 
    \uo[4]_i_60 
       (.I0(\uo_reg[4]_i_103_n_4 ),
        .I1(\uo_reg[4]_i_103_n_5 ),
        .I2(\uo_reg[2]_i_34_n_2 ),
        .O(\uo[4]_i_60_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[4]_i_61 
       (.I0(\uo_reg[4]_i_103_n_6 ),
        .I1(pt[11]),
        .I2(\uo_reg[4]_i_103_n_7 ),
        .I3(pt[10]),
        .O(\uo[4]_i_61_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[4]_i_62 
       (.I0(\uo_reg[4]_i_104_n_4 ),
        .I1(pt[9]),
        .I2(\uo_reg[4]_i_104_n_5 ),
        .I3(pt[8]),
        .O(\uo[4]_i_62_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \uo[4]_i_65 
       (.I0(\uo_reg[2]_i_34_n_2 ),
        .O(\uo[4]_i_65_n_0 ));
  LUT3 #(
    .INIT(8'h51)) 
    \uo[4]_i_66 
       (.I0(\uo_reg[2]_i_34_n_2 ),
        .I1(fit2[8]),
        .I2(\uo_reg[2]_i_93_n_3 ),
        .O(\uo[4]_i_66_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[4]_i_67 
       (.I0(pt[11]),
        .I1(fit2[7]),
        .I2(pt[10]),
        .I3(fit2[6]),
        .O(\uo[4]_i_67_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[4]_i_68 
       (.I0(pt[9]),
        .I1(fit2[5]),
        .I2(pt[8]),
        .I3(fit2[4]),
        .O(\uo[4]_i_68_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \uo[4]_i_69 
       (.I0(\uo_reg[2]_i_34_n_2 ),
        .I1(\uo_reg[2]_i_93_n_3 ),
        .O(\uo[4]_i_69_n_0 ));
  LUT3 #(
    .INIT(8'h24)) 
    \uo[4]_i_70 
       (.I0(\uo_reg[2]_i_93_n_3 ),
        .I1(fit2[8]),
        .I2(\uo_reg[2]_i_34_n_2 ),
        .O(\uo[4]_i_70_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[4]_i_71 
       (.I0(fit2[7]),
        .I1(pt[11]),
        .I2(fit2[6]),
        .I3(pt[10]),
        .O(\uo[4]_i_71_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[4]_i_72 
       (.I0(fit2[5]),
        .I1(pt[9]),
        .I2(fit2[4]),
        .I3(pt[8]),
        .O(\uo[4]_i_72_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \uo[4]_i_74 
       (.I0(\uo_reg[2]_i_34_n_2 ),
        .I1(\uo_reg[4]_i_82_n_3 ),
        .I2(\uo_reg[4]_i_126_n_4 ),
        .O(\uo[4]_i_74_n_0 ));
  LUT3 #(
    .INIT(8'h15)) 
    \uo[4]_i_75 
       (.I0(\uo_reg[2]_i_34_n_2 ),
        .I1(\uo_reg[4]_i_126_n_5 ),
        .I2(\uo_reg[4]_i_126_n_6 ),
        .O(\uo[4]_i_75_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[4]_i_76 
       (.I0(pt[11]),
        .I1(\uo_reg[4]_i_126_n_7 ),
        .I2(pt[10]),
        .I3(\uo_reg[4]_i_127_n_4 ),
        .O(\uo[4]_i_76_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[4]_i_77 
       (.I0(pt[9]),
        .I1(\uo_reg[4]_i_127_n_5 ),
        .I2(pt[8]),
        .I3(\uo_reg[4]_i_127_n_6 ),
        .O(\uo[4]_i_77_n_0 ));
  LUT3 #(
    .INIT(8'h42)) 
    \uo[4]_i_78 
       (.I0(\uo_reg[4]_i_126_n_4 ),
        .I1(\uo_reg[2]_i_34_n_2 ),
        .I2(\uo_reg[4]_i_82_n_3 ),
        .O(\uo[4]_i_78_n_0 ));
  LUT3 #(
    .INIT(8'h18)) 
    \uo[4]_i_79 
       (.I0(\uo_reg[4]_i_126_n_5 ),
        .I1(\uo_reg[4]_i_126_n_6 ),
        .I2(\uo_reg[2]_i_34_n_2 ),
        .O(\uo[4]_i_79_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[4]_i_80 
       (.I0(\uo_reg[4]_i_126_n_7 ),
        .I1(pt[11]),
        .I2(\uo_reg[4]_i_127_n_4 ),
        .I3(pt[10]),
        .O(\uo[4]_i_80_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[4]_i_81 
       (.I0(\uo_reg[4]_i_127_n_5 ),
        .I1(pt[9]),
        .I2(\uo_reg[4]_i_127_n_6 ),
        .I3(pt[8]),
        .O(\uo[4]_i_81_n_0 ));
  LUT3 #(
    .INIT(8'h4C)) 
    \uo[4]_i_84 
       (.I0(\uo[2]_i_111_n_0 ),
        .I1(\uo_reg[2]_i_34_n_2 ),
        .I2(\uo_reg[2]_i_93_n_3 ),
        .O(\uo[4]_i_84_n_0 ));
  LUT3 #(
    .INIT(8'h95)) 
    \uo[4]_i_85 
       (.I0(\uo_reg[2]_i_34_n_2 ),
        .I1(\uo[2]_i_111_n_0 ),
        .I2(\uo_reg[2]_i_93_n_3 ),
        .O(\uo[4]_i_85_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[4]_i_86 
       (.I0(pt[7]),
        .I1(\uo[2]_i_198_n_0 ),
        .I2(pt[6]),
        .I3(\uo[2]_i_199_n_0 ),
        .O(\uo[4]_i_86_n_0 ));
  LUT6 #(
    .INIT(64'hFEAAA803AAA80002)) 
    \uo[4]_i_87 
       (.I0(pt[5]),
        .I1(fit2[1]),
        .I2(f_b0[0]),
        .I3(fit2[2]),
        .I4(fit2[3]),
        .I5(pt[4]),
        .O(\uo[4]_i_87_n_0 ));
  LUT4 #(
    .INIT(16'hB501)) 
    \uo[4]_i_88 
       (.I0(f_b0[0]),
        .I1(\uo[2]_i_180_n_0 ),
        .I2(fit2[1]),
        .I3(pt[3]),
        .O(\uo[4]_i_88_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \uo[4]_i_89 
       (.I0(fit2[1]),
        .I1(f_b0[0]),
        .I2(\uo[4]_i_137_n_0 ),
        .O(\uo[4]_i_89_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[4]_i_90 
       (.I0(\uo[2]_i_198_n_0 ),
        .I1(pt[7]),
        .I2(\uo[2]_i_199_n_0 ),
        .I3(pt[6]),
        .O(\uo[4]_i_90_n_0 ));
  LUT6 #(
    .INIT(64'h0606066060606009)) 
    \uo[4]_i_91 
       (.I0(fit2[3]),
        .I1(pt[5]),
        .I2(fit2[2]),
        .I3(fit2[1]),
        .I4(f_b0[0]),
        .I5(pt[4]),
        .O(\uo[4]_i_91_n_0 ));
  LUT4 #(
    .INIT(16'h0960)) 
    \uo[4]_i_92 
       (.I0(fit2[1]),
        .I1(pt[3]),
        .I2(f_b0[0]),
        .I3(\uo[2]_i_180_n_0 ),
        .O(\uo[4]_i_92_n_0 ));
  LUT3 #(
    .INIT(8'hF1)) 
    \uo[4]_i_93 
       (.I0(fit2[1]),
        .I1(f_b0[0]),
        .I2(\uo[4]_i_137_n_0 ),
        .O(\uo[4]_i_93_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555655)) 
    \uo[4]_i_94 
       (.I0(fit2[6]),
        .I1(fit2[5]),
        .I2(fit2[3]),
        .I3(\uo[4]_i_138_n_0 ),
        .I4(fit2[2]),
        .I5(fit2[4]),
        .O(\uo[4]_i_94_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[4]_i_95 
       (.I0(pt[7]),
        .I1(\uo_reg[4]_i_104_n_6 ),
        .I2(pt[6]),
        .I3(\uo_reg[4]_i_104_n_7 ),
        .O(\uo[4]_i_95_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[4]_i_96 
       (.I0(pt[5]),
        .I1(\uo_reg[4]_i_139_n_4 ),
        .I2(pt[4]),
        .I3(\uo_reg[4]_i_139_n_5 ),
        .O(\uo[4]_i_96_n_0 ));
  LUT4 #(
    .INIT(16'h222B)) 
    \uo[4]_i_97 
       (.I0(pt[3]),
        .I1(\uo_reg[4]_i_139_n_6 ),
        .I2(\uo_reg[4]_i_139_n_7 ),
        .I3(\uo[2]_i_180_n_0 ),
        .O(\uo[4]_i_97_n_0 ));
  LUT5 #(
    .INIT(32'h3F771300)) 
    \uo[4]_i_98 
       (.I0(\uo_reg[2]_i_60_n_0 ),
        .I1(f_b0[0]),
        .I2(\uo[2]_i_181_n_0 ),
        .I3(fit2[1]),
        .I4(\uo[4]_i_140_n_0 ),
        .O(\uo[4]_i_98_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[4]_i_99 
       (.I0(\uo_reg[4]_i_104_n_6 ),
        .I1(pt[7]),
        .I2(\uo_reg[4]_i_104_n_7 ),
        .I3(pt[6]),
        .O(\uo[4]_i_99_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \uo[5]_i_2 
       (.I0(run),
        .I1(\uo[5]_i_7_n_0 ),
        .I2(\uio_r_reg[7]_0 [5]),
        .O(run_reg_1));
  LUT5 #(
    .INIT(32'h80000000)) 
    \uo[5]_i_7 
       (.I0(\uio_r_reg[7]_0 [3]),
        .I1(\uio_r_reg[7]_0 [1]),
        .I2(\uio_r_reg[7]_0 [0]),
        .I3(\uio_r_reg[7]_0 [2]),
        .I4(\uio_r_reg[7]_0 [4]),
        .O(\uo[5]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \uo[6]_i_2 
       (.I0(run),
        .I1(\uo[7]_i_9_n_0 ),
        .I2(\uio_r_reg[7]_0 [6]),
        .O(run_reg_2));
  LUT4 #(
    .INIT(16'h6996)) 
    \uo[7]_i_100 
       (.I0(\uo[7]_i_96_n_0 ),
        .I1(\uo[7]_i_107_n_0 ),
        .I2(\uo_reg[7]_i_63_0 ),
        .I3(\uo[7]_i_108_n_0 ),
        .O(\uo[7]_i_100_n_0 ));
  LUT6 #(
    .INIT(64'h9996666666699999)) 
    \uo[7]_i_101 
       (.I0(\uo[7]_i_97_n_0 ),
        .I1(\uo[7]_i_119_n_0 ),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(uq[0]),
        .I5(\uo[7]_i_120_n_0 ),
        .O(\uo[7]_i_101_n_0 ));
  LUT6 #(
    .INIT(64'h9996666666699999)) 
    \uo[7]_i_102 
       (.I0(\uo[7]_i_98_n_0 ),
        .I1(\uo[7]_i_121_n_0 ),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(uq[0]),
        .I5(\uo[7]_i_122_n_0 ),
        .O(\uo[7]_i_102_n_0 ));
  LUT6 #(
    .INIT(64'hAA6AAA6A6656AA6A)) 
    \uo[7]_i_103 
       (.I0(\uo[7]_i_99_n_0 ),
        .I1(\uo[7]_i_126_n_0 ),
        .I2(uq[2]),
        .I3(\uo[7]_i_118_n_0 ),
        .I4(uq[3]),
        .I5(\uo[7]_i_116_n_0 ),
        .O(\uo[7]_i_103_n_0 ));
  LUT6 #(
    .INIT(64'hCECA0C00FEFACCC0)) 
    \uo[7]_i_104 
       (.I0(Q[0]),
        .I1(uq[2]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(uq[3]),
        .I5(uq[1]),
        .O(\uo[7]_i_104_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT5 #(
    .INIT(32'h00073737)) 
    \uo[7]_i_105 
       (.I0(\m_sec_reg_n_0_[4] ),
        .I1(uq[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(uq[2]),
        .O(\uo[7]_i_105_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFBFFB0BBFBFF)) 
    \uo[7]_i_107 
       (.I0(\uo[7]_i_127_n_0 ),
        .I1(uq[3]),
        .I2(\uo[7]_i_112_n_0 ),
        .I3(uq[2]),
        .I4(uq[1]),
        .I5(\uo[7]_i_128_n_0 ),
        .O(\uo[7]_i_107_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT5 #(
    .INIT(32'h3738C8C8)) 
    \uo[7]_i_108 
       (.I0(\m_sec_reg_n_0_[4] ),
        .I1(uq[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(uq[2]),
        .O(\uo[7]_i_108_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \uo[7]_i_110 
       (.I0(uq[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\uo[7]_i_110_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT4 #(
    .INIT(16'h08C8)) 
    \uo[7]_i_111 
       (.I0(Q[1]),
        .I1(uq[1]),
        .I2(Q[2]),
        .I3(uq[0]),
        .O(\uo[7]_i_111_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \uo[7]_i_112 
       (.I0(Q[2]),
        .I1(\m_sec_reg_n_0_[4] ),
        .O(\uo[7]_i_112_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \uo[7]_i_113 
       (.I0(uq[2]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(\uo[7]_i_113_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \uo[7]_i_114 
       (.I0(uq[2]),
        .I1(\m_sec_reg_n_0_[1] ),
        .I2(Q[2]),
        .O(\uo[7]_i_114_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \uo[7]_i_115 
       (.I0(Q[2]),
        .I1(\m_sec_reg_n_0_[2] ),
        .O(\uo[7]_i_115_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \uo[7]_i_116 
       (.I0(Q[2]),
        .I1(\m_sec_reg_n_0_[0] ),
        .O(\uo[7]_i_116_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \uo[7]_i_117 
       (.I0(uq[0]),
        .I1(\m_sec_reg_n_0_[3] ),
        .I2(Q[2]),
        .O(\uo[7]_i_117_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \uo[7]_i_118 
       (.I0(Q[2]),
        .I1(\m_sec_reg_n_0_[1] ),
        .O(\uo[7]_i_118_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFBFFB0BBFBFF)) 
    \uo[7]_i_119 
       (.I0(\uo[7]_i_115_n_0 ),
        .I1(uq[3]),
        .I2(\uo[7]_i_127_n_0 ),
        .I3(uq[2]),
        .I4(uq[1]),
        .I5(\uo[7]_i_112_n_0 ),
        .O(\uo[7]_i_119_n_0 ));
  LUT6 #(
    .INIT(64'hC3C387773C3C7888)) 
    \uo[7]_i_120 
       (.I0(Q[0]),
        .I1(uq[1]),
        .I2(uq[2]),
        .I3(\m_sec_reg_n_0_[4] ),
        .I4(Q[2]),
        .I5(\uo[7]_i_129_n_0 ),
        .O(\uo[7]_i_120_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFBFFB0BBFBFF)) 
    \uo[7]_i_121 
       (.I0(\uo[7]_i_118_n_0 ),
        .I1(uq[3]),
        .I2(\uo[7]_i_115_n_0 ),
        .I3(uq[2]),
        .I4(uq[1]),
        .I5(\uo[7]_i_127_n_0 ),
        .O(\uo[7]_i_121_n_0 ));
  LUT6 #(
    .INIT(64'hC33CC33C87787878)) 
    \uo[7]_i_122 
       (.I0(\m_sec_reg_n_0_[4] ),
        .I1(uq[1]),
        .I2(\uo[7]_i_130_n_0 ),
        .I3(uq[3]),
        .I4(\m_sec_reg_n_0_[2] ),
        .I5(Q[2]),
        .O(\uo[7]_i_122_n_0 ));
  LUT6 #(
    .INIT(64'hC33CC33C87787878)) 
    \uo[7]_i_123 
       (.I0(\m_sec_reg_n_0_[3] ),
        .I1(uq[1]),
        .I2(\uo[7]_i_131_n_0 ),
        .I3(uq[3]),
        .I4(\m_sec_reg_n_0_[1] ),
        .I5(Q[2]),
        .O(\uo[7]_i_123_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT5 #(
    .INIT(32'hC8C00000)) 
    \uo[7]_i_124 
       (.I0(\m_sec_reg_n_0_[1] ),
        .I1(uq[2]),
        .I2(Q[2]),
        .I3(\m_sec_reg_n_0_[0] ),
        .I4(uq[1]),
        .O(\uo[7]_i_124_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \uo[7]_i_126 
       (.I0(uq[1]),
        .I1(\m_sec_reg_n_0_[2] ),
        .I2(Q[2]),
        .O(\uo[7]_i_126_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \uo[7]_i_127 
       (.I0(Q[2]),
        .I1(\m_sec_reg_n_0_[3] ),
        .O(\uo[7]_i_127_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \uo[7]_i_128 
       (.I0(Q[2]),
        .I1(Q[0]),
        .O(\uo[7]_i_128_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \uo[7]_i_129 
       (.I0(uq[3]),
        .I1(\m_sec_reg_n_0_[3] ),
        .I2(Q[2]),
        .O(\uo[7]_i_129_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \uo[7]_i_130 
       (.I0(uq[2]),
        .I1(\m_sec_reg_n_0_[3] ),
        .I2(Q[2]),
        .O(\uo[7]_i_130_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \uo[7]_i_131 
       (.I0(uq[2]),
        .I1(\m_sec_reg_n_0_[2] ),
        .I2(Q[2]),
        .O(\uo[7]_i_131_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \uo[7]_i_3 
       (.I0(\uo[7]_i_9_n_0 ),
        .I1(\uio_r_reg[7]_0 [6]),
        .I2(\uio_r_reg[7]_0 [7]),
        .I3(run),
        .O(\uio_r_reg[6]_0 ));
  LUT3 #(
    .INIT(8'hAB)) 
    \uo[7]_i_44 
       (.I0(f_margin[13]),
        .I1(f_uniq0[12]),
        .I2(\uo_reg[7]_i_58_n_3 ),
        .O(\uo[7]_i_44_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[7]_i_45 
       (.I0(f_margin[11]),
        .I1(f_uniq0[11]),
        .I2(f_margin[10]),
        .I3(f_uniq0[10]),
        .O(\uo[7]_i_45_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \uo[7]_i_46 
       (.I0(f_uniq0[12]),
        .I1(\uo_reg[7]_i_58_n_3 ),
        .I2(f_margin[13]),
        .O(\uo[7]_i_46_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[7]_i_47 
       (.I0(f_uniq0[11]),
        .I1(f_margin[11]),
        .I2(f_uniq0[10]),
        .I3(f_margin[10]),
        .O(\uo[7]_i_47_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \uo[7]_i_48 
       (.I0(f_uniq0[0]),
        .I1(f_uniq0[1]),
        .O(\uo[7]_i_48_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[7]_i_49 
       (.I0(f_margin[9]),
        .I1(f_uniq0[9]),
        .I2(f_margin[8]),
        .I3(f_uniq0[8]),
        .O(\uo[7]_i_49_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[7]_i_50 
       (.I0(f_margin[7]),
        .I1(f_uniq0[7]),
        .I2(f_margin[6]),
        .I3(f_uniq0[6]),
        .O(\uo[7]_i_50_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \uo[7]_i_51 
       (.I0(f_margin[5]),
        .I1(f_uniq0[5]),
        .I2(f_margin[4]),
        .I3(f_uniq0[4]),
        .O(\uo[7]_i_51_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[7]_i_52 
       (.I0(f_uniq0[9]),
        .I1(f_margin[9]),
        .I2(f_uniq0[8]),
        .I3(f_margin[8]),
        .O(\uo[7]_i_52_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[7]_i_53 
       (.I0(f_uniq0[7]),
        .I1(f_margin[7]),
        .I2(f_uniq0[6]),
        .I3(f_margin[6]),
        .O(\uo[7]_i_53_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \uo[7]_i_54 
       (.I0(f_uniq0[5]),
        .I1(f_margin[5]),
        .I2(f_uniq0[4]),
        .I3(f_margin[4]),
        .O(\uo[7]_i_54_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \uo[7]_i_55 
       (.I0(f_uniq0[3]),
        .I1(f_uniq0[2]),
        .O(\uo[7]_i_55_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \uo[7]_i_64 
       (.I0(Q[2]),
        .O(\uo[7]_i_64_n_0 ));
  LUT3 #(
    .INIT(8'h54)) 
    \uo[7]_i_66 
       (.I0(p_0_in[7]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\uo[7]_i_66_n_0 ));
  LUT3 #(
    .INIT(8'h54)) 
    \uo[7]_i_67 
       (.I0(p_0_in[6]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(\uo[7]_i_67_n_0 ));
  LUT3 #(
    .INIT(8'h54)) 
    \uo[7]_i_68 
       (.I0(p_0_in[5]),
        .I1(\m_sec_reg_n_0_[4] ),
        .I2(Q[2]),
        .O(\uo[7]_i_68_n_0 ));
  LUT3 #(
    .INIT(8'h54)) 
    \uo[7]_i_69 
       (.I0(p_0_in[4]),
        .I1(\m_sec_reg_n_0_[3] ),
        .I2(Q[2]),
        .O(\uo[7]_i_69_n_0 ));
  LUT3 #(
    .INIT(8'h3D)) 
    \uo[7]_i_70 
       (.I0(Q[1]),
        .I1(p_0_in[7]),
        .I2(Q[2]),
        .O(\uo[7]_i_70_n_0 ));
  LUT5 #(
    .INIT(32'hCDC2323D)) 
    \uo[7]_i_71 
       (.I0(Q[0]),
        .I1(p_0_in[6]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(p_0_in[7]),
        .O(\uo[7]_i_71_n_0 ));
  LUT5 #(
    .INIT(32'hCDC2323D)) 
    \uo[7]_i_72 
       (.I0(\m_sec_reg_n_0_[4] ),
        .I1(p_0_in[5]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(p_0_in[6]),
        .O(\uo[7]_i_72_n_0 ));
  LUT5 #(
    .INIT(32'hCDC2323D)) 
    \uo[7]_i_73 
       (.I0(\m_sec_reg_n_0_[3] ),
        .I1(p_0_in[4]),
        .I2(Q[2]),
        .I3(\m_sec_reg_n_0_[4] ),
        .I4(p_0_in[5]),
        .O(\uo[7]_i_73_n_0 ));
  LUT6 #(
    .INIT(64'h202A8A8A808A2A2A)) 
    \uo[7]_i_75 
       (.I0(\uo[7]_i_104_n_0 ),
        .I1(uq[2]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(uq[3]),
        .I5(uq[0]),
        .O(\uq_reg[2] ));
  LUT6 #(
    .INIT(64'h0040504055D5F5D5)) 
    \uo[7]_i_76 
       (.I0(\uo[7]_i_105_n_0 ),
        .I1(Q[1]),
        .I2(uq[1]),
        .I3(Q[2]),
        .I4(uq[0]),
        .I5(\uo_reg[7]_i_60_0 ),
        .O(\uo[7]_i_76_n_0 ));
  LUT6 #(
    .INIT(64'h50150515F57F5F7F)) 
    \uo[7]_i_77 
       (.I0(\uo[7]_i_107_n_0 ),
        .I1(Q[1]),
        .I2(uq[1]),
        .I3(Q[2]),
        .I4(uq[0]),
        .I5(\uo[7]_i_108_n_0 ),
        .O(\uo[7]_i_77_n_0 ));
  LUT6 #(
    .INIT(64'h695A965A96A569A5)) 
    \uo[7]_i_80 
       (.I0(\uo[7]_i_76_n_0 ),
        .I1(uq[0]),
        .I2(\uo[7]_i_110_n_0 ),
        .I3(Q[2]),
        .I4(uq[2]),
        .I5(\uo[7]_i_104_n_0 ),
        .O(\uo[7]_i_80_n_0 ));
  LUT6 #(
    .INIT(64'h9696969669966969)) 
    \uo[7]_i_81 
       (.I0(\uo[7]_i_77_n_0 ),
        .I1(\uo[7]_i_111_n_0 ),
        .I2(\uo_reg[7]_i_60_0 ),
        .I3(\uo[7]_i_112_n_0 ),
        .I4(uq[3]),
        .I5(\uo[7]_i_113_n_0 ),
        .O(\uo[7]_i_81_n_0 ));
  LUT6 #(
    .INIT(64'hC33CC33C87787878)) 
    \uo[7]_i_82 
       (.I0(\m_sec_reg_n_0_[2] ),
        .I1(uq[1]),
        .I2(\uo[7]_i_114_n_0 ),
        .I3(uq[3]),
        .I4(\m_sec_reg_n_0_[0] ),
        .I5(Q[2]),
        .O(\uo[7]_i_82_n_0 ));
  LUT5 #(
    .INIT(32'h5A785A88)) 
    \uo[7]_i_83 
       (.I0(uq[1]),
        .I1(\m_sec_reg_n_0_[1] ),
        .I2(uq[2]),
        .I3(Q[2]),
        .I4(\m_sec_reg_n_0_[0] ),
        .O(\uo[7]_i_83_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \uo[7]_i_84 
       (.I0(uq[1]),
        .I1(\m_sec_reg_n_0_[0] ),
        .I2(Q[2]),
        .O(\uo[7]_i_84_n_0 ));
  LUT6 #(
    .INIT(64'h3C660FA5C399F05A)) 
    \uo[7]_i_85 
       (.I0(uq[3]),
        .I1(\uo[7]_i_115_n_0 ),
        .I2(\uo[7]_i_114_n_0 ),
        .I3(\uo[7]_i_116_n_0 ),
        .I4(uq[1]),
        .I5(\uo[7]_i_117_n_0 ),
        .O(\uo[7]_i_85_n_0 ));
  LUT6 #(
    .INIT(64'h4B44B4BB4B444B44)) 
    \uo[7]_i_86 
       (.I0(\uo[7]_i_116_n_0 ),
        .I1(uq[2]),
        .I2(\uo[7]_i_118_n_0 ),
        .I3(uq[1]),
        .I4(\uo[7]_i_115_n_0 ),
        .I5(uq[0]),
        .O(\uo[7]_i_86_n_0 ));
  LUT5 #(
    .INIT(32'h3738C8C8)) 
    \uo[7]_i_87 
       (.I0(\m_sec_reg_n_0_[1] ),
        .I1(uq[0]),
        .I2(Q[2]),
        .I3(\m_sec_reg_n_0_[0] ),
        .I4(uq[1]),
        .O(\uo[7]_i_87_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \uo[7]_i_88 
       (.I0(uq[0]),
        .I1(\m_sec_reg_n_0_[0] ),
        .I2(Q[2]),
        .O(\uo[7]_i_88_n_0 ));
  LUT3 #(
    .INIT(8'h54)) 
    \uo[7]_i_89 
       (.I0(p_0_in[3]),
        .I1(\m_sec_reg_n_0_[2] ),
        .I2(Q[2]),
        .O(\uo[7]_i_89_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \uo[7]_i_9 
       (.I0(\uio_r_reg[7]_0 [4]),
        .I1(\uio_r_reg[7]_0 [2]),
        .I2(\uio_r_reg[7]_0 [0]),
        .I3(\uio_r_reg[7]_0 [1]),
        .I4(\uio_r_reg[7]_0 [3]),
        .I5(\uio_r_reg[7]_0 [5]),
        .O(\uo[7]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h54)) 
    \uo[7]_i_90 
       (.I0(p_0_in[2]),
        .I1(\m_sec_reg_n_0_[1] ),
        .I2(Q[2]),
        .O(\uo[7]_i_90_n_0 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \uo[7]_i_91 
       (.I0(p_0_in[1]),
        .I1(\m_sec_reg_n_0_[0] ),
        .I2(Q[2]),
        .O(\uo[7]_i_91_n_0 ));
  LUT5 #(
    .INIT(32'hCDC2323D)) 
    \uo[7]_i_92 
       (.I0(\m_sec_reg_n_0_[2] ),
        .I1(p_0_in[3]),
        .I2(Q[2]),
        .I3(\m_sec_reg_n_0_[3] ),
        .I4(p_0_in[4]),
        .O(\uo[7]_i_92_n_0 ));
  LUT5 #(
    .INIT(32'hCDC2323D)) 
    \uo[7]_i_93 
       (.I0(\m_sec_reg_n_0_[1] ),
        .I1(p_0_in[2]),
        .I2(Q[2]),
        .I3(\m_sec_reg_n_0_[2] ),
        .I4(p_0_in[3]),
        .O(\uo[7]_i_93_n_0 ));
  LUT5 #(
    .INIT(32'h040BFBF4)) 
    \uo[7]_i_94 
       (.I0(\m_sec_reg_n_0_[0] ),
        .I1(p_0_in[1]),
        .I2(Q[2]),
        .I3(\m_sec_reg_n_0_[1] ),
        .I4(p_0_in[2]),
        .O(\uo[7]_i_94_n_0 ));
  LUT3 #(
    .INIT(8'h1E)) 
    \uo[7]_i_95 
       (.I0(Q[2]),
        .I1(\m_sec_reg_n_0_[0] ),
        .I2(p_0_in[1]),
        .O(\uo[7]_i_95_n_0 ));
  LUT5 #(
    .INIT(32'hFD555400)) 
    \uo[7]_i_96 
       (.I0(\uo[7]_i_119_n_0 ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(uq[0]),
        .I4(\uo[7]_i_120_n_0 ),
        .O(\uo[7]_i_96_n_0 ));
  LUT5 #(
    .INIT(32'hFD555400)) 
    \uo[7]_i_97 
       (.I0(\uo[7]_i_121_n_0 ),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(uq[0]),
        .I4(\uo[7]_i_122_n_0 ),
        .O(\uo[7]_i_97_n_0 ));
  LUT6 #(
    .INIT(64'hF0E0E0A0E000E000)) 
    \uo[7]_i_98 
       (.I0(Q[2]),
        .I1(\m_sec_reg_n_0_[4] ),
        .I2(uq[0]),
        .I3(\uo[7]_i_123_n_0 ),
        .I4(\m_sec_reg_n_0_[3] ),
        .I5(\uo[7]_i_124_n_0 ),
        .O(\uo[7]_i_98_n_0 ));
  LUT6 #(
    .INIT(64'hA5F0A5F087F078F0)) 
    \uo[7]_i_99 
       (.I0(\uo[7]_i_124_n_0 ),
        .I1(\m_sec_reg_n_0_[3] ),
        .I2(\uo[7]_i_123_n_0 ),
        .I3(uq[0]),
        .I4(\m_sec_reg_n_0_[4] ),
        .I5(Q[2]),
        .O(\uo[7]_i_99_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \uo_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(uo_out[0]),
        .R(SR[1]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \uo_reg[0]_i_16 
       (.CI(1'b0),
        .CO({\uio_r_reg[6]_1 ,\uo_reg[0]_i_16_n_1 ,\uo_reg[0]_i_16_n_2 ,\uo_reg[0]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\uo[0]_i_17_n_0 ,\uo[0]_i_18_n_0 ,\uo[0]_i_19_n_0 ,\uo[0]_i_20_n_0 }),
        .O(\NLW_uo_reg[0]_i_16_O_UNCONNECTED [3:0]),
        .S(\uo[6]_i_10 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \uo_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(uo_out[1]),
        .R(SR[1]));
  CARRY4 \uo_reg[1]_i_103 
       (.CI(1'b0),
        .CO({\NLW_uo_reg[1]_i_103_CO_UNCONNECTED [3],\uo_reg[1]_i_103_n_1 ,\NLW_uo_reg[1]_i_103_CO_UNCONNECTED [1],\uo_reg[1]_i_103_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\uo[1]_i_104_n_0 ,1'b0}),
        .O({\NLW_uo_reg[1]_i_103_O_UNCONNECTED [3:2],\uo_reg[1]_i_103_n_6 ,\uo_reg[1]_i_103_n_7 }),
        .S({1'b0,1'b1,\uo_reg[2]_i_93_n_3 ,\uo_reg[2]_i_93_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \uo_reg[1]_i_21 
       (.CI(\uo_reg[1]_i_23_n_0 ),
        .CO({\NLW_uo_reg[1]_i_21_CO_UNCONNECTED [3:1],\uo_reg[1]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\uo[1]_i_24_n_0 }),
        .O(\NLW_uo_reg[1]_i_21_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\uo[1]_i_25_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \uo_reg[1]_i_22 
       (.CI(\uo_reg[1]_i_26_n_0 ),
        .CO({\NLW_uo_reg[1]_i_22_CO_UNCONNECTED [3:1],\uo_reg[1]_i_22_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\uo[1]_i_27_n_0 }),
        .O(\NLW_uo_reg[1]_i_22_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\uo[1]_i_28_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \uo_reg[1]_i_23 
       (.CI(\uo_reg[1]_i_29_n_0 ),
        .CO({\uo_reg[1]_i_23_n_0 ,\uo_reg[1]_i_23_n_1 ,\uo_reg[1]_i_23_n_2 ,\uo_reg[1]_i_23_n_3 }),
        .CYINIT(1'b0),
        .DI({\uo[1]_i_30_n_0 ,\uo[1]_i_31_n_0 ,\uo[1]_i_32_n_0 ,\uo[1]_i_33_n_0 }),
        .O(\NLW_uo_reg[1]_i_23_O_UNCONNECTED [3:0]),
        .S({\uo[1]_i_34_n_0 ,\uo[1]_i_35_n_0 ,\uo[1]_i_36_n_0 ,\uo[1]_i_37_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \uo_reg[1]_i_26 
       (.CI(\uo_reg[1]_i_39_n_0 ),
        .CO({\uo_reg[1]_i_26_n_0 ,\uo_reg[1]_i_26_n_1 ,\uo_reg[1]_i_26_n_2 ,\uo_reg[1]_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({\uo[1]_i_40_n_0 ,\uo[1]_i_41_n_0 ,\uo[1]_i_42_n_0 ,\uo[1]_i_43_n_0 }),
        .O(\NLW_uo_reg[1]_i_26_O_UNCONNECTED [3:0]),
        .S({\uo[1]_i_44_n_0 ,\uo[1]_i_45_n_0 ,\uo[1]_i_46_n_0 ,\uo[1]_i_47_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \uo_reg[1]_i_29 
       (.CI(1'b0),
        .CO({\uo_reg[1]_i_29_n_0 ,\uo_reg[1]_i_29_n_1 ,\uo_reg[1]_i_29_n_2 ,\uo_reg[1]_i_29_n_3 }),
        .CYINIT(1'b1),
        .DI({\uo[1]_i_49_n_0 ,\uo[1]_i_50_n_0 ,\uo[1]_i_51_n_0 ,\uo[1]_i_52_n_0 }),
        .O(\NLW_uo_reg[1]_i_29_O_UNCONNECTED [3:0]),
        .S({\uo[1]_i_53_n_0 ,\uo[1]_i_54_n_0 ,\uo[1]_i_55_n_0 ,\uo[1]_i_56_n_0 }));
  CARRY4 \uo_reg[1]_i_38 
       (.CI(\uo_reg[1]_i_57_n_0 ),
        .CO({\NLW_uo_reg[1]_i_38_CO_UNCONNECTED [3:1],\uo_reg[1]_i_38_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_uo_reg[1]_i_38_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \uo_reg[1]_i_39 
       (.CI(1'b0),
        .CO({\uo_reg[1]_i_39_n_0 ,\uo_reg[1]_i_39_n_1 ,\uo_reg[1]_i_39_n_2 ,\uo_reg[1]_i_39_n_3 }),
        .CYINIT(1'b1),
        .DI({\uo[1]_i_59_n_0 ,\uo[1]_i_60_n_0 ,\uo[1]_i_61_n_0 ,\uo[1]_i_62_n_0 }),
        .O(\NLW_uo_reg[1]_i_39_O_UNCONNECTED [3:0]),
        .S({\uo[1]_i_63_n_0 ,\uo[1]_i_64_n_0 ,\uo[1]_i_65_n_0 ,\uo[1]_i_66_n_0 }));
  CARRY4 \uo_reg[1]_i_48 
       (.CI(\uo_reg[1]_i_67_n_0 ),
        .CO({\uo_reg[1]_i_48_n_0 ,\NLW_uo_reg[1]_i_48_CO_UNCONNECTED [2],\uo_reg[1]_i_48_n_2 ,\uo_reg[1]_i_48_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\uo[1]_i_68_n_0 ,fit2[8]}),
        .O({\NLW_uo_reg[1]_i_48_O_UNCONNECTED [3],\uo_reg[1]_i_48_n_5 ,\uo_reg[1]_i_48_n_6 ,\uo_reg[1]_i_48_n_7 }),
        .S({1'b1,\uo_reg[2]_i_93_n_3 ,\uo[1]_i_69_n_0 ,\uo[1]_i_70_n_0 }));
  CARRY4 \uo_reg[1]_i_57 
       (.CI(\uo_reg[1]_i_58_n_0 ),
        .CO({\uo_reg[1]_i_57_n_0 ,\uo_reg[1]_i_57_n_1 ,\uo_reg[1]_i_57_n_2 ,\uo_reg[1]_i_57_n_3 }),
        .CYINIT(1'b0),
        .DI({\uo[1]_i_72_n_0 ,\uo[1]_i_73_n_0 ,\uo[1]_i_74_n_0 ,\uo[1]_i_75_n_0 }),
        .O({\uo_reg[1]_i_57_n_4 ,\uo_reg[1]_i_57_n_5 ,\uo_reg[1]_i_57_n_6 ,\uo_reg[1]_i_57_n_7 }),
        .S({\uo[1]_i_76_n_0 ,\uo[1]_i_77_n_0 ,\uo[1]_i_78_n_0 ,\uo[1]_i_79_n_0 }));
  CARRY4 \uo_reg[1]_i_58 
       (.CI(\uo_reg[1]_i_71_n_0 ),
        .CO({\uo_reg[1]_i_58_n_0 ,\uo_reg[1]_i_58_n_1 ,\uo_reg[1]_i_58_n_2 ,\uo_reg[1]_i_58_n_3 }),
        .CYINIT(1'b0),
        .DI({\uo[1]_i_80_n_0 ,\uo[1]_i_81_n_0 ,\uo[1]_i_82_n_0 ,\uo[1]_i_83_n_0 }),
        .O({\uo_reg[1]_i_58_n_4 ,\uo_reg[1]_i_58_n_5 ,\uo_reg[1]_i_58_n_6 ,\uo_reg[1]_i_58_n_7 }),
        .S({\uo[1]_i_84_n_0 ,\uo[1]_i_85_n_0 ,\uo[1]_i_86_n_0 ,\uo[1]_i_87_n_0 }));
  CARRY4 \uo_reg[1]_i_67 
       (.CI(\uo_reg[4]_i_160_n_0 ),
        .CO({\uo_reg[1]_i_67_n_0 ,\uo_reg[1]_i_67_n_1 ,\uo_reg[1]_i_67_n_2 ,\uo_reg[1]_i_67_n_3 }),
        .CYINIT(1'b0),
        .DI({\uo[1]_i_88_n_0 ,\uo[1]_i_89_n_0 ,\uo[1]_i_90_n_0 ,\uo[1]_i_91_n_0 }),
        .O({\uo_reg[1]_i_67_n_4 ,\uo_reg[1]_i_67_n_5 ,\uo_reg[1]_i_67_n_6 ,\uo_reg[1]_i_67_n_7 }),
        .S({\uo[1]_i_92_n_0 ,\uo[1]_i_93_n_0 ,\uo[1]_i_94_n_0 ,\uo[1]_i_95_n_0 }));
  CARRY4 \uo_reg[1]_i_71 
       (.CI(1'b0),
        .CO({\uo_reg[1]_i_71_n_0 ,\uo_reg[1]_i_71_n_1 ,\uo_reg[1]_i_71_n_2 ,\uo_reg[1]_i_71_n_3 }),
        .CYINIT(1'b0),
        .DI({\uo[1]_i_96_n_0 ,\uo[1]_i_97_n_0 ,\uo[1]_i_98_n_0 ,1'b0}),
        .O({\uo_reg[1]_i_71_n_4 ,\uo_reg[1]_i_71_n_5 ,\uo_reg[1]_i_71_n_6 ,\uo_reg[1]_i_71_n_7 }),
        .S({\uo[1]_i_99_n_0 ,\uo[1]_i_100_n_0 ,\uo[1]_i_101_n_0 ,\uo[1]_i_102_n_0 }));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \uo_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(uo_out[2]),
        .R(SR[1]));
  CARRY4 \uo_reg[2]_i_114 
       (.CI(1'b0),
        .CO({\uo_reg[2]_i_114_n_0 ,\uo_reg[2]_i_114_n_1 ,\uo_reg[2]_i_114_n_2 ,\uo_reg[2]_i_114_n_3 }),
        .CYINIT(1'b0),
        .DI({pt0[2:0],1'b0}),
        .O(pt[6:3]),
        .S({\uo[2]_i_201_n_0 ,\uo[2]_i_202_n_0 ,\uo[2]_i_203_n_0 ,C}));
  CARRY4 \uo_reg[2]_i_115 
       (.CI(1'b0),
        .CO({\uo_reg[2]_i_115_n_0 ,\uo_reg[2]_i_115_n_1 ,\uo_reg[2]_i_115_n_2 ,\uo_reg[2]_i_115_n_3 }),
        .CYINIT(1'b1),
        .DI({\m_s0_reg_n_0_[3] ,\m_s0_reg_n_0_[2] ,\m_s0_reg_n_0_[1] ,\m_s0_reg_n_0_[0] }),
        .O(pt0[3:0]),
        .S({\uo[2]_i_205_n_0 ,\uo[2]_i_206_n_0 ,\uo[2]_i_207_n_0 ,\uo[2]_i_208_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \uo_reg[2]_i_123 
       (.CI(1'b0),
        .CO({\uo_reg[2]_i_123_n_0 ,\uo_reg[2]_i_123_n_1 ,\uo_reg[2]_i_123_n_2 ,\uo_reg[2]_i_123_n_3 }),
        .CYINIT(1'b1),
        .DI({\uo[2]_i_209_n_0 ,\uo[2]_i_210_n_0 ,\uo[2]_i_211_n_0 ,\uo[2]_i_212_n_0 }),
        .O(\NLW_uo_reg[2]_i_123_O_UNCONNECTED [3:0]),
        .S({\uo[2]_i_213_n_0 ,\uo[2]_i_214_n_0 ,\uo[2]_i_215_n_0 ,\uo[2]_i_216_n_0 }));
  CARRY4 \uo_reg[2]_i_132 
       (.CI(\uo_reg[2]_i_217_n_0 ),
        .CO({\NLW_uo_reg[2]_i_132_CO_UNCONNECTED [3:2],\uo_reg[2]_i_132_n_2 ,\NLW_uo_reg[2]_i_132_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\uo_reg[2]_i_220_n_2 }),
        .O({\NLW_uo_reg[2]_i_132_O_UNCONNECTED [3:1],\uo_reg[2]_i_132_n_7 }),
        .S({1'b0,1'b0,1'b1,\uo[2]_i_221_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \uo_reg[2]_i_133 
       (.CI(1'b0),
        .CO({\uo_reg[2]_i_133_n_0 ,\uo_reg[2]_i_133_n_1 ,\uo_reg[2]_i_133_n_2 ,\uo_reg[2]_i_133_n_3 }),
        .CYINIT(1'b1),
        .DI({\uo[2]_i_222_n_0 ,\uo[2]_i_223_n_0 ,\uo[2]_i_224_n_0 ,\uo[2]_i_225_n_0 }),
        .O(\NLW_uo_reg[2]_i_133_O_UNCONNECTED [3:0]),
        .S({\uo[2]_i_226_n_0 ,\uo[2]_i_227_n_0 ,\uo[2]_i_228_n_0 ,\uo[2]_i_229_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \uo_reg[2]_i_141 
       (.CI(1'b0),
        .CO({\uo_reg[2]_i_141_n_0 ,\uo_reg[2]_i_141_n_1 ,\uo_reg[2]_i_141_n_2 ,\uo_reg[2]_i_141_n_3 }),
        .CYINIT(1'b1),
        .DI({\uo[2]_i_230_n_0 ,\uo[2]_i_231_n_0 ,\uo[2]_i_232_n_0 ,\uo[2]_i_233_n_0 }),
        .O(\NLW_uo_reg[2]_i_141_O_UNCONNECTED [3:0]),
        .S({\uo[2]_i_234_n_0 ,\uo[2]_i_235_n_0 ,\uo[2]_i_236_n_0 ,\uo[2]_i_237_n_0 }));
  CARRY4 \uo_reg[2]_i_150 
       (.CI(\uo_reg[2]_i_238_n_0 ),
        .CO({\NLW_uo_reg[2]_i_150_CO_UNCONNECTED [3],\uo_reg[2]_i_150_n_1 ,\NLW_uo_reg[2]_i_150_CO_UNCONNECTED [1],\uo_reg[2]_i_150_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\uo_reg[2]_i_240_n_1 ,\uo[2]_i_241_n_0 }),
        .O({\NLW_uo_reg[2]_i_150_O_UNCONNECTED [3:2],\uo_reg[2]_i_150_n_6 ,\uo_reg[2]_i_150_n_7 }),
        .S({1'b0,1'b1,\uo[2]_i_242_n_0 ,\uo[2]_i_243_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \uo_reg[2]_i_151 
       (.CI(1'b0),
        .CO({\uo_reg[2]_i_151_n_0 ,\uo_reg[2]_i_151_n_1 ,\uo_reg[2]_i_151_n_2 ,\uo_reg[2]_i_151_n_3 }),
        .CYINIT(1'b1),
        .DI({\uo[2]_i_244_n_0 ,\uo[2]_i_245_n_0 ,\uo[2]_i_246_n_0 ,\uo[2]_i_247_n_0 }),
        .O(\NLW_uo_reg[2]_i_151_O_UNCONNECTED [3:0]),
        .S({\uo[2]_i_248_n_0 ,\uo[2]_i_249_n_0 ,\uo[2]_i_250_n_0 ,\uo[2]_i_251_n_0 }));
  CARRY4 \uo_reg[2]_i_160 
       (.CI(\uo_reg[2]_i_252_n_0 ),
        .CO({\NLW_uo_reg[2]_i_160_CO_UNCONNECTED [3],\uo_reg[2]_i_160_n_1 ,\NLW_uo_reg[2]_i_160_CO_UNCONNECTED [1],\uo_reg[2]_i_160_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\uo[2]_i_254_n_0 ,1'b0}),
        .O({\NLW_uo_reg[2]_i_160_O_UNCONNECTED [3:2],\uo_reg[2]_i_160_n_6 ,\uo_reg[2]_i_160_n_7 }),
        .S({1'b0,1'b1,\uo_reg[2]_i_93_n_3 ,\uo_reg[2]_i_93_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \uo_reg[2]_i_161 
       (.CI(1'b0),
        .CO({\uo_reg[2]_i_161_n_0 ,\uo_reg[2]_i_161_n_1 ,\uo_reg[2]_i_161_n_2 ,\uo_reg[2]_i_161_n_3 }),
        .CYINIT(1'b1),
        .DI({\uo[2]_i_255_n_0 ,\uo[2]_i_256_n_0 ,\uo[2]_i_257_n_0 ,\uo[2]_i_258_n_0 }),
        .O(\NLW_uo_reg[2]_i_161_O_UNCONNECTED [3:0]),
        .S({\uo[2]_i_259_n_0 ,\uo[2]_i_260_n_0 ,\uo[2]_i_261_n_0 ,\uo[2]_i_262_n_0 }));
  CARRY4 \uo_reg[2]_i_170 
       (.CI(\uo_reg[2]_i_263_n_0 ),
        .CO({\NLW_uo_reg[2]_i_170_CO_UNCONNECTED [3:1],\uo_reg[2]_i_170_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_uo_reg[2]_i_170_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \uo_reg[2]_i_171 
       (.CI(1'b0),
        .CO({\uo_reg[2]_i_171_n_0 ,\uo_reg[2]_i_171_n_1 ,\uo_reg[2]_i_171_n_2 ,\uo_reg[2]_i_171_n_3 }),
        .CYINIT(1'b1),
        .DI({\uo[2]_i_265_n_0 ,\uo[2]_i_266_n_0 ,\uo[2]_i_267_n_0 ,\uo[2]_i_268_n_0 }),
        .O(\NLW_uo_reg[2]_i_171_O_UNCONNECTED [3:0]),
        .S({\uo[2]_i_269_n_0 ,\uo[2]_i_270_n_0 ,\uo[2]_i_271_n_0 ,\uo[2]_i_272_n_0 }));
  CARRY4 \uo_reg[2]_i_18 
       (.CI(1'b0),
        .CO({\NLW_uo_reg[2]_i_18_CO_UNCONNECTED [3],f_off11_in,\uo_reg[2]_i_18_n_2 ,\uo_reg[2]_i_18_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_uo_reg[2]_i_18_O_UNCONNECTED [3:0]),
        .S({1'b0,\uo[2]_i_22_n_0 ,\uo[2]_i_23_n_0 ,\uo[2]_i_24_n_0 }));
  CARRY4 \uo_reg[2]_i_217 
       (.CI(1'b0),
        .CO({\uo_reg[2]_i_217_n_0 ,\uo_reg[2]_i_217_n_1 ,\uo_reg[2]_i_217_n_2 ,\uo_reg[2]_i_217_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\uo_reg[2]_i_218_n_5 ,1'b0}),
        .O({\uo_reg[2]_i_217_n_4 ,\uo_reg[2]_i_217_n_5 ,\uo_reg[2]_i_217_n_6 ,\uo_reg[2]_i_217_n_7 }),
        .S({\uo_reg[2]_i_220_n_7 ,\uo_reg[2]_i_218_n_4 ,\uo[2]_i_275_n_0 ,\uo_reg[2]_i_218_n_6 }));
  CARRY4 \uo_reg[2]_i_218 
       (.CI(\uo_reg[2]_i_219_n_0 ),
        .CO({\uo_reg[2]_i_218_n_0 ,\uo_reg[2]_i_218_n_1 ,\uo_reg[2]_i_218_n_2 ,\uo_reg[2]_i_218_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\uo[2]_i_276_n_0 ,fit2[7:6]}),
        .O({\uo_reg[2]_i_218_n_4 ,\uo_reg[2]_i_218_n_5 ,\uo_reg[2]_i_218_n_6 ,\uo_reg[2]_i_218_n_7 }),
        .S({1'b1,\uo[2]_i_277_n_0 ,\uo[2]_i_278_n_0 ,\uo[2]_i_279_n_0 }));
  CARRY4 \uo_reg[2]_i_219 
       (.CI(\uo_reg[2]_i_274_n_0 ),
        .CO({\uo_reg[2]_i_219_n_0 ,\uo_reg[2]_i_219_n_1 ,\uo_reg[2]_i_219_n_2 ,\uo_reg[2]_i_219_n_3 }),
        .CYINIT(1'b0),
        .DI(fit2[5:2]),
        .O({\uo_reg[2]_i_219_n_4 ,\uo_reg[2]_i_219_n_5 ,\uo_reg[2]_i_219_n_6 ,\uo_reg[2]_i_219_n_7 }),
        .S({\uo[2]_i_280_n_0 ,\uo[2]_i_281_n_0 ,\uo[2]_i_282_n_0 ,\uo[2]_i_283_n_0 }));
  CARRY4 \uo_reg[2]_i_220 
       (.CI(\uo_reg[2]_i_218_n_0 ),
        .CO({\NLW_uo_reg[2]_i_220_CO_UNCONNECTED [3:2],\uo_reg[2]_i_220_n_2 ,\NLW_uo_reg[2]_i_220_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\uo[2]_i_284_n_0 }),
        .O({\NLW_uo_reg[2]_i_220_O_UNCONNECTED [3:1],\uo_reg[2]_i_220_n_7 }),
        .S({1'b0,1'b0,1'b1,\uo_reg[2]_i_93_n_3 }));
  CARRY4 \uo_reg[2]_i_238 
       (.CI(\uo_reg[2]_i_239_n_0 ),
        .CO({\uo_reg[2]_i_238_n_0 ,\uo_reg[2]_i_238_n_1 ,\uo_reg[2]_i_238_n_2 ,\uo_reg[2]_i_238_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\uo_reg[2]_i_93_n_3 ,fit2[8:7]}),
        .O({\uo_reg[2]_i_238_n_4 ,\uo_reg[2]_i_238_n_5 ,\uo_reg[2]_i_238_n_6 ,\uo_reg[2]_i_238_n_7 }),
        .S({\uo[2]_i_286_n_0 ,\uo[2]_i_287_n_0 ,\uo[2]_i_288_n_0 ,\uo[2]_i_289_n_0 }));
  CARRY4 \uo_reg[2]_i_239 
       (.CI(\uo_reg[2]_i_285_n_0 ),
        .CO({\uo_reg[2]_i_239_n_0 ,\uo_reg[2]_i_239_n_1 ,\uo_reg[2]_i_239_n_2 ,\uo_reg[2]_i_239_n_3 }),
        .CYINIT(1'b0),
        .DI(fit2[6:3]),
        .O({\uo_reg[2]_i_239_n_4 ,\uo_reg[2]_i_239_n_5 ,\uo_reg[2]_i_239_n_6 ,\uo_reg[2]_i_239_n_7 }),
        .S({\uo[2]_i_290_n_0 ,\uo[2]_i_291_n_0 ,\uo[2]_i_292_n_0 ,\uo[2]_i_293_n_0 }));
  CARRY4 \uo_reg[2]_i_240 
       (.CI(1'b0),
        .CO({\NLW_uo_reg[2]_i_240_CO_UNCONNECTED [3],\uo_reg[2]_i_240_n_1 ,\NLW_uo_reg[2]_i_240_CO_UNCONNECTED [1],\uo_reg[2]_i_240_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\uo[2]_i_294_n_0 ,1'b0}),
        .O({\NLW_uo_reg[2]_i_240_O_UNCONNECTED [3:2],\uo_reg[2]_i_240_n_6 ,\NLW_uo_reg[2]_i_240_O_UNCONNECTED [0]}),
        .S({1'b0,1'b1,\uo_reg[2]_i_93_n_3 ,\uo_reg[2]_i_93_n_3 }));
  CARRY4 \uo_reg[2]_i_252 
       (.CI(\uo_reg[2]_i_253_n_0 ),
        .CO({\uo_reg[2]_i_252_n_0 ,\uo_reg[2]_i_252_n_1 ,\uo_reg[2]_i_252_n_2 ,\uo_reg[2]_i_252_n_3 }),
        .CYINIT(1'b0),
        .DI({fit2[8],\uo[2]_i_296_n_0 ,fit2[7:6]}),
        .O({\uo_reg[2]_i_252_n_4 ,\uo_reg[2]_i_252_n_5 ,\uo_reg[2]_i_252_n_6 ,\uo_reg[2]_i_252_n_7 }),
        .S({\uo[2]_i_297_n_0 ,\uo[2]_i_298_n_0 ,\uo[2]_i_299_n_0 ,\uo[2]_i_300_n_0 }));
  CARRY4 \uo_reg[2]_i_253 
       (.CI(\uo_reg[2]_i_295_n_0 ),
        .CO({\uo_reg[2]_i_253_n_0 ,\uo_reg[2]_i_253_n_1 ,\uo_reg[2]_i_253_n_2 ,\uo_reg[2]_i_253_n_3 }),
        .CYINIT(1'b0),
        .DI(fit2[5:2]),
        .O({\uo_reg[2]_i_253_n_4 ,\uo_reg[2]_i_253_n_5 ,\uo_reg[2]_i_253_n_6 ,\uo_reg[2]_i_253_n_7 }),
        .S({\uo[2]_i_301_n_0 ,\uo[2]_i_302_n_0 ,\uo[2]_i_303_n_0 ,\uo[2]_i_304_n_0 }));
  CARRY4 \uo_reg[2]_i_263 
       (.CI(\uo_reg[2]_i_264_n_0 ),
        .CO({\uo_reg[2]_i_263_n_0 ,\uo_reg[2]_i_263_n_1 ,\uo_reg[2]_i_263_n_2 ,\uo_reg[2]_i_263_n_3 }),
        .CYINIT(1'b0),
        .DI({\uo[2]_i_307_n_0 ,\uo[2]_i_308_n_0 ,\uo[2]_i_309_n_0 ,\uo[2]_i_310_n_0 }),
        .O({\uo_reg[2]_i_263_n_4 ,\uo_reg[2]_i_263_n_5 ,\uo_reg[2]_i_263_n_6 ,\uo_reg[2]_i_263_n_7 }),
        .S({\uo[2]_i_311_n_0 ,\uo[2]_i_312_n_0 ,\uo[2]_i_313_n_0 ,\uo[2]_i_314_n_0 }));
  CARRY4 \uo_reg[2]_i_264 
       (.CI(\uo_reg[2]_i_305_n_0 ),
        .CO({\uo_reg[2]_i_264_n_0 ,\uo_reg[2]_i_264_n_1 ,\uo_reg[2]_i_264_n_2 ,\uo_reg[2]_i_264_n_3 }),
        .CYINIT(1'b0),
        .DI({\uo[2]_i_315_n_0 ,\uo[2]_i_316_n_0 ,\uo[2]_i_317_n_0 ,\uo[2]_i_318_n_0 }),
        .O({\uo_reg[2]_i_264_n_4 ,\uo_reg[2]_i_264_n_5 ,\uo_reg[2]_i_264_n_6 ,\uo_reg[2]_i_264_n_7 }),
        .S({\uo[2]_i_319_n_0 ,\uo[2]_i_320_n_0 ,\uo[2]_i_321_n_0 ,\uo[2]_i_322_n_0 }));
  CARRY4 \uo_reg[2]_i_274 
       (.CI(1'b0),
        .CO({\uo_reg[2]_i_274_n_0 ,\uo_reg[2]_i_274_n_1 ,\uo_reg[2]_i_274_n_2 ,\uo_reg[2]_i_274_n_3 }),
        .CYINIT(1'b0),
        .DI({fit2[1],f_b0[0],1'b0,1'b1}),
        .O({\uo_reg[2]_i_274_n_4 ,\uo_reg[2]_i_274_n_5 ,\uo_reg[2]_i_274_n_6 ,\NLW_uo_reg[2]_i_274_O_UNCONNECTED [0]}),
        .S({\uo[2]_i_323_n_0 ,\uo[2]_i_324_n_0 ,\uo[2]_i_325_n_0 ,f_b0[0]}));
  CARRY4 \uo_reg[2]_i_285 
       (.CI(1'b0),
        .CO({\uo_reg[2]_i_285_n_0 ,\uo_reg[2]_i_285_n_1 ,\uo_reg[2]_i_285_n_2 ,\uo_reg[2]_i_285_n_3 }),
        .CYINIT(1'b0),
        .DI({fit2[2:1],f_b0[0],1'b0}),
        .O({\uo_reg[2]_i_285_n_4 ,\uo_reg[2]_i_285_n_5 ,\uo_reg[2]_i_285_n_6 ,\uo_reg[2]_i_285_n_7 }),
        .S({\uo[2]_i_326_n_0 ,\uo[2]_i_327_n_0 ,\uo[2]_i_328_n_0 ,fit2[1]}));
  CARRY4 \uo_reg[2]_i_295 
       (.CI(1'b0),
        .CO({\uo_reg[2]_i_295_n_0 ,\uo_reg[2]_i_295_n_1 ,\uo_reg[2]_i_295_n_2 ,\uo_reg[2]_i_295_n_3 }),
        .CYINIT(1'b0),
        .DI({fit2[1],f_b0[0],1'b0,1'b1}),
        .O({\uo_reg[2]_i_295_n_4 ,\uo_reg[2]_i_295_n_5 ,\uo_reg[2]_i_295_n_6 ,\NLW_uo_reg[2]_i_295_O_UNCONNECTED [0]}),
        .S({\uo[2]_i_329_n_0 ,\uo[2]_i_330_n_0 ,\uo[2]_i_331_n_0 ,f_b0[0]}));
  CARRY4 \uo_reg[2]_i_305 
       (.CI(1'b0),
        .CO({\uo_reg[2]_i_305_n_0 ,\uo_reg[2]_i_305_n_1 ,\uo_reg[2]_i_305_n_2 ,\uo_reg[2]_i_305_n_3 }),
        .CYINIT(1'b0),
        .DI({\uo[2]_i_332_n_0 ,\uo[2]_i_333_n_0 ,\uo[2]_i_334_n_0 ,1'b0}),
        .O({\uo_reg[2]_i_305_n_4 ,\uo_reg[2]_i_305_n_5 ,\uo_reg[2]_i_305_n_6 ,\uo_reg[2]_i_305_n_7 }),
        .S({\uo[2]_i_335_n_0 ,\uo[2]_i_336_n_0 ,\uo[2]_i_337_n_0 ,\uo[2]_i_338_n_0 }));
  CARRY4 \uo_reg[2]_i_306 
       (.CI(1'b0),
        .CO({\uo_reg[2]_i_306_n_0 ,\uo_reg[2]_i_306_n_1 ,\uo_reg[2]_i_306_n_2 ,\uo_reg[2]_i_306_n_3 }),
        .CYINIT(1'b0),
        .DI({fit2[1],f_b0[0],1'b0,1'b1}),
        .O({\uo_reg[2]_i_306_n_4 ,\uo_reg[2]_i_306_n_5 ,\uo_reg[2]_i_306_n_6 ,\uo_reg[2]_i_306_n_7 }),
        .S({\uo[2]_i_339_n_0 ,\uo[2]_i_340_n_0 ,\uo[2]_i_341_n_0 ,f_b0[0]}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \uo_reg[2]_i_31 
       (.CI(\uo_reg[2]_i_43_n_0 ),
        .CO({\uo_reg[2]_i_31_n_0 ,\uo_reg[2]_i_31_n_1 ,\uo_reg[2]_i_31_n_2 ,\uo_reg[2]_i_31_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\uo[2]_i_44_n_0 ,\uo[2]_i_45_n_0 ,\uo[2]_i_46_n_0 }),
        .O(\NLW_uo_reg[2]_i_31_O_UNCONNECTED [3:0]),
        .S({\uo_reg[2]_i_34_n_2 ,\uo_reg[2]_i_34_n_2 ,\uo[2]_i_47_n_0 ,\uo[2]_i_48_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \uo_reg[2]_i_32 
       (.CI(\uo_reg[2]_i_49_n_0 ),
        .CO({\NLW_uo_reg[2]_i_32_CO_UNCONNECTED [3:1],\uo_reg[2]_i_32_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_uo_reg[2]_i_32_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\uo_reg[2]_i_34_n_2 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \uo_reg[2]_i_33 
       (.CI(\uo_reg[2]_i_50_n_0 ),
        .CO({\uo_reg[2]_i_33_n_0 ,\uo_reg[2]_i_33_n_1 ,\uo_reg[2]_i_33_n_2 ,\uo_reg[2]_i_33_n_3 }),
        .CYINIT(1'b0),
        .DI({\uo[2]_i_51_n_0 ,\uo[2]_i_52_n_0 ,\uo[2]_i_53_n_0 ,\uo[2]_i_54_n_0 }),
        .O(\NLW_uo_reg[2]_i_33_O_UNCONNECTED [3:0]),
        .S({\uo[2]_i_55_n_0 ,\uo[2]_i_56_n_0 ,\uo[2]_i_57_n_0 ,\uo[2]_i_58_n_0 }));
  CARRY4 \uo_reg[2]_i_34 
       (.CI(\uo_reg[2]_i_59_n_0 ),
        .CO({\NLW_uo_reg[2]_i_34_CO_UNCONNECTED [3:2],\uo_reg[2]_i_34_n_2 ,\NLW_uo_reg[2]_i_34_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\uo_reg[2]_i_60_n_0 }),
        .O({\NLW_uo_reg[2]_i_34_O_UNCONNECTED [3:1],pt[11]}),
        .S({1'b0,1'b0,1'b1,\uo[2]_i_61_n_0 }));
  CARRY4 \uo_reg[2]_i_342 
       (.CI(1'b0),
        .CO({\NLW_uo_reg[2]_i_342_CO_UNCONNECTED [3],\uo_reg[2]_i_342_n_1 ,\NLW_uo_reg[2]_i_342_CO_UNCONNECTED [1],\uo_reg[2]_i_342_n_3 }),
        .CYINIT(\uo_reg[2]_i_343_n_0 ),
        .DI({1'b0,1'b0,\uo[2]_i_345_n_0 ,1'b0}),
        .O({\NLW_uo_reg[2]_i_342_O_UNCONNECTED [3:2],\uo_reg[2]_i_342_n_6 ,\NLW_uo_reg[2]_i_342_O_UNCONNECTED [0]}),
        .S({1'b0,1'b1,\uo_reg[2]_i_93_n_3 ,1'b1}));
  CARRY4 \uo_reg[2]_i_343 
       (.CI(\uo_reg[2]_i_344_n_0 ),
        .CO({\uo_reg[2]_i_343_n_0 ,\NLW_uo_reg[2]_i_343_CO_UNCONNECTED [2],\uo_reg[2]_i_343_n_2 ,\uo_reg[2]_i_343_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\uo[2]_i_346_n_0 ,fit2[7:6]}),
        .O({\NLW_uo_reg[2]_i_343_O_UNCONNECTED [3],\uo_reg[2]_i_343_n_5 ,\uo_reg[2]_i_343_n_6 ,\uo_reg[2]_i_343_n_7 }),
        .S({1'b1,\uo[2]_i_347_n_0 ,\uo[2]_i_348_n_0 ,\uo[2]_i_349_n_0 }));
  CARRY4 \uo_reg[2]_i_344 
       (.CI(\uo_reg[2]_i_306_n_0 ),
        .CO({\uo_reg[2]_i_344_n_0 ,\uo_reg[2]_i_344_n_1 ,\uo_reg[2]_i_344_n_2 ,\uo_reg[2]_i_344_n_3 }),
        .CYINIT(1'b0),
        .DI(fit2[5:2]),
        .O({\uo_reg[2]_i_344_n_4 ,\uo_reg[2]_i_344_n_5 ,\uo_reg[2]_i_344_n_6 ,\uo_reg[2]_i_344_n_7 }),
        .S({\uo[2]_i_350_n_0 ,\uo[2]_i_351_n_0 ,\uo[2]_i_352_n_0 ,\uo[2]_i_353_n_0 }));
  CARRY4 \uo_reg[2]_i_35 
       (.CI(\uo_reg[2]_i_36_n_0 ),
        .CO({f_b0[7],\NLW_uo_reg[2]_i_35_CO_UNCONNECTED [2],\uo_reg[2]_i_35_n_2 ,\uo_reg[2]_i_35_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\m_s0_reg_n_0_[6] ,\m_s0_reg_n_0_[5] ,\m_s0_reg_n_0_[4] }),
        .O({\NLW_uo_reg[2]_i_35_O_UNCONNECTED [3],f_b0[6:4]}),
        .S({1'b1,\uo[2]_i_62_n_0 ,\uo[2]_i_63_n_0 ,\uo[2]_i_64_n_0 }));
  CARRY4 \uo_reg[2]_i_36 
       (.CI(1'b0),
        .CO({\uo_reg[2]_i_36_n_0 ,\uo_reg[2]_i_36_n_1 ,\uo_reg[2]_i_36_n_2 ,\uo_reg[2]_i_36_n_3 }),
        .CYINIT(1'b0),
        .DI({\m_s0_reg_n_0_[3] ,\m_s0_reg_n_0_[2] ,\m_s0_reg_n_0_[1] ,\m_s0_reg_n_0_[0] }),
        .O(f_b0[3:0]),
        .S({\uo[2]_i_65_n_0 ,\uo[2]_i_66_n_0 ,\uo[2]_i_67_n_0 ,\uo[2]_i_68_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \uo_reg[2]_i_37 
       (.CI(\uo_reg[2]_i_69_n_0 ),
        .CO({\NLW_uo_reg[2]_i_37_CO_UNCONNECTED [3:1],\uo_reg[2]_i_37_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\uo[2]_i_70_n_0 }),
        .O(\NLW_uo_reg[2]_i_37_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\uo[2]_i_71_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \uo_reg[2]_i_38 
       (.CI(\uo_reg[2]_i_72_n_0 ),
        .CO({\NLW_uo_reg[2]_i_38_CO_UNCONNECTED [3:1],\uo_reg[2]_i_38_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_uo_reg[2]_i_38_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\uo_reg[2]_i_34_n_2 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \uo_reg[2]_i_39 
       (.CI(\uo_reg[2]_i_73_n_0 ),
        .CO({\NLW_uo_reg[2]_i_39_CO_UNCONNECTED [3:1],\uo_reg[2]_i_39_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\uo[2]_i_74_n_0 }),
        .O(\NLW_uo_reg[2]_i_39_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\uo[2]_i_75_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \uo_reg[2]_i_40 
       (.CI(\uo_reg[2]_i_76_n_0 ),
        .CO({\NLW_uo_reg[2]_i_40_CO_UNCONNECTED [3:1],\uo_reg[2]_i_40_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\uo[2]_i_77_n_0 }),
        .O(\NLW_uo_reg[2]_i_40_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\uo[2]_i_78_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \uo_reg[2]_i_41 
       (.CI(\uo_reg[2]_i_79_n_0 ),
        .CO({\NLW_uo_reg[2]_i_41_CO_UNCONNECTED [3:1],\uo_reg[2]_i_41_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\uo[2]_i_80_n_0 }),
        .O(\NLW_uo_reg[2]_i_41_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\uo[2]_i_81_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \uo_reg[2]_i_42 
       (.CI(\uo_reg[2]_i_82_n_0 ),
        .CO({\NLW_uo_reg[2]_i_42_CO_UNCONNECTED [3:1],\uo_reg[2]_i_42_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\uo[2]_i_83_n_0 }),
        .O(\NLW_uo_reg[2]_i_42_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\uo[2]_i_84_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \uo_reg[2]_i_43 
       (.CI(1'b0),
        .CO({\uo_reg[2]_i_43_n_0 ,\uo_reg[2]_i_43_n_1 ,\uo_reg[2]_i_43_n_2 ,\uo_reg[2]_i_43_n_3 }),
        .CYINIT(1'b1),
        .DI({\uo[2]_i_85_n_0 ,\uo[2]_i_86_n_0 ,\uo[2]_i_87_n_0 ,\uo[2]_i_88_n_0 }),
        .O(\NLW_uo_reg[2]_i_43_O_UNCONNECTED [3:0]),
        .S({\uo[2]_i_89_n_0 ,\uo[2]_i_90_n_0 ,\uo[2]_i_91_n_0 ,\uo[2]_i_92_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \uo_reg[2]_i_49 
       (.CI(\uo_reg[2]_i_95_n_0 ),
        .CO({\uo_reg[2]_i_49_n_0 ,\uo_reg[2]_i_49_n_1 ,\uo_reg[2]_i_49_n_2 ,\uo_reg[2]_i_49_n_3 }),
        .CYINIT(1'b0),
        .DI({\uo[2]_i_96_n_0 ,\uo[2]_i_97_n_0 ,\uo[2]_i_98_n_0 ,\uo[2]_i_99_n_0 }),
        .O(\NLW_uo_reg[2]_i_49_O_UNCONNECTED [3:0]),
        .S({\uo_reg[2]_i_34_n_2 ,\uo[2]_i_100_n_0 ,\uo[2]_i_101_n_0 ,\uo[2]_i_102_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \uo_reg[2]_i_50 
       (.CI(1'b0),
        .CO({\uo_reg[2]_i_50_n_0 ,\uo_reg[2]_i_50_n_1 ,\uo_reg[2]_i_50_n_2 ,\uo_reg[2]_i_50_n_3 }),
        .CYINIT(1'b1),
        .DI({\uo[2]_i_103_n_0 ,\uo[2]_i_104_n_0 ,\uo[2]_i_105_n_0 ,\uo[2]_i_106_n_0 }),
        .O(\NLW_uo_reg[2]_i_50_O_UNCONNECTED [3:0]),
        .S({\uo[2]_i_107_n_0 ,\uo[2]_i_108_n_0 ,\uo[2]_i_109_n_0 ,\uo[2]_i_110_n_0 }));
  CARRY4 \uo_reg[2]_i_59 
       (.CI(\uo_reg[2]_i_114_n_0 ),
        .CO({\uo_reg[2]_i_59_n_0 ,\uo_reg[2]_i_59_n_1 ,\uo_reg[2]_i_59_n_2 ,\uo_reg[2]_i_59_n_3 }),
        .CYINIT(1'b0),
        .DI(pt0[6:3]),
        .O(pt[10:7]),
        .S({\uo[2]_i_116_n_0 ,\uo[2]_i_117_n_0 ,\uo[2]_i_118_n_0 ,\uo[2]_i_119_n_0 }));
  CARRY4 \uo_reg[2]_i_60 
       (.CI(\uo_reg[2]_i_115_n_0 ),
        .CO({\uo_reg[2]_i_60_n_0 ,\NLW_uo_reg[2]_i_60_CO_UNCONNECTED [2],\uo_reg[2]_i_60_n_2 ,\uo_reg[2]_i_60_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\m_s0_reg_n_0_[6] ,\m_s0_reg_n_0_[5] ,\m_s0_reg_n_0_[4] }),
        .O({\NLW_uo_reg[2]_i_60_O_UNCONNECTED [3],pt0[6:4]}),
        .S({1'b1,\uo[2]_i_120_n_0 ,\uo[2]_i_121_n_0 ,\uo[2]_i_122_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \uo_reg[2]_i_69 
       (.CI(\uo_reg[2]_i_123_n_0 ),
        .CO({\uo_reg[2]_i_69_n_0 ,\uo_reg[2]_i_69_n_1 ,\uo_reg[2]_i_69_n_2 ,\uo_reg[2]_i_69_n_3 }),
        .CYINIT(1'b0),
        .DI({\uo[2]_i_124_n_0 ,\uo[2]_i_125_n_0 ,\uo[2]_i_126_n_0 ,\uo[2]_i_127_n_0 }),
        .O(\NLW_uo_reg[2]_i_69_O_UNCONNECTED [3:0]),
        .S({\uo[2]_i_128_n_0 ,\uo[2]_i_129_n_0 ,\uo[2]_i_130_n_0 ,\uo[2]_i_131_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \uo_reg[2]_i_72 
       (.CI(\uo_reg[2]_i_133_n_0 ),
        .CO({\uo_reg[2]_i_72_n_0 ,\uo_reg[2]_i_72_n_1 ,\uo_reg[2]_i_72_n_2 ,\uo_reg[2]_i_72_n_3 }),
        .CYINIT(1'b0),
        .DI({\uo[2]_i_134_n_0 ,\uo[2]_i_135_n_0 ,\uo[2]_i_136_n_0 ,\uo[2]_i_137_n_0 }),
        .O(\NLW_uo_reg[2]_i_72_O_UNCONNECTED [3:0]),
        .S({\uo_reg[2]_i_34_n_2 ,\uo[2]_i_138_n_0 ,\uo[2]_i_139_n_0 ,\uo[2]_i_140_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \uo_reg[2]_i_73 
       (.CI(\uo_reg[2]_i_141_n_0 ),
        .CO({\uo_reg[2]_i_73_n_0 ,\uo_reg[2]_i_73_n_1 ,\uo_reg[2]_i_73_n_2 ,\uo_reg[2]_i_73_n_3 }),
        .CYINIT(1'b0),
        .DI({\uo[2]_i_142_n_0 ,\uo[2]_i_143_n_0 ,\uo[2]_i_144_n_0 ,\uo[2]_i_145_n_0 }),
        .O(\NLW_uo_reg[2]_i_73_O_UNCONNECTED [3:0]),
        .S({\uo[2]_i_146_n_0 ,\uo[2]_i_147_n_0 ,\uo[2]_i_148_n_0 ,\uo[2]_i_149_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \uo_reg[2]_i_76 
       (.CI(\uo_reg[2]_i_151_n_0 ),
        .CO({\uo_reg[2]_i_76_n_0 ,\uo_reg[2]_i_76_n_1 ,\uo_reg[2]_i_76_n_2 ,\uo_reg[2]_i_76_n_3 }),
        .CYINIT(1'b0),
        .DI({\uo[2]_i_152_n_0 ,\uo[2]_i_153_n_0 ,\uo[2]_i_154_n_0 ,\uo[2]_i_155_n_0 }),
        .O(\NLW_uo_reg[2]_i_76_O_UNCONNECTED [3:0]),
        .S({\uo[2]_i_156_n_0 ,\uo[2]_i_157_n_0 ,\uo[2]_i_158_n_0 ,\uo[2]_i_159_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \uo_reg[2]_i_79 
       (.CI(\uo_reg[2]_i_161_n_0 ),
        .CO({\uo_reg[2]_i_79_n_0 ,\uo_reg[2]_i_79_n_1 ,\uo_reg[2]_i_79_n_2 ,\uo_reg[2]_i_79_n_3 }),
        .CYINIT(1'b0),
        .DI({\uo[2]_i_162_n_0 ,\uo[2]_i_163_n_0 ,\uo[2]_i_164_n_0 ,\uo[2]_i_165_n_0 }),
        .O(\NLW_uo_reg[2]_i_79_O_UNCONNECTED [3:0]),
        .S({\uo[2]_i_166_n_0 ,\uo[2]_i_167_n_0 ,\uo[2]_i_168_n_0 ,\uo[2]_i_169_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \uo_reg[2]_i_82 
       (.CI(\uo_reg[2]_i_171_n_0 ),
        .CO({\uo_reg[2]_i_82_n_0 ,\uo_reg[2]_i_82_n_1 ,\uo_reg[2]_i_82_n_2 ,\uo_reg[2]_i_82_n_3 }),
        .CYINIT(1'b0),
        .DI({\uo[2]_i_172_n_0 ,\uo[2]_i_173_n_0 ,\uo[2]_i_174_n_0 ,\uo[2]_i_175_n_0 }),
        .O(\NLW_uo_reg[2]_i_82_O_UNCONNECTED [3:0]),
        .S({\uo[2]_i_176_n_0 ,\uo[2]_i_177_n_0 ,\uo[2]_i_178_n_0 ,\uo[2]_i_179_n_0 }));
  CARRY4 \uo_reg[2]_i_93 
       (.CI(\uo_reg[2]_i_94_n_0 ),
        .CO({\NLW_uo_reg[2]_i_93_CO_UNCONNECTED [3:1],\uo_reg[2]_i_93_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_uo_reg[2]_i_93_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 \uo_reg[2]_i_94 
       (.CI(\uo_reg[4]_i_117_n_0 ),
        .CO({\uo_reg[2]_i_94_n_0 ,\uo_reg[2]_i_94_n_1 ,\uo_reg[2]_i_94_n_2 ,\uo_reg[2]_i_94_n_3 }),
        .CYINIT(1'b0),
        .DI({\uo[2]_i_182_n_0 ,\uo[2]_i_183_n_0 ,\uo[2]_i_184_n_0 ,\uo[2]_i_185_n_0 }),
        .O(fit2[8:5]),
        .S({\uo[2]_i_186_n_0 ,\uo[2]_i_187_n_0 ,\uo[2]_i_188_n_0 ,\uo[2]_i_189_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \uo_reg[2]_i_95 
       (.CI(1'b0),
        .CO({\uo_reg[2]_i_95_n_0 ,\uo_reg[2]_i_95_n_1 ,\uo_reg[2]_i_95_n_2 ,\uo_reg[2]_i_95_n_3 }),
        .CYINIT(1'b1),
        .DI({\uo[2]_i_190_n_0 ,\uo[2]_i_191_n_0 ,\uo[2]_i_192_n_0 ,\uo[2]_i_193_n_0 }),
        .O(\NLW_uo_reg[2]_i_95_O_UNCONNECTED [3:0]),
        .S({\uo[2]_i_194_n_0 ,\uo[2]_i_195_n_0 ,\uo[2]_i_196_n_0 ,\uo[2]_i_197_n_0 }));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \uo_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(uo_out[3]),
        .R(SR[1]));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \uo_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(uo_out[4]),
        .R(SR[1]));
  CARRY4 \uo_reg[4]_i_103 
       (.CI(\uo_reg[4]_i_104_n_0 ),
        .CO({\uo_reg[4]_i_103_n_0 ,\uo_reg[4]_i_103_n_1 ,\uo_reg[4]_i_103_n_2 ,\uo_reg[4]_i_103_n_3 }),
        .CYINIT(1'b0),
        .DI({\uo[4]_i_141_n_0 ,\uo_reg[4]_i_142_n_5 ,fit2[8:7]}),
        .O({\uo_reg[4]_i_103_n_4 ,\uo_reg[4]_i_103_n_5 ,\uo_reg[4]_i_103_n_6 ,\uo_reg[4]_i_103_n_7 }),
        .S({\uo[4]_i_143_n_0 ,\uo[4]_i_144_n_0 ,\uo[4]_i_145_n_0 ,\uo[4]_i_146_n_0 }));
  CARRY4 \uo_reg[4]_i_104 
       (.CI(\uo_reg[4]_i_139_n_0 ),
        .CO({\uo_reg[4]_i_104_n_0 ,\uo_reg[4]_i_104_n_1 ,\uo_reg[4]_i_104_n_2 ,\uo_reg[4]_i_104_n_3 }),
        .CYINIT(1'b0),
        .DI(fit2[6:3]),
        .O({\uo_reg[4]_i_104_n_4 ,\uo_reg[4]_i_104_n_5 ,\uo_reg[4]_i_104_n_6 ,\uo_reg[4]_i_104_n_7 }),
        .S({\uo[4]_i_147_n_0 ,\uo[4]_i_148_n_0 ,\uo[4]_i_149_n_0 ,\uo[4]_i_150_n_0 }));
  CARRY4 \uo_reg[4]_i_105 
       (.CI(1'b0),
        .CO({\NLW_uo_reg[4]_i_105_CO_UNCONNECTED [3],\uo_reg[4]_i_105_n_1 ,\NLW_uo_reg[4]_i_105_CO_UNCONNECTED [1],\uo_reg[4]_i_105_n_3 }),
        .CYINIT(\uo_reg[4]_i_142_n_0 ),
        .DI({1'b0,1'b0,fit2[9],1'b0}),
        .O({\NLW_uo_reg[4]_i_105_O_UNCONNECTED [3:2],\uo_reg[4]_i_105_n_6 ,\NLW_uo_reg[4]_i_105_O_UNCONNECTED [0]}),
        .S({1'b0,1'b1,\uo_reg[2]_i_93_n_3 ,1'b1}));
  CARRY4 \uo_reg[4]_i_117 
       (.CI(1'b0),
        .CO({\uo_reg[4]_i_117_n_0 ,\uo_reg[4]_i_117_n_1 ,\uo_reg[4]_i_117_n_2 ,\uo_reg[4]_i_117_n_3 }),
        .CYINIT(1'b0),
        .DI({\uo[4]_i_152_n_0 ,\uo[4]_i_153_n_0 ,\uo[4]_i_154_n_0 ,1'b0}),
        .O(fit2[4:1]),
        .S({\uo[4]_i_155_n_0 ,\uo[4]_i_156_n_0 ,\uo[4]_i_157_n_0 ,\uo[4]_i_158_n_0 }));
  CARRY4 \uo_reg[4]_i_126 
       (.CI(\uo_reg[4]_i_127_n_0 ),
        .CO({\uo_reg[4]_i_126_n_0 ,\uo_reg[4]_i_126_n_1 ,\uo_reg[4]_i_126_n_2 ,\uo_reg[4]_i_126_n_3 }),
        .CYINIT(1'b0),
        .DI({\uo_reg[4]_i_161_n_1 ,\uo_reg[2]_i_93_n_3 ,\uo[4]_i_162_n_0 ,\uo[4]_i_163_n_0 }),
        .O({\uo_reg[4]_i_126_n_4 ,\uo_reg[4]_i_126_n_5 ,\uo_reg[4]_i_126_n_6 ,\uo_reg[4]_i_126_n_7 }),
        .S({\uo[4]_i_164_n_0 ,\uo[4]_i_165_n_0 ,\uo[4]_i_166_n_0 ,\uo[4]_i_167_n_0 }));
  CARRY4 \uo_reg[4]_i_127 
       (.CI(\uo_reg[4]_i_159_n_0 ),
        .CO({\uo_reg[4]_i_127_n_0 ,\uo_reg[4]_i_127_n_1 ,\uo_reg[4]_i_127_n_2 ,\uo_reg[4]_i_127_n_3 }),
        .CYINIT(1'b0),
        .DI({\uo[4]_i_168_n_0 ,\uo[4]_i_169_n_0 ,\uo[4]_i_170_n_0 ,\uo[4]_i_171_n_0 }),
        .O({\uo_reg[4]_i_127_n_4 ,\uo_reg[4]_i_127_n_5 ,\uo_reg[4]_i_127_n_6 ,\uo_reg[4]_i_127_n_7 }),
        .S({\uo[4]_i_172_n_0 ,\uo[4]_i_173_n_0 ,\uo[4]_i_174_n_0 ,\uo[4]_i_175_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \uo_reg[4]_i_128 
       (.CI(1'b0),
        .CO({\uo_reg[4]_i_128_n_0 ,\uo_reg[4]_i_128_n_1 ,\uo_reg[4]_i_128_n_2 ,\uo_reg[4]_i_128_n_3 }),
        .CYINIT(1'b1),
        .DI({\uo[4]_i_176_n_0 ,\uo[4]_i_177_n_0 ,\uo[4]_i_178_n_0 ,\uo[4]_i_179_n_0 }),
        .O(\NLW_uo_reg[4]_i_128_O_UNCONNECTED [3:0]),
        .S({\uo[4]_i_180_n_0 ,\uo[4]_i_181_n_0 ,\uo[4]_i_182_n_0 ,\uo[4]_i_183_n_0 }));
  CARRY4 \uo_reg[4]_i_139 
       (.CI(1'b0),
        .CO({\uo_reg[4]_i_139_n_0 ,\uo_reg[4]_i_139_n_1 ,\uo_reg[4]_i_139_n_2 ,\uo_reg[4]_i_139_n_3 }),
        .CYINIT(1'b0),
        .DI({fit2[2:1],f_b0[0],1'b0}),
        .O({\uo_reg[4]_i_139_n_4 ,\uo_reg[4]_i_139_n_5 ,\uo_reg[4]_i_139_n_6 ,\uo_reg[4]_i_139_n_7 }),
        .S({\uo[4]_i_184_n_0 ,\uo[4]_i_185_n_0 ,\uo[4]_i_186_n_0 ,\uo_reg[4]_i_187_n_6 }));
  CARRY4 \uo_reg[4]_i_142 
       (.CI(\uo_reg[4]_i_188_n_0 ),
        .CO({\uo_reg[4]_i_142_n_0 ,\NLW_uo_reg[4]_i_142_CO_UNCONNECTED [2],\uo_reg[4]_i_142_n_2 ,\uo_reg[4]_i_142_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\uo[4]_i_189_n_0 ,fit2[7:6]}),
        .O({\NLW_uo_reg[4]_i_142_O_UNCONNECTED [3],\uo_reg[4]_i_142_n_5 ,\uo_reg[4]_i_142_n_6 ,\uo_reg[4]_i_142_n_7 }),
        .S({1'b1,\uo[4]_i_190_n_0 ,\uo[4]_i_191_n_0 ,\uo[4]_i_192_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \uo_reg[4]_i_15 
       (.CI(1'b0),
        .CO({\uio_r_reg[7]_1 ,\uo_reg[4]_i_15_n_1 ,\uo_reg[4]_i_15_n_2 ,\uo_reg[4]_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI({\uo[4]_i_19_n_0 ,\uo[4]_i_20_n_0 ,\uo[4]_i_21_n_0 ,\uo[4]_i_22_n_0 }),
        .O(\NLW_uo_reg[4]_i_15_O_UNCONNECTED [3:0]),
        .S(\uo[5]_i_16 ));
  CARRY4 \uo_reg[4]_i_159 
       (.CI(1'b0),
        .CO({\uo_reg[4]_i_159_n_0 ,\uo_reg[4]_i_159_n_1 ,\uo_reg[4]_i_159_n_2 ,\uo_reg[4]_i_159_n_3 }),
        .CYINIT(1'b0),
        .DI({\uo[4]_i_193_n_0 ,\uo[4]_i_194_n_0 ,\uo[4]_i_195_n_0 ,1'b0}),
        .O({\uo_reg[4]_i_159_n_4 ,\uo_reg[4]_i_159_n_5 ,\uo_reg[4]_i_159_n_6 ,\NLW_uo_reg[4]_i_159_O_UNCONNECTED [0]}),
        .S({\uo[4]_i_196_n_0 ,\uo[4]_i_197_n_0 ,\uo[4]_i_198_n_0 ,\uo[4]_i_199_n_0 }));
  CARRY4 \uo_reg[4]_i_160 
       (.CI(1'b0),
        .CO({\uo_reg[4]_i_160_n_0 ,\uo_reg[4]_i_160_n_1 ,\uo_reg[4]_i_160_n_2 ,\uo_reg[4]_i_160_n_3 }),
        .CYINIT(1'b0),
        .DI({\uo[4]_i_200_n_0 ,\uo[4]_i_201_n_0 ,\uo[4]_i_202_n_0 ,1'b0}),
        .O({\uo_reg[4]_i_160_n_4 ,\uo_reg[4]_i_160_n_5 ,\uo_reg[4]_i_160_n_6 ,\uo_reg[4]_i_160_n_7 }),
        .S({\uo[4]_i_203_n_0 ,\uo[4]_i_204_n_0 ,\uo[4]_i_205_n_0 ,\uo[4]_i_206_n_0 }));
  CARRY4 \uo_reg[4]_i_161 
       (.CI(1'b0),
        .CO({\NLW_uo_reg[4]_i_161_CO_UNCONNECTED [3],\uo_reg[4]_i_161_n_1 ,\NLW_uo_reg[4]_i_161_CO_UNCONNECTED [1],\uo_reg[4]_i_161_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\uo[4]_i_207_n_0 ,1'b0}),
        .O({\NLW_uo_reg[4]_i_161_O_UNCONNECTED [3:2],\uo_reg[4]_i_161_n_6 ,\NLW_uo_reg[4]_i_161_O_UNCONNECTED [0]}),
        .S({1'b0,1'b1,\uo_reg[2]_i_93_n_3 ,\uo_reg[2]_i_93_n_3 }));
  CARRY4 \uo_reg[4]_i_187 
       (.CI(1'b0),
        .CO({\uo_reg[4]_i_187_n_0 ,\uo_reg[4]_i_187_n_1 ,\uo_reg[4]_i_187_n_2 ,\uo_reg[4]_i_187_n_3 }),
        .CYINIT(1'b0),
        .DI({fit2[1],f_b0[0],1'b0,1'b1}),
        .O({\uo_reg[4]_i_187_n_4 ,\uo_reg[4]_i_187_n_5 ,\uo_reg[4]_i_187_n_6 ,\NLW_uo_reg[4]_i_187_O_UNCONNECTED [0]}),
        .S({\uo[4]_i_208_n_0 ,\uo[4]_i_209_n_0 ,\uo[4]_i_210_n_0 ,f_b0[0]}));
  CARRY4 \uo_reg[4]_i_188 
       (.CI(\uo_reg[4]_i_187_n_0 ),
        .CO({\uo_reg[4]_i_188_n_0 ,\uo_reg[4]_i_188_n_1 ,\uo_reg[4]_i_188_n_2 ,\uo_reg[4]_i_188_n_3 }),
        .CYINIT(1'b0),
        .DI(fit2[5:2]),
        .O({\uo_reg[4]_i_188_n_4 ,\uo_reg[4]_i_188_n_5 ,\uo_reg[4]_i_188_n_6 ,\uo_reg[4]_i_188_n_7 }),
        .S({\uo[4]_i_211_n_0 ,\uo[4]_i_212_n_0 ,\uo[4]_i_213_n_0 ,\uo[4]_i_214_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \uo_reg[4]_i_31 
       (.CI(\uo_reg[4]_i_36_n_0 ),
        .CO({\NLW_uo_reg[4]_i_31_CO_UNCONNECTED [3:1],\uo_reg[4]_i_31_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\uo[4]_i_37_n_0 }),
        .O(\NLW_uo_reg[4]_i_31_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\uo[4]_i_38_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \uo_reg[4]_i_32 
       (.CI(\uo_reg[4]_i_39_n_0 ),
        .CO({\NLW_uo_reg[4]_i_32_CO_UNCONNECTED [3:2],\uo_reg[4]_i_32_n_2 ,\uo_reg[4]_i_32_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,pt[12]}),
        .O(\NLW_uo_reg[4]_i_32_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\uo_reg[2]_i_34_n_2 ,\uo_reg[2]_i_34_n_2 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \uo_reg[4]_i_33 
       (.CI(\uo_reg[4]_i_41_n_0 ),
        .CO({\NLW_uo_reg[4]_i_33_CO_UNCONNECTED [3:1],\uo_reg[4]_i_33_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\uo[4]_i_42_n_0 }),
        .O(\NLW_uo_reg[4]_i_33_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\uo[4]_i_43_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \uo_reg[4]_i_35 
       (.CI(\uo_reg[4]_i_45_n_0 ),
        .CO({\uo_reg[4]_i_35_n_0 ,\uo_reg[4]_i_35_n_1 ,\uo_reg[4]_i_35_n_2 ,\uo_reg[4]_i_35_n_3 }),
        .CYINIT(1'b0),
        .DI({\uo[4]_i_46_n_0 ,\uo[4]_i_47_n_0 ,\uo[4]_i_48_n_0 ,\uo[4]_i_49_n_0 }),
        .O(\NLW_uo_reg[4]_i_35_O_UNCONNECTED [3:0]),
        .S({\uo[4]_i_50_n_0 ,\uo[4]_i_51_n_0 ,\uo[4]_i_52_n_0 ,\uo[4]_i_53_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \uo_reg[4]_i_36 
       (.CI(\uo_reg[4]_i_54_n_0 ),
        .CO({\uo_reg[4]_i_36_n_0 ,\uo_reg[4]_i_36_n_1 ,\uo_reg[4]_i_36_n_2 ,\uo_reg[4]_i_36_n_3 }),
        .CYINIT(1'b0),
        .DI({\uo[4]_i_55_n_0 ,\uo[4]_i_56_n_0 ,\uo[4]_i_57_n_0 ,\uo[4]_i_58_n_0 }),
        .O(\NLW_uo_reg[4]_i_36_O_UNCONNECTED [3:0]),
        .S({\uo[4]_i_59_n_0 ,\uo[4]_i_60_n_0 ,\uo[4]_i_61_n_0 ,\uo[4]_i_62_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \uo_reg[4]_i_39 
       (.CI(\uo_reg[4]_i_64_n_0 ),
        .CO({\uo_reg[4]_i_39_n_0 ,\uo_reg[4]_i_39_n_1 ,\uo_reg[4]_i_39_n_2 ,\uo_reg[4]_i_39_n_3 }),
        .CYINIT(1'b0),
        .DI({\uo[4]_i_65_n_0 ,\uo[4]_i_66_n_0 ,\uo[4]_i_67_n_0 ,\uo[4]_i_68_n_0 }),
        .O(\NLW_uo_reg[4]_i_39_O_UNCONNECTED [3:0]),
        .S({\uo[4]_i_69_n_0 ,\uo[4]_i_70_n_0 ,\uo[4]_i_71_n_0 ,\uo[4]_i_72_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \uo_reg[4]_i_41 
       (.CI(\uo_reg[4]_i_73_n_0 ),
        .CO({\uo_reg[4]_i_41_n_0 ,\uo_reg[4]_i_41_n_1 ,\uo_reg[4]_i_41_n_2 ,\uo_reg[4]_i_41_n_3 }),
        .CYINIT(1'b0),
        .DI({\uo[4]_i_74_n_0 ,\uo[4]_i_75_n_0 ,\uo[4]_i_76_n_0 ,\uo[4]_i_77_n_0 }),
        .O(\NLW_uo_reg[4]_i_41_O_UNCONNECTED [3:0]),
        .S({\uo[4]_i_78_n_0 ,\uo[4]_i_79_n_0 ,\uo[4]_i_80_n_0 ,\uo[4]_i_81_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \uo_reg[4]_i_44 
       (.CI(\uo_reg[4]_i_83_n_0 ),
        .CO({\NLW_uo_reg[4]_i_44_CO_UNCONNECTED [3:1],data0}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\uo[4]_i_84_n_0 }),
        .O(\NLW_uo_reg[4]_i_44_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\uo[4]_i_85_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \uo_reg[4]_i_45 
       (.CI(1'b0),
        .CO({\uo_reg[4]_i_45_n_0 ,\uo_reg[4]_i_45_n_1 ,\uo_reg[4]_i_45_n_2 ,\uo_reg[4]_i_45_n_3 }),
        .CYINIT(1'b1),
        .DI({\uo[4]_i_86_n_0 ,\uo[4]_i_87_n_0 ,\uo[4]_i_88_n_0 ,\uo[4]_i_89_n_0 }),
        .O(\NLW_uo_reg[4]_i_45_O_UNCONNECTED [3:0]),
        .S({\uo[4]_i_90_n_0 ,\uo[4]_i_91_n_0 ,\uo[4]_i_92_n_0 ,\uo[4]_i_93_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \uo_reg[4]_i_54 
       (.CI(1'b0),
        .CO({\uo_reg[4]_i_54_n_0 ,\uo_reg[4]_i_54_n_1 ,\uo_reg[4]_i_54_n_2 ,\uo_reg[4]_i_54_n_3 }),
        .CYINIT(1'b1),
        .DI({\uo[4]_i_95_n_0 ,\uo[4]_i_96_n_0 ,\uo[4]_i_97_n_0 ,\uo[4]_i_98_n_0 }),
        .O(\NLW_uo_reg[4]_i_54_O_UNCONNECTED [3:0]),
        .S({\uo[4]_i_99_n_0 ,\uo[4]_i_100_n_0 ,\uo[4]_i_101_n_0 ,\uo[4]_i_102_n_0 }));
  CARRY4 \uo_reg[4]_i_63 
       (.CI(\uo_reg[4]_i_103_n_0 ),
        .CO({\NLW_uo_reg[4]_i_63_CO_UNCONNECTED [3],\uo_reg[4]_i_63_n_1 ,\NLW_uo_reg[4]_i_63_CO_UNCONNECTED [1],\uo_reg[4]_i_63_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\uo_reg[4]_i_105_n_1 ,\uo[4]_i_106_n_0 }),
        .O({\NLW_uo_reg[4]_i_63_O_UNCONNECTED [3:2],\uo_reg[4]_i_63_n_6 ,\uo_reg[4]_i_63_n_7 }),
        .S({1'b0,1'b1,\uo[4]_i_107_n_0 ,\uo[4]_i_108_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \uo_reg[4]_i_64 
       (.CI(1'b0),
        .CO({\uo_reg[4]_i_64_n_0 ,\uo_reg[4]_i_64_n_1 ,\uo_reg[4]_i_64_n_2 ,\uo_reg[4]_i_64_n_3 }),
        .CYINIT(1'b1),
        .DI({\uo[4]_i_109_n_0 ,\uo[4]_i_110_n_0 ,\uo[4]_i_111_n_0 ,\uo[4]_i_112_n_0 }),
        .O(\NLW_uo_reg[4]_i_64_O_UNCONNECTED [3:0]),
        .S({\uo[4]_i_113_n_0 ,\uo[4]_i_114_n_0 ,\uo[4]_i_115_n_0 ,\uo[4]_i_116_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \uo_reg[4]_i_73 
       (.CI(1'b0),
        .CO({\uo_reg[4]_i_73_n_0 ,\uo_reg[4]_i_73_n_1 ,\uo_reg[4]_i_73_n_2 ,\uo_reg[4]_i_73_n_3 }),
        .CYINIT(1'b1),
        .DI({\uo[4]_i_118_n_0 ,\uo[4]_i_119_n_0 ,\uo[4]_i_120_n_0 ,\uo[4]_i_121_n_0 }),
        .O(\NLW_uo_reg[4]_i_73_O_UNCONNECTED [3:0]),
        .S({\uo[4]_i_122_n_0 ,\uo[4]_i_123_n_0 ,\uo[4]_i_124_n_0 ,\uo[4]_i_125_n_0 }));
  CARRY4 \uo_reg[4]_i_82 
       (.CI(\uo_reg[4]_i_126_n_0 ),
        .CO({\NLW_uo_reg[4]_i_82_CO_UNCONNECTED [3:1],\uo_reg[4]_i_82_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_uo_reg[4]_i_82_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \uo_reg[4]_i_83 
       (.CI(\uo_reg[4]_i_128_n_0 ),
        .CO({\uo_reg[4]_i_83_n_0 ,\uo_reg[4]_i_83_n_1 ,\uo_reg[4]_i_83_n_2 ,\uo_reg[4]_i_83_n_3 }),
        .CYINIT(1'b0),
        .DI({\uo[4]_i_129_n_0 ,\uo[4]_i_130_n_0 ,\uo[4]_i_131_n_0 ,\uo[4]_i_132_n_0 }),
        .O(\NLW_uo_reg[4]_i_83_O_UNCONNECTED [3:0]),
        .S({\uo[4]_i_133_n_0 ,\uo[4]_i_134_n_0 ,\uo[4]_i_135_n_0 ,\uo[4]_i_136_n_0 }));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \uo_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(uo_out[5]),
        .R(SR[1]));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \uo_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(uo_out[6]),
        .R(SR[1]));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \uo_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(uo_out[7]),
        .R(SR[1]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \uo_reg[7]_i_42 
       (.CI(\uo_reg[7]_i_43_n_0 ),
        .CO({\NLW_uo_reg[7]_i_42_CO_UNCONNECTED [3:2],\uo[7]_i_47_0 ,\uo_reg[7]_i_42_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\uo[7]_i_44_n_0 ,\uo[7]_i_45_n_0 }),
        .O(\NLW_uo_reg[7]_i_42_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\uo[7]_i_46_n_0 ,\uo[7]_i_47_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \uo_reg[7]_i_43 
       (.CI(1'b0),
        .CO({\uo_reg[7]_i_43_n_0 ,\uo_reg[7]_i_43_n_1 ,\uo_reg[7]_i_43_n_2 ,\uo_reg[7]_i_43_n_3 }),
        .CYINIT(\uo[7]_i_48_n_0 ),
        .DI({\uo[7]_i_49_n_0 ,\uo[7]_i_50_n_0 ,\uo[7]_i_51_n_0 ,1'b0}),
        .O(\NLW_uo_reg[7]_i_43_O_UNCONNECTED [3:0]),
        .S({\uo[7]_i_52_n_0 ,\uo[7]_i_53_n_0 ,\uo[7]_i_54_n_0 ,\uo[7]_i_55_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \uo_reg[7]_i_56 
       (.CI(1'b0),
        .CO({\NLW_uo_reg[7]_i_56_CO_UNCONNECTED [3:1],\uo_reg[7]_i_56_n_3 }),
        .CYINIT(\uo_reg[7]_i_58_n_3 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_uo_reg[7]_i_56_O_UNCONNECTED [3:2],f_margin[13:12]}),
        .S({1'b0,1'b0,\uo[7]_i_64_n_0 ,1'b1}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \uo_reg[7]_i_57 
       (.CI(\uo_reg[7]_i_60_n_0 ),
        .CO(\NLW_uo_reg[7]_i_57_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_uo_reg[7]_i_57_O_UNCONNECTED [3:1],f_uniq0[12]}),
        .S({1'b0,1'b0,1'b0,\uo[7]_i_44_0 }));
  CARRY4 \uo_reg[7]_i_58 
       (.CI(\uo_reg[7]_i_59_n_0 ),
        .CO({\NLW_uo_reg[7]_i_58_CO_UNCONNECTED [3:1],\uo_reg[7]_i_58_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_uo_reg[7]_i_58_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 \uo_reg[7]_i_59 
       (.CI(\uo_reg[7]_i_62_n_0 ),
        .CO({\uo_reg[7]_i_59_n_0 ,\uo_reg[7]_i_59_n_1 ,\uo_reg[7]_i_59_n_2 ,\uo_reg[7]_i_59_n_3 }),
        .CYINIT(1'b0),
        .DI({\uo[7]_i_66_n_0 ,\uo[7]_i_67_n_0 ,\uo[7]_i_68_n_0 ,\uo[7]_i_69_n_0 }),
        .O(f_margin[11:8]),
        .S({\uo[7]_i_70_n_0 ,\uo[7]_i_71_n_0 ,\uo[7]_i_72_n_0 ,\uo[7]_i_73_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \uo_reg[7]_i_60 
       (.CI(\uo_reg[7]_i_63_n_0 ),
        .CO({\uo_reg[7]_i_60_n_0 ,\uo_reg[7]_i_60_n_1 ,\uo_reg[7]_i_60_n_2 ,\uo_reg[7]_i_60_n_3 }),
        .CYINIT(1'b0),
        .DI({\uo[7]_i_52_0 ,\uq_reg[2] ,\uo[7]_i_76_n_0 ,\uo[7]_i_77_n_0 }),
        .O(f_uniq0[11:8]),
        .S({S,\uo[7]_i_80_n_0 ,\uo[7]_i_81_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \uo_reg[7]_i_61 
       (.CI(1'b0),
        .CO({\uo_reg[7]_i_61_n_0 ,\uo_reg[7]_i_61_n_1 ,\uo_reg[7]_i_61_n_2 ,\uo_reg[7]_i_61_n_3 }),
        .CYINIT(1'b0),
        .DI({\uo[7]_i_82_n_0 ,\uo[7]_i_83_n_0 ,\uo[7]_i_84_n_0 ,1'b0}),
        .O(f_uniq0[3:0]),
        .S({\uo[7]_i_85_n_0 ,\uo[7]_i_86_n_0 ,\uo[7]_i_87_n_0 ,\uo[7]_i_88_n_0 }));
  CARRY4 \uo_reg[7]_i_62 
       (.CI(1'b0),
        .CO({\uo_reg[7]_i_62_n_0 ,\uo_reg[7]_i_62_n_1 ,\uo_reg[7]_i_62_n_2 ,\uo_reg[7]_i_62_n_3 }),
        .CYINIT(1'b0),
        .DI({\uo[7]_i_89_n_0 ,\uo[7]_i_90_n_0 ,\uo[7]_i_91_n_0 ,1'b0}),
        .O(f_margin[7:4]),
        .S({\uo[7]_i_92_n_0 ,\uo[7]_i_93_n_0 ,\uo[7]_i_94_n_0 ,\uo[7]_i_95_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \uo_reg[7]_i_63 
       (.CI(\uo_reg[7]_i_61_n_0 ),
        .CO({\uo_reg[7]_i_63_n_0 ,\uo_reg[7]_i_63_n_1 ,\uo_reg[7]_i_63_n_2 ,\uo_reg[7]_i_63_n_3 }),
        .CYINIT(1'b0),
        .DI({\uo[7]_i_96_n_0 ,\uo[7]_i_97_n_0 ,\uo[7]_i_98_n_0 ,\uo[7]_i_99_n_0 }),
        .O(f_uniq0[7:4]),
        .S({\uo[7]_i_100_n_0 ,\uo[7]_i_101_n_0 ,\uo[7]_i_102_n_0 ,\uo[7]_i_103_n_0 }));
endmodule

(* ORIG_REF_NAME = "tt_um_stereo_slice" *) 
module system_slice_0_0_tt_um_stereo_slice
   (uo_out,
    ui_in,
    clk,
    uio_in,
    rst_n);
  output [7:0]uo_out;
  input [7:0]ui_in;
  input clk;
  input [7:0]uio_in;
  input rst_n;

  wire clk;
  wire \l_bot[6]_i_71_n_0 ;
  wire lr_reg_0_15_0_0_i_3_n_0;
  wire lr_reg_0_15_0_0_i_4_n_0;
  wire lr_reg_0_15_0_0_i_5_n_0;
  wire [1:1]p_0_in;
  wire \rs[1]_i_1_n_0 ;
  wire \rs_reg_n_0_[1] ;
  wire rst_n;
  wire [3:0]uc;
  wire [7:0]ui_in;
  wire [7:0]uio_in;
  wire [7:0]uo_out;

  LUT4 #(
    .INIT(16'h8000)) 
    \l_bot[6]_i_71 
       (.I0(uc[3]),
        .I1(uc[1]),
        .I2(uc[0]),
        .I3(uc[2]),
        .O(\l_bot[6]_i_71_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    lr_reg_0_15_0_0_i_3
       (.I0(uc[0]),
        .I1(uc[1]),
        .O(lr_reg_0_15_0_0_i_3_n_0));
  LUT3 #(
    .INIT(8'h78)) 
    lr_reg_0_15_0_0_i_4
       (.I0(uc[1]),
        .I1(uc[0]),
        .I2(uc[2]),
        .O(lr_reg_0_15_0_0_i_4_n_0));
  LUT4 #(
    .INIT(16'h7F80)) 
    lr_reg_0_15_0_0_i_5
       (.I0(uc[2]),
        .I1(uc[0]),
        .I2(uc[1]),
        .I3(uc[3]),
        .O(lr_reg_0_15_0_0_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \rs[1]_i_1 
       (.I0(rst_n),
        .O(\rs[1]_i_1_n_0 ));
  FDCE \rs_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rs[1]_i_1_n_0 ),
        .D(1'b1),
        .Q(p_0_in));
  FDCE \rs_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rs[1]_i_1_n_0 ),
        .D(p_0_in),
        .Q(\rs_reg_n_0_[1] ));
  system_slice_0_0_mini_slice u_slice
       (.Q(uc),
        .clk(clk),
        .\l_bot_reg[6]_i_55 (\l_bot[6]_i_71_n_0 ),
        .p_0_in({lr_reg_0_15_0_0_i_5_n_0,lr_reg_0_15_0_0_i_4_n_0,lr_reg_0_15_0_0_i_3_n_0}),
        .\rec_in_reg[6] (\rs_reg_n_0_[1] ),
        .ui_in(ui_in),
        .uio_in(uio_in),
        .uo_out(uo_out));
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
