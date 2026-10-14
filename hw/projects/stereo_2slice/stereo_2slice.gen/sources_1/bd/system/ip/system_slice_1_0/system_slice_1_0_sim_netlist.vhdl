-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Wed Oct 14 08:37:31 2026
-- Host        : LAPTOP-THBQET7J running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/stereo-depth-cam/hw/projects/stereo_2slice/stereo_2slice.gen/sources_1/bd/system/ip/system_slice_1_0/system_slice_1_0_sim_netlist.vhdl
-- Design      : system_slice_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_slice_1_0_ms_cost is
  port (
    p_1_in : out STD_LOGIC_VECTOR ( 0 to 0 );
    l_new : out STD_LOGIC_VECTOR ( 0 to 0 );
    cost : out STD_LOGIC_VECTOR ( 5 downto 0 );
    load : in STD_LOGIC;
    in_right : in STD_LOGIC_VECTOR ( 44 downto 0 );
    clk : in STD_LOGIC;
    \rs_ok_reg[15]_0\ : in STD_LOGIC;
    in_left : in STD_LOGIC_VECTOR ( 44 downto 0 );
    w_real : in STD_LOGIC;
    b_real : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 0 to 0 );
    O : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \l_bot_reg[5]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    b_first : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    scan : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_slice_1_0_ms_cost : entity is "ms_cost";
end system_slice_1_0_ms_cost;

architecture STRUCTURE of system_slice_1_0_ms_cost is
  signal \^a\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^cost\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal cur : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal hist_reg_0_15_0_0_n_0 : STD_LOGIC;
  signal hist_reg_0_15_10_10_i_2_n_0 : STD_LOGIC;
  signal hist_reg_0_15_10_10_i_3_n_0 : STD_LOGIC;
  signal hist_reg_0_15_10_10_i_4_n_0 : STD_LOGIC;
  signal hist_reg_0_15_10_10_i_5_n_0 : STD_LOGIC;
  signal hist_reg_0_15_10_10_i_6_n_0 : STD_LOGIC;
  signal hist_reg_0_15_10_10_i_7_n_0 : STD_LOGIC;
  signal hist_reg_0_15_10_10_i_8_n_0 : STD_LOGIC;
  signal hist_reg_0_15_10_10_i_9_n_0 : STD_LOGIC;
  signal hist_reg_0_15_11_11_i_2_n_0 : STD_LOGIC;
  signal hist_reg_0_15_1_1_n_0 : STD_LOGIC;
  signal hist_reg_0_15_2_2_n_0 : STD_LOGIC;
  signal hist_reg_0_15_3_3_n_0 : STD_LOGIC;
  signal hist_reg_0_15_4_4_n_0 : STD_LOGIC;
  signal hist_reg_0_15_5_5_n_0 : STD_LOGIC;
  signal hist_reg_0_15_6_6_i_10_n_0 : STD_LOGIC;
  signal hist_reg_0_15_6_6_i_11_n_0 : STD_LOGIC;
  signal hist_reg_0_15_6_6_i_12_n_0 : STD_LOGIC;
  signal hist_reg_0_15_6_6_i_13_n_0 : STD_LOGIC;
  signal hist_reg_0_15_6_6_i_14_n_0 : STD_LOGIC;
  signal hist_reg_0_15_6_6_i_15_n_0 : STD_LOGIC;
  signal hist_reg_0_15_6_6_i_2_n_0 : STD_LOGIC;
  signal hist_reg_0_15_6_6_i_3_n_0 : STD_LOGIC;
  signal hist_reg_0_15_6_6_i_4_n_0 : STD_LOGIC;
  signal hist_reg_0_15_6_6_i_5_n_0 : STD_LOGIC;
  signal hist_reg_0_15_6_6_i_6_n_0 : STD_LOGIC;
  signal hist_reg_0_15_6_6_i_7_n_0 : STD_LOGIC;
  signal hist_reg_0_15_6_6_i_8_n_0 : STD_LOGIC;
  signal hist_reg_0_15_6_6_i_9_n_0 : STD_LOGIC;
  signal hist_reg_0_15_7_7_i_10_n_0 : STD_LOGIC;
  signal hist_reg_0_15_7_7_i_11_n_0 : STD_LOGIC;
  signal hist_reg_0_15_7_7_i_12_n_0 : STD_LOGIC;
  signal hist_reg_0_15_7_7_i_13_n_0 : STD_LOGIC;
  signal hist_reg_0_15_7_7_i_14_n_0 : STD_LOGIC;
  signal hist_reg_0_15_7_7_i_15_n_0 : STD_LOGIC;
  signal hist_reg_0_15_7_7_i_16_n_0 : STD_LOGIC;
  signal hist_reg_0_15_7_7_i_17_n_0 : STD_LOGIC;
  signal hist_reg_0_15_7_7_i_18_n_0 : STD_LOGIC;
  signal hist_reg_0_15_7_7_i_19_n_0 : STD_LOGIC;
  signal hist_reg_0_15_7_7_i_20_n_0 : STD_LOGIC;
  signal hist_reg_0_15_7_7_i_21_n_0 : STD_LOGIC;
  signal hist_reg_0_15_7_7_i_22_n_0 : STD_LOGIC;
  signal hist_reg_0_15_7_7_i_23_n_0 : STD_LOGIC;
  signal hist_reg_0_15_7_7_i_24_n_0 : STD_LOGIC;
  signal hist_reg_0_15_7_7_i_25_n_0 : STD_LOGIC;
  signal hist_reg_0_15_7_7_i_26_n_0 : STD_LOGIC;
  signal hist_reg_0_15_7_7_i_27_n_0 : STD_LOGIC;
  signal hist_reg_0_15_7_7_i_28_n_0 : STD_LOGIC;
  signal hist_reg_0_15_7_7_i_29_n_0 : STD_LOGIC;
  signal hist_reg_0_15_7_7_i_2_n_0 : STD_LOGIC;
  signal hist_reg_0_15_7_7_i_30_n_0 : STD_LOGIC;
  signal hist_reg_0_15_7_7_i_31_n_0 : STD_LOGIC;
  signal hist_reg_0_15_7_7_i_32_n_0 : STD_LOGIC;
  signal hist_reg_0_15_7_7_i_33_n_0 : STD_LOGIC;
  signal hist_reg_0_15_7_7_i_34_n_0 : STD_LOGIC;
  signal hist_reg_0_15_7_7_i_35_n_0 : STD_LOGIC;
  signal hist_reg_0_15_7_7_i_36_n_0 : STD_LOGIC;
  signal hist_reg_0_15_7_7_i_37_n_0 : STD_LOGIC;
  signal hist_reg_0_15_7_7_i_38_n_0 : STD_LOGIC;
  signal hist_reg_0_15_7_7_i_39_n_0 : STD_LOGIC;
  signal hist_reg_0_15_7_7_i_3_n_0 : STD_LOGIC;
  signal hist_reg_0_15_7_7_i_40_n_0 : STD_LOGIC;
  signal hist_reg_0_15_7_7_i_41_n_0 : STD_LOGIC;
  signal hist_reg_0_15_7_7_i_42_n_0 : STD_LOGIC;
  signal hist_reg_0_15_7_7_i_43_n_0 : STD_LOGIC;
  signal hist_reg_0_15_7_7_i_44_n_0 : STD_LOGIC;
  signal hist_reg_0_15_7_7_i_45_n_0 : STD_LOGIC;
  signal hist_reg_0_15_7_7_i_46_n_0 : STD_LOGIC;
  signal hist_reg_0_15_7_7_i_47_n_0 : STD_LOGIC;
  signal hist_reg_0_15_7_7_i_4_n_0 : STD_LOGIC;
  signal hist_reg_0_15_7_7_i_5_n_0 : STD_LOGIC;
  signal hist_reg_0_15_7_7_i_6_n_0 : STD_LOGIC;
  signal hist_reg_0_15_7_7_i_7_n_0 : STD_LOGIC;
  signal hist_reg_0_15_7_7_i_8_n_0 : STD_LOGIC;
  signal hist_reg_0_15_7_7_i_9_n_0 : STD_LOGIC;
  signal hist_reg_0_15_8_8_i_10_n_0 : STD_LOGIC;
  signal hist_reg_0_15_8_8_i_11_n_0 : STD_LOGIC;
  signal hist_reg_0_15_8_8_i_12_n_0 : STD_LOGIC;
  signal hist_reg_0_15_8_8_i_13_n_0 : STD_LOGIC;
  signal hist_reg_0_15_8_8_i_14_n_0 : STD_LOGIC;
  signal hist_reg_0_15_8_8_i_15_n_0 : STD_LOGIC;
  signal hist_reg_0_15_8_8_i_16_n_0 : STD_LOGIC;
  signal hist_reg_0_15_8_8_i_17_n_0 : STD_LOGIC;
  signal hist_reg_0_15_8_8_i_18_n_0 : STD_LOGIC;
  signal hist_reg_0_15_8_8_i_19_n_0 : STD_LOGIC;
  signal hist_reg_0_15_8_8_i_20_n_0 : STD_LOGIC;
  signal hist_reg_0_15_8_8_i_21_n_0 : STD_LOGIC;
  signal hist_reg_0_15_8_8_i_22_n_0 : STD_LOGIC;
  signal hist_reg_0_15_8_8_i_23_n_0 : STD_LOGIC;
  signal hist_reg_0_15_8_8_i_24_n_0 : STD_LOGIC;
  signal hist_reg_0_15_8_8_i_25_n_0 : STD_LOGIC;
  signal hist_reg_0_15_8_8_i_26_n_0 : STD_LOGIC;
  signal hist_reg_0_15_8_8_i_2_n_0 : STD_LOGIC;
  signal hist_reg_0_15_8_8_i_3_n_0 : STD_LOGIC;
  signal hist_reg_0_15_8_8_i_4_n_0 : STD_LOGIC;
  signal hist_reg_0_15_8_8_i_5_n_0 : STD_LOGIC;
  signal hist_reg_0_15_8_8_i_6_n_0 : STD_LOGIC;
  signal hist_reg_0_15_8_8_i_7_n_0 : STD_LOGIC;
  signal hist_reg_0_15_8_8_i_8_n_0 : STD_LOGIC;
  signal hist_reg_0_15_8_8_i_9_n_0 : STD_LOGIC;
  signal hist_reg_0_15_9_9_i_2_n_0 : STD_LOGIC;
  signal hist_reg_0_15_9_9_i_3_n_0 : STD_LOGIC;
  signal hist_reg_0_15_9_9_i_4_n_0 : STD_LOGIC;
  signal hist_reg_0_15_9_9_i_5_n_0 : STD_LOGIC;
  signal hist_reg_0_15_9_9_i_6_n_0 : STD_LOGIC;
  signal hist_reg_0_15_9_9_i_7_n_0 : STD_LOGIC;
  signal \l_bot[1]_i_10_n_0\ : STD_LOGIC;
  signal \l_bot[1]_i_11_n_0\ : STD_LOGIC;
  signal \l_bot[1]_i_14_n_0\ : STD_LOGIC;
  signal \l_bot[1]_i_15_n_0\ : STD_LOGIC;
  signal \l_bot[1]_i_16_n_0\ : STD_LOGIC;
  signal \l_bot[1]_i_17_n_0\ : STD_LOGIC;
  signal \l_bot[1]_i_18_n_0\ : STD_LOGIC;
  signal \l_bot[1]_i_19_n_0\ : STD_LOGIC;
  signal \l_bot[1]_i_20_n_0\ : STD_LOGIC;
  signal \l_bot[1]_i_21_n_0\ : STD_LOGIC;
  signal \l_bot[1]_i_22_n_0\ : STD_LOGIC;
  signal \l_bot[1]_i_23_n_0\ : STD_LOGIC;
  signal \l_bot[1]_i_24_n_0\ : STD_LOGIC;
  signal \l_bot[1]_i_25_n_0\ : STD_LOGIC;
  signal \l_bot[1]_i_27_n_0\ : STD_LOGIC;
  signal \l_bot[1]_i_28_n_0\ : STD_LOGIC;
  signal \l_bot[1]_i_29_n_0\ : STD_LOGIC;
  signal \l_bot[1]_i_30_n_0\ : STD_LOGIC;
  signal \l_bot[1]_i_31_n_0\ : STD_LOGIC;
  signal \l_bot[1]_i_32_n_0\ : STD_LOGIC;
  signal \l_bot[1]_i_33_n_0\ : STD_LOGIC;
  signal \l_bot[1]_i_34_n_0\ : STD_LOGIC;
  signal \l_bot[1]_i_35_n_0\ : STD_LOGIC;
  signal \l_bot[1]_i_36_n_0\ : STD_LOGIC;
  signal \l_bot[1]_i_37_n_0\ : STD_LOGIC;
  signal \l_bot[1]_i_4_n_0\ : STD_LOGIC;
  signal \l_bot[1]_i_5_n_0\ : STD_LOGIC;
  signal \l_bot[1]_i_6_n_0\ : STD_LOGIC;
  signal \l_bot[1]_i_8_n_0\ : STD_LOGIC;
  signal \l_bot[1]_i_9_n_0\ : STD_LOGIC;
  signal \l_bot[5]_i_14_n_0\ : STD_LOGIC;
  signal \l_bot[5]_i_15_n_0\ : STD_LOGIC;
  signal \l_bot[5]_i_16_n_0\ : STD_LOGIC;
  signal \l_bot[5]_i_17_n_0\ : STD_LOGIC;
  signal \l_bot[5]_i_18_n_0\ : STD_LOGIC;
  signal \l_bot[5]_i_19_n_0\ : STD_LOGIC;
  signal \l_bot[5]_i_20_n_0\ : STD_LOGIC;
  signal \l_bot[5]_i_21_n_0\ : STD_LOGIC;
  signal \l_bot[5]_i_22_n_0\ : STD_LOGIC;
  signal \l_bot[5]_i_23_n_0\ : STD_LOGIC;
  signal \l_bot[5]_i_3_n_0\ : STD_LOGIC;
  signal \l_bot[5]_i_4_n_0\ : STD_LOGIC;
  signal \l_bot[5]_i_5_n_0\ : STD_LOGIC;
  signal \l_bot[5]_i_6_n_0\ : STD_LOGIC;
  signal \l_bot[5]_i_7_n_0\ : STD_LOGIC;
  signal \l_bot[5]_i_8_n_0\ : STD_LOGIC;
  signal \l_bot[5]_i_9_n_0\ : STD_LOGIC;
  signal \l_bot_reg[1]_i_12_n_0\ : STD_LOGIC;
  signal \l_bot_reg[1]_i_12_n_1\ : STD_LOGIC;
  signal \l_bot_reg[1]_i_12_n_2\ : STD_LOGIC;
  signal \l_bot_reg[1]_i_12_n_3\ : STD_LOGIC;
  signal \l_bot_reg[1]_i_12_n_4\ : STD_LOGIC;
  signal \l_bot_reg[1]_i_12_n_5\ : STD_LOGIC;
  signal \l_bot_reg[1]_i_12_n_6\ : STD_LOGIC;
  signal \l_bot_reg[1]_i_12_n_7\ : STD_LOGIC;
  signal \l_bot_reg[1]_i_13_n_0\ : STD_LOGIC;
  signal \l_bot_reg[1]_i_13_n_1\ : STD_LOGIC;
  signal \l_bot_reg[1]_i_13_n_2\ : STD_LOGIC;
  signal \l_bot_reg[1]_i_13_n_3\ : STD_LOGIC;
  signal \l_bot_reg[1]_i_13_n_4\ : STD_LOGIC;
  signal \l_bot_reg[1]_i_13_n_7\ : STD_LOGIC;
  signal \l_bot_reg[1]_i_26_n_0\ : STD_LOGIC;
  signal \l_bot_reg[1]_i_26_n_1\ : STD_LOGIC;
  signal \l_bot_reg[1]_i_26_n_2\ : STD_LOGIC;
  signal \l_bot_reg[1]_i_26_n_3\ : STD_LOGIC;
  signal \l_bot_reg[1]_i_26_n_4\ : STD_LOGIC;
  signal \l_bot_reg[1]_i_26_n_5\ : STD_LOGIC;
  signal \l_bot_reg[1]_i_26_n_6\ : STD_LOGIC;
  signal \l_bot_reg[1]_i_26_n_7\ : STD_LOGIC;
  signal \l_bot_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \l_bot_reg[1]_i_2_n_1\ : STD_LOGIC;
  signal \l_bot_reg[1]_i_2_n_2\ : STD_LOGIC;
  signal \l_bot_reg[1]_i_2_n_3\ : STD_LOGIC;
  signal \l_bot_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \l_bot_reg[1]_i_3_n_1\ : STD_LOGIC;
  signal \l_bot_reg[1]_i_3_n_2\ : STD_LOGIC;
  signal \l_bot_reg[1]_i_3_n_3\ : STD_LOGIC;
  signal \l_bot_reg[1]_i_7_n_0\ : STD_LOGIC;
  signal \l_bot_reg[1]_i_7_n_1\ : STD_LOGIC;
  signal \l_bot_reg[1]_i_7_n_2\ : STD_LOGIC;
  signal \l_bot_reg[1]_i_7_n_3\ : STD_LOGIC;
  signal \l_bot_reg[5]_i_10_n_1\ : STD_LOGIC;
  signal \l_bot_reg[5]_i_10_n_3\ : STD_LOGIC;
  signal \l_bot_reg[5]_i_10_n_6\ : STD_LOGIC;
  signal \l_bot_reg[5]_i_10_n_7\ : STD_LOGIC;
  signal \l_bot_reg[5]_i_11_n_2\ : STD_LOGIC;
  signal \l_bot_reg[5]_i_11_n_7\ : STD_LOGIC;
  signal \l_bot_reg[5]_i_12_n_2\ : STD_LOGIC;
  signal \l_bot_reg[5]_i_12_n_3\ : STD_LOGIC;
  signal \l_bot_reg[5]_i_13_n_0\ : STD_LOGIC;
  signal \l_bot_reg[5]_i_13_n_1\ : STD_LOGIC;
  signal \l_bot_reg[5]_i_13_n_2\ : STD_LOGIC;
  signal \l_bot_reg[5]_i_13_n_3\ : STD_LOGIC;
  signal \l_bot_reg[5]_i_13_n_4\ : STD_LOGIC;
  signal \l_bot_reg[5]_i_13_n_5\ : STD_LOGIC;
  signal \l_bot_reg[5]_i_13_n_6\ : STD_LOGIC;
  signal \l_bot_reg[5]_i_13_n_7\ : STD_LOGIC;
  signal \l_bot_reg[5]_i_2_n_1\ : STD_LOGIC;
  signal \l_bot_reg[5]_i_2_n_2\ : STD_LOGIC;
  signal \l_bot_reg[5]_i_2_n_3\ : STD_LOGIC;
  signal \^l_new\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal left : STD_LOGIC_VECTOR ( 43 downto 0 );
  signal left_ok : STD_LOGIC;
  signal raw : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal rs_ok : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \rs_reg[15][0]_srl16_n_0\ : STD_LOGIC;
  signal \rs_reg[15][10]_srl16_n_0\ : STD_LOGIC;
  signal \rs_reg[15][11]_srl16_n_0\ : STD_LOGIC;
  signal \rs_reg[15][12]_srl16_n_0\ : STD_LOGIC;
  signal \rs_reg[15][13]_srl16_n_0\ : STD_LOGIC;
  signal \rs_reg[15][14]_srl16_n_0\ : STD_LOGIC;
  signal \rs_reg[15][15]_srl16_n_0\ : STD_LOGIC;
  signal \rs_reg[15][16]_srl16_n_0\ : STD_LOGIC;
  signal \rs_reg[15][17]_srl16_n_0\ : STD_LOGIC;
  signal \rs_reg[15][18]_srl16_n_0\ : STD_LOGIC;
  signal \rs_reg[15][19]_srl16_n_0\ : STD_LOGIC;
  signal \rs_reg[15][1]_srl16_n_0\ : STD_LOGIC;
  signal \rs_reg[15][20]_srl16_n_0\ : STD_LOGIC;
  signal \rs_reg[15][21]_srl16_n_0\ : STD_LOGIC;
  signal \rs_reg[15][22]_srl16_n_0\ : STD_LOGIC;
  signal \rs_reg[15][23]_srl16_n_0\ : STD_LOGIC;
  signal \rs_reg[15][24]_srl16_n_0\ : STD_LOGIC;
  signal \rs_reg[15][25]_srl16_n_0\ : STD_LOGIC;
  signal \rs_reg[15][26]_srl16_n_0\ : STD_LOGIC;
  signal \rs_reg[15][27]_srl16_n_0\ : STD_LOGIC;
  signal \rs_reg[15][28]_srl16_n_0\ : STD_LOGIC;
  signal \rs_reg[15][29]_srl16_n_0\ : STD_LOGIC;
  signal \rs_reg[15][2]_srl16_n_0\ : STD_LOGIC;
  signal \rs_reg[15][30]_srl16_n_0\ : STD_LOGIC;
  signal \rs_reg[15][31]_srl16_n_0\ : STD_LOGIC;
  signal \rs_reg[15][32]_srl16_n_0\ : STD_LOGIC;
  signal \rs_reg[15][33]_srl16_n_0\ : STD_LOGIC;
  signal \rs_reg[15][34]_srl16_n_0\ : STD_LOGIC;
  signal \rs_reg[15][35]_srl16_n_0\ : STD_LOGIC;
  signal \rs_reg[15][36]_srl16_n_0\ : STD_LOGIC;
  signal \rs_reg[15][37]_srl16_n_0\ : STD_LOGIC;
  signal \rs_reg[15][38]_srl16_n_0\ : STD_LOGIC;
  signal \rs_reg[15][39]_srl16_n_0\ : STD_LOGIC;
  signal \rs_reg[15][3]_srl16_n_0\ : STD_LOGIC;
  signal \rs_reg[15][40]_srl16_n_0\ : STD_LOGIC;
  signal \rs_reg[15][41]_srl16_n_0\ : STD_LOGIC;
  signal \rs_reg[15][42]_srl16_n_0\ : STD_LOGIC;
  signal \rs_reg[15][43]_srl16_n_0\ : STD_LOGIC;
  signal \rs_reg[15][4]_srl16_n_0\ : STD_LOGIC;
  signal \rs_reg[15][5]_srl16_n_0\ : STD_LOGIC;
  signal \rs_reg[15][6]_srl16_n_0\ : STD_LOGIC;
  signal \rs_reg[15][7]_srl16_n_0\ : STD_LOGIC;
  signal \rs_reg[15][8]_srl16_n_0\ : STD_LOGIC;
  signal \rs_reg[15][9]_srl16_n_0\ : STD_LOGIC;
  signal \NLW_l_bot_reg[1]_i_13_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \NLW_l_bot_reg[1]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_l_bot_reg[1]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_l_bot_reg[5]_i_10_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_l_bot_reg[5]_i_10_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_l_bot_reg[5]_i_11_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_l_bot_reg[5]_i_11_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_l_bot_reg[5]_i_12_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_l_bot_reg[5]_i_12_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_l_bot_reg[5]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of hist_reg_0_15_0_0 : label is 192;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of hist_reg_0_15_0_0 : label is "ms_cost/hist_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of hist_reg_0_15_0_0 : label is "auto";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of hist_reg_0_15_0_0 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of hist_reg_0_15_0_0 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of hist_reg_0_15_0_0 : label is "GND:A4";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of hist_reg_0_15_0_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of hist_reg_0_15_0_0 : label is 15;
  attribute ram_offset : integer;
  attribute ram_offset of hist_reg_0_15_0_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of hist_reg_0_15_0_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of hist_reg_0_15_0_0 : label is 0;
  attribute RTL_RAM_BITS of hist_reg_0_15_10_10 : label is 192;
  attribute RTL_RAM_NAME of hist_reg_0_15_10_10 : label is "ms_cost/hist_reg";
  attribute RTL_RAM_STYLE of hist_reg_0_15_10_10 : label is "auto";
  attribute RTL_RAM_TYPE of hist_reg_0_15_10_10 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of hist_reg_0_15_10_10 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of hist_reg_0_15_10_10 : label is "GND:A4";
  attribute ram_addr_begin of hist_reg_0_15_10_10 : label is 0;
  attribute ram_addr_end of hist_reg_0_15_10_10 : label is 15;
  attribute ram_offset of hist_reg_0_15_10_10 : label is 0;
  attribute ram_slice_begin of hist_reg_0_15_10_10 : label is 10;
  attribute ram_slice_end of hist_reg_0_15_10_10 : label is 10;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of hist_reg_0_15_10_10_i_3 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of hist_reg_0_15_10_10_i_4 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of hist_reg_0_15_10_10_i_5 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of hist_reg_0_15_10_10_i_6 : label is "soft_lutpair3";
  attribute RTL_RAM_BITS of hist_reg_0_15_11_11 : label is 192;
  attribute RTL_RAM_NAME of hist_reg_0_15_11_11 : label is "ms_cost/hist_reg";
  attribute RTL_RAM_STYLE of hist_reg_0_15_11_11 : label is "auto";
  attribute RTL_RAM_TYPE of hist_reg_0_15_11_11 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of hist_reg_0_15_11_11 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of hist_reg_0_15_11_11 : label is "GND:A4";
  attribute ram_addr_begin of hist_reg_0_15_11_11 : label is 0;
  attribute ram_addr_end of hist_reg_0_15_11_11 : label is 15;
  attribute ram_offset of hist_reg_0_15_11_11 : label is 0;
  attribute ram_slice_begin of hist_reg_0_15_11_11 : label is 11;
  attribute ram_slice_end of hist_reg_0_15_11_11 : label is 11;
  attribute RTL_RAM_BITS of hist_reg_0_15_1_1 : label is 192;
  attribute RTL_RAM_NAME of hist_reg_0_15_1_1 : label is "ms_cost/hist_reg";
  attribute RTL_RAM_STYLE of hist_reg_0_15_1_1 : label is "auto";
  attribute RTL_RAM_TYPE of hist_reg_0_15_1_1 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of hist_reg_0_15_1_1 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of hist_reg_0_15_1_1 : label is "GND:A4";
  attribute ram_addr_begin of hist_reg_0_15_1_1 : label is 0;
  attribute ram_addr_end of hist_reg_0_15_1_1 : label is 15;
  attribute ram_offset of hist_reg_0_15_1_1 : label is 0;
  attribute ram_slice_begin of hist_reg_0_15_1_1 : label is 1;
  attribute ram_slice_end of hist_reg_0_15_1_1 : label is 1;
  attribute RTL_RAM_BITS of hist_reg_0_15_2_2 : label is 192;
  attribute RTL_RAM_NAME of hist_reg_0_15_2_2 : label is "ms_cost/hist_reg";
  attribute RTL_RAM_STYLE of hist_reg_0_15_2_2 : label is "auto";
  attribute RTL_RAM_TYPE of hist_reg_0_15_2_2 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of hist_reg_0_15_2_2 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of hist_reg_0_15_2_2 : label is "GND:A4";
  attribute ram_addr_begin of hist_reg_0_15_2_2 : label is 0;
  attribute ram_addr_end of hist_reg_0_15_2_2 : label is 15;
  attribute ram_offset of hist_reg_0_15_2_2 : label is 0;
  attribute ram_slice_begin of hist_reg_0_15_2_2 : label is 2;
  attribute ram_slice_end of hist_reg_0_15_2_2 : label is 2;
  attribute RTL_RAM_BITS of hist_reg_0_15_3_3 : label is 192;
  attribute RTL_RAM_NAME of hist_reg_0_15_3_3 : label is "ms_cost/hist_reg";
  attribute RTL_RAM_STYLE of hist_reg_0_15_3_3 : label is "auto";
  attribute RTL_RAM_TYPE of hist_reg_0_15_3_3 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of hist_reg_0_15_3_3 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of hist_reg_0_15_3_3 : label is "GND:A4";
  attribute ram_addr_begin of hist_reg_0_15_3_3 : label is 0;
  attribute ram_addr_end of hist_reg_0_15_3_3 : label is 15;
  attribute ram_offset of hist_reg_0_15_3_3 : label is 0;
  attribute ram_slice_begin of hist_reg_0_15_3_3 : label is 3;
  attribute ram_slice_end of hist_reg_0_15_3_3 : label is 3;
  attribute RTL_RAM_BITS of hist_reg_0_15_4_4 : label is 192;
  attribute RTL_RAM_NAME of hist_reg_0_15_4_4 : label is "ms_cost/hist_reg";
  attribute RTL_RAM_STYLE of hist_reg_0_15_4_4 : label is "auto";
  attribute RTL_RAM_TYPE of hist_reg_0_15_4_4 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of hist_reg_0_15_4_4 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of hist_reg_0_15_4_4 : label is "GND:A4";
  attribute ram_addr_begin of hist_reg_0_15_4_4 : label is 0;
  attribute ram_addr_end of hist_reg_0_15_4_4 : label is 15;
  attribute ram_offset of hist_reg_0_15_4_4 : label is 0;
  attribute ram_slice_begin of hist_reg_0_15_4_4 : label is 4;
  attribute ram_slice_end of hist_reg_0_15_4_4 : label is 4;
  attribute RTL_RAM_BITS of hist_reg_0_15_5_5 : label is 192;
  attribute RTL_RAM_NAME of hist_reg_0_15_5_5 : label is "ms_cost/hist_reg";
  attribute RTL_RAM_STYLE of hist_reg_0_15_5_5 : label is "auto";
  attribute RTL_RAM_TYPE of hist_reg_0_15_5_5 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of hist_reg_0_15_5_5 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of hist_reg_0_15_5_5 : label is "GND:A4";
  attribute ram_addr_begin of hist_reg_0_15_5_5 : label is 0;
  attribute ram_addr_end of hist_reg_0_15_5_5 : label is 15;
  attribute ram_offset of hist_reg_0_15_5_5 : label is 0;
  attribute ram_slice_begin of hist_reg_0_15_5_5 : label is 5;
  attribute ram_slice_end of hist_reg_0_15_5_5 : label is 5;
  attribute RTL_RAM_BITS of hist_reg_0_15_6_6 : label is 192;
  attribute RTL_RAM_NAME of hist_reg_0_15_6_6 : label is "ms_cost/hist_reg";
  attribute RTL_RAM_STYLE of hist_reg_0_15_6_6 : label is "auto";
  attribute RTL_RAM_TYPE of hist_reg_0_15_6_6 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of hist_reg_0_15_6_6 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of hist_reg_0_15_6_6 : label is "GND:A4";
  attribute ram_addr_begin of hist_reg_0_15_6_6 : label is 0;
  attribute ram_addr_end of hist_reg_0_15_6_6 : label is 15;
  attribute ram_offset of hist_reg_0_15_6_6 : label is 0;
  attribute ram_slice_begin of hist_reg_0_15_6_6 : label is 6;
  attribute ram_slice_end of hist_reg_0_15_6_6 : label is 6;
  attribute RTL_RAM_BITS of hist_reg_0_15_7_7 : label is 192;
  attribute RTL_RAM_NAME of hist_reg_0_15_7_7 : label is "ms_cost/hist_reg";
  attribute RTL_RAM_STYLE of hist_reg_0_15_7_7 : label is "auto";
  attribute RTL_RAM_TYPE of hist_reg_0_15_7_7 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of hist_reg_0_15_7_7 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of hist_reg_0_15_7_7 : label is "GND:A4";
  attribute ram_addr_begin of hist_reg_0_15_7_7 : label is 0;
  attribute ram_addr_end of hist_reg_0_15_7_7 : label is 15;
  attribute ram_offset of hist_reg_0_15_7_7 : label is 0;
  attribute ram_slice_begin of hist_reg_0_15_7_7 : label is 7;
  attribute ram_slice_end of hist_reg_0_15_7_7 : label is 7;
  attribute SOFT_HLUTNM of hist_reg_0_15_7_7_i_2 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of hist_reg_0_15_7_7_i_29 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of hist_reg_0_15_7_7_i_3 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of hist_reg_0_15_7_7_i_33 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of hist_reg_0_15_7_7_i_4 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of hist_reg_0_15_7_7_i_5 : label is "soft_lutpair1";
  attribute RTL_RAM_BITS of hist_reg_0_15_8_8 : label is 192;
  attribute RTL_RAM_NAME of hist_reg_0_15_8_8 : label is "ms_cost/hist_reg";
  attribute RTL_RAM_STYLE of hist_reg_0_15_8_8 : label is "auto";
  attribute RTL_RAM_TYPE of hist_reg_0_15_8_8 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of hist_reg_0_15_8_8 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of hist_reg_0_15_8_8 : label is "GND:A4";
  attribute ram_addr_begin of hist_reg_0_15_8_8 : label is 0;
  attribute ram_addr_end of hist_reg_0_15_8_8 : label is 15;
  attribute ram_offset of hist_reg_0_15_8_8 : label is 0;
  attribute ram_slice_begin of hist_reg_0_15_8_8 : label is 8;
  attribute ram_slice_end of hist_reg_0_15_8_8 : label is 8;
  attribute SOFT_HLUTNM of hist_reg_0_15_8_8_i_14 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of hist_reg_0_15_8_8_i_15 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of hist_reg_0_15_8_8_i_22 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of hist_reg_0_15_8_8_i_3 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of hist_reg_0_15_8_8_i_4 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of hist_reg_0_15_8_8_i_7 : label is "soft_lutpair1";
  attribute RTL_RAM_BITS of hist_reg_0_15_9_9 : label is 192;
  attribute RTL_RAM_NAME of hist_reg_0_15_9_9 : label is "ms_cost/hist_reg";
  attribute RTL_RAM_STYLE of hist_reg_0_15_9_9 : label is "auto";
  attribute RTL_RAM_TYPE of hist_reg_0_15_9_9 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of hist_reg_0_15_9_9 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of hist_reg_0_15_9_9 : label is "GND:A4";
  attribute ram_addr_begin of hist_reg_0_15_9_9 : label is 0;
  attribute ram_addr_end of hist_reg_0_15_9_9 : label is 15;
  attribute ram_offset of hist_reg_0_15_9_9 : label is 0;
  attribute ram_slice_begin of hist_reg_0_15_9_9 : label is 9;
  attribute ram_slice_end of hist_reg_0_15_9_9 : label is 9;
  attribute HLUTNM : string;
  attribute HLUTNM of \l_bot[5]_i_3\ : label is "lutpair1";
  attribute HLUTNM of \l_bot[5]_i_4\ : label is "lutpair0";
  attribute HLUTNM of \l_bot[5]_i_8\ : label is "lutpair1";
  attribute HLUTNM of \l_bot[5]_i_9\ : label is "lutpair0";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \rs_reg[15][0]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15] ";
  attribute srl_name : string;
  attribute srl_name of \rs_reg[15][0]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15][0]_srl16 ";
  attribute srl_bus_name of \rs_reg[15][10]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15] ";
  attribute srl_name of \rs_reg[15][10]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15][10]_srl16 ";
  attribute srl_bus_name of \rs_reg[15][11]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15] ";
  attribute srl_name of \rs_reg[15][11]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15][11]_srl16 ";
  attribute srl_bus_name of \rs_reg[15][12]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15] ";
  attribute srl_name of \rs_reg[15][12]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15][12]_srl16 ";
  attribute srl_bus_name of \rs_reg[15][13]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15] ";
  attribute srl_name of \rs_reg[15][13]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15][13]_srl16 ";
  attribute srl_bus_name of \rs_reg[15][14]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15] ";
  attribute srl_name of \rs_reg[15][14]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15][14]_srl16 ";
  attribute srl_bus_name of \rs_reg[15][15]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15] ";
  attribute srl_name of \rs_reg[15][15]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15][15]_srl16 ";
  attribute srl_bus_name of \rs_reg[15][16]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15] ";
  attribute srl_name of \rs_reg[15][16]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15][16]_srl16 ";
  attribute srl_bus_name of \rs_reg[15][17]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15] ";
  attribute srl_name of \rs_reg[15][17]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15][17]_srl16 ";
  attribute srl_bus_name of \rs_reg[15][18]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15] ";
  attribute srl_name of \rs_reg[15][18]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15][18]_srl16 ";
  attribute srl_bus_name of \rs_reg[15][19]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15] ";
  attribute srl_name of \rs_reg[15][19]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15][19]_srl16 ";
  attribute srl_bus_name of \rs_reg[15][1]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15] ";
  attribute srl_name of \rs_reg[15][1]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15][1]_srl16 ";
  attribute srl_bus_name of \rs_reg[15][20]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15] ";
  attribute srl_name of \rs_reg[15][20]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15][20]_srl16 ";
  attribute srl_bus_name of \rs_reg[15][21]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15] ";
  attribute srl_name of \rs_reg[15][21]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15][21]_srl16 ";
  attribute srl_bus_name of \rs_reg[15][22]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15] ";
  attribute srl_name of \rs_reg[15][22]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15][22]_srl16 ";
  attribute srl_bus_name of \rs_reg[15][23]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15] ";
  attribute srl_name of \rs_reg[15][23]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15][23]_srl16 ";
  attribute srl_bus_name of \rs_reg[15][24]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15] ";
  attribute srl_name of \rs_reg[15][24]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15][24]_srl16 ";
  attribute srl_bus_name of \rs_reg[15][25]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15] ";
  attribute srl_name of \rs_reg[15][25]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15][25]_srl16 ";
  attribute srl_bus_name of \rs_reg[15][26]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15] ";
  attribute srl_name of \rs_reg[15][26]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15][26]_srl16 ";
  attribute srl_bus_name of \rs_reg[15][27]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15] ";
  attribute srl_name of \rs_reg[15][27]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15][27]_srl16 ";
  attribute srl_bus_name of \rs_reg[15][28]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15] ";
  attribute srl_name of \rs_reg[15][28]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15][28]_srl16 ";
  attribute srl_bus_name of \rs_reg[15][29]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15] ";
  attribute srl_name of \rs_reg[15][29]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15][29]_srl16 ";
  attribute srl_bus_name of \rs_reg[15][2]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15] ";
  attribute srl_name of \rs_reg[15][2]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15][2]_srl16 ";
  attribute srl_bus_name of \rs_reg[15][30]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15] ";
  attribute srl_name of \rs_reg[15][30]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15][30]_srl16 ";
  attribute srl_bus_name of \rs_reg[15][31]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15] ";
  attribute srl_name of \rs_reg[15][31]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15][31]_srl16 ";
  attribute srl_bus_name of \rs_reg[15][32]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15] ";
  attribute srl_name of \rs_reg[15][32]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15][32]_srl16 ";
  attribute srl_bus_name of \rs_reg[15][33]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15] ";
  attribute srl_name of \rs_reg[15][33]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15][33]_srl16 ";
  attribute srl_bus_name of \rs_reg[15][34]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15] ";
  attribute srl_name of \rs_reg[15][34]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15][34]_srl16 ";
  attribute srl_bus_name of \rs_reg[15][35]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15] ";
  attribute srl_name of \rs_reg[15][35]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15][35]_srl16 ";
  attribute srl_bus_name of \rs_reg[15][36]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15] ";
  attribute srl_name of \rs_reg[15][36]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15][36]_srl16 ";
  attribute srl_bus_name of \rs_reg[15][37]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15] ";
  attribute srl_name of \rs_reg[15][37]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15][37]_srl16 ";
  attribute srl_bus_name of \rs_reg[15][38]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15] ";
  attribute srl_name of \rs_reg[15][38]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15][38]_srl16 ";
  attribute srl_bus_name of \rs_reg[15][39]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15] ";
  attribute srl_name of \rs_reg[15][39]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15][39]_srl16 ";
  attribute srl_bus_name of \rs_reg[15][3]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15] ";
  attribute srl_name of \rs_reg[15][3]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15][3]_srl16 ";
  attribute srl_bus_name of \rs_reg[15][40]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15] ";
  attribute srl_name of \rs_reg[15][40]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15][40]_srl16 ";
  attribute srl_bus_name of \rs_reg[15][41]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15] ";
  attribute srl_name of \rs_reg[15][41]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15][41]_srl16 ";
  attribute srl_bus_name of \rs_reg[15][42]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15] ";
  attribute srl_name of \rs_reg[15][42]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15][42]_srl16 ";
  attribute srl_bus_name of \rs_reg[15][43]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15] ";
  attribute srl_name of \rs_reg[15][43]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15][43]_srl16 ";
  attribute srl_bus_name of \rs_reg[15][4]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15] ";
  attribute srl_name of \rs_reg[15][4]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15][4]_srl16 ";
  attribute srl_bus_name of \rs_reg[15][5]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15] ";
  attribute srl_name of \rs_reg[15][5]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15][5]_srl16 ";
  attribute srl_bus_name of \rs_reg[15][6]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15] ";
  attribute srl_name of \rs_reg[15][6]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15][6]_srl16 ";
  attribute srl_bus_name of \rs_reg[15][7]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15] ";
  attribute srl_name of \rs_reg[15][7]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15][7]_srl16 ";
  attribute srl_bus_name of \rs_reg[15][8]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15] ";
  attribute srl_name of \rs_reg[15][8]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15][8]_srl16 ";
  attribute srl_bus_name of \rs_reg[15][9]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15] ";
  attribute srl_name of \rs_reg[15][9]_srl16\ : label is "\inst/u_slice/u_cost/rs_reg[15][9]_srl16 ";
begin
  cost(5 downto 0) <= \^cost\(5 downto 0);
  l_new(0) <= \^l_new\(0);
hist_reg_0_15_0_0: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => cur(0),
      O => hist_reg_0_15_0_0_n_0,
      WCLK => clk,
      WE => scan
    );
hist_reg_0_15_10_10: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => raw(4),
      O => cur(4),
      WCLK => clk,
      WE => scan
    );
hist_reg_0_15_10_10_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => hist_reg_0_15_10_10_i_2_n_0,
      O => raw(4)
    );
hist_reg_0_15_10_10_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFE817FFFF17E8"
    )
        port map (
      I0 => hist_reg_0_15_10_10_i_3_n_0,
      I1 => hist_reg_0_15_10_10_i_4_n_0,
      I2 => hist_reg_0_15_10_10_i_5_n_0,
      I3 => hist_reg_0_15_10_10_i_6_n_0,
      I4 => hist_reg_0_15_6_6_i_2_n_0,
      I5 => hist_reg_0_15_10_10_i_7_n_0,
      O => hist_reg_0_15_10_10_i_2_n_0
    );
hist_reg_0_15_10_10_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => hist_reg_0_15_10_10_i_8_n_0,
      I1 => hist_reg_0_15_10_10_i_9_n_0,
      I2 => hist_reg_0_15_9_9_i_6_n_0,
      O => hist_reg_0_15_10_10_i_3_n_0
    );
hist_reg_0_15_10_10_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => hist_reg_0_15_8_8_i_12_n_0,
      I1 => hist_reg_0_15_8_8_i_13_n_0,
      I2 => hist_reg_0_15_8_8_i_11_n_0,
      O => hist_reg_0_15_10_10_i_4_n_0
    );
hist_reg_0_15_10_10_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => hist_reg_0_15_8_8_i_10_n_0,
      I1 => hist_reg_0_15_8_8_i_9_n_0,
      I2 => hist_reg_0_15_8_8_i_8_n_0,
      O => hist_reg_0_15_10_10_i_5_n_0
    );
hist_reg_0_15_10_10_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"17"
    )
        port map (
      I0 => hist_reg_0_15_10_10_i_9_n_0,
      I1 => hist_reg_0_15_10_10_i_8_n_0,
      I2 => hist_reg_0_15_9_9_i_6_n_0,
      O => hist_reg_0_15_10_10_i_6_n_0
    );
hist_reg_0_15_10_10_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFDF4D4D040400"
    )
        port map (
      I0 => hist_reg_0_15_8_8_i_6_n_0,
      I1 => hist_reg_0_15_8_8_i_7_n_0,
      I2 => hist_reg_0_15_8_8_i_3_n_0,
      I3 => hist_reg_0_15_8_8_i_4_n_0,
      I4 => hist_reg_0_15_8_8_i_5_n_0,
      I5 => hist_reg_0_15_9_9_i_4_n_0,
      O => hist_reg_0_15_10_10_i_7_n_0
    );
hist_reg_0_15_10_10_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2B020200FFBFBF2B"
    )
        port map (
      I0 => hist_reg_0_15_7_7_i_33_n_0,
      I1 => hist_reg_0_15_8_8_i_21_n_0,
      I2 => hist_reg_0_15_7_7_i_46_n_0,
      I3 => hist_reg_0_15_8_8_i_20_n_0,
      I4 => hist_reg_0_15_7_7_i_34_n_0,
      I5 => hist_reg_0_15_8_8_i_19_n_0,
      O => hist_reg_0_15_10_10_i_8_n_0
    );
hist_reg_0_15_10_10_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => hist_reg_0_15_8_8_i_22_n_0,
      I1 => hist_reg_0_15_7_7_i_20_n_0,
      I2 => hist_reg_0_15_8_8_i_24_n_0,
      I3 => hist_reg_0_15_7_7_i_42_n_0,
      I4 => hist_reg_0_15_8_8_i_25_n_0,
      O => hist_reg_0_15_10_10_i_9_n_0
    );
hist_reg_0_15_11_11: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => raw(5),
      O => cur(5),
      WCLK => clk,
      WE => scan
    );
hist_reg_0_15_11_11_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => hist_reg_0_15_11_11_i_2_n_0,
      O => raw(5)
    );
hist_reg_0_15_11_11_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000017FF0017"
    )
        port map (
      I0 => hist_reg_0_15_10_10_i_5_n_0,
      I1 => hist_reg_0_15_10_10_i_4_n_0,
      I2 => hist_reg_0_15_10_10_i_3_n_0,
      I3 => hist_reg_0_15_10_10_i_7_n_0,
      I4 => hist_reg_0_15_10_10_i_6_n_0,
      I5 => hist_reg_0_15_6_6_i_2_n_0,
      O => hist_reg_0_15_11_11_i_2_n_0
    );
hist_reg_0_15_1_1: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => cur(1),
      O => hist_reg_0_15_1_1_n_0,
      WCLK => clk,
      WE => scan
    );
hist_reg_0_15_2_2: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => cur(2),
      O => hist_reg_0_15_2_2_n_0,
      WCLK => clk,
      WE => scan
    );
hist_reg_0_15_3_3: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => cur(3),
      O => hist_reg_0_15_3_3_n_0,
      WCLK => clk,
      WE => scan
    );
hist_reg_0_15_4_4: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => cur(4),
      O => hist_reg_0_15_4_4_n_0,
      WCLK => clk,
      WE => scan
    );
hist_reg_0_15_5_5: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => cur(5),
      O => hist_reg_0_15_5_5_n_0,
      WCLK => clk,
      WE => scan
    );
hist_reg_0_15_6_6: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => raw(0),
      O => cur(0),
      WCLK => clk,
      WE => scan
    );
hist_reg_0_15_6_6_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => hist_reg_0_15_6_6_i_2_n_0,
      I1 => hist_reg_0_15_6_6_i_3_n_0,
      I2 => hist_reg_0_15_6_6_i_4_n_0,
      O => raw(0)
    );
hist_reg_0_15_6_6_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => rs_ok(3),
      I1 => rs_ok(2),
      I2 => Q(1),
      I3 => rs_ok(1),
      I4 => Q(0),
      I5 => rs_ok(0),
      O => hist_reg_0_15_6_6_i_10_n_0
    );
hist_reg_0_15_6_6_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => rs_ok(7),
      I1 => rs_ok(6),
      I2 => Q(1),
      I3 => rs_ok(5),
      I4 => Q(0),
      I5 => rs_ok(4),
      O => hist_reg_0_15_6_6_i_11_n_0
    );
hist_reg_0_15_6_6_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => left(11),
      I1 => \rs_reg[15][11]_srl16_n_0\,
      O => hist_reg_0_15_6_6_i_12_n_0
    );
hist_reg_0_15_6_6_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => left(8),
      I1 => \rs_reg[15][8]_srl16_n_0\,
      I2 => left(7),
      I3 => \rs_reg[15][7]_srl16_n_0\,
      I4 => \rs_reg[15][9]_srl16_n_0\,
      I5 => left(9),
      O => hist_reg_0_15_6_6_i_13_n_0
    );
hist_reg_0_15_6_6_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => left(5),
      I1 => \rs_reg[15][5]_srl16_n_0\,
      O => hist_reg_0_15_6_6_i_14_n_0
    );
hist_reg_0_15_6_6_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => left(2),
      I1 => \rs_reg[15][2]_srl16_n_0\,
      I2 => left(1),
      I3 => \rs_reg[15][1]_srl16_n_0\,
      I4 => \rs_reg[15][3]_srl16_n_0\,
      I5 => left(3),
      O => hist_reg_0_15_6_6_i_15_n_0
    );
hist_reg_0_15_6_6_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"575757F7F7F757F7"
    )
        port map (
      I0 => left_ok,
      I1 => hist_reg_0_15_6_6_i_5_n_0,
      I2 => Q(3),
      I3 => hist_reg_0_15_6_6_i_6_n_0,
      I4 => Q(2),
      I5 => hist_reg_0_15_6_6_i_7_n_0,
      O => hist_reg_0_15_6_6_i_2_n_0
    );
hist_reg_0_15_6_6_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => hist_reg_0_15_7_7_i_4_n_0,
      I1 => hist_reg_0_15_7_7_i_3_n_0,
      I2 => hist_reg_0_15_7_7_i_2_n_0,
      O => hist_reg_0_15_6_6_i_3_n_0
    );
hist_reg_0_15_6_6_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => hist_reg_0_15_6_6_i_8_n_0,
      I1 => hist_reg_0_15_6_6_i_9_n_0,
      O => hist_reg_0_15_6_6_i_4_n_0
    );
hist_reg_0_15_6_6_i_5: unisim.vcomponents.MUXF7
     port map (
      I0 => hist_reg_0_15_6_6_i_10_n_0,
      I1 => hist_reg_0_15_6_6_i_11_n_0,
      O => hist_reg_0_15_6_6_i_5_n_0,
      S => Q(2)
    );
hist_reg_0_15_6_6_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => rs_ok(11),
      I1 => rs_ok(10),
      I2 => Q(1),
      I3 => rs_ok(9),
      I4 => Q(0),
      I5 => rs_ok(8),
      O => hist_reg_0_15_6_6_i_6_n_0
    );
hist_reg_0_15_6_6_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => rs_ok(15),
      I1 => rs_ok(14),
      I2 => Q(1),
      I3 => rs_ok(13),
      I4 => Q(0),
      I5 => rs_ok(12),
      O => hist_reg_0_15_6_6_i_7_n_0
    );
hist_reg_0_15_6_6_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => left(6),
      I1 => \rs_reg[15][6]_srl16_n_0\,
      I2 => \rs_reg[15][10]_srl16_n_0\,
      I3 => left(10),
      I4 => hist_reg_0_15_6_6_i_12_n_0,
      I5 => hist_reg_0_15_6_6_i_13_n_0,
      O => hist_reg_0_15_6_6_i_8_n_0
    );
hist_reg_0_15_6_6_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => left(0),
      I1 => \rs_reg[15][0]_srl16_n_0\,
      I2 => \rs_reg[15][4]_srl16_n_0\,
      I3 => left(4),
      I4 => hist_reg_0_15_6_6_i_14_n_0,
      I5 => hist_reg_0_15_6_6_i_15_n_0,
      O => hist_reg_0_15_6_6_i_9_n_0
    );
hist_reg_0_15_7_7: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => raw(1),
      O => cur(1),
      WCLK => clk,
      WE => scan
    );
hist_reg_0_15_7_7_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4001155454400115"
    )
        port map (
      I0 => hist_reg_0_15_6_6_i_2_n_0,
      I1 => hist_reg_0_15_7_7_i_2_n_0,
      I2 => hist_reg_0_15_7_7_i_3_n_0,
      I3 => hist_reg_0_15_7_7_i_4_n_0,
      I4 => hist_reg_0_15_7_7_i_5_n_0,
      I5 => hist_reg_0_15_6_6_i_4_n_0,
      O => raw(1)
    );
hist_reg_0_15_7_7_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => left(18),
      I1 => \rs_reg[15][18]_srl16_n_0\,
      I2 => \rs_reg[15][22]_srl16_n_0\,
      I3 => left(22),
      I4 => hist_reg_0_15_7_7_i_23_n_0,
      I5 => hist_reg_0_15_7_7_i_24_n_0,
      O => hist_reg_0_15_7_7_i_10_n_0
    );
hist_reg_0_15_7_7_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"96C33C96693CC369"
    )
        port map (
      I0 => hist_reg_0_15_6_6_i_8_n_0,
      I1 => hist_reg_0_15_7_7_i_25_n_0,
      I2 => hist_reg_0_15_7_7_i_26_n_0,
      I3 => hist_reg_0_15_7_7_i_27_n_0,
      I4 => hist_reg_0_15_6_6_i_15_n_0,
      I5 => hist_reg_0_15_7_7_i_28_n_0,
      O => hist_reg_0_15_7_7_i_11_n_0
    );
hist_reg_0_15_7_7_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => hist_reg_0_15_7_7_i_29_n_0,
      I1 => hist_reg_0_15_7_7_i_30_n_0,
      I2 => hist_reg_0_15_7_7_i_31_n_0,
      O => hist_reg_0_15_7_7_i_12_n_0
    );
hist_reg_0_15_7_7_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5569695569AAAA69"
    )
        port map (
      I0 => hist_reg_0_15_7_7_i_32_n_0,
      I1 => left(42),
      I2 => \rs_reg[15][42]_srl16_n_0\,
      I3 => left(43),
      I4 => \rs_reg[15][43]_srl16_n_0\,
      I5 => hist_reg_0_15_7_7_i_8_n_0,
      O => hist_reg_0_15_7_7_i_13_n_0
    );
hist_reg_0_15_7_7_i_14: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => hist_reg_0_15_7_7_i_33_n_0,
      I1 => hist_reg_0_15_7_7_i_34_n_0,
      I2 => hist_reg_0_15_7_7_i_35_n_0,
      O => hist_reg_0_15_7_7_i_14_n_0
    );
hist_reg_0_15_7_7_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => left(35),
      I1 => \rs_reg[15][35]_srl16_n_0\,
      O => hist_reg_0_15_7_7_i_15_n_0
    );
hist_reg_0_15_7_7_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => left(32),
      I1 => \rs_reg[15][32]_srl16_n_0\,
      I2 => left(31),
      I3 => \rs_reg[15][31]_srl16_n_0\,
      I4 => \rs_reg[15][33]_srl16_n_0\,
      I5 => left(33),
      O => hist_reg_0_15_7_7_i_16_n_0
    );
hist_reg_0_15_7_7_i_17: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => left(29),
      I1 => \rs_reg[15][29]_srl16_n_0\,
      O => hist_reg_0_15_7_7_i_17_n_0
    );
hist_reg_0_15_7_7_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => left(26),
      I1 => \rs_reg[15][26]_srl16_n_0\,
      I2 => left(25),
      I3 => \rs_reg[15][25]_srl16_n_0\,
      I4 => \rs_reg[15][27]_srl16_n_0\,
      I5 => left(27),
      O => hist_reg_0_15_7_7_i_18_n_0
    );
hist_reg_0_15_7_7_i_19: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => left(41),
      I1 => \rs_reg[15][41]_srl16_n_0\,
      O => hist_reg_0_15_7_7_i_19_n_0
    );
hist_reg_0_15_7_7_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => hist_reg_0_15_7_7_i_6_n_0,
      I1 => hist_reg_0_15_7_7_i_7_n_0,
      O => hist_reg_0_15_7_7_i_2_n_0
    );
hist_reg_0_15_7_7_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => left(38),
      I1 => \rs_reg[15][38]_srl16_n_0\,
      I2 => left(37),
      I3 => \rs_reg[15][37]_srl16_n_0\,
      I4 => \rs_reg[15][39]_srl16_n_0\,
      I5 => left(39),
      O => hist_reg_0_15_7_7_i_20_n_0
    );
hist_reg_0_15_7_7_i_21: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => left(17),
      I1 => \rs_reg[15][17]_srl16_n_0\,
      O => hist_reg_0_15_7_7_i_21_n_0
    );
hist_reg_0_15_7_7_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => left(14),
      I1 => \rs_reg[15][14]_srl16_n_0\,
      I2 => left(13),
      I3 => \rs_reg[15][13]_srl16_n_0\,
      I4 => \rs_reg[15][15]_srl16_n_0\,
      I5 => left(15),
      O => hist_reg_0_15_7_7_i_22_n_0
    );
hist_reg_0_15_7_7_i_23: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => left(23),
      I1 => \rs_reg[15][23]_srl16_n_0\,
      O => hist_reg_0_15_7_7_i_23_n_0
    );
hist_reg_0_15_7_7_i_24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => left(20),
      I1 => \rs_reg[15][20]_srl16_n_0\,
      I2 => left(19),
      I3 => \rs_reg[15][19]_srl16_n_0\,
      I4 => \rs_reg[15][21]_srl16_n_0\,
      I5 => left(21),
      O => hist_reg_0_15_7_7_i_24_n_0
    );
hist_reg_0_15_7_7_i_25: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F99F90099009F99F"
    )
        port map (
      I0 => \rs_reg[15][4]_srl16_n_0\,
      I1 => left(4),
      I2 => \rs_reg[15][5]_srl16_n_0\,
      I3 => left(5),
      I4 => left(0),
      I5 => \rs_reg[15][0]_srl16_n_0\,
      O => hist_reg_0_15_7_7_i_25_n_0
    );
hist_reg_0_15_7_7_i_26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F99F90099009F99F"
    )
        port map (
      I0 => left(3),
      I1 => \rs_reg[15][3]_srl16_n_0\,
      I2 => \rs_reg[15][1]_srl16_n_0\,
      I3 => left(1),
      I4 => \rs_reg[15][2]_srl16_n_0\,
      I5 => left(2),
      O => hist_reg_0_15_7_7_i_26_n_0
    );
hist_reg_0_15_7_7_i_27: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => left(5),
      I1 => \rs_reg[15][5]_srl16_n_0\,
      I2 => left(4),
      I3 => \rs_reg[15][4]_srl16_n_0\,
      I4 => \rs_reg[15][0]_srl16_n_0\,
      I5 => left(0),
      O => hist_reg_0_15_7_7_i_27_n_0
    );
hist_reg_0_15_7_7_i_28: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C6639CC69CC6C663"
    )
        port map (
      I0 => hist_reg_0_15_6_6_i_13_n_0,
      I1 => hist_reg_0_15_7_7_i_36_n_0,
      I2 => hist_reg_0_15_7_7_i_37_n_0,
      I3 => hist_reg_0_15_6_6_i_12_n_0,
      I4 => left(6),
      I5 => \rs_reg[15][6]_srl16_n_0\,
      O => hist_reg_0_15_7_7_i_28_n_0
    );
hist_reg_0_15_7_7_i_29: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hist_reg_0_15_7_7_i_7_n_0,
      I1 => hist_reg_0_15_7_7_i_6_n_0,
      O => hist_reg_0_15_7_7_i_29_n_0
    );
hist_reg_0_15_7_7_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => hist_reg_0_15_7_7_i_8_n_0,
      I1 => left(42),
      I2 => \rs_reg[15][42]_srl16_n_0\,
      I3 => left(43),
      I4 => \rs_reg[15][43]_srl16_n_0\,
      O => hist_reg_0_15_7_7_i_3_n_0
    );
hist_reg_0_15_7_7_i_30: unisim.vcomponents.LUT6
    generic map(
      INIT => X"366393399339C99C"
    )
        port map (
      I0 => hist_reg_0_15_7_7_i_18_n_0,
      I1 => hist_reg_0_15_7_7_i_38_n_0,
      I2 => left(24),
      I3 => \rs_reg[15][24]_srl16_n_0\,
      I4 => hist_reg_0_15_7_7_i_39_n_0,
      I5 => hist_reg_0_15_7_7_i_17_n_0,
      O => hist_reg_0_15_7_7_i_30_n_0
    );
hist_reg_0_15_7_7_i_31: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C6639CC69CC6C663"
    )
        port map (
      I0 => hist_reg_0_15_7_7_i_16_n_0,
      I1 => hist_reg_0_15_7_7_i_40_n_0,
      I2 => hist_reg_0_15_7_7_i_41_n_0,
      I3 => hist_reg_0_15_7_7_i_15_n_0,
      I4 => left(30),
      I5 => \rs_reg[15][30]_srl16_n_0\,
      O => hist_reg_0_15_7_7_i_31_n_0
    );
hist_reg_0_15_7_7_i_32: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C6639CC69CC6C663"
    )
        port map (
      I0 => hist_reg_0_15_7_7_i_20_n_0,
      I1 => hist_reg_0_15_7_7_i_42_n_0,
      I2 => hist_reg_0_15_7_7_i_43_n_0,
      I3 => hist_reg_0_15_7_7_i_19_n_0,
      I4 => left(36),
      I5 => \rs_reg[15][36]_srl16_n_0\,
      O => hist_reg_0_15_7_7_i_32_n_0
    );
hist_reg_0_15_7_7_i_33: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => hist_reg_0_15_7_7_i_10_n_0,
      I1 => hist_reg_0_15_7_7_i_9_n_0,
      O => hist_reg_0_15_7_7_i_33_n_0
    );
hist_reg_0_15_7_7_i_34: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C6639CC69CC6C663"
    )
        port map (
      I0 => hist_reg_0_15_7_7_i_22_n_0,
      I1 => hist_reg_0_15_7_7_i_44_n_0,
      I2 => hist_reg_0_15_7_7_i_45_n_0,
      I3 => hist_reg_0_15_7_7_i_21_n_0,
      I4 => left(12),
      I5 => \rs_reg[15][12]_srl16_n_0\,
      O => hist_reg_0_15_7_7_i_34_n_0
    );
hist_reg_0_15_7_7_i_35: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C6639CC69CC6C663"
    )
        port map (
      I0 => hist_reg_0_15_7_7_i_24_n_0,
      I1 => hist_reg_0_15_7_7_i_46_n_0,
      I2 => hist_reg_0_15_7_7_i_47_n_0,
      I3 => hist_reg_0_15_7_7_i_23_n_0,
      I4 => left(18),
      I5 => \rs_reg[15][18]_srl16_n_0\,
      O => hist_reg_0_15_7_7_i_35_n_0
    );
hist_reg_0_15_7_7_i_36: unisim.vcomponents.LUT6
    generic map(
      INIT => X"06606FF66FF60660"
    )
        port map (
      I0 => left(9),
      I1 => \rs_reg[15][9]_srl16_n_0\,
      I2 => left(8),
      I3 => \rs_reg[15][8]_srl16_n_0\,
      I4 => left(7),
      I5 => \rs_reg[15][7]_srl16_n_0\,
      O => hist_reg_0_15_7_7_i_36_n_0
    );
hist_reg_0_15_7_7_i_37: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => left(10),
      I1 => \rs_reg[15][10]_srl16_n_0\,
      O => hist_reg_0_15_7_7_i_37_n_0
    );
hist_reg_0_15_7_7_i_38: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F99F90099009F99F"
    )
        port map (
      I0 => left(27),
      I1 => \rs_reg[15][27]_srl16_n_0\,
      I2 => \rs_reg[15][25]_srl16_n_0\,
      I3 => left(25),
      I4 => \rs_reg[15][26]_srl16_n_0\,
      I5 => left(26),
      O => hist_reg_0_15_7_7_i_38_n_0
    );
hist_reg_0_15_7_7_i_39: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => left(28),
      I1 => \rs_reg[15][28]_srl16_n_0\,
      O => hist_reg_0_15_7_7_i_39_n_0
    );
hist_reg_0_15_7_7_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => hist_reg_0_15_7_7_i_9_n_0,
      I1 => hist_reg_0_15_7_7_i_10_n_0,
      O => hist_reg_0_15_7_7_i_4_n_0
    );
hist_reg_0_15_7_7_i_40: unisim.vcomponents.LUT6
    generic map(
      INIT => X"06606FF66FF60660"
    )
        port map (
      I0 => left(33),
      I1 => \rs_reg[15][33]_srl16_n_0\,
      I2 => left(32),
      I3 => \rs_reg[15][32]_srl16_n_0\,
      I4 => left(31),
      I5 => \rs_reg[15][31]_srl16_n_0\,
      O => hist_reg_0_15_7_7_i_40_n_0
    );
hist_reg_0_15_7_7_i_41: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => left(34),
      I1 => \rs_reg[15][34]_srl16_n_0\,
      O => hist_reg_0_15_7_7_i_41_n_0
    );
hist_reg_0_15_7_7_i_42: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F99F90099009F99F"
    )
        port map (
      I0 => left(39),
      I1 => \rs_reg[15][39]_srl16_n_0\,
      I2 => \rs_reg[15][37]_srl16_n_0\,
      I3 => left(37),
      I4 => \rs_reg[15][38]_srl16_n_0\,
      I5 => left(38),
      O => hist_reg_0_15_7_7_i_42_n_0
    );
hist_reg_0_15_7_7_i_43: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => left(40),
      I1 => \rs_reg[15][40]_srl16_n_0\,
      O => hist_reg_0_15_7_7_i_43_n_0
    );
hist_reg_0_15_7_7_i_44: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F99F90099009F99F"
    )
        port map (
      I0 => left(15),
      I1 => \rs_reg[15][15]_srl16_n_0\,
      I2 => \rs_reg[15][13]_srl16_n_0\,
      I3 => left(13),
      I4 => \rs_reg[15][14]_srl16_n_0\,
      I5 => left(14),
      O => hist_reg_0_15_7_7_i_44_n_0
    );
hist_reg_0_15_7_7_i_45: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => left(16),
      I1 => \rs_reg[15][16]_srl16_n_0\,
      O => hist_reg_0_15_7_7_i_45_n_0
    );
hist_reg_0_15_7_7_i_46: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F99F90099009F99F"
    )
        port map (
      I0 => left(21),
      I1 => \rs_reg[15][21]_srl16_n_0\,
      I2 => \rs_reg[15][19]_srl16_n_0\,
      I3 => left(19),
      I4 => \rs_reg[15][20]_srl16_n_0\,
      I5 => left(20),
      O => hist_reg_0_15_7_7_i_46_n_0
    );
hist_reg_0_15_7_7_i_47: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => left(22),
      I1 => \rs_reg[15][22]_srl16_n_0\,
      O => hist_reg_0_15_7_7_i_47_n_0
    );
hist_reg_0_15_7_7_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => hist_reg_0_15_7_7_i_11_n_0,
      I1 => hist_reg_0_15_7_7_i_12_n_0,
      I2 => hist_reg_0_15_7_7_i_13_n_0,
      I3 => hist_reg_0_15_7_7_i_14_n_0,
      O => hist_reg_0_15_7_7_i_5_n_0
    );
hist_reg_0_15_7_7_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => left(30),
      I1 => \rs_reg[15][30]_srl16_n_0\,
      I2 => \rs_reg[15][34]_srl16_n_0\,
      I3 => left(34),
      I4 => hist_reg_0_15_7_7_i_15_n_0,
      I5 => hist_reg_0_15_7_7_i_16_n_0,
      O => hist_reg_0_15_7_7_i_6_n_0
    );
hist_reg_0_15_7_7_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => left(24),
      I1 => \rs_reg[15][24]_srl16_n_0\,
      I2 => \rs_reg[15][28]_srl16_n_0\,
      I3 => left(28),
      I4 => hist_reg_0_15_7_7_i_17_n_0,
      I5 => hist_reg_0_15_7_7_i_18_n_0,
      O => hist_reg_0_15_7_7_i_7_n_0
    );
hist_reg_0_15_7_7_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => left(36),
      I1 => \rs_reg[15][36]_srl16_n_0\,
      I2 => \rs_reg[15][40]_srl16_n_0\,
      I3 => left(40),
      I4 => hist_reg_0_15_7_7_i_19_n_0,
      I5 => hist_reg_0_15_7_7_i_20_n_0,
      O => hist_reg_0_15_7_7_i_8_n_0
    );
hist_reg_0_15_7_7_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => left(12),
      I1 => \rs_reg[15][12]_srl16_n_0\,
      I2 => \rs_reg[15][16]_srl16_n_0\,
      I3 => left(16),
      I4 => hist_reg_0_15_7_7_i_21_n_0,
      I5 => hist_reg_0_15_7_7_i_22_n_0,
      O => hist_reg_0_15_7_7_i_9_n_0
    );
hist_reg_0_15_8_8: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => raw(2),
      O => cur(2),
      WCLK => clk,
      WE => scan
    );
hist_reg_0_15_8_8_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => hist_reg_0_15_8_8_i_2_n_0,
      O => raw(2)
    );
hist_reg_0_15_8_8_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A00EFAEEFAEF5FF"
    )
        port map (
      I0 => hist_reg_0_15_8_8_i_22_n_0,
      I1 => hist_reg_0_15_8_8_i_23_n_0,
      I2 => hist_reg_0_15_7_7_i_20_n_0,
      I3 => hist_reg_0_15_8_8_i_24_n_0,
      I4 => hist_reg_0_15_7_7_i_42_n_0,
      I5 => hist_reg_0_15_8_8_i_25_n_0,
      O => hist_reg_0_15_8_8_i_10_n_0
    );
hist_reg_0_15_8_8_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000066966006F69F"
    )
        port map (
      I0 => hist_reg_0_15_7_7_i_25_n_0,
      I1 => hist_reg_0_15_7_7_i_26_n_0,
      I2 => hist_reg_0_15_7_7_i_27_n_0,
      I3 => hist_reg_0_15_6_6_i_15_n_0,
      I4 => hist_reg_0_15_7_7_i_28_n_0,
      I5 => hist_reg_0_15_6_6_i_8_n_0,
      O => hist_reg_0_15_8_8_i_11_n_0
    );
hist_reg_0_15_8_8_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3110733173313110"
    )
        port map (
      I0 => hist_reg_0_15_6_6_i_15_n_0,
      I1 => hist_reg_0_15_7_7_i_26_n_0,
      I2 => hist_reg_0_15_8_8_i_26_n_0,
      I3 => hist_reg_0_15_6_6_i_14_n_0,
      I4 => left(0),
      I5 => \rs_reg[15][0]_srl16_n_0\,
      O => hist_reg_0_15_8_8_i_12_n_0
    );
hist_reg_0_15_8_8_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"099FFFFF00099FFF"
    )
        port map (
      I0 => \rs_reg[15][6]_srl16_n_0\,
      I1 => left(6),
      I2 => hist_reg_0_15_6_6_i_12_n_0,
      I3 => hist_reg_0_15_7_7_i_37_n_0,
      I4 => hist_reg_0_15_7_7_i_36_n_0,
      I5 => hist_reg_0_15_6_6_i_13_n_0,
      O => hist_reg_0_15_8_8_i_13_n_0
    );
hist_reg_0_15_8_8_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"96FF"
    )
        port map (
      I0 => hist_reg_0_15_7_7_i_2_n_0,
      I1 => hist_reg_0_15_7_7_i_3_n_0,
      I2 => hist_reg_0_15_7_7_i_4_n_0,
      I3 => hist_reg_0_15_6_6_i_4_n_0,
      O => hist_reg_0_15_8_8_i_14_n_0
    );
hist_reg_0_15_8_8_i_15: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => hist_reg_0_15_7_7_i_2_n_0,
      I1 => hist_reg_0_15_7_7_i_3_n_0,
      I2 => hist_reg_0_15_7_7_i_4_n_0,
      O => hist_reg_0_15_8_8_i_15_n_0
    );
hist_reg_0_15_8_8_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF9FFF099F0009"
    )
        port map (
      I0 => left(24),
      I1 => \rs_reg[15][24]_srl16_n_0\,
      I2 => hist_reg_0_15_7_7_i_39_n_0,
      I3 => hist_reg_0_15_7_7_i_17_n_0,
      I4 => hist_reg_0_15_7_7_i_18_n_0,
      I5 => hist_reg_0_15_7_7_i_38_n_0,
      O => hist_reg_0_15_8_8_i_16_n_0
    );
hist_reg_0_15_8_8_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000096696996"
    )
        port map (
      I0 => left(30),
      I1 => \rs_reg[15][30]_srl16_n_0\,
      I2 => \rs_reg[15][34]_srl16_n_0\,
      I3 => left(34),
      I4 => hist_reg_0_15_7_7_i_15_n_0,
      I5 => hist_reg_0_15_7_7_i_16_n_0,
      O => hist_reg_0_15_8_8_i_17_n_0
    );
hist_reg_0_15_8_8_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F99F90099009F99F"
    )
        port map (
      I0 => \rs_reg[15][34]_srl16_n_0\,
      I1 => left(34),
      I2 => \rs_reg[15][35]_srl16_n_0\,
      I3 => left(35),
      I4 => left(30),
      I5 => \rs_reg[15][30]_srl16_n_0\,
      O => hist_reg_0_15_8_8_i_18_n_0
    );
hist_reg_0_15_8_8_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF099F9FFF0009"
    )
        port map (
      I0 => \rs_reg[15][12]_srl16_n_0\,
      I1 => left(12),
      I2 => hist_reg_0_15_7_7_i_21_n_0,
      I3 => hist_reg_0_15_7_7_i_45_n_0,
      I4 => hist_reg_0_15_7_7_i_44_n_0,
      I5 => hist_reg_0_15_7_7_i_22_n_0,
      O => hist_reg_0_15_8_8_i_19_n_0
    );
hist_reg_0_15_8_8_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0069009600960069"
    )
        port map (
      I0 => hist_reg_0_15_8_8_i_3_n_0,
      I1 => hist_reg_0_15_8_8_i_4_n_0,
      I2 => hist_reg_0_15_8_8_i_5_n_0,
      I3 => hist_reg_0_15_6_6_i_2_n_0,
      I4 => hist_reg_0_15_8_8_i_6_n_0,
      I5 => hist_reg_0_15_8_8_i_7_n_0,
      O => hist_reg_0_15_8_8_i_2_n_0
    );
hist_reg_0_15_8_8_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000096696996"
    )
        port map (
      I0 => left(18),
      I1 => \rs_reg[15][18]_srl16_n_0\,
      I2 => \rs_reg[15][22]_srl16_n_0\,
      I3 => left(22),
      I4 => hist_reg_0_15_7_7_i_23_n_0,
      I5 => hist_reg_0_15_7_7_i_24_n_0,
      O => hist_reg_0_15_8_8_i_20_n_0
    );
hist_reg_0_15_8_8_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F99F90099009F99F"
    )
        port map (
      I0 => \rs_reg[15][22]_srl16_n_0\,
      I1 => left(22),
      I2 => \rs_reg[15][23]_srl16_n_0\,
      I3 => left(23),
      I4 => left(18),
      I5 => \rs_reg[15][18]_srl16_n_0\,
      O => hist_reg_0_15_8_8_i_21_n_0
    );
hist_reg_0_15_8_8_i_22: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0660"
    )
        port map (
      I0 => \rs_reg[15][43]_srl16_n_0\,
      I1 => left(43),
      I2 => \rs_reg[15][42]_srl16_n_0\,
      I3 => left(42),
      O => hist_reg_0_15_8_8_i_22_n_0
    );
hist_reg_0_15_8_8_i_23: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \rs_reg[15][43]_srl16_n_0\,
      I1 => left(43),
      I2 => \rs_reg[15][42]_srl16_n_0\,
      I3 => left(42),
      O => hist_reg_0_15_8_8_i_23_n_0
    );
hist_reg_0_15_8_8_i_24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => left(41),
      I1 => \rs_reg[15][41]_srl16_n_0\,
      I2 => left(40),
      I3 => \rs_reg[15][40]_srl16_n_0\,
      I4 => \rs_reg[15][36]_srl16_n_0\,
      I5 => left(36),
      O => hist_reg_0_15_8_8_i_24_n_0
    );
hist_reg_0_15_8_8_i_25: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F99F90099009F99F"
    )
        port map (
      I0 => \rs_reg[15][40]_srl16_n_0\,
      I1 => left(40),
      I2 => \rs_reg[15][41]_srl16_n_0\,
      I3 => left(41),
      I4 => left(36),
      I5 => \rs_reg[15][36]_srl16_n_0\,
      O => hist_reg_0_15_8_8_i_25_n_0
    );
hist_reg_0_15_8_8_i_26: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => left(4),
      I1 => \rs_reg[15][4]_srl16_n_0\,
      O => hist_reg_0_15_8_8_i_26_n_0
    );
hist_reg_0_15_8_8_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => hist_reg_0_15_8_8_i_8_n_0,
      I1 => hist_reg_0_15_8_8_i_9_n_0,
      I2 => hist_reg_0_15_8_8_i_10_n_0,
      O => hist_reg_0_15_8_8_i_3_n_0
    );
hist_reg_0_15_8_8_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => hist_reg_0_15_8_8_i_11_n_0,
      I1 => hist_reg_0_15_8_8_i_12_n_0,
      I2 => hist_reg_0_15_8_8_i_13_n_0,
      O => hist_reg_0_15_8_8_i_4_n_0
    );
hist_reg_0_15_8_8_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => hist_reg_0_15_7_7_i_13_n_0,
      I1 => hist_reg_0_15_7_7_i_12_n_0,
      I2 => hist_reg_0_15_7_7_i_14_n_0,
      O => hist_reg_0_15_8_8_i_5_n_0
    );
hist_reg_0_15_8_8_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E88E8EE88EE8E88E"
    )
        port map (
      I0 => hist_reg_0_15_8_8_i_14_n_0,
      I1 => hist_reg_0_15_8_8_i_15_n_0,
      I2 => hist_reg_0_15_7_7_i_11_n_0,
      I3 => hist_reg_0_15_7_7_i_12_n_0,
      I4 => hist_reg_0_15_7_7_i_13_n_0,
      I5 => hist_reg_0_15_7_7_i_14_n_0,
      O => hist_reg_0_15_8_8_i_6_n_0
    );
hist_reg_0_15_8_8_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1441"
    )
        port map (
      I0 => hist_reg_0_15_7_7_i_11_n_0,
      I1 => hist_reg_0_15_7_7_i_12_n_0,
      I2 => hist_reg_0_15_7_7_i_13_n_0,
      I3 => hist_reg_0_15_7_7_i_14_n_0,
      O => hist_reg_0_15_8_8_i_7_n_0
    );
hist_reg_0_15_8_8_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"596565A69A595965"
    )
        port map (
      I0 => hist_reg_0_15_8_8_i_16_n_0,
      I1 => hist_reg_0_15_7_7_i_29_n_0,
      I2 => hist_reg_0_15_7_7_i_30_n_0,
      I3 => hist_reg_0_15_8_8_i_17_n_0,
      I4 => hist_reg_0_15_7_7_i_40_n_0,
      I5 => hist_reg_0_15_8_8_i_18_n_0,
      O => hist_reg_0_15_8_8_i_8_n_0
    );
hist_reg_0_15_8_8_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A96A6A5695A9A96A"
    )
        port map (
      I0 => hist_reg_0_15_8_8_i_19_n_0,
      I1 => hist_reg_0_15_7_7_i_34_n_0,
      I2 => hist_reg_0_15_8_8_i_20_n_0,
      I3 => hist_reg_0_15_7_7_i_46_n_0,
      I4 => hist_reg_0_15_8_8_i_21_n_0,
      I5 => hist_reg_0_15_7_7_i_33_n_0,
      O => hist_reg_0_15_8_8_i_9_n_0
    );
hist_reg_0_15_9_9: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => raw(3),
      O => cur(3),
      WCLK => clk,
      WE => scan
    );
hist_reg_0_15_9_9_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => hist_reg_0_15_9_9_i_2_n_0,
      O => raw(3)
    );
hist_reg_0_15_9_9_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0071008E008E0071"
    )
        port map (
      I0 => hist_reg_0_15_8_8_i_5_n_0,
      I1 => hist_reg_0_15_8_8_i_4_n_0,
      I2 => hist_reg_0_15_8_8_i_3_n_0,
      I3 => hist_reg_0_15_6_6_i_2_n_0,
      I4 => hist_reg_0_15_9_9_i_3_n_0,
      I5 => hist_reg_0_15_9_9_i_4_n_0,
      O => hist_reg_0_15_9_9_i_2_n_0
    );
hist_reg_0_15_9_9_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4DD4D44D"
    )
        port map (
      I0 => hist_reg_0_15_8_8_i_6_n_0,
      I1 => hist_reg_0_15_8_8_i_7_n_0,
      I2 => hist_reg_0_15_8_8_i_3_n_0,
      I3 => hist_reg_0_15_8_8_i_4_n_0,
      I4 => hist_reg_0_15_8_8_i_5_n_0,
      O => hist_reg_0_15_9_9_i_3_n_0
    );
hist_reg_0_15_9_9_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2BD4D42BD42B2BD4"
    )
        port map (
      I0 => hist_reg_0_15_8_8_i_8_n_0,
      I1 => hist_reg_0_15_8_8_i_9_n_0,
      I2 => hist_reg_0_15_8_8_i_10_n_0,
      I3 => hist_reg_0_15_9_9_i_5_n_0,
      I4 => hist_reg_0_15_9_9_i_6_n_0,
      I5 => hist_reg_0_15_10_10_i_4_n_0,
      O => hist_reg_0_15_9_9_i_4_n_0
    );
hist_reg_0_15_9_9_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"959595A995A9A9A9"
    )
        port map (
      I0 => hist_reg_0_15_10_10_i_9_n_0,
      I1 => hist_reg_0_15_8_8_i_19_n_0,
      I2 => hist_reg_0_15_9_9_i_7_n_0,
      I3 => hist_reg_0_15_7_7_i_34_n_0,
      I4 => hist_reg_0_15_7_7_i_35_n_0,
      I5 => hist_reg_0_15_7_7_i_33_n_0,
      O => hist_reg_0_15_9_9_i_5_n_0
    );
hist_reg_0_15_9_9_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FDF0D4F0D4F040D"
    )
        port map (
      I0 => hist_reg_0_15_7_7_i_30_n_0,
      I1 => hist_reg_0_15_7_7_i_29_n_0,
      I2 => hist_reg_0_15_8_8_i_16_n_0,
      I3 => hist_reg_0_15_8_8_i_18_n_0,
      I4 => hist_reg_0_15_7_7_i_40_n_0,
      I5 => hist_reg_0_15_8_8_i_17_n_0,
      O => hist_reg_0_15_9_9_i_6_n_0
    );
hist_reg_0_15_9_9_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF099F9FFF0009"
    )
        port map (
      I0 => \rs_reg[15][18]_srl16_n_0\,
      I1 => left(18),
      I2 => hist_reg_0_15_7_7_i_23_n_0,
      I3 => hist_reg_0_15_7_7_i_47_n_0,
      I4 => hist_reg_0_15_7_7_i_46_n_0,
      I5 => hist_reg_0_15_7_7_i_24_n_0,
      O => hist_reg_0_15_9_9_i_7_n_0
    );
\l_bot[1]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => \l_bot_reg[5]_i_13_n_7\,
      I1 => \l_bot_reg[5]_i_10_n_7\,
      I2 => \^a\(1),
      I3 => \l_bot_reg[1]_i_26_n_4\,
      I4 => \l_bot_reg[1]_i_12_n_4\,
      O => \l_bot[1]_i_10_n_0\
    );
\l_bot[1]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \l_bot_reg[1]_i_26_n_4\,
      I1 => \l_bot_reg[1]_i_12_n_4\,
      I2 => \^a\(0),
      O => \l_bot[1]_i_11_n_0\
    );
\l_bot[1]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \l_bot_reg[1]_i_12_n_5\,
      I1 => \l_bot_reg[1]_i_26_n_5\,
      O => \l_bot[1]_i_14_n_0\
    );
\l_bot[1]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \l_bot_reg[1]_i_12_n_6\,
      I1 => \l_bot_reg[1]_i_26_n_6\,
      O => \l_bot[1]_i_15_n_0\
    );
\l_bot[1]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \l_bot_reg[1]_i_12_n_7\,
      I1 => \l_bot_reg[1]_i_26_n_7\,
      O => \l_bot[1]_i_16_n_0\
    );
\l_bot[1]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \l_bot_reg[1]_i_13_n_4\,
      I1 => \l_bot_reg[1]_i_13_n_7\,
      O => \l_bot[1]_i_17_n_0\
    );
\l_bot[1]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70020"
    )
        port map (
      I0 => w_real,
      I1 => hist_reg_0_15_8_8_i_2_n_0,
      I2 => hist_reg_0_15_2_2_n_0,
      I3 => b_first,
      I4 => cur(2),
      O => \l_bot[1]_i_18_n_0\
    );
\l_bot[1]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0080"
    )
        port map (
      I0 => raw(1),
      I1 => w_real,
      I2 => hist_reg_0_15_1_1_n_0,
      I3 => b_first,
      I4 => cur(1),
      O => \l_bot[1]_i_19_n_0\
    );
\l_bot[1]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4100"
    )
        port map (
      I0 => hist_reg_0_15_6_6_i_2_n_0,
      I1 => hist_reg_0_15_6_6_i_3_n_0,
      I2 => hist_reg_0_15_6_6_i_4_n_0,
      I3 => w_real,
      I4 => cur(0),
      O => \l_bot[1]_i_20_n_0\
    );
\l_bot[1]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"41FFBEFF"
    )
        port map (
      I0 => hist_reg_0_15_6_6_i_2_n_0,
      I1 => hist_reg_0_15_6_6_i_3_n_0,
      I2 => hist_reg_0_15_6_6_i_4_n_0,
      I3 => w_real,
      I4 => cur(0),
      O => \l_bot[1]_i_21_n_0\
    );
\l_bot[1]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A9A6656A5659656A"
    )
        port map (
      I0 => \l_bot[1]_i_18_n_0\,
      I1 => cur(3),
      I2 => b_first,
      I3 => hist_reg_0_15_3_3_n_0,
      I4 => w_real,
      I5 => hist_reg_0_15_9_9_i_2_n_0,
      O => \l_bot[1]_i_22_n_0\
    );
\l_bot[1]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A9A6656A5659656A"
    )
        port map (
      I0 => \l_bot[1]_i_19_n_0\,
      I1 => cur(2),
      I2 => b_first,
      I3 => hist_reg_0_15_2_2_n_0,
      I4 => w_real,
      I5 => hist_reg_0_15_8_8_i_2_n_0,
      O => \l_bot[1]_i_23_n_0\
    );
\l_bot[1]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5659A9A6656A656A"
    )
        port map (
      I0 => \l_bot[1]_i_20_n_0\,
      I1 => cur(1),
      I2 => b_first,
      I3 => hist_reg_0_15_1_1_n_0,
      I4 => raw(1),
      I5 => w_real,
      O => \l_bot[1]_i_24_n_0\
    );
\l_bot[1]_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \l_bot[1]_i_34_n_0\,
      I1 => hist_reg_0_15_0_0_n_0,
      I2 => b_first,
      I3 => cur(0),
      O => \l_bot[1]_i_25_n_0\
    );
\l_bot[1]_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^a\(5),
      I1 => \^a\(7),
      O => \l_bot[1]_i_27_n_0\
    );
\l_bot[1]_i_28\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^a\(4),
      I1 => \^a\(6),
      O => \l_bot[1]_i_28_n_0\
    );
\l_bot[1]_i_29\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^a\(3),
      I1 => \^a\(5),
      O => \l_bot[1]_i_29_n_0\
    );
\l_bot[1]_i_30\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^a\(2),
      I1 => \^a\(4),
      O => \l_bot[1]_i_30_n_0\
    );
\l_bot[1]_i_31\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^a\(1),
      I1 => \^a\(3),
      O => \l_bot[1]_i_31_n_0\
    );
\l_bot[1]_i_32\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^a\(0),
      I1 => \^a\(2),
      O => \l_bot[1]_i_32_n_0\
    );
\l_bot[1]_i_33\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^a\(1),
      O => \l_bot[1]_i_33_n_0\
    );
\l_bot[1]_i_34\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"41FFBEFF"
    )
        port map (
      I0 => hist_reg_0_15_6_6_i_2_n_0,
      I1 => hist_reg_0_15_6_6_i_3_n_0,
      I2 => hist_reg_0_15_6_6_i_4_n_0,
      I3 => w_real,
      I4 => cur(0),
      O => \l_bot[1]_i_34_n_0\
    );
\l_bot[1]_i_35\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^a\(4),
      I1 => \^a\(2),
      O => \l_bot[1]_i_35_n_0\
    );
\l_bot[1]_i_36\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^a\(3),
      I1 => \^a\(1),
      O => \l_bot[1]_i_36_n_0\
    );
\l_bot[1]_i_37\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^a\(2),
      I1 => \^a\(0),
      O => \l_bot[1]_i_37_n_0\
    );
\l_bot[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \l_bot_reg[5]_i_13_n_6\,
      I1 => \^a\(2),
      I2 => \l_bot_reg[5]_i_10_n_6\,
      O => \l_bot[1]_i_4_n_0\
    );
\l_bot[1]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \l_bot_reg[5]_i_13_n_7\,
      I1 => \l_bot_reg[5]_i_10_n_7\,
      I2 => \^a\(1),
      O => \l_bot[1]_i_5_n_0\
    );
\l_bot[1]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^a\(1),
      I1 => \l_bot_reg[5]_i_10_n_7\,
      I2 => \l_bot_reg[5]_i_13_n_7\,
      O => \l_bot[1]_i_6_n_0\
    );
\l_bot[1]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \l_bot_reg[5]_i_10_n_1\,
      I1 => \l_bot_reg[5]_i_13_n_5\,
      I2 => \^a\(3),
      I3 => \l_bot[1]_i_4_n_0\,
      O => \l_bot[1]_i_8_n_0\
    );
\l_bot[1]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \l_bot_reg[5]_i_13_n_6\,
      I1 => \^a\(2),
      I2 => \l_bot_reg[5]_i_10_n_6\,
      I3 => \l_bot[1]_i_5_n_0\,
      O => \l_bot[1]_i_9_n_0\
    );
\l_bot[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFEFFFEF"
    )
        port map (
      I0 => O(1),
      I1 => \l_bot_reg[5]\(0),
      I2 => CO(0),
      I3 => O(0),
      I4 => \^cost\(5),
      I5 => b_first,
      O => \^l_new\(0)
    );
\l_bot[5]_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^a\(7),
      O => \l_bot[5]_i_14_n_0\
    );
\l_bot[5]_i_15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^a\(6),
      O => \l_bot[5]_i_15_n_0\
    );
\l_bot[5]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABAAA2A"
    )
        port map (
      I0 => cur(4),
      I1 => hist_reg_0_15_10_10_i_2_n_0,
      I2 => w_real,
      I3 => b_first,
      I4 => hist_reg_0_15_4_4_n_0,
      O => \l_bot[5]_i_16_n_0\
    );
\l_bot[5]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0F0F2F0"
    )
        port map (
      I0 => hist_reg_0_15_3_3_n_0,
      I1 => b_first,
      I2 => cur(3),
      I3 => w_real,
      I4 => hist_reg_0_15_9_9_i_2_n_0,
      O => \l_bot[5]_i_17_n_0\
    );
\l_bot[5]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABAAA2A"
    )
        port map (
      I0 => cur(5),
      I1 => hist_reg_0_15_11_11_i_2_n_0,
      I2 => w_real,
      I3 => b_first,
      I4 => hist_reg_0_15_5_5_n_0,
      O => \l_bot[5]_i_18_n_0\
    );
\l_bot[5]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A9A6656A5659656A"
    )
        port map (
      I0 => \l_bot[5]_i_16_n_0\,
      I1 => cur(5),
      I2 => b_first,
      I3 => hist_reg_0_15_5_5_n_0,
      I4 => w_real,
      I5 => hist_reg_0_15_11_11_i_2_n_0,
      O => \l_bot[5]_i_19_n_0\
    );
\l_bot[5]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A9A6656A5659656A"
    )
        port map (
      I0 => \l_bot[5]_i_17_n_0\,
      I1 => cur(4),
      I2 => b_first,
      I3 => hist_reg_0_15_4_4_n_0,
      I4 => w_real,
      I5 => hist_reg_0_15_10_10_i_2_n_0,
      O => \l_bot[5]_i_20_n_0\
    );
\l_bot[5]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^a\(7),
      I1 => \^a\(5),
      O => \l_bot[5]_i_21_n_0\
    );
\l_bot[5]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^a\(6),
      I1 => \^a\(4),
      O => \l_bot[5]_i_22_n_0\
    );
\l_bot[5]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^a\(5),
      I1 => \^a\(3),
      O => \l_bot[5]_i_23_n_0\
    );
\l_bot[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \l_bot_reg[5]_i_10_n_1\,
      I1 => \l_bot_reg[5]_i_11_n_7\,
      I2 => \^a\(5),
      O => \l_bot[5]_i_3_n_0\
    );
\l_bot[5]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \l_bot_reg[5]_i_10_n_1\,
      I1 => \l_bot_reg[5]_i_13_n_4\,
      I2 => \^a\(4),
      O => \l_bot[5]_i_4_n_0\
    );
\l_bot[5]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \l_bot_reg[5]_i_10_n_1\,
      I1 => \l_bot_reg[5]_i_13_n_5\,
      I2 => \^a\(3),
      O => \l_bot[5]_i_5_n_0\
    );
\l_bot[5]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7E81"
    )
        port map (
      I0 => \l_bot_reg[5]_i_11_n_2\,
      I1 => \^a\(6),
      I2 => \l_bot_reg[5]_i_10_n_1\,
      I3 => \^a\(7),
      O => \l_bot[5]_i_6_n_0\
    );
\l_bot[5]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \l_bot[5]_i_3_n_0\,
      I1 => \^a\(6),
      I2 => \l_bot_reg[5]_i_10_n_1\,
      I3 => \l_bot_reg[5]_i_11_n_2\,
      O => \l_bot[5]_i_7_n_0\
    );
\l_bot[5]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \l_bot_reg[5]_i_10_n_1\,
      I1 => \l_bot_reg[5]_i_11_n_7\,
      I2 => \^a\(5),
      I3 => \l_bot[5]_i_4_n_0\,
      O => \l_bot[5]_i_8_n_0\
    );
\l_bot[5]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \l_bot_reg[5]_i_10_n_1\,
      I1 => \l_bot_reg[5]_i_13_n_4\,
      I2 => \^a\(4),
      I3 => \l_bot[5]_i_5_n_0\,
      O => \l_bot[5]_i_9_n_0\
    );
\l_bot_reg[1]_i_12\: unisim.vcomponents.CARRY4
     port map (
      CI => \l_bot_reg[1]_i_13_n_0\,
      CO(3) => \l_bot_reg[1]_i_12_n_0\,
      CO(2) => \l_bot_reg[1]_i_12_n_1\,
      CO(1) => \l_bot_reg[1]_i_12_n_2\,
      CO(0) => \l_bot_reg[1]_i_12_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^a\(5 downto 2),
      O(3) => \l_bot_reg[1]_i_12_n_4\,
      O(2) => \l_bot_reg[1]_i_12_n_5\,
      O(1) => \l_bot_reg[1]_i_12_n_6\,
      O(0) => \l_bot_reg[1]_i_12_n_7\,
      S(3) => \l_bot[1]_i_27_n_0\,
      S(2) => \l_bot[1]_i_28_n_0\,
      S(1) => \l_bot[1]_i_29_n_0\,
      S(0) => \l_bot[1]_i_30_n_0\
    );
\l_bot_reg[1]_i_13\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \l_bot_reg[1]_i_13_n_0\,
      CO(2) => \l_bot_reg[1]_i_13_n_1\,
      CO(1) => \l_bot_reg[1]_i_13_n_2\,
      CO(0) => \l_bot_reg[1]_i_13_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => \^a\(1 downto 0),
      DI(1 downto 0) => B"01",
      O(3) => \l_bot_reg[1]_i_13_n_4\,
      O(2 downto 1) => \NLW_l_bot_reg[1]_i_13_O_UNCONNECTED\(2 downto 1),
      O(0) => \l_bot_reg[1]_i_13_n_7\,
      S(3) => \l_bot[1]_i_31_n_0\,
      S(2) => \l_bot[1]_i_32_n_0\,
      S(1) => \l_bot[1]_i_33_n_0\,
      S(0) => \^a\(0)
    );
\l_bot_reg[1]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \l_bot_reg[1]_i_3_n_0\,
      CO(3) => \l_bot_reg[1]_i_2_n_0\,
      CO(2) => \l_bot_reg[1]_i_2_n_1\,
      CO(1) => \l_bot_reg[1]_i_2_n_2\,
      CO(0) => \l_bot_reg[1]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \l_bot[1]_i_4_n_0\,
      DI(2) => \l_bot[1]_i_5_n_0\,
      DI(1) => \l_bot[1]_i_6_n_0\,
      DI(0) => \^a\(0),
      O(3 downto 2) => \^cost\(1 downto 0),
      O(1 downto 0) => \NLW_l_bot_reg[1]_i_2_O_UNCONNECTED\(1 downto 0),
      S(3) => \l_bot[1]_i_8_n_0\,
      S(2) => \l_bot[1]_i_9_n_0\,
      S(1) => \l_bot[1]_i_10_n_0\,
      S(0) => \l_bot[1]_i_11_n_0\
    );
\l_bot_reg[1]_i_26\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \l_bot_reg[1]_i_26_n_0\,
      CO(2) => \l_bot_reg[1]_i_26_n_1\,
      CO(1) => \l_bot_reg[1]_i_26_n_2\,
      CO(0) => \l_bot_reg[1]_i_26_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => \^a\(4 downto 2),
      DI(0) => '0',
      O(3) => \l_bot_reg[1]_i_26_n_4\,
      O(2) => \l_bot_reg[1]_i_26_n_5\,
      O(1) => \l_bot_reg[1]_i_26_n_6\,
      O(0) => \l_bot_reg[1]_i_26_n_7\,
      S(3) => \l_bot[1]_i_35_n_0\,
      S(2) => \l_bot[1]_i_36_n_0\,
      S(1) => \l_bot[1]_i_37_n_0\,
      S(0) => \^a\(1)
    );
\l_bot_reg[1]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \l_bot_reg[1]_i_3_n_0\,
      CO(2) => \l_bot_reg[1]_i_3_n_1\,
      CO(1) => \l_bot_reg[1]_i_3_n_2\,
      CO(0) => \l_bot_reg[1]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => \l_bot_reg[1]_i_12_n_5\,
      DI(2) => \l_bot_reg[1]_i_12_n_6\,
      DI(1) => \l_bot_reg[1]_i_12_n_7\,
      DI(0) => \l_bot_reg[1]_i_13_n_4\,
      O(3 downto 0) => \NLW_l_bot_reg[1]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \l_bot[1]_i_14_n_0\,
      S(2) => \l_bot[1]_i_15_n_0\,
      S(1) => \l_bot[1]_i_16_n_0\,
      S(0) => \l_bot[1]_i_17_n_0\
    );
\l_bot_reg[1]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \l_bot_reg[1]_i_7_n_0\,
      CO(2) => \l_bot_reg[1]_i_7_n_1\,
      CO(1) => \l_bot_reg[1]_i_7_n_2\,
      CO(0) => \l_bot_reg[1]_i_7_n_3\,
      CYINIT => '0',
      DI(3) => \l_bot[1]_i_18_n_0\,
      DI(2) => \l_bot[1]_i_19_n_0\,
      DI(1) => \l_bot[1]_i_20_n_0\,
      DI(0) => \l_bot[1]_i_21_n_0\,
      O(3 downto 0) => \^a\(3 downto 0),
      S(3) => \l_bot[1]_i_22_n_0\,
      S(2) => \l_bot[1]_i_23_n_0\,
      S(1) => \l_bot[1]_i_24_n_0\,
      S(0) => \l_bot[1]_i_25_n_0\
    );
\l_bot_reg[5]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \l_bot_reg[1]_i_12_n_0\,
      CO(3) => \NLW_l_bot_reg[5]_i_10_CO_UNCONNECTED\(3),
      CO(2) => \l_bot_reg[5]_i_10_n_1\,
      CO(1) => \NLW_l_bot_reg[5]_i_10_CO_UNCONNECTED\(1),
      CO(0) => \l_bot_reg[5]_i_10_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \^a\(7 downto 6),
      O(3 downto 2) => \NLW_l_bot_reg[5]_i_10_O_UNCONNECTED\(3 downto 2),
      O(1) => \l_bot_reg[5]_i_10_n_6\,
      O(0) => \l_bot_reg[5]_i_10_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \l_bot[5]_i_14_n_0\,
      S(0) => \l_bot[5]_i_15_n_0\
    );
\l_bot_reg[5]_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => \l_bot_reg[5]_i_13_n_0\,
      CO(3 downto 2) => \NLW_l_bot_reg[5]_i_11_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \l_bot_reg[5]_i_11_n_2\,
      CO(0) => \NLW_l_bot_reg[5]_i_11_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_l_bot_reg[5]_i_11_O_UNCONNECTED\(3 downto 1),
      O(0) => \l_bot_reg[5]_i_11_n_7\,
      S(3 downto 1) => B"001",
      S(0) => \^a\(7)
    );
\l_bot_reg[5]_i_12\: unisim.vcomponents.CARRY4
     port map (
      CI => \l_bot_reg[1]_i_7_n_0\,
      CO(3) => \^a\(7),
      CO(2) => \NLW_l_bot_reg[5]_i_12_CO_UNCONNECTED\(2),
      CO(1) => \l_bot_reg[5]_i_12_n_2\,
      CO(0) => \l_bot_reg[5]_i_12_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \l_bot[5]_i_16_n_0\,
      DI(0) => \l_bot[5]_i_17_n_0\,
      O(3) => \NLW_l_bot_reg[5]_i_12_O_UNCONNECTED\(3),
      O(2 downto 0) => \^a\(6 downto 4),
      S(3) => '1',
      S(2) => \l_bot[5]_i_18_n_0\,
      S(1) => \l_bot[5]_i_19_n_0\,
      S(0) => \l_bot[5]_i_20_n_0\
    );
\l_bot_reg[5]_i_13\: unisim.vcomponents.CARRY4
     port map (
      CI => \l_bot_reg[1]_i_26_n_0\,
      CO(3) => \l_bot_reg[5]_i_13_n_0\,
      CO(2) => \l_bot_reg[5]_i_13_n_1\,
      CO(1) => \l_bot_reg[5]_i_13_n_2\,
      CO(0) => \l_bot_reg[5]_i_13_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \^a\(7 downto 5),
      O(3) => \l_bot_reg[5]_i_13_n_4\,
      O(2) => \l_bot_reg[5]_i_13_n_5\,
      O(1) => \l_bot_reg[5]_i_13_n_6\,
      O(0) => \l_bot_reg[5]_i_13_n_7\,
      S(3) => \^a\(6),
      S(2) => \l_bot[5]_i_21_n_0\,
      S(1) => \l_bot[5]_i_22_n_0\,
      S(0) => \l_bot[5]_i_23_n_0\
    );
\l_bot_reg[5]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \l_bot_reg[1]_i_2_n_0\,
      CO(3) => \NLW_l_bot_reg[5]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \l_bot_reg[5]_i_2_n_1\,
      CO(1) => \l_bot_reg[5]_i_2_n_2\,
      CO(0) => \l_bot_reg[5]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \l_bot[5]_i_3_n_0\,
      DI(1) => \l_bot[5]_i_4_n_0\,
      DI(0) => \l_bot[5]_i_5_n_0\,
      O(3 downto 0) => \^cost\(5 downto 2),
      S(3) => \l_bot[5]_i_6_n_0\,
      S(2) => \l_bot[5]_i_7_n_0\,
      S(1) => \l_bot[5]_i_8_n_0\,
      S(0) => \l_bot[5]_i_9_n_0\
    );
left_ok_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => in_left(44),
      Q => left_ok,
      R => '0'
    );
\left_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => in_left(0),
      Q => left(0),
      R => '0'
    );
\left_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => in_left(10),
      Q => left(10),
      R => '0'
    );
\left_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => in_left(11),
      Q => left(11),
      R => '0'
    );
\left_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => in_left(12),
      Q => left(12),
      R => '0'
    );
\left_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => in_left(13),
      Q => left(13),
      R => '0'
    );
\left_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => in_left(14),
      Q => left(14),
      R => '0'
    );
\left_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => in_left(15),
      Q => left(15),
      R => '0'
    );
\left_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => in_left(16),
      Q => left(16),
      R => '0'
    );
\left_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => in_left(17),
      Q => left(17),
      R => '0'
    );
\left_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => in_left(18),
      Q => left(18),
      R => '0'
    );
\left_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => in_left(19),
      Q => left(19),
      R => '0'
    );
\left_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => in_left(1),
      Q => left(1),
      R => '0'
    );
\left_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => in_left(20),
      Q => left(20),
      R => '0'
    );
\left_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => in_left(21),
      Q => left(21),
      R => '0'
    );
\left_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => in_left(22),
      Q => left(22),
      R => '0'
    );
\left_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => in_left(23),
      Q => left(23),
      R => '0'
    );
\left_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => in_left(24),
      Q => left(24),
      R => '0'
    );
\left_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => in_left(25),
      Q => left(25),
      R => '0'
    );
\left_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => in_left(26),
      Q => left(26),
      R => '0'
    );
\left_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => in_left(27),
      Q => left(27),
      R => '0'
    );
\left_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => in_left(28),
      Q => left(28),
      R => '0'
    );
\left_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => in_left(29),
      Q => left(29),
      R => '0'
    );
\left_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => in_left(2),
      Q => left(2),
      R => '0'
    );
\left_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => in_left(30),
      Q => left(30),
      R => '0'
    );
\left_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => in_left(31),
      Q => left(31),
      R => '0'
    );
\left_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => in_left(32),
      Q => left(32),
      R => '0'
    );
\left_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => in_left(33),
      Q => left(33),
      R => '0'
    );
\left_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => in_left(34),
      Q => left(34),
      R => '0'
    );
\left_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => in_left(35),
      Q => left(35),
      R => '0'
    );
\left_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => in_left(36),
      Q => left(36),
      R => '0'
    );
\left_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => in_left(37),
      Q => left(37),
      R => '0'
    );
\left_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => in_left(38),
      Q => left(38),
      R => '0'
    );
\left_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => in_left(39),
      Q => left(39),
      R => '0'
    );
\left_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => in_left(3),
      Q => left(3),
      R => '0'
    );
\left_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => in_left(40),
      Q => left(40),
      R => '0'
    );
\left_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => in_left(41),
      Q => left(41),
      R => '0'
    );
\left_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => in_left(42),
      Q => left(42),
      R => '0'
    );
\left_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => in_left(43),
      Q => left(43),
      R => '0'
    );
\left_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => in_left(4),
      Q => left(4),
      R => '0'
    );
\left_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => in_left(5),
      Q => left(5),
      R => '0'
    );
\left_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => in_left(6),
      Q => left(6),
      R => '0'
    );
\left_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => in_left(7),
      Q => left(7),
      R => '0'
    );
\left_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => in_left(8),
      Q => left(8),
      R => '0'
    );
\left_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => in_left(9),
      Q => left(9),
      R => '0'
    );
lr_reg_0_15_5_5_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^l_new\(0),
      I1 => b_real,
      I2 => a(0),
      O => p_1_in(0)
    );
\rs_ok_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => in_right(44),
      Q => rs_ok(0),
      R => '0'
    );
\rs_ok_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => rs_ok(9),
      Q => rs_ok(10),
      R => \rs_ok_reg[15]_0\
    );
\rs_ok_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => rs_ok(10),
      Q => rs_ok(11),
      R => \rs_ok_reg[15]_0\
    );
\rs_ok_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => rs_ok(11),
      Q => rs_ok(12),
      R => \rs_ok_reg[15]_0\
    );
\rs_ok_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => rs_ok(12),
      Q => rs_ok(13),
      R => \rs_ok_reg[15]_0\
    );
\rs_ok_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => rs_ok(13),
      Q => rs_ok(14),
      R => \rs_ok_reg[15]_0\
    );
\rs_ok_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => rs_ok(14),
      Q => rs_ok(15),
      R => \rs_ok_reg[15]_0\
    );
\rs_ok_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => rs_ok(0),
      Q => rs_ok(1),
      R => \rs_ok_reg[15]_0\
    );
\rs_ok_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => rs_ok(1),
      Q => rs_ok(2),
      R => \rs_ok_reg[15]_0\
    );
\rs_ok_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => rs_ok(2),
      Q => rs_ok(3),
      R => \rs_ok_reg[15]_0\
    );
\rs_ok_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => rs_ok(3),
      Q => rs_ok(4),
      R => \rs_ok_reg[15]_0\
    );
\rs_ok_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => rs_ok(4),
      Q => rs_ok(5),
      R => \rs_ok_reg[15]_0\
    );
\rs_ok_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => rs_ok(5),
      Q => rs_ok(6),
      R => \rs_ok_reg[15]_0\
    );
\rs_ok_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => rs_ok(6),
      Q => rs_ok(7),
      R => \rs_ok_reg[15]_0\
    );
\rs_ok_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => rs_ok(7),
      Q => rs_ok(8),
      R => \rs_ok_reg[15]_0\
    );
\rs_ok_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => load,
      D => rs_ok(8),
      Q => rs_ok(9),
      R => \rs_ok_reg[15]_0\
    );
\rs_reg[15][0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => load,
      CLK => clk,
      D => in_right(0),
      Q => \rs_reg[15][0]_srl16_n_0\
    );
\rs_reg[15][10]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => load,
      CLK => clk,
      D => in_right(10),
      Q => \rs_reg[15][10]_srl16_n_0\
    );
\rs_reg[15][11]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => load,
      CLK => clk,
      D => in_right(11),
      Q => \rs_reg[15][11]_srl16_n_0\
    );
\rs_reg[15][12]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => load,
      CLK => clk,
      D => in_right(12),
      Q => \rs_reg[15][12]_srl16_n_0\
    );
\rs_reg[15][13]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => load,
      CLK => clk,
      D => in_right(13),
      Q => \rs_reg[15][13]_srl16_n_0\
    );
\rs_reg[15][14]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => load,
      CLK => clk,
      D => in_right(14),
      Q => \rs_reg[15][14]_srl16_n_0\
    );
\rs_reg[15][15]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => load,
      CLK => clk,
      D => in_right(15),
      Q => \rs_reg[15][15]_srl16_n_0\
    );
\rs_reg[15][16]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => load,
      CLK => clk,
      D => in_right(16),
      Q => \rs_reg[15][16]_srl16_n_0\
    );
\rs_reg[15][17]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => load,
      CLK => clk,
      D => in_right(17),
      Q => \rs_reg[15][17]_srl16_n_0\
    );
\rs_reg[15][18]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => load,
      CLK => clk,
      D => in_right(18),
      Q => \rs_reg[15][18]_srl16_n_0\
    );
\rs_reg[15][19]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => load,
      CLK => clk,
      D => in_right(19),
      Q => \rs_reg[15][19]_srl16_n_0\
    );
\rs_reg[15][1]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => load,
      CLK => clk,
      D => in_right(1),
      Q => \rs_reg[15][1]_srl16_n_0\
    );
\rs_reg[15][20]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => load,
      CLK => clk,
      D => in_right(20),
      Q => \rs_reg[15][20]_srl16_n_0\
    );
\rs_reg[15][21]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => load,
      CLK => clk,
      D => in_right(21),
      Q => \rs_reg[15][21]_srl16_n_0\
    );
\rs_reg[15][22]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => load,
      CLK => clk,
      D => in_right(22),
      Q => \rs_reg[15][22]_srl16_n_0\
    );
\rs_reg[15][23]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => load,
      CLK => clk,
      D => in_right(23),
      Q => \rs_reg[15][23]_srl16_n_0\
    );
\rs_reg[15][24]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => load,
      CLK => clk,
      D => in_right(24),
      Q => \rs_reg[15][24]_srl16_n_0\
    );
\rs_reg[15][25]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => load,
      CLK => clk,
      D => in_right(25),
      Q => \rs_reg[15][25]_srl16_n_0\
    );
\rs_reg[15][26]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => load,
      CLK => clk,
      D => in_right(26),
      Q => \rs_reg[15][26]_srl16_n_0\
    );
\rs_reg[15][27]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => load,
      CLK => clk,
      D => in_right(27),
      Q => \rs_reg[15][27]_srl16_n_0\
    );
\rs_reg[15][28]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => load,
      CLK => clk,
      D => in_right(28),
      Q => \rs_reg[15][28]_srl16_n_0\
    );
\rs_reg[15][29]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => load,
      CLK => clk,
      D => in_right(29),
      Q => \rs_reg[15][29]_srl16_n_0\
    );
\rs_reg[15][2]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => load,
      CLK => clk,
      D => in_right(2),
      Q => \rs_reg[15][2]_srl16_n_0\
    );
\rs_reg[15][30]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => load,
      CLK => clk,
      D => in_right(30),
      Q => \rs_reg[15][30]_srl16_n_0\
    );
\rs_reg[15][31]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => load,
      CLK => clk,
      D => in_right(31),
      Q => \rs_reg[15][31]_srl16_n_0\
    );
\rs_reg[15][32]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => load,
      CLK => clk,
      D => in_right(32),
      Q => \rs_reg[15][32]_srl16_n_0\
    );
\rs_reg[15][33]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => load,
      CLK => clk,
      D => in_right(33),
      Q => \rs_reg[15][33]_srl16_n_0\
    );
\rs_reg[15][34]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => load,
      CLK => clk,
      D => in_right(34),
      Q => \rs_reg[15][34]_srl16_n_0\
    );
\rs_reg[15][35]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => load,
      CLK => clk,
      D => in_right(35),
      Q => \rs_reg[15][35]_srl16_n_0\
    );
\rs_reg[15][36]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => load,
      CLK => clk,
      D => in_right(36),
      Q => \rs_reg[15][36]_srl16_n_0\
    );
\rs_reg[15][37]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => load,
      CLK => clk,
      D => in_right(37),
      Q => \rs_reg[15][37]_srl16_n_0\
    );
\rs_reg[15][38]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => load,
      CLK => clk,
      D => in_right(38),
      Q => \rs_reg[15][38]_srl16_n_0\
    );
\rs_reg[15][39]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => load,
      CLK => clk,
      D => in_right(39),
      Q => \rs_reg[15][39]_srl16_n_0\
    );
\rs_reg[15][3]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => load,
      CLK => clk,
      D => in_right(3),
      Q => \rs_reg[15][3]_srl16_n_0\
    );
\rs_reg[15][40]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => load,
      CLK => clk,
      D => in_right(40),
      Q => \rs_reg[15][40]_srl16_n_0\
    );
\rs_reg[15][41]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => load,
      CLK => clk,
      D => in_right(41),
      Q => \rs_reg[15][41]_srl16_n_0\
    );
\rs_reg[15][42]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => load,
      CLK => clk,
      D => in_right(42),
      Q => \rs_reg[15][42]_srl16_n_0\
    );
\rs_reg[15][43]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => load,
      CLK => clk,
      D => in_right(43),
      Q => \rs_reg[15][43]_srl16_n_0\
    );
\rs_reg[15][4]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => load,
      CLK => clk,
      D => in_right(4),
      Q => \rs_reg[15][4]_srl16_n_0\
    );
\rs_reg[15][5]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => load,
      CLK => clk,
      D => in_right(5),
      Q => \rs_reg[15][5]_srl16_n_0\
    );
\rs_reg[15][6]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => load,
      CLK => clk,
      D => in_right(6),
      Q => \rs_reg[15][6]_srl16_n_0\
    );
\rs_reg[15][7]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => load,
      CLK => clk,
      D => in_right(7),
      Q => \rs_reg[15][7]_srl16_n_0\
    );
\rs_reg[15][8]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => load,
      CLK => clk,
      D => in_right(8),
      Q => \rs_reg[15][8]_srl16_n_0\
    );
\rs_reg[15][9]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => load,
      CLK => clk,
      D => in_right(9),
      Q => \rs_reg[15][9]_srl16_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_slice_1_0_ms_ctrl is
  port (
    sg_valid_reg_0 : out STD_LOGIC;
    load : out STD_LOGIC;
    sg_valid_reg_1 : out STD_LOGIC;
    \uc_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \uc_reg[3]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \uc_reg[3]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \uc_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \uc_reg[2]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \uc_reg[2]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \pos_reg[0]_0\ : out STD_LOGIC;
    run_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 1 downto 0 );
    uq : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \uq_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \pos_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \uc_reg[4]_0\ : out STD_LOGIC;
    \pos_reg[0]_1\ : out STD_LOGIC;
    sg_first_reg_0 : out STD_LOGIC;
    \s0_reg[7]\ : out STD_LOGIC;
    sg_valid_reg_2 : out STD_LOGIC;
    \s2_reg[7]\ : out STD_LOGIC;
    sg_valid_reg_3 : out STD_LOGIC;
    sg_valid_reg_4 : out STD_LOGIC_VECTOR ( 0 to 0 );
    scan : out STD_LOGIC;
    b_v_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \uc_reg[3]_3\ : out STD_LOGIC_VECTOR ( 14 downto 0 );
    \uc_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \uc_reg[0]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \uc_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \uc_reg[1]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \uc_reg[0]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \uc_reg[0]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \uc_reg[1]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \uc_reg[1]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \uc_reg[0]_4\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \uc_reg[0]_5\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \carry_rec_reg[10]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    l_new : out STD_LOGIC_VECTOR ( 5 downto 0 );
    b_use_reg_0 : out STD_LOGIC_VECTOR ( 13 downto 0 );
    b_use : out STD_LOGIC;
    b_real : out STD_LOGIC;
    b_real_reg_0 : out STD_LOGIC;
    b_real_reg_1 : out STD_LOGIC;
    \best_s_reg[7]\ : out STD_LOGIC;
    b_real_reg_2 : out STD_LOGIC;
    b_real_reg_3 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \uc_reg[2]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    b_real_reg_4 : out STD_LOGIC;
    b_real_reg_5 : out STD_LOGIC;
    b_real_reg_6 : out STD_LOGIC;
    b_real_reg_7 : out STD_LOGIC;
    b_real_reg_8 : out STD_LOGIC;
    b_real_reg_9 : out STD_LOGIC;
    b_real_reg_10 : out STD_LOGIC;
    b_real_reg_11 : out STD_LOGIC;
    b_real_reg_12 : out STD_LOGIC;
    b_real_reg_13 : out STD_LOGIC;
    b_real_reg_14 : out STD_LOGIC;
    b_real_reg_15 : out STD_LOGIC;
    b_real_reg_16 : out STD_LOGIC;
    b_first_reg_0 : out STD_LOGIC;
    O : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \l_bot[6]_i_14_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \l_bot[6]_i_14_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    b_first : out STD_LOGIC;
    b_real_reg_17 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gmin_reg[6]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \l_bot[6]_i_35\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_1_in : out STD_LOGIC_VECTOR ( 5 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    \uc_reg[0]_6\ : out STD_LOGIC;
    b_first_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    b_real_reg_18 : out STD_LOGIC;
    \uio_r_reg[6]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \uio_r_reg[4]\ : out STD_LOGIC;
    run_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    run_reg_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \uio_r_reg[3]\ : out STD_LOGIC;
    \pos_reg[0]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \uc_reg[0]_7\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    run_reg_3 : out STD_LOGIC_VECTOR ( 0 to 0 );
    run_reg_4 : out STD_LOGIC_VECTOR ( 0 to 0 );
    run_reg_5 : out STD_LOGIC_VECTOR ( 0 to 0 );
    run : out STD_LOGIC;
    \pos_reg[2]_1\ : out STD_LOGIC;
    b_own : out STD_LOGIC;
    \uq_reg[2]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \uq_reg[1]_0\ : out STD_LOGIC;
    \uq_reg[0]_0\ : out STD_LOGIC;
    in_left : out STD_LOGIC_VECTOR ( 44 downto 0 );
    in_right : out STD_LOGIC_VECTOR ( 44 downto 0 );
    w_real : out STD_LOGIC;
    ui_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \l_bot_reg[6]_i_18_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    l_up0 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \l_bot_reg[6]_i_55_0\ : in STD_LOGIC;
    \m_sec_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    best_s : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \uo[7]_i_100\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \m_sec_reg[7]_0\ : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \rec_in_reg[6]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \uo[6]_i_8_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    a : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \carry_rec_reg[14]\ : in STD_LOGIC;
    \carry_rec_reg[14]_0\ : in STD_LOGIC;
    \carry_rec_reg[14]_1\ : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \carry_rec_reg[13]\ : in STD_LOGIC;
    \carry_rec_reg[13]_0\ : in STD_LOGIC;
    \carry_rec_reg[12]\ : in STD_LOGIC;
    \carry_rec_reg[12]_0\ : in STD_LOGIC;
    \carry_rec_reg[11]\ : in STD_LOGIC;
    \carry_rec_reg[11]_0\ : in STD_LOGIC;
    \carry_rec_reg[10]_0\ : in STD_LOGIC;
    \carry_rec_reg[10]_1\ : in STD_LOGIC;
    \carry_rec_reg[9]\ : in STD_LOGIC;
    \carry_rec_reg[9]_0\ : in STD_LOGIC;
    \carry_rec_reg[8]\ : in STD_LOGIC;
    \carry_rec_reg[8]_0\ : in STD_LOGIC;
    \carry_rec_reg[7]\ : in STD_LOGIC;
    \carry_rec_reg[7]_0\ : in STD_LOGIC;
    \carry_rec_reg[6]\ : in STD_LOGIC;
    \carry_rec_reg[6]_0\ : in STD_LOGIC;
    \carry_rec_reg[5]\ : in STD_LOGIC;
    \carry_rec_reg[5]_0\ : in STD_LOGIC;
    \carry_rec_reg[4]\ : in STD_LOGIC;
    \carry_rec_reg[4]_0\ : in STD_LOGIC;
    \carry_rec_reg[3]\ : in STD_LOGIC;
    \carry_rec_reg[3]_0\ : in STD_LOGIC;
    \carry_rec_reg[2]\ : in STD_LOGIC;
    \carry_rec_reg[2]_0\ : in STD_LOGIC;
    \carry_rec_reg[1]\ : in STD_LOGIC;
    \carry_rec_reg[1]_0\ : in STD_LOGIC;
    \carry_rec_reg[0]\ : in STD_LOGIC;
    \carry_rec_reg[0]_0\ : in STD_LOGIC;
    \rec_reg[0][13]\ : in STD_LOGIC_VECTOR ( 13 downto 0 );
    \rec_reg[0][7]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \lmin_reg[5]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \lmin_reg[6]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \best_s_reg[6]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    cost : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \l_bot_reg[3]_i_2_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    lmin : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \l_bot[3]_i_10\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \m_s0_reg[0]\ : in STD_LOGIC;
    \m_s0_reg[1]\ : in STD_LOGIC;
    \m_s0_reg[1]_0\ : in STD_LOGIC;
    \m_s0_reg[2]\ : in STD_LOGIC;
    \m_s0_reg[2]_0\ : in STD_LOGIC;
    \m_s0_reg[3]\ : in STD_LOGIC;
    \m_s0_reg[3]_0\ : in STD_LOGIC;
    \m_s0_reg[4]\ : in STD_LOGIC;
    \m_s0_reg[4]_0\ : in STD_LOGIC;
    \uo[6]_i_5_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \uo[6]_i_5_1\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \m_s0_reg[1]_1\ : in STD_LOGIC;
    \m_s0_reg[2]_1\ : in STD_LOGIC;
    \m_s0_reg[3]_1\ : in STD_LOGIC;
    \m_s0_reg[5]\ : in STD_LOGIC;
    \m_s0_reg[6]\ : in STD_LOGIC;
    \m_sec_reg[7]_1\ : in STD_LOGIC;
    \uo[7]_i_10_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \uo[7]_i_10_1\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \m_sec_reg[7]_2\ : in STD_LOGIC;
    \uo[0]_i_7_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \uo[1]_i_8\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \uo[5]_i_11_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    own_wins_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    \uo_reg[7]_i_60\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_slice_1_0_ms_ctrl : entity is "ms_ctrl";
end system_slice_1_0_ms_ctrl;

architecture STRUCTURE of system_slice_1_0_ms_ctrl is
  signal \^a\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^o\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal act : STD_LOGIC;
  signal act_i_1_n_0 : STD_LOGIC;
  signal act_i_2_n_0 : STD_LOGIC;
  signal \^b_first\ : STD_LOGIC;
  signal \^b_real\ : STD_LOGIC;
  signal \^b_use\ : STD_LOGIC;
  signal b_v : STD_LOGIC;
  signal b_v_i_1_n_0 : STD_LOGIC;
  signal \best_s[6]_i_4_n_0\ : STD_LOGIC;
  signal \dn_edge[6]_i_3_n_0\ : STD_LOGIC;
  signal \dn_edge[6]_i_4_n_0\ : STD_LOGIC;
  signal \dn_edge[6]_i_5_n_0\ : STD_LOGIC;
  signal ftype : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \ftype[0]_i_1_n_0\ : STD_LOGIC;
  signal \ftype[1]_i_1_n_0\ : STD_LOGIC;
  signal \ftype[2]_i_1_n_0\ : STD_LOGIC;
  signal \ftype[2]_i_2_n_0\ : STD_LOGIC;
  signal gmin : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \gmin[6]_i_1_n_0\ : STD_LOGIC;
  signal \^gmin_reg[6]_0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal hn_first : STD_LOGIC;
  signal hn_first_i_1_n_0 : STD_LOGIC;
  signal hn_real : STD_LOGIC;
  signal hn_real_i_1_n_0 : STD_LOGIC;
  signal hn_use : STD_LOGIC;
  signal hn_use_i_1_n_0 : STD_LOGIC;
  signal \^in_left\ : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal \^in_right\ : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal kstar : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \kstar[6]_i_1_n_0\ : STD_LOGIC;
  signal \l_bot[3]_i_16_n_0\ : STD_LOGIC;
  signal \l_bot[3]_i_17_n_0\ : STD_LOGIC;
  signal \l_bot[3]_i_18_n_0\ : STD_LOGIC;
  signal \l_bot[3]_i_19_n_0\ : STD_LOGIC;
  signal \l_bot[3]_i_3_n_0\ : STD_LOGIC;
  signal \l_bot[3]_i_4_n_0\ : STD_LOGIC;
  signal \l_bot[3]_i_5_n_0\ : STD_LOGIC;
  signal \l_bot[3]_i_6_n_0\ : STD_LOGIC;
  signal \l_bot[3]_i_7_n_0\ : STD_LOGIC;
  signal \l_bot[3]_i_8_n_0\ : STD_LOGIC;
  signal \l_bot[3]_i_9_n_0\ : STD_LOGIC;
  signal \l_bot[6]_i_10_n_0\ : STD_LOGIC;
  signal \l_bot[6]_i_11_n_0\ : STD_LOGIC;
  signal \l_bot[6]_i_12_n_0\ : STD_LOGIC;
  signal \^l_bot[6]_i_14_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^l_bot[6]_i_14_1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \l_bot[6]_i_14_n_0\ : STD_LOGIC;
  signal \l_bot[6]_i_25_n_0\ : STD_LOGIC;
  signal \l_bot[6]_i_28_n_0\ : STD_LOGIC;
  signal \l_bot[6]_i_29_n_0\ : STD_LOGIC;
  signal \l_bot[6]_i_30_n_0\ : STD_LOGIC;
  signal \l_bot[6]_i_31_n_0\ : STD_LOGIC;
  signal \l_bot[6]_i_32_n_0\ : STD_LOGIC;
  signal \^l_bot[6]_i_35\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \l_bot[6]_i_36_n_0\ : STD_LOGIC;
  signal \l_bot[6]_i_37_n_0\ : STD_LOGIC;
  signal \l_bot[6]_i_38_n_0\ : STD_LOGIC;
  signal \l_bot[6]_i_39_n_0\ : STD_LOGIC;
  signal \l_bot[6]_i_40_n_0\ : STD_LOGIC;
  signal \l_bot[6]_i_41_n_0\ : STD_LOGIC;
  signal \l_bot[6]_i_42_n_0\ : STD_LOGIC;
  signal \l_bot[6]_i_43_n_0\ : STD_LOGIC;
  signal \l_bot[6]_i_44_n_0\ : STD_LOGIC;
  signal \l_bot[6]_i_45_n_0\ : STD_LOGIC;
  signal \l_bot[6]_i_46_n_0\ : STD_LOGIC;
  signal \l_bot[6]_i_47_n_0\ : STD_LOGIC;
  signal \l_bot[6]_i_48_n_0\ : STD_LOGIC;
  signal \l_bot[6]_i_49_n_0\ : STD_LOGIC;
  signal \l_bot[6]_i_50_n_0\ : STD_LOGIC;
  signal \l_bot[6]_i_51_n_0\ : STD_LOGIC;
  signal \l_bot[6]_i_52_n_0\ : STD_LOGIC;
  signal \l_bot[6]_i_53_n_0\ : STD_LOGIC;
  signal \l_bot[6]_i_54_n_0\ : STD_LOGIC;
  signal \l_bot[6]_i_56_n_0\ : STD_LOGIC;
  signal \l_bot[6]_i_57_n_0\ : STD_LOGIC;
  signal \l_bot[6]_i_58_n_0\ : STD_LOGIC;
  signal \l_bot[6]_i_59_n_0\ : STD_LOGIC;
  signal \l_bot[6]_i_5_n_0\ : STD_LOGIC;
  signal \l_bot[6]_i_60_n_0\ : STD_LOGIC;
  signal \l_bot[6]_i_61_n_0\ : STD_LOGIC;
  signal \l_bot[6]_i_62_n_0\ : STD_LOGIC;
  signal \l_bot[6]_i_63_n_0\ : STD_LOGIC;
  signal \l_bot[6]_i_64_n_0\ : STD_LOGIC;
  signal \l_bot[6]_i_65_n_0\ : STD_LOGIC;
  signal \l_bot[6]_i_66_n_0\ : STD_LOGIC;
  signal \l_bot[6]_i_67_n_0\ : STD_LOGIC;
  signal \l_bot[6]_i_68_n_0\ : STD_LOGIC;
  signal \l_bot[6]_i_69_n_0\ : STD_LOGIC;
  signal \l_bot[6]_i_6_n_0\ : STD_LOGIC;
  signal \l_bot[6]_i_70_n_0\ : STD_LOGIC;
  signal \l_bot[6]_i_72_n_0\ : STD_LOGIC;
  signal \l_bot[6]_i_73_n_0\ : STD_LOGIC;
  signal \l_bot[6]_i_74_n_0\ : STD_LOGIC;
  signal \l_bot[6]_i_7_n_0\ : STD_LOGIC;
  signal \l_bot[6]_i_8_n_0\ : STD_LOGIC;
  signal \l_bot[6]_i_9_n_0\ : STD_LOGIC;
  signal \l_bot_reg[3]_i_12_n_0\ : STD_LOGIC;
  signal \l_bot_reg[3]_i_12_n_1\ : STD_LOGIC;
  signal \l_bot_reg[3]_i_12_n_2\ : STD_LOGIC;
  signal \l_bot_reg[3]_i_12_n_3\ : STD_LOGIC;
  signal \l_bot_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \l_bot_reg[3]_i_2_n_1\ : STD_LOGIC;
  signal \l_bot_reg[3]_i_2_n_2\ : STD_LOGIC;
  signal \l_bot_reg[3]_i_2_n_3\ : STD_LOGIC;
  signal \l_bot_reg[3]_i_2_n_4\ : STD_LOGIC;
  signal \l_bot_reg[3]_i_2_n_5\ : STD_LOGIC;
  signal \l_bot_reg[3]_i_2_n_6\ : STD_LOGIC;
  signal \l_bot_reg[3]_i_2_n_7\ : STD_LOGIC;
  signal \l_bot_reg[6]_i_15_n_1\ : STD_LOGIC;
  signal \l_bot_reg[6]_i_15_n_2\ : STD_LOGIC;
  signal \l_bot_reg[6]_i_15_n_3\ : STD_LOGIC;
  signal \l_bot_reg[6]_i_16_n_2\ : STD_LOGIC;
  signal \l_bot_reg[6]_i_16_n_3\ : STD_LOGIC;
  signal \l_bot_reg[6]_i_17_n_1\ : STD_LOGIC;
  signal \l_bot_reg[6]_i_17_n_2\ : STD_LOGIC;
  signal \l_bot_reg[6]_i_17_n_3\ : STD_LOGIC;
  signal \l_bot_reg[6]_i_18_n_2\ : STD_LOGIC;
  signal \l_bot_reg[6]_i_18_n_3\ : STD_LOGIC;
  signal \l_bot_reg[6]_i_22_n_0\ : STD_LOGIC;
  signal \l_bot_reg[6]_i_22_n_1\ : STD_LOGIC;
  signal \l_bot_reg[6]_i_22_n_2\ : STD_LOGIC;
  signal \l_bot_reg[6]_i_22_n_3\ : STD_LOGIC;
  signal \l_bot_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal \l_bot_reg[6]_i_3_n_1\ : STD_LOGIC;
  signal \l_bot_reg[6]_i_3_n_2\ : STD_LOGIC;
  signal \l_bot_reg[6]_i_3_n_3\ : STD_LOGIC;
  signal \l_bot_reg[6]_i_3_n_5\ : STD_LOGIC;
  signal \l_bot_reg[6]_i_3_n_7\ : STD_LOGIC;
  signal \l_bot_reg[6]_i_55_n_0\ : STD_LOGIC;
  signal \l_bot_reg[6]_i_55_n_1\ : STD_LOGIC;
  signal \l_bot_reg[6]_i_55_n_2\ : STD_LOGIC;
  signal \l_bot_reg[6]_i_55_n_3\ : STD_LOGIC;
  signal \^l_new\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal left_sr0 : STD_LOGIC_VECTOR ( 43 downto 8 );
  signal left_sr1 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \left_sr[0]_i_1_n_0\ : STD_LOGIC;
  signal \left_sr[0]_i_2_n_0\ : STD_LOGIC;
  signal \left_sr[10]_i_1_n_0\ : STD_LOGIC;
  signal \left_sr[10]_i_2_n_0\ : STD_LOGIC;
  signal \left_sr[11]_i_1_n_0\ : STD_LOGIC;
  signal \left_sr[12]_i_1_n_0\ : STD_LOGIC;
  signal \left_sr[12]_i_2_n_0\ : STD_LOGIC;
  signal \left_sr[13]_i_1_n_0\ : STD_LOGIC;
  signal \left_sr[13]_i_2_n_0\ : STD_LOGIC;
  signal \left_sr[13]_i_3_n_0\ : STD_LOGIC;
  signal \left_sr[14]_i_1_n_0\ : STD_LOGIC;
  signal \left_sr[15]_i_1_n_0\ : STD_LOGIC;
  signal \left_sr[15]_i_2_n_0\ : STD_LOGIC;
  signal \left_sr[16]_i_1_n_0\ : STD_LOGIC;
  signal \left_sr[16]_i_2_n_0\ : STD_LOGIC;
  signal \left_sr[17]_i_1_n_0\ : STD_LOGIC;
  signal \left_sr[17]_i_2_n_0\ : STD_LOGIC;
  signal \left_sr[18]_i_1_n_0\ : STD_LOGIC;
  signal \left_sr[18]_i_2_n_0\ : STD_LOGIC;
  signal \left_sr[19]_i_1_n_0\ : STD_LOGIC;
  signal \left_sr[19]_i_2_n_0\ : STD_LOGIC;
  signal \left_sr[1]_i_1_n_0\ : STD_LOGIC;
  signal \left_sr[20]_i_1_n_0\ : STD_LOGIC;
  signal \left_sr[20]_i_2_n_0\ : STD_LOGIC;
  signal \left_sr[21]_i_1_n_0\ : STD_LOGIC;
  signal \left_sr[21]_i_2_n_0\ : STD_LOGIC;
  signal \left_sr[21]_i_3_n_0\ : STD_LOGIC;
  signal \left_sr[22]_i_1_n_0\ : STD_LOGIC;
  signal \left_sr[23]_i_1_n_0\ : STD_LOGIC;
  signal \left_sr[23]_i_2_n_0\ : STD_LOGIC;
  signal \left_sr[24]_i_1_n_0\ : STD_LOGIC;
  signal \left_sr[25]_i_1_n_0\ : STD_LOGIC;
  signal \left_sr[26]_i_1_n_0\ : STD_LOGIC;
  signal \left_sr[26]_i_2_n_0\ : STD_LOGIC;
  signal \left_sr[27]_i_1_n_0\ : STD_LOGIC;
  signal \left_sr[28]_i_1_n_0\ : STD_LOGIC;
  signal \left_sr[28]_i_2_n_0\ : STD_LOGIC;
  signal \left_sr[29]_i_1_n_0\ : STD_LOGIC;
  signal \left_sr[29]_i_2_n_0\ : STD_LOGIC;
  signal \left_sr[29]_i_3_n_0\ : STD_LOGIC;
  signal \left_sr[2]_i_1_n_0\ : STD_LOGIC;
  signal \left_sr[2]_i_2_n_0\ : STD_LOGIC;
  signal \left_sr[30]_i_1_n_0\ : STD_LOGIC;
  signal \left_sr[31]_i_1_n_0\ : STD_LOGIC;
  signal \left_sr[31]_i_2_n_0\ : STD_LOGIC;
  signal \left_sr[32]_i_1_n_0\ : STD_LOGIC;
  signal \left_sr[32]_i_2_n_0\ : STD_LOGIC;
  signal \left_sr[32]_i_3_n_0\ : STD_LOGIC;
  signal \left_sr[32]_i_4_n_0\ : STD_LOGIC;
  signal \left_sr[32]_i_5_n_0\ : STD_LOGIC;
  signal \left_sr[32]_i_6_n_0\ : STD_LOGIC;
  signal \left_sr[32]_i_7_n_0\ : STD_LOGIC;
  signal \left_sr[33]_i_1_n_0\ : STD_LOGIC;
  signal \left_sr[33]_i_2_n_0\ : STD_LOGIC;
  signal \left_sr[33]_i_3_n_0\ : STD_LOGIC;
  signal \left_sr[33]_i_4_n_0\ : STD_LOGIC;
  signal \left_sr[33]_i_5_n_0\ : STD_LOGIC;
  signal \left_sr[33]_i_6_n_0\ : STD_LOGIC;
  signal \left_sr[34]_i_1_n_0\ : STD_LOGIC;
  signal \left_sr[34]_i_2_n_0\ : STD_LOGIC;
  signal \left_sr[35]_i_1_n_0\ : STD_LOGIC;
  signal \left_sr[35]_i_2_n_0\ : STD_LOGIC;
  signal \left_sr[35]_i_3_n_0\ : STD_LOGIC;
  signal \left_sr[35]_i_4_n_0\ : STD_LOGIC;
  signal \left_sr[36]_i_1_n_0\ : STD_LOGIC;
  signal \left_sr[36]_i_2_n_0\ : STD_LOGIC;
  signal \left_sr[37]_i_1_n_0\ : STD_LOGIC;
  signal \left_sr[37]_i_2_n_0\ : STD_LOGIC;
  signal \left_sr[37]_i_3_n_0\ : STD_LOGIC;
  signal \left_sr[37]_i_4_n_0\ : STD_LOGIC;
  signal \left_sr[37]_i_5_n_0\ : STD_LOGIC;
  signal \left_sr[37]_i_6_n_0\ : STD_LOGIC;
  signal \left_sr[37]_i_7_n_0\ : STD_LOGIC;
  signal \left_sr[37]_i_8_n_0\ : STD_LOGIC;
  signal \left_sr[38]_i_1_n_0\ : STD_LOGIC;
  signal \left_sr[38]_i_2_n_0\ : STD_LOGIC;
  signal \left_sr[38]_i_3_n_0\ : STD_LOGIC;
  signal \left_sr[39]_i_1_n_0\ : STD_LOGIC;
  signal \left_sr[39]_i_2_n_0\ : STD_LOGIC;
  signal \left_sr[39]_i_3_n_0\ : STD_LOGIC;
  signal \left_sr[39]_i_4_n_0\ : STD_LOGIC;
  signal \left_sr[39]_i_5_n_0\ : STD_LOGIC;
  signal \left_sr[39]_i_6_n_0\ : STD_LOGIC;
  signal \left_sr[39]_i_7_n_0\ : STD_LOGIC;
  signal \left_sr[39]_i_8_n_0\ : STD_LOGIC;
  signal \left_sr[3]_i_1_n_0\ : STD_LOGIC;
  signal \left_sr[3]_i_2_n_0\ : STD_LOGIC;
  signal \left_sr[40]_i_1_n_0\ : STD_LOGIC;
  signal \left_sr[40]_i_3_n_0\ : STD_LOGIC;
  signal \left_sr[41]_i_1_n_0\ : STD_LOGIC;
  signal \left_sr[41]_i_3_n_0\ : STD_LOGIC;
  signal \left_sr[42]_i_1_n_0\ : STD_LOGIC;
  signal \left_sr[42]_i_2_n_0\ : STD_LOGIC;
  signal \left_sr[42]_i_3_n_0\ : STD_LOGIC;
  signal \left_sr[42]_i_4_n_0\ : STD_LOGIC;
  signal \left_sr[42]_i_5_n_0\ : STD_LOGIC;
  signal \left_sr[42]_i_6_n_0\ : STD_LOGIC;
  signal \left_sr[42]_i_7_n_0\ : STD_LOGIC;
  signal \left_sr[42]_i_8_n_0\ : STD_LOGIC;
  signal \left_sr[43]_i_10_n_0\ : STD_LOGIC;
  signal \left_sr[43]_i_11_n_0\ : STD_LOGIC;
  signal \left_sr[43]_i_12_n_0\ : STD_LOGIC;
  signal \left_sr[43]_i_13_n_0\ : STD_LOGIC;
  signal \left_sr[43]_i_14_n_0\ : STD_LOGIC;
  signal \left_sr[43]_i_15_n_0\ : STD_LOGIC;
  signal \left_sr[43]_i_17_n_0\ : STD_LOGIC;
  signal \left_sr[43]_i_18_n_0\ : STD_LOGIC;
  signal \left_sr[43]_i_19_n_0\ : STD_LOGIC;
  signal \left_sr[43]_i_1_n_0\ : STD_LOGIC;
  signal \left_sr[43]_i_4_n_0\ : STD_LOGIC;
  signal \left_sr[43]_i_5_n_0\ : STD_LOGIC;
  signal \left_sr[43]_i_7_n_0\ : STD_LOGIC;
  signal \left_sr[43]_i_9_n_0\ : STD_LOGIC;
  signal \left_sr[44]_i_11_n_0\ : STD_LOGIC;
  signal \left_sr[44]_i_12_n_0\ : STD_LOGIC;
  signal \left_sr[44]_i_13_n_0\ : STD_LOGIC;
  signal \left_sr[44]_i_14_n_0\ : STD_LOGIC;
  signal \left_sr[44]_i_15_n_0\ : STD_LOGIC;
  signal \left_sr[44]_i_16_n_0\ : STD_LOGIC;
  signal \left_sr[44]_i_1_n_0\ : STD_LOGIC;
  signal \left_sr[44]_i_2_n_0\ : STD_LOGIC;
  signal \left_sr[44]_i_3_n_0\ : STD_LOGIC;
  signal \left_sr[44]_i_5_n_0\ : STD_LOGIC;
  signal \left_sr[44]_i_6_n_0\ : STD_LOGIC;
  signal \left_sr[44]_i_7_n_0\ : STD_LOGIC;
  signal \left_sr[44]_i_8_n_0\ : STD_LOGIC;
  signal \left_sr[44]_i_9_n_0\ : STD_LOGIC;
  signal \left_sr[4]_i_1_n_0\ : STD_LOGIC;
  signal \left_sr[4]_i_2_n_0\ : STD_LOGIC;
  signal \left_sr[5]_i_1_n_0\ : STD_LOGIC;
  signal \left_sr[5]_i_2_n_0\ : STD_LOGIC;
  signal \left_sr[5]_i_5_n_0\ : STD_LOGIC;
  signal \left_sr[6]_i_1_n_0\ : STD_LOGIC;
  signal \left_sr[7]_i_1_n_0\ : STD_LOGIC;
  signal \left_sr[7]_i_2_n_0\ : STD_LOGIC;
  signal \left_sr[8]_i_1_n_0\ : STD_LOGIC;
  signal \left_sr[9]_i_1_n_0\ : STD_LOGIC;
  signal \left_sr_reg[43]_i_3_n_0\ : STD_LOGIC;
  signal \left_sr_reg[43]_i_3_n_1\ : STD_LOGIC;
  signal \left_sr_reg[43]_i_3_n_2\ : STD_LOGIC;
  signal \left_sr_reg[43]_i_3_n_3\ : STD_LOGIC;
  signal \left_sr_reg[44]_i_4_n_0\ : STD_LOGIC;
  signal \left_sr_reg[44]_i_4_n_1\ : STD_LOGIC;
  signal \left_sr_reg[44]_i_4_n_2\ : STD_LOGIC;
  signal \left_sr_reg[44]_i_4_n_3\ : STD_LOGIC;
  signal \left_sr_reg[5]_i_3_n_3\ : STD_LOGIC;
  signal \^load\ : STD_LOGIC;
  signal \m_s0[6]_i_2_n_0\ : STD_LOGIC;
  signal \m_s0[6]_i_3_n_0\ : STD_LOGIC;
  signal \m_s0[6]_i_4_n_0\ : STD_LOGIC;
  signal \m_s0[6]_i_5_n_0\ : STD_LOGIC;
  signal \m_s2[6]_i_2_n_0\ : STD_LOGIC;
  signal \m_s2[6]_i_3_n_0\ : STD_LOGIC;
  signal \m_s2[6]_i_4_n_0\ : STD_LOGIC;
  signal \m_s2[6]_i_5_n_0\ : STD_LOGIC;
  signal \m_s2[6]_i_6_n_0\ : STD_LOGIC;
  signal \m_sec[7]_i_2_n_0\ : STD_LOGIC;
  signal \m_sec[7]_i_3_n_0\ : STD_LOGIC;
  signal \m_sec[7]_i_4_n_0\ : STD_LOGIC;
  signal n : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal n0 : STD_LOGIC;
  signal \n[0]_i_1_n_0\ : STD_LOGIC;
  signal \n[1]_i_1_n_0\ : STD_LOGIC;
  signal \n[2]_i_1_n_0\ : STD_LOGIC;
  signal \n[2]_i_3_n_0\ : STD_LOGIC;
  signal p1 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \p1[6]_i_1_n_0\ : STD_LOGIC;
  signal p2 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \p2[6]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_4_in : STD_LOGIC;
  signal ph : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \ph[0]_i_1_n_0\ : STD_LOGIC;
  signal \ph[1]_i_1_n_0\ : STD_LOGIC;
  signal \ph[2]_i_1_n_0\ : STD_LOGIC;
  signal \ph[3]_i_1_n_0\ : STD_LOGIC;
  signal \ph[4]_i_1_n_0\ : STD_LOGIC;
  signal \ph[5]_i_1_n_0\ : STD_LOGIC;
  signal \ph[5]_i_2_n_0\ : STD_LOGIC;
  signal \ph[5]_i_3_n_0\ : STD_LOGIC;
  signal \ph[5]_i_4_n_0\ : STD_LOGIC;
  signal \ph[6]_i_1_n_0\ : STD_LOGIC;
  signal pos : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \pos[0]_i_1_n_0\ : STD_LOGIC;
  signal \pos[1]_i_1_n_0\ : STD_LOGIC;
  signal \pos[2]_i_1_n_0\ : STD_LOGIC;
  signal \^pos_reg[0]_0\ : STD_LOGIC;
  signal \^pos_reg[0]_1\ : STD_LOGIC;
  signal \^pos_reg[2]_1\ : STD_LOGIC;
  signal \rec[0][14]_i_3_n_0\ : STD_LOGIC;
  signal \rec_in[14]_i_2_n_0\ : STD_LOGIC;
  signal \rec_in[14]_i_3_n_0\ : STD_LOGIC;
  signal \rec_in[14]_i_4_n_0\ : STD_LOGIC;
  signal right_sr0 : STD_LOGIC_VECTOR ( 43 downto 8 );
  signal right_sr1 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \right_sr[0]_i_1_n_0\ : STD_LOGIC;
  signal \right_sr[0]_i_2_n_0\ : STD_LOGIC;
  signal \right_sr[10]_i_1_n_0\ : STD_LOGIC;
  signal \right_sr[10]_i_2_n_0\ : STD_LOGIC;
  signal \right_sr[11]_i_1_n_0\ : STD_LOGIC;
  signal \right_sr[12]_i_1_n_0\ : STD_LOGIC;
  signal \right_sr[12]_i_2_n_0\ : STD_LOGIC;
  signal \right_sr[13]_i_1_n_0\ : STD_LOGIC;
  signal \right_sr[13]_i_2_n_0\ : STD_LOGIC;
  signal \right_sr[13]_i_3_n_0\ : STD_LOGIC;
  signal \right_sr[14]_i_1_n_0\ : STD_LOGIC;
  signal \right_sr[15]_i_1_n_0\ : STD_LOGIC;
  signal \right_sr[15]_i_2_n_0\ : STD_LOGIC;
  signal \right_sr[16]_i_1_n_0\ : STD_LOGIC;
  signal \right_sr[16]_i_2_n_0\ : STD_LOGIC;
  signal \right_sr[17]_i_1_n_0\ : STD_LOGIC;
  signal \right_sr[17]_i_2_n_0\ : STD_LOGIC;
  signal \right_sr[18]_i_1_n_0\ : STD_LOGIC;
  signal \right_sr[18]_i_2_n_0\ : STD_LOGIC;
  signal \right_sr[19]_i_1_n_0\ : STD_LOGIC;
  signal \right_sr[19]_i_2_n_0\ : STD_LOGIC;
  signal \right_sr[1]_i_1_n_0\ : STD_LOGIC;
  signal \right_sr[20]_i_1_n_0\ : STD_LOGIC;
  signal \right_sr[20]_i_2_n_0\ : STD_LOGIC;
  signal \right_sr[21]_i_1_n_0\ : STD_LOGIC;
  signal \right_sr[21]_i_2_n_0\ : STD_LOGIC;
  signal \right_sr[21]_i_3_n_0\ : STD_LOGIC;
  signal \right_sr[22]_i_1_n_0\ : STD_LOGIC;
  signal \right_sr[23]_i_1_n_0\ : STD_LOGIC;
  signal \right_sr[23]_i_2_n_0\ : STD_LOGIC;
  signal \right_sr[24]_i_1_n_0\ : STD_LOGIC;
  signal \right_sr[25]_i_1_n_0\ : STD_LOGIC;
  signal \right_sr[26]_i_1_n_0\ : STD_LOGIC;
  signal \right_sr[26]_i_2_n_0\ : STD_LOGIC;
  signal \right_sr[27]_i_1_n_0\ : STD_LOGIC;
  signal \right_sr[28]_i_1_n_0\ : STD_LOGIC;
  signal \right_sr[28]_i_2_n_0\ : STD_LOGIC;
  signal \right_sr[29]_i_1_n_0\ : STD_LOGIC;
  signal \right_sr[29]_i_2_n_0\ : STD_LOGIC;
  signal \right_sr[29]_i_3_n_0\ : STD_LOGIC;
  signal \right_sr[2]_i_1_n_0\ : STD_LOGIC;
  signal \right_sr[2]_i_2_n_0\ : STD_LOGIC;
  signal \right_sr[30]_i_1_n_0\ : STD_LOGIC;
  signal \right_sr[31]_i_1_n_0\ : STD_LOGIC;
  signal \right_sr[31]_i_2_n_0\ : STD_LOGIC;
  signal \right_sr[32]_i_1_n_0\ : STD_LOGIC;
  signal \right_sr[32]_i_2_n_0\ : STD_LOGIC;
  signal \right_sr[32]_i_3_n_0\ : STD_LOGIC;
  signal \right_sr[32]_i_4_n_0\ : STD_LOGIC;
  signal \right_sr[32]_i_5_n_0\ : STD_LOGIC;
  signal \right_sr[32]_i_6_n_0\ : STD_LOGIC;
  signal \right_sr[32]_i_7_n_0\ : STD_LOGIC;
  signal \right_sr[33]_i_1_n_0\ : STD_LOGIC;
  signal \right_sr[33]_i_2_n_0\ : STD_LOGIC;
  signal \right_sr[33]_i_3_n_0\ : STD_LOGIC;
  signal \right_sr[33]_i_4_n_0\ : STD_LOGIC;
  signal \right_sr[33]_i_5_n_0\ : STD_LOGIC;
  signal \right_sr[33]_i_6_n_0\ : STD_LOGIC;
  signal \right_sr[34]_i_1_n_0\ : STD_LOGIC;
  signal \right_sr[34]_i_2_n_0\ : STD_LOGIC;
  signal \right_sr[35]_i_1_n_0\ : STD_LOGIC;
  signal \right_sr[35]_i_2_n_0\ : STD_LOGIC;
  signal \right_sr[35]_i_3_n_0\ : STD_LOGIC;
  signal \right_sr[35]_i_4_n_0\ : STD_LOGIC;
  signal \right_sr[36]_i_1_n_0\ : STD_LOGIC;
  signal \right_sr[36]_i_2_n_0\ : STD_LOGIC;
  signal \right_sr[37]_i_1_n_0\ : STD_LOGIC;
  signal \right_sr[37]_i_2_n_0\ : STD_LOGIC;
  signal \right_sr[37]_i_3_n_0\ : STD_LOGIC;
  signal \right_sr[37]_i_4_n_0\ : STD_LOGIC;
  signal \right_sr[37]_i_5_n_0\ : STD_LOGIC;
  signal \right_sr[37]_i_6_n_0\ : STD_LOGIC;
  signal \right_sr[37]_i_7_n_0\ : STD_LOGIC;
  signal \right_sr[37]_i_8_n_0\ : STD_LOGIC;
  signal \right_sr[38]_i_1_n_0\ : STD_LOGIC;
  signal \right_sr[38]_i_2_n_0\ : STD_LOGIC;
  signal \right_sr[38]_i_3_n_0\ : STD_LOGIC;
  signal \right_sr[39]_i_1_n_0\ : STD_LOGIC;
  signal \right_sr[39]_i_2_n_0\ : STD_LOGIC;
  signal \right_sr[39]_i_3_n_0\ : STD_LOGIC;
  signal \right_sr[39]_i_4_n_0\ : STD_LOGIC;
  signal \right_sr[39]_i_5_n_0\ : STD_LOGIC;
  signal \right_sr[39]_i_6_n_0\ : STD_LOGIC;
  signal \right_sr[39]_i_7_n_0\ : STD_LOGIC;
  signal \right_sr[39]_i_8_n_0\ : STD_LOGIC;
  signal \right_sr[3]_i_1_n_0\ : STD_LOGIC;
  signal \right_sr[3]_i_2_n_0\ : STD_LOGIC;
  signal \right_sr[40]_i_1_n_0\ : STD_LOGIC;
  signal \right_sr[40]_i_3_n_0\ : STD_LOGIC;
  signal \right_sr[41]_i_1_n_0\ : STD_LOGIC;
  signal \right_sr[41]_i_3_n_0\ : STD_LOGIC;
  signal \right_sr[42]_i_1_n_0\ : STD_LOGIC;
  signal \right_sr[42]_i_2_n_0\ : STD_LOGIC;
  signal \right_sr[42]_i_3_n_0\ : STD_LOGIC;
  signal \right_sr[42]_i_4_n_0\ : STD_LOGIC;
  signal \right_sr[42]_i_5_n_0\ : STD_LOGIC;
  signal \right_sr[42]_i_6_n_0\ : STD_LOGIC;
  signal \right_sr[42]_i_7_n_0\ : STD_LOGIC;
  signal \right_sr[42]_i_8_n_0\ : STD_LOGIC;
  signal \right_sr[43]_i_10_n_0\ : STD_LOGIC;
  signal \right_sr[43]_i_11_n_0\ : STD_LOGIC;
  signal \right_sr[43]_i_12_n_0\ : STD_LOGIC;
  signal \right_sr[43]_i_13_n_0\ : STD_LOGIC;
  signal \right_sr[43]_i_14_n_0\ : STD_LOGIC;
  signal \right_sr[43]_i_15_n_0\ : STD_LOGIC;
  signal \right_sr[43]_i_16_n_0\ : STD_LOGIC;
  signal \right_sr[43]_i_1_n_0\ : STD_LOGIC;
  signal \right_sr[43]_i_4_n_0\ : STD_LOGIC;
  signal \right_sr[43]_i_5_n_0\ : STD_LOGIC;
  signal \right_sr[43]_i_7_n_0\ : STD_LOGIC;
  signal \right_sr[43]_i_8_n_0\ : STD_LOGIC;
  signal \right_sr[43]_i_9_n_0\ : STD_LOGIC;
  signal \right_sr[44]_i_11_n_0\ : STD_LOGIC;
  signal \right_sr[44]_i_12_n_0\ : STD_LOGIC;
  signal \right_sr[44]_i_13_n_0\ : STD_LOGIC;
  signal \right_sr[44]_i_14_n_0\ : STD_LOGIC;
  signal \right_sr[44]_i_15_n_0\ : STD_LOGIC;
  signal \right_sr[44]_i_16_n_0\ : STD_LOGIC;
  signal \right_sr[44]_i_17_n_0\ : STD_LOGIC;
  signal \right_sr[44]_i_18_n_0\ : STD_LOGIC;
  signal \right_sr[44]_i_19_n_0\ : STD_LOGIC;
  signal \right_sr[44]_i_1_n_0\ : STD_LOGIC;
  signal \right_sr[44]_i_20_n_0\ : STD_LOGIC;
  signal \right_sr[44]_i_21_n_0\ : STD_LOGIC;
  signal \right_sr[44]_i_22_n_0\ : STD_LOGIC;
  signal \right_sr[44]_i_2_n_0\ : STD_LOGIC;
  signal \right_sr[44]_i_3_n_0\ : STD_LOGIC;
  signal \right_sr[44]_i_5_n_0\ : STD_LOGIC;
  signal \right_sr[44]_i_6_n_0\ : STD_LOGIC;
  signal \right_sr[44]_i_7_n_0\ : STD_LOGIC;
  signal \right_sr[44]_i_8_n_0\ : STD_LOGIC;
  signal \right_sr[44]_i_9_n_0\ : STD_LOGIC;
  signal \right_sr[4]_i_1_n_0\ : STD_LOGIC;
  signal \right_sr[4]_i_2_n_0\ : STD_LOGIC;
  signal \right_sr[5]_i_1_n_0\ : STD_LOGIC;
  signal \right_sr[5]_i_2_n_0\ : STD_LOGIC;
  signal \right_sr[5]_i_4_n_0\ : STD_LOGIC;
  signal \right_sr[5]_i_5_n_0\ : STD_LOGIC;
  signal \right_sr[6]_i_1_n_0\ : STD_LOGIC;
  signal \right_sr[7]_i_1_n_0\ : STD_LOGIC;
  signal \right_sr[7]_i_2_n_0\ : STD_LOGIC;
  signal \right_sr[8]_i_1_n_0\ : STD_LOGIC;
  signal \right_sr[9]_i_1_n_0\ : STD_LOGIC;
  signal \right_sr_reg[43]_i_3_n_0\ : STD_LOGIC;
  signal \right_sr_reg[43]_i_3_n_1\ : STD_LOGIC;
  signal \right_sr_reg[43]_i_3_n_2\ : STD_LOGIC;
  signal \right_sr_reg[43]_i_3_n_3\ : STD_LOGIC;
  signal \right_sr_reg[43]_i_6_n_2\ : STD_LOGIC;
  signal \right_sr_reg[43]_i_6_n_3\ : STD_LOGIC;
  signal \right_sr_reg[43]_i_6_n_5\ : STD_LOGIC;
  signal \right_sr_reg[43]_i_6_n_6\ : STD_LOGIC;
  signal \right_sr_reg[43]_i_6_n_7\ : STD_LOGIC;
  signal \right_sr_reg[44]_i_10_n_0\ : STD_LOGIC;
  signal \right_sr_reg[44]_i_10_n_1\ : STD_LOGIC;
  signal \right_sr_reg[44]_i_10_n_2\ : STD_LOGIC;
  signal \right_sr_reg[44]_i_10_n_3\ : STD_LOGIC;
  signal \right_sr_reg[44]_i_10_n_4\ : STD_LOGIC;
  signal \right_sr_reg[44]_i_10_n_5\ : STD_LOGIC;
  signal \right_sr_reg[44]_i_10_n_6\ : STD_LOGIC;
  signal \right_sr_reg[44]_i_10_n_7\ : STD_LOGIC;
  signal \right_sr_reg[44]_i_4_n_0\ : STD_LOGIC;
  signal \right_sr_reg[44]_i_4_n_1\ : STD_LOGIC;
  signal \right_sr_reg[44]_i_4_n_2\ : STD_LOGIC;
  signal \right_sr_reg[44]_i_4_n_3\ : STD_LOGIC;
  signal \right_sr_reg[5]_i_3_n_3\ : STD_LOGIC;
  signal \rin_s[7]_i_3_n_0\ : STD_LOGIC;
  signal \rin_s[7]_i_4_n_0\ : STD_LOGIC;
  signal \^run\ : STD_LOGIC;
  signal run_i_1_n_0 : STD_LOGIC;
  signal run_i_2_n_0 : STD_LOGIC;
  signal \s0[6]_i_3_n_0\ : STD_LOGIC;
  signal \s0[6]_i_4_n_0\ : STD_LOGIC;
  signal \s0[6]_i_5_n_0\ : STD_LOGIC;
  signal \s0[6]_i_6_n_0\ : STD_LOGIC;
  signal \s0[6]_i_7_n_0\ : STD_LOGIC;
  signal \s2[6]_i_3_n_0\ : STD_LOGIC;
  signal \s2[6]_i_4_n_0\ : STD_LOGIC;
  signal \s2[6]_i_5_n_0\ : STD_LOGIC;
  signal \s2[6]_i_6_n_0\ : STD_LOGIC;
  signal \s2[6]_i_7_n_0\ : STD_LOGIC;
  signal \^scan\ : STD_LOGIC;
  signal \sec[7]_i_14_n_0\ : STD_LOGIC;
  signal \sec[7]_i_15_n_0\ : STD_LOGIC;
  signal \sec[7]_i_16_n_0\ : STD_LOGIC;
  signal \sec[7]_i_17_n_0\ : STD_LOGIC;
  signal \sec[7]_i_18_n_0\ : STD_LOGIC;
  signal \sec[7]_i_19_n_0\ : STD_LOGIC;
  signal \sec[7]_i_20_n_0\ : STD_LOGIC;
  signal \sec[7]_i_21_n_0\ : STD_LOGIC;
  signal \sec[7]_i_22_n_0\ : STD_LOGIC;
  signal \sec[7]_i_23_n_0\ : STD_LOGIC;
  signal \sec[7]_i_24_n_0\ : STD_LOGIC;
  signal \sec[7]_i_25_n_0\ : STD_LOGIC;
  signal \sec[7]_i_26_n_0\ : STD_LOGIC;
  signal \sec[7]_i_27_n_0\ : STD_LOGIC;
  signal \sec[7]_i_28_n_0\ : STD_LOGIC;
  signal \sec[7]_i_29_n_0\ : STD_LOGIC;
  signal \sec[7]_i_30_n_0\ : STD_LOGIC;
  signal \sec[7]_i_31_n_0\ : STD_LOGIC;
  signal \sec[7]_i_32_n_0\ : STD_LOGIC;
  signal \sec[7]_i_33_n_0\ : STD_LOGIC;
  signal \sec[7]_i_34_n_0\ : STD_LOGIC;
  signal \sec[7]_i_35_n_0\ : STD_LOGIC;
  signal \sec[7]_i_36_n_0\ : STD_LOGIC;
  signal \sec[7]_i_37_n_0\ : STD_LOGIC;
  signal \sec[7]_i_38_n_0\ : STD_LOGIC;
  signal \sec[7]_i_39_n_0\ : STD_LOGIC;
  signal \sec[7]_i_40_n_0\ : STD_LOGIC;
  signal \sec_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \sec_reg[7]_i_4_n_1\ : STD_LOGIC;
  signal \sec_reg[7]_i_4_n_2\ : STD_LOGIC;
  signal \sec_reg[7]_i_4_n_3\ : STD_LOGIC;
  signal \sec_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \sec_reg[7]_i_5_n_1\ : STD_LOGIC;
  signal \sec_reg[7]_i_5_n_2\ : STD_LOGIC;
  signal \sec_reg[7]_i_5_n_3\ : STD_LOGIC;
  signal sg_first : STD_LOGIC;
  signal sg_first_i_1_n_0 : STD_LOGIC;
  signal sg_real : STD_LOGIC;
  signal sg_real_i_1_n_0 : STD_LOGIC;
  signal sg_use : STD_LOGIC;
  signal sg_use_i_1_n_0 : STD_LOGIC;
  signal sg_valid_i_1_n_0 : STD_LOGIC;
  signal sg_valid_reg_n_0 : STD_LOGIC;
  signal \u_path/a\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \u_path/b\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \u_path/b2_out\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \u_path/min9_return1\ : STD_LOGIC;
  signal \u_path/p_0_in\ : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal \u_path/p_0_in__0\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \u_up/up_on0\ : STD_LOGIC;
  signal uc : STD_LOGIC_VECTOR ( 6 downto 4 );
  signal \uc[0]_i_1_n_0\ : STD_LOGIC;
  signal \uc[1]_i_1_n_0\ : STD_LOGIC;
  signal \uc[2]_i_1_n_0\ : STD_LOGIC;
  signal \uc[3]_i_1_n_0\ : STD_LOGIC;
  signal \uc[4]_i_1_n_0\ : STD_LOGIC;
  signal \uc[5]_i_1_n_0\ : STD_LOGIC;
  signal \uc[5]_i_2_n_0\ : STD_LOGIC;
  signal \uc[5]_i_3_n_0\ : STD_LOGIC;
  signal \uc[6]_i_1_n_0\ : STD_LOGIC;
  signal \^uc_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^uc_reg[4]_0\ : STD_LOGIC;
  signal \ui_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \ui_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \ui_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \ui_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \uo[0]_i_10_n_0\ : STD_LOGIC;
  signal \uo[0]_i_11_n_0\ : STD_LOGIC;
  signal \uo[0]_i_13_n_0\ : STD_LOGIC;
  signal \uo[0]_i_14_n_0\ : STD_LOGIC;
  signal \uo[0]_i_15_n_0\ : STD_LOGIC;
  signal \uo[0]_i_2_n_0\ : STD_LOGIC;
  signal \uo[0]_i_3_n_0\ : STD_LOGIC;
  signal \uo[0]_i_4_n_0\ : STD_LOGIC;
  signal \uo[0]_i_5_n_0\ : STD_LOGIC;
  signal \uo[0]_i_6_n_0\ : STD_LOGIC;
  signal \uo[0]_i_7_n_0\ : STD_LOGIC;
  signal \uo[0]_i_8_n_0\ : STD_LOGIC;
  signal \uo[0]_i_9_n_0\ : STD_LOGIC;
  signal \uo[1]_i_10_n_0\ : STD_LOGIC;
  signal \uo[1]_i_11_n_0\ : STD_LOGIC;
  signal \uo[1]_i_13_n_0\ : STD_LOGIC;
  signal \uo[1]_i_14_n_0\ : STD_LOGIC;
  signal \uo[1]_i_15_n_0\ : STD_LOGIC;
  signal \uo[1]_i_2_n_0\ : STD_LOGIC;
  signal \uo[1]_i_3_n_0\ : STD_LOGIC;
  signal \uo[1]_i_4_n_0\ : STD_LOGIC;
  signal \uo[1]_i_5_n_0\ : STD_LOGIC;
  signal \uo[1]_i_6_n_0\ : STD_LOGIC;
  signal \uo[1]_i_9_n_0\ : STD_LOGIC;
  signal \uo[2]_i_10_n_0\ : STD_LOGIC;
  signal \uo[2]_i_11_n_0\ : STD_LOGIC;
  signal \uo[2]_i_13_n_0\ : STD_LOGIC;
  signal \uo[2]_i_14_n_0\ : STD_LOGIC;
  signal \uo[2]_i_15_n_0\ : STD_LOGIC;
  signal \uo[2]_i_16_n_0\ : STD_LOGIC;
  signal \uo[2]_i_17_n_0\ : STD_LOGIC;
  signal \uo[2]_i_3_n_0\ : STD_LOGIC;
  signal \uo[2]_i_4_n_0\ : STD_LOGIC;
  signal \uo[2]_i_5_n_0\ : STD_LOGIC;
  signal \uo[2]_i_6_n_0\ : STD_LOGIC;
  signal \uo[2]_i_7_n_0\ : STD_LOGIC;
  signal \uo[2]_i_9_n_0\ : STD_LOGIC;
  signal \uo[3]_i_10_n_0\ : STD_LOGIC;
  signal \uo[3]_i_12_n_0\ : STD_LOGIC;
  signal \uo[3]_i_13_n_0\ : STD_LOGIC;
  signal \uo[3]_i_14_n_0\ : STD_LOGIC;
  signal \uo[3]_i_17_n_0\ : STD_LOGIC;
  signal \uo[3]_i_18_n_0\ : STD_LOGIC;
  signal \uo[3]_i_3_n_0\ : STD_LOGIC;
  signal \uo[3]_i_4_n_0\ : STD_LOGIC;
  signal \uo[3]_i_5_n_0\ : STD_LOGIC;
  signal \uo[3]_i_6_n_0\ : STD_LOGIC;
  signal \uo[3]_i_7_n_0\ : STD_LOGIC;
  signal \uo[3]_i_9_n_0\ : STD_LOGIC;
  signal \uo[4]_i_10_n_0\ : STD_LOGIC;
  signal \uo[4]_i_11_n_0\ : STD_LOGIC;
  signal \uo[4]_i_12_n_0\ : STD_LOGIC;
  signal \uo[4]_i_14_n_0\ : STD_LOGIC;
  signal \uo[4]_i_3_n_0\ : STD_LOGIC;
  signal \uo[4]_i_4_n_0\ : STD_LOGIC;
  signal \uo[4]_i_5_n_0\ : STD_LOGIC;
  signal \uo[4]_i_6_n_0\ : STD_LOGIC;
  signal \uo[4]_i_7_n_0\ : STD_LOGIC;
  signal \uo[4]_i_8_n_0\ : STD_LOGIC;
  signal \uo[4]_i_9_n_0\ : STD_LOGIC;
  signal \uo[5]_i_10_n_0\ : STD_LOGIC;
  signal \uo[5]_i_11_n_0\ : STD_LOGIC;
  signal \uo[5]_i_14_n_0\ : STD_LOGIC;
  signal \uo[5]_i_15_n_0\ : STD_LOGIC;
  signal \uo[5]_i_16_n_0\ : STD_LOGIC;
  signal \uo[5]_i_17_n_0\ : STD_LOGIC;
  signal \uo[5]_i_18_n_0\ : STD_LOGIC;
  signal \uo[5]_i_3_n_0\ : STD_LOGIC;
  signal \uo[5]_i_4_n_0\ : STD_LOGIC;
  signal \uo[5]_i_5_n_0\ : STD_LOGIC;
  signal \uo[5]_i_6_n_0\ : STD_LOGIC;
  signal \uo[5]_i_8_n_0\ : STD_LOGIC;
  signal \uo[5]_i_9_n_0\ : STD_LOGIC;
  signal \uo[6]_i_11_n_0\ : STD_LOGIC;
  signal \uo[6]_i_12_n_0\ : STD_LOGIC;
  signal \uo[6]_i_13_n_0\ : STD_LOGIC;
  signal \uo[6]_i_14_n_0\ : STD_LOGIC;
  signal \uo[6]_i_3_n_0\ : STD_LOGIC;
  signal \uo[6]_i_4_n_0\ : STD_LOGIC;
  signal \uo[6]_i_5_n_0\ : STD_LOGIC;
  signal \uo[6]_i_6_n_0\ : STD_LOGIC;
  signal \uo[6]_i_7_n_0\ : STD_LOGIC;
  signal \uo[6]_i_8_n_0\ : STD_LOGIC;
  signal \uo[6]_i_9_n_0\ : STD_LOGIC;
  signal \uo[7]_i_109_n_0\ : STD_LOGIC;
  signal \uo[7]_i_10_n_0\ : STD_LOGIC;
  signal \uo[7]_i_11_n_0\ : STD_LOGIC;
  signal \uo[7]_i_12_n_0\ : STD_LOGIC;
  signal \uo[7]_i_13_n_0\ : STD_LOGIC;
  signal \uo[7]_i_15_n_0\ : STD_LOGIC;
  signal \uo[7]_i_16_n_0\ : STD_LOGIC;
  signal \uo[7]_i_17_n_0\ : STD_LOGIC;
  signal \uo[7]_i_18_n_0\ : STD_LOGIC;
  signal \uo[7]_i_20_n_0\ : STD_LOGIC;
  signal \uo[7]_i_21_n_0\ : STD_LOGIC;
  signal \uo[7]_i_22_n_0\ : STD_LOGIC;
  signal \uo[7]_i_23_n_0\ : STD_LOGIC;
  signal \uo[7]_i_24_n_0\ : STD_LOGIC;
  signal \uo[7]_i_25_n_0\ : STD_LOGIC;
  signal \uo[7]_i_26_n_0\ : STD_LOGIC;
  signal \uo[7]_i_27_n_0\ : STD_LOGIC;
  signal \uo[7]_i_28_n_0\ : STD_LOGIC;
  signal \uo[7]_i_29_n_0\ : STD_LOGIC;
  signal \uo[7]_i_30_n_0\ : STD_LOGIC;
  signal \uo[7]_i_31_n_0\ : STD_LOGIC;
  signal \uo[7]_i_32_n_0\ : STD_LOGIC;
  signal \uo[7]_i_33_n_0\ : STD_LOGIC;
  signal \uo[7]_i_34_n_0\ : STD_LOGIC;
  signal \uo[7]_i_35_n_0\ : STD_LOGIC;
  signal \uo[7]_i_36_n_0\ : STD_LOGIC;
  signal \uo[7]_i_37_n_0\ : STD_LOGIC;
  signal \uo[7]_i_38_n_0\ : STD_LOGIC;
  signal \uo[7]_i_39_n_0\ : STD_LOGIC;
  signal \uo[7]_i_40_n_0\ : STD_LOGIC;
  signal \uo[7]_i_41_n_0\ : STD_LOGIC;
  signal \uo[7]_i_4_n_0\ : STD_LOGIC;
  signal \uo[7]_i_5_n_0\ : STD_LOGIC;
  signal \uo[7]_i_6_n_0\ : STD_LOGIC;
  signal \uo[7]_i_7_n_0\ : STD_LOGIC;
  signal \uo[7]_i_8_n_0\ : STD_LOGIC;
  signal \uo_reg[7]_i_19_n_1\ : STD_LOGIC;
  signal \uo_reg[7]_i_19_n_2\ : STD_LOGIC;
  signal \uo_reg[7]_i_19_n_3\ : STD_LOGIC;
  signal up_edge : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \up_edge[6]_i_1_n_0\ : STD_LOGIC;
  signal \up_edge[6]_i_2_n_0\ : STD_LOGIC;
  signal \up_edge[6]_i_3_n_0\ : STD_LOGIC;
  signal \up_edge[6]_i_4_n_0\ : STD_LOGIC;
  signal \up_edge[6]_i_5_n_0\ : STD_LOGIC;
  signal \^uq\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \uq[3]_i_1_n_0\ : STD_LOGIC;
  signal w_first : STD_LOGIC;
  signal \^w_real\ : STD_LOGIC;
  signal w_real_i_3_n_0 : STD_LOGIC;
  signal w_real_i_4_n_0 : STD_LOGIC;
  signal \NLW_l_bot_reg[6]_i_15_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_l_bot_reg[6]_i_16_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_l_bot_reg[6]_i_16_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_l_bot_reg[6]_i_17_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_l_bot_reg[6]_i_18_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_l_bot_reg[6]_i_18_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_l_bot_reg[6]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_l_bot_reg[6]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_l_bot_reg[6]_i_55_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_left_sr_reg[5]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_left_sr_reg[5]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_right_sr_reg[43]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_right_sr_reg[43]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_right_sr_reg[5]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_right_sr_reg[5]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_sec_reg[7]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sec_reg[7]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[7]_i_19_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of act_i_1 : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \best_s[0]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \best_s[1]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \best_s[2]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \best_s[3]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \best_s[4]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \best_s[5]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \best_s[6]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \best_s[6]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \best_s[7]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \dn_edge[6]_i_2\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \dn_edge[6]_i_5\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \ftype[1]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \ftype[2]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \ftype[2]_i_2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \l_bot[3]_i_11\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \l_bot[3]_i_14\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \l_bot[6]_i_19\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \l_bot[6]_i_20\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \l_bot[6]_i_21\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \l_bot[6]_i_23\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \l_bot[6]_i_24\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \l_bot[6]_i_25\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \l_bot[6]_i_26\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \l_bot[6]_i_27\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \l_bot[6]_i_56\ : label is "soft_lutpair8";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \l_bot_reg[6]_i_15\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \l_bot_reg[6]_i_17\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \l_bot_reg[6]_i_55\ : label is 11;
  attribute SOFT_HLUTNM of \left_sr[0]_i_2\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \left_sr[11]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \left_sr[13]_i_2\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \left_sr[15]_i_2\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \left_sr[21]_i_2\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \left_sr[23]_i_2\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \left_sr[25]_i_2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \left_sr[27]_i_2\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \left_sr[29]_i_2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \left_sr[2]_i_2\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \left_sr[31]_i_2\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \left_sr[32]_i_3\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \left_sr[32]_i_5\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \left_sr[32]_i_6\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \left_sr[33]_i_5\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \left_sr[35]_i_2\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \left_sr[35]_i_3\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \left_sr[37]_i_2\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \left_sr[37]_i_3\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \left_sr[37]_i_6\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \left_sr[37]_i_7\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \left_sr[38]_i_2\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \left_sr[38]_i_3\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \left_sr[39]_i_2\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \left_sr[39]_i_3\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \left_sr[39]_i_4\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \left_sr[39]_i_5\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \left_sr[39]_i_8\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \left_sr[3]_i_2\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \left_sr[40]_i_3\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \left_sr[41]_i_2\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \left_sr[41]_i_3\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \left_sr[42]_i_2\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \left_sr[42]_i_3\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \left_sr[42]_i_7\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \left_sr[42]_i_8\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \left_sr[43]_i_15\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \left_sr[43]_i_16\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \left_sr[43]_i_17\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \left_sr[43]_i_19\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \left_sr[43]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \left_sr[43]_i_4\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \left_sr[44]_i_8\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \left_sr[4]_i_2\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \left_sr[7]_i_2\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \left_sr[9]_i_2\ : label is "soft_lutpair41";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \left_sr_reg[43]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \left_sr_reg[44]_i_4\ : label is 35;
  attribute ADDER_THRESHOLD of \left_sr_reg[5]_i_3\ : label is 35;
  attribute SOFT_HLUTNM of \lmin[0]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \lmin[1]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \lmin[2]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \lmin[3]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \lmin[4]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \lmin[5]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \lmin[6]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \lmin[6]_i_2\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \m_s0[6]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \m_s0[6]_i_3\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \m_s0[6]_i_5\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \m_s2[6]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \m_s2[6]_i_4\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \m_s2[6]_i_5\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \m_s2[6]_i_6\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \m_sec[7]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \n[0]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \n[1]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \n[2]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of own_wins_i_1 : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \ph[1]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \ph[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \ph[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \ph[5]_i_4\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \pos[0]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \pos[1]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \rec[0][14]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rec[10][14]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \rec[11][14]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \rec[12][14]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rec[13][14]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rec[14][14]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rec[15][14]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \rec[1][14]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rec[2][14]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rec[3][14]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \rec[4][14]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \rec[5][14]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \rec[6][14]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \rec[7][14]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \rec[8][14]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \rec[9][14]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \rec_in[14]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \rec_in[14]_i_4\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \right_sr[0]_i_2\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \right_sr[11]_i_2\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \right_sr[13]_i_2\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \right_sr[15]_i_2\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \right_sr[21]_i_2\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \right_sr[23]_i_2\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \right_sr[25]_i_2\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \right_sr[27]_i_2\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \right_sr[29]_i_2\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \right_sr[2]_i_2\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \right_sr[31]_i_2\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \right_sr[32]_i_3\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \right_sr[32]_i_5\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \right_sr[32]_i_6\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \right_sr[33]_i_5\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \right_sr[35]_i_2\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \right_sr[35]_i_3\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \right_sr[37]_i_2\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \right_sr[37]_i_3\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \right_sr[37]_i_6\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \right_sr[37]_i_7\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \right_sr[38]_i_2\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \right_sr[38]_i_3\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \right_sr[39]_i_2\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \right_sr[39]_i_3\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \right_sr[39]_i_4\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \right_sr[39]_i_5\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \right_sr[39]_i_8\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \right_sr[3]_i_2\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \right_sr[40]_i_3\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \right_sr[41]_i_2\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \right_sr[41]_i_3\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \right_sr[42]_i_2\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \right_sr[42]_i_3\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \right_sr[42]_i_7\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \right_sr[42]_i_8\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \right_sr[43]_i_2\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \right_sr[43]_i_4\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \right_sr[44]_i_22\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \right_sr[44]_i_8\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \right_sr[4]_i_2\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \right_sr[7]_i_2\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \right_sr[9]_i_2\ : label is "soft_lutpair50";
  attribute ADDER_THRESHOLD of \right_sr_reg[43]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \right_sr_reg[43]_i_6\ : label is 35;
  attribute ADDER_THRESHOLD of \right_sr_reg[44]_i_10\ : label is 35;
  attribute ADDER_THRESHOLD of \right_sr_reg[44]_i_4\ : label is 35;
  attribute ADDER_THRESHOLD of \right_sr_reg[5]_i_3\ : label is 35;
  attribute SOFT_HLUTNM of \rin_s[7]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \rin_s[7]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \rin_s[7]_i_3\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \rs_ok[15]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of run_i_2 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \s0[6]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \s0[6]_i_2\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \s0[6]_i_4\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \s0[6]_i_5\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \s0[7]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \s2[6]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \s2[6]_i_2\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \s2[6]_i_7\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \s2[7]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \sec[7]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \sec[7]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \sec[7]_i_31\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \sec[7]_i_32\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \sec[7]_i_33\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \sec[7]_i_34\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \sec[7]_i_36\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \sec[7]_i_40\ : label is "soft_lutpair24";
  attribute COMPARATOR_THRESHOLD of \sec_reg[7]_i_4\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \sec_reg[7]_i_5\ : label is 11;
  attribute SOFT_HLUTNM of sg_real_i_1 : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of sg_use_i_1 : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \uc[0]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \uc[1]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \uc[2]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \uc[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \uc[5]_i_2\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \uc[5]_i_3\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \uo[0]_i_13\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \uo[0]_i_15\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \uo[0]_i_2\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \uo[0]_i_4\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \uo[0]_i_6\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \uo[1]_i_11\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \uo[1]_i_3\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \uo[1]_i_5\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \uo[2]_i_11\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \uo[2]_i_4\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \uo[2]_i_6\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \uo[3]_i_17\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \uo[3]_i_18\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \uo[3]_i_4\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \uo[3]_i_6\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \uo[4]_i_10\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \uo[4]_i_4\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \uo[4]_i_5\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \uo[5]_i_13\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \uo[5]_i_16\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \uo[5]_i_18\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \uo[6]_i_10\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \uo[6]_i_11\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \uo[6]_i_12\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \uo[7]_i_13\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \uo[7]_i_15\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \uo[7]_i_22\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \uo[7]_i_25\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \uo[7]_i_29\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \uo[7]_i_30\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \uo[7]_i_39\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \uo[7]_i_40\ : label is "soft_lutpair33";
  attribute COMPARATOR_THRESHOLD of \uo_reg[7]_i_19\ : label is 11;
  attribute SOFT_HLUTNM of \up_edge[6]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \up_edge[6]_i_3\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of w_real_i_4 : label is "soft_lutpair40";
begin
  O(1 downto 0) <= \^o\(1 downto 0);
  SR(1 downto 0) <= \^sr\(1 downto 0);
  b_first <= \^b_first\;
  b_real <= \^b_real\;
  b_use <= \^b_use\;
  \gmin_reg[6]_0\(5 downto 0) <= \^gmin_reg[6]_0\(5 downto 0);
  in_left(44 downto 0) <= \^in_left\(44 downto 0);
  in_right(44 downto 0) <= \^in_right\(44 downto 0);
  \l_bot[6]_i_14_0\(0) <= \^l_bot[6]_i_14_0\(0);
  \l_bot[6]_i_14_1\(0) <= \^l_bot[6]_i_14_1\(0);
  \l_bot[6]_i_35\(0) <= \^l_bot[6]_i_35\(0);
  l_new(5 downto 0) <= \^l_new\(5 downto 0);
  load <= \^load\;
  \pos_reg[0]_0\ <= \^pos_reg[0]_0\;
  \pos_reg[0]_1\ <= \^pos_reg[0]_1\;
  \pos_reg[2]_1\ <= \^pos_reg[2]_1\;
  run <= \^run\;
  scan <= \^scan\;
  \uc_reg[3]_0\(3 downto 0) <= \^uc_reg[3]_0\(3 downto 0);
  \uc_reg[4]_0\ <= \^uc_reg[4]_0\;
  uq(3 downto 0) <= \^uq\(3 downto 0);
  w_real <= \^w_real\;
act_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F800"
    )
        port map (
      I0 => act,
      I1 => act_i_2_n_0,
      I2 => \^load\,
      I3 => \rec_in_reg[6]\(0),
      O => act_i_1_n_0
    );
act_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFDFFFF"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => ph(1),
      I3 => ph(0),
      I4 => \ftype[2]_i_2_n_0\,
      I5 => p_0_in(2),
      O => act_i_2_n_0
    );
act_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => act_i_1_n_0,
      Q => act,
      R => '0'
    );
b_first_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^load\,
      D => w_first,
      Q => \^b_first\,
      R => '0'
    );
b_real_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^load\,
      D => \^w_real\,
      Q => \^b_real\,
      R => \^sr\(1)
    );
b_use_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^load\,
      D => sg_use,
      Q => \^b_use\,
      R => '0'
    );
b_v_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sg_first,
      O => b_v_i_1_n_0
    );
b_v_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^load\,
      D => b_v_i_1_n_0,
      Q => b_v,
      R => \^sr\(1)
    );
\best_j[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080000"
    )
        port map (
      I0 => \best_s_reg[6]\(0),
      I1 => \^b_real\,
      I2 => uc(5),
      I3 => uc(6),
      I4 => act,
      I5 => uc(4),
      O => b_real_reg_17(0)
    );
\best_s[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^l_new\(0),
      I1 => \best_s_reg[6]\(0),
      I2 => \^b_real\,
      I3 => \^scan\,
      O => b_real_reg_11
    );
\best_s[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^l_new\(1),
      I1 => \best_s_reg[6]\(0),
      I2 => \^b_real\,
      I3 => \^scan\,
      O => b_real_reg_12
    );
\best_s[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^l_new\(2),
      I1 => \best_s_reg[6]\(0),
      I2 => \^b_real\,
      I3 => \^scan\,
      O => b_real_reg_13
    );
\best_s[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^l_new\(3),
      I1 => \best_s_reg[6]\(0),
      I2 => \^b_real\,
      I3 => \^scan\,
      O => b_real_reg_14
    );
\best_s[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^l_new\(4),
      I1 => \best_s_reg[6]\(0),
      I2 => \^b_real\,
      I3 => \^scan\,
      O => b_real_reg_15
    );
\best_s[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \lmin_reg[5]\(0),
      I1 => \best_s_reg[6]\(0),
      I2 => \^b_real\,
      I3 => \^scan\,
      O => b_real_reg_16
    );
\best_s[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F00"
    )
        port map (
      I0 => \^scan\,
      I1 => \^b_real\,
      I2 => \best_s_reg[6]\(0),
      I3 => \^load\,
      O => b_real_reg_18
    );
\best_s[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => \^load\,
      I1 => \best_s_reg[6]\(0),
      I2 => \^b_real\,
      I3 => \^scan\,
      O => b_real_reg_2
    );
\best_s[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000FF00EF"
    )
        port map (
      I0 => \^o\(1),
      I1 => \^l_bot[6]_i_14_0\(0),
      I2 => \^l_bot[6]_i_14_1\(0),
      I3 => \^b_first\,
      I4 => \l_bot_reg[6]_i_3_n_5\,
      I5 => \best_s[6]_i_4_n_0\,
      O => b_first_reg_0
    );
\best_s[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFFFFFFFFFF"
    )
        port map (
      I0 => uc(4),
      I1 => act,
      I2 => uc(6),
      I3 => uc(5),
      I4 => \^b_real\,
      I5 => \best_s_reg[6]\(0),
      O => \best_s[6]_i_4_n_0\
    );
\best_s[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3FFF2AAA"
    )
        port map (
      I0 => best_s(7),
      I1 => \^scan\,
      I2 => \^b_real\,
      I3 => \best_s_reg[6]\(0),
      I4 => \^load\,
      O => \best_s_reg[7]\
    );
\carry_rec[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAAFFFFBAAA0000"
    )
        port map (
      I0 => \carry_rec_reg[0]\,
      I1 => \^uc_reg[3]_0\(3),
      I2 => \^uc_reg[3]_0\(2),
      I3 => \carry_rec_reg[0]_0\,
      I4 => \rec[0][14]_i_3_n_0\,
      I5 => \carry_rec_reg[14]_1\(0),
      O => \uc_reg[3]_3\(0)
    );
\carry_rec[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAAFFFFBAAA0000"
    )
        port map (
      I0 => \carry_rec_reg[10]_0\,
      I1 => \^uc_reg[3]_0\(3),
      I2 => \^uc_reg[3]_0\(2),
      I3 => \carry_rec_reg[10]_1\,
      I4 => \rec[0][14]_i_3_n_0\,
      I5 => \carry_rec_reg[14]_1\(10),
      O => \uc_reg[3]_3\(10)
    );
\carry_rec[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAAFFFFBAAA0000"
    )
        port map (
      I0 => \carry_rec_reg[11]\,
      I1 => \^uc_reg[3]_0\(3),
      I2 => \^uc_reg[3]_0\(2),
      I3 => \carry_rec_reg[11]_0\,
      I4 => \rec[0][14]_i_3_n_0\,
      I5 => \carry_rec_reg[14]_1\(11),
      O => \uc_reg[3]_3\(11)
    );
\carry_rec[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAAFFFFBAAA0000"
    )
        port map (
      I0 => \carry_rec_reg[12]\,
      I1 => \^uc_reg[3]_0\(3),
      I2 => \^uc_reg[3]_0\(2),
      I3 => \carry_rec_reg[12]_0\,
      I4 => \rec[0][14]_i_3_n_0\,
      I5 => \carry_rec_reg[14]_1\(12),
      O => \uc_reg[3]_3\(12)
    );
\carry_rec[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAFFFFEAAA0000"
    )
        port map (
      I0 => \carry_rec_reg[13]\,
      I1 => \^uc_reg[3]_0\(2),
      I2 => \^uc_reg[3]_0\(3),
      I3 => \carry_rec_reg[13]_0\,
      I4 => \rec[0][14]_i_3_n_0\,
      I5 => \carry_rec_reg[14]_1\(13),
      O => \uc_reg[3]_3\(13)
    );
\carry_rec[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAEAA"
    )
        port map (
      I0 => \^load\,
      I1 => b_v,
      I2 => uc(4),
      I3 => act,
      I4 => uc(6),
      I5 => uc(5),
      O => b_v_reg_0(0)
    );
\carry_rec[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAAFFFFBAAA0000"
    )
        port map (
      I0 => \carry_rec_reg[14]\,
      I1 => \^uc_reg[3]_0\(3),
      I2 => \^uc_reg[3]_0\(2),
      I3 => \carry_rec_reg[14]_0\,
      I4 => \rec[0][14]_i_3_n_0\,
      I5 => \carry_rec_reg[14]_1\(14),
      O => \uc_reg[3]_3\(14)
    );
\carry_rec[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAFFFFEAAA0000"
    )
        port map (
      I0 => \carry_rec_reg[1]\,
      I1 => \^uc_reg[3]_0\(2),
      I2 => \^uc_reg[3]_0\(3),
      I3 => \carry_rec_reg[1]_0\,
      I4 => \rec[0][14]_i_3_n_0\,
      I5 => \carry_rec_reg[14]_1\(1),
      O => \uc_reg[3]_3\(1)
    );
\carry_rec[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAFFFFEAAA0000"
    )
        port map (
      I0 => \carry_rec_reg[2]\,
      I1 => \^uc_reg[3]_0\(2),
      I2 => \^uc_reg[3]_0\(3),
      I3 => \carry_rec_reg[2]_0\,
      I4 => \rec[0][14]_i_3_n_0\,
      I5 => \carry_rec_reg[14]_1\(2),
      O => \uc_reg[3]_3\(2)
    );
\carry_rec[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAAFFFFBAAA0000"
    )
        port map (
      I0 => \carry_rec_reg[3]\,
      I1 => \^uc_reg[3]_0\(3),
      I2 => \^uc_reg[3]_0\(2),
      I3 => \carry_rec_reg[3]_0\,
      I4 => \rec[0][14]_i_3_n_0\,
      I5 => \carry_rec_reg[14]_1\(3),
      O => \uc_reg[3]_3\(3)
    );
\carry_rec[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAAFFFFBAAA0000"
    )
        port map (
      I0 => \carry_rec_reg[4]\,
      I1 => \^uc_reg[3]_0\(3),
      I2 => \^uc_reg[3]_0\(2),
      I3 => \carry_rec_reg[4]_0\,
      I4 => \rec[0][14]_i_3_n_0\,
      I5 => \carry_rec_reg[14]_1\(4),
      O => \uc_reg[3]_3\(4)
    );
\carry_rec[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAAFFFFBAAA0000"
    )
        port map (
      I0 => \carry_rec_reg[5]\,
      I1 => \^uc_reg[3]_0\(3),
      I2 => \^uc_reg[3]_0\(2),
      I3 => \carry_rec_reg[5]_0\,
      I4 => \rec[0][14]_i_3_n_0\,
      I5 => \carry_rec_reg[14]_1\(5),
      O => \uc_reg[3]_3\(5)
    );
\carry_rec[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAAFFFFBAAA0000"
    )
        port map (
      I0 => \carry_rec_reg[6]\,
      I1 => \^uc_reg[3]_0\(3),
      I2 => \^uc_reg[3]_0\(2),
      I3 => \carry_rec_reg[6]_0\,
      I4 => \rec[0][14]_i_3_n_0\,
      I5 => \carry_rec_reg[14]_1\(6),
      O => \uc_reg[3]_3\(6)
    );
\carry_rec[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAAFFFFBAAA0000"
    )
        port map (
      I0 => \carry_rec_reg[7]\,
      I1 => \^uc_reg[3]_0\(3),
      I2 => \^uc_reg[3]_0\(2),
      I3 => \carry_rec_reg[7]_0\,
      I4 => \rec[0][14]_i_3_n_0\,
      I5 => \carry_rec_reg[14]_1\(7),
      O => \uc_reg[3]_3\(7)
    );
\carry_rec[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAAFFFFBAAA0000"
    )
        port map (
      I0 => \carry_rec_reg[8]\,
      I1 => \^uc_reg[3]_0\(3),
      I2 => \^uc_reg[3]_0\(2),
      I3 => \carry_rec_reg[8]_0\,
      I4 => \rec[0][14]_i_3_n_0\,
      I5 => \carry_rec_reg[14]_1\(8),
      O => \uc_reg[3]_3\(8)
    );
\carry_rec[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAAFFFFBAAA0000"
    )
        port map (
      I0 => \carry_rec_reg[9]\,
      I1 => \^uc_reg[3]_0\(3),
      I2 => \^uc_reg[3]_0\(2),
      I3 => \carry_rec_reg[9]_0\,
      I4 => \rec[0][14]_i_3_n_0\,
      I5 => \carry_rec_reg[14]_1\(9),
      O => \uc_reg[3]_3\(9)
    );
\dn_edge[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000008FFFFFFFF"
    )
        port map (
      I0 => \uo[7]_i_8_n_0\,
      I1 => \dn_edge[6]_i_3_n_0\,
      I2 => pos(0),
      I3 => pos(1),
      I4 => pos(2),
      I5 => \rec_in_reg[6]\(0),
      O => SS(0)
    );
\dn_edge[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \uo[7]_i_8_n_0\,
      I1 => \dn_edge[6]_i_3_n_0\,
      O => run_reg_2(0)
    );
\dn_edge[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004804004"
    )
        port map (
      I0 => \uo[7]_i_17_n_0\,
      I1 => \dn_edge[6]_i_4_n_0\,
      I2 => \uo[7]_i_18_n_0\,
      I3 => \dn_edge[6]_i_5_n_0\,
      I4 => n(2),
      I5 => \m_sec[7]_i_4_n_0\,
      O => \dn_edge[6]_i_3_n_0\
    );
\dn_edge[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0060900090000060"
    )
        port map (
      I0 => n(1),
      I1 => \^pos_reg[0]_0\,
      I2 => \m_s2[6]_i_3_n_0\,
      I3 => n(0),
      I4 => pos(0),
      I5 => \^uc_reg[3]_0\(0),
      O => \dn_edge[6]_i_4_n_0\
    );
\dn_edge[6]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => n(1),
      I1 => n(0),
      O => \dn_edge[6]_i_5_n_0\
    );
\ftype[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0200"
    )
        port map (
      I0 => p_0_in(0),
      I1 => ph(1),
      I2 => ph(0),
      I3 => \ftype[2]_i_2_n_0\,
      I4 => ftype(0),
      O => \ftype[0]_i_1_n_0\
    );
\ftype[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0200"
    )
        port map (
      I0 => p_0_in(1),
      I1 => ph(1),
      I2 => ph(0),
      I3 => \ftype[2]_i_2_n_0\,
      I4 => ftype(1),
      O => \ftype[1]_i_1_n_0\
    );
\ftype[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0200"
    )
        port map (
      I0 => p_0_in(2),
      I1 => ph(1),
      I2 => ph(0),
      I3 => \ftype[2]_i_2_n_0\,
      I4 => ftype(2),
      O => \ftype[2]_i_1_n_0\
    );
\ftype[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => ph(2),
      I1 => ph(4),
      I2 => ph(5),
      I3 => ph(6),
      I4 => ph(3),
      O => \ftype[2]_i_2_n_0\
    );
\ftype_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \ftype[0]_i_1_n_0\,
      Q => ftype(0),
      R => \^sr\(1)
    );
\ftype_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \ftype[1]_i_1_n_0\,
      Q => ftype(1),
      R => \^sr\(1)
    );
\ftype_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \ftype[2]_i_1_n_0\,
      Q => ftype(2),
      R => \^sr\(1)
    );
\gmin[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000000"
    )
        port map (
      I0 => ftype(0),
      I1 => ftype(1),
      I2 => ftype(2),
      I3 => \ftype[2]_i_2_n_0\,
      I4 => ph(0),
      I5 => ph(1),
      O => \gmin[6]_i_1_n_0\
    );
\gmin_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gmin[6]_i_1_n_0\,
      D => \ui_r_reg_n_0_[0]\,
      Q => gmin(0),
      R => '0'
    );
\gmin_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gmin[6]_i_1_n_0\,
      D => \ui_r_reg_n_0_[1]\,
      Q => gmin(1),
      R => '0'
    );
\gmin_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gmin[6]_i_1_n_0\,
      D => \ui_r_reg_n_0_[2]\,
      Q => gmin(2),
      R => '0'
    );
\gmin_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gmin[6]_i_1_n_0\,
      D => \ui_r_reg_n_0_[3]\,
      Q => gmin(3),
      R => '0'
    );
\gmin_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gmin[6]_i_1_n_0\,
      D => p_0_in(0),
      Q => gmin(4),
      R => '0'
    );
\gmin_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gmin[6]_i_1_n_0\,
      D => p_0_in(1),
      Q => gmin(5),
      R => '0'
    );
\gmin_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gmin[6]_i_1_n_0\,
      D => p_0_in(2),
      Q => gmin(6),
      R => '0'
    );
hist_reg_0_15_0_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => uc(4),
      I1 => act,
      I2 => uc(6),
      I3 => uc(5),
      O => \^scan\
    );
hn_first_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \ui_r_reg_n_0_[0]\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => run_i_2_n_0,
      I4 => p_0_in(2),
      I5 => hn_first,
      O => hn_first_i_1_n_0
    );
hn_first_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => hn_first_i_1_n_0,
      Q => hn_first,
      R => '0'
    );
hn_real_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \ui_r_reg_n_0_[1]\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => run_i_2_n_0,
      I4 => p_0_in(2),
      I5 => hn_real,
      O => hn_real_i_1_n_0
    );
hn_real_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => hn_real_i_1_n_0,
      Q => hn_real,
      R => '0'
    );
hn_use_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \ui_r_reg_n_0_[2]\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => run_i_2_n_0,
      I4 => p_0_in(2),
      I5 => hn_use,
      O => hn_use_i_1_n_0
    );
hn_use_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => hn_use_i_1_n_0,
      Q => hn_use,
      R => '0'
    );
\kstar[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => ftype(0),
      I1 => ftype(1),
      I2 => ftype(2),
      I3 => \ftype[2]_i_2_n_0\,
      I4 => ph(0),
      I5 => ph(1),
      O => \kstar[6]_i_1_n_0\
    );
\kstar_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \kstar[6]_i_1_n_0\,
      D => \ui_r_reg_n_0_[0]\,
      Q => kstar(0),
      R => '0'
    );
\kstar_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \kstar[6]_i_1_n_0\,
      D => \ui_r_reg_n_0_[1]\,
      Q => kstar(1),
      R => '0'
    );
\kstar_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \kstar[6]_i_1_n_0\,
      D => \ui_r_reg_n_0_[2]\,
      Q => kstar(2),
      R => '0'
    );
\kstar_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \kstar[6]_i_1_n_0\,
      D => \ui_r_reg_n_0_[3]\,
      Q => kstar(3),
      R => '0'
    );
\kstar_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \kstar[6]_i_1_n_0\,
      D => p_0_in(0),
      Q => kstar(4),
      R => '0'
    );
\kstar_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \kstar[6]_i_1_n_0\,
      D => p_0_in(1),
      Q => kstar(5),
      R => '0'
    );
\kstar_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \kstar[6]_i_1_n_0\,
      D => p_0_in(2),
      Q => kstar(6),
      R => '0'
    );
\l_bot[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF0000FFEF"
    )
        port map (
      I0 => \^o\(1),
      I1 => \^l_bot[6]_i_14_0\(0),
      I2 => \^l_bot[6]_i_14_1\(0),
      I3 => \l_bot_reg[3]_i_2_n_7\,
      I4 => \^b_first\,
      I5 => cost(0),
      O => \^l_new\(0)
    );
\l_bot[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFEFFFEF"
    )
        port map (
      I0 => \^o\(1),
      I1 => \^l_bot[6]_i_14_0\(0),
      I2 => \^l_bot[6]_i_14_1\(0),
      I3 => \l_bot_reg[3]_i_2_n_6\,
      I4 => cost(1),
      I5 => \^b_first\,
      O => \^l_new\(1)
    );
\l_bot[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFEFFFEF"
    )
        port map (
      I0 => \^o\(1),
      I1 => \^l_bot[6]_i_14_0\(0),
      I2 => \^l_bot[6]_i_14_1\(0),
      I3 => \l_bot_reg[3]_i_2_n_5\,
      I4 => cost(2),
      I5 => \^b_first\,
      O => \^l_new\(2)
    );
\l_bot[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFEFFFEF"
    )
        port map (
      I0 => \^o\(1),
      I1 => \^l_bot[6]_i_14_0\(0),
      I2 => \^l_bot[6]_i_14_1\(0),
      I3 => \l_bot_reg[3]_i_2_n_4\,
      I4 => cost(3),
      I5 => \^b_first\,
      O => \^l_new\(3)
    );
\l_bot[3]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => a(1),
      I1 => \^l_bot[6]_i_35\(0),
      I2 => \^gmin_reg[6]_0\(1),
      O => \u_path/a\(1)
    );
\l_bot[3]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => a(2),
      I1 => \^l_bot[6]_i_35\(0),
      I2 => \^gmin_reg[6]_0\(2),
      I3 => \u_path/min9_return1\,
      I4 => \u_path/b\(2),
      O => \u_path/p_0_in\(2)
    );
\l_bot[3]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => a(1),
      I1 => \^l_bot[6]_i_35\(0),
      I2 => \^gmin_reg[6]_0\(1),
      I3 => \u_path/min9_return1\,
      I4 => \u_path/b\(1),
      O => \u_path/p_0_in\(1)
    );
\l_bot[3]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => a(0),
      I1 => \^l_bot[6]_i_35\(0),
      I2 => \^gmin_reg[6]_0\(0),
      O => \u_path/a\(0)
    );
\l_bot[3]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => gmin(3),
      I1 => p2(3),
      O => \l_bot[3]_i_16_n_0\
    );
\l_bot[3]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => gmin(2),
      I1 => p2(2),
      O => \l_bot[3]_i_17_n_0\
    );
\l_bot[3]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => gmin(1),
      I1 => p2(1),
      O => \l_bot[3]_i_18_n_0\
    );
\l_bot[3]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => gmin(0),
      I1 => p2(0),
      O => \l_bot[3]_i_19_n_0\
    );
\l_bot[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B2BBB222"
    )
        port map (
      I0 => cost(2),
      I1 => gmin(2),
      I2 => \l_bot_reg[3]_i_2_0\(0),
      I3 => \u_path/min9_return1\,
      I4 => \u_path/b\(2),
      O => \l_bot[3]_i_3_n_0\
    );
\l_bot[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B2BBB222"
    )
        port map (
      I0 => cost(1),
      I1 => gmin(1),
      I2 => \u_path/a\(1),
      I3 => \u_path/min9_return1\,
      I4 => \u_path/b\(1),
      O => \l_bot[3]_i_4_n_0\
    );
\l_bot[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2EEE222FFFFFFFF"
    )
        port map (
      I0 => \u_path/b\(0),
      I1 => \u_path/min9_return1\,
      I2 => a(0),
      I3 => \^l_bot[6]_i_35\(0),
      I4 => \^gmin_reg[6]_0\(0),
      I5 => gmin(0),
      O => \l_bot[3]_i_5_n_0\
    );
\l_bot[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => \u_path/p_0_in\(2),
      I1 => gmin(2),
      I2 => cost(2),
      I3 => cost(3),
      I4 => \u_path/p_0_in\(3),
      I5 => gmin(3),
      O => \l_bot[3]_i_6_n_0\
    );
\l_bot[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => \u_path/p_0_in\(1),
      I1 => gmin(1),
      I2 => cost(1),
      I3 => cost(2),
      I4 => \u_path/p_0_in\(2),
      I5 => gmin(2),
      O => \l_bot[3]_i_7_n_0\
    );
\l_bot[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9996669666699969"
    )
        port map (
      I0 => \l_bot[3]_i_5_n_0\,
      I1 => cost(1),
      I2 => \u_path/b\(1),
      I3 => \u_path/min9_return1\,
      I4 => \u_path/a\(1),
      I5 => gmin(1),
      O => \l_bot[3]_i_8_n_0\
    );
\l_bot[3]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9A95656A"
    )
        port map (
      I0 => gmin(0),
      I1 => \u_path/a\(0),
      I2 => \u_path/min9_return1\,
      I3 => \u_path/b\(0),
      I4 => cost(0),
      O => \l_bot[3]_i_9_n_0\
    );
\l_bot[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFEFFFEF"
    )
        port map (
      I0 => \^o\(1),
      I1 => \^l_bot[6]_i_14_0\(0),
      I2 => \^l_bot[6]_i_14_1\(0),
      I3 => \l_bot_reg[6]_i_3_n_7\,
      I4 => cost(4),
      I5 => \^b_first\,
      O => \^l_new\(4)
    );
\l_bot[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \^uc_reg[3]_0\(2),
      I1 => \^uc_reg[3]_0\(3),
      I2 => \^uc_reg[3]_0\(0),
      I3 => \^uc_reg[3]_0\(1),
      I4 => \^scan\,
      I5 => \^b_real\,
      O => \uc_reg[2]_3\(0)
    );
\l_bot[6]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B24D4DB2"
    )
        port map (
      I0 => \u_path/p_0_in\(5),
      I1 => gmin(5),
      I2 => cost(5),
      I3 => gmin(6),
      I4 => \l_bot[6]_i_25_n_0\,
      O => \l_bot[6]_i_10_n_0\
    );
\l_bot[6]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => \u_path/p_0_in\(4),
      I1 => gmin(4),
      I2 => cost(4),
      I3 => cost(5),
      I4 => \u_path/p_0_in\(5),
      I5 => gmin(5),
      O => \l_bot[6]_i_11_n_0\
    );
\l_bot[6]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => \u_path/p_0_in\(3),
      I1 => gmin(3),
      I2 => cost(3),
      I3 => cost(4),
      I4 => \u_path/p_0_in\(4),
      I5 => gmin(4),
      O => \l_bot[6]_i_12_n_0\
    );
\l_bot[6]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22E2"
    )
        port map (
      I0 => \u_path/b\(7),
      I1 => \u_path/min9_return1\,
      I2 => \u_path/b2_out\(7),
      I3 => \^l_bot[6]_i_35\(0),
      O => \u_path/p_0_in__0\(7)
    );
\l_bot[6]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B0BF"
    )
        port map (
      I0 => \^l_bot[6]_i_35\(0),
      I1 => \u_path/b2_out\(7),
      I2 => \u_path/min9_return1\,
      I3 => \u_path/b\(7),
      O => \l_bot[6]_i_14_n_0\
    );
\l_bot[6]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => a(5),
      I1 => \^l_bot[6]_i_35\(0),
      I2 => \^gmin_reg[6]_0\(5),
      O => \u_path/a\(5)
    );
\l_bot[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33333323"
    )
        port map (
      I0 => \l_bot_reg[6]_i_3_n_5\,
      I1 => \^b_first\,
      I2 => \^l_bot[6]_i_14_1\(0),
      I3 => \^l_bot[6]_i_14_0\(0),
      I4 => \^o\(1),
      O => \^l_new\(5)
    );
\l_bot[6]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => a(4),
      I1 => \^l_bot[6]_i_35\(0),
      I2 => \^gmin_reg[6]_0\(4),
      O => \u_path/a\(4)
    );
\l_bot[6]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => a(3),
      I1 => \^l_bot[6]_i_35\(0),
      I2 => \^gmin_reg[6]_0\(3),
      O => \u_path/a\(3)
    );
\l_bot[6]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => a(6),
      I1 => \^l_bot[6]_i_35\(0),
      I2 => \u_path/b2_out\(6),
      O => \u_path/a\(6)
    );
\l_bot[6]_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => a(5),
      I1 => \^l_bot[6]_i_35\(0),
      I2 => \^gmin_reg[6]_0\(5),
      I3 => \u_path/min9_return1\,
      I4 => \u_path/b\(5),
      O => \u_path/p_0_in\(5)
    );
\l_bot[6]_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1D001DFF"
    )
        port map (
      I0 => \u_path/b2_out\(6),
      I1 => \^l_bot[6]_i_35\(0),
      I2 => a(6),
      I3 => \u_path/min9_return1\,
      I4 => \u_path/b\(6),
      O => \l_bot[6]_i_25_n_0\
    );
\l_bot[6]_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => a(4),
      I1 => \^l_bot[6]_i_35\(0),
      I2 => \^gmin_reg[6]_0\(4),
      I3 => \u_path/min9_return1\,
      I4 => \u_path/b\(4),
      O => \u_path/p_0_in\(4)
    );
\l_bot[6]_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => a(3),
      I1 => \^l_bot[6]_i_35\(0),
      I2 => \^gmin_reg[6]_0\(3),
      I3 => \u_path/min9_return1\,
      I4 => \u_path/b\(3),
      O => \u_path/p_0_in\(3)
    );
\l_bot[6]_i_28\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => a(6),
      I1 => \u_path/b2_out\(6),
      I2 => \u_path/b2_out\(7),
      O => \l_bot[6]_i_28_n_0\
    );
\l_bot[6]_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^gmin_reg[6]_0\(5),
      I1 => a(5),
      I2 => \^gmin_reg[6]_0\(4),
      I3 => a(4),
      O => \l_bot[6]_i_29_n_0\
    );
\l_bot[6]_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^gmin_reg[6]_0\(3),
      I1 => a(3),
      I2 => \^gmin_reg[6]_0\(2),
      I3 => a(2),
      O => \l_bot[6]_i_30_n_0\
    );
\l_bot[6]_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^gmin_reg[6]_0\(1),
      I1 => a(1),
      I2 => \^gmin_reg[6]_0\(0),
      I3 => a(0),
      O => \l_bot[6]_i_31_n_0\
    );
\l_bot[6]_i_32\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => a(6),
      I1 => \u_path/b2_out\(6),
      I2 => \u_path/b2_out\(7),
      O => \l_bot[6]_i_32_n_0\
    );
\l_bot[6]_i_36\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => gmin(6),
      I1 => p2(6),
      O => \l_bot[6]_i_36_n_0\
    );
\l_bot[6]_i_37\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => gmin(5),
      I1 => p2(5),
      O => \l_bot[6]_i_37_n_0\
    );
\l_bot[6]_i_38\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => gmin(4),
      I1 => p2(4),
      O => \l_bot[6]_i_38_n_0\
    );
\l_bot[6]_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0A2200FF0AFF22"
    )
        port map (
      I0 => \u_path/b\(6),
      I1 => \u_path/b2_out\(6),
      I2 => a(6),
      I3 => \u_path/b\(7),
      I4 => \^l_bot[6]_i_35\(0),
      I5 => \u_path/b2_out\(7),
      O => \l_bot[6]_i_39_n_0\
    );
\l_bot[6]_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222222B2B2B222B2"
    )
        port map (
      I0 => \u_path/b\(5),
      I1 => \u_path/a\(5),
      I2 => \u_path/b\(4),
      I3 => \^gmin_reg[6]_0\(4),
      I4 => \^l_bot[6]_i_35\(0),
      I5 => a(4),
      O => \l_bot[6]_i_40_n_0\
    );
\l_bot[6]_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222222B2B2B222B2"
    )
        port map (
      I0 => \u_path/b\(3),
      I1 => \u_path/a\(3),
      I2 => \u_path/b\(2),
      I3 => \^gmin_reg[6]_0\(2),
      I4 => \^l_bot[6]_i_35\(0),
      I5 => a(2),
      O => \l_bot[6]_i_41_n_0\
    );
\l_bot[6]_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222222B2B2B222B2"
    )
        port map (
      I0 => \u_path/b\(1),
      I1 => \u_path/a\(1),
      I2 => \u_path/b\(0),
      I3 => \^gmin_reg[6]_0\(0),
      I4 => \^l_bot[6]_i_35\(0),
      I5 => a(0),
      O => \l_bot[6]_i_42_n_0\
    );
\l_bot[6]_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2D0C210000210C2D"
    )
        port map (
      I0 => \u_path/b2_out\(7),
      I1 => \^l_bot[6]_i_35\(0),
      I2 => \u_path/b\(7),
      I3 => \u_path/b2_out\(6),
      I4 => a(6),
      I5 => \u_path/b\(6),
      O => \l_bot[6]_i_43_n_0\
    );
\l_bot[6]_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9990009000099909"
    )
        port map (
      I0 => \u_path/a\(5),
      I1 => \u_path/b\(5),
      I2 => \^gmin_reg[6]_0\(4),
      I3 => \^l_bot[6]_i_35\(0),
      I4 => a(4),
      I5 => \u_path/b\(4),
      O => \l_bot[6]_i_44_n_0\
    );
\l_bot[6]_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9990009000099909"
    )
        port map (
      I0 => \u_path/a\(3),
      I1 => \u_path/b\(3),
      I2 => \^gmin_reg[6]_0\(2),
      I3 => \^l_bot[6]_i_35\(0),
      I4 => a(2),
      I5 => \u_path/b\(2),
      O => \l_bot[6]_i_45_n_0\
    );
\l_bot[6]_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9990009000099909"
    )
        port map (
      I0 => \u_path/a\(1),
      I1 => \u_path/b\(1),
      I2 => \^gmin_reg[6]_0\(0),
      I3 => \^l_bot[6]_i_35\(0),
      I4 => a(0),
      I5 => \u_path/b\(0),
      O => \l_bot[6]_i_46_n_0\
    );
\l_bot[6]_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1D111DDDE2EEE222"
    )
        port map (
      I0 => \l_bot[6]_i_54_n_0\,
      I1 => \l_bot_reg[6]_i_55_n_0\,
      I2 => \l_bot_reg[6]_i_18_0\(6),
      I3 => \l_bot[6]_i_56_n_0\,
      I4 => Q(6),
      I5 => p1(6),
      O => \l_bot[6]_i_47_n_0\
    );
\l_bot[6]_i_48\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111DDD1DEEE222E2"
    )
        port map (
      I0 => \l_bot[6]_i_57_n_0\,
      I1 => \l_bot_reg[6]_i_55_n_0\,
      I2 => Q(5),
      I3 => \l_bot[6]_i_56_n_0\,
      I4 => \l_bot_reg[6]_i_18_0\(5),
      I5 => p1(5),
      O => \l_bot[6]_i_48_n_0\
    );
\l_bot[6]_i_49\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111DDD1DEEE222E2"
    )
        port map (
      I0 => \l_bot[6]_i_58_n_0\,
      I1 => \l_bot_reg[6]_i_55_n_0\,
      I2 => Q(4),
      I3 => \l_bot[6]_i_56_n_0\,
      I4 => \l_bot_reg[6]_i_18_0\(4),
      I5 => p1(4),
      O => \l_bot[6]_i_49_n_0\
    );
\l_bot[6]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B0BF"
    )
        port map (
      I0 => \^l_bot[6]_i_35\(0),
      I1 => \u_path/b2_out\(7),
      I2 => \u_path/min9_return1\,
      I3 => \u_path/b\(7),
      O => \l_bot[6]_i_5_n_0\
    );
\l_bot[6]_i_50\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111DDD1DEEE222E2"
    )
        port map (
      I0 => \l_bot[6]_i_59_n_0\,
      I1 => \l_bot_reg[6]_i_55_n_0\,
      I2 => Q(3),
      I3 => \l_bot[6]_i_56_n_0\,
      I4 => \l_bot_reg[6]_i_18_0\(3),
      I5 => p1(3),
      O => \l_bot[6]_i_50_n_0\
    );
\l_bot[6]_i_51\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111DDD1DEEE222E2"
    )
        port map (
      I0 => \l_bot[6]_i_60_n_0\,
      I1 => \l_bot_reg[6]_i_55_n_0\,
      I2 => Q(2),
      I3 => \l_bot[6]_i_56_n_0\,
      I4 => \l_bot_reg[6]_i_18_0\(2),
      I5 => p1(2),
      O => \l_bot[6]_i_51_n_0\
    );
\l_bot[6]_i_52\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111DDD1DEEE222E2"
    )
        port map (
      I0 => \l_bot[6]_i_61_n_0\,
      I1 => \l_bot_reg[6]_i_55_n_0\,
      I2 => Q(1),
      I3 => \l_bot[6]_i_56_n_0\,
      I4 => \l_bot_reg[6]_i_18_0\(1),
      I5 => p1(1),
      O => \l_bot[6]_i_52_n_0\
    );
\l_bot[6]_i_53\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111DDD1DEEE222E2"
    )
        port map (
      I0 => \l_bot[6]_i_62_n_0\,
      I1 => \l_bot_reg[6]_i_55_n_0\,
      I2 => Q(0),
      I3 => \l_bot[6]_i_56_n_0\,
      I4 => \l_bot_reg[6]_i_18_0\(0),
      I5 => p1(0),
      O => \l_bot[6]_i_53_n_0\
    );
\l_bot[6]_i_54\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => up_edge(6),
      I1 => \^uc_reg[3]_0\(3),
      I2 => \^uc_reg[3]_0\(1),
      I3 => \^uc_reg[3]_0\(0),
      I4 => \^uc_reg[3]_0\(2),
      I5 => l_up0(6),
      O => \l_bot[6]_i_54_n_0\
    );
\l_bot[6]_i_56\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^uc_reg[3]_0\(1),
      I1 => \^uc_reg[3]_0\(0),
      I2 => \^uc_reg[3]_0\(3),
      I3 => \^uc_reg[3]_0\(2),
      O => \l_bot[6]_i_56_n_0\
    );
\l_bot[6]_i_57\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => up_edge(5),
      I1 => \^uc_reg[3]_0\(3),
      I2 => \^uc_reg[3]_0\(1),
      I3 => \^uc_reg[3]_0\(0),
      I4 => \^uc_reg[3]_0\(2),
      I5 => l_up0(5),
      O => \l_bot[6]_i_57_n_0\
    );
\l_bot[6]_i_58\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => up_edge(4),
      I1 => \^uc_reg[3]_0\(3),
      I2 => \^uc_reg[3]_0\(1),
      I3 => \^uc_reg[3]_0\(0),
      I4 => \^uc_reg[3]_0\(2),
      I5 => l_up0(4),
      O => \l_bot[6]_i_58_n_0\
    );
\l_bot[6]_i_59\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => up_edge(3),
      I1 => \^uc_reg[3]_0\(3),
      I2 => \^uc_reg[3]_0\(1),
      I3 => \^uc_reg[3]_0\(0),
      I4 => \^uc_reg[3]_0\(2),
      I5 => l_up0(3),
      O => \l_bot[6]_i_59_n_0\
    );
\l_bot[6]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B2BBB222"
    )
        port map (
      I0 => cost(5),
      I1 => gmin(5),
      I2 => \u_path/a\(5),
      I3 => \u_path/min9_return1\,
      I4 => \u_path/b\(5),
      O => \l_bot[6]_i_6_n_0\
    );
\l_bot[6]_i_60\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => up_edge(2),
      I1 => \^uc_reg[3]_0\(3),
      I2 => \^uc_reg[3]_0\(1),
      I3 => \^uc_reg[3]_0\(0),
      I4 => \^uc_reg[3]_0\(2),
      I5 => l_up0(2),
      O => \l_bot[6]_i_60_n_0\
    );
\l_bot[6]_i_61\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => up_edge(1),
      I1 => \^uc_reg[3]_0\(3),
      I2 => \^uc_reg[3]_0\(1),
      I3 => \^uc_reg[3]_0\(0),
      I4 => \^uc_reg[3]_0\(2),
      I5 => l_up0(1),
      O => \l_bot[6]_i_61_n_0\
    );
\l_bot[6]_i_62\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => up_edge(0),
      I1 => \^uc_reg[3]_0\(3),
      I2 => \^uc_reg[3]_0\(1),
      I3 => \^uc_reg[3]_0\(0),
      I4 => \^uc_reg[3]_0\(2),
      I5 => l_up0(0),
      O => \l_bot[6]_i_62_n_0\
    );
\l_bot[6]_i_63\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1D1D1D0000001D00"
    )
        port map (
      I0 => Q(6),
      I1 => \l_bot[6]_i_56_n_0\,
      I2 => \l_bot_reg[6]_i_18_0\(6),
      I3 => l_up0(6),
      I4 => \l_bot_reg[6]_i_55_0\,
      I5 => up_edge(6),
      O => \l_bot[6]_i_63_n_0\
    );
\l_bot[6]_i_64\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222222B2B2B222B2"
    )
        port map (
      I0 => \l_bot[6]_i_57_n_0\,
      I1 => \l_bot[6]_i_72_n_0\,
      I2 => \l_bot[6]_i_58_n_0\,
      I3 => Q(4),
      I4 => \l_bot[6]_i_56_n_0\,
      I5 => \l_bot_reg[6]_i_18_0\(4),
      O => \l_bot[6]_i_64_n_0\
    );
\l_bot[6]_i_65\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222222B2B2B222B2"
    )
        port map (
      I0 => \l_bot[6]_i_59_n_0\,
      I1 => \l_bot[6]_i_73_n_0\,
      I2 => \l_bot[6]_i_60_n_0\,
      I3 => Q(2),
      I4 => \l_bot[6]_i_56_n_0\,
      I5 => \l_bot_reg[6]_i_18_0\(2),
      O => \l_bot[6]_i_65_n_0\
    );
\l_bot[6]_i_66\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222222B2B2B222B2"
    )
        port map (
      I0 => \l_bot[6]_i_61_n_0\,
      I1 => \l_bot[6]_i_74_n_0\,
      I2 => \l_bot[6]_i_62_n_0\,
      I3 => Q(0),
      I4 => \l_bot[6]_i_56_n_0\,
      I5 => \l_bot_reg[6]_i_18_0\(0),
      O => \l_bot[6]_i_66_n_0\
    );
\l_bot[6]_i_67\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2E21D1D1DE21D"
    )
        port map (
      I0 => Q(6),
      I1 => \l_bot[6]_i_56_n_0\,
      I2 => \l_bot_reg[6]_i_18_0\(6),
      I3 => l_up0(6),
      I4 => \l_bot_reg[6]_i_55_0\,
      I5 => up_edge(6),
      O => \l_bot[6]_i_67_n_0\
    );
\l_bot[6]_i_68\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9090900909099009"
    )
        port map (
      I0 => \l_bot[6]_i_72_n_0\,
      I1 => \l_bot[6]_i_57_n_0\,
      I2 => \l_bot[6]_i_58_n_0\,
      I3 => Q(4),
      I4 => \l_bot[6]_i_56_n_0\,
      I5 => \l_bot_reg[6]_i_18_0\(4),
      O => \l_bot[6]_i_68_n_0\
    );
\l_bot[6]_i_69\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9090900909099009"
    )
        port map (
      I0 => \l_bot[6]_i_73_n_0\,
      I1 => \l_bot[6]_i_59_n_0\,
      I2 => \l_bot[6]_i_60_n_0\,
      I3 => Q(2),
      I4 => \l_bot[6]_i_56_n_0\,
      I5 => \l_bot_reg[6]_i_18_0\(2),
      O => \l_bot[6]_i_69_n_0\
    );
\l_bot[6]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B2BBB222"
    )
        port map (
      I0 => cost(4),
      I1 => gmin(4),
      I2 => \u_path/a\(4),
      I3 => \u_path/min9_return1\,
      I4 => \u_path/b\(4),
      O => \l_bot[6]_i_7_n_0\
    );
\l_bot[6]_i_70\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9090900909099009"
    )
        port map (
      I0 => \l_bot[6]_i_74_n_0\,
      I1 => \l_bot[6]_i_61_n_0\,
      I2 => \l_bot[6]_i_62_n_0\,
      I3 => Q(0),
      I4 => \l_bot[6]_i_56_n_0\,
      I5 => \l_bot_reg[6]_i_18_0\(0),
      O => \l_bot[6]_i_70_n_0\
    );
\l_bot[6]_i_72\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => \l_bot_reg[6]_i_18_0\(5),
      I1 => \^uc_reg[3]_0\(1),
      I2 => \^uc_reg[3]_0\(0),
      I3 => \^uc_reg[3]_0\(3),
      I4 => \^uc_reg[3]_0\(2),
      I5 => Q(5),
      O => \l_bot[6]_i_72_n_0\
    );
\l_bot[6]_i_73\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => \l_bot_reg[6]_i_18_0\(3),
      I1 => \^uc_reg[3]_0\(1),
      I2 => \^uc_reg[3]_0\(0),
      I3 => \^uc_reg[3]_0\(3),
      I4 => \^uc_reg[3]_0\(2),
      I5 => Q(3),
      O => \l_bot[6]_i_73_n_0\
    );
\l_bot[6]_i_74\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => \l_bot_reg[6]_i_18_0\(1),
      I1 => \^uc_reg[3]_0\(1),
      I2 => \^uc_reg[3]_0\(0),
      I3 => \^uc_reg[3]_0\(3),
      I4 => \^uc_reg[3]_0\(2),
      I5 => Q(1),
      O => \l_bot[6]_i_74_n_0\
    );
\l_bot[6]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B2BBB222"
    )
        port map (
      I0 => cost(3),
      I1 => gmin(3),
      I2 => \u_path/a\(3),
      I3 => \u_path/min9_return1\,
      I4 => \u_path/b\(3),
      O => \l_bot[6]_i_8_n_0\
    );
\l_bot[6]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABF4540"
    )
        port map (
      I0 => gmin(6),
      I1 => \u_path/a\(6),
      I2 => \u_path/min9_return1\,
      I3 => \u_path/b\(6),
      I4 => \l_bot[6]_i_5_n_0\,
      O => \l_bot[6]_i_9_n_0\
    );
\l_bot_reg[3]_i_12\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \l_bot_reg[3]_i_12_n_0\,
      CO(2) => \l_bot_reg[3]_i_12_n_1\,
      CO(1) => \l_bot_reg[3]_i_12_n_2\,
      CO(0) => \l_bot_reg[3]_i_12_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => gmin(3 downto 0),
      O(3 downto 0) => \^gmin_reg[6]_0\(3 downto 0),
      S(3) => \l_bot[3]_i_16_n_0\,
      S(2) => \l_bot[3]_i_17_n_0\,
      S(1) => \l_bot[3]_i_18_n_0\,
      S(0) => \l_bot[3]_i_19_n_0\
    );
\l_bot_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \l_bot_reg[3]_i_2_n_0\,
      CO(2) => \l_bot_reg[3]_i_2_n_1\,
      CO(1) => \l_bot_reg[3]_i_2_n_2\,
      CO(0) => \l_bot_reg[3]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \l_bot[3]_i_3_n_0\,
      DI(2) => \l_bot[3]_i_4_n_0\,
      DI(1) => \l_bot[3]_i_5_n_0\,
      DI(0) => cost(0),
      O(3) => \l_bot_reg[3]_i_2_n_4\,
      O(2) => \l_bot_reg[3]_i_2_n_5\,
      O(1) => \l_bot_reg[3]_i_2_n_6\,
      O(0) => \l_bot_reg[3]_i_2_n_7\,
      S(3) => \l_bot[3]_i_6_n_0\,
      S(2) => \l_bot[3]_i_7_n_0\,
      S(1) => \l_bot[3]_i_8_n_0\,
      S(0) => \l_bot[3]_i_9_n_0\
    );
\l_bot_reg[6]_i_15\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \^l_bot[6]_i_35\(0),
      CO(2) => \l_bot_reg[6]_i_15_n_1\,
      CO(1) => \l_bot_reg[6]_i_15_n_2\,
      CO(0) => \l_bot_reg[6]_i_15_n_3\,
      CYINIT => '0',
      DI(3) => \l_bot[6]_i_28_n_0\,
      DI(2) => \l_bot[6]_i_29_n_0\,
      DI(1) => \l_bot[6]_i_30_n_0\,
      DI(0) => \l_bot[6]_i_31_n_0\,
      O(3 downto 0) => \NLW_l_bot_reg[6]_i_15_O_UNCONNECTED\(3 downto 0),
      S(3) => \l_bot[6]_i_32_n_0\,
      S(2 downto 0) => \l_bot[3]_i_10\(2 downto 0)
    );
\l_bot_reg[6]_i_16\: unisim.vcomponents.CARRY4
     port map (
      CI => \l_bot_reg[3]_i_12_n_0\,
      CO(3) => \u_path/b2_out\(7),
      CO(2) => \NLW_l_bot_reg[6]_i_16_CO_UNCONNECTED\(2),
      CO(1) => \l_bot_reg[6]_i_16_n_2\,
      CO(0) => \l_bot_reg[6]_i_16_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => gmin(6 downto 4),
      O(3) => \NLW_l_bot_reg[6]_i_16_O_UNCONNECTED\(3),
      O(2) => \u_path/b2_out\(6),
      O(1 downto 0) => \^gmin_reg[6]_0\(5 downto 4),
      S(3) => '1',
      S(2) => \l_bot[6]_i_36_n_0\,
      S(1) => \l_bot[6]_i_37_n_0\,
      S(0) => \l_bot[6]_i_38_n_0\
    );
\l_bot_reg[6]_i_17\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \u_path/min9_return1\,
      CO(2) => \l_bot_reg[6]_i_17_n_1\,
      CO(1) => \l_bot_reg[6]_i_17_n_2\,
      CO(0) => \l_bot_reg[6]_i_17_n_3\,
      CYINIT => '0',
      DI(3) => \l_bot[6]_i_39_n_0\,
      DI(2) => \l_bot[6]_i_40_n_0\,
      DI(1) => \l_bot[6]_i_41_n_0\,
      DI(0) => \l_bot[6]_i_42_n_0\,
      O(3 downto 0) => \NLW_l_bot_reg[6]_i_17_O_UNCONNECTED\(3 downto 0),
      S(3) => \l_bot[6]_i_43_n_0\,
      S(2) => \l_bot[6]_i_44_n_0\,
      S(1) => \l_bot[6]_i_45_n_0\,
      S(0) => \l_bot[6]_i_46_n_0\
    );
\l_bot_reg[6]_i_18\: unisim.vcomponents.CARRY4
     port map (
      CI => \l_bot_reg[6]_i_22_n_0\,
      CO(3) => \u_path/b\(7),
      CO(2) => \NLW_l_bot_reg[6]_i_18_CO_UNCONNECTED\(2),
      CO(1) => \l_bot_reg[6]_i_18_n_2\,
      CO(0) => \l_bot_reg[6]_i_18_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => p1(6 downto 4),
      O(3) => \NLW_l_bot_reg[6]_i_18_O_UNCONNECTED\(3),
      O(2 downto 0) => \u_path/b\(6 downto 4),
      S(3) => '1',
      S(2) => \l_bot[6]_i_47_n_0\,
      S(1) => \l_bot[6]_i_48_n_0\,
      S(0) => \l_bot[6]_i_49_n_0\
    );
\l_bot_reg[6]_i_22\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \l_bot_reg[6]_i_22_n_0\,
      CO(2) => \l_bot_reg[6]_i_22_n_1\,
      CO(1) => \l_bot_reg[6]_i_22_n_2\,
      CO(0) => \l_bot_reg[6]_i_22_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => p1(3 downto 0),
      O(3 downto 0) => \u_path/b\(3 downto 0),
      S(3) => \l_bot[6]_i_50_n_0\,
      S(2) => \l_bot[6]_i_51_n_0\,
      S(1) => \l_bot[6]_i_52_n_0\,
      S(0) => \l_bot[6]_i_53_n_0\
    );
\l_bot_reg[6]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \l_bot_reg[3]_i_2_n_0\,
      CO(3) => \l_bot_reg[6]_i_3_n_0\,
      CO(2) => \l_bot_reg[6]_i_3_n_1\,
      CO(1) => \l_bot_reg[6]_i_3_n_2\,
      CO(0) => \l_bot_reg[6]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => \l_bot[6]_i_5_n_0\,
      DI(2) => \l_bot[6]_i_6_n_0\,
      DI(1) => \l_bot[6]_i_7_n_0\,
      DI(0) => \l_bot[6]_i_8_n_0\,
      O(3) => \^o\(1),
      O(2) => \l_bot_reg[6]_i_3_n_5\,
      O(1) => \^o\(0),
      O(0) => \l_bot_reg[6]_i_3_n_7\,
      S(3) => \l_bot[6]_i_9_n_0\,
      S(2) => \l_bot[6]_i_10_n_0\,
      S(1) => \l_bot[6]_i_11_n_0\,
      S(0) => \l_bot[6]_i_12_n_0\
    );
\l_bot_reg[6]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \l_bot_reg[6]_i_3_n_0\,
      CO(3 downto 2) => \NLW_l_bot_reg[6]_i_4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \^l_bot[6]_i_14_1\(0),
      CO(0) => \NLW_l_bot_reg[6]_i_4_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \u_path/p_0_in__0\(7),
      O(3 downto 1) => \NLW_l_bot_reg[6]_i_4_O_UNCONNECTED\(3 downto 1),
      O(0) => \^l_bot[6]_i_14_0\(0),
      S(3 downto 1) => B"001",
      S(0) => \l_bot[6]_i_14_n_0\
    );
\l_bot_reg[6]_i_55\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \l_bot_reg[6]_i_55_n_0\,
      CO(2) => \l_bot_reg[6]_i_55_n_1\,
      CO(1) => \l_bot_reg[6]_i_55_n_2\,
      CO(0) => \l_bot_reg[6]_i_55_n_3\,
      CYINIT => '0',
      DI(3) => \l_bot[6]_i_63_n_0\,
      DI(2) => \l_bot[6]_i_64_n_0\,
      DI(1) => \l_bot[6]_i_65_n_0\,
      DI(0) => \l_bot[6]_i_66_n_0\,
      O(3 downto 0) => \NLW_l_bot_reg[6]_i_55_O_UNCONNECTED\(3 downto 0),
      S(3) => \l_bot[6]_i_67_n_0\,
      S(2) => \l_bot[6]_i_68_n_0\,
      S(1) => \l_bot[6]_i_69_n_0\,
      S(0) => \l_bot[6]_i_70_n_0\
    );
\l_top[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^b_real\,
      I1 => \^scan\,
      I2 => \^uc_reg[3]_0\(3),
      I3 => \^uc_reg[3]_0\(2),
      I4 => \^uc_reg[3]_0\(0),
      I5 => \^uc_reg[3]_0\(1),
      O => b_real_reg_3(0)
    );
\left_sr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8000"
    )
        port map (
      I0 => \ui_r_reg_n_0_[0]\,
      I1 => \left_sr[13]_i_2_n_0\,
      I2 => \left_sr[7]_i_2_n_0\,
      I3 => \left_sr[0]_i_2_n_0\,
      I4 => \^in_left\(0),
      O => \left_sr[0]_i_1_n_0\
    );
\left_sr[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \left_sr[3]_i_2_n_0\,
      I1 => left_sr1(0),
      I2 => left_sr1(1),
      O => \left_sr[0]_i_2_n_0\
    );
\left_sr[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF8880000"
    )
        port map (
      I0 => \left_sr[13]_i_2_n_0\,
      I1 => \left_sr[42]_i_2_n_0\,
      I2 => \left_sr[21]_i_2_n_0\,
      I3 => \left_sr[42]_i_3_n_0\,
      I4 => \left_sr[10]_i_2_n_0\,
      I5 => \^in_left\(10),
      O => \left_sr[10]_i_1_n_0\
    );
\left_sr[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A0A000C0C0C0"
    )
        port map (
      I0 => \left_sr[7]_i_2_n_0\,
      I1 => \left_sr[15]_i_2_n_0\,
      I2 => \left_sr[44]_i_9_n_0\,
      I3 => left_sr1(1),
      I4 => left_sr1(0),
      I5 => left_sr1(2),
      O => \left_sr[10]_i_2_n_0\
    );
\left_sr[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => left_sr0(11),
      I1 => left_sr1(5),
      I2 => left_sr1(4),
      I3 => \left_sr[43]_i_4_n_0\,
      I4 => \left_sr[43]_i_5_n_0\,
      I5 => \^in_left\(11),
      O => \left_sr[11]_i_1_n_0\
    );
\left_sr[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03020002"
    )
        port map (
      I0 => \left_sr[35]_i_2_n_0\,
      I1 => left_sr1(4),
      I2 => left_sr1(5),
      I3 => left_sr1(3),
      I4 => \left_sr[35]_i_3_n_0\,
      O => left_sr0(11)
    );
\left_sr[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF8880000"
    )
        port map (
      I0 => \left_sr[44]_i_2_n_0\,
      I1 => \left_sr[21]_i_2_n_0\,
      I2 => \left_sr[13]_i_2_n_0\,
      I3 => \left_sr[44]_i_5_n_0\,
      I4 => \left_sr[12]_i_2_n_0\,
      I5 => \^in_left\(12),
      O => \left_sr[12]_i_1_n_0\
    );
\left_sr[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000CC004400CC00"
    )
        port map (
      I0 => left_sr1(0),
      I1 => \left_sr[15]_i_2_n_0\,
      I2 => \left_sr[7]_i_2_n_0\,
      I3 => \left_sr[44]_i_9_n_0\,
      I4 => left_sr1(2),
      I5 => left_sr1(1),
      O => \left_sr[12]_i_2_n_0\
    );
\left_sr[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF8880000"
    )
        port map (
      I0 => \left_sr[37]_i_4_n_0\,
      I1 => \left_sr[21]_i_2_n_0\,
      I2 => \left_sr[13]_i_2_n_0\,
      I3 => \left_sr[37]_i_3_n_0\,
      I4 => \left_sr[13]_i_3_n_0\,
      I5 => \^in_left\(13),
      O => \left_sr[13]_i_1_n_0\
    );
\left_sr[13]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => left_sr1(4),
      I1 => left_sr1(5),
      I2 => left_sr1(3),
      O => \left_sr[13]_i_2_n_0\
    );
\left_sr[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0A000A0A0A0A0A0"
    )
        port map (
      I0 => \left_sr[15]_i_2_n_0\,
      I1 => \left_sr[7]_i_2_n_0\,
      I2 => \left_sr[44]_i_9_n_0\,
      I3 => left_sr1(2),
      I4 => left_sr1(0),
      I5 => left_sr1(1),
      O => \left_sr[13]_i_3_n_0\
    );
\left_sr[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8000"
    )
        port map (
      I0 => \left_sr[38]_i_2_n_0\,
      I1 => \left_sr[21]_i_2_n_0\,
      I2 => \left_sr[15]_i_2_n_0\,
      I3 => \left_sr[38]_i_3_n_0\,
      I4 => \^in_left\(14),
      O => \left_sr[14]_i_1_n_0\
    );
\left_sr[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8000"
    )
        port map (
      I0 => \left_sr[39]_i_3_n_0\,
      I1 => \left_sr[21]_i_2_n_0\,
      I2 => \left_sr[15]_i_2_n_0\,
      I3 => \left_sr[39]_i_5_n_0\,
      I4 => \^in_left\(15),
      O => \left_sr[15]_i_1_n_0\
    );
\left_sr[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => left_sr1(3),
      I1 => left_sr1(5),
      I2 => left_sr1(4),
      I3 => \left_sr[43]_i_5_n_0\,
      O => \left_sr[15]_i_2_n_0\
    );
\left_sr[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF8880000"
    )
        port map (
      I0 => \left_sr[32]_i_2_n_0\,
      I1 => \left_sr[21]_i_2_n_0\,
      I2 => \left_sr[29]_i_2_n_0\,
      I3 => \left_sr[32]_i_3_n_0\,
      I4 => \left_sr[16]_i_2_n_0\,
      I5 => \^in_left\(16),
      O => \left_sr[16]_i_1_n_0\
    );
\left_sr[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A080B0A0A08080"
    )
        port map (
      I0 => \left_sr[15]_i_2_n_0\,
      I1 => left_sr1(2),
      I2 => \left_sr[44]_i_9_n_0\,
      I3 => left_sr1(0),
      I4 => left_sr1(1),
      I5 => \left_sr[23]_i_2_n_0\,
      O => \left_sr[16]_i_2_n_0\
    );
\left_sr[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF8880000"
    )
        port map (
      I0 => \left_sr[33]_i_2_n_0\,
      I1 => \left_sr[21]_i_2_n_0\,
      I2 => \left_sr[29]_i_2_n_0\,
      I3 => \left_sr[33]_i_3_n_0\,
      I4 => \left_sr[17]_i_2_n_0\,
      I5 => \^in_left\(17),
      O => \left_sr[17]_i_1_n_0\
    );
\left_sr[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA880000AAF00000"
    )
        port map (
      I0 => \left_sr[15]_i_2_n_0\,
      I1 => left_sr1(0),
      I2 => \left_sr[23]_i_2_n_0\,
      I3 => left_sr1(2),
      I4 => \left_sr[44]_i_9_n_0\,
      I5 => left_sr1(1),
      O => \left_sr[17]_i_2_n_0\
    );
\left_sr[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF8880000"
    )
        port map (
      I0 => \left_sr[21]_i_2_n_0\,
      I1 => \left_sr[42]_i_2_n_0\,
      I2 => \left_sr[29]_i_2_n_0\,
      I3 => \left_sr[42]_i_3_n_0\,
      I4 => \left_sr[18]_i_2_n_0\,
      I5 => \^in_left\(18),
      O => \left_sr[18]_i_1_n_0\
    );
\left_sr[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A0A000C0C0C0"
    )
        port map (
      I0 => \left_sr[15]_i_2_n_0\,
      I1 => \left_sr[23]_i_2_n_0\,
      I2 => \left_sr[44]_i_9_n_0\,
      I3 => left_sr1(1),
      I4 => left_sr1(0),
      I5 => left_sr1(2),
      O => \left_sr[18]_i_2_n_0\
    );
\left_sr[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF8880000"
    )
        port map (
      I0 => \left_sr[21]_i_2_n_0\,
      I1 => \left_sr[35]_i_2_n_0\,
      I2 => \left_sr[29]_i_2_n_0\,
      I3 => \left_sr[35]_i_3_n_0\,
      I4 => \left_sr[19]_i_2_n_0\,
      I5 => \^in_left\(19),
      O => \left_sr[19]_i_1_n_0\
    );
\left_sr[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800FF00A8000000"
    )
        port map (
      I0 => \left_sr[15]_i_2_n_0\,
      I1 => left_sr1(0),
      I2 => left_sr1(1),
      I3 => \left_sr[44]_i_9_n_0\,
      I4 => left_sr1(2),
      I5 => \left_sr[23]_i_2_n_0\,
      O => \left_sr[19]_i_2_n_0\
    );
\left_sr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFFFFF08000000"
    )
        port map (
      I0 => \left_sr[33]_i_3_n_0\,
      I1 => \left_sr[13]_i_2_n_0\,
      I2 => left_sr1(1),
      I3 => \left_sr[3]_i_2_n_0\,
      I4 => \left_sr[7]_i_2_n_0\,
      I5 => \^in_left\(1),
      O => \left_sr[1]_i_1_n_0\
    );
\left_sr[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF8880000"
    )
        port map (
      I0 => \left_sr[21]_i_2_n_0\,
      I1 => \left_sr[44]_i_5_n_0\,
      I2 => \left_sr[44]_i_2_n_0\,
      I3 => \left_sr[29]_i_2_n_0\,
      I4 => \left_sr[20]_i_2_n_0\,
      I5 => \^in_left\(20),
      O => \left_sr[20]_i_1_n_0\
    );
\left_sr[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BFF000088000000"
    )
        port map (
      I0 => \left_sr[15]_i_2_n_0\,
      I1 => left_sr1(1),
      I2 => left_sr1(0),
      I3 => left_sr1(2),
      I4 => \left_sr[44]_i_9_n_0\,
      I5 => \left_sr[23]_i_2_n_0\,
      O => \left_sr[20]_i_2_n_0\
    );
\left_sr[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF8880000"
    )
        port map (
      I0 => \left_sr[21]_i_2_n_0\,
      I1 => \left_sr[37]_i_3_n_0\,
      I2 => \left_sr[37]_i_4_n_0\,
      I3 => \left_sr[29]_i_2_n_0\,
      I4 => \left_sr[21]_i_3_n_0\,
      I5 => \^in_left\(21),
      O => \left_sr[21]_i_1_n_0\
    );
\left_sr[21]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => left_sr1(4),
      I1 => left_sr1(5),
      I2 => left_sr1(3),
      O => \left_sr[21]_i_2_n_0\
    );
\left_sr[21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFF000080000000"
    )
        port map (
      I0 => \left_sr[15]_i_2_n_0\,
      I1 => left_sr1(0),
      I2 => left_sr1(1),
      I3 => left_sr1(2),
      I4 => \left_sr[44]_i_9_n_0\,
      I5 => \left_sr[23]_i_2_n_0\,
      O => \left_sr[21]_i_3_n_0\
    );
\left_sr[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8000"
    )
        port map (
      I0 => \left_sr[29]_i_2_n_0\,
      I1 => \left_sr[38]_i_2_n_0\,
      I2 => \left_sr[23]_i_2_n_0\,
      I3 => \left_sr[38]_i_3_n_0\,
      I4 => \^in_left\(22),
      O => \left_sr[22]_i_1_n_0\
    );
\left_sr[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8000"
    )
        port map (
      I0 => \left_sr[29]_i_2_n_0\,
      I1 => \left_sr[39]_i_3_n_0\,
      I2 => \left_sr[23]_i_2_n_0\,
      I3 => \left_sr[39]_i_5_n_0\,
      I4 => \^in_left\(23),
      O => \left_sr[23]_i_1_n_0\
    );
\left_sr[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => left_sr1(3),
      I1 => \left_sr[43]_i_5_n_0\,
      I2 => left_sr1(5),
      I3 => left_sr1(4),
      O => \left_sr[23]_i_2_n_0\
    );
\left_sr[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => left_sr0(24),
      I1 => left_sr1(4),
      I2 => left_sr1(5),
      I3 => \left_sr[40]_i_3_n_0\,
      I4 => \left_sr[43]_i_5_n_0\,
      I5 => \^in_left\(24),
      O => \left_sr[24]_i_1_n_0\
    );
\left_sr[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088000000F00000"
    )
        port map (
      I0 => \left_sr[0]_i_2_n_0\,
      I1 => \ui_r_reg_n_0_[0]\,
      I2 => \left_sr[32]_i_2_n_0\,
      I3 => left_sr1(5),
      I4 => left_sr1(4),
      I5 => left_sr1(3),
      O => left_sr0(24)
    );
\left_sr[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => left_sr0(25),
      I1 => left_sr1(4),
      I2 => left_sr1(5),
      I3 => \left_sr[41]_i_3_n_0\,
      I4 => \left_sr[43]_i_5_n_0\,
      I5 => \^in_left\(25),
      O => \left_sr[25]_i_1_n_0\
    );
\left_sr[25]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => \left_sr[33]_i_3_n_0\,
      I1 => \left_sr[33]_i_2_n_0\,
      I2 => left_sr1(5),
      I3 => left_sr1(4),
      I4 => left_sr1(3),
      O => left_sr0(25)
    );
\left_sr[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF8880000"
    )
        port map (
      I0 => \left_sr[29]_i_2_n_0\,
      I1 => \left_sr[42]_i_2_n_0\,
      I2 => \left_sr[37]_i_2_n_0\,
      I3 => \left_sr[42]_i_3_n_0\,
      I4 => \left_sr[26]_i_2_n_0\,
      I5 => \^in_left\(26),
      O => \left_sr[26]_i_1_n_0\
    );
\left_sr[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A0A000C0C0C0"
    )
        port map (
      I0 => \left_sr[23]_i_2_n_0\,
      I1 => \left_sr[31]_i_2_n_0\,
      I2 => \left_sr[44]_i_9_n_0\,
      I3 => left_sr1(1),
      I4 => left_sr1(0),
      I5 => left_sr1(2),
      O => \left_sr[26]_i_2_n_0\
    );
\left_sr[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => left_sr0(27),
      I1 => left_sr1(4),
      I2 => left_sr1(5),
      I3 => \left_sr[43]_i_4_n_0\,
      I4 => \left_sr[43]_i_5_n_0\,
      I5 => \^in_left\(27),
      O => \left_sr[27]_i_1_n_0\
    );
\left_sr[27]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30200020"
    )
        port map (
      I0 => \left_sr[35]_i_2_n_0\,
      I1 => left_sr1(5),
      I2 => left_sr1(4),
      I3 => left_sr1(3),
      I4 => \left_sr[35]_i_3_n_0\,
      O => left_sr0(27)
    );
\left_sr[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF8880000"
    )
        port map (
      I0 => \left_sr[44]_i_2_n_0\,
      I1 => \left_sr[37]_i_2_n_0\,
      I2 => \left_sr[29]_i_2_n_0\,
      I3 => \left_sr[44]_i_5_n_0\,
      I4 => \left_sr[28]_i_2_n_0\,
      I5 => \^in_left\(28),
      O => \left_sr[28]_i_1_n_0\
    );
\left_sr[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000CC004400CC00"
    )
        port map (
      I0 => left_sr1(0),
      I1 => \left_sr[31]_i_2_n_0\,
      I2 => \left_sr[23]_i_2_n_0\,
      I3 => \left_sr[44]_i_9_n_0\,
      I4 => left_sr1(2),
      I5 => left_sr1(1),
      O => \left_sr[28]_i_2_n_0\
    );
\left_sr[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF8880000"
    )
        port map (
      I0 => \left_sr[37]_i_4_n_0\,
      I1 => \left_sr[37]_i_2_n_0\,
      I2 => \left_sr[29]_i_2_n_0\,
      I3 => \left_sr[37]_i_3_n_0\,
      I4 => \left_sr[29]_i_3_n_0\,
      I5 => \^in_left\(29),
      O => \left_sr[29]_i_1_n_0\
    );
\left_sr[29]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => left_sr1(5),
      I1 => left_sr1(4),
      I2 => left_sr1(3),
      O => \left_sr[29]_i_2_n_0\
    );
\left_sr[29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0A000A0A0A0A0A0"
    )
        port map (
      I0 => \left_sr[31]_i_2_n_0\,
      I1 => \left_sr[23]_i_2_n_0\,
      I2 => \left_sr[44]_i_9_n_0\,
      I3 => left_sr1(2),
      I4 => left_sr1(0),
      I5 => left_sr1(1),
      O => \left_sr[29]_i_3_n_0\
    );
\left_sr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8000"
    )
        port map (
      I0 => \left_sr[42]_i_3_n_0\,
      I1 => \left_sr[13]_i_2_n_0\,
      I2 => \left_sr[2]_i_2_n_0\,
      I3 => \left_sr[7]_i_2_n_0\,
      I4 => \^in_left\(2),
      O => \left_sr[2]_i_1_n_0\
    );
\left_sr[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"002A"
    )
        port map (
      I0 => \left_sr[44]_i_9_n_0\,
      I1 => left_sr1(1),
      I2 => left_sr1(0),
      I3 => left_sr1(2),
      O => \left_sr[2]_i_2_n_0\
    );
\left_sr[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8000"
    )
        port map (
      I0 => \left_sr[38]_i_2_n_0\,
      I1 => \left_sr[37]_i_2_n_0\,
      I2 => \left_sr[31]_i_2_n_0\,
      I3 => \left_sr[38]_i_3_n_0\,
      I4 => \^in_left\(30),
      O => \left_sr[30]_i_1_n_0\
    );
\left_sr[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8000"
    )
        port map (
      I0 => \left_sr[39]_i_3_n_0\,
      I1 => \left_sr[37]_i_2_n_0\,
      I2 => \left_sr[31]_i_2_n_0\,
      I3 => \left_sr[39]_i_5_n_0\,
      I4 => \^in_left\(31),
      O => \left_sr[31]_i_1_n_0\
    );
\left_sr[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => left_sr1(3),
      I1 => left_sr1(4),
      I2 => left_sr1(5),
      I3 => \left_sr[43]_i_5_n_0\,
      O => \left_sr[31]_i_2_n_0\
    );
\left_sr[32]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF8880000"
    )
        port map (
      I0 => \left_sr[32]_i_2_n_0\,
      I1 => \left_sr[37]_i_2_n_0\,
      I2 => \left_sr[39]_i_2_n_0\,
      I3 => \left_sr[32]_i_3_n_0\,
      I4 => \left_sr[32]_i_4_n_0\,
      I5 => \^in_left\(32),
      O => \left_sr[32]_i_1_n_0\
    );
\left_sr[32]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF222"
    )
        port map (
      I0 => \left_sr[32]_i_5_n_0\,
      I1 => left_sr1(2),
      I2 => \left_sr[32]_i_6_n_0\,
      I3 => \ui_r_reg_n_0_[1]\,
      I4 => \left_sr[32]_i_7_n_0\,
      O => \left_sr[32]_i_2_n_0\
    );
\left_sr[32]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => left_sr1(1),
      I1 => left_sr1(0),
      I2 => \left_sr[3]_i_2_n_0\,
      I3 => \ui_r_reg_n_0_[0]\,
      O => \left_sr[32]_i_3_n_0\
    );
\left_sr[32]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A080B0A0A08080"
    )
        port map (
      I0 => \left_sr[31]_i_2_n_0\,
      I1 => left_sr1(2),
      I2 => \left_sr[44]_i_9_n_0\,
      I3 => left_sr1(0),
      I4 => left_sr1(1),
      I5 => \left_sr[39]_i_4_n_0\,
      O => \left_sr[32]_i_4_n_0\
    );
\left_sr[32]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C8400000"
    )
        port map (
      I0 => left_sr1(0),
      I1 => \left_sr[44]_i_9_n_0\,
      I2 => p_0_in(2),
      I3 => p_0_in(1),
      I4 => left_sr1(1),
      O => \left_sr[32]_i_5_n_0\
    );
\left_sr[32]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \left_sr[42]_i_7_n_0\,
      I1 => left_sr1(0),
      I2 => left_sr1(1),
      O => \left_sr[32]_i_6_n_0\
    );
\left_sr[32]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000C0C0A0A0F000"
    )
        port map (
      I0 => \ui_r_reg_n_0_[3]\,
      I1 => \ui_r_reg_n_0_[2]\,
      I2 => \left_sr[42]_i_7_n_0\,
      I3 => p_0_in(0),
      I4 => left_sr1(0),
      I5 => left_sr1(1),
      O => \left_sr[32]_i_7_n_0\
    );
\left_sr[33]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF8880000"
    )
        port map (
      I0 => \left_sr[33]_i_2_n_0\,
      I1 => \left_sr[37]_i_2_n_0\,
      I2 => \left_sr[39]_i_2_n_0\,
      I3 => \left_sr[33]_i_3_n_0\,
      I4 => \left_sr[33]_i_4_n_0\,
      I5 => \^in_left\(33),
      O => \left_sr[33]_i_1_n_0\
    );
\left_sr[33]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFC8888888"
    )
        port map (
      I0 => \left_sr[33]_i_5_n_0\,
      I1 => \left_sr[42]_i_7_n_0\,
      I2 => left_sr1(1),
      I3 => left_sr1(0),
      I4 => \ui_r_reg_n_0_[2]\,
      I5 => \left_sr[33]_i_6_n_0\,
      O => \left_sr[33]_i_2_n_0\
    );
\left_sr[33]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000044005000"
    )
        port map (
      I0 => left_sr1(1),
      I1 => \ui_r_reg_n_0_[0]\,
      I2 => \ui_r_reg_n_0_[1]\,
      I3 => \left_sr[44]_i_9_n_0\,
      I4 => left_sr1(0),
      I5 => left_sr1(2),
      O => \left_sr[33]_i_3_n_0\
    );
\left_sr[33]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA880000AAF00000"
    )
        port map (
      I0 => \left_sr[31]_i_2_n_0\,
      I1 => left_sr1(0),
      I2 => \left_sr[39]_i_4_n_0\,
      I3 => left_sr1(2),
      I4 => \left_sr[44]_i_9_n_0\,
      I5 => left_sr1(1),
      O => \left_sr[33]_i_4_n_0\
    );
\left_sr[33]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22C0"
    )
        port map (
      I0 => \ui_r_reg_n_0_[3]\,
      I1 => left_sr1(0),
      I2 => p_0_in(0),
      I3 => left_sr1(1),
      O => \left_sr[33]_i_5_n_0\
    );
\left_sr[33]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"202000000000C000"
    )
        port map (
      I0 => p_0_in(2),
      I1 => left_sr1(2),
      I2 => \left_sr[44]_i_9_n_0\,
      I3 => p_0_in(1),
      I4 => left_sr1(0),
      I5 => left_sr1(1),
      O => \left_sr[33]_i_6_n_0\
    );
\left_sr[34]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF8880000"
    )
        port map (
      I0 => \left_sr[37]_i_2_n_0\,
      I1 => \left_sr[42]_i_2_n_0\,
      I2 => \left_sr[39]_i_2_n_0\,
      I3 => \left_sr[42]_i_3_n_0\,
      I4 => \left_sr[34]_i_2_n_0\,
      I5 => \^in_left\(34),
      O => \left_sr[34]_i_1_n_0\
    );
\left_sr[34]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A0A000C0C0C0"
    )
        port map (
      I0 => \left_sr[31]_i_2_n_0\,
      I1 => \left_sr[39]_i_4_n_0\,
      I2 => \left_sr[44]_i_9_n_0\,
      I3 => left_sr1(1),
      I4 => left_sr1(0),
      I5 => left_sr1(2),
      O => \left_sr[34]_i_2_n_0\
    );
\left_sr[35]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF8880000"
    )
        port map (
      I0 => \left_sr[37]_i_2_n_0\,
      I1 => \left_sr[35]_i_2_n_0\,
      I2 => \left_sr[39]_i_2_n_0\,
      I3 => \left_sr[35]_i_3_n_0\,
      I4 => \left_sr[35]_i_4_n_0\,
      I5 => \^in_left\(35),
      O => \left_sr[35]_i_1_n_0\
    );
\left_sr[35]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \left_sr[39]_i_7_n_0\,
      I1 => left_sr1(2),
      O => \left_sr[35]_i_2_n_0\
    );
\left_sr[35]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \left_sr[39]_i_6_n_0\,
      I1 => left_sr1(2),
      O => \left_sr[35]_i_3_n_0\
    );
\left_sr[35]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800FF00A8000000"
    )
        port map (
      I0 => \left_sr[31]_i_2_n_0\,
      I1 => left_sr1(0),
      I2 => left_sr1(1),
      I3 => \left_sr[44]_i_9_n_0\,
      I4 => left_sr1(2),
      I5 => \left_sr[39]_i_4_n_0\,
      O => \left_sr[35]_i_4_n_0\
    );
\left_sr[36]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF8880000"
    )
        port map (
      I0 => \left_sr[37]_i_2_n_0\,
      I1 => \left_sr[44]_i_5_n_0\,
      I2 => \left_sr[44]_i_2_n_0\,
      I3 => \left_sr[39]_i_2_n_0\,
      I4 => \left_sr[36]_i_2_n_0\,
      I5 => \^in_left\(36),
      O => \left_sr[36]_i_1_n_0\
    );
\left_sr[36]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BFF000088000000"
    )
        port map (
      I0 => \left_sr[31]_i_2_n_0\,
      I1 => left_sr1(1),
      I2 => left_sr1(0),
      I3 => left_sr1(2),
      I4 => \left_sr[44]_i_9_n_0\,
      I5 => \left_sr[39]_i_4_n_0\,
      O => \left_sr[36]_i_2_n_0\
    );
\left_sr[37]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF8880000"
    )
        port map (
      I0 => \left_sr[37]_i_2_n_0\,
      I1 => \left_sr[37]_i_3_n_0\,
      I2 => \left_sr[37]_i_4_n_0\,
      I3 => \left_sr[39]_i_2_n_0\,
      I4 => \left_sr[37]_i_5_n_0\,
      I5 => \^in_left\(37),
      O => \left_sr[37]_i_1_n_0\
    );
\left_sr[37]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => left_sr1(5),
      I1 => left_sr1(4),
      I2 => left_sr1(3),
      O => \left_sr[37]_i_2_n_0\
    );
\left_sr[37]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => left_sr1(1),
      I1 => left_sr1(0),
      I2 => \left_sr[42]_i_7_n_0\,
      I3 => p_0_in(2),
      O => \left_sr[37]_i_3_n_0\
    );
\left_sr[37]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF8F888888"
    )
        port map (
      I0 => \left_sr[37]_i_6_n_0\,
      I1 => left_sr1(2),
      I2 => \left_sr[37]_i_7_n_0\,
      I3 => \ui_r_reg_n_0_[2]\,
      I4 => \left_sr[3]_i_2_n_0\,
      I5 => \left_sr[37]_i_8_n_0\,
      O => \left_sr[37]_i_4_n_0\
    );
\left_sr[37]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFF000080000000"
    )
        port map (
      I0 => \left_sr[31]_i_2_n_0\,
      I1 => left_sr1(0),
      I2 => left_sr1(1),
      I3 => left_sr1(2),
      I4 => \left_sr[44]_i_9_n_0\,
      I5 => \left_sr[39]_i_4_n_0\,
      O => \left_sr[37]_i_5_n_0\
    );
\left_sr[37]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000C840"
    )
        port map (
      I0 => left_sr1(0),
      I1 => \left_sr[44]_i_9_n_0\,
      I2 => \ui_r_reg_n_0_[1]\,
      I3 => \ui_r_reg_n_0_[0]\,
      I4 => left_sr1(1),
      O => \left_sr[37]_i_6_n_0\
    );
\left_sr[37]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => left_sr1(1),
      I1 => left_sr1(0),
      O => \left_sr[37]_i_7_n_0\
    );
\left_sr[37]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00CC00F000"
    )
        port map (
      I0 => \ui_r_reg_n_0_[3]\,
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => \left_sr[3]_i_2_n_0\,
      I4 => left_sr1(0),
      I5 => left_sr1(1),
      O => \left_sr[37]_i_8_n_0\
    );
\left_sr[38]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8000"
    )
        port map (
      I0 => \left_sr[39]_i_2_n_0\,
      I1 => \left_sr[38]_i_2_n_0\,
      I2 => \left_sr[39]_i_4_n_0\,
      I3 => \left_sr[38]_i_3_n_0\,
      I4 => \^in_left\(38),
      O => \left_sr[38]_i_1_n_0\
    );
\left_sr[38]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \left_sr[42]_i_6_n_0\,
      I1 => left_sr1(2),
      I2 => \left_sr[42]_i_5_n_0\,
      O => \left_sr[38]_i_2_n_0\
    );
\left_sr[38]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F00"
    )
        port map (
      I0 => left_sr1(0),
      I1 => left_sr1(1),
      I2 => left_sr1(2),
      I3 => \left_sr[44]_i_9_n_0\,
      O => \left_sr[38]_i_3_n_0\
    );
\left_sr[39]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8000"
    )
        port map (
      I0 => \left_sr[39]_i_2_n_0\,
      I1 => \left_sr[39]_i_3_n_0\,
      I2 => \left_sr[39]_i_4_n_0\,
      I3 => \left_sr[39]_i_5_n_0\,
      I4 => \^in_left\(39),
      O => \left_sr[39]_i_1_n_0\
    );
\left_sr[39]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => left_sr1(4),
      I1 => left_sr1(5),
      I2 => left_sr1(3),
      O => \left_sr[39]_i_2_n_0\
    );
\left_sr[39]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \left_sr[39]_i_6_n_0\,
      I1 => left_sr1(2),
      I2 => \left_sr[39]_i_7_n_0\,
      O => \left_sr[39]_i_3_n_0\
    );
\left_sr[39]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => left_sr1(3),
      I1 => \left_sr[43]_i_5_n_0\,
      I2 => left_sr1(4),
      I3 => left_sr1(5),
      O => \left_sr[39]_i_4_n_0\
    );
\left_sr[39]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0E0"
    )
        port map (
      I0 => left_sr1(1),
      I1 => left_sr1(0),
      I2 => \left_sr[44]_i_9_n_0\,
      I3 => left_sr1(2),
      O => \left_sr[39]_i_5_n_0\
    );
\left_sr[39]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFE0400000E040"
    )
        port map (
      I0 => left_sr1(0),
      I1 => \ui_r_reg_n_0_[3]\,
      I2 => \left_sr[44]_i_9_n_0\,
      I3 => \ui_r_reg_n_0_[2]\,
      I4 => left_sr1(1),
      I5 => \left_sr[39]_i_8_n_0\,
      O => \left_sr[39]_i_6_n_0\
    );
\left_sr[39]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000A0A0C0C00000"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(2),
      I2 => \left_sr[44]_i_9_n_0\,
      I3 => p_0_in(0),
      I4 => left_sr1(0),
      I5 => left_sr1(1),
      O => \left_sr[39]_i_7_n_0\
    );
\left_sr[39]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => \ui_r_reg_n_0_[0]\,
      I1 => \ui_r_reg_n_0_[1]\,
      I2 => \left_sr[44]_i_9_n_0\,
      I3 => left_sr1(0),
      O => \left_sr[39]_i_8_n_0\
    );
\left_sr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8000"
    )
        port map (
      I0 => \left_sr[35]_i_3_n_0\,
      I1 => \left_sr[13]_i_2_n_0\,
      I2 => \left_sr[7]_i_2_n_0\,
      I3 => \left_sr[3]_i_2_n_0\,
      I4 => \^in_left\(3),
      O => \left_sr[3]_i_1_n_0\
    );
\left_sr[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => left_sr1(8),
      I1 => left_sr1(9),
      I2 => left_sr1(6),
      I3 => left_sr1(7),
      I4 => left_sr1(2),
      O => \left_sr[3]_i_2_n_0\
    );
\left_sr[40]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => left_sr0(40),
      I1 => left_sr1(5),
      I2 => left_sr1(4),
      I3 => \left_sr[40]_i_3_n_0\,
      I4 => \left_sr[43]_i_5_n_0\,
      I5 => \^in_left\(40),
      O => \left_sr[40]_i_1_n_0\
    );
\left_sr[40]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088000000F00000"
    )
        port map (
      I0 => \left_sr[0]_i_2_n_0\,
      I1 => \ui_r_reg_n_0_[0]\,
      I2 => \left_sr[32]_i_2_n_0\,
      I3 => left_sr1(4),
      I4 => left_sr1(5),
      I5 => left_sr1(3),
      O => left_sr0(40)
    );
\left_sr[40]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33003400"
    )
        port map (
      I0 => left_sr1(0),
      I1 => left_sr1(3),
      I2 => left_sr1(1),
      I3 => \left_sr[44]_i_9_n_0\,
      I4 => left_sr1(2),
      O => \left_sr[40]_i_3_n_0\
    );
\left_sr[41]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => left_sr0(41),
      I1 => left_sr1(5),
      I2 => left_sr1(4),
      I3 => \left_sr[41]_i_3_n_0\,
      I4 => \left_sr[43]_i_5_n_0\,
      I5 => \^in_left\(41),
      O => \left_sr[41]_i_1_n_0\
    );
\left_sr[41]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => \left_sr[33]_i_3_n_0\,
      I1 => \left_sr[33]_i_2_n_0\,
      I2 => left_sr1(4),
      I3 => left_sr1(5),
      I4 => left_sr1(3),
      O => left_sr0(41)
    );
\left_sr[41]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55006200"
    )
        port map (
      I0 => left_sr1(3),
      I1 => left_sr1(1),
      I2 => left_sr1(0),
      I3 => \left_sr[44]_i_9_n_0\,
      I4 => left_sr1(2),
      O => \left_sr[41]_i_3_n_0\
    );
\left_sr[42]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C808FFFFC8080000"
    )
        port map (
      I0 => \left_sr[42]_i_2_n_0\,
      I1 => \left_sr[44]_i_3_n_0\,
      I2 => left_sr1(3),
      I3 => \left_sr[42]_i_3_n_0\,
      I4 => \left_sr[42]_i_4_n_0\,
      I5 => \^in_left\(42),
      O => \left_sr[42]_i_1_n_0\
    );
\left_sr[42]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \left_sr[42]_i_5_n_0\,
      I1 => left_sr1(2),
      O => \left_sr[42]_i_2_n_0\
    );
\left_sr[42]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \left_sr[42]_i_6_n_0\,
      I1 => left_sr1(2),
      O => \left_sr[42]_i_3_n_0\
    );
\left_sr[42]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0880000"
    )
        port map (
      I0 => \left_sr[42]_i_7_n_0\,
      I1 => \left_sr[43]_i_5_n_0\,
      I2 => \left_sr[2]_i_2_n_0\,
      I3 => left_sr1(3),
      I4 => left_sr1(5),
      I5 => left_sr1(4),
      O => \left_sr[42]_i_4_n_0\
    );
\left_sr[42]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000C0C0AAAAAAAA"
    )
        port map (
      I0 => \left_sr[42]_i_8_n_0\,
      I1 => p_0_in(0),
      I2 => \left_sr[44]_i_9_n_0\,
      I3 => \ui_r_reg_n_0_[3]\,
      I4 => left_sr1(0),
      I5 => left_sr1(1),
      O => \left_sr[42]_i_5_n_0\
    );
\left_sr[42]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C000C00FA000A00"
    )
        port map (
      I0 => \ui_r_reg_n_0_[2]\,
      I1 => \ui_r_reg_n_0_[0]\,
      I2 => left_sr1(0),
      I3 => \left_sr[44]_i_9_n_0\,
      I4 => \ui_r_reg_n_0_[1]\,
      I5 => left_sr1(1),
      O => \left_sr[42]_i_6_n_0\
    );
\left_sr[42]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => left_sr1(2),
      I1 => left_sr1(8),
      I2 => left_sr1(9),
      I3 => left_sr1(6),
      I4 => left_sr1(7),
      O => \left_sr[42]_i_7_n_0\
    );
\left_sr[42]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(2),
      I2 => \left_sr[44]_i_9_n_0\,
      I3 => left_sr1(0),
      O => \left_sr[42]_i_8_n_0\
    );
\left_sr[43]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => left_sr0(43),
      I1 => left_sr1(5),
      I2 => left_sr1(4),
      I3 => \left_sr[43]_i_4_n_0\,
      I4 => \left_sr[43]_i_5_n_0\,
      I5 => \^in_left\(43),
      O => \left_sr[43]_i_1_n_0\
    );
\left_sr[43]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1171EE8E"
    )
        port map (
      I0 => \left_sr[44]_i_16_n_0\,
      I1 => ph(3),
      I2 => n(2),
      I3 => ph(2),
      I4 => ph(4),
      O => \left_sr[43]_i_10_n_0\
    );
\left_sr[43]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2DD2D22D"
    )
        port map (
      I0 => n(2),
      I1 => ph(2),
      I2 => ph(3),
      I3 => \left_sr[44]_i_16_n_0\,
      I4 => \left_sr[43]_i_7_n_0\,
      O => \left_sr[43]_i_11_n_0\
    );
\left_sr[43]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^a\(2),
      I1 => \left_sr[43]_i_18_n_0\,
      O => \left_sr[43]_i_12_n_0\
    );
\left_sr[43]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99696696"
    )
        port map (
      I0 => n(1),
      I1 => ph(1),
      I2 => ph(0),
      I3 => n(0),
      I4 => \left_sr[43]_i_19_n_0\,
      O => \left_sr[43]_i_13_n_0\
    );
\left_sr[43]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010110111010020"
    )
        port map (
      I0 => ph(4),
      I1 => ph(5),
      I2 => n(2),
      I3 => ph(2),
      I4 => ph(3),
      I5 => \left_sr[44]_i_16_n_0\,
      O => \left_sr[43]_i_14_n_0\
    );
\left_sr[43]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => n(0),
      I1 => ph(0),
      O => \left_sr[43]_i_15_n_0\
    );
\left_sr[43]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4BB4"
    )
        port map (
      I0 => n(0),
      I1 => ph(0),
      I2 => ph(1),
      I3 => n(1),
      O => \^a\(1)
    );
\left_sr[43]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ph(2),
      I1 => n(2),
      O => \left_sr[43]_i_17_n_0\
    );
\left_sr[43]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00101055FFEFEFAA"
    )
        port map (
      I0 => ph(4),
      I1 => ph(2),
      I2 => n(2),
      I3 => ph(3),
      I4 => \left_sr[44]_i_16_n_0\,
      I5 => ph(5),
      O => \left_sr[43]_i_18_n_0\
    );
\left_sr[43]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1171EE8E"
    )
        port map (
      I0 => \left_sr[44]_i_16_n_0\,
      I1 => ph(3),
      I2 => n(2),
      I3 => ph(2),
      I4 => ph(4),
      O => \left_sr[43]_i_19_n_0\
    );
\left_sr[43]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30200020"
    )
        port map (
      I0 => \left_sr[35]_i_2_n_0\,
      I1 => left_sr1(4),
      I2 => left_sr1(5),
      I3 => left_sr1(3),
      I4 => \left_sr[35]_i_3_n_0\,
      O => left_sr0(43)
    );
\left_sr[43]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E00F000"
    )
        port map (
      I0 => left_sr1(0),
      I1 => left_sr1(1),
      I2 => left_sr1(3),
      I3 => \left_sr[44]_i_9_n_0\,
      I4 => left_sr1(2),
      O => \left_sr[43]_i_4_n_0\
    );
\left_sr[43]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000808080808080"
    )
        port map (
      I0 => \up_edge[6]_i_5_n_0\,
      I1 => \left_sr[43]_i_7_n_0\,
      I2 => \left_sr[43]_i_14_n_0\,
      I3 => \left_sr[43]_i_15_n_0\,
      I4 => \^a\(2),
      I5 => \^a\(1),
      O => \left_sr[43]_i_5_n_0\
    );
\left_sr[43]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA9A9A55"
    )
        port map (
      I0 => ph(4),
      I1 => ph(2),
      I2 => n(2),
      I3 => ph(3),
      I4 => \left_sr[44]_i_16_n_0\,
      O => \^a\(4)
    );
\left_sr[43]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0F1E0F1E1E1E"
    )
        port map (
      I0 => ph(4),
      I1 => ph(5),
      I2 => ph(6),
      I3 => \left_sr[43]_i_17_n_0\,
      I4 => ph(3),
      I5 => \left_sr[44]_i_16_n_0\,
      O => \left_sr[43]_i_7_n_0\
    );
\left_sr[43]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEF751085108AEF7"
    )
        port map (
      I0 => ph(1),
      I1 => ph(0),
      I2 => n(0),
      I3 => n(1),
      I4 => n(2),
      I5 => ph(2),
      O => \^a\(2)
    );
\left_sr[43]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4BB4"
    )
        port map (
      I0 => n(0),
      I1 => ph(0),
      I2 => ph(1),
      I3 => n(1),
      O => \left_sr[43]_i_9_n_0\
    );
\left_sr[44]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8C80FFFF8C800000"
    )
        port map (
      I0 => \left_sr[44]_i_2_n_0\,
      I1 => \left_sr[44]_i_3_n_0\,
      I2 => left_sr1(3),
      I3 => \left_sr[44]_i_5_n_0\,
      I4 => \left_sr[44]_i_6_n_0\,
      I5 => \^in_left\(44),
      O => \left_sr[44]_i_1_n_0\
    );
\left_sr[44]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => ph(0),
      I1 => n(0),
      O => \^a\(0)
    );
\left_sr[44]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9969669666969969"
    )
        port map (
      I0 => ph(0),
      I1 => n(0),
      I2 => n(2),
      I3 => ph(2),
      I4 => ph(3),
      I5 => \left_sr[44]_i_16_n_0\,
      O => \left_sr[44]_i_11_n_0\
    );
\left_sr[44]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6669666696669696"
    )
        port map (
      I0 => ph(2),
      I1 => n(2),
      I2 => n(1),
      I3 => n(0),
      I4 => ph(0),
      I5 => ph(1),
      O => \left_sr[44]_i_12_n_0\
    );
\left_sr[44]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9969"
    )
        port map (
      I0 => n(1),
      I1 => ph(1),
      I2 => ph(0),
      I3 => n(0),
      O => \left_sr[44]_i_13_n_0\
    );
\left_sr[44]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => ph(0),
      I1 => n(0),
      O => \left_sr[44]_i_14_n_0\
    );
\left_sr[44]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => left_sr1(7),
      I1 => left_sr1(6),
      I2 => left_sr1(9),
      I3 => left_sr1(8),
      I4 => left_sr1(2),
      I5 => left_sr1(1),
      O => \left_sr[44]_i_15_n_0\
    );
\left_sr[44]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3C7D3C3C143C1414"
    )
        port map (
      I0 => n(1),
      I1 => n(2),
      I2 => ph(2),
      I3 => n(0),
      I4 => ph(0),
      I5 => ph(1),
      O => \left_sr[44]_i_16_n_0\
    );
\left_sr[44]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABABAAAAABAAAAA"
    )
        port map (
      I0 => \left_sr[44]_i_7_n_0\,
      I1 => \left_sr[44]_i_8_n_0\,
      I2 => \left_sr[44]_i_9_n_0\,
      I3 => left_sr1(2),
      I4 => p_0_in(0),
      I5 => \ui_r_reg_n_0_[0]\,
      O => \left_sr[44]_i_2_n_0\
    );
\left_sr[44]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => left_sr1(5),
      I1 => left_sr1(4),
      O => \left_sr[44]_i_3_n_0\
    );
\left_sr[44]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8800A00000000000"
    )
        port map (
      I0 => left_sr1(1),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \left_sr[44]_i_9_n_0\,
      I4 => left_sr1(0),
      I5 => left_sr1(2),
      O => \left_sr[44]_i_5_n_0\
    );
\left_sr[44]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B0000000800000"
    )
        port map (
      I0 => \left_sr[4]_i_2_n_0\,
      I1 => left_sr1(3),
      I2 => \left_sr[43]_i_5_n_0\,
      I3 => left_sr1(4),
      I4 => left_sr1(5),
      I5 => \left_sr[44]_i_15_n_0\,
      O => \left_sr[44]_i_6_n_0\
    );
\left_sr[44]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88CCC0008800C000"
    )
        port map (
      I0 => \ui_r_reg_n_0_[1]\,
      I1 => \left_sr[3]_i_2_n_0\,
      I2 => \ui_r_reg_n_0_[3]\,
      I3 => left_sr1(0),
      I4 => left_sr1(1),
      I5 => \ui_r_reg_n_0_[2]\,
      O => \left_sr[44]_i_7_n_0\
    );
\left_sr[44]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => left_sr1(1),
      I1 => left_sr1(0),
      O => \left_sr[44]_i_8_n_0\
    );
\left_sr[44]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => left_sr1(7),
      I1 => left_sr1(6),
      I2 => left_sr1(9),
      I3 => left_sr1(8),
      O => \left_sr[44]_i_9_n_0\
    );
\left_sr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8000"
    )
        port map (
      I0 => \left_sr[13]_i_2_n_0\,
      I1 => \left_sr[44]_i_2_n_0\,
      I2 => \left_sr[7]_i_2_n_0\,
      I3 => \left_sr[4]_i_2_n_0\,
      I4 => \^in_left\(4),
      O => \left_sr[4]_i_1_n_0\
    );
\left_sr[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F00"
    )
        port map (
      I0 => left_sr1(1),
      I1 => left_sr1(0),
      I2 => left_sr1(2),
      I3 => \left_sr[44]_i_9_n_0\,
      O => \left_sr[4]_i_2_n_0\
    );
\left_sr[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8000"
    )
        port map (
      I0 => \left_sr[13]_i_2_n_0\,
      I1 => \left_sr[37]_i_4_n_0\,
      I2 => \left_sr[7]_i_2_n_0\,
      I3 => \left_sr[5]_i_2_n_0\,
      I4 => \^in_left\(5),
      O => \left_sr[5]_i_1_n_0\
    );
\left_sr[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000007"
    )
        port map (
      I0 => left_sr1(1),
      I1 => left_sr1(2),
      I2 => left_sr1(7),
      I3 => left_sr1(6),
      I4 => left_sr1(9),
      I5 => left_sr1(8),
      O => \left_sr[5]_i_2_n_0\
    );
\left_sr[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA9A995A9"
    )
        port map (
      I0 => ph(5),
      I1 => \left_sr[44]_i_16_n_0\,
      I2 => ph(3),
      I3 => n(2),
      I4 => ph(2),
      I5 => ph(4),
      O => \^a\(5)
    );
\left_sr[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00101055FFEFEFAA"
    )
        port map (
      I0 => ph(4),
      I1 => ph(2),
      I2 => n(2),
      I3 => ph(3),
      I4 => \left_sr[44]_i_16_n_0\,
      I5 => ph(5),
      O => \left_sr[5]_i_5_n_0\
    );
\left_sr[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8000"
    )
        port map (
      I0 => \left_sr[13]_i_2_n_0\,
      I1 => \left_sr[38]_i_2_n_0\,
      I2 => \left_sr[7]_i_2_n_0\,
      I3 => \left_sr[38]_i_3_n_0\,
      I4 => \^in_left\(6),
      O => \left_sr[6]_i_1_n_0\
    );
\left_sr[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8000"
    )
        port map (
      I0 => \left_sr[13]_i_2_n_0\,
      I1 => \left_sr[39]_i_3_n_0\,
      I2 => \left_sr[7]_i_2_n_0\,
      I3 => \left_sr[39]_i_5_n_0\,
      I4 => \^in_left\(7),
      O => \left_sr[7]_i_1_n_0\
    );
\left_sr[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => left_sr1(3),
      I1 => \left_sr[43]_i_5_n_0\,
      I2 => left_sr1(4),
      I3 => left_sr1(5),
      O => \left_sr[7]_i_2_n_0\
    );
\left_sr[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => left_sr0(8),
      I1 => left_sr1(5),
      I2 => left_sr1(4),
      I3 => \left_sr[40]_i_3_n_0\,
      I4 => \left_sr[43]_i_5_n_0\,
      I5 => \^in_left\(8),
      O => \left_sr[8]_i_1_n_0\
    );
\left_sr[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000088000000F0"
    )
        port map (
      I0 => \left_sr[0]_i_2_n_0\,
      I1 => \ui_r_reg_n_0_[0]\,
      I2 => \left_sr[32]_i_2_n_0\,
      I3 => left_sr1(4),
      I4 => left_sr1(5),
      I5 => left_sr1(3),
      O => left_sr0(8)
    );
\left_sr[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => left_sr0(9),
      I1 => left_sr1(5),
      I2 => left_sr1(4),
      I3 => \left_sr[41]_i_3_n_0\,
      I4 => \left_sr[43]_i_5_n_0\,
      I5 => \^in_left\(9),
      O => \left_sr[9]_i_1_n_0\
    );
\left_sr[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000A000C"
    )
        port map (
      I0 => \left_sr[33]_i_3_n_0\,
      I1 => \left_sr[33]_i_2_n_0\,
      I2 => left_sr1(4),
      I3 => left_sr1(5),
      I4 => left_sr1(3),
      O => left_sr0(9)
    );
\left_sr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \left_sr[0]_i_1_n_0\,
      Q => \^in_left\(0),
      R => '0'
    );
\left_sr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \left_sr[10]_i_1_n_0\,
      Q => \^in_left\(10),
      R => '0'
    );
\left_sr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \left_sr[11]_i_1_n_0\,
      Q => \^in_left\(11),
      R => '0'
    );
\left_sr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \left_sr[12]_i_1_n_0\,
      Q => \^in_left\(12),
      R => '0'
    );
\left_sr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \left_sr[13]_i_1_n_0\,
      Q => \^in_left\(13),
      R => '0'
    );
\left_sr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \left_sr[14]_i_1_n_0\,
      Q => \^in_left\(14),
      R => '0'
    );
\left_sr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \left_sr[15]_i_1_n_0\,
      Q => \^in_left\(15),
      R => '0'
    );
\left_sr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \left_sr[16]_i_1_n_0\,
      Q => \^in_left\(16),
      R => '0'
    );
\left_sr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \left_sr[17]_i_1_n_0\,
      Q => \^in_left\(17),
      R => '0'
    );
\left_sr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \left_sr[18]_i_1_n_0\,
      Q => \^in_left\(18),
      R => '0'
    );
\left_sr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \left_sr[19]_i_1_n_0\,
      Q => \^in_left\(19),
      R => '0'
    );
\left_sr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \left_sr[1]_i_1_n_0\,
      Q => \^in_left\(1),
      R => '0'
    );
\left_sr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \left_sr[20]_i_1_n_0\,
      Q => \^in_left\(20),
      R => '0'
    );
\left_sr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \left_sr[21]_i_1_n_0\,
      Q => \^in_left\(21),
      R => '0'
    );
\left_sr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \left_sr[22]_i_1_n_0\,
      Q => \^in_left\(22),
      R => '0'
    );
\left_sr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \left_sr[23]_i_1_n_0\,
      Q => \^in_left\(23),
      R => '0'
    );
\left_sr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \left_sr[24]_i_1_n_0\,
      Q => \^in_left\(24),
      R => '0'
    );
\left_sr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \left_sr[25]_i_1_n_0\,
      Q => \^in_left\(25),
      R => '0'
    );
\left_sr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \left_sr[26]_i_1_n_0\,
      Q => \^in_left\(26),
      R => '0'
    );
\left_sr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \left_sr[27]_i_1_n_0\,
      Q => \^in_left\(27),
      R => '0'
    );
\left_sr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \left_sr[28]_i_1_n_0\,
      Q => \^in_left\(28),
      R => '0'
    );
\left_sr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \left_sr[29]_i_1_n_0\,
      Q => \^in_left\(29),
      R => '0'
    );
\left_sr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \left_sr[2]_i_1_n_0\,
      Q => \^in_left\(2),
      R => '0'
    );
\left_sr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \left_sr[30]_i_1_n_0\,
      Q => \^in_left\(30),
      R => '0'
    );
\left_sr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \left_sr[31]_i_1_n_0\,
      Q => \^in_left\(31),
      R => '0'
    );
\left_sr_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \left_sr[32]_i_1_n_0\,
      Q => \^in_left\(32),
      R => '0'
    );
\left_sr_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \left_sr[33]_i_1_n_0\,
      Q => \^in_left\(33),
      R => '0'
    );
\left_sr_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \left_sr[34]_i_1_n_0\,
      Q => \^in_left\(34),
      R => '0'
    );
\left_sr_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \left_sr[35]_i_1_n_0\,
      Q => \^in_left\(35),
      R => '0'
    );
\left_sr_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \left_sr[36]_i_1_n_0\,
      Q => \^in_left\(36),
      R => '0'
    );
\left_sr_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \left_sr[37]_i_1_n_0\,
      Q => \^in_left\(37),
      R => '0'
    );
\left_sr_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \left_sr[38]_i_1_n_0\,
      Q => \^in_left\(38),
      R => '0'
    );
\left_sr_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \left_sr[39]_i_1_n_0\,
      Q => \^in_left\(39),
      R => '0'
    );
\left_sr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \left_sr[3]_i_1_n_0\,
      Q => \^in_left\(3),
      R => '0'
    );
\left_sr_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \left_sr[40]_i_1_n_0\,
      Q => \^in_left\(40),
      R => '0'
    );
\left_sr_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \left_sr[41]_i_1_n_0\,
      Q => \^in_left\(41),
      R => '0'
    );
\left_sr_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \left_sr[42]_i_1_n_0\,
      Q => \^in_left\(42),
      R => '0'
    );
\left_sr_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \left_sr[43]_i_1_n_0\,
      Q => \^in_left\(43),
      R => '0'
    );
\left_sr_reg[43]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \left_sr_reg[44]_i_4_n_0\,
      CO(3) => \left_sr_reg[43]_i_3_n_0\,
      CO(2) => \left_sr_reg[43]_i_3_n_1\,
      CO(1) => \left_sr_reg[43]_i_3_n_2\,
      CO(0) => \left_sr_reg[43]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => \^a\(4),
      DI(2) => \left_sr[43]_i_7_n_0\,
      DI(1) => \^a\(2),
      DI(0) => \left_sr[43]_i_9_n_0\,
      O(3 downto 0) => left_sr1(7 downto 4),
      S(3) => \left_sr[43]_i_10_n_0\,
      S(2) => \left_sr[43]_i_11_n_0\,
      S(1) => \left_sr[43]_i_12_n_0\,
      S(0) => \left_sr[43]_i_13_n_0\
    );
\left_sr_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \left_sr[44]_i_1_n_0\,
      Q => \^in_left\(44),
      R => '0'
    );
\left_sr_reg[44]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \left_sr_reg[44]_i_4_n_0\,
      CO(2) => \left_sr_reg[44]_i_4_n_1\,
      CO(1) => \left_sr_reg[44]_i_4_n_2\,
      CO(0) => \left_sr_reg[44]_i_4_n_3\,
      CYINIT => '0',
      DI(3) => \^a\(0),
      DI(2 downto 0) => B"001",
      O(3 downto 0) => left_sr1(3 downto 0),
      S(3) => \left_sr[44]_i_11_n_0\,
      S(2) => \left_sr[44]_i_12_n_0\,
      S(1) => \left_sr[44]_i_13_n_0\,
      S(0) => \left_sr[44]_i_14_n_0\
    );
\left_sr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \left_sr[4]_i_1_n_0\,
      Q => \^in_left\(4),
      R => '0'
    );
\left_sr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \left_sr[5]_i_1_n_0\,
      Q => \^in_left\(5),
      R => '0'
    );
\left_sr_reg[5]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \left_sr_reg[43]_i_3_n_0\,
      CO(3 downto 1) => \NLW_left_sr_reg[5]_i_3_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \left_sr_reg[5]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^a\(5),
      O(3 downto 2) => \NLW_left_sr_reg[5]_i_3_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => left_sr1(9 downto 8),
      S(3 downto 2) => B"00",
      S(1) => \left_sr[43]_i_7_n_0\,
      S(0) => \left_sr[5]_i_5_n_0\
    );
\left_sr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \left_sr[6]_i_1_n_0\,
      Q => \^in_left\(6),
      R => '0'
    );
\left_sr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \left_sr[7]_i_1_n_0\,
      Q => \^in_left\(7),
      R => '0'
    );
\left_sr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \left_sr[8]_i_1_n_0\,
      Q => \^in_left\(8),
      R => '0'
    );
\left_sr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \left_sr[9]_i_1_n_0\,
      Q => \^in_left\(9),
      R => '0'
    );
\lmin[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^l_new\(0),
      I1 => \lmin_reg[6]\(0),
      I2 => \^b_real\,
      I3 => \^scan\,
      O => b_real_reg_4
    );
\lmin[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^l_new\(1),
      I1 => \lmin_reg[6]\(0),
      I2 => \^b_real\,
      I3 => \^scan\,
      O => b_real_reg_5
    );
\lmin[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^l_new\(2),
      I1 => \lmin_reg[6]\(0),
      I2 => \^b_real\,
      I3 => \^scan\,
      O => b_real_reg_6
    );
\lmin[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^l_new\(3),
      I1 => \lmin_reg[6]\(0),
      I2 => \^b_real\,
      I3 => \^scan\,
      O => b_real_reg_7
    );
\lmin[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^l_new\(4),
      I1 => \lmin_reg[6]\(0),
      I2 => \^b_real\,
      I3 => \^scan\,
      O => b_real_reg_8
    );
\lmin[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \lmin_reg[5]\(0),
      I1 => \lmin_reg[6]\(0),
      I2 => \^b_real\,
      I3 => \^scan\,
      O => b_real_reg_9
    );
\lmin[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F00"
    )
        port map (
      I0 => \^scan\,
      I1 => \^b_real\,
      I2 => \lmin_reg[6]\(0),
      I3 => \^load\,
      O => b_real_reg_0
    );
\lmin[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => \^load\,
      I1 => \lmin_reg[6]\(0),
      I2 => \^b_real\,
      I3 => \^scan\,
      O => b_real_reg_1
    );
\lmin[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^l_new\(5),
      I1 => \lmin_reg[6]\(0),
      I2 => \^b_real\,
      I3 => \^scan\,
      O => b_real_reg_10
    );
\lmin[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAAA0200"
    )
        port map (
      I0 => lmin(3),
      I1 => \^o\(1),
      I2 => \^l_bot[6]_i_14_0\(0),
      I3 => \^l_bot[6]_i_14_1\(0),
      I4 => \^b_first\,
      I5 => \l_bot_reg[6]_i_3_n_5\,
      O => DI(0)
    );
\lmin[6]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00EFFF00FF10"
    )
        port map (
      I0 => \^o\(1),
      I1 => \^l_bot[6]_i_14_0\(0),
      I2 => \^l_bot[6]_i_14_1\(0),
      I3 => \^b_first\,
      I4 => \l_bot_reg[6]_i_3_n_5\,
      I5 => lmin(3),
      O => b_first_reg_1(0)
    );
lr_reg_0_15_0_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^l_new\(0),
      I1 => \^b_real\,
      I2 => a(0),
      O => p_1_in(0)
    );
lr_reg_0_15_0_0_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^uc_reg[3]_0\(0),
      O => \uc_reg[0]_6\
    );
lr_reg_0_15_1_1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^l_new\(1),
      I1 => \^b_real\,
      I2 => a(1),
      O => p_1_in(1)
    );
lr_reg_0_15_2_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^l_new\(2),
      I1 => \^b_real\,
      I2 => a(2),
      O => p_1_in(2)
    );
lr_reg_0_15_3_3_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^l_new\(3),
      I1 => \^b_real\,
      I2 => a(3),
      O => p_1_in(3)
    );
lr_reg_0_15_4_4_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^l_new\(4),
      I1 => \^b_real\,
      I2 => a(4),
      O => p_1_in(4)
    );
lr_reg_0_15_6_6_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^l_new\(5),
      I1 => \^b_real\,
      I2 => a(6),
      O => p_1_in(5)
    );
\m_s0[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \uo[7]_i_8_n_0\,
      I1 => \m_s0[6]_i_2_n_0\,
      O => run_reg_1(0)
    );
\m_s0[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000006000000"
    )
        port map (
      I0 => \m_s0[6]_i_3_n_0\,
      I1 => \uo[7]_i_17_n_0\,
      I2 => \m_s2[6]_i_4_n_0\,
      I3 => \m_s2[6]_i_3_n_0\,
      I4 => \m_s0[6]_i_4_n_0\,
      I5 => \m_s0[6]_i_5_n_0\,
      O => \m_s0[6]_i_2_n_0\
    );
\m_s0[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => n(2),
      I1 => n(1),
      I2 => n(0),
      O => \m_s0[6]_i_3_n_0\
    );
\m_s0[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9969669666969969"
    )
        port map (
      I0 => \^uc_reg[3]_0\(1),
      I1 => pos(1),
      I2 => \^uc_reg[3]_0\(0),
      I3 => pos(0),
      I4 => n(0),
      I5 => n(1),
      O => \m_s0[6]_i_4_n_0\
    );
\m_s0[6]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEBBBBE"
    )
        port map (
      I0 => \m_sec[7]_i_4_n_0\,
      I1 => n(2),
      I2 => n(0),
      I3 => n(1),
      I4 => \uo[7]_i_18_n_0\,
      O => \m_s0[6]_i_5_n_0\
    );
\m_s2[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \uo[7]_i_8_n_0\,
      I1 => \m_s2[6]_i_2_n_0\,
      O => run_reg_0(0)
    );
\m_s2[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => \m_sec[7]_i_4_n_0\,
      I1 => \m_s2[6]_i_3_n_0\,
      I2 => \m_s2[6]_i_4_n_0\,
      I3 => \m_s2[6]_i_5_n_0\,
      I4 => \uo[7]_i_17_n_0\,
      I5 => \m_s2[6]_i_6_n_0\,
      O => \m_s2[6]_i_2_n_0\
    );
\m_s2[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0BF4"
    )
        port map (
      I0 => \uo[7]_i_16_n_0\,
      I1 => uc(4),
      I2 => uc(5),
      I3 => uc(6),
      O => \m_s2[6]_i_3_n_0\
    );
\m_s2[6]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => n(0),
      I1 => pos(0),
      I2 => \^uc_reg[3]_0\(0),
      O => \m_s2[6]_i_4_n_0\
    );
\m_s2[6]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69699669"
    )
        port map (
      I0 => n(1),
      I1 => \^uc_reg[3]_0\(1),
      I2 => pos(1),
      I3 => \^uc_reg[3]_0\(0),
      I4 => pos(0),
      O => \m_s2[6]_i_5_n_0\
    );
\m_s2[6]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => n(2),
      I1 => \uo[7]_i_18_n_0\,
      O => \m_s2[6]_i_6_n_0\
    );
\m_sec[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \uo[7]_i_8_n_0\,
      I1 => \m_sec[7]_i_2_n_0\,
      O => run_reg_4(0)
    );
\m_sec[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFDDFDFFE"
    )
        port map (
      I0 => \uo[7]_i_17_n_0\,
      I1 => \m_sec[7]_i_3_n_0\,
      I2 => \uo[7]_i_18_n_0\,
      I3 => n(2),
      I4 => n(1),
      I5 => \m_sec[7]_i_4_n_0\,
      O => \m_sec[7]_i_2_n_0\
    );
\m_sec[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF69FF69FFFFFF"
    )
        port map (
      I0 => n(0),
      I1 => pos(0),
      I2 => \^uc_reg[3]_0\(0),
      I3 => \m_s2[6]_i_3_n_0\,
      I4 => \^pos_reg[0]_0\,
      I5 => n(1),
      O => \m_sec[7]_i_3_n_0\
    );
\m_sec[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAEEAEFFFF77F7"
    )
        port map (
      I0 => uc(5),
      I1 => \uo[7]_i_38_n_0\,
      I2 => \^uc_reg[3]_0\(2),
      I3 => pos(2),
      I4 => \^uc_reg[3]_0\(3),
      I5 => uc(4),
      O => \m_sec[7]_i_4_n_0\
    );
\mw_k[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800008000800800"
    )
        port map (
      I0 => \uo[7]_i_7_n_0\,
      I1 => \uo[7]_i_8_n_0\,
      I2 => \^uc_reg[3]_0\(0),
      I3 => pos(0),
      I4 => pos(1),
      I5 => \^uc_reg[3]_0\(1),
      O => \uc_reg[0]_7\(0)
    );
\mw_s[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800880080000"
    )
        port map (
      I0 => \uo[7]_i_7_n_0\,
      I1 => \uo[7]_i_8_n_0\,
      I2 => pos(0),
      I3 => \^uc_reg[3]_0\(0),
      I4 => pos(1),
      I5 => \^uc_reg[3]_0\(1),
      O => \pos_reg[0]_2\(0)
    );
\n[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ui_r_reg_n_0_[0]\,
      I1 => n0,
      I2 => n(0),
      O => \n[0]_i_1_n_0\
    );
\n[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ui_r_reg_n_0_[1]\,
      I1 => n0,
      I2 => n(1),
      O => \n[1]_i_1_n_0\
    );
\n[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ui_r_reg_n_0_[2]\,
      I1 => n0,
      I2 => n(2),
      O => \n[2]_i_1_n_0\
    );
\n[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => \up_edge[6]_i_3_n_0\,
      I1 => ph(1),
      I2 => ph(0),
      I3 => ph(3),
      I4 => ph(2),
      I5 => \n[2]_i_3_n_0\,
      O => n0
    );
\n[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000044404444"
    )
        port map (
      I0 => ftype(0),
      I1 => ftype(1),
      I2 => ph(1),
      I3 => ph(0),
      I4 => \ftype[2]_i_2_n_0\,
      I5 => ftype(2),
      O => \n[2]_i_3_n_0\
    );
\n_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \n[0]_i_1_n_0\,
      Q => n(0),
      S => \^sr\(1)
    );
\n_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \n[1]_i_1_n_0\,
      Q => n(1),
      R => \^sr\(1)
    );
\n_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \n[2]_i_1_n_0\,
      Q => n(2),
      R => \^sr\(1)
    );
own_wins_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF01"
    )
        port map (
      I0 => pos(0),
      I1 => pos(1),
      I2 => pos(2),
      I3 => own_wins_reg(0),
      O => b_own
    );
\p1[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => ftype(2),
      I1 => \ftype[2]_i_2_n_0\,
      I2 => ph(0),
      I3 => ph(1),
      I4 => ftype(1),
      I5 => ftype(0),
      O => \p1[6]_i_1_n_0\
    );
\p1_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \p1[6]_i_1_n_0\,
      D => \ui_r_reg_n_0_[0]\,
      Q => p1(0),
      S => \^sr\(1)
    );
\p1_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \p1[6]_i_1_n_0\,
      D => \ui_r_reg_n_0_[1]\,
      Q => p1(1),
      S => \^sr\(1)
    );
\p1_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \p1[6]_i_1_n_0\,
      D => \ui_r_reg_n_0_[2]\,
      Q => p1(2),
      S => \^sr\(1)
    );
\p1_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \p1[6]_i_1_n_0\,
      D => \ui_r_reg_n_0_[3]\,
      Q => p1(3),
      S => \^sr\(1)
    );
\p1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \p1[6]_i_1_n_0\,
      D => p_0_in(0),
      Q => p1(4),
      R => \^sr\(1)
    );
\p1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \p1[6]_i_1_n_0\,
      D => p_0_in(1),
      Q => p1(5),
      R => \^sr\(1)
    );
\p1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \p1[6]_i_1_n_0\,
      D => p_0_in(2),
      Q => p1(6),
      R => \^sr\(1)
    );
\p2[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004000000"
    )
        port map (
      I0 => ftype(2),
      I1 => \ftype[2]_i_2_n_0\,
      I2 => ph(0),
      I3 => ph(1),
      I4 => ftype(1),
      I5 => ftype(0),
      O => \p2[6]_i_1_n_0\
    );
\p2_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \p2[6]_i_1_n_0\,
      D => \ui_r_reg_n_0_[0]\,
      Q => p2(0),
      S => \^sr\(1)
    );
\p2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \p2[6]_i_1_n_0\,
      D => \ui_r_reg_n_0_[1]\,
      Q => p2(1),
      R => \^sr\(1)
    );
\p2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \p2[6]_i_1_n_0\,
      D => \ui_r_reg_n_0_[2]\,
      Q => p2(2),
      R => \^sr\(1)
    );
\p2_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \p2[6]_i_1_n_0\,
      D => \ui_r_reg_n_0_[3]\,
      Q => p2(3),
      S => \^sr\(1)
    );
\p2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \p2[6]_i_1_n_0\,
      D => p_0_in(0),
      Q => p2(4),
      R => \^sr\(1)
    );
\p2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \p2[6]_i_1_n_0\,
      D => p_0_in(1),
      Q => p2(5),
      R => \^sr\(1)
    );
\p2_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \p2[6]_i_1_n_0\,
      D => p_0_in(2),
      Q => p2(6),
      S => \^sr\(1)
    );
\ph[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ph(0),
      I1 => ui_in(7),
      O => \ph[0]_i_1_n_0\
    );
\ph[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => ph(1),
      I1 => ph(0),
      I2 => ui_in(7),
      O => \ph[1]_i_1_n_0\
    );
\ph[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => ph(2),
      I1 => ph(0),
      I2 => ph(1),
      I3 => ui_in(7),
      O => \ph[2]_i_1_n_0\
    );
\ph[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => ph(3),
      I1 => ph(1),
      I2 => ph(0),
      I3 => ph(2),
      I4 => ui_in(7),
      O => \ph[3]_i_1_n_0\
    );
\ph[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAAAAAA"
    )
        port map (
      I0 => ph(4),
      I1 => ph(2),
      I2 => ph(0),
      I3 => ph(1),
      I4 => ph(3),
      I5 => ui_in(7),
      O => \ph[4]_i_1_n_0\
    );
\ph[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => ph(6),
      I1 => \ph[5]_i_3_n_0\,
      I2 => ui_in(7),
      O => \ph[5]_i_1_n_0\
    );
\ph[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A6AAAAAA"
    )
        port map (
      I0 => ph(5),
      I1 => ph(3),
      I2 => \ph[5]_i_4_n_0\,
      I3 => ph(2),
      I4 => ph(4),
      I5 => ui_in(7),
      O => \ph[5]_i_2_n_0\
    );
\ph[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => ph(4),
      I1 => ph(2),
      I2 => ph(0),
      I3 => ph(1),
      I4 => ph(3),
      I5 => ph(5),
      O => \ph[5]_i_3_n_0\
    );
\ph[5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => ph(0),
      I1 => ph(1),
      O => \ph[5]_i_4_n_0\
    );
\ph[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0B"
    )
        port map (
      I0 => ph(6),
      I1 => \ph[5]_i_3_n_0\,
      I2 => ui_in(7),
      O => \ph[6]_i_1_n_0\
    );
\ph_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \ph[5]_i_1_n_0\,
      D => \ph[0]_i_1_n_0\,
      Q => ph(0),
      S => \^sr\(1)
    );
\ph_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \ph[5]_i_1_n_0\,
      D => \ph[1]_i_1_n_0\,
      Q => ph(1),
      S => \^sr\(1)
    );
\ph_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \ph[5]_i_1_n_0\,
      D => \ph[2]_i_1_n_0\,
      Q => ph(2),
      S => \^sr\(1)
    );
\ph_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \ph[5]_i_1_n_0\,
      D => \ph[3]_i_1_n_0\,
      Q => ph(3),
      S => \^sr\(1)
    );
\ph_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \ph[5]_i_1_n_0\,
      D => \ph[4]_i_1_n_0\,
      Q => ph(4),
      S => \^sr\(1)
    );
\ph_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \ph[5]_i_1_n_0\,
      D => \ph[5]_i_2_n_0\,
      Q => ph(5),
      S => \^sr\(1)
    );
\ph_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \ph[6]_i_1_n_0\,
      Q => ph(6),
      S => \^sr\(1)
    );
\pos[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \m_sec_reg[7]\(0),
      I1 => \^run\,
      I2 => pos(0),
      O => \pos[0]_i_1_n_0\
    );
\pos[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \m_sec_reg[7]\(1),
      I1 => \^run\,
      I2 => pos(1),
      O => \pos[1]_i_1_n_0\
    );
\pos[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \m_sec_reg[7]\(2),
      I1 => \^run\,
      I2 => pos(2),
      O => \pos[2]_i_1_n_0\
    );
\pos_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pos[0]_i_1_n_0\,
      Q => pos(0),
      R => \^sr\(1)
    );
\pos_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pos[1]_i_1_n_0\,
      Q => pos(1),
      R => \^sr\(1)
    );
\pos_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pos[2]_i_1_n_0\,
      Q => pos(2),
      R => \^sr\(1)
    );
\rec[0][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \^uc_reg[3]_0\(0),
      I1 => \^b_use\,
      I2 => \rec_reg[0][7]\(0),
      I3 => \^b_real\,
      I4 => \rec_reg[0][13]\(0),
      O => b_use_reg_0(0)
    );
\rec[0][10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \^l_new\(3),
      I1 => \^b_use\,
      I2 => \rec_reg[0][7]\(0),
      I3 => \^b_real\,
      I4 => \rec_reg[0][13]\(10),
      O => b_use_reg_0(10)
    );
\rec[0][11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \^l_new\(4),
      I1 => \^b_use\,
      I2 => \rec_reg[0][7]\(0),
      I3 => \^b_real\,
      I4 => \rec_reg[0][13]\(11),
      O => b_use_reg_0(11)
    );
\rec[0][12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \lmin_reg[5]\(0),
      I1 => \^b_use\,
      I2 => \rec_reg[0][7]\(0),
      I3 => \^b_real\,
      I4 => \rec_reg[0][13]\(12),
      O => b_use_reg_0(12)
    );
\rec[0][13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \^l_new\(5),
      I1 => \^b_use\,
      I2 => \rec_reg[0][7]\(0),
      I3 => \^b_real\,
      I4 => \rec_reg[0][13]\(13),
      O => b_use_reg_0(13)
    );
\rec[0][14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \^uc_reg[3]_0\(3),
      I1 => \^uc_reg[3]_0\(2),
      I2 => \rec[0][14]_i_3_n_0\,
      I3 => \^uc_reg[3]_0\(1),
      I4 => \^uc_reg[3]_0\(0),
      O => \uc_reg[3]_2\(0)
    );
\rec[0][14]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^l_new\(3),
      I1 => \rec_reg[0][13]\(10),
      I2 => \^l_new\(2),
      I3 => \rec_reg[0][13]\(9),
      O => \carry_rec_reg[10]\(1)
    );
\rec[0][14]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^l_new\(1),
      I1 => \rec_reg[0][13]\(8),
      I2 => \^l_new\(0),
      I3 => \rec_reg[0][13]\(7),
      O => \carry_rec_reg[10]\(0)
    );
\rec[0][14]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => uc(5),
      I1 => uc(6),
      I2 => act,
      I3 => uc(4),
      I4 => b_v,
      O => \rec[0][14]_i_3_n_0\
    );
\rec[0][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \^uc_reg[3]_0\(1),
      I1 => \^b_use\,
      I2 => \rec_reg[0][7]\(0),
      I3 => \^b_real\,
      I4 => \rec_reg[0][13]\(1),
      O => b_use_reg_0(1)
    );
\rec[0][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \^uc_reg[3]_0\(2),
      I1 => \^b_use\,
      I2 => \rec_reg[0][7]\(0),
      I3 => \^b_real\,
      I4 => \rec_reg[0][13]\(2),
      O => b_use_reg_0(2)
    );
\rec[0][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \^uc_reg[3]_0\(3),
      I1 => \^b_use\,
      I2 => \rec_reg[0][7]\(0),
      I3 => \^b_real\,
      I4 => \rec_reg[0][13]\(3),
      O => b_use_reg_0(3)
    );
\rec[0][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => pos(0),
      I1 => \^b_use\,
      I2 => \rec_reg[0][7]\(0),
      I3 => \^b_real\,
      I4 => \rec_reg[0][13]\(4),
      O => b_use_reg_0(4)
    );
\rec[0][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => pos(1),
      I1 => \^b_use\,
      I2 => \rec_reg[0][7]\(0),
      I3 => \^b_real\,
      I4 => \rec_reg[0][13]\(5),
      O => b_use_reg_0(5)
    );
\rec[0][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => pos(2),
      I1 => \^b_use\,
      I2 => \rec_reg[0][7]\(0),
      I3 => \^b_real\,
      I4 => \rec_reg[0][13]\(6),
      O => b_use_reg_0(6)
    );
\rec[0][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \^l_new\(0),
      I1 => \^b_use\,
      I2 => \rec_reg[0][7]\(0),
      I3 => \^b_real\,
      I4 => \rec_reg[0][13]\(7),
      O => b_use_reg_0(7)
    );
\rec[0][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \^l_new\(1),
      I1 => \^b_use\,
      I2 => \rec_reg[0][7]\(0),
      I3 => \^b_real\,
      I4 => \rec_reg[0][13]\(8),
      O => b_use_reg_0(8)
    );
\rec[0][9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \^l_new\(2),
      I1 => \^b_use\,
      I2 => \rec_reg[0][7]\(0),
      I3 => \^b_real\,
      I4 => \rec_reg[0][13]\(9),
      O => b_use_reg_0(9)
    );
\rec[10][14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \^uc_reg[3]_0\(0),
      I1 => \^uc_reg[3]_0\(1),
      I2 => \rec[0][14]_i_3_n_0\,
      I3 => \^uc_reg[3]_0\(2),
      I4 => \^uc_reg[3]_0\(3),
      O => \uc_reg[0]_1\(0)
    );
\rec[11][14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \^uc_reg[3]_0\(0),
      I1 => \^uc_reg[3]_0\(1),
      I2 => \rec[0][14]_i_3_n_0\,
      I3 => \^uc_reg[3]_0\(2),
      I4 => \^uc_reg[3]_0\(3),
      O => \uc_reg[0]_0\(0)
    );
\rec[12][14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \rec[0][14]_i_3_n_0\,
      I1 => \^uc_reg[3]_0\(2),
      I2 => \^uc_reg[3]_0\(3),
      I3 => \^uc_reg[3]_0\(1),
      I4 => \^uc_reg[3]_0\(0),
      O => \uc_reg[2]_2\(0)
    );
\rec[13][14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \rec[0][14]_i_3_n_0\,
      I1 => \^uc_reg[3]_0\(2),
      I2 => \^uc_reg[3]_0\(3),
      I3 => \^uc_reg[3]_0\(1),
      I4 => \^uc_reg[3]_0\(0),
      O => \uc_reg[2]_1\(0)
    );
\rec[14][14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \rec[0][14]_i_3_n_0\,
      I1 => \^uc_reg[3]_0\(2),
      I2 => \^uc_reg[3]_0\(3),
      I3 => \^uc_reg[3]_0\(0),
      I4 => \^uc_reg[3]_0\(1),
      O => \uc_reg[2]_0\(0)
    );
\rec[15][14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^uc_reg[3]_0\(0),
      I1 => \^uc_reg[3]_0\(1),
      I2 => \rec[0][14]_i_3_n_0\,
      I3 => \^uc_reg[3]_0\(2),
      I4 => \^uc_reg[3]_0\(3),
      O => \uc_reg[0]_5\(0)
    );
\rec[1][14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \^uc_reg[3]_0\(3),
      I1 => \^uc_reg[3]_0\(2),
      I2 => \rec[0][14]_i_3_n_0\,
      I3 => \^uc_reg[3]_0\(1),
      I4 => \^uc_reg[3]_0\(0),
      O => \uc_reg[3]_1\(0)
    );
\rec[2][14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \^uc_reg[3]_0\(3),
      I1 => \^uc_reg[3]_0\(2),
      I2 => \rec[0][14]_i_3_n_0\,
      I3 => \^uc_reg[3]_0\(0),
      I4 => \^uc_reg[3]_0\(1),
      O => E(0)
    );
\rec[3][14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \^uc_reg[3]_0\(0),
      I1 => \^uc_reg[3]_0\(1),
      I2 => \^uc_reg[3]_0\(3),
      I3 => \^uc_reg[3]_0\(2),
      I4 => \rec[0][14]_i_3_n_0\,
      O => \uc_reg[0]_4\(0)
    );
\rec[4][14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \^uc_reg[3]_0\(1),
      I1 => \^uc_reg[3]_0\(0),
      I2 => \rec[0][14]_i_3_n_0\,
      I3 => \^uc_reg[3]_0\(3),
      I4 => \^uc_reg[3]_0\(2),
      O => \uc_reg[1]_3\(0)
    );
\rec[5][14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \^uc_reg[3]_0\(1),
      I1 => \^uc_reg[3]_0\(0),
      I2 => \rec[0][14]_i_3_n_0\,
      I3 => \^uc_reg[3]_0\(3),
      I4 => \^uc_reg[3]_0\(2),
      O => \uc_reg[1]_2\(0)
    );
\rec[6][14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \^uc_reg[3]_0\(0),
      I1 => \^uc_reg[3]_0\(1),
      I2 => \rec[0][14]_i_3_n_0\,
      I3 => \^uc_reg[3]_0\(3),
      I4 => \^uc_reg[3]_0\(2),
      O => \uc_reg[0]_3\(0)
    );
\rec[7][14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \^uc_reg[3]_0\(0),
      I1 => \^uc_reg[3]_0\(1),
      I2 => \rec[0][14]_i_3_n_0\,
      I3 => \^uc_reg[3]_0\(3),
      I4 => \^uc_reg[3]_0\(2),
      O => \uc_reg[0]_2\(0)
    );
\rec[8][14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \^uc_reg[3]_0\(1),
      I1 => \^uc_reg[3]_0\(0),
      I2 => \rec[0][14]_i_3_n_0\,
      I3 => \^uc_reg[3]_0\(2),
      I4 => \^uc_reg[3]_0\(3),
      O => \uc_reg[1]_1\(0)
    );
\rec[9][14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \^uc_reg[3]_0\(1),
      I1 => \^uc_reg[3]_0\(0),
      I2 => \rec[0][14]_i_3_n_0\,
      I3 => \^uc_reg[3]_0\(2),
      I4 => \^uc_reg[3]_0\(3),
      O => \uc_reg[1]_0\(0)
    );
\rec_in[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \uo[7]_i_8_n_0\,
      I1 => \rec_in[14]_i_2_n_0\,
      O => run_reg_3(0)
    );
\rec_in[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0202020000000002"
    )
        port map (
      I0 => \m_s2[6]_i_3_n_0\,
      I1 => \rec_in[14]_i_3_n_0\,
      I2 => \m_sec[7]_i_4_n_0\,
      I3 => n(2),
      I4 => \rec_in[14]_i_4_n_0\,
      I5 => \uo[7]_i_17_n_0\,
      O => \rec_in[14]_i_2_n_0\
    );
\rec_in[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBE7DFFD7FFFFBE"
    )
        port map (
      I0 => \uo[7]_i_13_n_0\,
      I1 => \uo[7]_i_18_n_0\,
      I2 => n(2),
      I3 => n(0),
      I4 => n(1),
      I5 => \^pos_reg[0]_0\,
      O => \rec_in[14]_i_3_n_0\
    );
\rec_in[14]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => n(1),
      I1 => n(0),
      O => \rec_in[14]_i_4_n_0\
    );
\rec_in[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000008FFFFFFFF"
    )
        port map (
      I0 => \uo[7]_i_8_n_0\,
      I1 => \rec_in[14]_i_2_n_0\,
      I2 => pos(0),
      I3 => pos(1),
      I4 => pos(2),
      I5 => \rec_in_reg[6]\(0),
      O => \^sr\(0)
    );
\right_sr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8000"
    )
        port map (
      I0 => \ui_r_reg_n_0_[0]\,
      I1 => \right_sr[13]_i_2_n_0\,
      I2 => \right_sr[7]_i_2_n_0\,
      I3 => \right_sr[0]_i_2_n_0\,
      I4 => \^in_right\(0),
      O => \right_sr[0]_i_1_n_0\
    );
\right_sr[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \right_sr[3]_i_2_n_0\,
      I1 => right_sr1(0),
      I2 => right_sr1(1),
      O => \right_sr[0]_i_2_n_0\
    );
\right_sr[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF8880000"
    )
        port map (
      I0 => \right_sr[13]_i_2_n_0\,
      I1 => \right_sr[42]_i_2_n_0\,
      I2 => \right_sr[21]_i_2_n_0\,
      I3 => \right_sr[42]_i_3_n_0\,
      I4 => \right_sr[10]_i_2_n_0\,
      I5 => \^in_right\(10),
      O => \right_sr[10]_i_1_n_0\
    );
\right_sr[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A0A000C0C0C0"
    )
        port map (
      I0 => \right_sr[7]_i_2_n_0\,
      I1 => \right_sr[15]_i_2_n_0\,
      I2 => \right_sr[44]_i_9_n_0\,
      I3 => right_sr1(1),
      I4 => right_sr1(0),
      I5 => right_sr1(2),
      O => \right_sr[10]_i_2_n_0\
    );
\right_sr[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => right_sr0(11),
      I1 => right_sr1(5),
      I2 => right_sr1(4),
      I3 => \right_sr[43]_i_4_n_0\,
      I4 => \right_sr[43]_i_5_n_0\,
      I5 => \^in_right\(11),
      O => \right_sr[11]_i_1_n_0\
    );
\right_sr[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03020002"
    )
        port map (
      I0 => \right_sr[35]_i_2_n_0\,
      I1 => right_sr1(4),
      I2 => right_sr1(5),
      I3 => right_sr1(3),
      I4 => \right_sr[35]_i_3_n_0\,
      O => right_sr0(11)
    );
\right_sr[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF8880000"
    )
        port map (
      I0 => \right_sr[44]_i_2_n_0\,
      I1 => \right_sr[21]_i_2_n_0\,
      I2 => \right_sr[13]_i_2_n_0\,
      I3 => \right_sr[44]_i_5_n_0\,
      I4 => \right_sr[12]_i_2_n_0\,
      I5 => \^in_right\(12),
      O => \right_sr[12]_i_1_n_0\
    );
\right_sr[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000CC004400CC00"
    )
        port map (
      I0 => right_sr1(0),
      I1 => \right_sr[15]_i_2_n_0\,
      I2 => \right_sr[7]_i_2_n_0\,
      I3 => \right_sr[44]_i_9_n_0\,
      I4 => right_sr1(2),
      I5 => right_sr1(1),
      O => \right_sr[12]_i_2_n_0\
    );
\right_sr[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF8880000"
    )
        port map (
      I0 => \right_sr[37]_i_4_n_0\,
      I1 => \right_sr[21]_i_2_n_0\,
      I2 => \right_sr[13]_i_2_n_0\,
      I3 => \right_sr[37]_i_3_n_0\,
      I4 => \right_sr[13]_i_3_n_0\,
      I5 => \^in_right\(13),
      O => \right_sr[13]_i_1_n_0\
    );
\right_sr[13]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => right_sr1(4),
      I1 => right_sr1(5),
      I2 => right_sr1(3),
      O => \right_sr[13]_i_2_n_0\
    );
\right_sr[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0A000A0A0A0A0A0"
    )
        port map (
      I0 => \right_sr[15]_i_2_n_0\,
      I1 => \right_sr[7]_i_2_n_0\,
      I2 => \right_sr[44]_i_9_n_0\,
      I3 => right_sr1(2),
      I4 => right_sr1(0),
      I5 => right_sr1(1),
      O => \right_sr[13]_i_3_n_0\
    );
\right_sr[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8000"
    )
        port map (
      I0 => \right_sr[38]_i_2_n_0\,
      I1 => \right_sr[21]_i_2_n_0\,
      I2 => \right_sr[15]_i_2_n_0\,
      I3 => \right_sr[38]_i_3_n_0\,
      I4 => \^in_right\(14),
      O => \right_sr[14]_i_1_n_0\
    );
\right_sr[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8000"
    )
        port map (
      I0 => \right_sr[39]_i_3_n_0\,
      I1 => \right_sr[21]_i_2_n_0\,
      I2 => \right_sr[15]_i_2_n_0\,
      I3 => \right_sr[39]_i_5_n_0\,
      I4 => \^in_right\(15),
      O => \right_sr[15]_i_1_n_0\
    );
\right_sr[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => right_sr1(3),
      I1 => right_sr1(5),
      I2 => right_sr1(4),
      I3 => \right_sr[43]_i_5_n_0\,
      O => \right_sr[15]_i_2_n_0\
    );
\right_sr[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF8880000"
    )
        port map (
      I0 => \right_sr[32]_i_2_n_0\,
      I1 => \right_sr[21]_i_2_n_0\,
      I2 => \right_sr[29]_i_2_n_0\,
      I3 => \right_sr[32]_i_3_n_0\,
      I4 => \right_sr[16]_i_2_n_0\,
      I5 => \^in_right\(16),
      O => \right_sr[16]_i_1_n_0\
    );
\right_sr[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A080B0A0A08080"
    )
        port map (
      I0 => \right_sr[15]_i_2_n_0\,
      I1 => right_sr1(2),
      I2 => \right_sr[44]_i_9_n_0\,
      I3 => right_sr1(0),
      I4 => right_sr1(1),
      I5 => \right_sr[23]_i_2_n_0\,
      O => \right_sr[16]_i_2_n_0\
    );
\right_sr[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF8880000"
    )
        port map (
      I0 => \right_sr[33]_i_2_n_0\,
      I1 => \right_sr[21]_i_2_n_0\,
      I2 => \right_sr[29]_i_2_n_0\,
      I3 => \right_sr[33]_i_3_n_0\,
      I4 => \right_sr[17]_i_2_n_0\,
      I5 => \^in_right\(17),
      O => \right_sr[17]_i_1_n_0\
    );
\right_sr[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA880000AAF00000"
    )
        port map (
      I0 => \right_sr[15]_i_2_n_0\,
      I1 => right_sr1(0),
      I2 => \right_sr[23]_i_2_n_0\,
      I3 => right_sr1(2),
      I4 => \right_sr[44]_i_9_n_0\,
      I5 => right_sr1(1),
      O => \right_sr[17]_i_2_n_0\
    );
\right_sr[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF8880000"
    )
        port map (
      I0 => \right_sr[21]_i_2_n_0\,
      I1 => \right_sr[42]_i_2_n_0\,
      I2 => \right_sr[29]_i_2_n_0\,
      I3 => \right_sr[42]_i_3_n_0\,
      I4 => \right_sr[18]_i_2_n_0\,
      I5 => \^in_right\(18),
      O => \right_sr[18]_i_1_n_0\
    );
\right_sr[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A0A000C0C0C0"
    )
        port map (
      I0 => \right_sr[15]_i_2_n_0\,
      I1 => \right_sr[23]_i_2_n_0\,
      I2 => \right_sr[44]_i_9_n_0\,
      I3 => right_sr1(1),
      I4 => right_sr1(0),
      I5 => right_sr1(2),
      O => \right_sr[18]_i_2_n_0\
    );
\right_sr[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF8880000"
    )
        port map (
      I0 => \right_sr[21]_i_2_n_0\,
      I1 => \right_sr[35]_i_2_n_0\,
      I2 => \right_sr[29]_i_2_n_0\,
      I3 => \right_sr[35]_i_3_n_0\,
      I4 => \right_sr[19]_i_2_n_0\,
      I5 => \^in_right\(19),
      O => \right_sr[19]_i_1_n_0\
    );
\right_sr[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800FF00A8000000"
    )
        port map (
      I0 => \right_sr[15]_i_2_n_0\,
      I1 => right_sr1(0),
      I2 => right_sr1(1),
      I3 => \right_sr[44]_i_9_n_0\,
      I4 => right_sr1(2),
      I5 => \right_sr[23]_i_2_n_0\,
      O => \right_sr[19]_i_2_n_0\
    );
\right_sr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFFFFF08000000"
    )
        port map (
      I0 => \right_sr[33]_i_3_n_0\,
      I1 => \right_sr[13]_i_2_n_0\,
      I2 => right_sr1(1),
      I3 => \right_sr[3]_i_2_n_0\,
      I4 => \right_sr[7]_i_2_n_0\,
      I5 => \^in_right\(1),
      O => \right_sr[1]_i_1_n_0\
    );
\right_sr[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF8880000"
    )
        port map (
      I0 => \right_sr[21]_i_2_n_0\,
      I1 => \right_sr[44]_i_5_n_0\,
      I2 => \right_sr[44]_i_2_n_0\,
      I3 => \right_sr[29]_i_2_n_0\,
      I4 => \right_sr[20]_i_2_n_0\,
      I5 => \^in_right\(20),
      O => \right_sr[20]_i_1_n_0\
    );
\right_sr[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BFF000088000000"
    )
        port map (
      I0 => \right_sr[15]_i_2_n_0\,
      I1 => right_sr1(1),
      I2 => right_sr1(0),
      I3 => right_sr1(2),
      I4 => \right_sr[44]_i_9_n_0\,
      I5 => \right_sr[23]_i_2_n_0\,
      O => \right_sr[20]_i_2_n_0\
    );
\right_sr[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF8880000"
    )
        port map (
      I0 => \right_sr[21]_i_2_n_0\,
      I1 => \right_sr[37]_i_3_n_0\,
      I2 => \right_sr[37]_i_4_n_0\,
      I3 => \right_sr[29]_i_2_n_0\,
      I4 => \right_sr[21]_i_3_n_0\,
      I5 => \^in_right\(21),
      O => \right_sr[21]_i_1_n_0\
    );
\right_sr[21]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => right_sr1(4),
      I1 => right_sr1(5),
      I2 => right_sr1(3),
      O => \right_sr[21]_i_2_n_0\
    );
\right_sr[21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFF000080000000"
    )
        port map (
      I0 => \right_sr[15]_i_2_n_0\,
      I1 => right_sr1(0),
      I2 => right_sr1(1),
      I3 => right_sr1(2),
      I4 => \right_sr[44]_i_9_n_0\,
      I5 => \right_sr[23]_i_2_n_0\,
      O => \right_sr[21]_i_3_n_0\
    );
\right_sr[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8000"
    )
        port map (
      I0 => \right_sr[29]_i_2_n_0\,
      I1 => \right_sr[38]_i_2_n_0\,
      I2 => \right_sr[23]_i_2_n_0\,
      I3 => \right_sr[38]_i_3_n_0\,
      I4 => \^in_right\(22),
      O => \right_sr[22]_i_1_n_0\
    );
\right_sr[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8000"
    )
        port map (
      I0 => \right_sr[29]_i_2_n_0\,
      I1 => \right_sr[39]_i_3_n_0\,
      I2 => \right_sr[23]_i_2_n_0\,
      I3 => \right_sr[39]_i_5_n_0\,
      I4 => \^in_right\(23),
      O => \right_sr[23]_i_1_n_0\
    );
\right_sr[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => right_sr1(3),
      I1 => \right_sr[43]_i_5_n_0\,
      I2 => right_sr1(5),
      I3 => right_sr1(4),
      O => \right_sr[23]_i_2_n_0\
    );
\right_sr[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => right_sr0(24),
      I1 => right_sr1(4),
      I2 => right_sr1(5),
      I3 => \right_sr[40]_i_3_n_0\,
      I4 => \right_sr[43]_i_5_n_0\,
      I5 => \^in_right\(24),
      O => \right_sr[24]_i_1_n_0\
    );
\right_sr[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088000000F00000"
    )
        port map (
      I0 => \right_sr[0]_i_2_n_0\,
      I1 => \ui_r_reg_n_0_[0]\,
      I2 => \right_sr[32]_i_2_n_0\,
      I3 => right_sr1(5),
      I4 => right_sr1(4),
      I5 => right_sr1(3),
      O => right_sr0(24)
    );
\right_sr[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => right_sr0(25),
      I1 => right_sr1(4),
      I2 => right_sr1(5),
      I3 => \right_sr[41]_i_3_n_0\,
      I4 => \right_sr[43]_i_5_n_0\,
      I5 => \^in_right\(25),
      O => \right_sr[25]_i_1_n_0\
    );
\right_sr[25]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => \right_sr[33]_i_3_n_0\,
      I1 => \right_sr[33]_i_2_n_0\,
      I2 => right_sr1(5),
      I3 => right_sr1(4),
      I4 => right_sr1(3),
      O => right_sr0(25)
    );
\right_sr[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF8880000"
    )
        port map (
      I0 => \right_sr[29]_i_2_n_0\,
      I1 => \right_sr[42]_i_2_n_0\,
      I2 => \right_sr[37]_i_2_n_0\,
      I3 => \right_sr[42]_i_3_n_0\,
      I4 => \right_sr[26]_i_2_n_0\,
      I5 => \^in_right\(26),
      O => \right_sr[26]_i_1_n_0\
    );
\right_sr[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A0A000C0C0C0"
    )
        port map (
      I0 => \right_sr[23]_i_2_n_0\,
      I1 => \right_sr[31]_i_2_n_0\,
      I2 => \right_sr[44]_i_9_n_0\,
      I3 => right_sr1(1),
      I4 => right_sr1(0),
      I5 => right_sr1(2),
      O => \right_sr[26]_i_2_n_0\
    );
\right_sr[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => right_sr0(27),
      I1 => right_sr1(4),
      I2 => right_sr1(5),
      I3 => \right_sr[43]_i_4_n_0\,
      I4 => \right_sr[43]_i_5_n_0\,
      I5 => \^in_right\(27),
      O => \right_sr[27]_i_1_n_0\
    );
\right_sr[27]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30200020"
    )
        port map (
      I0 => \right_sr[35]_i_2_n_0\,
      I1 => right_sr1(5),
      I2 => right_sr1(4),
      I3 => right_sr1(3),
      I4 => \right_sr[35]_i_3_n_0\,
      O => right_sr0(27)
    );
\right_sr[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF8880000"
    )
        port map (
      I0 => \right_sr[44]_i_2_n_0\,
      I1 => \right_sr[37]_i_2_n_0\,
      I2 => \right_sr[29]_i_2_n_0\,
      I3 => \right_sr[44]_i_5_n_0\,
      I4 => \right_sr[28]_i_2_n_0\,
      I5 => \^in_right\(28),
      O => \right_sr[28]_i_1_n_0\
    );
\right_sr[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000CC004400CC00"
    )
        port map (
      I0 => right_sr1(0),
      I1 => \right_sr[31]_i_2_n_0\,
      I2 => \right_sr[23]_i_2_n_0\,
      I3 => \right_sr[44]_i_9_n_0\,
      I4 => right_sr1(2),
      I5 => right_sr1(1),
      O => \right_sr[28]_i_2_n_0\
    );
\right_sr[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF8880000"
    )
        port map (
      I0 => \right_sr[37]_i_4_n_0\,
      I1 => \right_sr[37]_i_2_n_0\,
      I2 => \right_sr[29]_i_2_n_0\,
      I3 => \right_sr[37]_i_3_n_0\,
      I4 => \right_sr[29]_i_3_n_0\,
      I5 => \^in_right\(29),
      O => \right_sr[29]_i_1_n_0\
    );
\right_sr[29]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => right_sr1(5),
      I1 => right_sr1(4),
      I2 => right_sr1(3),
      O => \right_sr[29]_i_2_n_0\
    );
\right_sr[29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0A000A0A0A0A0A0"
    )
        port map (
      I0 => \right_sr[31]_i_2_n_0\,
      I1 => \right_sr[23]_i_2_n_0\,
      I2 => \right_sr[44]_i_9_n_0\,
      I3 => right_sr1(2),
      I4 => right_sr1(0),
      I5 => right_sr1(1),
      O => \right_sr[29]_i_3_n_0\
    );
\right_sr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8000"
    )
        port map (
      I0 => \right_sr[42]_i_3_n_0\,
      I1 => \right_sr[13]_i_2_n_0\,
      I2 => \right_sr[2]_i_2_n_0\,
      I3 => \right_sr[7]_i_2_n_0\,
      I4 => \^in_right\(2),
      O => \right_sr[2]_i_1_n_0\
    );
\right_sr[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"002A"
    )
        port map (
      I0 => \right_sr[44]_i_9_n_0\,
      I1 => right_sr1(1),
      I2 => right_sr1(0),
      I3 => right_sr1(2),
      O => \right_sr[2]_i_2_n_0\
    );
\right_sr[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8000"
    )
        port map (
      I0 => \right_sr[38]_i_2_n_0\,
      I1 => \right_sr[37]_i_2_n_0\,
      I2 => \right_sr[31]_i_2_n_0\,
      I3 => \right_sr[38]_i_3_n_0\,
      I4 => \^in_right\(30),
      O => \right_sr[30]_i_1_n_0\
    );
\right_sr[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8000"
    )
        port map (
      I0 => \right_sr[39]_i_3_n_0\,
      I1 => \right_sr[37]_i_2_n_0\,
      I2 => \right_sr[31]_i_2_n_0\,
      I3 => \right_sr[39]_i_5_n_0\,
      I4 => \^in_right\(31),
      O => \right_sr[31]_i_1_n_0\
    );
\right_sr[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => right_sr1(3),
      I1 => right_sr1(4),
      I2 => right_sr1(5),
      I3 => \right_sr[43]_i_5_n_0\,
      O => \right_sr[31]_i_2_n_0\
    );
\right_sr[32]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF8880000"
    )
        port map (
      I0 => \right_sr[32]_i_2_n_0\,
      I1 => \right_sr[37]_i_2_n_0\,
      I2 => \right_sr[39]_i_2_n_0\,
      I3 => \right_sr[32]_i_3_n_0\,
      I4 => \right_sr[32]_i_4_n_0\,
      I5 => \^in_right\(32),
      O => \right_sr[32]_i_1_n_0\
    );
\right_sr[32]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF222"
    )
        port map (
      I0 => \right_sr[32]_i_5_n_0\,
      I1 => right_sr1(2),
      I2 => \right_sr[32]_i_6_n_0\,
      I3 => \ui_r_reg_n_0_[1]\,
      I4 => \right_sr[32]_i_7_n_0\,
      O => \right_sr[32]_i_2_n_0\
    );
\right_sr[32]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => right_sr1(1),
      I1 => right_sr1(0),
      I2 => \right_sr[3]_i_2_n_0\,
      I3 => \ui_r_reg_n_0_[0]\,
      O => \right_sr[32]_i_3_n_0\
    );
\right_sr[32]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A080B0A0A08080"
    )
        port map (
      I0 => \right_sr[31]_i_2_n_0\,
      I1 => right_sr1(2),
      I2 => \right_sr[44]_i_9_n_0\,
      I3 => right_sr1(0),
      I4 => right_sr1(1),
      I5 => \right_sr[39]_i_4_n_0\,
      O => \right_sr[32]_i_4_n_0\
    );
\right_sr[32]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C8400000"
    )
        port map (
      I0 => right_sr1(0),
      I1 => \right_sr[44]_i_9_n_0\,
      I2 => p_0_in(2),
      I3 => p_0_in(1),
      I4 => right_sr1(1),
      O => \right_sr[32]_i_5_n_0\
    );
\right_sr[32]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \right_sr[42]_i_7_n_0\,
      I1 => right_sr1(0),
      I2 => right_sr1(1),
      O => \right_sr[32]_i_6_n_0\
    );
\right_sr[32]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000C0C0A0A0F000"
    )
        port map (
      I0 => \ui_r_reg_n_0_[3]\,
      I1 => \ui_r_reg_n_0_[2]\,
      I2 => \right_sr[42]_i_7_n_0\,
      I3 => p_0_in(0),
      I4 => right_sr1(0),
      I5 => right_sr1(1),
      O => \right_sr[32]_i_7_n_0\
    );
\right_sr[33]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF8880000"
    )
        port map (
      I0 => \right_sr[33]_i_2_n_0\,
      I1 => \right_sr[37]_i_2_n_0\,
      I2 => \right_sr[39]_i_2_n_0\,
      I3 => \right_sr[33]_i_3_n_0\,
      I4 => \right_sr[33]_i_4_n_0\,
      I5 => \^in_right\(33),
      O => \right_sr[33]_i_1_n_0\
    );
\right_sr[33]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFC8888888"
    )
        port map (
      I0 => \right_sr[33]_i_5_n_0\,
      I1 => \right_sr[42]_i_7_n_0\,
      I2 => right_sr1(1),
      I3 => right_sr1(0),
      I4 => \ui_r_reg_n_0_[2]\,
      I5 => \right_sr[33]_i_6_n_0\,
      O => \right_sr[33]_i_2_n_0\
    );
\right_sr[33]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000044005000"
    )
        port map (
      I0 => right_sr1(1),
      I1 => \ui_r_reg_n_0_[0]\,
      I2 => \ui_r_reg_n_0_[1]\,
      I3 => \right_sr[44]_i_9_n_0\,
      I4 => right_sr1(0),
      I5 => right_sr1(2),
      O => \right_sr[33]_i_3_n_0\
    );
\right_sr[33]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA880000AAF00000"
    )
        port map (
      I0 => \right_sr[31]_i_2_n_0\,
      I1 => right_sr1(0),
      I2 => \right_sr[39]_i_4_n_0\,
      I3 => right_sr1(2),
      I4 => \right_sr[44]_i_9_n_0\,
      I5 => right_sr1(1),
      O => \right_sr[33]_i_4_n_0\
    );
\right_sr[33]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22C0"
    )
        port map (
      I0 => \ui_r_reg_n_0_[3]\,
      I1 => right_sr1(0),
      I2 => p_0_in(0),
      I3 => right_sr1(1),
      O => \right_sr[33]_i_5_n_0\
    );
\right_sr[33]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"202000000000C000"
    )
        port map (
      I0 => p_0_in(2),
      I1 => right_sr1(2),
      I2 => \right_sr[44]_i_9_n_0\,
      I3 => p_0_in(1),
      I4 => right_sr1(0),
      I5 => right_sr1(1),
      O => \right_sr[33]_i_6_n_0\
    );
\right_sr[34]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF8880000"
    )
        port map (
      I0 => \right_sr[37]_i_2_n_0\,
      I1 => \right_sr[42]_i_2_n_0\,
      I2 => \right_sr[39]_i_2_n_0\,
      I3 => \right_sr[42]_i_3_n_0\,
      I4 => \right_sr[34]_i_2_n_0\,
      I5 => \^in_right\(34),
      O => \right_sr[34]_i_1_n_0\
    );
\right_sr[34]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A0A000C0C0C0"
    )
        port map (
      I0 => \right_sr[31]_i_2_n_0\,
      I1 => \right_sr[39]_i_4_n_0\,
      I2 => \right_sr[44]_i_9_n_0\,
      I3 => right_sr1(1),
      I4 => right_sr1(0),
      I5 => right_sr1(2),
      O => \right_sr[34]_i_2_n_0\
    );
\right_sr[35]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF8880000"
    )
        port map (
      I0 => \right_sr[37]_i_2_n_0\,
      I1 => \right_sr[35]_i_2_n_0\,
      I2 => \right_sr[39]_i_2_n_0\,
      I3 => \right_sr[35]_i_3_n_0\,
      I4 => \right_sr[35]_i_4_n_0\,
      I5 => \^in_right\(35),
      O => \right_sr[35]_i_1_n_0\
    );
\right_sr[35]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \right_sr[39]_i_7_n_0\,
      I1 => right_sr1(2),
      O => \right_sr[35]_i_2_n_0\
    );
\right_sr[35]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \right_sr[39]_i_6_n_0\,
      I1 => right_sr1(2),
      O => \right_sr[35]_i_3_n_0\
    );
\right_sr[35]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800FF00A8000000"
    )
        port map (
      I0 => \right_sr[31]_i_2_n_0\,
      I1 => right_sr1(0),
      I2 => right_sr1(1),
      I3 => \right_sr[44]_i_9_n_0\,
      I4 => right_sr1(2),
      I5 => \right_sr[39]_i_4_n_0\,
      O => \right_sr[35]_i_4_n_0\
    );
\right_sr[36]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF8880000"
    )
        port map (
      I0 => \right_sr[37]_i_2_n_0\,
      I1 => \right_sr[44]_i_5_n_0\,
      I2 => \right_sr[44]_i_2_n_0\,
      I3 => \right_sr[39]_i_2_n_0\,
      I4 => \right_sr[36]_i_2_n_0\,
      I5 => \^in_right\(36),
      O => \right_sr[36]_i_1_n_0\
    );
\right_sr[36]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BFF000088000000"
    )
        port map (
      I0 => \right_sr[31]_i_2_n_0\,
      I1 => right_sr1(1),
      I2 => right_sr1(0),
      I3 => right_sr1(2),
      I4 => \right_sr[44]_i_9_n_0\,
      I5 => \right_sr[39]_i_4_n_0\,
      O => \right_sr[36]_i_2_n_0\
    );
\right_sr[37]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF8880000"
    )
        port map (
      I0 => \right_sr[37]_i_2_n_0\,
      I1 => \right_sr[37]_i_3_n_0\,
      I2 => \right_sr[37]_i_4_n_0\,
      I3 => \right_sr[39]_i_2_n_0\,
      I4 => \right_sr[37]_i_5_n_0\,
      I5 => \^in_right\(37),
      O => \right_sr[37]_i_1_n_0\
    );
\right_sr[37]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => right_sr1(5),
      I1 => right_sr1(4),
      I2 => right_sr1(3),
      O => \right_sr[37]_i_2_n_0\
    );
\right_sr[37]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => right_sr1(1),
      I1 => right_sr1(0),
      I2 => \right_sr[42]_i_7_n_0\,
      I3 => p_0_in(2),
      O => \right_sr[37]_i_3_n_0\
    );
\right_sr[37]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF8F888888"
    )
        port map (
      I0 => \right_sr[37]_i_6_n_0\,
      I1 => right_sr1(2),
      I2 => \right_sr[37]_i_7_n_0\,
      I3 => \ui_r_reg_n_0_[2]\,
      I4 => \right_sr[3]_i_2_n_0\,
      I5 => \right_sr[37]_i_8_n_0\,
      O => \right_sr[37]_i_4_n_0\
    );
\right_sr[37]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFF000080000000"
    )
        port map (
      I0 => \right_sr[31]_i_2_n_0\,
      I1 => right_sr1(0),
      I2 => right_sr1(1),
      I3 => right_sr1(2),
      I4 => \right_sr[44]_i_9_n_0\,
      I5 => \right_sr[39]_i_4_n_0\,
      O => \right_sr[37]_i_5_n_0\
    );
\right_sr[37]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000C840"
    )
        port map (
      I0 => right_sr1(0),
      I1 => \right_sr[44]_i_9_n_0\,
      I2 => \ui_r_reg_n_0_[1]\,
      I3 => \ui_r_reg_n_0_[0]\,
      I4 => right_sr1(1),
      O => \right_sr[37]_i_6_n_0\
    );
\right_sr[37]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => right_sr1(1),
      I1 => right_sr1(0),
      O => \right_sr[37]_i_7_n_0\
    );
\right_sr[37]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00CC00F000"
    )
        port map (
      I0 => \ui_r_reg_n_0_[3]\,
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => \right_sr[3]_i_2_n_0\,
      I4 => right_sr1(0),
      I5 => right_sr1(1),
      O => \right_sr[37]_i_8_n_0\
    );
\right_sr[38]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8000"
    )
        port map (
      I0 => \right_sr[39]_i_2_n_0\,
      I1 => \right_sr[38]_i_2_n_0\,
      I2 => \right_sr[39]_i_4_n_0\,
      I3 => \right_sr[38]_i_3_n_0\,
      I4 => \^in_right\(38),
      O => \right_sr[38]_i_1_n_0\
    );
\right_sr[38]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \right_sr[42]_i_6_n_0\,
      I1 => right_sr1(2),
      I2 => \right_sr[42]_i_5_n_0\,
      O => \right_sr[38]_i_2_n_0\
    );
\right_sr[38]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F00"
    )
        port map (
      I0 => right_sr1(0),
      I1 => right_sr1(1),
      I2 => right_sr1(2),
      I3 => \right_sr[44]_i_9_n_0\,
      O => \right_sr[38]_i_3_n_0\
    );
\right_sr[39]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8000"
    )
        port map (
      I0 => \right_sr[39]_i_2_n_0\,
      I1 => \right_sr[39]_i_3_n_0\,
      I2 => \right_sr[39]_i_4_n_0\,
      I3 => \right_sr[39]_i_5_n_0\,
      I4 => \^in_right\(39),
      O => \right_sr[39]_i_1_n_0\
    );
\right_sr[39]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => right_sr1(4),
      I1 => right_sr1(5),
      I2 => right_sr1(3),
      O => \right_sr[39]_i_2_n_0\
    );
\right_sr[39]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \right_sr[39]_i_6_n_0\,
      I1 => right_sr1(2),
      I2 => \right_sr[39]_i_7_n_0\,
      O => \right_sr[39]_i_3_n_0\
    );
\right_sr[39]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => right_sr1(3),
      I1 => \right_sr[43]_i_5_n_0\,
      I2 => right_sr1(4),
      I3 => right_sr1(5),
      O => \right_sr[39]_i_4_n_0\
    );
\right_sr[39]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0E0"
    )
        port map (
      I0 => right_sr1(1),
      I1 => right_sr1(0),
      I2 => \right_sr[44]_i_9_n_0\,
      I3 => right_sr1(2),
      O => \right_sr[39]_i_5_n_0\
    );
\right_sr[39]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFE0400000E040"
    )
        port map (
      I0 => right_sr1(0),
      I1 => \ui_r_reg_n_0_[3]\,
      I2 => \right_sr[44]_i_9_n_0\,
      I3 => \ui_r_reg_n_0_[2]\,
      I4 => right_sr1(1),
      I5 => \right_sr[39]_i_8_n_0\,
      O => \right_sr[39]_i_6_n_0\
    );
\right_sr[39]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000A0A0C0C00000"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(2),
      I2 => \right_sr[44]_i_9_n_0\,
      I3 => p_0_in(0),
      I4 => right_sr1(0),
      I5 => right_sr1(1),
      O => \right_sr[39]_i_7_n_0\
    );
\right_sr[39]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => \ui_r_reg_n_0_[0]\,
      I1 => \ui_r_reg_n_0_[1]\,
      I2 => \right_sr[44]_i_9_n_0\,
      I3 => right_sr1(0),
      O => \right_sr[39]_i_8_n_0\
    );
\right_sr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8000"
    )
        port map (
      I0 => \right_sr[35]_i_3_n_0\,
      I1 => \right_sr[13]_i_2_n_0\,
      I2 => \right_sr[7]_i_2_n_0\,
      I3 => \right_sr[3]_i_2_n_0\,
      I4 => \^in_right\(3),
      O => \right_sr[3]_i_1_n_0\
    );
\right_sr[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => right_sr1(8),
      I1 => right_sr1(9),
      I2 => right_sr1(6),
      I3 => right_sr1(7),
      I4 => right_sr1(2),
      O => \right_sr[3]_i_2_n_0\
    );
\right_sr[40]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => right_sr0(40),
      I1 => right_sr1(5),
      I2 => right_sr1(4),
      I3 => \right_sr[40]_i_3_n_0\,
      I4 => \right_sr[43]_i_5_n_0\,
      I5 => \^in_right\(40),
      O => \right_sr[40]_i_1_n_0\
    );
\right_sr[40]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088000000F00000"
    )
        port map (
      I0 => \right_sr[0]_i_2_n_0\,
      I1 => \ui_r_reg_n_0_[0]\,
      I2 => \right_sr[32]_i_2_n_0\,
      I3 => right_sr1(4),
      I4 => right_sr1(5),
      I5 => right_sr1(3),
      O => right_sr0(40)
    );
\right_sr[40]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33003400"
    )
        port map (
      I0 => right_sr1(0),
      I1 => right_sr1(3),
      I2 => right_sr1(1),
      I3 => \right_sr[44]_i_9_n_0\,
      I4 => right_sr1(2),
      O => \right_sr[40]_i_3_n_0\
    );
\right_sr[41]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => right_sr0(41),
      I1 => right_sr1(5),
      I2 => right_sr1(4),
      I3 => \right_sr[41]_i_3_n_0\,
      I4 => \right_sr[43]_i_5_n_0\,
      I5 => \^in_right\(41),
      O => \right_sr[41]_i_1_n_0\
    );
\right_sr[41]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => \right_sr[33]_i_3_n_0\,
      I1 => \right_sr[33]_i_2_n_0\,
      I2 => right_sr1(4),
      I3 => right_sr1(5),
      I4 => right_sr1(3),
      O => right_sr0(41)
    );
\right_sr[41]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55006200"
    )
        port map (
      I0 => right_sr1(3),
      I1 => right_sr1(1),
      I2 => right_sr1(0),
      I3 => \right_sr[44]_i_9_n_0\,
      I4 => right_sr1(2),
      O => \right_sr[41]_i_3_n_0\
    );
\right_sr[42]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C808FFFFC8080000"
    )
        port map (
      I0 => \right_sr[42]_i_2_n_0\,
      I1 => \right_sr[44]_i_3_n_0\,
      I2 => right_sr1(3),
      I3 => \right_sr[42]_i_3_n_0\,
      I4 => \right_sr[42]_i_4_n_0\,
      I5 => \^in_right\(42),
      O => \right_sr[42]_i_1_n_0\
    );
\right_sr[42]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \right_sr[42]_i_5_n_0\,
      I1 => right_sr1(2),
      O => \right_sr[42]_i_2_n_0\
    );
\right_sr[42]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \right_sr[42]_i_6_n_0\,
      I1 => right_sr1(2),
      O => \right_sr[42]_i_3_n_0\
    );
\right_sr[42]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0880000"
    )
        port map (
      I0 => \right_sr[42]_i_7_n_0\,
      I1 => \right_sr[43]_i_5_n_0\,
      I2 => \right_sr[2]_i_2_n_0\,
      I3 => right_sr1(3),
      I4 => right_sr1(5),
      I5 => right_sr1(4),
      O => \right_sr[42]_i_4_n_0\
    );
\right_sr[42]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000C0C0AAAAAAAA"
    )
        port map (
      I0 => \right_sr[42]_i_8_n_0\,
      I1 => p_0_in(0),
      I2 => \right_sr[44]_i_9_n_0\,
      I3 => \ui_r_reg_n_0_[3]\,
      I4 => right_sr1(0),
      I5 => right_sr1(1),
      O => \right_sr[42]_i_5_n_0\
    );
\right_sr[42]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C000C00FA000A00"
    )
        port map (
      I0 => \ui_r_reg_n_0_[2]\,
      I1 => \ui_r_reg_n_0_[0]\,
      I2 => right_sr1(0),
      I3 => \right_sr[44]_i_9_n_0\,
      I4 => \ui_r_reg_n_0_[1]\,
      I5 => right_sr1(1),
      O => \right_sr[42]_i_6_n_0\
    );
\right_sr[42]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => right_sr1(2),
      I1 => right_sr1(8),
      I2 => right_sr1(9),
      I3 => right_sr1(6),
      I4 => right_sr1(7),
      O => \right_sr[42]_i_7_n_0\
    );
\right_sr[42]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(2),
      I2 => \right_sr[44]_i_9_n_0\,
      I3 => right_sr1(0),
      O => \right_sr[42]_i_8_n_0\
    );
\right_sr[43]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => right_sr0(43),
      I1 => right_sr1(5),
      I2 => right_sr1(4),
      I3 => \right_sr[43]_i_4_n_0\,
      I4 => \right_sr[43]_i_5_n_0\,
      I5 => \^in_right\(43),
      O => \right_sr[43]_i_1_n_0\
    );
\right_sr[43]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \right_sr_reg[44]_i_10_n_6\,
      I1 => \right_sr_reg[43]_i_6_n_7\,
      O => \right_sr[43]_i_10_n_0\
    );
\right_sr[43]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \right_sr_reg[43]_i_6_n_7\,
      I1 => \right_sr_reg[44]_i_10_n_4\,
      I2 => \right_sr_reg[43]_i_6_n_5\,
      I3 => \right_sr_reg[43]_i_6_n_6\,
      O => \right_sr[43]_i_11_n_0\
    );
\right_sr[43]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ph(4),
      I1 => pos(1),
      O => \right_sr[43]_i_12_n_0\
    );
\right_sr[43]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF0D"
    )
        port map (
      I0 => n(2),
      I1 => pos(2),
      I2 => pos(0),
      I3 => ph(3),
      O => \right_sr[43]_i_13_n_0\
    );
\right_sr[43]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2D"
    )
        port map (
      I0 => pos(2),
      I1 => ph(5),
      I2 => ph(6),
      O => \right_sr[43]_i_14_n_0\
    );
\right_sr[43]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => pos(1),
      I1 => ph(4),
      I2 => ph(5),
      I3 => pos(2),
      O => \right_sr[43]_i_15_n_0\
    );
\right_sr[43]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B2BB4D444D44B2BB"
    )
        port map (
      I0 => ph(3),
      I1 => pos(0),
      I2 => pos(2),
      I3 => n(2),
      I4 => pos(1),
      I5 => ph(4),
      O => \right_sr[43]_i_16_n_0\
    );
\right_sr[43]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30200020"
    )
        port map (
      I0 => \right_sr[35]_i_2_n_0\,
      I1 => right_sr1(4),
      I2 => right_sr1(5),
      I3 => right_sr1(3),
      I4 => \right_sr[35]_i_3_n_0\,
      O => right_sr0(43)
    );
\right_sr[43]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E00F000"
    )
        port map (
      I0 => right_sr1(0),
      I1 => right_sr1(1),
      I2 => right_sr1(3),
      I3 => \right_sr[44]_i_9_n_0\,
      I4 => right_sr1(2),
      O => \right_sr[43]_i_4_n_0\
    );
\right_sr[43]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA0000"
    )
        port map (
      I0 => \up_edge[6]_i_5_n_0\,
      I1 => \right_sr_reg[44]_i_10_n_6\,
      I2 => \right_sr_reg[44]_i_10_n_5\,
      I3 => \right_sr_reg[44]_i_10_n_7\,
      I4 => \right_sr[43]_i_11_n_0\,
      O => \right_sr[43]_i_5_n_0\
    );
\right_sr[43]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \right_sr_reg[43]_i_6_n_7\,
      O => \right_sr[43]_i_7_n_0\
    );
\right_sr[43]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \right_sr_reg[44]_i_10_n_4\,
      I1 => \right_sr_reg[43]_i_6_n_5\,
      O => \right_sr[43]_i_8_n_0\
    );
\right_sr[43]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \right_sr_reg[44]_i_10_n_5\,
      I1 => \right_sr_reg[43]_i_6_n_6\,
      O => \right_sr[43]_i_9_n_0\
    );
\right_sr[44]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8C80FFFF8C800000"
    )
        port map (
      I0 => \right_sr[44]_i_2_n_0\,
      I1 => \right_sr[44]_i_3_n_0\,
      I2 => right_sr1(3),
      I3 => \right_sr[44]_i_5_n_0\,
      I4 => \right_sr[44]_i_6_n_0\,
      I5 => \^in_right\(44),
      O => \right_sr[44]_i_1_n_0\
    );
\right_sr[44]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \right_sr_reg[44]_i_10_n_7\,
      I1 => \right_sr_reg[44]_i_10_n_4\,
      O => \right_sr[44]_i_11_n_0\
    );
\right_sr[44]_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \right_sr_reg[44]_i_10_n_5\,
      O => \right_sr[44]_i_12_n_0\
    );
\right_sr[44]_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \right_sr_reg[44]_i_10_n_6\,
      O => \right_sr[44]_i_13_n_0\
    );
\right_sr[44]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => right_sr1(7),
      I1 => right_sr1(6),
      I2 => right_sr1(9),
      I3 => right_sr1(8),
      I4 => right_sr1(2),
      I5 => right_sr1(1),
      O => \right_sr[44]_i_14_n_0\
    );
\right_sr[44]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF6F6606"
    )
        port map (
      I0 => pos(2),
      I1 => n(2),
      I2 => n(1),
      I3 => pos(1),
      I4 => ph(2),
      O => \right_sr[44]_i_15_n_0\
    );
\right_sr[44]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2DD2D22D"
    )
        port map (
      I0 => n(1),
      I1 => pos(1),
      I2 => pos(2),
      I3 => n(2),
      I4 => ph(2),
      O => \right_sr[44]_i_16_n_0\
    );
\right_sr[44]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => pos(1),
      I1 => n(1),
      I2 => ph(1),
      O => \right_sr[44]_i_17_n_0\
    );
\right_sr[44]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"81E87E177E1781E8"
    )
        port map (
      I0 => ph(2),
      I1 => \right_sr[44]_i_22_n_0\,
      I2 => pos(2),
      I3 => n(2),
      I4 => pos(0),
      I5 => ph(3),
      O => \right_sr[44]_i_18_n_0\
    );
\right_sr[44]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969966969966969"
    )
        port map (
      I0 => ph(2),
      I1 => n(2),
      I2 => pos(2),
      I3 => ph(1),
      I4 => n(1),
      I5 => pos(1),
      O => \right_sr[44]_i_19_n_0\
    );
\right_sr[44]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABABAAAAABAAAAA"
    )
        port map (
      I0 => \right_sr[44]_i_7_n_0\,
      I1 => \right_sr[44]_i_8_n_0\,
      I2 => \right_sr[44]_i_9_n_0\,
      I3 => right_sr1(2),
      I4 => p_0_in(0),
      I5 => \ui_r_reg_n_0_[0]\,
      O => \right_sr[44]_i_2_n_0\
    );
\right_sr[44]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69699669"
    )
        port map (
      I0 => ph(1),
      I1 => n(1),
      I2 => pos(1),
      I3 => n(0),
      I4 => pos(0),
      O => \right_sr[44]_i_20_n_0\
    );
\right_sr[44]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => n(0),
      I1 => pos(0),
      I2 => ph(0),
      O => \right_sr[44]_i_21_n_0\
    );
\right_sr[44]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => pos(1),
      I1 => n(1),
      O => \right_sr[44]_i_22_n_0\
    );
\right_sr[44]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => right_sr1(5),
      I1 => right_sr1(4),
      O => \right_sr[44]_i_3_n_0\
    );
\right_sr[44]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8800A00000000000"
    )
        port map (
      I0 => right_sr1(1),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \right_sr[44]_i_9_n_0\,
      I4 => right_sr1(0),
      I5 => right_sr1(2),
      O => \right_sr[44]_i_5_n_0\
    );
\right_sr[44]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B0000000800000"
    )
        port map (
      I0 => \right_sr[4]_i_2_n_0\,
      I1 => right_sr1(3),
      I2 => \right_sr[43]_i_5_n_0\,
      I3 => right_sr1(4),
      I4 => right_sr1(5),
      I5 => \right_sr[44]_i_14_n_0\,
      O => \right_sr[44]_i_6_n_0\
    );
\right_sr[44]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88CCC0008800C000"
    )
        port map (
      I0 => \ui_r_reg_n_0_[1]\,
      I1 => \right_sr[3]_i_2_n_0\,
      I2 => \ui_r_reg_n_0_[3]\,
      I3 => right_sr1(0),
      I4 => right_sr1(1),
      I5 => \ui_r_reg_n_0_[2]\,
      O => \right_sr[44]_i_7_n_0\
    );
\right_sr[44]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => right_sr1(1),
      I1 => right_sr1(0),
      O => \right_sr[44]_i_8_n_0\
    );
\right_sr[44]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => right_sr1(7),
      I1 => right_sr1(6),
      I2 => right_sr1(9),
      I3 => right_sr1(8),
      O => \right_sr[44]_i_9_n_0\
    );
\right_sr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8000"
    )
        port map (
      I0 => \right_sr[13]_i_2_n_0\,
      I1 => \right_sr[44]_i_2_n_0\,
      I2 => \right_sr[7]_i_2_n_0\,
      I3 => \right_sr[4]_i_2_n_0\,
      I4 => \^in_right\(4),
      O => \right_sr[4]_i_1_n_0\
    );
\right_sr[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F00"
    )
        port map (
      I0 => right_sr1(1),
      I1 => right_sr1(0),
      I2 => right_sr1(2),
      I3 => \right_sr[44]_i_9_n_0\,
      O => \right_sr[4]_i_2_n_0\
    );
\right_sr[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8000"
    )
        port map (
      I0 => \right_sr[13]_i_2_n_0\,
      I1 => \right_sr[37]_i_4_n_0\,
      I2 => \right_sr[7]_i_2_n_0\,
      I3 => \right_sr[5]_i_2_n_0\,
      I4 => \^in_right\(5),
      O => \right_sr[5]_i_1_n_0\
    );
\right_sr[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000007"
    )
        port map (
      I0 => right_sr1(1),
      I1 => right_sr1(2),
      I2 => right_sr1(7),
      I3 => right_sr1(6),
      I4 => right_sr1(9),
      I5 => right_sr1(8),
      O => \right_sr[5]_i_2_n_0\
    );
\right_sr[5]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \right_sr_reg[43]_i_6_n_5\,
      O => \right_sr[5]_i_4_n_0\
    );
\right_sr[5]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \right_sr_reg[43]_i_6_n_6\,
      O => \right_sr[5]_i_5_n_0\
    );
\right_sr[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8000"
    )
        port map (
      I0 => \right_sr[13]_i_2_n_0\,
      I1 => \right_sr[38]_i_2_n_0\,
      I2 => \right_sr[7]_i_2_n_0\,
      I3 => \right_sr[38]_i_3_n_0\,
      I4 => \^in_right\(6),
      O => \right_sr[6]_i_1_n_0\
    );
\right_sr[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8000"
    )
        port map (
      I0 => \right_sr[13]_i_2_n_0\,
      I1 => \right_sr[39]_i_3_n_0\,
      I2 => \right_sr[7]_i_2_n_0\,
      I3 => \right_sr[39]_i_5_n_0\,
      I4 => \^in_right\(7),
      O => \right_sr[7]_i_1_n_0\
    );
\right_sr[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => right_sr1(3),
      I1 => \right_sr[43]_i_5_n_0\,
      I2 => right_sr1(4),
      I3 => right_sr1(5),
      O => \right_sr[7]_i_2_n_0\
    );
\right_sr[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => right_sr0(8),
      I1 => right_sr1(5),
      I2 => right_sr1(4),
      I3 => \right_sr[40]_i_3_n_0\,
      I4 => \right_sr[43]_i_5_n_0\,
      I5 => \^in_right\(8),
      O => \right_sr[8]_i_1_n_0\
    );
\right_sr[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000088000000F0"
    )
        port map (
      I0 => \right_sr[0]_i_2_n_0\,
      I1 => \ui_r_reg_n_0_[0]\,
      I2 => \right_sr[32]_i_2_n_0\,
      I3 => right_sr1(4),
      I4 => right_sr1(5),
      I5 => right_sr1(3),
      O => right_sr0(8)
    );
\right_sr[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => right_sr0(9),
      I1 => right_sr1(5),
      I2 => right_sr1(4),
      I3 => \right_sr[41]_i_3_n_0\,
      I4 => \right_sr[43]_i_5_n_0\,
      I5 => \^in_right\(9),
      O => \right_sr[9]_i_1_n_0\
    );
\right_sr[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000A000C"
    )
        port map (
      I0 => \right_sr[33]_i_3_n_0\,
      I1 => \right_sr[33]_i_2_n_0\,
      I2 => right_sr1(4),
      I3 => right_sr1(5),
      I4 => right_sr1(3),
      O => right_sr0(9)
    );
\right_sr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \right_sr[0]_i_1_n_0\,
      Q => \^in_right\(0),
      R => '0'
    );
\right_sr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \right_sr[10]_i_1_n_0\,
      Q => \^in_right\(10),
      R => '0'
    );
\right_sr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \right_sr[11]_i_1_n_0\,
      Q => \^in_right\(11),
      R => '0'
    );
\right_sr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \right_sr[12]_i_1_n_0\,
      Q => \^in_right\(12),
      R => '0'
    );
\right_sr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \right_sr[13]_i_1_n_0\,
      Q => \^in_right\(13),
      R => '0'
    );
\right_sr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \right_sr[14]_i_1_n_0\,
      Q => \^in_right\(14),
      R => '0'
    );
\right_sr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \right_sr[15]_i_1_n_0\,
      Q => \^in_right\(15),
      R => '0'
    );
\right_sr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \right_sr[16]_i_1_n_0\,
      Q => \^in_right\(16),
      R => '0'
    );
\right_sr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \right_sr[17]_i_1_n_0\,
      Q => \^in_right\(17),
      R => '0'
    );
\right_sr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \right_sr[18]_i_1_n_0\,
      Q => \^in_right\(18),
      R => '0'
    );
\right_sr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \right_sr[19]_i_1_n_0\,
      Q => \^in_right\(19),
      R => '0'
    );
\right_sr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \right_sr[1]_i_1_n_0\,
      Q => \^in_right\(1),
      R => '0'
    );
\right_sr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \right_sr[20]_i_1_n_0\,
      Q => \^in_right\(20),
      R => '0'
    );
\right_sr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \right_sr[21]_i_1_n_0\,
      Q => \^in_right\(21),
      R => '0'
    );
\right_sr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \right_sr[22]_i_1_n_0\,
      Q => \^in_right\(22),
      R => '0'
    );
\right_sr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \right_sr[23]_i_1_n_0\,
      Q => \^in_right\(23),
      R => '0'
    );
\right_sr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \right_sr[24]_i_1_n_0\,
      Q => \^in_right\(24),
      R => '0'
    );
\right_sr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \right_sr[25]_i_1_n_0\,
      Q => \^in_right\(25),
      R => '0'
    );
\right_sr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \right_sr[26]_i_1_n_0\,
      Q => \^in_right\(26),
      R => '0'
    );
\right_sr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \right_sr[27]_i_1_n_0\,
      Q => \^in_right\(27),
      R => '0'
    );
\right_sr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \right_sr[28]_i_1_n_0\,
      Q => \^in_right\(28),
      R => '0'
    );
\right_sr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \right_sr[29]_i_1_n_0\,
      Q => \^in_right\(29),
      R => '0'
    );
\right_sr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \right_sr[2]_i_1_n_0\,
      Q => \^in_right\(2),
      R => '0'
    );
\right_sr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \right_sr[30]_i_1_n_0\,
      Q => \^in_right\(30),
      R => '0'
    );
\right_sr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \right_sr[31]_i_1_n_0\,
      Q => \^in_right\(31),
      R => '0'
    );
\right_sr_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \right_sr[32]_i_1_n_0\,
      Q => \^in_right\(32),
      R => '0'
    );
\right_sr_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \right_sr[33]_i_1_n_0\,
      Q => \^in_right\(33),
      R => '0'
    );
\right_sr_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \right_sr[34]_i_1_n_0\,
      Q => \^in_right\(34),
      R => '0'
    );
\right_sr_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \right_sr[35]_i_1_n_0\,
      Q => \^in_right\(35),
      R => '0'
    );
\right_sr_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \right_sr[36]_i_1_n_0\,
      Q => \^in_right\(36),
      R => '0'
    );
\right_sr_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \right_sr[37]_i_1_n_0\,
      Q => \^in_right\(37),
      R => '0'
    );
\right_sr_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \right_sr[38]_i_1_n_0\,
      Q => \^in_right\(38),
      R => '0'
    );
\right_sr_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \right_sr[39]_i_1_n_0\,
      Q => \^in_right\(39),
      R => '0'
    );
\right_sr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \right_sr[3]_i_1_n_0\,
      Q => \^in_right\(3),
      R => '0'
    );
\right_sr_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \right_sr[40]_i_1_n_0\,
      Q => \^in_right\(40),
      R => '0'
    );
\right_sr_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \right_sr[41]_i_1_n_0\,
      Q => \^in_right\(41),
      R => '0'
    );
\right_sr_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \right_sr[42]_i_1_n_0\,
      Q => \^in_right\(42),
      R => '0'
    );
\right_sr_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \right_sr[43]_i_1_n_0\,
      Q => \^in_right\(43),
      R => '0'
    );
\right_sr_reg[43]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \right_sr_reg[44]_i_4_n_0\,
      CO(3) => \right_sr_reg[43]_i_3_n_0\,
      CO(2) => \right_sr_reg[43]_i_3_n_1\,
      CO(1) => \right_sr_reg[43]_i_3_n_2\,
      CO(0) => \right_sr_reg[43]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => \right_sr_reg[43]_i_6_n_7\,
      DI(2) => \right_sr_reg[44]_i_10_n_4\,
      DI(1) => \right_sr_reg[44]_i_10_n_5\,
      DI(0) => \right_sr_reg[44]_i_10_n_6\,
      O(3 downto 0) => right_sr1(7 downto 4),
      S(3) => \right_sr[43]_i_7_n_0\,
      S(2) => \right_sr[43]_i_8_n_0\,
      S(1) => \right_sr[43]_i_9_n_0\,
      S(0) => \right_sr[43]_i_10_n_0\
    );
\right_sr_reg[43]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \right_sr_reg[44]_i_10_n_0\,
      CO(3 downto 2) => \NLW_right_sr_reg[43]_i_6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \right_sr_reg[43]_i_6_n_2\,
      CO(0) => \right_sr_reg[43]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \right_sr[43]_i_12_n_0\,
      DI(0) => \right_sr[43]_i_13_n_0\,
      O(3) => \NLW_right_sr_reg[43]_i_6_O_UNCONNECTED\(3),
      O(2) => \right_sr_reg[43]_i_6_n_5\,
      O(1) => \right_sr_reg[43]_i_6_n_6\,
      O(0) => \right_sr_reg[43]_i_6_n_7\,
      S(3) => '0',
      S(2) => \right_sr[43]_i_14_n_0\,
      S(1) => \right_sr[43]_i_15_n_0\,
      S(0) => \right_sr[43]_i_16_n_0\
    );
\right_sr_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \right_sr[44]_i_1_n_0\,
      Q => \^in_right\(44),
      R => '0'
    );
\right_sr_reg[44]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \right_sr_reg[44]_i_10_n_0\,
      CO(2) => \right_sr_reg[44]_i_10_n_1\,
      CO(1) => \right_sr_reg[44]_i_10_n_2\,
      CO(0) => \right_sr_reg[44]_i_10_n_3\,
      CYINIT => '0',
      DI(3) => \right_sr[44]_i_15_n_0\,
      DI(2) => \right_sr[44]_i_16_n_0\,
      DI(1) => \right_sr[44]_i_17_n_0\,
      DI(0) => ph(0),
      O(3) => \right_sr_reg[44]_i_10_n_4\,
      O(2) => \right_sr_reg[44]_i_10_n_5\,
      O(1) => \right_sr_reg[44]_i_10_n_6\,
      O(0) => \right_sr_reg[44]_i_10_n_7\,
      S(3) => \right_sr[44]_i_18_n_0\,
      S(2) => \right_sr[44]_i_19_n_0\,
      S(1) => \right_sr[44]_i_20_n_0\,
      S(0) => \right_sr[44]_i_21_n_0\
    );
\right_sr_reg[44]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \right_sr_reg[44]_i_4_n_0\,
      CO(2) => \right_sr_reg[44]_i_4_n_1\,
      CO(1) => \right_sr_reg[44]_i_4_n_2\,
      CO(0) => \right_sr_reg[44]_i_4_n_3\,
      CYINIT => '0',
      DI(3) => \right_sr_reg[44]_i_10_n_7\,
      DI(2 downto 0) => B"001",
      O(3 downto 0) => right_sr1(3 downto 0),
      S(3) => \right_sr[44]_i_11_n_0\,
      S(2) => \right_sr[44]_i_12_n_0\,
      S(1) => \right_sr[44]_i_13_n_0\,
      S(0) => \right_sr_reg[44]_i_10_n_7\
    );
\right_sr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \right_sr[4]_i_1_n_0\,
      Q => \^in_right\(4),
      R => '0'
    );
\right_sr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \right_sr[5]_i_1_n_0\,
      Q => \^in_right\(5),
      R => '0'
    );
\right_sr_reg[5]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \right_sr_reg[43]_i_3_n_0\,
      CO(3 downto 1) => \NLW_right_sr_reg[5]_i_3_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \right_sr_reg[5]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \right_sr_reg[43]_i_6_n_6\,
      O(3 downto 2) => \NLW_right_sr_reg[5]_i_3_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => right_sr1(9 downto 8),
      S(3 downto 2) => B"00",
      S(1) => \right_sr[5]_i_4_n_0\,
      S(0) => \right_sr[5]_i_5_n_0\
    );
\right_sr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \right_sr[6]_i_1_n_0\,
      Q => \^in_right\(6),
      R => '0'
    );
\right_sr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \right_sr[7]_i_1_n_0\,
      Q => \^in_right\(7),
      R => '0'
    );
\right_sr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \right_sr[8]_i_1_n_0\,
      Q => \^in_right\(8),
      R => '0'
    );
\right_sr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \right_sr[9]_i_1_n_0\,
      Q => \^in_right\(9),
      R => '0'
    );
\rin_s[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \uo[7]_i_8_n_0\,
      I1 => \rin_s[7]_i_3_n_0\,
      I2 => pos(2),
      I3 => pos(1),
      I4 => pos(0),
      O => \pos_reg[2]_0\(0)
    );
\rin_s[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \uo[7]_i_8_n_0\,
      I1 => \rin_s[7]_i_3_n_0\,
      O => run_reg_5(0)
    );
\rin_s[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBFFE"
    )
        port map (
      I0 => \rin_s[7]_i_4_n_0\,
      I1 => \uo[7]_i_17_n_0\,
      I2 => n(2),
      I3 => \uo[7]_i_18_n_0\,
      I4 => \m_sec[7]_i_4_n_0\,
      O => \rin_s[7]_i_3_n_0\
    );
\rin_s[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6F66FFFFFFFFF"
    )
        port map (
      I0 => \^pos_reg[0]_0\,
      I1 => n(1),
      I2 => n(0),
      I3 => pos(0),
      I4 => \^uc_reg[3]_0\(0),
      I5 => \m_s2[6]_i_3_n_0\,
      O => \rin_s[7]_i_4_n_0\
    );
\rs_ok[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sg_first,
      I1 => \^load\,
      O => sg_first_reg_0
    );
run_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888880888A888888"
    )
        port map (
      I0 => \rec_in_reg[6]\(0),
      I1 => \^run\,
      I2 => p_0_in(2),
      I3 => run_i_2_n_0,
      I4 => p_0_in(0),
      I5 => p_0_in(1),
      O => run_i_1_n_0
    );
run_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => ph(1),
      I1 => ph(0),
      I2 => \ftype[2]_i_2_n_0\,
      O => run_i_2_n_0
    );
run_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => run_i_1_n_0,
      Q => \^run\,
      R => '0'
    );
\s0[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \s0[6]_i_3_n_0\,
      I1 => \^load\,
      O => sg_valid_reg_2
    );
\s0[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^load\,
      I1 => \s0[6]_i_3_n_0\,
      O => sg_valid_reg_0
    );
\s0[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFBFFFF"
    )
        port map (
      I0 => \s0[6]_i_4_n_0\,
      I1 => \^scan\,
      I2 => \s0[6]_i_5_n_0\,
      I3 => \s0[6]_i_6_n_0\,
      I4 => \s0[6]_i_7_n_0\,
      O => \s0[6]_i_3_n_0\
    );
\s0[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5556AAAA"
    )
        port map (
      I0 => pos(2),
      I1 => kstar(5),
      I2 => \sec[7]_i_34_n_0\,
      I3 => kstar(4),
      I4 => kstar(6),
      O => \s0[6]_i_4_n_0\
    );
\s0[6]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF9CC6F"
    )
        port map (
      I0 => kstar(1),
      I1 => \^uc_reg[3]_0\(1),
      I2 => kstar(0),
      I3 => \sec[7]_i_37_n_0\,
      I4 => \^uc_reg[3]_0\(0),
      O => \s0[6]_i_5_n_0\
    );
\s0[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEFFFFEBBBAAAAB"
    )
        port map (
      I0 => \sec[7]_i_38_n_0\,
      I1 => \sec[7]_i_37_n_0\,
      I2 => kstar(1),
      I3 => kstar(0),
      I4 => kstar(2),
      I5 => \^uc_reg[3]_0\(2),
      O => \s0[6]_i_6_n_0\
    );
\s0[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9900006400999901"
    )
        port map (
      I0 => pos(1),
      I1 => kstar(5),
      I2 => kstar(6),
      I3 => \sec[7]_i_34_n_0\,
      I4 => kstar(4),
      I5 => pos(0),
      O => \s0[6]_i_7_n_0\
    );
\s0[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"73"
    )
        port map (
      I0 => \^load\,
      I1 => \s0[6]_i_3_n_0\,
      I2 => s0(7),
      O => \s0_reg[7]\
    );
\s2[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \s2[6]_i_3_n_0\,
      I1 => \^load\,
      O => sg_valid_reg_3
    );
\s2[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^load\,
      I1 => \s2[6]_i_3_n_0\,
      O => sg_valid_reg_1
    );
\s2[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \s2[6]_i_4_n_0\,
      I1 => \s2[6]_i_5_n_0\,
      I2 => \^scan\,
      I3 => \s2[6]_i_6_n_0\,
      I4 => \s2[6]_i_7_n_0\,
      O => \s2[6]_i_3_n_0\
    );
\s2[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C9C0C0C900060900"
    )
        port map (
      I0 => kstar(3),
      I1 => \^uc_reg[3]_0\(3),
      I2 => \sec[7]_i_33_n_0\,
      I3 => \sec[7]_i_32_n_0\,
      I4 => kstar(2),
      I5 => \^uc_reg[3]_0\(2),
      O => \s2[6]_i_4_n_0\
    );
\s2[6]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7887"
    )
        port map (
      I0 => \sec[7]_i_30_n_0\,
      I1 => kstar(5),
      I2 => kstar(6),
      I3 => pos(2),
      O => \s2[6]_i_5_n_0\
    );
\s2[6]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC090060"
    )
        port map (
      I0 => kstar(1),
      I1 => \^uc_reg[3]_0\(1),
      I2 => kstar(0),
      I3 => \sec[7]_i_33_n_0\,
      I4 => \^uc_reg[3]_0\(0),
      O => \s2[6]_i_6_n_0\
    );
\s2[6]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90090960"
    )
        port map (
      I0 => kstar(5),
      I1 => pos(1),
      I2 => kstar(4),
      I3 => \sec[7]_i_31_n_0\,
      I4 => pos(0),
      O => \s2[6]_i_7_n_0\
    );
\s2[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"73"
    )
        port map (
      I0 => \^load\,
      I1 => \s2[6]_i_3_n_0\,
      I2 => s2(7),
      O => \s2_reg[7]\
    );
\sec[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFFFFFFA8000000"
    )
        port map (
      I0 => a(0),
      I1 => \sec_reg[7]_i_5_n_0\,
      I2 => \sec_reg[7]_i_4_n_0\,
      I3 => \^scan\,
      I4 => CO(0),
      I5 => \^load\,
      O => D(0)
    );
\sec[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFFFFFFA8000000"
    )
        port map (
      I0 => a(1),
      I1 => \sec_reg[7]_i_5_n_0\,
      I2 => \sec_reg[7]_i_4_n_0\,
      I3 => \^scan\,
      I4 => CO(0),
      I5 => \^load\,
      O => D(1)
    );
\sec[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFFFFFFA8000000"
    )
        port map (
      I0 => a(2),
      I1 => \sec_reg[7]_i_5_n_0\,
      I2 => \sec_reg[7]_i_4_n_0\,
      I3 => \^scan\,
      I4 => CO(0),
      I5 => \^load\,
      O => D(2)
    );
\sec[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFFFFFFA8000000"
    )
        port map (
      I0 => a(3),
      I1 => \sec_reg[7]_i_5_n_0\,
      I2 => \sec_reg[7]_i_4_n_0\,
      I3 => \^scan\,
      I4 => CO(0),
      I5 => \^load\,
      O => D(3)
    );
\sec[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFFFFFFA8000000"
    )
        port map (
      I0 => a(4),
      I1 => \sec_reg[7]_i_5_n_0\,
      I2 => \sec_reg[7]_i_4_n_0\,
      I3 => \^scan\,
      I4 => CO(0),
      I5 => \^load\,
      O => D(4)
    );
\sec[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFFFFFFA8000000"
    )
        port map (
      I0 => a(5),
      I1 => \sec_reg[7]_i_5_n_0\,
      I2 => \sec_reg[7]_i_4_n_0\,
      I3 => \^scan\,
      I4 => CO(0),
      I5 => \^load\,
      O => D(5)
    );
\sec[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFFFFFFA8000000"
    )
        port map (
      I0 => a(6),
      I1 => \sec_reg[7]_i_5_n_0\,
      I2 => \sec_reg[7]_i_4_n_0\,
      I3 => \^scan\,
      I4 => CO(0),
      I5 => \^load\,
      O => D(6)
    );
\sec[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEAEAAA"
    )
        port map (
      I0 => \^load\,
      I1 => CO(0),
      I2 => \^scan\,
      I3 => \sec_reg[7]_i_4_n_0\,
      I4 => \sec_reg[7]_i_5_n_0\,
      O => sg_valid_reg_4(0)
    );
\sec[7]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"802A"
    )
        port map (
      I0 => pos(2),
      I1 => \sec[7]_i_30_n_0\,
      I2 => kstar(5),
      I3 => kstar(6),
      O => \sec[7]_i_14_n_0\
    );
\sec[7]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2CBA08A2"
    )
        port map (
      I0 => pos(1),
      I1 => kstar(4),
      I2 => \sec[7]_i_31_n_0\,
      I3 => kstar(5),
      I4 => pos(0),
      O => \sec[7]_i_15_n_0\
    );
\sec[7]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002BE200002282"
    )
        port map (
      I0 => \^uc_reg[3]_0\(3),
      I1 => kstar(3),
      I2 => kstar(2),
      I3 => \sec[7]_i_32_n_0\,
      I4 => \sec[7]_i_33_n_0\,
      I5 => \^uc_reg[3]_0\(2),
      O => \sec[7]_i_16_n_0\
    );
\sec[7]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00E20082"
    )
        port map (
      I0 => \^uc_reg[3]_0\(1),
      I1 => kstar(1),
      I2 => kstar(0),
      I3 => \sec[7]_i_33_n_0\,
      I4 => \^uc_reg[3]_0\(0),
      O => \sec[7]_i_17_n_0\
    );
\sec[7]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7887"
    )
        port map (
      I0 => \sec[7]_i_30_n_0\,
      I1 => kstar(5),
      I2 => kstar(6),
      I3 => pos(2),
      O => \sec[7]_i_18_n_0\
    );
\sec[7]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90090960"
    )
        port map (
      I0 => kstar(5),
      I1 => pos(1),
      I2 => kstar(4),
      I3 => \sec[7]_i_31_n_0\,
      I4 => pos(0),
      O => \sec[7]_i_19_n_0\
    );
\sec[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A2A2AAA"
    )
        port map (
      I0 => \^load\,
      I1 => CO(0),
      I2 => \^scan\,
      I3 => \sec_reg[7]_i_4_n_0\,
      I4 => \sec_reg[7]_i_5_n_0\,
      O => D(7)
    );
\sec[7]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C9C0C0C900060900"
    )
        port map (
      I0 => kstar(3),
      I1 => \^uc_reg[3]_0\(3),
      I2 => \sec[7]_i_33_n_0\,
      I3 => \sec[7]_i_32_n_0\,
      I4 => kstar(2),
      I5 => \^uc_reg[3]_0\(2),
      O => \sec[7]_i_20_n_0\
    );
\sec[7]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC090060"
    )
        port map (
      I0 => kstar(1),
      I1 => \^uc_reg[3]_0\(1),
      I2 => kstar(0),
      I3 => \sec[7]_i_33_n_0\,
      I4 => \^uc_reg[3]_0\(0),
      O => \sec[7]_i_21_n_0\
    );
\sec[7]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FE00"
    )
        port map (
      I0 => kstar(5),
      I1 => \sec[7]_i_34_n_0\,
      I2 => kstar(4),
      I3 => kstar(6),
      I4 => pos(2),
      O => \sec[7]_i_22_n_0\
    );
\sec[7]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55500004F555500C"
    )
        port map (
      I0 => pos(1),
      I1 => kstar(6),
      I2 => kstar(4),
      I3 => \sec[7]_i_34_n_0\,
      I4 => kstar(5),
      I5 => pos(0),
      O => \sec[7]_i_23_n_0\
    );
\sec[7]_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"022F"
    )
        port map (
      I0 => \sec[7]_i_35_n_0\,
      I1 => \^uc_reg[3]_0\(2),
      I2 => \^uc_reg[3]_0\(3),
      I3 => \sec[7]_i_36_n_0\,
      O => \sec[7]_i_24_n_0\
    );
\sec[7]_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10011013"
    )
        port map (
      I0 => \^uc_reg[3]_0\(1),
      I1 => \sec[7]_i_37_n_0\,
      I2 => kstar(1),
      I3 => kstar(0),
      I4 => \^uc_reg[3]_0\(0),
      O => \sec[7]_i_25_n_0\
    );
\sec[7]_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA85557"
    )
        port map (
      I0 => kstar(6),
      I1 => kstar(4),
      I2 => \sec[7]_i_34_n_0\,
      I3 => kstar(5),
      I4 => pos(2),
      O => \sec[7]_i_26_n_0\
    );
\sec[7]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9900006400999901"
    )
        port map (
      I0 => pos(1),
      I1 => kstar(5),
      I2 => kstar(6),
      I3 => \sec[7]_i_34_n_0\,
      I4 => kstar(4),
      I5 => pos(0),
      O => \sec[7]_i_27_n_0\
    );
\sec[7]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055559996"
    )
        port map (
      I0 => \^uc_reg[3]_0\(2),
      I1 => kstar(2),
      I2 => kstar(0),
      I3 => kstar(1),
      I4 => \sec[7]_i_37_n_0\,
      I5 => \sec[7]_i_38_n_0\,
      O => \sec[7]_i_28_n_0\
    );
\sec[7]_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10460254"
    )
        port map (
      I0 => \^uc_reg[3]_0\(0),
      I1 => \sec[7]_i_37_n_0\,
      I2 => kstar(0),
      I3 => \^uc_reg[3]_0\(1),
      I4 => kstar(1),
      O => \sec[7]_i_29_n_0\
    );
\sec[7]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => kstar(4),
      I1 => \sec[7]_i_39_n_0\,
      I2 => kstar(2),
      I3 => kstar(1),
      I4 => kstar(0),
      I5 => kstar(3),
      O => \sec[7]_i_30_n_0\
    );
\sec[7]_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => kstar(3),
      I1 => kstar(0),
      I2 => kstar(1),
      I3 => kstar(2),
      I4 => \sec[7]_i_39_n_0\,
      O => \sec[7]_i_31_n_0\
    );
\sec[7]_i_32\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => kstar(1),
      I1 => kstar(0),
      O => \sec[7]_i_32_n_0\
    );
\sec[7]_i_33\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => kstar(3),
      I1 => kstar(0),
      I2 => kstar(1),
      I3 => kstar(2),
      I4 => \sec[7]_i_39_n_0\,
      O => \sec[7]_i_33_n_0\
    );
\sec[7]_i_34\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => kstar(3),
      I1 => kstar(1),
      I2 => kstar(2),
      I3 => kstar(0),
      O => \sec[7]_i_34_n_0\
    );
\sec[7]_i_35\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5401"
    )
        port map (
      I0 => \sec[7]_i_37_n_0\,
      I1 => kstar(1),
      I2 => kstar(0),
      I3 => kstar(2),
      O => \sec[7]_i_35_n_0\
    );
\sec[7]_i_36\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55565557"
    )
        port map (
      I0 => kstar(3),
      I1 => kstar(1),
      I2 => kstar(2),
      I3 => kstar(0),
      I4 => \sec[7]_i_40_n_0\,
      O => \sec[7]_i_36_n_0\
    );
\sec[7]_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => kstar(4),
      I1 => kstar(5),
      I2 => kstar(6),
      I3 => kstar(1),
      I4 => kstar(2),
      I5 => kstar(3),
      O => \sec[7]_i_37_n_0\
    );
\sec[7]_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555AAAAAAAA6"
    )
        port map (
      I0 => \^uc_reg[3]_0\(3),
      I1 => \sec[7]_i_40_n_0\,
      I2 => kstar(0),
      I3 => kstar(2),
      I4 => kstar(1),
      I5 => kstar(3),
      O => \sec[7]_i_38_n_0\
    );
\sec[7]_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF6FF6FFF9FFFF6F"
    )
        port map (
      I0 => n(2),
      I1 => kstar(6),
      I2 => n(0),
      I3 => kstar(4),
      I4 => kstar(5),
      I5 => n(1),
      O => \sec[7]_i_39_n_0\
    );
\sec[7]_i_40\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => kstar(6),
      I1 => kstar(5),
      I2 => kstar(4),
      O => \sec[7]_i_40_n_0\
    );
\sec_reg[7]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sec_reg[7]_i_4_n_0\,
      CO(2) => \sec_reg[7]_i_4_n_1\,
      CO(1) => \sec_reg[7]_i_4_n_2\,
      CO(0) => \sec_reg[7]_i_4_n_3\,
      CYINIT => '0',
      DI(3) => \sec[7]_i_14_n_0\,
      DI(2) => \sec[7]_i_15_n_0\,
      DI(1) => \sec[7]_i_16_n_0\,
      DI(0) => \sec[7]_i_17_n_0\,
      O(3 downto 0) => \NLW_sec_reg[7]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \sec[7]_i_18_n_0\,
      S(2) => \sec[7]_i_19_n_0\,
      S(1) => \sec[7]_i_20_n_0\,
      S(0) => \sec[7]_i_21_n_0\
    );
\sec_reg[7]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sec_reg[7]_i_5_n_0\,
      CO(2) => \sec_reg[7]_i_5_n_1\,
      CO(1) => \sec_reg[7]_i_5_n_2\,
      CO(0) => \sec_reg[7]_i_5_n_3\,
      CYINIT => '0',
      DI(3) => \sec[7]_i_22_n_0\,
      DI(2) => \sec[7]_i_23_n_0\,
      DI(1) => \sec[7]_i_24_n_0\,
      DI(0) => \sec[7]_i_25_n_0\,
      O(3 downto 0) => \NLW_sec_reg[7]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => \sec[7]_i_26_n_0\,
      S(2) => \sec[7]_i_27_n_0\,
      S(1) => \sec[7]_i_28_n_0\,
      S(0) => \sec[7]_i_29_n_0\
    );
sg_first_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => hn_first,
      I1 => p_4_in,
      I2 => sg_first,
      O => sg_first_i_1_n_0
    );
sg_first_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sg_first_i_1_n_0,
      Q => sg_first,
      R => '0'
    );
sg_real_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => hn_real,
      I1 => p_4_in,
      I2 => sg_real,
      O => sg_real_i_1_n_0
    );
sg_real_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sg_real_i_1_n_0,
      Q => sg_real,
      R => '0'
    );
sg_use_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => hn_use,
      I1 => p_4_in,
      I2 => sg_use,
      O => sg_use_i_1_n_0
    );
sg_use_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sg_use_i_1_n_0,
      Q => sg_use,
      R => '0'
    );
sg_valid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88A08800"
    )
        port map (
      I0 => \rec_in_reg[6]\(0),
      I1 => \^run\,
      I2 => sg_valid_reg_n_0,
      I3 => p_4_in,
      I4 => act_i_2_n_0,
      O => sg_valid_i_1_n_0
    );
sg_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sg_valid_i_1_n_0,
      Q => sg_valid_reg_n_0,
      R => '0'
    );
\uc[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^uc_reg[3]_0\(0),
      I1 => \^load\,
      O => \uc[0]_i_1_n_0\
    );
\uc[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \^uc_reg[3]_0\(1),
      I1 => \^uc_reg[3]_0\(0),
      I2 => \^load\,
      O => \uc[1]_i_1_n_0\
    );
\uc[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => \^uc_reg[3]_0\(2),
      I1 => \^uc_reg[3]_0\(0),
      I2 => \^uc_reg[3]_0\(1),
      I3 => \^load\,
      O => \uc[2]_i_1_n_0\
    );
\uc[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => \^uc_reg[3]_0\(3),
      I1 => \^uc_reg[3]_0\(1),
      I2 => \^uc_reg[3]_0\(0),
      I3 => \^uc_reg[3]_0\(2),
      I4 => \^load\,
      O => \uc[3]_i_1_n_0\
    );
\uc[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAAAAAA"
    )
        port map (
      I0 => uc(4),
      I1 => \^uc_reg[3]_0\(2),
      I2 => \^uc_reg[3]_0\(0),
      I3 => \^uc_reg[3]_0\(1),
      I4 => \^uc_reg[3]_0\(3),
      I5 => \^load\,
      O => \uc[4]_i_1_n_0\
    );
\uc[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF7FF"
    )
        port map (
      I0 => uc(6),
      I1 => uc(4),
      I2 => \uc[5]_i_3_n_0\,
      I3 => uc(5),
      I4 => \^load\,
      O => \uc[5]_i_1_n_0\
    );
\uc[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"009A"
    )
        port map (
      I0 => uc(5),
      I1 => \uc[5]_i_3_n_0\,
      I2 => uc(4),
      I3 => \^load\,
      O => \uc[5]_i_2_n_0\
    );
\uc[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^uc_reg[3]_0\(2),
      I1 => \^uc_reg[3]_0\(0),
      I2 => \^uc_reg[3]_0\(1),
      I3 => \^uc_reg[3]_0\(3),
      O => \uc[5]_i_3_n_0\
    );
\uc[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AEAA"
    )
        port map (
      I0 => uc(6),
      I1 => uc(4),
      I2 => \uc[5]_i_3_n_0\,
      I3 => uc(5),
      I4 => \^load\,
      O => \uc[6]_i_1_n_0\
    );
\uc_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \uc[5]_i_1_n_0\,
      D => \uc[0]_i_1_n_0\,
      Q => \^uc_reg[3]_0\(0),
      S => \^sr\(1)
    );
\uc_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \uc[5]_i_1_n_0\,
      D => \uc[1]_i_1_n_0\,
      Q => \^uc_reg[3]_0\(1),
      S => \^sr\(1)
    );
\uc_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \uc[5]_i_1_n_0\,
      D => \uc[2]_i_1_n_0\,
      Q => \^uc_reg[3]_0\(2),
      S => \^sr\(1)
    );
\uc_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \uc[5]_i_1_n_0\,
      D => \uc[3]_i_1_n_0\,
      Q => \^uc_reg[3]_0\(3),
      S => \^sr\(1)
    );
\uc_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \uc[5]_i_1_n_0\,
      D => \uc[4]_i_1_n_0\,
      Q => uc(4),
      S => \^sr\(1)
    );
\uc_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \uc[5]_i_1_n_0\,
      D => \uc[5]_i_2_n_0\,
      Q => uc(5),
      S => \^sr\(1)
    );
\uc_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \uc[6]_i_1_n_0\,
      Q => uc(6),
      S => \^sr\(1)
    );
\ui_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ui_in(0),
      Q => \ui_r_reg_n_0_[0]\,
      R => '0'
    );
\ui_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ui_in(1),
      Q => \ui_r_reg_n_0_[1]\,
      R => '0'
    );
\ui_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ui_in(2),
      Q => \ui_r_reg_n_0_[2]\,
      R => '0'
    );
\ui_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ui_in(3),
      Q => \ui_r_reg_n_0_[3]\,
      R => '0'
    );
\ui_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ui_in(4),
      Q => p_0_in(0),
      R => '0'
    );
\ui_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ui_in(5),
      Q => p_0_in(1),
      R => '0'
    );
\ui_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ui_in(6),
      Q => p_0_in(2),
      R => '0'
    );
\uo[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBABABABAA"
    )
        port map (
      I0 => \uo[0]_i_2_n_0\,
      I1 => \uo[0]_i_3_n_0\,
      I2 => \uo[0]_i_4_n_0\,
      I3 => \uo[0]_i_5_n_0\,
      I4 => \uo[0]_i_6_n_0\,
      I5 => \uo[0]_i_7_n_0\,
      O => \uio_r_reg[6]\(0)
    );
\uo[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6066600066666666"
    )
        port map (
      I0 => pos(0),
      I1 => \^uc_reg[3]_0\(0),
      I2 => \uo[0]_i_7_0\(0),
      I3 => \m_sec_reg[7]_2\,
      I4 => \m_sec_reg[7]\(0),
      I5 => \^pos_reg[0]_0\,
      O => \uo[0]_i_10_n_0\
    );
\uo[0]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEAAAAA"
    )
        port map (
      I0 => \uo[2]_i_17_n_0\,
      I1 => \m_sec_reg[7]\(0),
      I2 => \uo[7]_i_22_n_0\,
      I3 => s2(0),
      I4 => \m_s2[6]_i_2_n_0\,
      O => \uo[0]_i_11_n_0\
    );
\uo[0]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => \m_s0[6]_i_2_n_0\,
      I1 => s0(0),
      I2 => \uo[7]_i_22_n_0\,
      I3 => \m_sec_reg[7]\(0),
      O => \uo[0]_i_13_n_0\
    );
\uo[0]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEF22222220"
    )
        port map (
      I0 => \m_sec_reg[7]\(0),
      I1 => \uo[5]_i_11_0\(0),
      I2 => pos(2),
      I3 => pos(1),
      I4 => pos(0),
      I5 => \uo[7]_i_10_1\(0),
      O => \uo[0]_i_14_n_0\
    );
\uo[0]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \uo[7]_i_12_n_0\,
      I1 => \uo[6]_i_5_1\(0),
      I2 => \uo[7]_i_11_n_0\,
      I3 => \m_sec_reg[7]\(0),
      O => \uo[0]_i_15_n_0\
    );
\uo[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^run\,
      I1 => \m_sec_reg[7]\(0),
      O => \uo[0]_i_2_n_0\
    );
\uo[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555D5D5D5D5D"
    )
        port map (
      I0 => \uo[7]_i_8_n_0\,
      I1 => \uo[7]_i_7_n_0\,
      I2 => \uo[0]_i_8_n_0\,
      I3 => \^pos_reg[0]_0\,
      I4 => \uo[0]_i_9_n_0\,
      I5 => \uo[0]_i_10_n_0\,
      O => \uo[0]_i_3_n_0\
    );
\uo[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEEF"
    )
        port map (
      I0 => \dn_edge[6]_i_3_n_0\,
      I1 => \uo[7]_i_12_n_0\,
      I2 => \rin_s[7]_i_3_n_0\,
      I3 => \m_sec_reg[7]_0\(7),
      O => \uo[0]_i_4_n_0\
    );
\uo[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF0E000E"
    )
        port map (
      I0 => \uo[0]_i_11_n_0\,
      I1 => \m_s0_reg[0]\,
      I2 => \uo[0]_i_13_n_0\,
      I3 => \uo[2]_i_14_n_0\,
      I4 => \uo[0]_i_14_n_0\,
      I5 => \rec_in[14]_i_2_n_0\,
      O => \uo[0]_i_5_n_0\
    );
\uo[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \uo[4]_i_10_n_0\,
      I1 => \rec_in[14]_i_2_n_0\,
      I2 => \m_sec_reg[7]_0\(0),
      O => \uo[0]_i_6_n_0\
    );
\uo[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAEEEAEEEAEE"
    )
        port map (
      I0 => \uo[0]_i_15_n_0\,
      I1 => \uo[7]_i_7_n_0\,
      I2 => \uo[0]_i_10_n_0\,
      I3 => \^pos_reg[0]_0\,
      I4 => \uo[6]_i_5_0\(0),
      I5 => \dn_edge[6]_i_3_n_0\,
      O => \uo[0]_i_7_n_0\
    );
\uo[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999990999000"
    )
        port map (
      I0 => pos(0),
      I1 => \^uc_reg[3]_0\(0),
      I2 => \m_sec_reg[7]\(0),
      I3 => \uo[7]_i_15_n_0\,
      I4 => best_s(0),
      I5 => \^pos_reg[0]_0\,
      O => \uo[0]_i_8_n_0\
    );
\uo[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEF22222220"
    )
        port map (
      I0 => \m_sec_reg[7]\(0),
      I1 => \uo[1]_i_8\(0),
      I2 => pos(2),
      I3 => pos(1),
      I4 => pos(0),
      I5 => lmin(0),
      O => \uo[0]_i_9_n_0\
    );
\uo[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55551110"
    )
        port map (
      I0 => \uo[1]_i_2_n_0\,
      I1 => \uo[1]_i_3_n_0\,
      I2 => \uo[1]_i_4_n_0\,
      I3 => \uo[1]_i_5_n_0\,
      I4 => \uo[1]_i_6_n_0\,
      I5 => \m_s0_reg[1]\,
      O => \uio_r_reg[6]\(1)
    );
\uo[1]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEAAAAA"
    )
        port map (
      I0 => \uo[2]_i_17_n_0\,
      I1 => \m_sec_reg[7]\(1),
      I2 => \uo[7]_i_22_n_0\,
      I3 => s2(1),
      I4 => \m_s2[6]_i_2_n_0\,
      O => \uo[1]_i_10_n_0\
    );
\uo[1]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => \^uc_reg[4]_0\,
      I1 => \uo[6]_i_8_0\(0),
      O => \uo[1]_i_11_n_0\
    );
\uo[1]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => \m_s0[6]_i_2_n_0\,
      I1 => s0(1),
      I2 => \uo[7]_i_22_n_0\,
      I3 => \m_sec_reg[7]\(1),
      O => \uo[1]_i_13_n_0\
    );
\uo[1]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABFAAAA"
    )
        port map (
      I0 => \rec_in[14]_i_2_n_0\,
      I1 => \m_sec_reg[7]\(1),
      I2 => \uo[5]_i_16_n_0\,
      I3 => \uo[7]_i_10_1\(1),
      I4 => \uo[2]_i_14_n_0\,
      O => \uo[1]_i_14_n_0\
    );
\uo[1]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8F8F8F88888888"
    )
        port map (
      I0 => \dn_edge[6]_i_3_n_0\,
      I1 => \uo[6]_i_5_0\(1),
      I2 => \^pos_reg[0]_0\,
      I3 => \uo[7]_i_13_n_0\,
      I4 => \m_s0_reg[1]_1\,
      I5 => \uo[7]_i_7_n_0\,
      O => \uo[1]_i_15_n_0\
    );
\uo[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D555D555D555DDD"
    )
        port map (
      I0 => \uo[7]_i_8_n_0\,
      I1 => \uo[7]_i_7_n_0\,
      I2 => \m_s0_reg[1]_1\,
      I3 => \uo[7]_i_13_n_0\,
      I4 => \^pos_reg[0]_0\,
      I5 => \uo[1]_i_9_n_0\,
      O => \uo[1]_i_2_n_0\
    );
\uo[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEEF"
    )
        port map (
      I0 => \dn_edge[6]_i_3_n_0\,
      I1 => \uo[7]_i_12_n_0\,
      I2 => \rin_s[7]_i_3_n_0\,
      I3 => \m_sec_reg[7]_0\(8),
      O => \uo[1]_i_3_n_0\
    );
\uo[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF00AE"
    )
        port map (
      I0 => \uo[1]_i_10_n_0\,
      I1 => \uo[1]_i_11_n_0\,
      I2 => \m_s0_reg[1]_0\,
      I3 => \uo[1]_i_13_n_0\,
      I4 => \uo[2]_i_14_n_0\,
      I5 => \uo[1]_i_14_n_0\,
      O => \uo[1]_i_4_n_0\
    );
\uo[1]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \uo[4]_i_10_n_0\,
      I1 => \rec_in[14]_i_2_n_0\,
      I2 => \m_sec_reg[7]_0\(1),
      O => \uo[1]_i_5_n_0\
    );
\uo[1]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB800"
    )
        port map (
      I0 => \m_sec_reg[7]\(1),
      I1 => \uo[7]_i_11_n_0\,
      I2 => \uo[6]_i_5_1\(1),
      I3 => \uo[7]_i_12_n_0\,
      I4 => \uo[1]_i_15_n_0\,
      O => \uo[1]_i_6_n_0\
    );
\uo[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEF22222220"
    )
        port map (
      I0 => \m_sec_reg[7]\(1),
      I1 => own_wins_reg(0),
      I2 => pos(2),
      I3 => pos(1),
      I4 => pos(0),
      I5 => best_s(1),
      O => \uo[1]_i_9_n_0\
    );
\uo[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBABABABAA"
    )
        port map (
      I0 => \m_s0_reg[2]\,
      I1 => \uo[2]_i_3_n_0\,
      I2 => \uo[2]_i_4_n_0\,
      I3 => \uo[2]_i_5_n_0\,
      I4 => \uo[2]_i_6_n_0\,
      I5 => \uo[2]_i_7_n_0\,
      O => \uio_r_reg[6]\(2)
    );
\uo[2]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEAAAAA"
    )
        port map (
      I0 => \uo[2]_i_17_n_0\,
      I1 => \m_sec_reg[7]\(2),
      I2 => \uo[7]_i_22_n_0\,
      I3 => s2(2),
      I4 => \m_s2[6]_i_2_n_0\,
      O => \uo[2]_i_10_n_0\
    );
\uo[2]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => \^uc_reg[4]_0\,
      I1 => \uo[6]_i_8_0\(1),
      O => \uo[2]_i_11_n_0\
    );
\uo[2]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => \m_s0[6]_i_2_n_0\,
      I1 => s0(2),
      I2 => \uo[7]_i_22_n_0\,
      I3 => \m_sec_reg[7]\(2),
      O => \uo[2]_i_13_n_0\
    );
\uo[2]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010202001"
    )
        port map (
      I0 => \uo[7]_i_18_n_0\,
      I1 => \m_sec[7]_i_3_n_0\,
      I2 => \uo[7]_i_17_n_0\,
      I3 => n(2),
      I4 => n(1),
      I5 => \m_sec[7]_i_4_n_0\,
      O => \uo[2]_i_14_n_0\
    );
\uo[2]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABFAAAA"
    )
        port map (
      I0 => \rec_in[14]_i_2_n_0\,
      I1 => \m_sec_reg[7]\(2),
      I2 => \uo[5]_i_16_n_0\,
      I3 => \uo[7]_i_10_1\(2),
      I4 => \uo[2]_i_14_n_0\,
      O => \uo[2]_i_15_n_0\
    );
\uo[2]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8F8F8F88888888"
    )
        port map (
      I0 => \dn_edge[6]_i_3_n_0\,
      I1 => \uo[6]_i_5_0\(2),
      I2 => \^pos_reg[0]_0\,
      I3 => \uo[7]_i_13_n_0\,
      I4 => \m_s0_reg[2]_1\,
      I5 => \uo[7]_i_7_n_0\,
      O => \uo[2]_i_16_n_0\
    );
\uo[2]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000040"
    )
        port map (
      I0 => \uo[7]_i_39_n_0\,
      I1 => \m_s0[6]_i_4_n_0\,
      I2 => \m_s2[6]_i_3_n_0\,
      I3 => n(0),
      I4 => \uo[7]_i_13_n_0\,
      I5 => \uo[7]_i_40_n_0\,
      O => \uo[2]_i_17_n_0\
    );
\uo[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D555D555D555DDD"
    )
        port map (
      I0 => \uo[7]_i_8_n_0\,
      I1 => \uo[7]_i_7_n_0\,
      I2 => \m_s0_reg[2]_1\,
      I3 => \uo[7]_i_13_n_0\,
      I4 => \^pos_reg[0]_0\,
      I5 => \uo[2]_i_9_n_0\,
      O => \uo[2]_i_3_n_0\
    );
\uo[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEEF"
    )
        port map (
      I0 => \dn_edge[6]_i_3_n_0\,
      I1 => \uo[7]_i_12_n_0\,
      I2 => \rin_s[7]_i_3_n_0\,
      I3 => \m_sec_reg[7]_0\(9),
      O => \uo[2]_i_4_n_0\
    );
\uo[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF00AE"
    )
        port map (
      I0 => \uo[2]_i_10_n_0\,
      I1 => \uo[2]_i_11_n_0\,
      I2 => \m_s0_reg[2]_0\,
      I3 => \uo[2]_i_13_n_0\,
      I4 => \uo[2]_i_14_n_0\,
      I5 => \uo[2]_i_15_n_0\,
      O => \uo[2]_i_5_n_0\
    );
\uo[2]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \uo[4]_i_10_n_0\,
      I1 => \rec_in[14]_i_2_n_0\,
      I2 => \m_sec_reg[7]_0\(2),
      O => \uo[2]_i_6_n_0\
    );
\uo[2]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB800"
    )
        port map (
      I0 => \m_sec_reg[7]\(2),
      I1 => \uo[7]_i_11_n_0\,
      I2 => \uo[6]_i_5_1\(2),
      I3 => \uo[7]_i_12_n_0\,
      I4 => \uo[2]_i_16_n_0\,
      O => \uo[2]_i_7_n_0\
    );
\uo[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEF22222220"
    )
        port map (
      I0 => \m_sec_reg[7]\(2),
      I1 => own_wins_reg(0),
      I2 => pos(2),
      I3 => pos(1),
      I4 => pos(0),
      I5 => best_s(2),
      O => \uo[2]_i_9_n_0\
    );
\uo[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBABABABAA"
    )
        port map (
      I0 => \m_s0_reg[3]\,
      I1 => \uo[3]_i_3_n_0\,
      I2 => \uo[3]_i_4_n_0\,
      I3 => \uo[3]_i_5_n_0\,
      I4 => \uo[3]_i_6_n_0\,
      I5 => \uo[3]_i_7_n_0\,
      O => \uio_r_reg[6]\(3)
    );
\uo[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBF88888880"
    )
        port map (
      I0 => \m_sec_reg[7]\(3),
      I1 => \m_sec_reg[7]\(7),
      I2 => pos(2),
      I3 => pos(1),
      I4 => pos(0),
      I5 => s0(3),
      O => \uo[3]_i_10_n_0\
    );
\uo[3]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000280000"
    )
        port map (
      I0 => \m_s2[6]_i_3_n_0\,
      I1 => n(1),
      I2 => \^pos_reg[0]_0\,
      I3 => \uo[3]_i_17_n_0\,
      I4 => \m_s2[6]_i_4_n_0\,
      I5 => \uo[3]_i_18_n_0\,
      O => \uo[3]_i_12_n_0\
    );
\uo[3]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEF22222220"
    )
        port map (
      I0 => \m_sec_reg[7]\(3),
      I1 => \uo[5]_i_11_0\(0),
      I2 => pos(2),
      I3 => pos(1),
      I4 => pos(0),
      I5 => \uo[7]_i_10_1\(3),
      O => \uo[3]_i_13_n_0\
    );
\uo[3]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8F8F8F88888888"
    )
        port map (
      I0 => \dn_edge[6]_i_3_n_0\,
      I1 => \uo[6]_i_5_0\(3),
      I2 => \^pos_reg[0]_0\,
      I3 => \uo[7]_i_13_n_0\,
      I4 => \m_s0_reg[3]_1\,
      I5 => \uo[7]_i_7_n_0\,
      O => \uo[3]_i_14_n_0\
    );
\uo[3]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEAAAAA"
    )
        port map (
      I0 => \uo[2]_i_17_n_0\,
      I1 => \m_sec_reg[7]\(3),
      I2 => \uo[7]_i_22_n_0\,
      I3 => s2(3),
      I4 => \m_s2[6]_i_2_n_0\,
      O => \uio_r_reg[3]\
    );
\uo[3]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \uo[7]_i_18_n_0\,
      I1 => n(2),
      I2 => n(1),
      O => \uo[3]_i_17_n_0\
    );
\uo[3]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFE"
    )
        port map (
      I0 => \m_sec[7]_i_4_n_0\,
      I1 => n(1),
      I2 => n(2),
      I3 => \uo[7]_i_17_n_0\,
      O => \uo[3]_i_18_n_0\
    );
\uo[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D555D555D555DDD"
    )
        port map (
      I0 => \uo[7]_i_8_n_0\,
      I1 => \uo[7]_i_7_n_0\,
      I2 => \m_s0_reg[3]_1\,
      I3 => \uo[7]_i_13_n_0\,
      I4 => \^pos_reg[0]_0\,
      I5 => \uo[3]_i_9_n_0\,
      O => \uo[3]_i_3_n_0\
    );
\uo[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEEF"
    )
        port map (
      I0 => \dn_edge[6]_i_3_n_0\,
      I1 => \uo[7]_i_12_n_0\,
      I2 => \rin_s[7]_i_3_n_0\,
      I3 => \m_sec_reg[7]_0\(10),
      O => \uo[3]_i_4_n_0\
    );
\uo[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFD000D0"
    )
        port map (
      I0 => \m_s0[6]_i_2_n_0\,
      I1 => \uo[3]_i_10_n_0\,
      I2 => \m_s0_reg[3]_0\,
      I3 => \uo[3]_i_12_n_0\,
      I4 => \uo[3]_i_13_n_0\,
      I5 => \rec_in[14]_i_2_n_0\,
      O => \uo[3]_i_5_n_0\
    );
\uo[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \uo[4]_i_10_n_0\,
      I1 => \rec_in[14]_i_2_n_0\,
      I2 => \m_sec_reg[7]_0\(3),
      O => \uo[3]_i_6_n_0\
    );
\uo[3]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB800"
    )
        port map (
      I0 => \m_sec_reg[7]\(3),
      I1 => \uo[7]_i_11_n_0\,
      I2 => \uo[6]_i_5_1\(3),
      I3 => \uo[7]_i_12_n_0\,
      I4 => \uo[3]_i_14_n_0\,
      O => \uo[3]_i_7_n_0\
    );
\uo[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEF22222220"
    )
        port map (
      I0 => \m_sec_reg[7]\(3),
      I1 => own_wins_reg(0),
      I2 => pos(2),
      I3 => pos(1),
      I4 => pos(0),
      I5 => best_s(3),
      O => \uo[3]_i_9_n_0\
    );
\uo[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBABABABAA"
    )
        port map (
      I0 => \m_s0_reg[4]\,
      I1 => \uo[4]_i_3_n_0\,
      I2 => \uo[4]_i_4_n_0\,
      I3 => \uo[4]_i_5_n_0\,
      I4 => \uo[4]_i_6_n_0\,
      I5 => \uo[4]_i_7_n_0\,
      O => \uio_r_reg[6]\(4)
    );
\uo[4]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002001"
    )
        port map (
      I0 => \uo[7]_i_17_n_0\,
      I1 => \m_sec[7]_i_4_n_0\,
      I2 => n(2),
      I3 => \uo[7]_i_18_n_0\,
      I4 => \rin_s[7]_i_4_n_0\,
      O => \uo[4]_i_10_n_0\
    );
\uo[4]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEF22222220"
    )
        port map (
      I0 => \m_sec_reg[7]\(4),
      I1 => \uo[5]_i_11_0\(0),
      I2 => pos(2),
      I3 => pos(1),
      I4 => pos(0),
      I5 => \uo[7]_i_10_1\(4),
      O => \uo[4]_i_11_n_0\
    );
\uo[4]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBF88888880"
    )
        port map (
      I0 => \m_sec_reg[7]\(4),
      I1 => \m_sec_reg[7]\(7),
      I2 => pos(2),
      I3 => pos(1),
      I4 => pos(0),
      I5 => s0(4),
      O => \uo[4]_i_12_n_0\
    );
\uo[4]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8F8F8F88888888"
    )
        port map (
      I0 => \dn_edge[6]_i_3_n_0\,
      I1 => \uo[6]_i_5_0\(4),
      I2 => \^pos_reg[0]_0\,
      I3 => \uo[7]_i_13_n_0\,
      I4 => \uo[4]_i_8_n_0\,
      I5 => \uo[7]_i_7_n_0\,
      O => \uo[4]_i_14_n_0\
    );
\uo[4]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEAAAAA"
    )
        port map (
      I0 => \m_s0[6]_i_2_n_0\,
      I1 => \m_sec_reg[7]\(4),
      I2 => \uo[7]_i_22_n_0\,
      I3 => s2(4),
      I4 => \m_s2[6]_i_2_n_0\,
      O => \uio_r_reg[4]\
    );
\uo[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D555D555D555DDD"
    )
        port map (
      I0 => \uo[7]_i_8_n_0\,
      I1 => \uo[7]_i_7_n_0\,
      I2 => \uo[4]_i_8_n_0\,
      I3 => \uo[7]_i_13_n_0\,
      I4 => \^pos_reg[0]_0\,
      I5 => \uo[4]_i_9_n_0\,
      O => \uo[4]_i_3_n_0\
    );
\uo[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEEF"
    )
        port map (
      I0 => \dn_edge[6]_i_3_n_0\,
      I1 => \uo[7]_i_12_n_0\,
      I2 => \rin_s[7]_i_3_n_0\,
      I3 => \m_sec_reg[7]_0\(11),
      O => \uo[4]_i_4_n_0\
    );
\uo[4]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \uo[4]_i_10_n_0\,
      I1 => \rec_in[14]_i_2_n_0\,
      I2 => \m_sec_reg[7]_0\(4),
      O => \uo[4]_i_5_n_0\
    );
\uo[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000550544444444"
    )
        port map (
      I0 => \rec_in[14]_i_2_n_0\,
      I1 => \uo[4]_i_11_n_0\,
      I2 => \m_s0[6]_i_2_n_0\,
      I3 => \uo[4]_i_12_n_0\,
      I4 => \m_s0_reg[4]_0\,
      I5 => \m_sec[7]_i_2_n_0\,
      O => \uo[4]_i_6_n_0\
    );
\uo[4]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB800"
    )
        port map (
      I0 => \m_sec_reg[7]\(4),
      I1 => \uo[7]_i_11_n_0\,
      I2 => \uo[6]_i_5_1\(4),
      I3 => \uo[7]_i_12_n_0\,
      I4 => \uo[4]_i_14_n_0\,
      O => \uo[4]_i_7_n_0\
    );
\uo[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF80BF8FBF80B080"
    )
        port map (
      I0 => pos(0),
      I1 => \m_sec_reg[7]_2\,
      I2 => \^pos_reg[0]_0\,
      I3 => \m_sec_reg[7]\(4),
      I4 => \^pos_reg[2]_1\,
      I5 => lmin(1),
      O => \uo[4]_i_8_n_0\
    );
\uo[4]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEF22222220"
    )
        port map (
      I0 => \m_sec_reg[7]\(4),
      I1 => own_wins_reg(0),
      I2 => pos(2),
      I3 => pos(1),
      I4 => pos(0),
      I5 => best_s(4),
      O => \uo[4]_i_9_n_0\
    );
\uo[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBFBBAAAAAAAA"
    )
        port map (
      I0 => \m_s0_reg[5]\,
      I1 => \uo[5]_i_3_n_0\,
      I2 => \uo[5]_i_4_n_0\,
      I3 => \uo[5]_i_5_n_0\,
      I4 => \uo[5]_i_6_n_0\,
      I5 => \uo[7]_i_8_n_0\,
      O => \uio_r_reg[6]\(5)
    );
\uo[5]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF808080"
    )
        port map (
      I0 => \^uc_reg[4]_0\,
      I1 => \uo[6]_i_8_0\(2),
      I2 => \^pos_reg[0]_1\,
      I3 => \m_s2[6]_i_2_n_0\,
      I4 => \uo[5]_i_14_n_0\,
      I5 => \uo[5]_i_15_n_0\,
      O => \uo[5]_i_10_n_0\
    );
\uo[5]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A80"
    )
        port map (
      I0 => \uo[3]_i_12_n_0\,
      I1 => \m_sec_reg[7]\(5),
      I2 => \uo[5]_i_16_n_0\,
      I3 => \uo[7]_i_10_1\(5),
      O => \uo[5]_i_11_n_0\
    );
\uo[5]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200200000"
    )
        port map (
      I0 => \m_s2[6]_i_3_n_0\,
      I1 => \uo[5]_i_17_n_0\,
      I2 => \uo[7]_i_27_n_0\,
      I3 => \uo[7]_i_26_n_0\,
      I4 => \uo[5]_i_18_n_0\,
      I5 => \uo[7]_i_17_n_0\,
      O => \^uc_reg[4]_0\
    );
\uo[5]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \m_s2[6]_i_2_n_0\,
      I1 => \uo[7]_i_41_n_0\,
      O => \^pos_reg[0]_1\
    );
\uo[5]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBF88888880"
    )
        port map (
      I0 => \m_sec_reg[7]\(5),
      I1 => \m_sec_reg[7]\(7),
      I2 => pos(2),
      I3 => pos(1),
      I4 => pos(0),
      I5 => s2(5),
      O => \uo[5]_i_14_n_0\
    );
\uo[5]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \uo[7]_i_21_n_0\,
      I1 => s0(5),
      I2 => \uo[7]_i_22_n_0\,
      I3 => \m_sec_reg[7]\(5),
      O => \uo[5]_i_15_n_0\
    );
\uo[5]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5554"
    )
        port map (
      I0 => \uo[5]_i_11_0\(0),
      I1 => pos(2),
      I2 => pos(1),
      I3 => pos(0),
      O => \uo[5]_i_16_n_0\
    );
\uo[5]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEBD7FF7DFFFFEB"
    )
        port map (
      I0 => \uo[7]_i_13_n_0\,
      I1 => \uo[7]_i_18_n_0\,
      I2 => n(2),
      I3 => n(0),
      I4 => n(1),
      I5 => \^pos_reg[0]_0\,
      O => \uo[5]_i_17_n_0\
    );
\uo[5]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => n(2),
      I1 => n(1),
      I2 => n(0),
      O => \uo[5]_i_18_n_0\
    );
\uo[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D7FFD7FF5555D7FF"
    )
        port map (
      I0 => \uo[7]_i_7_n_0\,
      I1 => pos(0),
      I2 => \^uc_reg[3]_0\(0),
      I3 => \uo[5]_i_8_n_0\,
      I4 => \uo[5]_i_9_n_0\,
      I5 => \^pos_reg[0]_0\,
      O => \uo[5]_i_3_n_0\
    );
\uo[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA00022202"
    )
        port map (
      I0 => \uo[7]_i_7_n_0\,
      I1 => \^pos_reg[0]_0\,
      I2 => best_s(5),
      I3 => \uo[7]_i_15_n_0\,
      I4 => \m_sec_reg[7]\(5),
      I5 => \uo[7]_i_13_n_0\,
      O => \uo[5]_i_4_n_0\
    );
\uo[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8FFFFFFF8FFF8"
    )
        port map (
      I0 => \m_sec_reg[7]_0\(5),
      I1 => \rec_in[14]_i_2_n_0\,
      I2 => \uo[5]_i_10_n_0\,
      I3 => \uo[5]_i_11_n_0\,
      I4 => \uo[6]_i_7_n_0\,
      I5 => \m_sec_reg[7]_0\(12),
      O => \uo[5]_i_5_n_0\
    );
\uo[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB800B800B800"
    )
        port map (
      I0 => \m_sec_reg[7]\(5),
      I1 => \uo[7]_i_11_n_0\,
      I2 => \uo[6]_i_5_1\(5),
      I3 => \uo[7]_i_12_n_0\,
      I4 => \dn_edge[6]_i_3_n_0\,
      I5 => \uo[6]_i_5_0\(5),
      O => \uo[5]_i_6_n_0\
    );
\uo[5]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF80BF8FBF80B080"
    )
        port map (
      I0 => pos(1),
      I1 => \m_sec_reg[7]_2\,
      I2 => \^pos_reg[0]_0\,
      I3 => \m_sec_reg[7]\(5),
      I4 => \^pos_reg[2]_1\,
      I5 => lmin(2),
      O => \uo[5]_i_8_n_0\
    );
\uo[5]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999990999000"
    )
        port map (
      I0 => pos(0),
      I1 => \^uc_reg[3]_0\(0),
      I2 => \m_sec_reg[7]\(5),
      I3 => \uo[7]_i_15_n_0\,
      I4 => best_s(5),
      I5 => \^pos_reg[0]_0\,
      O => \uo[5]_i_9_n_0\
    );
\uo[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFEAEAAAAAAAAA"
    )
        port map (
      I0 => \m_s0_reg[6]\,
      I1 => \uo[6]_i_3_n_0\,
      I2 => \uo[7]_i_7_n_0\,
      I3 => \uo[6]_i_4_n_0\,
      I4 => \uo[6]_i_5_n_0\,
      I5 => \uo[7]_i_8_n_0\,
      O => \uio_r_reg[6]\(6)
    );
\uo[6]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5554"
    )
        port map (
      I0 => \uo[1]_i_8\(0),
      I1 => pos(2),
      I2 => pos(1),
      I3 => pos(0),
      O => \^pos_reg[2]_1\
    );
\uo[6]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => \m_sec[7]_i_4_n_0\,
      I1 => \uo[7]_i_17_n_0\,
      I2 => n(2),
      O => \uo[6]_i_11_n_0\
    );
\uo[6]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F888888"
    )
        port map (
      I0 => \uo[6]_i_14_n_0\,
      I1 => \m_s2[6]_i_2_n_0\,
      I2 => \uo[7]_i_41_n_0\,
      I3 => \uo[6]_i_8_0\(3),
      I4 => \^uc_reg[4]_0\,
      O => \uo[6]_i_12_n_0\
    );
\uo[6]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A80"
    )
        port map (
      I0 => \uo[3]_i_12_n_0\,
      I1 => \m_sec_reg[7]\(6),
      I2 => \uo[5]_i_16_n_0\,
      I3 => \uo[7]_i_10_1\(6),
      O => \uo[6]_i_13_n_0\
    );
\uo[6]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBF88888880"
    )
        port map (
      I0 => \m_sec_reg[7]\(6),
      I1 => \m_sec_reg[7]\(7),
      I2 => pos(2),
      I3 => pos(1),
      I4 => pos(0),
      I5 => s2(6),
      O => \uo[6]_i_14_n_0\
    );
\uo[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000000B800B8"
    )
        port map (
      I0 => \m_sec_reg[7]\(6),
      I1 => \uo[7]_i_15_n_0\,
      I2 => best_s(6),
      I3 => \^pos_reg[0]_0\,
      I4 => \uo[6]_i_6_n_0\,
      I5 => \uo[7]_i_13_n_0\,
      O => \uo[6]_i_3_n_0\
    );
\uo[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999990999000"
    )
        port map (
      I0 => pos(0),
      I1 => \^uc_reg[3]_0\(0),
      I2 => \m_sec_reg[7]\(6),
      I3 => \uo[7]_i_15_n_0\,
      I4 => best_s(6),
      I5 => \^pos_reg[0]_0\,
      O => \uo[6]_i_4_n_0\
    );
\uo[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF222"
    )
        port map (
      I0 => \m_sec_reg[7]_0\(13),
      I1 => \uo[6]_i_7_n_0\,
      I2 => \rec_in[14]_i_2_n_0\,
      I3 => \m_sec_reg[7]_0\(6),
      I4 => \uo[6]_i_8_n_0\,
      I5 => \uo[6]_i_9_n_0\,
      O => \uo[6]_i_5_n_0\
    );
\uo[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF80BF8FBF80B080"
    )
        port map (
      I0 => pos(2),
      I1 => \m_sec_reg[7]_2\,
      I2 => \^pos_reg[0]_0\,
      I3 => \m_sec_reg[7]\(6),
      I4 => \^pos_reg[2]_1\,
      I5 => lmin(3),
      O => \uo[6]_i_6_n_0\
    );
\uo[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FF7FFFFFFFFFFFF"
    )
        port map (
      I0 => \m_s2[6]_i_4_n_0\,
      I1 => \m_s2[6]_i_6_n_0\,
      I2 => n(1),
      I3 => \^pos_reg[0]_0\,
      I4 => \uo[6]_i_11_n_0\,
      I5 => \m_s2[6]_i_3_n_0\,
      O => \uo[6]_i_7_n_0\
    );
\uo[6]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFA808"
    )
        port map (
      I0 => \uo[7]_i_21_n_0\,
      I1 => s0(6),
      I2 => \uo[7]_i_22_n_0\,
      I3 => \m_sec_reg[7]\(6),
      I4 => \uo[6]_i_12_n_0\,
      I5 => \uo[6]_i_13_n_0\,
      O => \uo[6]_i_8_n_0\
    );
\uo[6]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB800B800B800"
    )
        port map (
      I0 => \m_sec_reg[7]\(6),
      I1 => \uo[7]_i_11_n_0\,
      I2 => \uo[6]_i_5_1\(6),
      I3 => \uo[7]_i_12_n_0\,
      I4 => \dn_edge[6]_i_3_n_0\,
      I5 => \uo[6]_i_5_0\(6),
      O => \uo[6]_i_9_n_0\
    );
\uo[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rec_in_reg[6]\(0),
      O => \^sr\(1)
    );
\uo[7]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000570057005700"
    )
        port map (
      I0 => \uo[7]_i_21_n_0\,
      I1 => \uo[7]_i_22_n_0\,
      I2 => s0(7),
      I3 => \uo[7]_i_23_n_0\,
      I4 => \uo[3]_i_12_n_0\,
      I5 => \uo[7]_i_24_n_0\,
      O => \uo[7]_i_10_n_0\
    );
\uo[7]_i_106\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"993F66C099C066C0"
    )
        port map (
      I0 => \^uq\(1),
      I1 => \^uq\(2),
      I2 => \uo[7]_i_100\(1),
      I3 => \uo[7]_i_100\(2),
      I4 => \^uq\(3),
      I5 => \uo[7]_i_100\(0),
      O => \uq_reg[1]_0\
    );
\uo[7]_i_109\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05CFC5FF"
    )
        port map (
      I0 => \uo[7]_i_100\(1),
      I1 => \^uq\(2),
      I2 => \uo[7]_i_100\(2),
      I3 => \^uq\(3),
      I4 => \^uq\(0),
      O => \uo[7]_i_109_n_0\
    );
\uo[7]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFEEFEFFFFFFFF"
    )
        port map (
      I0 => \uo[7]_i_25_n_0\,
      I1 => \m_sec[7]_i_4_n_0\,
      I2 => pos(2),
      I3 => \up_edge[6]_i_2_n_0\,
      I4 => \uo[7]_i_17_n_0\,
      I5 => \m_s2[6]_i_3_n_0\,
      O => \uo[7]_i_11_n_0\
    );
\uo[7]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000004040400"
    )
        port map (
      I0 => \uo[7]_i_26_n_0\,
      I1 => \m_s2[6]_i_3_n_0\,
      I2 => \uo[7]_i_27_n_0\,
      I3 => \uo[7]_i_28_n_0\,
      I4 => \uo[7]_i_29_n_0\,
      I5 => \uo[7]_i_17_n_0\,
      O => \uo[7]_i_12_n_0\
    );
\uo[7]_i_125\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"87B7"
    )
        port map (
      I0 => \^uq\(0),
      I1 => \uo[7]_i_100\(2),
      I2 => \^uq\(1),
      I3 => \uo[7]_i_100\(1),
      O => \uq_reg[0]_0\
    );
\uo[7]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^uc_reg[3]_0\(0),
      I1 => pos(0),
      O => \uo[7]_i_13_n_0\
    );
\uo[7]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => pos(0),
      I1 => \^uc_reg[3]_0\(0),
      I2 => pos(1),
      I3 => \^uc_reg[3]_0\(1),
      O => \^pos_reg[0]_0\
    );
\uo[7]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5554"
    )
        port map (
      I0 => own_wins_reg(0),
      I1 => pos(2),
      I2 => pos(1),
      I3 => pos(0),
      O => \uo[7]_i_15_n_0\
    );
\uo[7]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000071FF0071"
    )
        port map (
      I0 => \^uc_reg[3]_0\(1),
      I1 => \uo[7]_i_30_n_0\,
      I2 => pos(1),
      I3 => \^uc_reg[3]_0\(2),
      I4 => pos(2),
      I5 => \^uc_reg[3]_0\(3),
      O => \uo[7]_i_16_n_0\
    );
\uo[7]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A9A599A599A5959"
    )
        port map (
      I0 => \^uc_reg[3]_0\(3),
      I1 => \^uc_reg[3]_0\(2),
      I2 => pos(2),
      I3 => pos(1),
      I4 => \uo[7]_i_30_n_0\,
      I5 => \^uc_reg[3]_0\(1),
      O => \uo[7]_i_17_n_0\
    );
\uo[7]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D04A2FBA2FB5D04"
    )
        port map (
      I0 => pos(1),
      I1 => \^uc_reg[3]_0\(0),
      I2 => pos(0),
      I3 => \^uc_reg[3]_0\(1),
      I4 => pos(2),
      I5 => \^uc_reg[3]_0\(2),
      O => \uo[7]_i_18_n_0\
    );
\uo[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEFFAFAFAAAAAAAA"
    )
        port map (
      I0 => \m_sec_reg[7]_1\,
      I1 => \uo[7]_i_4_n_0\,
      I2 => \uo[7]_i_5_n_0\,
      I3 => \uo[7]_i_6_n_0\,
      I4 => \uo[7]_i_7_n_0\,
      I5 => \uo[7]_i_8_n_0\,
      O => \uio_r_reg[6]\(7)
    );
\uo[7]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEAEAEEEAE"
    )
        port map (
      I0 => uc(5),
      I1 => uc(4),
      I2 => \uo[7]_i_38_n_0\,
      I3 => \^uc_reg[3]_0\(2),
      I4 => pos(2),
      I5 => \^uc_reg[3]_0\(3),
      O => \uo[7]_i_20_n_0\
    );
\uo[7]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008200"
    )
        port map (
      I0 => \m_s2[6]_i_3_n_0\,
      I1 => \uo[7]_i_13_n_0\,
      I2 => n(0),
      I3 => \m_s0[6]_i_4_n_0\,
      I4 => \uo[7]_i_39_n_0\,
      I5 => \uo[7]_i_40_n_0\,
      O => \uo[7]_i_21_n_0\
    );
\uo[7]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => \m_sec_reg[7]\(7),
      I1 => pos(2),
      I2 => pos(1),
      I3 => pos(0),
      O => \uo[7]_i_22_n_0\
    );
\uo[7]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5700575757575757"
    )
        port map (
      I0 => \m_s2[6]_i_2_n_0\,
      I1 => s2(7),
      I2 => \uo[7]_i_22_n_0\,
      I3 => \uo[7]_i_41_n_0\,
      I4 => \uo[7]_i_10_0\(0),
      I5 => \^uc_reg[4]_0\,
      O => \uo[7]_i_23_n_0\
    );
\uo[7]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEF22222220"
    )
        port map (
      I0 => \m_sec_reg[7]\(7),
      I1 => \uo[5]_i_11_0\(0),
      I2 => pos(2),
      I3 => pos(1),
      I4 => pos(0),
      I5 => \uo[7]_i_10_1\(7),
      O => \uo[7]_i_24_n_0\
    );
\uo[7]_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBF7FEFD"
    )
        port map (
      I0 => \^uc_reg[3]_0\(2),
      I1 => \^uc_reg[3]_0\(1),
      I2 => \^uc_reg[3]_0\(0),
      I3 => pos(1),
      I4 => pos(0),
      O => \uo[7]_i_25_n_0\
    );
\uo[7]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999959599959"
    )
        port map (
      I0 => uc(5),
      I1 => uc(4),
      I2 => \uo[7]_i_38_n_0\,
      I3 => \^uc_reg[3]_0\(2),
      I4 => pos(2),
      I5 => \^uc_reg[3]_0\(3),
      O => \uo[7]_i_26_n_0\
    );
\uo[7]_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65665555"
    )
        port map (
      I0 => uc(4),
      I1 => \^uc_reg[3]_0\(3),
      I2 => pos(2),
      I3 => \^uc_reg[3]_0\(2),
      I4 => \uo[7]_i_38_n_0\,
      O => \uo[7]_i_27_n_0\
    );
\uo[7]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F2F0FFB030200B0"
    )
        port map (
      I0 => \uo[7]_i_13_n_0\,
      I1 => \^pos_reg[0]_0\,
      I2 => n(2),
      I3 => n(0),
      I4 => n(1),
      I5 => \uo[7]_i_18_n_0\,
      O => \uo[7]_i_28_n_0\
    );
\uo[7]_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => n(2),
      I1 => n(0),
      I2 => n(1),
      O => \uo[7]_i_29_n_0\
    );
\uo[7]_i_30\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^uc_reg[3]_0\(0),
      I1 => pos(0),
      O => \uo[7]_i_30_n_0\
    );
\uo[7]_i_31\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => n(2),
      I1 => n(1),
      I2 => \m_sec[7]_i_4_n_0\,
      O => \uo[7]_i_31_n_0\
    );
\uo[7]_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0BB3"
    )
        port map (
      I0 => \uo[7]_i_18_n_0\,
      I1 => \uo[7]_i_17_n_0\,
      I2 => n(1),
      I3 => n(2),
      O => \uo[7]_i_32_n_0\
    );
\uo[7]_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"147DD71414144114"
    )
        port map (
      I0 => n(1),
      I1 => \^uc_reg[3]_0\(1),
      I2 => pos(1),
      I3 => \^uc_reg[3]_0\(0),
      I4 => pos(0),
      I5 => n(0),
      O => \uo[7]_i_33_n_0\
    );
\uo[7]_i_34\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0BF4"
    )
        port map (
      I0 => \uo[7]_i_16_n_0\,
      I1 => uc(4),
      I2 => uc(5),
      I3 => uc(6),
      O => \uo[7]_i_34_n_0\
    );
\uo[7]_i_35\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80780700"
    )
        port map (
      I0 => n(1),
      I1 => n(2),
      I2 => \uo[7]_i_16_n_0\,
      I3 => uc(4),
      I4 => uc(5),
      O => \uo[7]_i_35_n_0\
    );
\uo[7]_i_36\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1680"
    )
        port map (
      I0 => \uo[7]_i_18_n_0\,
      I1 => n(1),
      I2 => n(2),
      I3 => \uo[7]_i_17_n_0\,
      O => \uo[7]_i_36_n_0\
    );
\uo[7]_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6900006900699600"
    )
        port map (
      I0 => pos(1),
      I1 => \^uc_reg[3]_0\(1),
      I2 => n(1),
      I3 => \^uc_reg[3]_0\(0),
      I4 => pos(0),
      I5 => n(0),
      O => \uo[7]_i_37_n_0\
    );
\uo[7]_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2FBFFFFA2FBA2FB"
    )
        port map (
      I0 => pos(1),
      I1 => \^uc_reg[3]_0\(0),
      I2 => pos(0),
      I3 => \^uc_reg[3]_0\(1),
      I4 => \^uc_reg[3]_0\(2),
      I5 => pos(2),
      O => \uo[7]_i_38_n_0\
    );
\uo[7]_i_39\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A956"
    )
        port map (
      I0 => \uo[7]_i_18_n_0\,
      I1 => n(1),
      I2 => n(0),
      I3 => n(2),
      O => \uo[7]_i_39_n_0\
    );
\uo[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009900999699009"
    )
        port map (
      I0 => \^uc_reg[3]_0\(1),
      I1 => pos(1),
      I2 => \^uc_reg[3]_0\(0),
      I3 => pos(0),
      I4 => \m_sec_reg[7]\(7),
      I5 => \m_sec_reg[7]_2\,
      O => \uo[7]_i_4_n_0\
    );
\uo[7]_i_40\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABFFFE"
    )
        port map (
      I0 => \m_sec[7]_i_4_n_0\,
      I1 => n(2),
      I2 => n(1),
      I3 => n(0),
      I4 => \uo[7]_i_17_n_0\,
      O => \uo[7]_i_40_n_0\
    );
\uo[7]_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BDEFFFF7FFF7BDEF"
    )
        port map (
      I0 => pos(0),
      I1 => pos(1),
      I2 => n(0),
      I3 => n(1),
      I4 => pos(2),
      I5 => n(2),
      O => \uo[7]_i_41_n_0\
    );
\uo[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00D0D0D0D0D0D0D0"
    )
        port map (
      I0 => \m_sec_reg[7]_0\(14),
      I1 => \rin_s[7]_i_3_n_0\,
      I2 => \uo[7]_i_10_n_0\,
      I3 => \m_sec_reg[7]\(7),
      I4 => \uo[7]_i_11_n_0\,
      I5 => \uo[7]_i_12_n_0\,
      O => \uo[7]_i_5_n_0\
    );
\uo[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BCBCBCBFFFFFFCFF"
    )
        port map (
      I0 => \m_sec_reg[7]_2\,
      I1 => \uo[7]_i_13_n_0\,
      I2 => \^pos_reg[0]_0\,
      I3 => best_s(7),
      I4 => \uo[7]_i_15_n_0\,
      I5 => \m_sec_reg[7]\(7),
      O => \uo[7]_i_6_n_0\
    );
\uo[7]_i_65\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9F"
    )
        port map (
      I0 => \^uq\(2),
      I1 => \^uq\(3),
      I2 => \uo[7]_i_100\(2),
      O => \uq_reg[2]_0\(0)
    );
\uo[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000012000000000"
    )
        port map (
      I0 => uc(5),
      I1 => uc(6),
      I2 => \uo[7]_i_16_n_0\,
      I3 => uc(4),
      I4 => \uo[7]_i_17_n_0\,
      I5 => \uo[7]_i_18_n_0\,
      O => \uo[7]_i_7_n_0\
    );
\uo[7]_i_74\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^uq\(2),
      I1 => \uo[7]_i_100\(2),
      O => \uq_reg[2]_1\(0)
    );
\uo[7]_i_78\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8A51510FFF0FFF"
    )
        port map (
      I0 => \^uq\(1),
      I1 => \^uq\(0),
      I2 => \^uq\(3),
      I3 => \uo[7]_i_100\(1),
      I4 => \^uq\(2),
      I5 => \uo[7]_i_100\(2),
      O => S(1)
    );
\uo[7]_i_79\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69966666"
    )
        port map (
      I0 => \uo_reg[7]_i_60\(0),
      I1 => \uo[7]_i_109_n_0\,
      I2 => \^uq\(1),
      I3 => \^uq\(3),
      I4 => \uo[7]_i_100\(2),
      O => S(0)
    );
\uo[7]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88800000"
    )
        port map (
      I0 => \^run\,
      I1 => \u_up/up_on0\,
      I2 => \uo[7]_i_20_n_0\,
      I3 => uc(6),
      I4 => act,
      O => \uo[7]_i_8_n_0\
    );
\uo_reg[7]_i_19\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \u_up/up_on0\,
      CO(2) => \uo_reg[7]_i_19_n_1\,
      CO(1) => \uo_reg[7]_i_19_n_2\,
      CO(0) => \uo_reg[7]_i_19_n_3\,
      CYINIT => '1',
      DI(3) => '0',
      DI(2) => \uo[7]_i_31_n_0\,
      DI(1) => \uo[7]_i_32_n_0\,
      DI(0) => \uo[7]_i_33_n_0\,
      O(3 downto 0) => \NLW_uo_reg[7]_i_19_O_UNCONNECTED\(3 downto 0),
      S(3) => \uo[7]_i_34_n_0\,
      S(2) => \uo[7]_i_35_n_0\,
      S(1) => \uo[7]_i_36_n_0\,
      S(0) => \uo[7]_i_37_n_0\
    );
\up_edge[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9060000000000000"
    )
        port map (
      I0 => \up_edge[6]_i_2_n_0\,
      I1 => pos(2),
      I2 => \up_edge[6]_i_3_n_0\,
      I3 => ph(2),
      I4 => \up_edge[6]_i_4_n_0\,
      I5 => \up_edge[6]_i_5_n_0\,
      O => \up_edge[6]_i_1_n_0\
    );
\up_edge[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pos(1),
      I1 => pos(0),
      O => \up_edge[6]_i_2_n_0\
    );
\up_edge[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => ph(4),
      I1 => ph(5),
      I2 => ph(6),
      O => \up_edge[6]_i_3_n_0\
    );
\up_edge[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4100000A00824100"
    )
        port map (
      I0 => ph(0),
      I1 => pos(2),
      I2 => ph(3),
      I3 => pos(0),
      I4 => pos(1),
      I5 => ph(1),
      O => \up_edge[6]_i_4_n_0\
    );
\up_edge[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000EF00000000"
    )
        port map (
      I0 => ph(1),
      I1 => ph(0),
      I2 => \ftype[2]_i_2_n_0\,
      I3 => ftype(2),
      I4 => ftype(1),
      I5 => ftype(0),
      O => \up_edge[6]_i_5_n_0\
    );
\up_edge_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \up_edge[6]_i_1_n_0\,
      D => \ui_r_reg_n_0_[0]\,
      Q => up_edge(0),
      R => '0'
    );
\up_edge_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \up_edge[6]_i_1_n_0\,
      D => \ui_r_reg_n_0_[1]\,
      Q => up_edge(1),
      R => '0'
    );
\up_edge_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \up_edge[6]_i_1_n_0\,
      D => \ui_r_reg_n_0_[2]\,
      Q => up_edge(2),
      R => '0'
    );
\up_edge_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \up_edge[6]_i_1_n_0\,
      D => \ui_r_reg_n_0_[3]\,
      Q => up_edge(3),
      R => '0'
    );
\up_edge_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \up_edge[6]_i_1_n_0\,
      D => p_0_in(0),
      Q => up_edge(4),
      R => '0'
    );
\up_edge_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \up_edge[6]_i_1_n_0\,
      D => p_0_in(1),
      Q => up_edge(5),
      R => '0'
    );
\up_edge_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \up_edge[6]_i_1_n_0\,
      D => p_0_in(2),
      Q => up_edge(6),
      R => '0'
    );
\uq[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => ftype(2),
      I1 => \ftype[2]_i_2_n_0\,
      I2 => ph(0),
      I3 => ph(1),
      I4 => ftype(1),
      I5 => ftype(0),
      O => \uq[3]_i_1_n_0\
    );
\uq_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \uq[3]_i_1_n_0\,
      D => \ui_r_reg_n_0_[0]\,
      Q => \^uq\(0),
      S => \^sr\(1)
    );
\uq_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \uq[3]_i_1_n_0\,
      D => \ui_r_reg_n_0_[1]\,
      Q => \^uq\(1),
      S => \^sr\(1)
    );
\uq_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \uq[3]_i_1_n_0\,
      D => \ui_r_reg_n_0_[2]\,
      Q => \^uq\(2),
      R => \^sr\(1)
    );
\uq_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \uq[3]_i_1_n_0\,
      D => \ui_r_reg_n_0_[3]\,
      Q => \^uq\(3),
      R => \^sr\(1)
    );
w_first_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^load\,
      D => sg_first,
      Q => w_first,
      R => \^sr\(1)
    );
w_real_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_4_in,
      I1 => sg_valid_reg_n_0,
      O => \^load\
    );
w_real_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2080208020808020"
    )
        port map (
      I0 => w_real_i_3_n_0,
      I1 => ph(2),
      I2 => \up_edge[6]_i_3_n_0\,
      I3 => n(2),
      I4 => n(0),
      I5 => n(1),
      O => p_4_in
    );
w_real_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9000009000903000"
    )
        port map (
      I0 => n(2),
      I1 => ph(3),
      I2 => w_real_i_4_n_0,
      I3 => ph(1),
      I4 => n(1),
      I5 => n(0),
      O => w_real_i_3_n_0
    );
w_real_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040400"
    )
        port map (
      I0 => ftype(2),
      I1 => ftype(0),
      I2 => ftype(1),
      I3 => ph(0),
      I4 => n(0),
      O => w_real_i_4_n_0
    );
w_real_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^load\,
      D => sg_real,
      Q => \^w_real\,
      R => \^sr\(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_slice_1_0_ms_path is
  port (
    lmin : out STD_LOGIC_VECTOR ( 6 downto 0 );
    best_s : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S : out STD_LOGIC_VECTOR ( 2 downto 0 );
    a : out STD_LOGIC_VECTOR ( 6 downto 0 );
    clk_0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    clk_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \lmin_reg[6]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \best_s_reg[6]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \best_j_reg[3]_0\ : out STD_LOGIC;
    \best_j_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \best_j_reg[2]_0\ : out STD_LOGIC;
    \best_j_reg[1]_0\ : out STD_LOGIC;
    \best_s_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \lmin_reg[6]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \l_bot_reg[6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \l_top_reg[6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    l_up0 : out STD_LOGIC_VECTOR ( 6 downto 0 );
    carry_l : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \lmin_reg[6]_2\ : in STD_LOGIC;
    \lmin_reg[6]_3\ : in STD_LOGIC;
    \lmin_reg[6]_4\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \lmin_reg[5]_0\ : in STD_LOGIC;
    \lmin_reg[4]_0\ : in STD_LOGIC;
    \lmin_reg[3]_0\ : in STD_LOGIC;
    \lmin_reg[2]_0\ : in STD_LOGIC;
    \lmin_reg[1]_0\ : in STD_LOGIC;
    \lmin_reg[0]_0\ : in STD_LOGIC;
    \best_s_reg[6]_1\ : in STD_LOGIC;
    \best_s_reg[6]_2\ : in STD_LOGIC;
    \best_s_reg[6]_3\ : in STD_LOGIC;
    \best_s_reg[5]_0\ : in STD_LOGIC;
    \best_s_reg[4]_0\ : in STD_LOGIC;
    \best_s_reg[3]_0\ : in STD_LOGIC;
    \best_s_reg[2]_0\ : in STD_LOGIC;
    \best_s_reg[1]_0\ : in STD_LOGIC;
    \best_s_reg[0]_0\ : in STD_LOGIC;
    \best_s_reg[7]_1\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \l_bot_reg[6]_i_15\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \l_bot[3]_i_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    l_new : in STD_LOGIC_VECTOR ( 6 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 0 to 0 );
    \lmin_reg[6]_5\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \uo[1]_i_2\ : in STD_LOGIC;
    \uo[1]_i_2_0\ : in STD_LOGIC;
    own_wins_reg_i_2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \uo[1]_i_2_1\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \l_top_reg[6]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \best_j_reg[3]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    p_1_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    scan : in STD_LOGIC;
    \carry_l_reg[6]_0\ : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_slice_1_0_ms_path : entity is "ms_path";
end system_slice_1_0_ms_path;

architecture STRUCTURE of system_slice_1_0_ms_path is
  signal \^a\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal best_j : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \best_j[3]_i_10_n_0\ : STD_LOGIC;
  signal \best_j[3]_i_3_n_0\ : STD_LOGIC;
  signal \best_j[3]_i_4_n_0\ : STD_LOGIC;
  signal \best_j[3]_i_5_n_0\ : STD_LOGIC;
  signal \best_j[3]_i_6_n_0\ : STD_LOGIC;
  signal \best_j[3]_i_7_n_0\ : STD_LOGIC;
  signal \best_j[3]_i_8_n_0\ : STD_LOGIC;
  signal \best_j[3]_i_9_n_0\ : STD_LOGIC;
  signal \best_j_reg[3]_i_2_n_1\ : STD_LOGIC;
  signal \best_j_reg[3]_i_2_n_2\ : STD_LOGIC;
  signal \best_j_reg[3]_i_2_n_3\ : STD_LOGIC;
  signal \^best_s\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^lmin\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \lmin[6]_i_10_n_0\ : STD_LOGIC;
  signal \lmin[6]_i_11_n_0\ : STD_LOGIC;
  signal \lmin[6]_i_12_n_0\ : STD_LOGIC;
  signal \lmin[6]_i_6_n_0\ : STD_LOGIC;
  signal \lmin[6]_i_7_n_0\ : STD_LOGIC;
  signal \lmin[6]_i_8_n_0\ : STD_LOGIC;
  signal \lmin_reg[6]_i_4_n_1\ : STD_LOGIC;
  signal \lmin_reg[6]_i_4_n_2\ : STD_LOGIC;
  signal \lmin_reg[6]_i_4_n_3\ : STD_LOGIC;
  signal \NLW_best_j_reg[3]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_lmin_reg[6]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \best_j_reg[3]_i_2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \lmin_reg[6]_i_4\ : label is 11;
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of lr_reg_0_15_0_0 : label is 112;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of lr_reg_0_15_0_0 : label is "ms_path/lr_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of lr_reg_0_15_0_0 : label is "auto";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of lr_reg_0_15_0_0 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of lr_reg_0_15_0_0 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of lr_reg_0_15_0_0 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of lr_reg_0_15_0_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of lr_reg_0_15_0_0 : label is 15;
  attribute ram_offset : integer;
  attribute ram_offset of lr_reg_0_15_0_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of lr_reg_0_15_0_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of lr_reg_0_15_0_0 : label is 0;
  attribute RTL_RAM_BITS of lr_reg_0_15_1_1 : label is 112;
  attribute RTL_RAM_NAME of lr_reg_0_15_1_1 : label is "ms_path/lr_reg";
  attribute RTL_RAM_STYLE of lr_reg_0_15_1_1 : label is "auto";
  attribute RTL_RAM_TYPE of lr_reg_0_15_1_1 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of lr_reg_0_15_1_1 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of lr_reg_0_15_1_1 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of lr_reg_0_15_1_1 : label is 0;
  attribute ram_addr_end of lr_reg_0_15_1_1 : label is 15;
  attribute ram_offset of lr_reg_0_15_1_1 : label is 0;
  attribute ram_slice_begin of lr_reg_0_15_1_1 : label is 1;
  attribute ram_slice_end of lr_reg_0_15_1_1 : label is 1;
  attribute RTL_RAM_BITS of lr_reg_0_15_2_2 : label is 112;
  attribute RTL_RAM_NAME of lr_reg_0_15_2_2 : label is "ms_path/lr_reg";
  attribute RTL_RAM_STYLE of lr_reg_0_15_2_2 : label is "auto";
  attribute RTL_RAM_TYPE of lr_reg_0_15_2_2 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of lr_reg_0_15_2_2 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of lr_reg_0_15_2_2 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of lr_reg_0_15_2_2 : label is 0;
  attribute ram_addr_end of lr_reg_0_15_2_2 : label is 15;
  attribute ram_offset of lr_reg_0_15_2_2 : label is 0;
  attribute ram_slice_begin of lr_reg_0_15_2_2 : label is 2;
  attribute ram_slice_end of lr_reg_0_15_2_2 : label is 2;
  attribute RTL_RAM_BITS of lr_reg_0_15_3_3 : label is 112;
  attribute RTL_RAM_NAME of lr_reg_0_15_3_3 : label is "ms_path/lr_reg";
  attribute RTL_RAM_STYLE of lr_reg_0_15_3_3 : label is "auto";
  attribute RTL_RAM_TYPE of lr_reg_0_15_3_3 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of lr_reg_0_15_3_3 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of lr_reg_0_15_3_3 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of lr_reg_0_15_3_3 : label is 0;
  attribute ram_addr_end of lr_reg_0_15_3_3 : label is 15;
  attribute ram_offset of lr_reg_0_15_3_3 : label is 0;
  attribute ram_slice_begin of lr_reg_0_15_3_3 : label is 3;
  attribute ram_slice_end of lr_reg_0_15_3_3 : label is 3;
  attribute RTL_RAM_BITS of lr_reg_0_15_4_4 : label is 112;
  attribute RTL_RAM_NAME of lr_reg_0_15_4_4 : label is "ms_path/lr_reg";
  attribute RTL_RAM_STYLE of lr_reg_0_15_4_4 : label is "auto";
  attribute RTL_RAM_TYPE of lr_reg_0_15_4_4 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of lr_reg_0_15_4_4 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of lr_reg_0_15_4_4 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of lr_reg_0_15_4_4 : label is 0;
  attribute ram_addr_end of lr_reg_0_15_4_4 : label is 15;
  attribute ram_offset of lr_reg_0_15_4_4 : label is 0;
  attribute ram_slice_begin of lr_reg_0_15_4_4 : label is 4;
  attribute ram_slice_end of lr_reg_0_15_4_4 : label is 4;
  attribute RTL_RAM_BITS of lr_reg_0_15_5_5 : label is 112;
  attribute RTL_RAM_NAME of lr_reg_0_15_5_5 : label is "ms_path/lr_reg";
  attribute RTL_RAM_STYLE of lr_reg_0_15_5_5 : label is "auto";
  attribute RTL_RAM_TYPE of lr_reg_0_15_5_5 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of lr_reg_0_15_5_5 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of lr_reg_0_15_5_5 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of lr_reg_0_15_5_5 : label is 0;
  attribute ram_addr_end of lr_reg_0_15_5_5 : label is 15;
  attribute ram_offset of lr_reg_0_15_5_5 : label is 0;
  attribute ram_slice_begin of lr_reg_0_15_5_5 : label is 5;
  attribute ram_slice_end of lr_reg_0_15_5_5 : label is 5;
  attribute RTL_RAM_BITS of lr_reg_0_15_6_6 : label is 112;
  attribute RTL_RAM_NAME of lr_reg_0_15_6_6 : label is "ms_path/lr_reg";
  attribute RTL_RAM_STYLE of lr_reg_0_15_6_6 : label is "auto";
  attribute RTL_RAM_TYPE of lr_reg_0_15_6_6 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of lr_reg_0_15_6_6 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of lr_reg_0_15_6_6 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of lr_reg_0_15_6_6 : label is 0;
  attribute ram_addr_end of lr_reg_0_15_6_6 : label is 15;
  attribute ram_offset of lr_reg_0_15_6_6 : label is 0;
  attribute ram_slice_begin of lr_reg_0_15_6_6 : label is 6;
  attribute ram_slice_end of lr_reg_0_15_6_6 : label is 6;
begin
  a(6 downto 0) <= \^a\(6 downto 0);
  best_s(7 downto 0) <= \^best_s\(7 downto 0);
  lmin(6 downto 0) <= \^lmin\(6 downto 0);
\best_j[3]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^best_s\(0),
      I1 => l_new(0),
      I2 => l_new(1),
      I3 => \^best_s\(1),
      O => \best_j[3]_i_10_n_0\
    );
\best_j[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => l_new(6),
      I1 => \^best_s\(6),
      I2 => \^best_s\(7),
      O => \best_j[3]_i_3_n_0\
    );
\best_j[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^best_s\(5),
      I1 => l_new(5),
      I2 => \^best_s\(4),
      I3 => l_new(4),
      O => \best_j[3]_i_4_n_0\
    );
\best_j[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^best_s\(3),
      I1 => l_new(3),
      I2 => \^best_s\(2),
      I3 => l_new(2),
      O => \best_j[3]_i_5_n_0\
    );
\best_j[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^best_s\(1),
      I1 => l_new(1),
      I2 => \^best_s\(0),
      I3 => l_new(0),
      O => \best_j[3]_i_6_n_0\
    );
\best_j[3]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => l_new(6),
      I1 => \^best_s\(6),
      I2 => \^best_s\(7),
      O => \best_j[3]_i_7_n_0\
    );
\best_j[3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^best_s\(4),
      I1 => l_new(4),
      I2 => l_new(5),
      I3 => \^best_s\(5),
      O => \best_j[3]_i_8_n_0\
    );
\best_j[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^best_s\(2),
      I1 => l_new(2),
      I2 => l_new(3),
      I3 => \^best_s\(3),
      O => \best_j[3]_i_9_n_0\
    );
\best_j_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \best_j_reg[3]_1\(0),
      D => D(0),
      Q => \best_j_reg[0]_0\(0),
      R => '0'
    );
\best_j_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \best_j_reg[3]_1\(0),
      D => D(1),
      Q => best_j(1),
      R => '0'
    );
\best_j_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \best_j_reg[3]_1\(0),
      D => D(2),
      Q => best_j(2),
      R => '0'
    );
\best_j_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \best_j_reg[3]_1\(0),
      D => D(3),
      Q => best_j(3),
      R => '0'
    );
\best_j_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \best_s_reg[6]_0\(0),
      CO(2) => \best_j_reg[3]_i_2_n_1\,
      CO(1) => \best_j_reg[3]_i_2_n_2\,
      CO(0) => \best_j_reg[3]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \best_j[3]_i_3_n_0\,
      DI(2) => \best_j[3]_i_4_n_0\,
      DI(1) => \best_j[3]_i_5_n_0\,
      DI(0) => \best_j[3]_i_6_n_0\,
      O(3 downto 0) => \NLW_best_j_reg[3]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \best_j[3]_i_7_n_0\,
      S(2) => \best_j[3]_i_8_n_0\,
      S(1) => \best_j[3]_i_9_n_0\,
      S(0) => \best_j[3]_i_10_n_0\
    );
\best_s_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \best_s_reg[6]_2\,
      D => \best_s_reg[0]_0\,
      Q => \^best_s\(0),
      S => \best_s_reg[6]_1\
    );
\best_s_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \best_s_reg[6]_2\,
      D => \best_s_reg[1]_0\,
      Q => \^best_s\(1),
      S => \best_s_reg[6]_1\
    );
\best_s_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \best_s_reg[6]_2\,
      D => \best_s_reg[2]_0\,
      Q => \^best_s\(2),
      S => \best_s_reg[6]_1\
    );
\best_s_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \best_s_reg[6]_2\,
      D => \best_s_reg[3]_0\,
      Q => \^best_s\(3),
      S => \best_s_reg[6]_1\
    );
\best_s_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \best_s_reg[6]_2\,
      D => \best_s_reg[4]_0\,
      Q => \^best_s\(4),
      S => \best_s_reg[6]_1\
    );
\best_s_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \best_s_reg[6]_2\,
      D => \best_s_reg[5]_0\,
      Q => \^best_s\(5),
      S => \best_s_reg[6]_1\
    );
\best_s_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \best_s_reg[6]_2\,
      D => \best_s_reg[6]_3\,
      Q => \^best_s\(6),
      S => \best_s_reg[6]_1\
    );
\best_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \best_s_reg[7]_1\,
      Q => \^best_s\(7),
      R => '0'
    );
\carry_l_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => scan,
      D => \^a\(0),
      Q => carry_l(0),
      R => '0'
    );
\carry_l_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => scan,
      D => \^a\(1),
      Q => carry_l(1),
      R => '0'
    );
\carry_l_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => scan,
      D => \^a\(2),
      Q => carry_l(2),
      R => '0'
    );
\carry_l_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => scan,
      D => \^a\(3),
      Q => carry_l(3),
      R => '0'
    );
\carry_l_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => scan,
      D => \^a\(4),
      Q => carry_l(4),
      R => '0'
    );
\carry_l_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => scan,
      D => \^a\(5),
      Q => carry_l(5),
      R => '0'
    );
\carry_l_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => scan,
      D => \^a\(6),
      Q => carry_l(6),
      R => '0'
    );
\l_bot[3]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^a\(2),
      I1 => \l_bot[3]_i_3\(0),
      I2 => \l_bot_reg[6]_i_15\(2),
      O => clk_1(0)
    );
\l_bot[6]_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^a\(5),
      I1 => \l_bot_reg[6]_i_15\(5),
      I2 => \^a\(4),
      I3 => \l_bot_reg[6]_i_15\(4),
      O => clk_0(2)
    );
\l_bot[6]_i_34\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^a\(3),
      I1 => \l_bot_reg[6]_i_15\(3),
      I2 => \^a\(2),
      I3 => \l_bot_reg[6]_i_15\(2),
      O => clk_0(1)
    );
\l_bot[6]_i_35\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^a\(1),
      I1 => \l_bot_reg[6]_i_15\(1),
      I2 => \^a\(0),
      I3 => \l_bot_reg[6]_i_15\(0),
      O => clk_0(0)
    );
\l_bot_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => l_new(0),
      Q => \l_bot_reg[6]_0\(0),
      R => '0'
    );
\l_bot_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => l_new(1),
      Q => \l_bot_reg[6]_0\(1),
      R => '0'
    );
\l_bot_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => l_new(2),
      Q => \l_bot_reg[6]_0\(2),
      R => '0'
    );
\l_bot_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => l_new(3),
      Q => \l_bot_reg[6]_0\(3),
      R => '0'
    );
\l_bot_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => l_new(4),
      Q => \l_bot_reg[6]_0\(4),
      R => '0'
    );
\l_bot_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => l_new(5),
      Q => \l_bot_reg[6]_0\(5),
      R => '0'
    );
\l_bot_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => l_new(6),
      Q => \l_bot_reg[6]_0\(6),
      R => '0'
    );
\l_top_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \l_top_reg[6]_1\(0),
      D => l_new(0),
      Q => \l_top_reg[6]_0\(0),
      R => '0'
    );
\l_top_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \l_top_reg[6]_1\(0),
      D => l_new(1),
      Q => \l_top_reg[6]_0\(1),
      R => '0'
    );
\l_top_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \l_top_reg[6]_1\(0),
      D => l_new(2),
      Q => \l_top_reg[6]_0\(2),
      R => '0'
    );
\l_top_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \l_top_reg[6]_1\(0),
      D => l_new(3),
      Q => \l_top_reg[6]_0\(3),
      R => '0'
    );
\l_top_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \l_top_reg[6]_1\(0),
      D => l_new(4),
      Q => \l_top_reg[6]_0\(4),
      R => '0'
    );
\l_top_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \l_top_reg[6]_1\(0),
      D => l_new(5),
      Q => \l_top_reg[6]_0\(5),
      R => '0'
    );
\l_top_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \l_top_reg[6]_1\(0),
      D => l_new(6),
      Q => \l_top_reg[6]_0\(6),
      R => '0'
    );
\lmin[6]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^lmin\(4),
      I1 => l_new(4),
      I2 => l_new(5),
      I3 => \^lmin\(5),
      O => \lmin[6]_i_10_n_0\
    );
\lmin[6]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^lmin\(2),
      I1 => l_new(2),
      I2 => l_new(3),
      I3 => \^lmin\(3),
      O => \lmin[6]_i_11_n_0\
    );
\lmin[6]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^lmin\(0),
      I1 => l_new(0),
      I2 => l_new(1),
      I3 => \^lmin\(1),
      O => \lmin[6]_i_12_n_0\
    );
\lmin[6]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^lmin\(5),
      I1 => l_new(5),
      I2 => \^lmin\(4),
      I3 => l_new(4),
      O => \lmin[6]_i_6_n_0\
    );
\lmin[6]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^lmin\(3),
      I1 => l_new(3),
      I2 => \^lmin\(2),
      I3 => l_new(2),
      O => \lmin[6]_i_7_n_0\
    );
\lmin[6]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^lmin\(1),
      I1 => l_new(1),
      I2 => \^lmin\(0),
      I3 => l_new(0),
      O => \lmin[6]_i_8_n_0\
    );
\lmin_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \lmin_reg[6]_3\,
      D => \lmin_reg[0]_0\,
      Q => \^lmin\(0),
      S => \lmin_reg[6]_2\
    );
\lmin_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \lmin_reg[6]_3\,
      D => \lmin_reg[1]_0\,
      Q => \^lmin\(1),
      S => \lmin_reg[6]_2\
    );
\lmin_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \lmin_reg[6]_3\,
      D => \lmin_reg[2]_0\,
      Q => \^lmin\(2),
      S => \lmin_reg[6]_2\
    );
\lmin_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \lmin_reg[6]_3\,
      D => \lmin_reg[3]_0\,
      Q => \^lmin\(3),
      S => \lmin_reg[6]_2\
    );
\lmin_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \lmin_reg[6]_3\,
      D => \lmin_reg[4]_0\,
      Q => \^lmin\(4),
      S => \lmin_reg[6]_2\
    );
\lmin_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \lmin_reg[6]_3\,
      D => \lmin_reg[5]_0\,
      Q => \^lmin\(5),
      S => \lmin_reg[6]_2\
    );
\lmin_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \lmin_reg[6]_3\,
      D => \lmin_reg[6]_4\,
      Q => \^lmin\(6),
      S => \lmin_reg[6]_2\
    );
\lmin_reg[6]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \lmin_reg[6]_0\(0),
      CO(2) => \lmin_reg[6]_i_4_n_1\,
      CO(1) => \lmin_reg[6]_i_4_n_2\,
      CO(0) => \lmin_reg[6]_i_4_n_3\,
      CYINIT => '0',
      DI(3) => DI(0),
      DI(2) => \lmin[6]_i_6_n_0\,
      DI(1) => \lmin[6]_i_7_n_0\,
      DI(0) => \lmin[6]_i_8_n_0\,
      O(3 downto 0) => \NLW_lmin_reg[6]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \lmin_reg[6]_5\(0),
      S(2) => \lmin[6]_i_10_n_0\,
      S(1) => \lmin[6]_i_11_n_0\,
      S(0) => \lmin[6]_i_12_n_0\
    );
lr_reg_0_15_0_0: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => D(0),
      A1 => D(1),
      A2 => D(2),
      A3 => D(3),
      A4 => '0',
      D => p_1_in(0),
      DPO => l_up0(0),
      DPRA0 => \carry_l_reg[6]_0\,
      DPRA1 => p_0_in(0),
      DPRA2 => p_0_in(1),
      DPRA3 => p_0_in(2),
      DPRA4 => '0',
      SPO => \^a\(0),
      WCLK => clk,
      WE => scan
    );
lr_reg_0_15_1_1: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => D(0),
      A1 => D(1),
      A2 => D(2),
      A3 => D(3),
      A4 => '0',
      D => p_1_in(1),
      DPO => l_up0(1),
      DPRA0 => \carry_l_reg[6]_0\,
      DPRA1 => p_0_in(0),
      DPRA2 => p_0_in(1),
      DPRA3 => p_0_in(2),
      DPRA4 => '0',
      SPO => \^a\(1),
      WCLK => clk,
      WE => scan
    );
lr_reg_0_15_2_2: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => D(0),
      A1 => D(1),
      A2 => D(2),
      A3 => D(3),
      A4 => '0',
      D => p_1_in(2),
      DPO => l_up0(2),
      DPRA0 => \carry_l_reg[6]_0\,
      DPRA1 => p_0_in(0),
      DPRA2 => p_0_in(1),
      DPRA3 => p_0_in(2),
      DPRA4 => '0',
      SPO => \^a\(2),
      WCLK => clk,
      WE => scan
    );
lr_reg_0_15_3_3: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => D(0),
      A1 => D(1),
      A2 => D(2),
      A3 => D(3),
      A4 => '0',
      D => p_1_in(3),
      DPO => l_up0(3),
      DPRA0 => \carry_l_reg[6]_0\,
      DPRA1 => p_0_in(0),
      DPRA2 => p_0_in(1),
      DPRA3 => p_0_in(2),
      DPRA4 => '0',
      SPO => \^a\(3),
      WCLK => clk,
      WE => scan
    );
lr_reg_0_15_4_4: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => D(0),
      A1 => D(1),
      A2 => D(2),
      A3 => D(3),
      A4 => '0',
      D => p_1_in(4),
      DPO => l_up0(4),
      DPRA0 => \carry_l_reg[6]_0\,
      DPRA1 => p_0_in(0),
      DPRA2 => p_0_in(1),
      DPRA3 => p_0_in(2),
      DPRA4 => '0',
      SPO => \^a\(4),
      WCLK => clk,
      WE => scan
    );
lr_reg_0_15_5_5: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => D(0),
      A1 => D(1),
      A2 => D(2),
      A3 => D(3),
      A4 => '0',
      D => p_1_in(5),
      DPO => l_up0(5),
      DPRA0 => \carry_l_reg[6]_0\,
      DPRA1 => p_0_in(0),
      DPRA2 => p_0_in(1),
      DPRA3 => p_0_in(2),
      DPRA4 => '0',
      SPO => \^a\(5),
      WCLK => clk,
      WE => scan
    );
lr_reg_0_15_6_6: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => D(0),
      A1 => D(1),
      A2 => D(2),
      A3 => D(3),
      A4 => '0',
      D => p_1_in(6),
      DPO => l_up0(6),
      DPRA0 => \carry_l_reg[6]_0\,
      DPRA1 => p_0_in(0),
      DPRA2 => p_0_in(1),
      DPRA3 => p_0_in(2),
      DPRA4 => '0',
      SPO => \^a\(6),
      WCLK => clk,
      WE => scan
    );
own_wins_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^best_s\(1),
      I1 => own_wins_reg_i_2(1),
      I2 => \^best_s\(0),
      I3 => own_wins_reg_i_2(0),
      O => \best_s_reg[7]_0\(0)
    );
own_wins_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^best_s\(7),
      I1 => own_wins_reg_i_2(7),
      I2 => \^best_s\(6),
      I3 => own_wins_reg_i_2(6),
      O => \best_s_reg[7]_0\(3)
    );
own_wins_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^best_s\(5),
      I1 => own_wins_reg_i_2(5),
      I2 => \^best_s\(4),
      I3 => own_wins_reg_i_2(4),
      O => \best_s_reg[7]_0\(2)
    );
own_wins_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^best_s\(3),
      I1 => own_wins_reg_i_2(3),
      I2 => \^best_s\(2),
      I3 => own_wins_reg_i_2(2),
      O => \best_s_reg[7]_0\(1)
    );
\sec[7]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^a\(5),
      I1 => Q(5),
      I2 => \^a\(4),
      I3 => Q(4),
      O => S(2)
    );
\sec[7]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^a\(3),
      I1 => Q(3),
      I2 => \^a\(2),
      I3 => Q(2),
      O => S(1)
    );
\sec[7]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^a\(1),
      I1 => Q(1),
      I2 => \^a\(0),
      I3 => Q(0),
      O => S(0)
    );
\uo[0]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^lmin\(6),
      I1 => own_wins_reg_i_2(6),
      O => \lmin_reg[6]_1\(3)
    );
\uo[0]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^lmin\(5),
      I1 => own_wins_reg_i_2(5),
      I2 => \^lmin\(4),
      I3 => own_wins_reg_i_2(4),
      O => \lmin_reg[6]_1\(2)
    );
\uo[0]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^lmin\(3),
      I1 => own_wins_reg_i_2(3),
      I2 => \^lmin\(2),
      I3 => own_wins_reg_i_2(2),
      O => \lmin_reg[6]_1\(1)
    );
\uo[0]_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^lmin\(1),
      I1 => own_wins_reg_i_2(1),
      I2 => \^lmin\(0),
      I3 => own_wins_reg_i_2(0),
      O => \lmin_reg[6]_1\(0)
    );
\uo[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF80BF8FBF80B080"
    )
        port map (
      I0 => best_j(1),
      I1 => \uo[1]_i_2\,
      I2 => \uo[1]_i_2_0\,
      I3 => own_wins_reg_i_2(1),
      I4 => \uo[1]_i_2_1\,
      I5 => \^lmin\(1),
      O => \best_j_reg[1]_0\
    );
\uo[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF80BF8FBF80B080"
    )
        port map (
      I0 => best_j(2),
      I1 => \uo[1]_i_2\,
      I2 => \uo[1]_i_2_0\,
      I3 => own_wins_reg_i_2(2),
      I4 => \uo[1]_i_2_1\,
      I5 => \^lmin\(2),
      O => \best_j_reg[2]_0\
    );
\uo[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF80BF8FBF80B080"
    )
        port map (
      I0 => best_j(3),
      I1 => \uo[1]_i_2\,
      I2 => \uo[1]_i_2_0\,
      I3 => own_wins_reg_i_2(3),
      I4 => \uo[1]_i_2_1\,
      I5 => \^lmin\(3),
      O => \best_j_reg[3]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_slice_1_0_ms_pick is
  port (
    s0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s2 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \uc_reg[3]\ : out STD_LOGIC;
    \uc_reg[2]\ : out STD_LOGIC;
    \uc_reg[2]_0\ : out STD_LOGIC;
    \uc_reg[3]_0\ : out STD_LOGIC;
    \uc_reg[3]_1\ : out STD_LOGIC;
    \uc_reg[3]_2\ : out STD_LOGIC;
    \uc_reg[3]_3\ : out STD_LOGIC;
    \uc_reg[3]_4\ : out STD_LOGIC;
    \uc_reg[3]_5\ : out STD_LOGIC;
    \uc_reg[3]_6\ : out STD_LOGIC;
    \uc_reg[3]_7\ : out STD_LOGIC;
    \uc_reg[3]_8\ : out STD_LOGIC;
    \uc_reg[3]_9\ : out STD_LOGIC;
    \uc_reg[2]_1\ : out STD_LOGIC;
    \uc_reg[3]_10\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 13 downto 0 );
    \sec_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \rec_reg[15][14]_0\ : out STD_LOGIC_VECTOR ( 14 downto 0 );
    \rec_reg[7][14]_0\ : out STD_LOGIC;
    \rec_reg[15][13]_0\ : out STD_LOGIC;
    \rec_reg[7][12]_0\ : out STD_LOGIC;
    \rec_reg[7][11]_0\ : out STD_LOGIC;
    \rec_reg[7][10]_0\ : out STD_LOGIC;
    \rec_reg[7][9]_0\ : out STD_LOGIC;
    \rec_reg[7][8]_0\ : out STD_LOGIC;
    \rec_reg[7][7]_0\ : out STD_LOGIC;
    \rec_reg[7][6]_0\ : out STD_LOGIC;
    \rec_reg[7][5]_0\ : out STD_LOGIC;
    \rec_reg[7][4]_0\ : out STD_LOGIC;
    \rec_reg[7][3]_0\ : out STD_LOGIC;
    \rec_reg[15][2]_0\ : out STD_LOGIC;
    \rec_reg[15][1]_0\ : out STD_LOGIC;
    \rec_reg[7][0]_0\ : out STD_LOGIC;
    \carry_rec_reg[14]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sec_reg[7]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \s0_reg[6]_0\ : in STD_LOGIC;
    \s0_reg[0]_0\ : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 6 downto 0 );
    clk : in STD_LOGIC;
    \s0_reg[7]_0\ : in STD_LOGIC;
    \s2_reg[6]_0\ : in STD_LOGIC;
    \s2_reg[0]_0\ : in STD_LOGIC;
    \s2_reg[7]_0\ : in STD_LOGIC;
    \carry_rec_reg[14]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    l_new : in STD_LOGIC_VECTOR ( 6 downto 0 );
    D : in STD_LOGIC_VECTOR ( 13 downto 0 );
    b_real : in STD_LOGIC;
    b_use : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \rec_reg[15][14]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \uo_reg[4]_i_15\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \sec_reg[7]_2\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \rec_reg[0][0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rec_reg[1][0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rec_reg[2][0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rec_reg[3][14]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rec_reg[4][14]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rec_reg[5][14]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rec_reg[6][14]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rec_reg[7][14]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rec_reg[8][14]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rec_reg[9][14]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rec_reg[10][14]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rec_reg[11][14]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rec_reg[12][0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rec_reg[13][0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rec_reg[14][0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \carry_rec_reg[14]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \carry_rec_reg[14]_3\ : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \rec_reg[15][14]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_slice_1_0_ms_pick : entity is "ms_pick";
end system_slice_1_0_ms_pick;

architecture STRUCTURE of system_slice_1_0_ms_pick is
  signal \^q\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \carry_rec[0]_i_4_n_0\ : STD_LOGIC;
  signal \carry_rec[0]_i_5_n_0\ : STD_LOGIC;
  signal \carry_rec[0]_i_6_n_0\ : STD_LOGIC;
  signal \carry_rec[10]_i_4_n_0\ : STD_LOGIC;
  signal \carry_rec[10]_i_5_n_0\ : STD_LOGIC;
  signal \carry_rec[10]_i_6_n_0\ : STD_LOGIC;
  signal \carry_rec[11]_i_4_n_0\ : STD_LOGIC;
  signal \carry_rec[11]_i_5_n_0\ : STD_LOGIC;
  signal \carry_rec[11]_i_6_n_0\ : STD_LOGIC;
  signal \carry_rec[12]_i_4_n_0\ : STD_LOGIC;
  signal \carry_rec[12]_i_5_n_0\ : STD_LOGIC;
  signal \carry_rec[12]_i_6_n_0\ : STD_LOGIC;
  signal \carry_rec[13]_i_4_n_0\ : STD_LOGIC;
  signal \carry_rec[13]_i_5_n_0\ : STD_LOGIC;
  signal \carry_rec[13]_i_6_n_0\ : STD_LOGIC;
  signal \carry_rec[14]_i_5_n_0\ : STD_LOGIC;
  signal \carry_rec[14]_i_6_n_0\ : STD_LOGIC;
  signal \carry_rec[14]_i_7_n_0\ : STD_LOGIC;
  signal \carry_rec[1]_i_4_n_0\ : STD_LOGIC;
  signal \carry_rec[1]_i_5_n_0\ : STD_LOGIC;
  signal \carry_rec[1]_i_6_n_0\ : STD_LOGIC;
  signal \carry_rec[2]_i_4_n_0\ : STD_LOGIC;
  signal \carry_rec[2]_i_5_n_0\ : STD_LOGIC;
  signal \carry_rec[2]_i_6_n_0\ : STD_LOGIC;
  signal \carry_rec[3]_i_4_n_0\ : STD_LOGIC;
  signal \carry_rec[3]_i_5_n_0\ : STD_LOGIC;
  signal \carry_rec[3]_i_6_n_0\ : STD_LOGIC;
  signal \carry_rec[4]_i_4_n_0\ : STD_LOGIC;
  signal \carry_rec[4]_i_5_n_0\ : STD_LOGIC;
  signal \carry_rec[4]_i_6_n_0\ : STD_LOGIC;
  signal \carry_rec[5]_i_4_n_0\ : STD_LOGIC;
  signal \carry_rec[5]_i_5_n_0\ : STD_LOGIC;
  signal \carry_rec[5]_i_6_n_0\ : STD_LOGIC;
  signal \carry_rec[6]_i_4_n_0\ : STD_LOGIC;
  signal \carry_rec[6]_i_5_n_0\ : STD_LOGIC;
  signal \carry_rec[6]_i_6_n_0\ : STD_LOGIC;
  signal \carry_rec[7]_i_4_n_0\ : STD_LOGIC;
  signal \carry_rec[7]_i_5_n_0\ : STD_LOGIC;
  signal \carry_rec[7]_i_6_n_0\ : STD_LOGIC;
  signal \carry_rec[8]_i_4_n_0\ : STD_LOGIC;
  signal \carry_rec[8]_i_5_n_0\ : STD_LOGIC;
  signal \carry_rec[8]_i_6_n_0\ : STD_LOGIC;
  signal \carry_rec[9]_i_4_n_0\ : STD_LOGIC;
  signal \carry_rec[9]_i_5_n_0\ : STD_LOGIC;
  signal \carry_rec[9]_i_6_n_0\ : STD_LOGIC;
  signal \^carry_rec_reg[14]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 7 to 7 );
  signal r_new : STD_LOGIC_VECTOR ( 14 to 14 );
  signal \rec[0][14]_i_10_n_0\ : STD_LOGIC;
  signal \rec[0][14]_i_5_n_0\ : STD_LOGIC;
  signal \rec[0][14]_i_6_n_0\ : STD_LOGIC;
  signal \rec[0][14]_i_7_n_0\ : STD_LOGIC;
  signal \rec[0][14]_i_8_n_0\ : STD_LOGIC;
  signal \rec[0][14]_i_9_n_0\ : STD_LOGIC;
  signal \rec_reg[0][14]_i_4_n_1\ : STD_LOGIC;
  signal \rec_reg[0][14]_i_4_n_2\ : STD_LOGIC;
  signal \rec_reg[0][14]_i_4_n_3\ : STD_LOGIC;
  signal \rec_reg[0]_0\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \rec_reg[10]_10\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \rec_reg[11]_11\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \rec_reg[12]_12\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \rec_reg[13]_13\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \rec_reg[14]_14\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \^rec_reg[15][14]_0\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \rec_reg[1]_1\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \rec_reg[2]_2\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \rec_reg[3]_3\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \rec_reg[4]_4\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \rec_reg[5]_5\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \rec_reg[6]_6\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \rec_reg[7]_7\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \rec_reg[8]_8\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \rec_reg[9]_9\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \sec[7]_i_10_n_0\ : STD_LOGIC;
  signal \sec[7]_i_6_n_0\ : STD_LOGIC;
  signal \sec[7]_i_7_n_0\ : STD_LOGIC;
  signal \sec[7]_i_8_n_0\ : STD_LOGIC;
  signal \sec[7]_i_9_n_0\ : STD_LOGIC;
  signal \^sec_reg[7]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \sec_reg[7]_i_3_n_1\ : STD_LOGIC;
  signal \sec_reg[7]_i_3_n_2\ : STD_LOGIC;
  signal \sec_reg[7]_i_3_n_3\ : STD_LOGIC;
  signal \NLW_rec_reg[0][14]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sec_reg[7]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \rec_reg[0][14]_i_4\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \sec_reg[7]_i_3\ : label is 11;
begin
  Q(13 downto 0) <= \^q\(13 downto 0);
  \carry_rec_reg[14]_0\(0) <= \^carry_rec_reg[14]_0\(0);
  \rec_reg[15][14]_0\(14 downto 0) <= \^rec_reg[15][14]_0\(14 downto 0);
  \sec_reg[7]_0\(7 downto 0) <= \^sec_reg[7]_0\(7 downto 0);
\carry_rec[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0CFA0C0"
    )
        port map (
      I0 => \carry_rec[0]_i_4_n_0\,
      I1 => \carry_rec[0]_i_5_n_0\,
      I2 => \carry_rec_reg[14]_1\(3),
      I3 => \carry_rec_reg[14]_1\(2),
      I4 => \carry_rec[0]_i_6_n_0\,
      O => \uc_reg[3]\
    );
\carry_rec[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rec_reg[7]_7\(0),
      I1 => \rec_reg[6]_6\(0),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[5]_5\(0),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[4]_4\(0),
      O => \rec_reg[7][0]_0\
    );
\carry_rec[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^rec_reg[15][14]_0\(0),
      I1 => \rec_reg[14]_14\(0),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[13]_13\(0),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[12]_12\(0),
      O => \carry_rec[0]_i_4_n_0\
    );
\carry_rec[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rec_reg[11]_11\(0),
      I1 => \rec_reg[10]_10\(0),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[9]_9\(0),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[8]_8\(0),
      O => \carry_rec[0]_i_5_n_0\
    );
\carry_rec[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rec_reg[3]_3\(0),
      I1 => \rec_reg[2]_2\(0),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[1]_1\(0),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[0]_0\(0),
      O => \carry_rec[0]_i_6_n_0\
    );
\carry_rec[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0CFA0C0"
    )
        port map (
      I0 => \carry_rec[10]_i_4_n_0\,
      I1 => \carry_rec[10]_i_5_n_0\,
      I2 => \carry_rec_reg[14]_1\(3),
      I3 => \carry_rec_reg[14]_1\(2),
      I4 => \carry_rec[10]_i_6_n_0\,
      O => \uc_reg[3]_7\
    );
\carry_rec[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rec_reg[7]_7\(10),
      I1 => \rec_reg[6]_6\(10),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[5]_5\(10),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[4]_4\(10),
      O => \rec_reg[7][10]_0\
    );
\carry_rec[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^rec_reg[15][14]_0\(10),
      I1 => \rec_reg[14]_14\(10),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[13]_13\(10),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[12]_12\(10),
      O => \carry_rec[10]_i_4_n_0\
    );
\carry_rec[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rec_reg[11]_11\(10),
      I1 => \rec_reg[10]_10\(10),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[9]_9\(10),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[8]_8\(10),
      O => \carry_rec[10]_i_5_n_0\
    );
\carry_rec[10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rec_reg[3]_3\(10),
      I1 => \rec_reg[2]_2\(10),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[1]_1\(10),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[0]_0\(10),
      O => \carry_rec[10]_i_6_n_0\
    );
\carry_rec[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0CFA0C0"
    )
        port map (
      I0 => \carry_rec[11]_i_4_n_0\,
      I1 => \carry_rec[11]_i_5_n_0\,
      I2 => \carry_rec_reg[14]_1\(3),
      I3 => \carry_rec_reg[14]_1\(2),
      I4 => \carry_rec[11]_i_6_n_0\,
      O => \uc_reg[3]_8\
    );
\carry_rec[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rec_reg[7]_7\(11),
      I1 => \rec_reg[6]_6\(11),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[5]_5\(11),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[4]_4\(11),
      O => \rec_reg[7][11]_0\
    );
\carry_rec[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^rec_reg[15][14]_0\(11),
      I1 => \rec_reg[14]_14\(11),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[13]_13\(11),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[12]_12\(11),
      O => \carry_rec[11]_i_4_n_0\
    );
\carry_rec[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rec_reg[11]_11\(11),
      I1 => \rec_reg[10]_10\(11),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[9]_9\(11),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[8]_8\(11),
      O => \carry_rec[11]_i_5_n_0\
    );
\carry_rec[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rec_reg[3]_3\(11),
      I1 => \rec_reg[2]_2\(11),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[1]_1\(11),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[0]_0\(11),
      O => \carry_rec[11]_i_6_n_0\
    );
\carry_rec[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0CFA0C0"
    )
        port map (
      I0 => \carry_rec[12]_i_4_n_0\,
      I1 => \carry_rec[12]_i_5_n_0\,
      I2 => \carry_rec_reg[14]_1\(3),
      I3 => \carry_rec_reg[14]_1\(2),
      I4 => \carry_rec[12]_i_6_n_0\,
      O => \uc_reg[3]_9\
    );
\carry_rec[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rec_reg[7]_7\(12),
      I1 => \rec_reg[6]_6\(12),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[5]_5\(12),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[4]_4\(12),
      O => \rec_reg[7][12]_0\
    );
\carry_rec[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^rec_reg[15][14]_0\(12),
      I1 => \rec_reg[14]_14\(12),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[13]_13\(12),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[12]_12\(12),
      O => \carry_rec[12]_i_4_n_0\
    );
\carry_rec[12]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rec_reg[11]_11\(12),
      I1 => \rec_reg[10]_10\(12),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[9]_9\(12),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[8]_8\(12),
      O => \carry_rec[12]_i_5_n_0\
    );
\carry_rec[12]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rec_reg[3]_3\(12),
      I1 => \rec_reg[2]_2\(12),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[1]_1\(12),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[0]_0\(12),
      O => \carry_rec[12]_i_6_n_0\
    );
\carry_rec[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FCA00CA"
    )
        port map (
      I0 => \carry_rec[13]_i_4_n_0\,
      I1 => \carry_rec[13]_i_5_n_0\,
      I2 => \carry_rec_reg[14]_1\(2),
      I3 => \carry_rec_reg[14]_1\(3),
      I4 => \carry_rec[13]_i_6_n_0\,
      O => \uc_reg[2]_1\
    );
\carry_rec[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^rec_reg[15][14]_0\(13),
      I1 => \rec_reg[14]_14\(13),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[13]_13\(13),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[12]_12\(13),
      O => \rec_reg[15][13]_0\
    );
\carry_rec[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rec_reg[3]_3\(13),
      I1 => \rec_reg[2]_2\(13),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[1]_1\(13),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[0]_0\(13),
      O => \carry_rec[13]_i_4_n_0\
    );
\carry_rec[13]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rec_reg[7]_7\(13),
      I1 => \rec_reg[6]_6\(13),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[5]_5\(13),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[4]_4\(13),
      O => \carry_rec[13]_i_5_n_0\
    );
\carry_rec[13]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rec_reg[11]_11\(13),
      I1 => \rec_reg[10]_10\(13),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[9]_9\(13),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[8]_8\(13),
      O => \carry_rec[13]_i_6_n_0\
    );
\carry_rec[14]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0CFA0C0"
    )
        port map (
      I0 => \carry_rec[14]_i_5_n_0\,
      I1 => \carry_rec[14]_i_6_n_0\,
      I2 => \carry_rec_reg[14]_1\(3),
      I3 => \carry_rec_reg[14]_1\(2),
      I4 => \carry_rec[14]_i_7_n_0\,
      O => \uc_reg[3]_10\
    );
\carry_rec[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rec_reg[7]_7\(14),
      I1 => \rec_reg[6]_6\(14),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[5]_5\(14),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[4]_4\(14),
      O => \rec_reg[7][14]_0\
    );
\carry_rec[14]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^rec_reg[15][14]_0\(14),
      I1 => \rec_reg[14]_14\(14),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[13]_13\(14),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[12]_12\(14),
      O => \carry_rec[14]_i_5_n_0\
    );
\carry_rec[14]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rec_reg[11]_11\(14),
      I1 => \rec_reg[10]_10\(14),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[9]_9\(14),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[8]_8\(14),
      O => \carry_rec[14]_i_6_n_0\
    );
\carry_rec[14]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rec_reg[3]_3\(14),
      I1 => \rec_reg[2]_2\(14),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[1]_1\(14),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[0]_0\(14),
      O => \carry_rec[14]_i_7_n_0\
    );
\carry_rec[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FCA00CA"
    )
        port map (
      I0 => \carry_rec[1]_i_4_n_0\,
      I1 => \carry_rec[1]_i_5_n_0\,
      I2 => \carry_rec_reg[14]_1\(2),
      I3 => \carry_rec_reg[14]_1\(3),
      I4 => \carry_rec[1]_i_6_n_0\,
      O => \uc_reg[2]\
    );
\carry_rec[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^rec_reg[15][14]_0\(1),
      I1 => \rec_reg[14]_14\(1),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[13]_13\(1),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[12]_12\(1),
      O => \rec_reg[15][1]_0\
    );
\carry_rec[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rec_reg[3]_3\(1),
      I1 => \rec_reg[2]_2\(1),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[1]_1\(1),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[0]_0\(1),
      O => \carry_rec[1]_i_4_n_0\
    );
\carry_rec[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rec_reg[7]_7\(1),
      I1 => \rec_reg[6]_6\(1),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[5]_5\(1),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[4]_4\(1),
      O => \carry_rec[1]_i_5_n_0\
    );
\carry_rec[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rec_reg[11]_11\(1),
      I1 => \rec_reg[10]_10\(1),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[9]_9\(1),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[8]_8\(1),
      O => \carry_rec[1]_i_6_n_0\
    );
\carry_rec[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FCA00CA"
    )
        port map (
      I0 => \carry_rec[2]_i_4_n_0\,
      I1 => \carry_rec[2]_i_5_n_0\,
      I2 => \carry_rec_reg[14]_1\(2),
      I3 => \carry_rec_reg[14]_1\(3),
      I4 => \carry_rec[2]_i_6_n_0\,
      O => \uc_reg[2]_0\
    );
\carry_rec[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^rec_reg[15][14]_0\(2),
      I1 => \rec_reg[14]_14\(2),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[13]_13\(2),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[12]_12\(2),
      O => \rec_reg[15][2]_0\
    );
\carry_rec[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rec_reg[3]_3\(2),
      I1 => \rec_reg[2]_2\(2),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[1]_1\(2),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[0]_0\(2),
      O => \carry_rec[2]_i_4_n_0\
    );
\carry_rec[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rec_reg[7]_7\(2),
      I1 => \rec_reg[6]_6\(2),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[5]_5\(2),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[4]_4\(2),
      O => \carry_rec[2]_i_5_n_0\
    );
\carry_rec[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rec_reg[11]_11\(2),
      I1 => \rec_reg[10]_10\(2),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[9]_9\(2),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[8]_8\(2),
      O => \carry_rec[2]_i_6_n_0\
    );
\carry_rec[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0CFA0C0"
    )
        port map (
      I0 => \carry_rec[3]_i_4_n_0\,
      I1 => \carry_rec[3]_i_5_n_0\,
      I2 => \carry_rec_reg[14]_1\(3),
      I3 => \carry_rec_reg[14]_1\(2),
      I4 => \carry_rec[3]_i_6_n_0\,
      O => \uc_reg[3]_0\
    );
\carry_rec[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rec_reg[7]_7\(3),
      I1 => \rec_reg[6]_6\(3),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[5]_5\(3),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[4]_4\(3),
      O => \rec_reg[7][3]_0\
    );
\carry_rec[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^rec_reg[15][14]_0\(3),
      I1 => \rec_reg[14]_14\(3),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[13]_13\(3),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[12]_12\(3),
      O => \carry_rec[3]_i_4_n_0\
    );
\carry_rec[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rec_reg[11]_11\(3),
      I1 => \rec_reg[10]_10\(3),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[9]_9\(3),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[8]_8\(3),
      O => \carry_rec[3]_i_5_n_0\
    );
\carry_rec[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rec_reg[3]_3\(3),
      I1 => \rec_reg[2]_2\(3),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[1]_1\(3),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[0]_0\(3),
      O => \carry_rec[3]_i_6_n_0\
    );
\carry_rec[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0CFA0C0"
    )
        port map (
      I0 => \carry_rec[4]_i_4_n_0\,
      I1 => \carry_rec[4]_i_5_n_0\,
      I2 => \carry_rec_reg[14]_1\(3),
      I3 => \carry_rec_reg[14]_1\(2),
      I4 => \carry_rec[4]_i_6_n_0\,
      O => \uc_reg[3]_1\
    );
\carry_rec[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rec_reg[7]_7\(4),
      I1 => \rec_reg[6]_6\(4),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[5]_5\(4),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[4]_4\(4),
      O => \rec_reg[7][4]_0\
    );
\carry_rec[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^rec_reg[15][14]_0\(4),
      I1 => \rec_reg[14]_14\(4),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[13]_13\(4),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[12]_12\(4),
      O => \carry_rec[4]_i_4_n_0\
    );
\carry_rec[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rec_reg[11]_11\(4),
      I1 => \rec_reg[10]_10\(4),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[9]_9\(4),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[8]_8\(4),
      O => \carry_rec[4]_i_5_n_0\
    );
\carry_rec[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rec_reg[3]_3\(4),
      I1 => \rec_reg[2]_2\(4),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[1]_1\(4),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[0]_0\(4),
      O => \carry_rec[4]_i_6_n_0\
    );
\carry_rec[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0CFA0C0"
    )
        port map (
      I0 => \carry_rec[5]_i_4_n_0\,
      I1 => \carry_rec[5]_i_5_n_0\,
      I2 => \carry_rec_reg[14]_1\(3),
      I3 => \carry_rec_reg[14]_1\(2),
      I4 => \carry_rec[5]_i_6_n_0\,
      O => \uc_reg[3]_2\
    );
\carry_rec[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rec_reg[7]_7\(5),
      I1 => \rec_reg[6]_6\(5),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[5]_5\(5),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[4]_4\(5),
      O => \rec_reg[7][5]_0\
    );
\carry_rec[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^rec_reg[15][14]_0\(5),
      I1 => \rec_reg[14]_14\(5),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[13]_13\(5),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[12]_12\(5),
      O => \carry_rec[5]_i_4_n_0\
    );
\carry_rec[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rec_reg[11]_11\(5),
      I1 => \rec_reg[10]_10\(5),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[9]_9\(5),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[8]_8\(5),
      O => \carry_rec[5]_i_5_n_0\
    );
\carry_rec[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rec_reg[3]_3\(5),
      I1 => \rec_reg[2]_2\(5),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[1]_1\(5),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[0]_0\(5),
      O => \carry_rec[5]_i_6_n_0\
    );
\carry_rec[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0CFA0C0"
    )
        port map (
      I0 => \carry_rec[6]_i_4_n_0\,
      I1 => \carry_rec[6]_i_5_n_0\,
      I2 => \carry_rec_reg[14]_1\(3),
      I3 => \carry_rec_reg[14]_1\(2),
      I4 => \carry_rec[6]_i_6_n_0\,
      O => \uc_reg[3]_3\
    );
\carry_rec[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rec_reg[7]_7\(6),
      I1 => \rec_reg[6]_6\(6),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[5]_5\(6),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[4]_4\(6),
      O => \rec_reg[7][6]_0\
    );
\carry_rec[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^rec_reg[15][14]_0\(6),
      I1 => \rec_reg[14]_14\(6),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[13]_13\(6),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[12]_12\(6),
      O => \carry_rec[6]_i_4_n_0\
    );
\carry_rec[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rec_reg[11]_11\(6),
      I1 => \rec_reg[10]_10\(6),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[9]_9\(6),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[8]_8\(6),
      O => \carry_rec[6]_i_5_n_0\
    );
\carry_rec[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rec_reg[3]_3\(6),
      I1 => \rec_reg[2]_2\(6),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[1]_1\(6),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[0]_0\(6),
      O => \carry_rec[6]_i_6_n_0\
    );
\carry_rec[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0CFA0C0"
    )
        port map (
      I0 => \carry_rec[7]_i_4_n_0\,
      I1 => \carry_rec[7]_i_5_n_0\,
      I2 => \carry_rec_reg[14]_1\(3),
      I3 => \carry_rec_reg[14]_1\(2),
      I4 => \carry_rec[7]_i_6_n_0\,
      O => \uc_reg[3]_4\
    );
\carry_rec[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rec_reg[7]_7\(7),
      I1 => \rec_reg[6]_6\(7),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[5]_5\(7),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[4]_4\(7),
      O => \rec_reg[7][7]_0\
    );
\carry_rec[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^rec_reg[15][14]_0\(7),
      I1 => \rec_reg[14]_14\(7),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[13]_13\(7),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[12]_12\(7),
      O => \carry_rec[7]_i_4_n_0\
    );
\carry_rec[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rec_reg[11]_11\(7),
      I1 => \rec_reg[10]_10\(7),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[9]_9\(7),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[8]_8\(7),
      O => \carry_rec[7]_i_5_n_0\
    );
\carry_rec[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rec_reg[3]_3\(7),
      I1 => \rec_reg[2]_2\(7),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[1]_1\(7),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[0]_0\(7),
      O => \carry_rec[7]_i_6_n_0\
    );
\carry_rec[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0CFA0C0"
    )
        port map (
      I0 => \carry_rec[8]_i_4_n_0\,
      I1 => \carry_rec[8]_i_5_n_0\,
      I2 => \carry_rec_reg[14]_1\(3),
      I3 => \carry_rec_reg[14]_1\(2),
      I4 => \carry_rec[8]_i_6_n_0\,
      O => \uc_reg[3]_5\
    );
\carry_rec[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rec_reg[7]_7\(8),
      I1 => \rec_reg[6]_6\(8),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[5]_5\(8),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[4]_4\(8),
      O => \rec_reg[7][8]_0\
    );
\carry_rec[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^rec_reg[15][14]_0\(8),
      I1 => \rec_reg[14]_14\(8),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[13]_13\(8),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[12]_12\(8),
      O => \carry_rec[8]_i_4_n_0\
    );
\carry_rec[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rec_reg[11]_11\(8),
      I1 => \rec_reg[10]_10\(8),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[9]_9\(8),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[8]_8\(8),
      O => \carry_rec[8]_i_5_n_0\
    );
\carry_rec[8]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rec_reg[3]_3\(8),
      I1 => \rec_reg[2]_2\(8),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[1]_1\(8),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[0]_0\(8),
      O => \carry_rec[8]_i_6_n_0\
    );
\carry_rec[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0CFA0C0"
    )
        port map (
      I0 => \carry_rec[9]_i_4_n_0\,
      I1 => \carry_rec[9]_i_5_n_0\,
      I2 => \carry_rec_reg[14]_1\(3),
      I3 => \carry_rec_reg[14]_1\(2),
      I4 => \carry_rec[9]_i_6_n_0\,
      O => \uc_reg[3]_6\
    );
\carry_rec[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rec_reg[7]_7\(9),
      I1 => \rec_reg[6]_6\(9),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[5]_5\(9),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[4]_4\(9),
      O => \rec_reg[7][9]_0\
    );
\carry_rec[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^rec_reg[15][14]_0\(9),
      I1 => \rec_reg[14]_14\(9),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[13]_13\(9),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[12]_12\(9),
      O => \carry_rec[9]_i_4_n_0\
    );
\carry_rec[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rec_reg[11]_11\(9),
      I1 => \rec_reg[10]_10\(9),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[9]_9\(9),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[8]_8\(9),
      O => \carry_rec[9]_i_5_n_0\
    );
\carry_rec[9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rec_reg[3]_3\(9),
      I1 => \rec_reg[2]_2\(9),
      I2 => \carry_rec_reg[14]_1\(1),
      I3 => \rec_reg[1]_1\(9),
      I4 => \carry_rec_reg[14]_1\(0),
      I5 => \rec_reg[0]_0\(9),
      O => \carry_rec[9]_i_6_n_0\
    );
\carry_rec_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \carry_rec_reg[14]_2\(0),
      D => \carry_rec_reg[14]_3\(0),
      Q => \^q\(0),
      R => '0'
    );
\carry_rec_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \carry_rec_reg[14]_2\(0),
      D => \carry_rec_reg[14]_3\(10),
      Q => \^q\(10),
      R => '0'
    );
\carry_rec_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \carry_rec_reg[14]_2\(0),
      D => \carry_rec_reg[14]_3\(11),
      Q => \^q\(11),
      R => '0'
    );
\carry_rec_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \carry_rec_reg[14]_2\(0),
      D => \carry_rec_reg[14]_3\(12),
      Q => \^q\(12),
      R => '0'
    );
\carry_rec_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \carry_rec_reg[14]_2\(0),
      D => \carry_rec_reg[14]_3\(13),
      Q => \^q\(13),
      R => '0'
    );
\carry_rec_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \carry_rec_reg[14]_2\(0),
      D => \carry_rec_reg[14]_3\(14),
      Q => p_0_in(7),
      R => '0'
    );
\carry_rec_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \carry_rec_reg[14]_2\(0),
      D => \carry_rec_reg[14]_3\(1),
      Q => \^q\(1),
      R => '0'
    );
\carry_rec_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \carry_rec_reg[14]_2\(0),
      D => \carry_rec_reg[14]_3\(2),
      Q => \^q\(2),
      R => '0'
    );
\carry_rec_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \carry_rec_reg[14]_2\(0),
      D => \carry_rec_reg[14]_3\(3),
      Q => \^q\(3),
      R => '0'
    );
\carry_rec_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \carry_rec_reg[14]_2\(0),
      D => \carry_rec_reg[14]_3\(4),
      Q => \^q\(4),
      R => '0'
    );
\carry_rec_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \carry_rec_reg[14]_2\(0),
      D => \carry_rec_reg[14]_3\(5),
      Q => \^q\(5),
      R => '0'
    );
\carry_rec_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \carry_rec_reg[14]_2\(0),
      D => \carry_rec_reg[14]_3\(6),
      Q => \^q\(6),
      R => '0'
    );
\carry_rec_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \carry_rec_reg[14]_2\(0),
      D => \carry_rec_reg[14]_3\(7),
      Q => \^q\(7),
      R => '0'
    );
\carry_rec_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \carry_rec_reg[14]_2\(0),
      D => \carry_rec_reg[14]_3\(8),
      Q => \^q\(8),
      R => '0'
    );
\carry_rec_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \carry_rec_reg[14]_2\(0),
      D => \carry_rec_reg[14]_3\(9),
      Q => \^q\(9),
      R => '0'
    );
\rec[0][14]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => l_new(5),
      I1 => \^q\(12),
      I2 => l_new(4),
      I3 => \^q\(11),
      O => \rec[0][14]_i_10_n_0\
    );
\rec[0][14]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => p_0_in(7),
      I1 => b_real,
      I2 => \^carry_rec_reg[14]_0\(0),
      I3 => b_use,
      O => r_new(14)
    );
\rec[0][14]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => p_0_in(7),
      I1 => l_new(6),
      I2 => \^q\(13),
      O => \rec[0][14]_i_5_n_0\
    );
\rec[0][14]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(12),
      I1 => l_new(5),
      I2 => \^q\(11),
      I3 => l_new(4),
      O => \rec[0][14]_i_6_n_0\
    );
\rec[0][14]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(10),
      I1 => l_new(3),
      I2 => \^q\(9),
      I3 => l_new(2),
      O => \rec[0][14]_i_7_n_0\
    );
\rec[0][14]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(8),
      I1 => l_new(1),
      I2 => \^q\(7),
      I3 => l_new(0),
      O => \rec[0][14]_i_8_n_0\
    );
\rec[0][14]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => p_0_in(7),
      I1 => l_new(6),
      I2 => \^q\(13),
      O => \rec[0][14]_i_9_n_0\
    );
\rec_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[0][0]_0\(0),
      D => D(0),
      Q => \rec_reg[0]_0\(0),
      R => '0'
    );
\rec_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[0][0]_0\(0),
      D => D(10),
      Q => \rec_reg[0]_0\(10),
      R => '0'
    );
\rec_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[0][0]_0\(0),
      D => D(11),
      Q => \rec_reg[0]_0\(11),
      R => '0'
    );
\rec_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[0][0]_0\(0),
      D => D(12),
      Q => \rec_reg[0]_0\(12),
      R => '0'
    );
\rec_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[0][0]_0\(0),
      D => D(13),
      Q => \rec_reg[0]_0\(13),
      R => '0'
    );
\rec_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[0][0]_0\(0),
      D => r_new(14),
      Q => \rec_reg[0]_0\(14),
      R => '0'
    );
\rec_reg[0][14]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \^carry_rec_reg[14]_0\(0),
      CO(2) => \rec_reg[0][14]_i_4_n_1\,
      CO(1) => \rec_reg[0][14]_i_4_n_2\,
      CO(0) => \rec_reg[0][14]_i_4_n_3\,
      CYINIT => '0',
      DI(3) => \rec[0][14]_i_5_n_0\,
      DI(2) => \rec[0][14]_i_6_n_0\,
      DI(1) => \rec[0][14]_i_7_n_0\,
      DI(0) => \rec[0][14]_i_8_n_0\,
      O(3 downto 0) => \NLW_rec_reg[0][14]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \rec[0][14]_i_9_n_0\,
      S(2) => \rec[0][14]_i_10_n_0\,
      S(1 downto 0) => \rec_reg[15][14]_1\(1 downto 0)
    );
\rec_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[0][0]_0\(0),
      D => D(1),
      Q => \rec_reg[0]_0\(1),
      R => '0'
    );
\rec_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[0][0]_0\(0),
      D => D(2),
      Q => \rec_reg[0]_0\(2),
      R => '0'
    );
\rec_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[0][0]_0\(0),
      D => D(3),
      Q => \rec_reg[0]_0\(3),
      R => '0'
    );
\rec_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[0][0]_0\(0),
      D => D(4),
      Q => \rec_reg[0]_0\(4),
      R => '0'
    );
\rec_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[0][0]_0\(0),
      D => D(5),
      Q => \rec_reg[0]_0\(5),
      R => '0'
    );
\rec_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[0][0]_0\(0),
      D => D(6),
      Q => \rec_reg[0]_0\(6),
      R => '0'
    );
\rec_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[0][0]_0\(0),
      D => D(7),
      Q => \rec_reg[0]_0\(7),
      R => '0'
    );
\rec_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[0][0]_0\(0),
      D => D(8),
      Q => \rec_reg[0]_0\(8),
      R => '0'
    );
\rec_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[0][0]_0\(0),
      D => D(9),
      Q => \rec_reg[0]_0\(9),
      R => '0'
    );
\rec_reg[10][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[10][14]_0\(0),
      D => D(0),
      Q => \rec_reg[10]_10\(0),
      R => '0'
    );
\rec_reg[10][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[10][14]_0\(0),
      D => D(10),
      Q => \rec_reg[10]_10\(10),
      R => '0'
    );
\rec_reg[10][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[10][14]_0\(0),
      D => D(11),
      Q => \rec_reg[10]_10\(11),
      R => '0'
    );
\rec_reg[10][12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[10][14]_0\(0),
      D => D(12),
      Q => \rec_reg[10]_10\(12),
      R => '0'
    );
\rec_reg[10][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[10][14]_0\(0),
      D => D(13),
      Q => \rec_reg[10]_10\(13),
      R => '0'
    );
\rec_reg[10][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[10][14]_0\(0),
      D => r_new(14),
      Q => \rec_reg[10]_10\(14),
      R => '0'
    );
\rec_reg[10][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[10][14]_0\(0),
      D => D(1),
      Q => \rec_reg[10]_10\(1),
      R => '0'
    );
\rec_reg[10][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[10][14]_0\(0),
      D => D(2),
      Q => \rec_reg[10]_10\(2),
      R => '0'
    );
\rec_reg[10][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[10][14]_0\(0),
      D => D(3),
      Q => \rec_reg[10]_10\(3),
      R => '0'
    );
\rec_reg[10][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[10][14]_0\(0),
      D => D(4),
      Q => \rec_reg[10]_10\(4),
      R => '0'
    );
\rec_reg[10][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[10][14]_0\(0),
      D => D(5),
      Q => \rec_reg[10]_10\(5),
      R => '0'
    );
\rec_reg[10][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[10][14]_0\(0),
      D => D(6),
      Q => \rec_reg[10]_10\(6),
      R => '0'
    );
\rec_reg[10][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[10][14]_0\(0),
      D => D(7),
      Q => \rec_reg[10]_10\(7),
      R => '0'
    );
\rec_reg[10][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[10][14]_0\(0),
      D => D(8),
      Q => \rec_reg[10]_10\(8),
      R => '0'
    );
\rec_reg[10][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[10][14]_0\(0),
      D => D(9),
      Q => \rec_reg[10]_10\(9),
      R => '0'
    );
\rec_reg[11][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[11][14]_0\(0),
      D => D(0),
      Q => \rec_reg[11]_11\(0),
      R => '0'
    );
\rec_reg[11][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[11][14]_0\(0),
      D => D(10),
      Q => \rec_reg[11]_11\(10),
      R => '0'
    );
\rec_reg[11][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[11][14]_0\(0),
      D => D(11),
      Q => \rec_reg[11]_11\(11),
      R => '0'
    );
\rec_reg[11][12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[11][14]_0\(0),
      D => D(12),
      Q => \rec_reg[11]_11\(12),
      R => '0'
    );
\rec_reg[11][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[11][14]_0\(0),
      D => D(13),
      Q => \rec_reg[11]_11\(13),
      R => '0'
    );
\rec_reg[11][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[11][14]_0\(0),
      D => r_new(14),
      Q => \rec_reg[11]_11\(14),
      R => '0'
    );
\rec_reg[11][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[11][14]_0\(0),
      D => D(1),
      Q => \rec_reg[11]_11\(1),
      R => '0'
    );
\rec_reg[11][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[11][14]_0\(0),
      D => D(2),
      Q => \rec_reg[11]_11\(2),
      R => '0'
    );
\rec_reg[11][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[11][14]_0\(0),
      D => D(3),
      Q => \rec_reg[11]_11\(3),
      R => '0'
    );
\rec_reg[11][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[11][14]_0\(0),
      D => D(4),
      Q => \rec_reg[11]_11\(4),
      R => '0'
    );
\rec_reg[11][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[11][14]_0\(0),
      D => D(5),
      Q => \rec_reg[11]_11\(5),
      R => '0'
    );
\rec_reg[11][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[11][14]_0\(0),
      D => D(6),
      Q => \rec_reg[11]_11\(6),
      R => '0'
    );
\rec_reg[11][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[11][14]_0\(0),
      D => D(7),
      Q => \rec_reg[11]_11\(7),
      R => '0'
    );
\rec_reg[11][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[11][14]_0\(0),
      D => D(8),
      Q => \rec_reg[11]_11\(8),
      R => '0'
    );
\rec_reg[11][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[11][14]_0\(0),
      D => D(9),
      Q => \rec_reg[11]_11\(9),
      R => '0'
    );
\rec_reg[12][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[12][0]_0\(0),
      D => D(0),
      Q => \rec_reg[12]_12\(0),
      R => '0'
    );
\rec_reg[12][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[12][0]_0\(0),
      D => D(10),
      Q => \rec_reg[12]_12\(10),
      R => '0'
    );
\rec_reg[12][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[12][0]_0\(0),
      D => D(11),
      Q => \rec_reg[12]_12\(11),
      R => '0'
    );
\rec_reg[12][12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[12][0]_0\(0),
      D => D(12),
      Q => \rec_reg[12]_12\(12),
      R => '0'
    );
\rec_reg[12][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[12][0]_0\(0),
      D => D(13),
      Q => \rec_reg[12]_12\(13),
      R => '0'
    );
\rec_reg[12][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[12][0]_0\(0),
      D => r_new(14),
      Q => \rec_reg[12]_12\(14),
      R => '0'
    );
\rec_reg[12][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[12][0]_0\(0),
      D => D(1),
      Q => \rec_reg[12]_12\(1),
      R => '0'
    );
\rec_reg[12][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[12][0]_0\(0),
      D => D(2),
      Q => \rec_reg[12]_12\(2),
      R => '0'
    );
\rec_reg[12][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[12][0]_0\(0),
      D => D(3),
      Q => \rec_reg[12]_12\(3),
      R => '0'
    );
\rec_reg[12][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[12][0]_0\(0),
      D => D(4),
      Q => \rec_reg[12]_12\(4),
      R => '0'
    );
\rec_reg[12][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[12][0]_0\(0),
      D => D(5),
      Q => \rec_reg[12]_12\(5),
      R => '0'
    );
\rec_reg[12][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[12][0]_0\(0),
      D => D(6),
      Q => \rec_reg[12]_12\(6),
      R => '0'
    );
\rec_reg[12][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[12][0]_0\(0),
      D => D(7),
      Q => \rec_reg[12]_12\(7),
      R => '0'
    );
\rec_reg[12][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[12][0]_0\(0),
      D => D(8),
      Q => \rec_reg[12]_12\(8),
      R => '0'
    );
\rec_reg[12][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[12][0]_0\(0),
      D => D(9),
      Q => \rec_reg[12]_12\(9),
      R => '0'
    );
\rec_reg[13][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[13][0]_0\(0),
      D => D(0),
      Q => \rec_reg[13]_13\(0),
      R => '0'
    );
\rec_reg[13][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[13][0]_0\(0),
      D => D(10),
      Q => \rec_reg[13]_13\(10),
      R => '0'
    );
\rec_reg[13][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[13][0]_0\(0),
      D => D(11),
      Q => \rec_reg[13]_13\(11),
      R => '0'
    );
\rec_reg[13][12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[13][0]_0\(0),
      D => D(12),
      Q => \rec_reg[13]_13\(12),
      R => '0'
    );
\rec_reg[13][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[13][0]_0\(0),
      D => D(13),
      Q => \rec_reg[13]_13\(13),
      R => '0'
    );
\rec_reg[13][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[13][0]_0\(0),
      D => r_new(14),
      Q => \rec_reg[13]_13\(14),
      R => '0'
    );
\rec_reg[13][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[13][0]_0\(0),
      D => D(1),
      Q => \rec_reg[13]_13\(1),
      R => '0'
    );
\rec_reg[13][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[13][0]_0\(0),
      D => D(2),
      Q => \rec_reg[13]_13\(2),
      R => '0'
    );
\rec_reg[13][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[13][0]_0\(0),
      D => D(3),
      Q => \rec_reg[13]_13\(3),
      R => '0'
    );
\rec_reg[13][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[13][0]_0\(0),
      D => D(4),
      Q => \rec_reg[13]_13\(4),
      R => '0'
    );
\rec_reg[13][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[13][0]_0\(0),
      D => D(5),
      Q => \rec_reg[13]_13\(5),
      R => '0'
    );
\rec_reg[13][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[13][0]_0\(0),
      D => D(6),
      Q => \rec_reg[13]_13\(6),
      R => '0'
    );
\rec_reg[13][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[13][0]_0\(0),
      D => D(7),
      Q => \rec_reg[13]_13\(7),
      R => '0'
    );
\rec_reg[13][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[13][0]_0\(0),
      D => D(8),
      Q => \rec_reg[13]_13\(8),
      R => '0'
    );
\rec_reg[13][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[13][0]_0\(0),
      D => D(9),
      Q => \rec_reg[13]_13\(9),
      R => '0'
    );
\rec_reg[14][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[14][0]_0\(0),
      D => D(0),
      Q => \rec_reg[14]_14\(0),
      R => '0'
    );
\rec_reg[14][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[14][0]_0\(0),
      D => D(10),
      Q => \rec_reg[14]_14\(10),
      R => '0'
    );
\rec_reg[14][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[14][0]_0\(0),
      D => D(11),
      Q => \rec_reg[14]_14\(11),
      R => '0'
    );
\rec_reg[14][12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[14][0]_0\(0),
      D => D(12),
      Q => \rec_reg[14]_14\(12),
      R => '0'
    );
\rec_reg[14][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[14][0]_0\(0),
      D => D(13),
      Q => \rec_reg[14]_14\(13),
      R => '0'
    );
\rec_reg[14][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[14][0]_0\(0),
      D => r_new(14),
      Q => \rec_reg[14]_14\(14),
      R => '0'
    );
\rec_reg[14][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[14][0]_0\(0),
      D => D(1),
      Q => \rec_reg[14]_14\(1),
      R => '0'
    );
\rec_reg[14][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[14][0]_0\(0),
      D => D(2),
      Q => \rec_reg[14]_14\(2),
      R => '0'
    );
\rec_reg[14][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[14][0]_0\(0),
      D => D(3),
      Q => \rec_reg[14]_14\(3),
      R => '0'
    );
\rec_reg[14][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[14][0]_0\(0),
      D => D(4),
      Q => \rec_reg[14]_14\(4),
      R => '0'
    );
\rec_reg[14][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[14][0]_0\(0),
      D => D(5),
      Q => \rec_reg[14]_14\(5),
      R => '0'
    );
\rec_reg[14][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[14][0]_0\(0),
      D => D(6),
      Q => \rec_reg[14]_14\(6),
      R => '0'
    );
\rec_reg[14][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[14][0]_0\(0),
      D => D(7),
      Q => \rec_reg[14]_14\(7),
      R => '0'
    );
\rec_reg[14][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[14][0]_0\(0),
      D => D(8),
      Q => \rec_reg[14]_14\(8),
      R => '0'
    );
\rec_reg[14][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[14][0]_0\(0),
      D => D(9),
      Q => \rec_reg[14]_14\(9),
      R => '0'
    );
\rec_reg[15][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[15][14]_2\(0),
      D => D(0),
      Q => \^rec_reg[15][14]_0\(0),
      R => '0'
    );
\rec_reg[15][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[15][14]_2\(0),
      D => D(10),
      Q => \^rec_reg[15][14]_0\(10),
      R => '0'
    );
\rec_reg[15][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[15][14]_2\(0),
      D => D(11),
      Q => \^rec_reg[15][14]_0\(11),
      R => '0'
    );
\rec_reg[15][12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[15][14]_2\(0),
      D => D(12),
      Q => \^rec_reg[15][14]_0\(12),
      R => '0'
    );
\rec_reg[15][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[15][14]_2\(0),
      D => D(13),
      Q => \^rec_reg[15][14]_0\(13),
      R => '0'
    );
\rec_reg[15][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[15][14]_2\(0),
      D => r_new(14),
      Q => \^rec_reg[15][14]_0\(14),
      R => '0'
    );
\rec_reg[15][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[15][14]_2\(0),
      D => D(1),
      Q => \^rec_reg[15][14]_0\(1),
      R => '0'
    );
\rec_reg[15][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[15][14]_2\(0),
      D => D(2),
      Q => \^rec_reg[15][14]_0\(2),
      R => '0'
    );
\rec_reg[15][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[15][14]_2\(0),
      D => D(3),
      Q => \^rec_reg[15][14]_0\(3),
      R => '0'
    );
\rec_reg[15][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[15][14]_2\(0),
      D => D(4),
      Q => \^rec_reg[15][14]_0\(4),
      R => '0'
    );
\rec_reg[15][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[15][14]_2\(0),
      D => D(5),
      Q => \^rec_reg[15][14]_0\(5),
      R => '0'
    );
\rec_reg[15][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[15][14]_2\(0),
      D => D(6),
      Q => \^rec_reg[15][14]_0\(6),
      R => '0'
    );
\rec_reg[15][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[15][14]_2\(0),
      D => D(7),
      Q => \^rec_reg[15][14]_0\(7),
      R => '0'
    );
\rec_reg[15][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[15][14]_2\(0),
      D => D(8),
      Q => \^rec_reg[15][14]_0\(8),
      R => '0'
    );
\rec_reg[15][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[15][14]_2\(0),
      D => D(9),
      Q => \^rec_reg[15][14]_0\(9),
      R => '0'
    );
\rec_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[1][0]_0\(0),
      D => D(0),
      Q => \rec_reg[1]_1\(0),
      R => '0'
    );
\rec_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[1][0]_0\(0),
      D => D(10),
      Q => \rec_reg[1]_1\(10),
      R => '0'
    );
\rec_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[1][0]_0\(0),
      D => D(11),
      Q => \rec_reg[1]_1\(11),
      R => '0'
    );
\rec_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[1][0]_0\(0),
      D => D(12),
      Q => \rec_reg[1]_1\(12),
      R => '0'
    );
\rec_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[1][0]_0\(0),
      D => D(13),
      Q => \rec_reg[1]_1\(13),
      R => '0'
    );
\rec_reg[1][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[1][0]_0\(0),
      D => r_new(14),
      Q => \rec_reg[1]_1\(14),
      R => '0'
    );
\rec_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[1][0]_0\(0),
      D => D(1),
      Q => \rec_reg[1]_1\(1),
      R => '0'
    );
\rec_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[1][0]_0\(0),
      D => D(2),
      Q => \rec_reg[1]_1\(2),
      R => '0'
    );
\rec_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[1][0]_0\(0),
      D => D(3),
      Q => \rec_reg[1]_1\(3),
      R => '0'
    );
\rec_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[1][0]_0\(0),
      D => D(4),
      Q => \rec_reg[1]_1\(4),
      R => '0'
    );
\rec_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[1][0]_0\(0),
      D => D(5),
      Q => \rec_reg[1]_1\(5),
      R => '0'
    );
\rec_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[1][0]_0\(0),
      D => D(6),
      Q => \rec_reg[1]_1\(6),
      R => '0'
    );
\rec_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[1][0]_0\(0),
      D => D(7),
      Q => \rec_reg[1]_1\(7),
      R => '0'
    );
\rec_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[1][0]_0\(0),
      D => D(8),
      Q => \rec_reg[1]_1\(8),
      R => '0'
    );
\rec_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[1][0]_0\(0),
      D => D(9),
      Q => \rec_reg[1]_1\(9),
      R => '0'
    );
\rec_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[2][0]_0\(0),
      D => D(0),
      Q => \rec_reg[2]_2\(0),
      R => '0'
    );
\rec_reg[2][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[2][0]_0\(0),
      D => D(10),
      Q => \rec_reg[2]_2\(10),
      R => '0'
    );
\rec_reg[2][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[2][0]_0\(0),
      D => D(11),
      Q => \rec_reg[2]_2\(11),
      R => '0'
    );
\rec_reg[2][12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[2][0]_0\(0),
      D => D(12),
      Q => \rec_reg[2]_2\(12),
      R => '0'
    );
\rec_reg[2][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[2][0]_0\(0),
      D => D(13),
      Q => \rec_reg[2]_2\(13),
      R => '0'
    );
\rec_reg[2][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[2][0]_0\(0),
      D => r_new(14),
      Q => \rec_reg[2]_2\(14),
      R => '0'
    );
\rec_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[2][0]_0\(0),
      D => D(1),
      Q => \rec_reg[2]_2\(1),
      R => '0'
    );
\rec_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[2][0]_0\(0),
      D => D(2),
      Q => \rec_reg[2]_2\(2),
      R => '0'
    );
\rec_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[2][0]_0\(0),
      D => D(3),
      Q => \rec_reg[2]_2\(3),
      R => '0'
    );
\rec_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[2][0]_0\(0),
      D => D(4),
      Q => \rec_reg[2]_2\(4),
      R => '0'
    );
\rec_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[2][0]_0\(0),
      D => D(5),
      Q => \rec_reg[2]_2\(5),
      R => '0'
    );
\rec_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[2][0]_0\(0),
      D => D(6),
      Q => \rec_reg[2]_2\(6),
      R => '0'
    );
\rec_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[2][0]_0\(0),
      D => D(7),
      Q => \rec_reg[2]_2\(7),
      R => '0'
    );
\rec_reg[2][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[2][0]_0\(0),
      D => D(8),
      Q => \rec_reg[2]_2\(8),
      R => '0'
    );
\rec_reg[2][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[2][0]_0\(0),
      D => D(9),
      Q => \rec_reg[2]_2\(9),
      R => '0'
    );
\rec_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[3][14]_0\(0),
      D => D(0),
      Q => \rec_reg[3]_3\(0),
      R => '0'
    );
\rec_reg[3][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[3][14]_0\(0),
      D => D(10),
      Q => \rec_reg[3]_3\(10),
      R => '0'
    );
\rec_reg[3][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[3][14]_0\(0),
      D => D(11),
      Q => \rec_reg[3]_3\(11),
      R => '0'
    );
\rec_reg[3][12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[3][14]_0\(0),
      D => D(12),
      Q => \rec_reg[3]_3\(12),
      R => '0'
    );
\rec_reg[3][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[3][14]_0\(0),
      D => D(13),
      Q => \rec_reg[3]_3\(13),
      R => '0'
    );
\rec_reg[3][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[3][14]_0\(0),
      D => r_new(14),
      Q => \rec_reg[3]_3\(14),
      R => '0'
    );
\rec_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[3][14]_0\(0),
      D => D(1),
      Q => \rec_reg[3]_3\(1),
      R => '0'
    );
\rec_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[3][14]_0\(0),
      D => D(2),
      Q => \rec_reg[3]_3\(2),
      R => '0'
    );
\rec_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[3][14]_0\(0),
      D => D(3),
      Q => \rec_reg[3]_3\(3),
      R => '0'
    );
\rec_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[3][14]_0\(0),
      D => D(4),
      Q => \rec_reg[3]_3\(4),
      R => '0'
    );
\rec_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[3][14]_0\(0),
      D => D(5),
      Q => \rec_reg[3]_3\(5),
      R => '0'
    );
\rec_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[3][14]_0\(0),
      D => D(6),
      Q => \rec_reg[3]_3\(6),
      R => '0'
    );
\rec_reg[3][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[3][14]_0\(0),
      D => D(7),
      Q => \rec_reg[3]_3\(7),
      R => '0'
    );
\rec_reg[3][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[3][14]_0\(0),
      D => D(8),
      Q => \rec_reg[3]_3\(8),
      R => '0'
    );
\rec_reg[3][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[3][14]_0\(0),
      D => D(9),
      Q => \rec_reg[3]_3\(9),
      R => '0'
    );
\rec_reg[4][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[4][14]_0\(0),
      D => D(0),
      Q => \rec_reg[4]_4\(0),
      R => '0'
    );
\rec_reg[4][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[4][14]_0\(0),
      D => D(10),
      Q => \rec_reg[4]_4\(10),
      R => '0'
    );
\rec_reg[4][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[4][14]_0\(0),
      D => D(11),
      Q => \rec_reg[4]_4\(11),
      R => '0'
    );
\rec_reg[4][12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[4][14]_0\(0),
      D => D(12),
      Q => \rec_reg[4]_4\(12),
      R => '0'
    );
\rec_reg[4][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[4][14]_0\(0),
      D => D(13),
      Q => \rec_reg[4]_4\(13),
      R => '0'
    );
\rec_reg[4][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[4][14]_0\(0),
      D => r_new(14),
      Q => \rec_reg[4]_4\(14),
      R => '0'
    );
\rec_reg[4][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[4][14]_0\(0),
      D => D(1),
      Q => \rec_reg[4]_4\(1),
      R => '0'
    );
\rec_reg[4][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[4][14]_0\(0),
      D => D(2),
      Q => \rec_reg[4]_4\(2),
      R => '0'
    );
\rec_reg[4][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[4][14]_0\(0),
      D => D(3),
      Q => \rec_reg[4]_4\(3),
      R => '0'
    );
\rec_reg[4][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[4][14]_0\(0),
      D => D(4),
      Q => \rec_reg[4]_4\(4),
      R => '0'
    );
\rec_reg[4][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[4][14]_0\(0),
      D => D(5),
      Q => \rec_reg[4]_4\(5),
      R => '0'
    );
\rec_reg[4][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[4][14]_0\(0),
      D => D(6),
      Q => \rec_reg[4]_4\(6),
      R => '0'
    );
\rec_reg[4][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[4][14]_0\(0),
      D => D(7),
      Q => \rec_reg[4]_4\(7),
      R => '0'
    );
\rec_reg[4][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[4][14]_0\(0),
      D => D(8),
      Q => \rec_reg[4]_4\(8),
      R => '0'
    );
\rec_reg[4][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[4][14]_0\(0),
      D => D(9),
      Q => \rec_reg[4]_4\(9),
      R => '0'
    );
\rec_reg[5][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[5][14]_0\(0),
      D => D(0),
      Q => \rec_reg[5]_5\(0),
      R => '0'
    );
\rec_reg[5][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[5][14]_0\(0),
      D => D(10),
      Q => \rec_reg[5]_5\(10),
      R => '0'
    );
\rec_reg[5][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[5][14]_0\(0),
      D => D(11),
      Q => \rec_reg[5]_5\(11),
      R => '0'
    );
\rec_reg[5][12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[5][14]_0\(0),
      D => D(12),
      Q => \rec_reg[5]_5\(12),
      R => '0'
    );
\rec_reg[5][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[5][14]_0\(0),
      D => D(13),
      Q => \rec_reg[5]_5\(13),
      R => '0'
    );
\rec_reg[5][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[5][14]_0\(0),
      D => r_new(14),
      Q => \rec_reg[5]_5\(14),
      R => '0'
    );
\rec_reg[5][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[5][14]_0\(0),
      D => D(1),
      Q => \rec_reg[5]_5\(1),
      R => '0'
    );
\rec_reg[5][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[5][14]_0\(0),
      D => D(2),
      Q => \rec_reg[5]_5\(2),
      R => '0'
    );
\rec_reg[5][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[5][14]_0\(0),
      D => D(3),
      Q => \rec_reg[5]_5\(3),
      R => '0'
    );
\rec_reg[5][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[5][14]_0\(0),
      D => D(4),
      Q => \rec_reg[5]_5\(4),
      R => '0'
    );
\rec_reg[5][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[5][14]_0\(0),
      D => D(5),
      Q => \rec_reg[5]_5\(5),
      R => '0'
    );
\rec_reg[5][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[5][14]_0\(0),
      D => D(6),
      Q => \rec_reg[5]_5\(6),
      R => '0'
    );
\rec_reg[5][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[5][14]_0\(0),
      D => D(7),
      Q => \rec_reg[5]_5\(7),
      R => '0'
    );
\rec_reg[5][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[5][14]_0\(0),
      D => D(8),
      Q => \rec_reg[5]_5\(8),
      R => '0'
    );
\rec_reg[5][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[5][14]_0\(0),
      D => D(9),
      Q => \rec_reg[5]_5\(9),
      R => '0'
    );
\rec_reg[6][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[6][14]_0\(0),
      D => D(0),
      Q => \rec_reg[6]_6\(0),
      R => '0'
    );
\rec_reg[6][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[6][14]_0\(0),
      D => D(10),
      Q => \rec_reg[6]_6\(10),
      R => '0'
    );
\rec_reg[6][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[6][14]_0\(0),
      D => D(11),
      Q => \rec_reg[6]_6\(11),
      R => '0'
    );
\rec_reg[6][12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[6][14]_0\(0),
      D => D(12),
      Q => \rec_reg[6]_6\(12),
      R => '0'
    );
\rec_reg[6][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[6][14]_0\(0),
      D => D(13),
      Q => \rec_reg[6]_6\(13),
      R => '0'
    );
\rec_reg[6][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[6][14]_0\(0),
      D => r_new(14),
      Q => \rec_reg[6]_6\(14),
      R => '0'
    );
\rec_reg[6][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[6][14]_0\(0),
      D => D(1),
      Q => \rec_reg[6]_6\(1),
      R => '0'
    );
\rec_reg[6][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[6][14]_0\(0),
      D => D(2),
      Q => \rec_reg[6]_6\(2),
      R => '0'
    );
\rec_reg[6][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[6][14]_0\(0),
      D => D(3),
      Q => \rec_reg[6]_6\(3),
      R => '0'
    );
\rec_reg[6][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[6][14]_0\(0),
      D => D(4),
      Q => \rec_reg[6]_6\(4),
      R => '0'
    );
\rec_reg[6][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[6][14]_0\(0),
      D => D(5),
      Q => \rec_reg[6]_6\(5),
      R => '0'
    );
\rec_reg[6][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[6][14]_0\(0),
      D => D(6),
      Q => \rec_reg[6]_6\(6),
      R => '0'
    );
\rec_reg[6][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[6][14]_0\(0),
      D => D(7),
      Q => \rec_reg[6]_6\(7),
      R => '0'
    );
\rec_reg[6][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[6][14]_0\(0),
      D => D(8),
      Q => \rec_reg[6]_6\(8),
      R => '0'
    );
\rec_reg[6][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[6][14]_0\(0),
      D => D(9),
      Q => \rec_reg[6]_6\(9),
      R => '0'
    );
\rec_reg[7][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[7][14]_1\(0),
      D => D(0),
      Q => \rec_reg[7]_7\(0),
      R => '0'
    );
\rec_reg[7][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[7][14]_1\(0),
      D => D(10),
      Q => \rec_reg[7]_7\(10),
      R => '0'
    );
\rec_reg[7][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[7][14]_1\(0),
      D => D(11),
      Q => \rec_reg[7]_7\(11),
      R => '0'
    );
\rec_reg[7][12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[7][14]_1\(0),
      D => D(12),
      Q => \rec_reg[7]_7\(12),
      R => '0'
    );
\rec_reg[7][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[7][14]_1\(0),
      D => D(13),
      Q => \rec_reg[7]_7\(13),
      R => '0'
    );
\rec_reg[7][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[7][14]_1\(0),
      D => r_new(14),
      Q => \rec_reg[7]_7\(14),
      R => '0'
    );
\rec_reg[7][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[7][14]_1\(0),
      D => D(1),
      Q => \rec_reg[7]_7\(1),
      R => '0'
    );
\rec_reg[7][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[7][14]_1\(0),
      D => D(2),
      Q => \rec_reg[7]_7\(2),
      R => '0'
    );
\rec_reg[7][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[7][14]_1\(0),
      D => D(3),
      Q => \rec_reg[7]_7\(3),
      R => '0'
    );
\rec_reg[7][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[7][14]_1\(0),
      D => D(4),
      Q => \rec_reg[7]_7\(4),
      R => '0'
    );
\rec_reg[7][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[7][14]_1\(0),
      D => D(5),
      Q => \rec_reg[7]_7\(5),
      R => '0'
    );
\rec_reg[7][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[7][14]_1\(0),
      D => D(6),
      Q => \rec_reg[7]_7\(6),
      R => '0'
    );
\rec_reg[7][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[7][14]_1\(0),
      D => D(7),
      Q => \rec_reg[7]_7\(7),
      R => '0'
    );
\rec_reg[7][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[7][14]_1\(0),
      D => D(8),
      Q => \rec_reg[7]_7\(8),
      R => '0'
    );
\rec_reg[7][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[7][14]_1\(0),
      D => D(9),
      Q => \rec_reg[7]_7\(9),
      R => '0'
    );
\rec_reg[8][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[8][14]_0\(0),
      D => D(0),
      Q => \rec_reg[8]_8\(0),
      R => '0'
    );
\rec_reg[8][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[8][14]_0\(0),
      D => D(10),
      Q => \rec_reg[8]_8\(10),
      R => '0'
    );
\rec_reg[8][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[8][14]_0\(0),
      D => D(11),
      Q => \rec_reg[8]_8\(11),
      R => '0'
    );
\rec_reg[8][12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[8][14]_0\(0),
      D => D(12),
      Q => \rec_reg[8]_8\(12),
      R => '0'
    );
\rec_reg[8][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[8][14]_0\(0),
      D => D(13),
      Q => \rec_reg[8]_8\(13),
      R => '0'
    );
\rec_reg[8][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[8][14]_0\(0),
      D => r_new(14),
      Q => \rec_reg[8]_8\(14),
      R => '0'
    );
\rec_reg[8][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[8][14]_0\(0),
      D => D(1),
      Q => \rec_reg[8]_8\(1),
      R => '0'
    );
\rec_reg[8][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[8][14]_0\(0),
      D => D(2),
      Q => \rec_reg[8]_8\(2),
      R => '0'
    );
\rec_reg[8][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[8][14]_0\(0),
      D => D(3),
      Q => \rec_reg[8]_8\(3),
      R => '0'
    );
\rec_reg[8][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[8][14]_0\(0),
      D => D(4),
      Q => \rec_reg[8]_8\(4),
      R => '0'
    );
\rec_reg[8][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[8][14]_0\(0),
      D => D(5),
      Q => \rec_reg[8]_8\(5),
      R => '0'
    );
\rec_reg[8][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[8][14]_0\(0),
      D => D(6),
      Q => \rec_reg[8]_8\(6),
      R => '0'
    );
\rec_reg[8][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[8][14]_0\(0),
      D => D(7),
      Q => \rec_reg[8]_8\(7),
      R => '0'
    );
\rec_reg[8][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[8][14]_0\(0),
      D => D(8),
      Q => \rec_reg[8]_8\(8),
      R => '0'
    );
\rec_reg[8][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[8][14]_0\(0),
      D => D(9),
      Q => \rec_reg[8]_8\(9),
      R => '0'
    );
\rec_reg[9][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[9][14]_0\(0),
      D => D(0),
      Q => \rec_reg[9]_9\(0),
      R => '0'
    );
\rec_reg[9][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[9][14]_0\(0),
      D => D(10),
      Q => \rec_reg[9]_9\(10),
      R => '0'
    );
\rec_reg[9][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[9][14]_0\(0),
      D => D(11),
      Q => \rec_reg[9]_9\(11),
      R => '0'
    );
\rec_reg[9][12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[9][14]_0\(0),
      D => D(12),
      Q => \rec_reg[9]_9\(12),
      R => '0'
    );
\rec_reg[9][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[9][14]_0\(0),
      D => D(13),
      Q => \rec_reg[9]_9\(13),
      R => '0'
    );
\rec_reg[9][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[9][14]_0\(0),
      D => r_new(14),
      Q => \rec_reg[9]_9\(14),
      R => '0'
    );
\rec_reg[9][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[9][14]_0\(0),
      D => D(1),
      Q => \rec_reg[9]_9\(1),
      R => '0'
    );
\rec_reg[9][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[9][14]_0\(0),
      D => D(2),
      Q => \rec_reg[9]_9\(2),
      R => '0'
    );
\rec_reg[9][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[9][14]_0\(0),
      D => D(3),
      Q => \rec_reg[9]_9\(3),
      R => '0'
    );
\rec_reg[9][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[9][14]_0\(0),
      D => D(4),
      Q => \rec_reg[9]_9\(4),
      R => '0'
    );
\rec_reg[9][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[9][14]_0\(0),
      D => D(5),
      Q => \rec_reg[9]_9\(5),
      R => '0'
    );
\rec_reg[9][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[9][14]_0\(0),
      D => D(6),
      Q => \rec_reg[9]_9\(6),
      R => '0'
    );
\rec_reg[9][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[9][14]_0\(0),
      D => D(7),
      Q => \rec_reg[9]_9\(7),
      R => '0'
    );
\rec_reg[9][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[9][14]_0\(0),
      D => D(8),
      Q => \rec_reg[9]_9\(8),
      R => '0'
    );
\rec_reg[9][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_reg[9][14]_0\(0),
      D => D(9),
      Q => \rec_reg[9]_9\(9),
      R => '0'
    );
\s0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s0_reg[0]_0\,
      D => a(0),
      Q => s0(0),
      R => \s0_reg[6]_0\
    );
\s0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s0_reg[0]_0\,
      D => a(1),
      Q => s0(1),
      R => \s0_reg[6]_0\
    );
\s0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s0_reg[0]_0\,
      D => a(2),
      Q => s0(2),
      R => \s0_reg[6]_0\
    );
\s0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s0_reg[0]_0\,
      D => a(3),
      Q => s0(3),
      R => \s0_reg[6]_0\
    );
\s0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s0_reg[0]_0\,
      D => a(4),
      Q => s0(4),
      R => \s0_reg[6]_0\
    );
\s0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s0_reg[0]_0\,
      D => a(5),
      Q => s0(5),
      R => \s0_reg[6]_0\
    );
\s0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s0_reg[0]_0\,
      D => a(6),
      Q => s0(6),
      R => \s0_reg[6]_0\
    );
\s0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s0_reg[7]_0\,
      Q => s0(7),
      R => '0'
    );
\s2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s2_reg[0]_0\,
      D => a(0),
      Q => s2(0),
      R => \s2_reg[6]_0\
    );
\s2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s2_reg[0]_0\,
      D => a(1),
      Q => s2(1),
      R => \s2_reg[6]_0\
    );
\s2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s2_reg[0]_0\,
      D => a(2),
      Q => s2(2),
      R => \s2_reg[6]_0\
    );
\s2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s2_reg[0]_0\,
      D => a(3),
      Q => s2(3),
      R => \s2_reg[6]_0\
    );
\s2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s2_reg[0]_0\,
      D => a(4),
      Q => s2(4),
      R => \s2_reg[6]_0\
    );
\s2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s2_reg[0]_0\,
      D => a(5),
      Q => s2(5),
      R => \s2_reg[6]_0\
    );
\s2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s2_reg[0]_0\,
      D => a(6),
      Q => s2(6),
      R => \s2_reg[6]_0\
    );
\s2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s2_reg[7]_0\,
      Q => s2(7),
      R => '0'
    );
\sec[7]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => \^sec_reg[7]_0\(7),
      I1 => a(6),
      I2 => \^sec_reg[7]_0\(6),
      O => \sec[7]_i_10_n_0\
    );
\sec[7]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^sec_reg[7]_0\(7),
      I1 => a(6),
      I2 => \^sec_reg[7]_0\(6),
      O => \sec[7]_i_6_n_0\
    );
\sec[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^sec_reg[7]_0\(5),
      I1 => a(5),
      I2 => \^sec_reg[7]_0\(4),
      I3 => a(4),
      O => \sec[7]_i_7_n_0\
    );
\sec[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^sec_reg[7]_0\(3),
      I1 => a(3),
      I2 => \^sec_reg[7]_0\(2),
      I3 => a(2),
      O => \sec[7]_i_8_n_0\
    );
\sec[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^sec_reg[7]_0\(1),
      I1 => a(1),
      I2 => \^sec_reg[7]_0\(0),
      I3 => a(0),
      O => \sec[7]_i_9_n_0\
    );
\sec_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \sec_reg[7]_2\(0),
      Q => \^sec_reg[7]_0\(0),
      R => '0'
    );
\sec_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \sec_reg[7]_2\(1),
      Q => \^sec_reg[7]_0\(1),
      R => '0'
    );
\sec_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \sec_reg[7]_2\(2),
      Q => \^sec_reg[7]_0\(2),
      R => '0'
    );
\sec_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \sec_reg[7]_2\(3),
      Q => \^sec_reg[7]_0\(3),
      R => '0'
    );
\sec_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \sec_reg[7]_2\(4),
      Q => \^sec_reg[7]_0\(4),
      R => '0'
    );
\sec_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \sec_reg[7]_2\(5),
      Q => \^sec_reg[7]_0\(5),
      R => '0'
    );
\sec_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \sec_reg[7]_2\(6),
      Q => \^sec_reg[7]_0\(6),
      R => '0'
    );
\sec_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \sec_reg[7]_2\(7),
      Q => \^sec_reg[7]_0\(7),
      R => '0'
    );
\sec_reg[7]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => CO(0),
      CO(2) => \sec_reg[7]_i_3_n_1\,
      CO(1) => \sec_reg[7]_i_3_n_2\,
      CO(0) => \sec_reg[7]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => \sec[7]_i_6_n_0\,
      DI(2) => \sec[7]_i_7_n_0\,
      DI(1) => \sec[7]_i_8_n_0\,
      DI(0) => \sec[7]_i_9_n_0\,
      O(3 downto 0) => \NLW_sec_reg[7]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \sec[7]_i_10_n_0\,
      S(2 downto 0) => S(2 downto 0)
    );
\uo[4]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^sec_reg[7]_0\(7),
      I1 => \uo_reg[4]_i_15\(7),
      I2 => \^sec_reg[7]_0\(6),
      I3 => \uo_reg[4]_i_15\(6),
      O => \sec_reg[7]_1\(3)
    );
\uo[4]_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^sec_reg[7]_0\(5),
      I1 => \uo_reg[4]_i_15\(5),
      I2 => \^sec_reg[7]_0\(4),
      I3 => \uo_reg[4]_i_15\(4),
      O => \sec_reg[7]_1\(2)
    );
\uo[4]_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^sec_reg[7]_0\(3),
      I1 => \uo_reg[4]_i_15\(3),
      I2 => \^sec_reg[7]_0\(2),
      I3 => \uo_reg[4]_i_15\(2),
      O => \sec_reg[7]_1\(1)
    );
\uo[4]_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^sec_reg[7]_0\(1),
      I1 => \uo_reg[4]_i_15\(1),
      I2 => \^sec_reg[7]_0\(0),
      I3 => \uo_reg[4]_i_15\(0),
      O => \sec_reg[7]_1\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_slice_1_0_ms_up is
  port (
    own_wins_reg_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    run_reg : out STD_LOGIC;
    \uio_r_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    run_reg_0 : out STD_LOGIC;
    run_reg_1 : out STD_LOGIC;
    run_reg_2 : out STD_LOGIC;
    run_reg_3 : out STD_LOGIC;
    \pw_k_reg[0]_0\ : out STD_LOGIC;
    \pw_k_reg[6]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \uo[5]_i_13\ : out STD_LOGIC;
    \uo[5]_i_13_0\ : out STD_LOGIC;
    \pw_k_reg[4]_0\ : out STD_LOGIC;
    \pw_k_reg[3]_0\ : out STD_LOGIC;
    \uq_reg[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \uio_r_reg[6]_0\ : out STD_LOGIC;
    \uio_r_reg[1]_0\ : out STD_LOGIC;
    \uio_r_reg[7]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \uio_r_reg[7]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \uio_r_reg[6]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \uo[7]_i_47_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    uo_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \dn_edge_reg[6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \rec_in_reg[14]_0\ : out STD_LOGIC_VECTOR ( 14 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    b_own : in STD_LOGIC;
    clk : in STD_LOGIC;
    run : in STD_LOGIC;
    \uo[2]_i_5\ : in STD_LOGIC;
    \uo[2]_i_5_0\ : in STD_LOGIC;
    \uo[4]_i_6\ : in STD_LOGIC;
    \uo[3]_i_5\ : in STD_LOGIC;
    \uo_reg[4]_i_15_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    best_s : in STD_LOGIC_VECTOR ( 7 downto 0 );
    lmin : in STD_LOGIC_VECTOR ( 6 downto 0 );
    uq : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \uo_reg[7]_i_60_0\ : in STD_LOGIC;
    \uo[5]_i_16\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    own_wins_reg_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \uo[6]_i_10\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \uo[7]_i_52_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \uo[7]_i_44_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \uo_reg[7]_i_63_0\ : in STD_LOGIC;
    uio_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \mw_k_reg[6]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \pw_k_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_sec_reg[7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_s2_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_s0_reg[6]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dn_edge_reg[6]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rin_s_reg[7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rin_s_reg[7]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rec_in_reg[14]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_slice_1_0_ms_up : entity is "ms_up";
end system_slice_1_0_ms_up;

architecture STRUCTURE of system_slice_1_0_ms_up is
  signal C : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal data0 : STD_LOGIC;
  signal f_b0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal f_margin : STD_LOGIC_VECTOR ( 13 downto 4 );
  signal f_off11_in : STD_LOGIC;
  signal f_uniq0 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal fit2 : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal \m_s0_reg_n_0_[0]\ : STD_LOGIC;
  signal \m_s0_reg_n_0_[1]\ : STD_LOGIC;
  signal \m_s0_reg_n_0_[2]\ : STD_LOGIC;
  signal \m_s0_reg_n_0_[3]\ : STD_LOGIC;
  signal \m_s0_reg_n_0_[4]\ : STD_LOGIC;
  signal \m_s0_reg_n_0_[5]\ : STD_LOGIC;
  signal \m_s0_reg_n_0_[6]\ : STD_LOGIC;
  signal \m_s2_reg_n_0_[0]\ : STD_LOGIC;
  signal \m_s2_reg_n_0_[1]\ : STD_LOGIC;
  signal \m_s2_reg_n_0_[2]\ : STD_LOGIC;
  signal \m_s2_reg_n_0_[3]\ : STD_LOGIC;
  signal \m_s2_reg_n_0_[4]\ : STD_LOGIC;
  signal \m_s2_reg_n_0_[5]\ : STD_LOGIC;
  signal \m_s2_reg_n_0_[6]\ : STD_LOGIC;
  signal \m_sec_reg_n_0_[0]\ : STD_LOGIC;
  signal \m_sec_reg_n_0_[1]\ : STD_LOGIC;
  signal \m_sec_reg_n_0_[2]\ : STD_LOGIC;
  signal \m_sec_reg_n_0_[3]\ : STD_LOGIC;
  signal \m_sec_reg_n_0_[4]\ : STD_LOGIC;
  signal \mw_k_reg_n_0_[0]\ : STD_LOGIC;
  signal \mw_k_reg_n_0_[1]\ : STD_LOGIC;
  signal \mw_k_reg_n_0_[2]\ : STD_LOGIC;
  signal \mw_k_reg_n_0_[3]\ : STD_LOGIC;
  signal \mw_k_reg_n_0_[4]\ : STD_LOGIC;
  signal \mw_k_reg_n_0_[5]\ : STD_LOGIC;
  signal \mw_k_reg_n_0_[6]\ : STD_LOGIC;
  signal \mw_s_reg_n_0_[0]\ : STD_LOGIC;
  signal \mw_s_reg_n_0_[1]\ : STD_LOGIC;
  signal \mw_s_reg_n_0_[2]\ : STD_LOGIC;
  signal \mw_s_reg_n_0_[3]\ : STD_LOGIC;
  signal \mw_s_reg_n_0_[4]\ : STD_LOGIC;
  signal \mw_s_reg_n_0_[5]\ : STD_LOGIC;
  signal \mw_s_reg_n_0_[6]\ : STD_LOGIC;
  signal own_wins_i_3_n_0 : STD_LOGIC;
  signal own_wins_i_4_n_0 : STD_LOGIC;
  signal own_wins_i_5_n_0 : STD_LOGIC;
  signal own_wins_i_6_n_0 : STD_LOGIC;
  signal own_wins_reg_i_2_n_1 : STD_LOGIC;
  signal own_wins_reg_i_2_n_2 : STD_LOGIC;
  signal own_wins_reg_i_2_n_3 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal pt : STD_LOGIC_VECTOR ( 12 downto 3 );
  signal pt0 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal pw_k : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \rin_s_reg_n_0_[0]\ : STD_LOGIC;
  signal \rin_s_reg_n_0_[1]\ : STD_LOGIC;
  signal \rin_s_reg_n_0_[2]\ : STD_LOGIC;
  signal \rin_s_reg_n_0_[3]\ : STD_LOGIC;
  signal \rin_s_reg_n_0_[4]\ : STD_LOGIC;
  signal \rin_s_reg_n_0_[5]\ : STD_LOGIC;
  signal \rin_s_reg_n_0_[6]\ : STD_LOGIC;
  signal \rin_s_reg_n_0_[7]\ : STD_LOGIC;
  signal \^uio_r_reg[7]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \uo[0]_i_17_n_0\ : STD_LOGIC;
  signal \uo[0]_i_18_n_0\ : STD_LOGIC;
  signal \uo[0]_i_19_n_0\ : STD_LOGIC;
  signal \uo[0]_i_20_n_0\ : STD_LOGIC;
  signal \uo[1]_i_100_n_0\ : STD_LOGIC;
  signal \uo[1]_i_101_n_0\ : STD_LOGIC;
  signal \uo[1]_i_102_n_0\ : STD_LOGIC;
  signal \uo[1]_i_104_n_0\ : STD_LOGIC;
  signal \uo[1]_i_16_n_0\ : STD_LOGIC;
  signal \uo[1]_i_17_n_0\ : STD_LOGIC;
  signal \uo[1]_i_18_n_0\ : STD_LOGIC;
  signal \uo[1]_i_19_n_0\ : STD_LOGIC;
  signal \uo[1]_i_20_n_0\ : STD_LOGIC;
  signal \uo[1]_i_24_n_0\ : STD_LOGIC;
  signal \uo[1]_i_25_n_0\ : STD_LOGIC;
  signal \uo[1]_i_27_n_0\ : STD_LOGIC;
  signal \uo[1]_i_28_n_0\ : STD_LOGIC;
  signal \uo[1]_i_30_n_0\ : STD_LOGIC;
  signal \uo[1]_i_31_n_0\ : STD_LOGIC;
  signal \uo[1]_i_32_n_0\ : STD_LOGIC;
  signal \uo[1]_i_33_n_0\ : STD_LOGIC;
  signal \uo[1]_i_34_n_0\ : STD_LOGIC;
  signal \uo[1]_i_35_n_0\ : STD_LOGIC;
  signal \uo[1]_i_36_n_0\ : STD_LOGIC;
  signal \uo[1]_i_37_n_0\ : STD_LOGIC;
  signal \uo[1]_i_40_n_0\ : STD_LOGIC;
  signal \uo[1]_i_41_n_0\ : STD_LOGIC;
  signal \uo[1]_i_42_n_0\ : STD_LOGIC;
  signal \uo[1]_i_43_n_0\ : STD_LOGIC;
  signal \uo[1]_i_44_n_0\ : STD_LOGIC;
  signal \uo[1]_i_45_n_0\ : STD_LOGIC;
  signal \uo[1]_i_46_n_0\ : STD_LOGIC;
  signal \uo[1]_i_47_n_0\ : STD_LOGIC;
  signal \uo[1]_i_49_n_0\ : STD_LOGIC;
  signal \uo[1]_i_50_n_0\ : STD_LOGIC;
  signal \uo[1]_i_51_n_0\ : STD_LOGIC;
  signal \uo[1]_i_52_n_0\ : STD_LOGIC;
  signal \uo[1]_i_53_n_0\ : STD_LOGIC;
  signal \uo[1]_i_54_n_0\ : STD_LOGIC;
  signal \uo[1]_i_55_n_0\ : STD_LOGIC;
  signal \uo[1]_i_56_n_0\ : STD_LOGIC;
  signal \uo[1]_i_59_n_0\ : STD_LOGIC;
  signal \uo[1]_i_60_n_0\ : STD_LOGIC;
  signal \uo[1]_i_61_n_0\ : STD_LOGIC;
  signal \uo[1]_i_62_n_0\ : STD_LOGIC;
  signal \uo[1]_i_63_n_0\ : STD_LOGIC;
  signal \uo[1]_i_64_n_0\ : STD_LOGIC;
  signal \uo[1]_i_65_n_0\ : STD_LOGIC;
  signal \uo[1]_i_66_n_0\ : STD_LOGIC;
  signal \uo[1]_i_68_n_0\ : STD_LOGIC;
  signal \uo[1]_i_69_n_0\ : STD_LOGIC;
  signal \uo[1]_i_70_n_0\ : STD_LOGIC;
  signal \uo[1]_i_72_n_0\ : STD_LOGIC;
  signal \uo[1]_i_73_n_0\ : STD_LOGIC;
  signal \uo[1]_i_74_n_0\ : STD_LOGIC;
  signal \uo[1]_i_75_n_0\ : STD_LOGIC;
  signal \uo[1]_i_76_n_0\ : STD_LOGIC;
  signal \uo[1]_i_77_n_0\ : STD_LOGIC;
  signal \uo[1]_i_78_n_0\ : STD_LOGIC;
  signal \uo[1]_i_79_n_0\ : STD_LOGIC;
  signal \uo[1]_i_80_n_0\ : STD_LOGIC;
  signal \uo[1]_i_81_n_0\ : STD_LOGIC;
  signal \uo[1]_i_82_n_0\ : STD_LOGIC;
  signal \uo[1]_i_83_n_0\ : STD_LOGIC;
  signal \uo[1]_i_84_n_0\ : STD_LOGIC;
  signal \uo[1]_i_85_n_0\ : STD_LOGIC;
  signal \uo[1]_i_86_n_0\ : STD_LOGIC;
  signal \uo[1]_i_87_n_0\ : STD_LOGIC;
  signal \uo[1]_i_88_n_0\ : STD_LOGIC;
  signal \uo[1]_i_89_n_0\ : STD_LOGIC;
  signal \uo[1]_i_90_n_0\ : STD_LOGIC;
  signal \uo[1]_i_91_n_0\ : STD_LOGIC;
  signal \uo[1]_i_92_n_0\ : STD_LOGIC;
  signal \uo[1]_i_93_n_0\ : STD_LOGIC;
  signal \uo[1]_i_94_n_0\ : STD_LOGIC;
  signal \uo[1]_i_95_n_0\ : STD_LOGIC;
  signal \uo[1]_i_96_n_0\ : STD_LOGIC;
  signal \uo[1]_i_97_n_0\ : STD_LOGIC;
  signal \uo[1]_i_98_n_0\ : STD_LOGIC;
  signal \uo[1]_i_99_n_0\ : STD_LOGIC;
  signal \uo[2]_i_100_n_0\ : STD_LOGIC;
  signal \uo[2]_i_101_n_0\ : STD_LOGIC;
  signal \uo[2]_i_102_n_0\ : STD_LOGIC;
  signal \uo[2]_i_103_n_0\ : STD_LOGIC;
  signal \uo[2]_i_104_n_0\ : STD_LOGIC;
  signal \uo[2]_i_105_n_0\ : STD_LOGIC;
  signal \uo[2]_i_106_n_0\ : STD_LOGIC;
  signal \uo[2]_i_107_n_0\ : STD_LOGIC;
  signal \uo[2]_i_108_n_0\ : STD_LOGIC;
  signal \uo[2]_i_109_n_0\ : STD_LOGIC;
  signal \uo[2]_i_110_n_0\ : STD_LOGIC;
  signal \uo[2]_i_111_n_0\ : STD_LOGIC;
  signal \uo[2]_i_112_n_0\ : STD_LOGIC;
  signal \uo[2]_i_113_n_0\ : STD_LOGIC;
  signal \uo[2]_i_116_n_0\ : STD_LOGIC;
  signal \uo[2]_i_117_n_0\ : STD_LOGIC;
  signal \uo[2]_i_118_n_0\ : STD_LOGIC;
  signal \uo[2]_i_119_n_0\ : STD_LOGIC;
  signal \uo[2]_i_120_n_0\ : STD_LOGIC;
  signal \uo[2]_i_121_n_0\ : STD_LOGIC;
  signal \uo[2]_i_122_n_0\ : STD_LOGIC;
  signal \uo[2]_i_124_n_0\ : STD_LOGIC;
  signal \uo[2]_i_125_n_0\ : STD_LOGIC;
  signal \uo[2]_i_126_n_0\ : STD_LOGIC;
  signal \uo[2]_i_127_n_0\ : STD_LOGIC;
  signal \uo[2]_i_128_n_0\ : STD_LOGIC;
  signal \uo[2]_i_129_n_0\ : STD_LOGIC;
  signal \uo[2]_i_130_n_0\ : STD_LOGIC;
  signal \uo[2]_i_131_n_0\ : STD_LOGIC;
  signal \uo[2]_i_134_n_0\ : STD_LOGIC;
  signal \uo[2]_i_135_n_0\ : STD_LOGIC;
  signal \uo[2]_i_136_n_0\ : STD_LOGIC;
  signal \uo[2]_i_137_n_0\ : STD_LOGIC;
  signal \uo[2]_i_138_n_0\ : STD_LOGIC;
  signal \uo[2]_i_139_n_0\ : STD_LOGIC;
  signal \uo[2]_i_140_n_0\ : STD_LOGIC;
  signal \uo[2]_i_142_n_0\ : STD_LOGIC;
  signal \uo[2]_i_143_n_0\ : STD_LOGIC;
  signal \uo[2]_i_144_n_0\ : STD_LOGIC;
  signal \uo[2]_i_145_n_0\ : STD_LOGIC;
  signal \uo[2]_i_146_n_0\ : STD_LOGIC;
  signal \uo[2]_i_147_n_0\ : STD_LOGIC;
  signal \uo[2]_i_148_n_0\ : STD_LOGIC;
  signal \uo[2]_i_149_n_0\ : STD_LOGIC;
  signal \uo[2]_i_152_n_0\ : STD_LOGIC;
  signal \uo[2]_i_153_n_0\ : STD_LOGIC;
  signal \uo[2]_i_154_n_0\ : STD_LOGIC;
  signal \uo[2]_i_155_n_0\ : STD_LOGIC;
  signal \uo[2]_i_156_n_0\ : STD_LOGIC;
  signal \uo[2]_i_157_n_0\ : STD_LOGIC;
  signal \uo[2]_i_158_n_0\ : STD_LOGIC;
  signal \uo[2]_i_159_n_0\ : STD_LOGIC;
  signal \uo[2]_i_162_n_0\ : STD_LOGIC;
  signal \uo[2]_i_163_n_0\ : STD_LOGIC;
  signal \uo[2]_i_164_n_0\ : STD_LOGIC;
  signal \uo[2]_i_165_n_0\ : STD_LOGIC;
  signal \uo[2]_i_166_n_0\ : STD_LOGIC;
  signal \uo[2]_i_167_n_0\ : STD_LOGIC;
  signal \uo[2]_i_168_n_0\ : STD_LOGIC;
  signal \uo[2]_i_169_n_0\ : STD_LOGIC;
  signal \uo[2]_i_172_n_0\ : STD_LOGIC;
  signal \uo[2]_i_173_n_0\ : STD_LOGIC;
  signal \uo[2]_i_174_n_0\ : STD_LOGIC;
  signal \uo[2]_i_175_n_0\ : STD_LOGIC;
  signal \uo[2]_i_176_n_0\ : STD_LOGIC;
  signal \uo[2]_i_177_n_0\ : STD_LOGIC;
  signal \uo[2]_i_178_n_0\ : STD_LOGIC;
  signal \uo[2]_i_179_n_0\ : STD_LOGIC;
  signal \uo[2]_i_180_n_0\ : STD_LOGIC;
  signal \uo[2]_i_181_n_0\ : STD_LOGIC;
  signal \uo[2]_i_182_n_0\ : STD_LOGIC;
  signal \uo[2]_i_183_n_0\ : STD_LOGIC;
  signal \uo[2]_i_184_n_0\ : STD_LOGIC;
  signal \uo[2]_i_185_n_0\ : STD_LOGIC;
  signal \uo[2]_i_186_n_0\ : STD_LOGIC;
  signal \uo[2]_i_187_n_0\ : STD_LOGIC;
  signal \uo[2]_i_188_n_0\ : STD_LOGIC;
  signal \uo[2]_i_189_n_0\ : STD_LOGIC;
  signal \uo[2]_i_190_n_0\ : STD_LOGIC;
  signal \uo[2]_i_191_n_0\ : STD_LOGIC;
  signal \uo[2]_i_192_n_0\ : STD_LOGIC;
  signal \uo[2]_i_193_n_0\ : STD_LOGIC;
  signal \uo[2]_i_194_n_0\ : STD_LOGIC;
  signal \uo[2]_i_195_n_0\ : STD_LOGIC;
  signal \uo[2]_i_196_n_0\ : STD_LOGIC;
  signal \uo[2]_i_197_n_0\ : STD_LOGIC;
  signal \uo[2]_i_198_n_0\ : STD_LOGIC;
  signal \uo[2]_i_199_n_0\ : STD_LOGIC;
  signal \uo[2]_i_19_n_0\ : STD_LOGIC;
  signal \uo[2]_i_200_n_0\ : STD_LOGIC;
  signal \uo[2]_i_201_n_0\ : STD_LOGIC;
  signal \uo[2]_i_202_n_0\ : STD_LOGIC;
  signal \uo[2]_i_203_n_0\ : STD_LOGIC;
  signal \uo[2]_i_205_n_0\ : STD_LOGIC;
  signal \uo[2]_i_206_n_0\ : STD_LOGIC;
  signal \uo[2]_i_207_n_0\ : STD_LOGIC;
  signal \uo[2]_i_208_n_0\ : STD_LOGIC;
  signal \uo[2]_i_209_n_0\ : STD_LOGIC;
  signal \uo[2]_i_20_n_0\ : STD_LOGIC;
  signal \uo[2]_i_210_n_0\ : STD_LOGIC;
  signal \uo[2]_i_211_n_0\ : STD_LOGIC;
  signal \uo[2]_i_212_n_0\ : STD_LOGIC;
  signal \uo[2]_i_213_n_0\ : STD_LOGIC;
  signal \uo[2]_i_214_n_0\ : STD_LOGIC;
  signal \uo[2]_i_215_n_0\ : STD_LOGIC;
  signal \uo[2]_i_216_n_0\ : STD_LOGIC;
  signal \uo[2]_i_21_n_0\ : STD_LOGIC;
  signal \uo[2]_i_221_n_0\ : STD_LOGIC;
  signal \uo[2]_i_222_n_0\ : STD_LOGIC;
  signal \uo[2]_i_223_n_0\ : STD_LOGIC;
  signal \uo[2]_i_224_n_0\ : STD_LOGIC;
  signal \uo[2]_i_225_n_0\ : STD_LOGIC;
  signal \uo[2]_i_226_n_0\ : STD_LOGIC;
  signal \uo[2]_i_227_n_0\ : STD_LOGIC;
  signal \uo[2]_i_228_n_0\ : STD_LOGIC;
  signal \uo[2]_i_229_n_0\ : STD_LOGIC;
  signal \uo[2]_i_22_n_0\ : STD_LOGIC;
  signal \uo[2]_i_230_n_0\ : STD_LOGIC;
  signal \uo[2]_i_231_n_0\ : STD_LOGIC;
  signal \uo[2]_i_232_n_0\ : STD_LOGIC;
  signal \uo[2]_i_233_n_0\ : STD_LOGIC;
  signal \uo[2]_i_234_n_0\ : STD_LOGIC;
  signal \uo[2]_i_235_n_0\ : STD_LOGIC;
  signal \uo[2]_i_236_n_0\ : STD_LOGIC;
  signal \uo[2]_i_237_n_0\ : STD_LOGIC;
  signal \uo[2]_i_23_n_0\ : STD_LOGIC;
  signal \uo[2]_i_241_n_0\ : STD_LOGIC;
  signal \uo[2]_i_242_n_0\ : STD_LOGIC;
  signal \uo[2]_i_243_n_0\ : STD_LOGIC;
  signal \uo[2]_i_244_n_0\ : STD_LOGIC;
  signal \uo[2]_i_245_n_0\ : STD_LOGIC;
  signal \uo[2]_i_246_n_0\ : STD_LOGIC;
  signal \uo[2]_i_247_n_0\ : STD_LOGIC;
  signal \uo[2]_i_248_n_0\ : STD_LOGIC;
  signal \uo[2]_i_249_n_0\ : STD_LOGIC;
  signal \uo[2]_i_24_n_0\ : STD_LOGIC;
  signal \uo[2]_i_250_n_0\ : STD_LOGIC;
  signal \uo[2]_i_251_n_0\ : STD_LOGIC;
  signal \uo[2]_i_254_n_0\ : STD_LOGIC;
  signal \uo[2]_i_255_n_0\ : STD_LOGIC;
  signal \uo[2]_i_256_n_0\ : STD_LOGIC;
  signal \uo[2]_i_257_n_0\ : STD_LOGIC;
  signal \uo[2]_i_258_n_0\ : STD_LOGIC;
  signal \uo[2]_i_259_n_0\ : STD_LOGIC;
  signal \uo[2]_i_25_n_0\ : STD_LOGIC;
  signal \uo[2]_i_260_n_0\ : STD_LOGIC;
  signal \uo[2]_i_261_n_0\ : STD_LOGIC;
  signal \uo[2]_i_262_n_0\ : STD_LOGIC;
  signal \uo[2]_i_265_n_0\ : STD_LOGIC;
  signal \uo[2]_i_266_n_0\ : STD_LOGIC;
  signal \uo[2]_i_267_n_0\ : STD_LOGIC;
  signal \uo[2]_i_268_n_0\ : STD_LOGIC;
  signal \uo[2]_i_269_n_0\ : STD_LOGIC;
  signal \uo[2]_i_26_n_0\ : STD_LOGIC;
  signal \uo[2]_i_270_n_0\ : STD_LOGIC;
  signal \uo[2]_i_271_n_0\ : STD_LOGIC;
  signal \uo[2]_i_272_n_0\ : STD_LOGIC;
  signal \uo[2]_i_273_n_0\ : STD_LOGIC;
  signal \uo[2]_i_275_n_0\ : STD_LOGIC;
  signal \uo[2]_i_276_n_0\ : STD_LOGIC;
  signal \uo[2]_i_277_n_0\ : STD_LOGIC;
  signal \uo[2]_i_278_n_0\ : STD_LOGIC;
  signal \uo[2]_i_279_n_0\ : STD_LOGIC;
  signal \uo[2]_i_27_n_0\ : STD_LOGIC;
  signal \uo[2]_i_280_n_0\ : STD_LOGIC;
  signal \uo[2]_i_281_n_0\ : STD_LOGIC;
  signal \uo[2]_i_282_n_0\ : STD_LOGIC;
  signal \uo[2]_i_283_n_0\ : STD_LOGIC;
  signal \uo[2]_i_284_n_0\ : STD_LOGIC;
  signal \uo[2]_i_286_n_0\ : STD_LOGIC;
  signal \uo[2]_i_287_n_0\ : STD_LOGIC;
  signal \uo[2]_i_288_n_0\ : STD_LOGIC;
  signal \uo[2]_i_289_n_0\ : STD_LOGIC;
  signal \uo[2]_i_28_n_0\ : STD_LOGIC;
  signal \uo[2]_i_290_n_0\ : STD_LOGIC;
  signal \uo[2]_i_291_n_0\ : STD_LOGIC;
  signal \uo[2]_i_292_n_0\ : STD_LOGIC;
  signal \uo[2]_i_293_n_0\ : STD_LOGIC;
  signal \uo[2]_i_294_n_0\ : STD_LOGIC;
  signal \uo[2]_i_296_n_0\ : STD_LOGIC;
  signal \uo[2]_i_297_n_0\ : STD_LOGIC;
  signal \uo[2]_i_298_n_0\ : STD_LOGIC;
  signal \uo[2]_i_299_n_0\ : STD_LOGIC;
  signal \uo[2]_i_29_n_0\ : STD_LOGIC;
  signal \uo[2]_i_300_n_0\ : STD_LOGIC;
  signal \uo[2]_i_301_n_0\ : STD_LOGIC;
  signal \uo[2]_i_302_n_0\ : STD_LOGIC;
  signal \uo[2]_i_303_n_0\ : STD_LOGIC;
  signal \uo[2]_i_304_n_0\ : STD_LOGIC;
  signal \uo[2]_i_307_n_0\ : STD_LOGIC;
  signal \uo[2]_i_308_n_0\ : STD_LOGIC;
  signal \uo[2]_i_309_n_0\ : STD_LOGIC;
  signal \uo[2]_i_30_n_0\ : STD_LOGIC;
  signal \uo[2]_i_310_n_0\ : STD_LOGIC;
  signal \uo[2]_i_311_n_0\ : STD_LOGIC;
  signal \uo[2]_i_312_n_0\ : STD_LOGIC;
  signal \uo[2]_i_313_n_0\ : STD_LOGIC;
  signal \uo[2]_i_314_n_0\ : STD_LOGIC;
  signal \uo[2]_i_315_n_0\ : STD_LOGIC;
  signal \uo[2]_i_316_n_0\ : STD_LOGIC;
  signal \uo[2]_i_317_n_0\ : STD_LOGIC;
  signal \uo[2]_i_318_n_0\ : STD_LOGIC;
  signal \uo[2]_i_319_n_0\ : STD_LOGIC;
  signal \uo[2]_i_320_n_0\ : STD_LOGIC;
  signal \uo[2]_i_321_n_0\ : STD_LOGIC;
  signal \uo[2]_i_322_n_0\ : STD_LOGIC;
  signal \uo[2]_i_323_n_0\ : STD_LOGIC;
  signal \uo[2]_i_324_n_0\ : STD_LOGIC;
  signal \uo[2]_i_325_n_0\ : STD_LOGIC;
  signal \uo[2]_i_326_n_0\ : STD_LOGIC;
  signal \uo[2]_i_327_n_0\ : STD_LOGIC;
  signal \uo[2]_i_328_n_0\ : STD_LOGIC;
  signal \uo[2]_i_329_n_0\ : STD_LOGIC;
  signal \uo[2]_i_330_n_0\ : STD_LOGIC;
  signal \uo[2]_i_331_n_0\ : STD_LOGIC;
  signal \uo[2]_i_332_n_0\ : STD_LOGIC;
  signal \uo[2]_i_333_n_0\ : STD_LOGIC;
  signal \uo[2]_i_334_n_0\ : STD_LOGIC;
  signal \uo[2]_i_335_n_0\ : STD_LOGIC;
  signal \uo[2]_i_336_n_0\ : STD_LOGIC;
  signal \uo[2]_i_337_n_0\ : STD_LOGIC;
  signal \uo[2]_i_338_n_0\ : STD_LOGIC;
  signal \uo[2]_i_339_n_0\ : STD_LOGIC;
  signal \uo[2]_i_340_n_0\ : STD_LOGIC;
  signal \uo[2]_i_341_n_0\ : STD_LOGIC;
  signal \uo[2]_i_345_n_0\ : STD_LOGIC;
  signal \uo[2]_i_346_n_0\ : STD_LOGIC;
  signal \uo[2]_i_347_n_0\ : STD_LOGIC;
  signal \uo[2]_i_348_n_0\ : STD_LOGIC;
  signal \uo[2]_i_349_n_0\ : STD_LOGIC;
  signal \uo[2]_i_350_n_0\ : STD_LOGIC;
  signal \uo[2]_i_351_n_0\ : STD_LOGIC;
  signal \uo[2]_i_352_n_0\ : STD_LOGIC;
  signal \uo[2]_i_353_n_0\ : STD_LOGIC;
  signal \uo[2]_i_44_n_0\ : STD_LOGIC;
  signal \uo[2]_i_45_n_0\ : STD_LOGIC;
  signal \uo[2]_i_46_n_0\ : STD_LOGIC;
  signal \uo[2]_i_47_n_0\ : STD_LOGIC;
  signal \uo[2]_i_48_n_0\ : STD_LOGIC;
  signal \uo[2]_i_51_n_0\ : STD_LOGIC;
  signal \uo[2]_i_52_n_0\ : STD_LOGIC;
  signal \uo[2]_i_53_n_0\ : STD_LOGIC;
  signal \uo[2]_i_54_n_0\ : STD_LOGIC;
  signal \uo[2]_i_55_n_0\ : STD_LOGIC;
  signal \uo[2]_i_56_n_0\ : STD_LOGIC;
  signal \uo[2]_i_57_n_0\ : STD_LOGIC;
  signal \uo[2]_i_58_n_0\ : STD_LOGIC;
  signal \uo[2]_i_61_n_0\ : STD_LOGIC;
  signal \uo[2]_i_62_n_0\ : STD_LOGIC;
  signal \uo[2]_i_63_n_0\ : STD_LOGIC;
  signal \uo[2]_i_64_n_0\ : STD_LOGIC;
  signal \uo[2]_i_65_n_0\ : STD_LOGIC;
  signal \uo[2]_i_66_n_0\ : STD_LOGIC;
  signal \uo[2]_i_67_n_0\ : STD_LOGIC;
  signal \uo[2]_i_68_n_0\ : STD_LOGIC;
  signal \uo[2]_i_70_n_0\ : STD_LOGIC;
  signal \uo[2]_i_71_n_0\ : STD_LOGIC;
  signal \uo[2]_i_74_n_0\ : STD_LOGIC;
  signal \uo[2]_i_75_n_0\ : STD_LOGIC;
  signal \uo[2]_i_77_n_0\ : STD_LOGIC;
  signal \uo[2]_i_78_n_0\ : STD_LOGIC;
  signal \uo[2]_i_80_n_0\ : STD_LOGIC;
  signal \uo[2]_i_81_n_0\ : STD_LOGIC;
  signal \uo[2]_i_83_n_0\ : STD_LOGIC;
  signal \uo[2]_i_84_n_0\ : STD_LOGIC;
  signal \uo[2]_i_85_n_0\ : STD_LOGIC;
  signal \uo[2]_i_86_n_0\ : STD_LOGIC;
  signal \uo[2]_i_87_n_0\ : STD_LOGIC;
  signal \uo[2]_i_88_n_0\ : STD_LOGIC;
  signal \uo[2]_i_89_n_0\ : STD_LOGIC;
  signal \uo[2]_i_90_n_0\ : STD_LOGIC;
  signal \uo[2]_i_91_n_0\ : STD_LOGIC;
  signal \uo[2]_i_92_n_0\ : STD_LOGIC;
  signal \uo[2]_i_96_n_0\ : STD_LOGIC;
  signal \uo[2]_i_97_n_0\ : STD_LOGIC;
  signal \uo[2]_i_98_n_0\ : STD_LOGIC;
  signal \uo[2]_i_99_n_0\ : STD_LOGIC;
  signal \uo[3]_i_15_n_0\ : STD_LOGIC;
  signal \uo[4]_i_100_n_0\ : STD_LOGIC;
  signal \uo[4]_i_101_n_0\ : STD_LOGIC;
  signal \uo[4]_i_102_n_0\ : STD_LOGIC;
  signal \uo[4]_i_106_n_0\ : STD_LOGIC;
  signal \uo[4]_i_107_n_0\ : STD_LOGIC;
  signal \uo[4]_i_108_n_0\ : STD_LOGIC;
  signal \uo[4]_i_109_n_0\ : STD_LOGIC;
  signal \uo[4]_i_110_n_0\ : STD_LOGIC;
  signal \uo[4]_i_111_n_0\ : STD_LOGIC;
  signal \uo[4]_i_112_n_0\ : STD_LOGIC;
  signal \uo[4]_i_113_n_0\ : STD_LOGIC;
  signal \uo[4]_i_114_n_0\ : STD_LOGIC;
  signal \uo[4]_i_115_n_0\ : STD_LOGIC;
  signal \uo[4]_i_116_n_0\ : STD_LOGIC;
  signal \uo[4]_i_118_n_0\ : STD_LOGIC;
  signal \uo[4]_i_119_n_0\ : STD_LOGIC;
  signal \uo[4]_i_120_n_0\ : STD_LOGIC;
  signal \uo[4]_i_121_n_0\ : STD_LOGIC;
  signal \uo[4]_i_122_n_0\ : STD_LOGIC;
  signal \uo[4]_i_123_n_0\ : STD_LOGIC;
  signal \uo[4]_i_124_n_0\ : STD_LOGIC;
  signal \uo[4]_i_125_n_0\ : STD_LOGIC;
  signal \uo[4]_i_129_n_0\ : STD_LOGIC;
  signal \uo[4]_i_130_n_0\ : STD_LOGIC;
  signal \uo[4]_i_131_n_0\ : STD_LOGIC;
  signal \uo[4]_i_132_n_0\ : STD_LOGIC;
  signal \uo[4]_i_133_n_0\ : STD_LOGIC;
  signal \uo[4]_i_134_n_0\ : STD_LOGIC;
  signal \uo[4]_i_135_n_0\ : STD_LOGIC;
  signal \uo[4]_i_136_n_0\ : STD_LOGIC;
  signal \uo[4]_i_137_n_0\ : STD_LOGIC;
  signal \uo[4]_i_138_n_0\ : STD_LOGIC;
  signal \uo[4]_i_140_n_0\ : STD_LOGIC;
  signal \uo[4]_i_141_n_0\ : STD_LOGIC;
  signal \uo[4]_i_143_n_0\ : STD_LOGIC;
  signal \uo[4]_i_144_n_0\ : STD_LOGIC;
  signal \uo[4]_i_145_n_0\ : STD_LOGIC;
  signal \uo[4]_i_146_n_0\ : STD_LOGIC;
  signal \uo[4]_i_147_n_0\ : STD_LOGIC;
  signal \uo[4]_i_148_n_0\ : STD_LOGIC;
  signal \uo[4]_i_149_n_0\ : STD_LOGIC;
  signal \uo[4]_i_150_n_0\ : STD_LOGIC;
  signal \uo[4]_i_152_n_0\ : STD_LOGIC;
  signal \uo[4]_i_153_n_0\ : STD_LOGIC;
  signal \uo[4]_i_154_n_0\ : STD_LOGIC;
  signal \uo[4]_i_155_n_0\ : STD_LOGIC;
  signal \uo[4]_i_156_n_0\ : STD_LOGIC;
  signal \uo[4]_i_157_n_0\ : STD_LOGIC;
  signal \uo[4]_i_158_n_0\ : STD_LOGIC;
  signal \uo[4]_i_162_n_0\ : STD_LOGIC;
  signal \uo[4]_i_163_n_0\ : STD_LOGIC;
  signal \uo[4]_i_164_n_0\ : STD_LOGIC;
  signal \uo[4]_i_165_n_0\ : STD_LOGIC;
  signal \uo[4]_i_166_n_0\ : STD_LOGIC;
  signal \uo[4]_i_167_n_0\ : STD_LOGIC;
  signal \uo[4]_i_168_n_0\ : STD_LOGIC;
  signal \uo[4]_i_169_n_0\ : STD_LOGIC;
  signal \uo[4]_i_16_n_0\ : STD_LOGIC;
  signal \uo[4]_i_170_n_0\ : STD_LOGIC;
  signal \uo[4]_i_171_n_0\ : STD_LOGIC;
  signal \uo[4]_i_172_n_0\ : STD_LOGIC;
  signal \uo[4]_i_173_n_0\ : STD_LOGIC;
  signal \uo[4]_i_174_n_0\ : STD_LOGIC;
  signal \uo[4]_i_175_n_0\ : STD_LOGIC;
  signal \uo[4]_i_176_n_0\ : STD_LOGIC;
  signal \uo[4]_i_177_n_0\ : STD_LOGIC;
  signal \uo[4]_i_178_n_0\ : STD_LOGIC;
  signal \uo[4]_i_179_n_0\ : STD_LOGIC;
  signal \uo[4]_i_17_n_0\ : STD_LOGIC;
  signal \uo[4]_i_180_n_0\ : STD_LOGIC;
  signal \uo[4]_i_181_n_0\ : STD_LOGIC;
  signal \uo[4]_i_182_n_0\ : STD_LOGIC;
  signal \uo[4]_i_183_n_0\ : STD_LOGIC;
  signal \uo[4]_i_184_n_0\ : STD_LOGIC;
  signal \uo[4]_i_185_n_0\ : STD_LOGIC;
  signal \uo[4]_i_186_n_0\ : STD_LOGIC;
  signal \uo[4]_i_189_n_0\ : STD_LOGIC;
  signal \uo[4]_i_190_n_0\ : STD_LOGIC;
  signal \uo[4]_i_191_n_0\ : STD_LOGIC;
  signal \uo[4]_i_192_n_0\ : STD_LOGIC;
  signal \uo[4]_i_193_n_0\ : STD_LOGIC;
  signal \uo[4]_i_194_n_0\ : STD_LOGIC;
  signal \uo[4]_i_195_n_0\ : STD_LOGIC;
  signal \uo[4]_i_196_n_0\ : STD_LOGIC;
  signal \uo[4]_i_197_n_0\ : STD_LOGIC;
  signal \uo[4]_i_198_n_0\ : STD_LOGIC;
  signal \uo[4]_i_199_n_0\ : STD_LOGIC;
  signal \uo[4]_i_19_n_0\ : STD_LOGIC;
  signal \uo[4]_i_200_n_0\ : STD_LOGIC;
  signal \uo[4]_i_201_n_0\ : STD_LOGIC;
  signal \uo[4]_i_202_n_0\ : STD_LOGIC;
  signal \uo[4]_i_203_n_0\ : STD_LOGIC;
  signal \uo[4]_i_204_n_0\ : STD_LOGIC;
  signal \uo[4]_i_205_n_0\ : STD_LOGIC;
  signal \uo[4]_i_206_n_0\ : STD_LOGIC;
  signal \uo[4]_i_207_n_0\ : STD_LOGIC;
  signal \uo[4]_i_208_n_0\ : STD_LOGIC;
  signal \uo[4]_i_209_n_0\ : STD_LOGIC;
  signal \uo[4]_i_20_n_0\ : STD_LOGIC;
  signal \uo[4]_i_210_n_0\ : STD_LOGIC;
  signal \uo[4]_i_211_n_0\ : STD_LOGIC;
  signal \uo[4]_i_212_n_0\ : STD_LOGIC;
  signal \uo[4]_i_213_n_0\ : STD_LOGIC;
  signal \uo[4]_i_214_n_0\ : STD_LOGIC;
  signal \uo[4]_i_21_n_0\ : STD_LOGIC;
  signal \uo[4]_i_22_n_0\ : STD_LOGIC;
  signal \uo[4]_i_27_n_0\ : STD_LOGIC;
  signal \uo[4]_i_28_n_0\ : STD_LOGIC;
  signal \uo[4]_i_29_n_0\ : STD_LOGIC;
  signal \uo[4]_i_30_n_0\ : STD_LOGIC;
  signal \uo[4]_i_34_n_0\ : STD_LOGIC;
  signal \uo[4]_i_37_n_0\ : STD_LOGIC;
  signal \uo[4]_i_38_n_0\ : STD_LOGIC;
  signal \uo[4]_i_42_n_0\ : STD_LOGIC;
  signal \uo[4]_i_43_n_0\ : STD_LOGIC;
  signal \uo[4]_i_46_n_0\ : STD_LOGIC;
  signal \uo[4]_i_47_n_0\ : STD_LOGIC;
  signal \uo[4]_i_48_n_0\ : STD_LOGIC;
  signal \uo[4]_i_49_n_0\ : STD_LOGIC;
  signal \uo[4]_i_50_n_0\ : STD_LOGIC;
  signal \uo[4]_i_51_n_0\ : STD_LOGIC;
  signal \uo[4]_i_52_n_0\ : STD_LOGIC;
  signal \uo[4]_i_53_n_0\ : STD_LOGIC;
  signal \uo[4]_i_55_n_0\ : STD_LOGIC;
  signal \uo[4]_i_56_n_0\ : STD_LOGIC;
  signal \uo[4]_i_57_n_0\ : STD_LOGIC;
  signal \uo[4]_i_58_n_0\ : STD_LOGIC;
  signal \uo[4]_i_59_n_0\ : STD_LOGIC;
  signal \uo[4]_i_60_n_0\ : STD_LOGIC;
  signal \uo[4]_i_61_n_0\ : STD_LOGIC;
  signal \uo[4]_i_62_n_0\ : STD_LOGIC;
  signal \uo[4]_i_65_n_0\ : STD_LOGIC;
  signal \uo[4]_i_66_n_0\ : STD_LOGIC;
  signal \uo[4]_i_67_n_0\ : STD_LOGIC;
  signal \uo[4]_i_68_n_0\ : STD_LOGIC;
  signal \uo[4]_i_69_n_0\ : STD_LOGIC;
  signal \uo[4]_i_70_n_0\ : STD_LOGIC;
  signal \uo[4]_i_71_n_0\ : STD_LOGIC;
  signal \uo[4]_i_72_n_0\ : STD_LOGIC;
  signal \uo[4]_i_74_n_0\ : STD_LOGIC;
  signal \uo[4]_i_75_n_0\ : STD_LOGIC;
  signal \uo[4]_i_76_n_0\ : STD_LOGIC;
  signal \uo[4]_i_77_n_0\ : STD_LOGIC;
  signal \uo[4]_i_78_n_0\ : STD_LOGIC;
  signal \uo[4]_i_79_n_0\ : STD_LOGIC;
  signal \uo[4]_i_80_n_0\ : STD_LOGIC;
  signal \uo[4]_i_81_n_0\ : STD_LOGIC;
  signal \uo[4]_i_84_n_0\ : STD_LOGIC;
  signal \uo[4]_i_85_n_0\ : STD_LOGIC;
  signal \uo[4]_i_86_n_0\ : STD_LOGIC;
  signal \uo[4]_i_87_n_0\ : STD_LOGIC;
  signal \uo[4]_i_88_n_0\ : STD_LOGIC;
  signal \uo[4]_i_89_n_0\ : STD_LOGIC;
  signal \uo[4]_i_90_n_0\ : STD_LOGIC;
  signal \uo[4]_i_91_n_0\ : STD_LOGIC;
  signal \uo[4]_i_92_n_0\ : STD_LOGIC;
  signal \uo[4]_i_93_n_0\ : STD_LOGIC;
  signal \uo[4]_i_94_n_0\ : STD_LOGIC;
  signal \uo[4]_i_95_n_0\ : STD_LOGIC;
  signal \uo[4]_i_96_n_0\ : STD_LOGIC;
  signal \uo[4]_i_97_n_0\ : STD_LOGIC;
  signal \uo[4]_i_98_n_0\ : STD_LOGIC;
  signal \uo[4]_i_99_n_0\ : STD_LOGIC;
  signal \uo[5]_i_7_n_0\ : STD_LOGIC;
  signal \uo[7]_i_100_n_0\ : STD_LOGIC;
  signal \uo[7]_i_101_n_0\ : STD_LOGIC;
  signal \uo[7]_i_102_n_0\ : STD_LOGIC;
  signal \uo[7]_i_103_n_0\ : STD_LOGIC;
  signal \uo[7]_i_104_n_0\ : STD_LOGIC;
  signal \uo[7]_i_105_n_0\ : STD_LOGIC;
  signal \uo[7]_i_107_n_0\ : STD_LOGIC;
  signal \uo[7]_i_108_n_0\ : STD_LOGIC;
  signal \uo[7]_i_110_n_0\ : STD_LOGIC;
  signal \uo[7]_i_111_n_0\ : STD_LOGIC;
  signal \uo[7]_i_112_n_0\ : STD_LOGIC;
  signal \uo[7]_i_113_n_0\ : STD_LOGIC;
  signal \uo[7]_i_114_n_0\ : STD_LOGIC;
  signal \uo[7]_i_115_n_0\ : STD_LOGIC;
  signal \uo[7]_i_116_n_0\ : STD_LOGIC;
  signal \uo[7]_i_117_n_0\ : STD_LOGIC;
  signal \uo[7]_i_118_n_0\ : STD_LOGIC;
  signal \uo[7]_i_119_n_0\ : STD_LOGIC;
  signal \uo[7]_i_120_n_0\ : STD_LOGIC;
  signal \uo[7]_i_121_n_0\ : STD_LOGIC;
  signal \uo[7]_i_122_n_0\ : STD_LOGIC;
  signal \uo[7]_i_123_n_0\ : STD_LOGIC;
  signal \uo[7]_i_124_n_0\ : STD_LOGIC;
  signal \uo[7]_i_126_n_0\ : STD_LOGIC;
  signal \uo[7]_i_127_n_0\ : STD_LOGIC;
  signal \uo[7]_i_128_n_0\ : STD_LOGIC;
  signal \uo[7]_i_129_n_0\ : STD_LOGIC;
  signal \uo[7]_i_130_n_0\ : STD_LOGIC;
  signal \uo[7]_i_131_n_0\ : STD_LOGIC;
  signal \uo[7]_i_44_n_0\ : STD_LOGIC;
  signal \uo[7]_i_45_n_0\ : STD_LOGIC;
  signal \uo[7]_i_46_n_0\ : STD_LOGIC;
  signal \uo[7]_i_47_n_0\ : STD_LOGIC;
  signal \uo[7]_i_48_n_0\ : STD_LOGIC;
  signal \uo[7]_i_49_n_0\ : STD_LOGIC;
  signal \uo[7]_i_50_n_0\ : STD_LOGIC;
  signal \uo[7]_i_51_n_0\ : STD_LOGIC;
  signal \uo[7]_i_52_n_0\ : STD_LOGIC;
  signal \uo[7]_i_53_n_0\ : STD_LOGIC;
  signal \uo[7]_i_54_n_0\ : STD_LOGIC;
  signal \uo[7]_i_55_n_0\ : STD_LOGIC;
  signal \uo[7]_i_64_n_0\ : STD_LOGIC;
  signal \uo[7]_i_66_n_0\ : STD_LOGIC;
  signal \uo[7]_i_67_n_0\ : STD_LOGIC;
  signal \uo[7]_i_68_n_0\ : STD_LOGIC;
  signal \uo[7]_i_69_n_0\ : STD_LOGIC;
  signal \uo[7]_i_70_n_0\ : STD_LOGIC;
  signal \uo[7]_i_71_n_0\ : STD_LOGIC;
  signal \uo[7]_i_72_n_0\ : STD_LOGIC;
  signal \uo[7]_i_73_n_0\ : STD_LOGIC;
  signal \uo[7]_i_76_n_0\ : STD_LOGIC;
  signal \uo[7]_i_77_n_0\ : STD_LOGIC;
  signal \uo[7]_i_80_n_0\ : STD_LOGIC;
  signal \uo[7]_i_81_n_0\ : STD_LOGIC;
  signal \uo[7]_i_82_n_0\ : STD_LOGIC;
  signal \uo[7]_i_83_n_0\ : STD_LOGIC;
  signal \uo[7]_i_84_n_0\ : STD_LOGIC;
  signal \uo[7]_i_85_n_0\ : STD_LOGIC;
  signal \uo[7]_i_86_n_0\ : STD_LOGIC;
  signal \uo[7]_i_87_n_0\ : STD_LOGIC;
  signal \uo[7]_i_88_n_0\ : STD_LOGIC;
  signal \uo[7]_i_89_n_0\ : STD_LOGIC;
  signal \uo[7]_i_90_n_0\ : STD_LOGIC;
  signal \uo[7]_i_91_n_0\ : STD_LOGIC;
  signal \uo[7]_i_92_n_0\ : STD_LOGIC;
  signal \uo[7]_i_93_n_0\ : STD_LOGIC;
  signal \uo[7]_i_94_n_0\ : STD_LOGIC;
  signal \uo[7]_i_95_n_0\ : STD_LOGIC;
  signal \uo[7]_i_96_n_0\ : STD_LOGIC;
  signal \uo[7]_i_97_n_0\ : STD_LOGIC;
  signal \uo[7]_i_98_n_0\ : STD_LOGIC;
  signal \uo[7]_i_99_n_0\ : STD_LOGIC;
  signal \uo[7]_i_9_n_0\ : STD_LOGIC;
  signal \uo_reg[0]_i_16_n_1\ : STD_LOGIC;
  signal \uo_reg[0]_i_16_n_2\ : STD_LOGIC;
  signal \uo_reg[0]_i_16_n_3\ : STD_LOGIC;
  signal \uo_reg[1]_i_103_n_1\ : STD_LOGIC;
  signal \uo_reg[1]_i_103_n_3\ : STD_LOGIC;
  signal \uo_reg[1]_i_103_n_6\ : STD_LOGIC;
  signal \uo_reg[1]_i_103_n_7\ : STD_LOGIC;
  signal \uo_reg[1]_i_21_n_3\ : STD_LOGIC;
  signal \uo_reg[1]_i_22_n_3\ : STD_LOGIC;
  signal \uo_reg[1]_i_23_n_0\ : STD_LOGIC;
  signal \uo_reg[1]_i_23_n_1\ : STD_LOGIC;
  signal \uo_reg[1]_i_23_n_2\ : STD_LOGIC;
  signal \uo_reg[1]_i_23_n_3\ : STD_LOGIC;
  signal \uo_reg[1]_i_26_n_0\ : STD_LOGIC;
  signal \uo_reg[1]_i_26_n_1\ : STD_LOGIC;
  signal \uo_reg[1]_i_26_n_2\ : STD_LOGIC;
  signal \uo_reg[1]_i_26_n_3\ : STD_LOGIC;
  signal \uo_reg[1]_i_29_n_0\ : STD_LOGIC;
  signal \uo_reg[1]_i_29_n_1\ : STD_LOGIC;
  signal \uo_reg[1]_i_29_n_2\ : STD_LOGIC;
  signal \uo_reg[1]_i_29_n_3\ : STD_LOGIC;
  signal \uo_reg[1]_i_38_n_3\ : STD_LOGIC;
  signal \uo_reg[1]_i_39_n_0\ : STD_LOGIC;
  signal \uo_reg[1]_i_39_n_1\ : STD_LOGIC;
  signal \uo_reg[1]_i_39_n_2\ : STD_LOGIC;
  signal \uo_reg[1]_i_39_n_3\ : STD_LOGIC;
  signal \uo_reg[1]_i_48_n_0\ : STD_LOGIC;
  signal \uo_reg[1]_i_48_n_2\ : STD_LOGIC;
  signal \uo_reg[1]_i_48_n_3\ : STD_LOGIC;
  signal \uo_reg[1]_i_48_n_5\ : STD_LOGIC;
  signal \uo_reg[1]_i_48_n_6\ : STD_LOGIC;
  signal \uo_reg[1]_i_48_n_7\ : STD_LOGIC;
  signal \uo_reg[1]_i_57_n_0\ : STD_LOGIC;
  signal \uo_reg[1]_i_57_n_1\ : STD_LOGIC;
  signal \uo_reg[1]_i_57_n_2\ : STD_LOGIC;
  signal \uo_reg[1]_i_57_n_3\ : STD_LOGIC;
  signal \uo_reg[1]_i_57_n_4\ : STD_LOGIC;
  signal \uo_reg[1]_i_57_n_5\ : STD_LOGIC;
  signal \uo_reg[1]_i_57_n_6\ : STD_LOGIC;
  signal \uo_reg[1]_i_57_n_7\ : STD_LOGIC;
  signal \uo_reg[1]_i_58_n_0\ : STD_LOGIC;
  signal \uo_reg[1]_i_58_n_1\ : STD_LOGIC;
  signal \uo_reg[1]_i_58_n_2\ : STD_LOGIC;
  signal \uo_reg[1]_i_58_n_3\ : STD_LOGIC;
  signal \uo_reg[1]_i_58_n_4\ : STD_LOGIC;
  signal \uo_reg[1]_i_58_n_5\ : STD_LOGIC;
  signal \uo_reg[1]_i_58_n_6\ : STD_LOGIC;
  signal \uo_reg[1]_i_58_n_7\ : STD_LOGIC;
  signal \uo_reg[1]_i_67_n_0\ : STD_LOGIC;
  signal \uo_reg[1]_i_67_n_1\ : STD_LOGIC;
  signal \uo_reg[1]_i_67_n_2\ : STD_LOGIC;
  signal \uo_reg[1]_i_67_n_3\ : STD_LOGIC;
  signal \uo_reg[1]_i_67_n_4\ : STD_LOGIC;
  signal \uo_reg[1]_i_67_n_5\ : STD_LOGIC;
  signal \uo_reg[1]_i_67_n_6\ : STD_LOGIC;
  signal \uo_reg[1]_i_67_n_7\ : STD_LOGIC;
  signal \uo_reg[1]_i_71_n_0\ : STD_LOGIC;
  signal \uo_reg[1]_i_71_n_1\ : STD_LOGIC;
  signal \uo_reg[1]_i_71_n_2\ : STD_LOGIC;
  signal \uo_reg[1]_i_71_n_3\ : STD_LOGIC;
  signal \uo_reg[1]_i_71_n_4\ : STD_LOGIC;
  signal \uo_reg[1]_i_71_n_5\ : STD_LOGIC;
  signal \uo_reg[1]_i_71_n_6\ : STD_LOGIC;
  signal \uo_reg[1]_i_71_n_7\ : STD_LOGIC;
  signal \uo_reg[2]_i_114_n_0\ : STD_LOGIC;
  signal \uo_reg[2]_i_114_n_1\ : STD_LOGIC;
  signal \uo_reg[2]_i_114_n_2\ : STD_LOGIC;
  signal \uo_reg[2]_i_114_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_115_n_0\ : STD_LOGIC;
  signal \uo_reg[2]_i_115_n_1\ : STD_LOGIC;
  signal \uo_reg[2]_i_115_n_2\ : STD_LOGIC;
  signal \uo_reg[2]_i_115_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_123_n_0\ : STD_LOGIC;
  signal \uo_reg[2]_i_123_n_1\ : STD_LOGIC;
  signal \uo_reg[2]_i_123_n_2\ : STD_LOGIC;
  signal \uo_reg[2]_i_123_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_132_n_2\ : STD_LOGIC;
  signal \uo_reg[2]_i_132_n_7\ : STD_LOGIC;
  signal \uo_reg[2]_i_133_n_0\ : STD_LOGIC;
  signal \uo_reg[2]_i_133_n_1\ : STD_LOGIC;
  signal \uo_reg[2]_i_133_n_2\ : STD_LOGIC;
  signal \uo_reg[2]_i_133_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_141_n_0\ : STD_LOGIC;
  signal \uo_reg[2]_i_141_n_1\ : STD_LOGIC;
  signal \uo_reg[2]_i_141_n_2\ : STD_LOGIC;
  signal \uo_reg[2]_i_141_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_150_n_1\ : STD_LOGIC;
  signal \uo_reg[2]_i_150_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_150_n_6\ : STD_LOGIC;
  signal \uo_reg[2]_i_150_n_7\ : STD_LOGIC;
  signal \uo_reg[2]_i_151_n_0\ : STD_LOGIC;
  signal \uo_reg[2]_i_151_n_1\ : STD_LOGIC;
  signal \uo_reg[2]_i_151_n_2\ : STD_LOGIC;
  signal \uo_reg[2]_i_151_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_160_n_1\ : STD_LOGIC;
  signal \uo_reg[2]_i_160_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_160_n_6\ : STD_LOGIC;
  signal \uo_reg[2]_i_160_n_7\ : STD_LOGIC;
  signal \uo_reg[2]_i_161_n_0\ : STD_LOGIC;
  signal \uo_reg[2]_i_161_n_1\ : STD_LOGIC;
  signal \uo_reg[2]_i_161_n_2\ : STD_LOGIC;
  signal \uo_reg[2]_i_161_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_170_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_171_n_0\ : STD_LOGIC;
  signal \uo_reg[2]_i_171_n_1\ : STD_LOGIC;
  signal \uo_reg[2]_i_171_n_2\ : STD_LOGIC;
  signal \uo_reg[2]_i_171_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_18_n_2\ : STD_LOGIC;
  signal \uo_reg[2]_i_18_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_217_n_0\ : STD_LOGIC;
  signal \uo_reg[2]_i_217_n_1\ : STD_LOGIC;
  signal \uo_reg[2]_i_217_n_2\ : STD_LOGIC;
  signal \uo_reg[2]_i_217_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_217_n_4\ : STD_LOGIC;
  signal \uo_reg[2]_i_217_n_5\ : STD_LOGIC;
  signal \uo_reg[2]_i_217_n_6\ : STD_LOGIC;
  signal \uo_reg[2]_i_217_n_7\ : STD_LOGIC;
  signal \uo_reg[2]_i_218_n_0\ : STD_LOGIC;
  signal \uo_reg[2]_i_218_n_1\ : STD_LOGIC;
  signal \uo_reg[2]_i_218_n_2\ : STD_LOGIC;
  signal \uo_reg[2]_i_218_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_218_n_4\ : STD_LOGIC;
  signal \uo_reg[2]_i_218_n_5\ : STD_LOGIC;
  signal \uo_reg[2]_i_218_n_6\ : STD_LOGIC;
  signal \uo_reg[2]_i_218_n_7\ : STD_LOGIC;
  signal \uo_reg[2]_i_219_n_0\ : STD_LOGIC;
  signal \uo_reg[2]_i_219_n_1\ : STD_LOGIC;
  signal \uo_reg[2]_i_219_n_2\ : STD_LOGIC;
  signal \uo_reg[2]_i_219_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_219_n_4\ : STD_LOGIC;
  signal \uo_reg[2]_i_219_n_5\ : STD_LOGIC;
  signal \uo_reg[2]_i_219_n_6\ : STD_LOGIC;
  signal \uo_reg[2]_i_219_n_7\ : STD_LOGIC;
  signal \uo_reg[2]_i_220_n_2\ : STD_LOGIC;
  signal \uo_reg[2]_i_220_n_7\ : STD_LOGIC;
  signal \uo_reg[2]_i_238_n_0\ : STD_LOGIC;
  signal \uo_reg[2]_i_238_n_1\ : STD_LOGIC;
  signal \uo_reg[2]_i_238_n_2\ : STD_LOGIC;
  signal \uo_reg[2]_i_238_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_238_n_4\ : STD_LOGIC;
  signal \uo_reg[2]_i_238_n_5\ : STD_LOGIC;
  signal \uo_reg[2]_i_238_n_6\ : STD_LOGIC;
  signal \uo_reg[2]_i_238_n_7\ : STD_LOGIC;
  signal \uo_reg[2]_i_239_n_0\ : STD_LOGIC;
  signal \uo_reg[2]_i_239_n_1\ : STD_LOGIC;
  signal \uo_reg[2]_i_239_n_2\ : STD_LOGIC;
  signal \uo_reg[2]_i_239_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_239_n_4\ : STD_LOGIC;
  signal \uo_reg[2]_i_239_n_5\ : STD_LOGIC;
  signal \uo_reg[2]_i_239_n_6\ : STD_LOGIC;
  signal \uo_reg[2]_i_239_n_7\ : STD_LOGIC;
  signal \uo_reg[2]_i_240_n_1\ : STD_LOGIC;
  signal \uo_reg[2]_i_240_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_240_n_6\ : STD_LOGIC;
  signal \uo_reg[2]_i_252_n_0\ : STD_LOGIC;
  signal \uo_reg[2]_i_252_n_1\ : STD_LOGIC;
  signal \uo_reg[2]_i_252_n_2\ : STD_LOGIC;
  signal \uo_reg[2]_i_252_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_252_n_4\ : STD_LOGIC;
  signal \uo_reg[2]_i_252_n_5\ : STD_LOGIC;
  signal \uo_reg[2]_i_252_n_6\ : STD_LOGIC;
  signal \uo_reg[2]_i_252_n_7\ : STD_LOGIC;
  signal \uo_reg[2]_i_253_n_0\ : STD_LOGIC;
  signal \uo_reg[2]_i_253_n_1\ : STD_LOGIC;
  signal \uo_reg[2]_i_253_n_2\ : STD_LOGIC;
  signal \uo_reg[2]_i_253_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_253_n_4\ : STD_LOGIC;
  signal \uo_reg[2]_i_253_n_5\ : STD_LOGIC;
  signal \uo_reg[2]_i_253_n_6\ : STD_LOGIC;
  signal \uo_reg[2]_i_253_n_7\ : STD_LOGIC;
  signal \uo_reg[2]_i_263_n_0\ : STD_LOGIC;
  signal \uo_reg[2]_i_263_n_1\ : STD_LOGIC;
  signal \uo_reg[2]_i_263_n_2\ : STD_LOGIC;
  signal \uo_reg[2]_i_263_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_263_n_4\ : STD_LOGIC;
  signal \uo_reg[2]_i_263_n_5\ : STD_LOGIC;
  signal \uo_reg[2]_i_263_n_6\ : STD_LOGIC;
  signal \uo_reg[2]_i_263_n_7\ : STD_LOGIC;
  signal \uo_reg[2]_i_264_n_0\ : STD_LOGIC;
  signal \uo_reg[2]_i_264_n_1\ : STD_LOGIC;
  signal \uo_reg[2]_i_264_n_2\ : STD_LOGIC;
  signal \uo_reg[2]_i_264_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_264_n_4\ : STD_LOGIC;
  signal \uo_reg[2]_i_264_n_5\ : STD_LOGIC;
  signal \uo_reg[2]_i_264_n_6\ : STD_LOGIC;
  signal \uo_reg[2]_i_264_n_7\ : STD_LOGIC;
  signal \uo_reg[2]_i_274_n_0\ : STD_LOGIC;
  signal \uo_reg[2]_i_274_n_1\ : STD_LOGIC;
  signal \uo_reg[2]_i_274_n_2\ : STD_LOGIC;
  signal \uo_reg[2]_i_274_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_274_n_4\ : STD_LOGIC;
  signal \uo_reg[2]_i_274_n_5\ : STD_LOGIC;
  signal \uo_reg[2]_i_274_n_6\ : STD_LOGIC;
  signal \uo_reg[2]_i_285_n_0\ : STD_LOGIC;
  signal \uo_reg[2]_i_285_n_1\ : STD_LOGIC;
  signal \uo_reg[2]_i_285_n_2\ : STD_LOGIC;
  signal \uo_reg[2]_i_285_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_285_n_4\ : STD_LOGIC;
  signal \uo_reg[2]_i_285_n_5\ : STD_LOGIC;
  signal \uo_reg[2]_i_285_n_6\ : STD_LOGIC;
  signal \uo_reg[2]_i_285_n_7\ : STD_LOGIC;
  signal \uo_reg[2]_i_295_n_0\ : STD_LOGIC;
  signal \uo_reg[2]_i_295_n_1\ : STD_LOGIC;
  signal \uo_reg[2]_i_295_n_2\ : STD_LOGIC;
  signal \uo_reg[2]_i_295_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_295_n_4\ : STD_LOGIC;
  signal \uo_reg[2]_i_295_n_5\ : STD_LOGIC;
  signal \uo_reg[2]_i_295_n_6\ : STD_LOGIC;
  signal \uo_reg[2]_i_305_n_0\ : STD_LOGIC;
  signal \uo_reg[2]_i_305_n_1\ : STD_LOGIC;
  signal \uo_reg[2]_i_305_n_2\ : STD_LOGIC;
  signal \uo_reg[2]_i_305_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_305_n_4\ : STD_LOGIC;
  signal \uo_reg[2]_i_305_n_5\ : STD_LOGIC;
  signal \uo_reg[2]_i_305_n_6\ : STD_LOGIC;
  signal \uo_reg[2]_i_305_n_7\ : STD_LOGIC;
  signal \uo_reg[2]_i_306_n_0\ : STD_LOGIC;
  signal \uo_reg[2]_i_306_n_1\ : STD_LOGIC;
  signal \uo_reg[2]_i_306_n_2\ : STD_LOGIC;
  signal \uo_reg[2]_i_306_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_306_n_4\ : STD_LOGIC;
  signal \uo_reg[2]_i_306_n_5\ : STD_LOGIC;
  signal \uo_reg[2]_i_306_n_6\ : STD_LOGIC;
  signal \uo_reg[2]_i_306_n_7\ : STD_LOGIC;
  signal \uo_reg[2]_i_31_n_0\ : STD_LOGIC;
  signal \uo_reg[2]_i_31_n_1\ : STD_LOGIC;
  signal \uo_reg[2]_i_31_n_2\ : STD_LOGIC;
  signal \uo_reg[2]_i_31_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_32_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_33_n_0\ : STD_LOGIC;
  signal \uo_reg[2]_i_33_n_1\ : STD_LOGIC;
  signal \uo_reg[2]_i_33_n_2\ : STD_LOGIC;
  signal \uo_reg[2]_i_33_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_342_n_1\ : STD_LOGIC;
  signal \uo_reg[2]_i_342_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_342_n_6\ : STD_LOGIC;
  signal \uo_reg[2]_i_343_n_0\ : STD_LOGIC;
  signal \uo_reg[2]_i_343_n_2\ : STD_LOGIC;
  signal \uo_reg[2]_i_343_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_343_n_5\ : STD_LOGIC;
  signal \uo_reg[2]_i_343_n_6\ : STD_LOGIC;
  signal \uo_reg[2]_i_343_n_7\ : STD_LOGIC;
  signal \uo_reg[2]_i_344_n_0\ : STD_LOGIC;
  signal \uo_reg[2]_i_344_n_1\ : STD_LOGIC;
  signal \uo_reg[2]_i_344_n_2\ : STD_LOGIC;
  signal \uo_reg[2]_i_344_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_344_n_4\ : STD_LOGIC;
  signal \uo_reg[2]_i_344_n_5\ : STD_LOGIC;
  signal \uo_reg[2]_i_344_n_6\ : STD_LOGIC;
  signal \uo_reg[2]_i_344_n_7\ : STD_LOGIC;
  signal \uo_reg[2]_i_34_n_2\ : STD_LOGIC;
  signal \uo_reg[2]_i_35_n_2\ : STD_LOGIC;
  signal \uo_reg[2]_i_35_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_36_n_0\ : STD_LOGIC;
  signal \uo_reg[2]_i_36_n_1\ : STD_LOGIC;
  signal \uo_reg[2]_i_36_n_2\ : STD_LOGIC;
  signal \uo_reg[2]_i_36_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_37_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_38_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_39_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_40_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_41_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_42_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_43_n_0\ : STD_LOGIC;
  signal \uo_reg[2]_i_43_n_1\ : STD_LOGIC;
  signal \uo_reg[2]_i_43_n_2\ : STD_LOGIC;
  signal \uo_reg[2]_i_43_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_49_n_0\ : STD_LOGIC;
  signal \uo_reg[2]_i_49_n_1\ : STD_LOGIC;
  signal \uo_reg[2]_i_49_n_2\ : STD_LOGIC;
  signal \uo_reg[2]_i_49_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_50_n_0\ : STD_LOGIC;
  signal \uo_reg[2]_i_50_n_1\ : STD_LOGIC;
  signal \uo_reg[2]_i_50_n_2\ : STD_LOGIC;
  signal \uo_reg[2]_i_50_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_59_n_0\ : STD_LOGIC;
  signal \uo_reg[2]_i_59_n_1\ : STD_LOGIC;
  signal \uo_reg[2]_i_59_n_2\ : STD_LOGIC;
  signal \uo_reg[2]_i_59_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_60_n_0\ : STD_LOGIC;
  signal \uo_reg[2]_i_60_n_2\ : STD_LOGIC;
  signal \uo_reg[2]_i_60_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_69_n_0\ : STD_LOGIC;
  signal \uo_reg[2]_i_69_n_1\ : STD_LOGIC;
  signal \uo_reg[2]_i_69_n_2\ : STD_LOGIC;
  signal \uo_reg[2]_i_69_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_72_n_0\ : STD_LOGIC;
  signal \uo_reg[2]_i_72_n_1\ : STD_LOGIC;
  signal \uo_reg[2]_i_72_n_2\ : STD_LOGIC;
  signal \uo_reg[2]_i_72_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_73_n_0\ : STD_LOGIC;
  signal \uo_reg[2]_i_73_n_1\ : STD_LOGIC;
  signal \uo_reg[2]_i_73_n_2\ : STD_LOGIC;
  signal \uo_reg[2]_i_73_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_76_n_0\ : STD_LOGIC;
  signal \uo_reg[2]_i_76_n_1\ : STD_LOGIC;
  signal \uo_reg[2]_i_76_n_2\ : STD_LOGIC;
  signal \uo_reg[2]_i_76_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_79_n_0\ : STD_LOGIC;
  signal \uo_reg[2]_i_79_n_1\ : STD_LOGIC;
  signal \uo_reg[2]_i_79_n_2\ : STD_LOGIC;
  signal \uo_reg[2]_i_79_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_82_n_0\ : STD_LOGIC;
  signal \uo_reg[2]_i_82_n_1\ : STD_LOGIC;
  signal \uo_reg[2]_i_82_n_2\ : STD_LOGIC;
  signal \uo_reg[2]_i_82_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_93_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_94_n_0\ : STD_LOGIC;
  signal \uo_reg[2]_i_94_n_1\ : STD_LOGIC;
  signal \uo_reg[2]_i_94_n_2\ : STD_LOGIC;
  signal \uo_reg[2]_i_94_n_3\ : STD_LOGIC;
  signal \uo_reg[2]_i_95_n_0\ : STD_LOGIC;
  signal \uo_reg[2]_i_95_n_1\ : STD_LOGIC;
  signal \uo_reg[2]_i_95_n_2\ : STD_LOGIC;
  signal \uo_reg[2]_i_95_n_3\ : STD_LOGIC;
  signal \uo_reg[4]_i_103_n_0\ : STD_LOGIC;
  signal \uo_reg[4]_i_103_n_1\ : STD_LOGIC;
  signal \uo_reg[4]_i_103_n_2\ : STD_LOGIC;
  signal \uo_reg[4]_i_103_n_3\ : STD_LOGIC;
  signal \uo_reg[4]_i_103_n_4\ : STD_LOGIC;
  signal \uo_reg[4]_i_103_n_5\ : STD_LOGIC;
  signal \uo_reg[4]_i_103_n_6\ : STD_LOGIC;
  signal \uo_reg[4]_i_103_n_7\ : STD_LOGIC;
  signal \uo_reg[4]_i_104_n_0\ : STD_LOGIC;
  signal \uo_reg[4]_i_104_n_1\ : STD_LOGIC;
  signal \uo_reg[4]_i_104_n_2\ : STD_LOGIC;
  signal \uo_reg[4]_i_104_n_3\ : STD_LOGIC;
  signal \uo_reg[4]_i_104_n_4\ : STD_LOGIC;
  signal \uo_reg[4]_i_104_n_5\ : STD_LOGIC;
  signal \uo_reg[4]_i_104_n_6\ : STD_LOGIC;
  signal \uo_reg[4]_i_104_n_7\ : STD_LOGIC;
  signal \uo_reg[4]_i_105_n_1\ : STD_LOGIC;
  signal \uo_reg[4]_i_105_n_3\ : STD_LOGIC;
  signal \uo_reg[4]_i_105_n_6\ : STD_LOGIC;
  signal \uo_reg[4]_i_117_n_0\ : STD_LOGIC;
  signal \uo_reg[4]_i_117_n_1\ : STD_LOGIC;
  signal \uo_reg[4]_i_117_n_2\ : STD_LOGIC;
  signal \uo_reg[4]_i_117_n_3\ : STD_LOGIC;
  signal \uo_reg[4]_i_126_n_0\ : STD_LOGIC;
  signal \uo_reg[4]_i_126_n_1\ : STD_LOGIC;
  signal \uo_reg[4]_i_126_n_2\ : STD_LOGIC;
  signal \uo_reg[4]_i_126_n_3\ : STD_LOGIC;
  signal \uo_reg[4]_i_126_n_4\ : STD_LOGIC;
  signal \uo_reg[4]_i_126_n_5\ : STD_LOGIC;
  signal \uo_reg[4]_i_126_n_6\ : STD_LOGIC;
  signal \uo_reg[4]_i_126_n_7\ : STD_LOGIC;
  signal \uo_reg[4]_i_127_n_0\ : STD_LOGIC;
  signal \uo_reg[4]_i_127_n_1\ : STD_LOGIC;
  signal \uo_reg[4]_i_127_n_2\ : STD_LOGIC;
  signal \uo_reg[4]_i_127_n_3\ : STD_LOGIC;
  signal \uo_reg[4]_i_127_n_4\ : STD_LOGIC;
  signal \uo_reg[4]_i_127_n_5\ : STD_LOGIC;
  signal \uo_reg[4]_i_127_n_6\ : STD_LOGIC;
  signal \uo_reg[4]_i_127_n_7\ : STD_LOGIC;
  signal \uo_reg[4]_i_128_n_0\ : STD_LOGIC;
  signal \uo_reg[4]_i_128_n_1\ : STD_LOGIC;
  signal \uo_reg[4]_i_128_n_2\ : STD_LOGIC;
  signal \uo_reg[4]_i_128_n_3\ : STD_LOGIC;
  signal \uo_reg[4]_i_139_n_0\ : STD_LOGIC;
  signal \uo_reg[4]_i_139_n_1\ : STD_LOGIC;
  signal \uo_reg[4]_i_139_n_2\ : STD_LOGIC;
  signal \uo_reg[4]_i_139_n_3\ : STD_LOGIC;
  signal \uo_reg[4]_i_139_n_4\ : STD_LOGIC;
  signal \uo_reg[4]_i_139_n_5\ : STD_LOGIC;
  signal \uo_reg[4]_i_139_n_6\ : STD_LOGIC;
  signal \uo_reg[4]_i_139_n_7\ : STD_LOGIC;
  signal \uo_reg[4]_i_142_n_0\ : STD_LOGIC;
  signal \uo_reg[4]_i_142_n_2\ : STD_LOGIC;
  signal \uo_reg[4]_i_142_n_3\ : STD_LOGIC;
  signal \uo_reg[4]_i_142_n_5\ : STD_LOGIC;
  signal \uo_reg[4]_i_142_n_6\ : STD_LOGIC;
  signal \uo_reg[4]_i_142_n_7\ : STD_LOGIC;
  signal \uo_reg[4]_i_159_n_0\ : STD_LOGIC;
  signal \uo_reg[4]_i_159_n_1\ : STD_LOGIC;
  signal \uo_reg[4]_i_159_n_2\ : STD_LOGIC;
  signal \uo_reg[4]_i_159_n_3\ : STD_LOGIC;
  signal \uo_reg[4]_i_159_n_4\ : STD_LOGIC;
  signal \uo_reg[4]_i_159_n_5\ : STD_LOGIC;
  signal \uo_reg[4]_i_159_n_6\ : STD_LOGIC;
  signal \uo_reg[4]_i_15_n_1\ : STD_LOGIC;
  signal \uo_reg[4]_i_15_n_2\ : STD_LOGIC;
  signal \uo_reg[4]_i_15_n_3\ : STD_LOGIC;
  signal \uo_reg[4]_i_160_n_0\ : STD_LOGIC;
  signal \uo_reg[4]_i_160_n_1\ : STD_LOGIC;
  signal \uo_reg[4]_i_160_n_2\ : STD_LOGIC;
  signal \uo_reg[4]_i_160_n_3\ : STD_LOGIC;
  signal \uo_reg[4]_i_160_n_4\ : STD_LOGIC;
  signal \uo_reg[4]_i_160_n_5\ : STD_LOGIC;
  signal \uo_reg[4]_i_160_n_6\ : STD_LOGIC;
  signal \uo_reg[4]_i_160_n_7\ : STD_LOGIC;
  signal \uo_reg[4]_i_161_n_1\ : STD_LOGIC;
  signal \uo_reg[4]_i_161_n_3\ : STD_LOGIC;
  signal \uo_reg[4]_i_161_n_6\ : STD_LOGIC;
  signal \uo_reg[4]_i_187_n_0\ : STD_LOGIC;
  signal \uo_reg[4]_i_187_n_1\ : STD_LOGIC;
  signal \uo_reg[4]_i_187_n_2\ : STD_LOGIC;
  signal \uo_reg[4]_i_187_n_3\ : STD_LOGIC;
  signal \uo_reg[4]_i_187_n_4\ : STD_LOGIC;
  signal \uo_reg[4]_i_187_n_5\ : STD_LOGIC;
  signal \uo_reg[4]_i_187_n_6\ : STD_LOGIC;
  signal \uo_reg[4]_i_188_n_0\ : STD_LOGIC;
  signal \uo_reg[4]_i_188_n_1\ : STD_LOGIC;
  signal \uo_reg[4]_i_188_n_2\ : STD_LOGIC;
  signal \uo_reg[4]_i_188_n_3\ : STD_LOGIC;
  signal \uo_reg[4]_i_188_n_4\ : STD_LOGIC;
  signal \uo_reg[4]_i_188_n_5\ : STD_LOGIC;
  signal \uo_reg[4]_i_188_n_6\ : STD_LOGIC;
  signal \uo_reg[4]_i_188_n_7\ : STD_LOGIC;
  signal \uo_reg[4]_i_31_n_3\ : STD_LOGIC;
  signal \uo_reg[4]_i_32_n_2\ : STD_LOGIC;
  signal \uo_reg[4]_i_32_n_3\ : STD_LOGIC;
  signal \uo_reg[4]_i_33_n_3\ : STD_LOGIC;
  signal \uo_reg[4]_i_35_n_0\ : STD_LOGIC;
  signal \uo_reg[4]_i_35_n_1\ : STD_LOGIC;
  signal \uo_reg[4]_i_35_n_2\ : STD_LOGIC;
  signal \uo_reg[4]_i_35_n_3\ : STD_LOGIC;
  signal \uo_reg[4]_i_36_n_0\ : STD_LOGIC;
  signal \uo_reg[4]_i_36_n_1\ : STD_LOGIC;
  signal \uo_reg[4]_i_36_n_2\ : STD_LOGIC;
  signal \uo_reg[4]_i_36_n_3\ : STD_LOGIC;
  signal \uo_reg[4]_i_39_n_0\ : STD_LOGIC;
  signal \uo_reg[4]_i_39_n_1\ : STD_LOGIC;
  signal \uo_reg[4]_i_39_n_2\ : STD_LOGIC;
  signal \uo_reg[4]_i_39_n_3\ : STD_LOGIC;
  signal \uo_reg[4]_i_41_n_0\ : STD_LOGIC;
  signal \uo_reg[4]_i_41_n_1\ : STD_LOGIC;
  signal \uo_reg[4]_i_41_n_2\ : STD_LOGIC;
  signal \uo_reg[4]_i_41_n_3\ : STD_LOGIC;
  signal \uo_reg[4]_i_45_n_0\ : STD_LOGIC;
  signal \uo_reg[4]_i_45_n_1\ : STD_LOGIC;
  signal \uo_reg[4]_i_45_n_2\ : STD_LOGIC;
  signal \uo_reg[4]_i_45_n_3\ : STD_LOGIC;
  signal \uo_reg[4]_i_54_n_0\ : STD_LOGIC;
  signal \uo_reg[4]_i_54_n_1\ : STD_LOGIC;
  signal \uo_reg[4]_i_54_n_2\ : STD_LOGIC;
  signal \uo_reg[4]_i_54_n_3\ : STD_LOGIC;
  signal \uo_reg[4]_i_63_n_1\ : STD_LOGIC;
  signal \uo_reg[4]_i_63_n_3\ : STD_LOGIC;
  signal \uo_reg[4]_i_63_n_6\ : STD_LOGIC;
  signal \uo_reg[4]_i_63_n_7\ : STD_LOGIC;
  signal \uo_reg[4]_i_64_n_0\ : STD_LOGIC;
  signal \uo_reg[4]_i_64_n_1\ : STD_LOGIC;
  signal \uo_reg[4]_i_64_n_2\ : STD_LOGIC;
  signal \uo_reg[4]_i_64_n_3\ : STD_LOGIC;
  signal \uo_reg[4]_i_73_n_0\ : STD_LOGIC;
  signal \uo_reg[4]_i_73_n_1\ : STD_LOGIC;
  signal \uo_reg[4]_i_73_n_2\ : STD_LOGIC;
  signal \uo_reg[4]_i_73_n_3\ : STD_LOGIC;
  signal \uo_reg[4]_i_82_n_3\ : STD_LOGIC;
  signal \uo_reg[4]_i_83_n_0\ : STD_LOGIC;
  signal \uo_reg[4]_i_83_n_1\ : STD_LOGIC;
  signal \uo_reg[4]_i_83_n_2\ : STD_LOGIC;
  signal \uo_reg[4]_i_83_n_3\ : STD_LOGIC;
  signal \uo_reg[7]_i_42_n_3\ : STD_LOGIC;
  signal \uo_reg[7]_i_43_n_0\ : STD_LOGIC;
  signal \uo_reg[7]_i_43_n_1\ : STD_LOGIC;
  signal \uo_reg[7]_i_43_n_2\ : STD_LOGIC;
  signal \uo_reg[7]_i_43_n_3\ : STD_LOGIC;
  signal \uo_reg[7]_i_56_n_3\ : STD_LOGIC;
  signal \uo_reg[7]_i_58_n_3\ : STD_LOGIC;
  signal \uo_reg[7]_i_59_n_0\ : STD_LOGIC;
  signal \uo_reg[7]_i_59_n_1\ : STD_LOGIC;
  signal \uo_reg[7]_i_59_n_2\ : STD_LOGIC;
  signal \uo_reg[7]_i_59_n_3\ : STD_LOGIC;
  signal \uo_reg[7]_i_60_n_0\ : STD_LOGIC;
  signal \uo_reg[7]_i_60_n_1\ : STD_LOGIC;
  signal \uo_reg[7]_i_60_n_2\ : STD_LOGIC;
  signal \uo_reg[7]_i_60_n_3\ : STD_LOGIC;
  signal \uo_reg[7]_i_61_n_0\ : STD_LOGIC;
  signal \uo_reg[7]_i_61_n_1\ : STD_LOGIC;
  signal \uo_reg[7]_i_61_n_2\ : STD_LOGIC;
  signal \uo_reg[7]_i_61_n_3\ : STD_LOGIC;
  signal \uo_reg[7]_i_62_n_0\ : STD_LOGIC;
  signal \uo_reg[7]_i_62_n_1\ : STD_LOGIC;
  signal \uo_reg[7]_i_62_n_2\ : STD_LOGIC;
  signal \uo_reg[7]_i_62_n_3\ : STD_LOGIC;
  signal \uo_reg[7]_i_63_n_0\ : STD_LOGIC;
  signal \uo_reg[7]_i_63_n_1\ : STD_LOGIC;
  signal \uo_reg[7]_i_63_n_2\ : STD_LOGIC;
  signal \uo_reg[7]_i_63_n_3\ : STD_LOGIC;
  signal \^uq_reg[2]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_own_wins_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[0]_i_16_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[1]_i_103_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_uo_reg[1]_i_103_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_uo_reg[1]_i_21_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_uo_reg[1]_i_21_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[1]_i_22_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_uo_reg[1]_i_22_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[1]_i_23_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[1]_i_26_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[1]_i_29_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[1]_i_38_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_uo_reg[1]_i_38_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[1]_i_39_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[1]_i_48_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_uo_reg[1]_i_48_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_uo_reg[2]_i_123_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[2]_i_132_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[2]_i_132_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_uo_reg[2]_i_133_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[2]_i_141_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[2]_i_150_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_uo_reg[2]_i_150_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_uo_reg[2]_i_151_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[2]_i_160_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_uo_reg[2]_i_160_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_uo_reg[2]_i_161_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[2]_i_170_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_uo_reg[2]_i_170_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[2]_i_171_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[2]_i_18_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_uo_reg[2]_i_18_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[2]_i_220_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[2]_i_220_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_uo_reg[2]_i_240_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_uo_reg[2]_i_240_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[2]_i_274_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_uo_reg[2]_i_295_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_uo_reg[2]_i_31_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[2]_i_32_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_uo_reg[2]_i_32_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[2]_i_33_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[2]_i_34_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[2]_i_34_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_uo_reg[2]_i_342_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_uo_reg[2]_i_342_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[2]_i_343_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_uo_reg[2]_i_343_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_uo_reg[2]_i_35_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_uo_reg[2]_i_35_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_uo_reg[2]_i_37_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_uo_reg[2]_i_37_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[2]_i_38_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_uo_reg[2]_i_38_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[2]_i_39_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_uo_reg[2]_i_39_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[2]_i_40_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_uo_reg[2]_i_40_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[2]_i_41_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_uo_reg[2]_i_41_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[2]_i_42_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_uo_reg[2]_i_42_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[2]_i_43_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[2]_i_49_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[2]_i_50_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[2]_i_60_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_uo_reg[2]_i_60_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_uo_reg[2]_i_69_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[2]_i_72_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[2]_i_73_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[2]_i_76_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[2]_i_79_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[2]_i_82_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[2]_i_93_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_uo_reg[2]_i_93_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[2]_i_95_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[4]_i_105_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_uo_reg[4]_i_105_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[4]_i_128_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[4]_i_142_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_uo_reg[4]_i_142_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_uo_reg[4]_i_15_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[4]_i_159_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_uo_reg[4]_i_161_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_uo_reg[4]_i_161_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[4]_i_187_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_uo_reg[4]_i_31_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_uo_reg[4]_i_31_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[4]_i_32_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_uo_reg[4]_i_32_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[4]_i_33_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_uo_reg[4]_i_33_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[4]_i_35_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[4]_i_36_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[4]_i_39_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[4]_i_41_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[4]_i_44_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_uo_reg[4]_i_44_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[4]_i_45_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[4]_i_54_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[4]_i_63_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_uo_reg[4]_i_63_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_uo_reg[4]_i_64_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[4]_i_73_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[4]_i_82_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_uo_reg[4]_i_82_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[4]_i_83_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[7]_i_42_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_uo_reg[7]_i_42_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[7]_i_43_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[7]_i_56_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_uo_reg[7]_i_56_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[7]_i_57_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uo_reg[7]_i_57_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_uo_reg[7]_i_58_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_uo_reg[7]_i_58_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of own_wins_reg_i_2 : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \uo[1]_i_17\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \uo[1]_i_7\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \uo[2]_i_111\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \uo[2]_i_113\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \uo[2]_i_181\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \uo[2]_i_199\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \uo[2]_i_2\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \uo[2]_i_200\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \uo[2]_i_21\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \uo[2]_i_27\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \uo[2]_i_30\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \uo[3]_i_15\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \uo[3]_i_2\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \uo[4]_i_137\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \uo[4]_i_17\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \uo[4]_i_27\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \uo[4]_i_30\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \uo[5]_i_2\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \uo[6]_i_2\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \uo[7]_i_105\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \uo[7]_i_108\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \uo[7]_i_110\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \uo[7]_i_111\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \uo[7]_i_112\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \uo[7]_i_113\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \uo[7]_i_114\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \uo[7]_i_115\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \uo[7]_i_116\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \uo[7]_i_117\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \uo[7]_i_118\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \uo[7]_i_124\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \uo[7]_i_126\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \uo[7]_i_127\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \uo[7]_i_128\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \uo[7]_i_129\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \uo[7]_i_130\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \uo[7]_i_131\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \uo[7]_i_3\ : label is "soft_lutpair130";
  attribute COMPARATOR_THRESHOLD of \uo_reg[0]_i_16\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uo_reg[1]_i_21\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uo_reg[1]_i_22\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uo_reg[1]_i_23\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uo_reg[1]_i_26\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uo_reg[1]_i_29\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uo_reg[1]_i_39\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uo_reg[2]_i_123\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uo_reg[2]_i_133\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uo_reg[2]_i_141\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uo_reg[2]_i_151\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uo_reg[2]_i_161\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uo_reg[2]_i_171\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uo_reg[2]_i_31\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uo_reg[2]_i_32\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uo_reg[2]_i_33\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uo_reg[2]_i_37\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uo_reg[2]_i_38\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uo_reg[2]_i_39\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uo_reg[2]_i_40\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uo_reg[2]_i_41\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uo_reg[2]_i_42\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uo_reg[2]_i_43\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uo_reg[2]_i_49\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uo_reg[2]_i_50\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uo_reg[2]_i_69\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uo_reg[2]_i_72\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uo_reg[2]_i_73\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uo_reg[2]_i_76\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uo_reg[2]_i_79\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uo_reg[2]_i_82\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uo_reg[2]_i_95\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uo_reg[4]_i_128\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uo_reg[4]_i_15\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uo_reg[4]_i_31\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uo_reg[4]_i_32\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uo_reg[4]_i_33\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uo_reg[4]_i_35\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uo_reg[4]_i_36\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uo_reg[4]_i_39\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uo_reg[4]_i_41\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uo_reg[4]_i_44\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uo_reg[4]_i_45\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uo_reg[4]_i_54\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uo_reg[4]_i_64\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uo_reg[4]_i_73\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uo_reg[4]_i_83\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uo_reg[7]_i_42\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uo_reg[7]_i_43\ : label is 11;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \uo_reg[7]_i_56\ : label is 35;
  attribute ADDER_THRESHOLD of \uo_reg[7]_i_57\ : label is 35;
  attribute ADDER_THRESHOLD of \uo_reg[7]_i_60\ : label is 35;
  attribute ADDER_THRESHOLD of \uo_reg[7]_i_61\ : label is 35;
  attribute ADDER_THRESHOLD of \uo_reg[7]_i_63\ : label is 35;
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
  \uio_r_reg[7]_0\(7 downto 0) <= \^uio_r_reg[7]_0\(7 downto 0);
  \uq_reg[2]\(0) <= \^uq_reg[2]\(0);
\dn_edge_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \dn_edge_reg[6]_1\(0),
      D => \^uio_r_reg[7]_0\(0),
      Q => \dn_edge_reg[6]_0\(0),
      S => SS(0)
    );
\dn_edge_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \dn_edge_reg[6]_1\(0),
      D => \^uio_r_reg[7]_0\(1),
      Q => \dn_edge_reg[6]_0\(1),
      S => SS(0)
    );
\dn_edge_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \dn_edge_reg[6]_1\(0),
      D => \^uio_r_reg[7]_0\(2),
      Q => \dn_edge_reg[6]_0\(2),
      S => SS(0)
    );
\dn_edge_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \dn_edge_reg[6]_1\(0),
      D => \^uio_r_reg[7]_0\(3),
      Q => \dn_edge_reg[6]_0\(3),
      S => SS(0)
    );
\dn_edge_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \dn_edge_reg[6]_1\(0),
      D => \^uio_r_reg[7]_0\(4),
      Q => \dn_edge_reg[6]_0\(4),
      S => SS(0)
    );
\dn_edge_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \dn_edge_reg[6]_1\(0),
      D => \^uio_r_reg[7]_0\(5),
      Q => \dn_edge_reg[6]_0\(5),
      S => SS(0)
    );
\dn_edge_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \dn_edge_reg[6]_1\(0),
      D => \^uio_r_reg[7]_0\(6),
      Q => \dn_edge_reg[6]_0\(6),
      S => SS(0)
    );
\m_s0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_s0_reg[6]_0\(0),
      D => D(0),
      Q => \m_s0_reg_n_0_[0]\,
      R => '0'
    );
\m_s0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_s0_reg[6]_0\(0),
      D => D(1),
      Q => \m_s0_reg_n_0_[1]\,
      R => '0'
    );
\m_s0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_s0_reg[6]_0\(0),
      D => D(2),
      Q => \m_s0_reg_n_0_[2]\,
      R => '0'
    );
\m_s0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_s0_reg[6]_0\(0),
      D => D(3),
      Q => \m_s0_reg_n_0_[3]\,
      R => '0'
    );
\m_s0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_s0_reg[6]_0\(0),
      D => D(4),
      Q => \m_s0_reg_n_0_[4]\,
      R => '0'
    );
\m_s0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_s0_reg[6]_0\(0),
      D => D(5),
      Q => \m_s0_reg_n_0_[5]\,
      R => '0'
    );
\m_s0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_s0_reg[6]_0\(0),
      D => D(6),
      Q => \m_s0_reg_n_0_[6]\,
      R => '0'
    );
\m_s2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_s2_reg[0]_0\(0),
      D => D(0),
      Q => \m_s2_reg_n_0_[0]\,
      R => '0'
    );
\m_s2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_s2_reg[0]_0\(0),
      D => D(1),
      Q => \m_s2_reg_n_0_[1]\,
      R => '0'
    );
\m_s2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_s2_reg[0]_0\(0),
      D => D(2),
      Q => \m_s2_reg_n_0_[2]\,
      R => '0'
    );
\m_s2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_s2_reg[0]_0\(0),
      D => D(3),
      Q => \m_s2_reg_n_0_[3]\,
      R => '0'
    );
\m_s2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_s2_reg[0]_0\(0),
      D => D(4),
      Q => \m_s2_reg_n_0_[4]\,
      R => '0'
    );
\m_s2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_s2_reg[0]_0\(0),
      D => D(5),
      Q => \m_s2_reg_n_0_[5]\,
      R => '0'
    );
\m_s2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_s2_reg[0]_0\(0),
      D => D(6),
      Q => \m_s2_reg_n_0_[6]\,
      R => '0'
    );
\m_sec_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_sec_reg[7]_0\(0),
      D => D(0),
      Q => \m_sec_reg_n_0_[0]\,
      R => '0'
    );
\m_sec_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_sec_reg[7]_0\(0),
      D => D(1),
      Q => \m_sec_reg_n_0_[1]\,
      R => '0'
    );
\m_sec_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_sec_reg[7]_0\(0),
      D => D(2),
      Q => \m_sec_reg_n_0_[2]\,
      R => '0'
    );
\m_sec_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_sec_reg[7]_0\(0),
      D => D(3),
      Q => \m_sec_reg_n_0_[3]\,
      R => '0'
    );
\m_sec_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_sec_reg[7]_0\(0),
      D => D(4),
      Q => \m_sec_reg_n_0_[4]\,
      R => '0'
    );
\m_sec_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_sec_reg[7]_0\(0),
      D => D(5),
      Q => \^q\(0),
      R => '0'
    );
\m_sec_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_sec_reg[7]_0\(0),
      D => D(6),
      Q => \^q\(1),
      R => '0'
    );
\m_sec_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_sec_reg[7]_0\(0),
      D => D(7),
      Q => \^q\(2),
      R => '0'
    );
\mw_k_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mw_k_reg[6]_0\(0),
      D => D(0),
      Q => \mw_k_reg_n_0_[0]\,
      R => '0'
    );
\mw_k_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mw_k_reg[6]_0\(0),
      D => D(1),
      Q => \mw_k_reg_n_0_[1]\,
      R => '0'
    );
\mw_k_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mw_k_reg[6]_0\(0),
      D => D(2),
      Q => \mw_k_reg_n_0_[2]\,
      R => '0'
    );
\mw_k_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mw_k_reg[6]_0\(0),
      D => D(3),
      Q => \mw_k_reg_n_0_[3]\,
      R => '0'
    );
\mw_k_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mw_k_reg[6]_0\(0),
      D => D(4),
      Q => \mw_k_reg_n_0_[4]\,
      R => '0'
    );
\mw_k_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mw_k_reg[6]_0\(0),
      D => D(5),
      Q => \mw_k_reg_n_0_[5]\,
      R => '0'
    );
\mw_k_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mw_k_reg[6]_0\(0),
      D => D(6),
      Q => \mw_k_reg_n_0_[6]\,
      R => '0'
    );
\mw_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(0),
      Q => \mw_s_reg_n_0_[0]\,
      R => '0'
    );
\mw_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(1),
      Q => \mw_s_reg_n_0_[1]\,
      R => '0'
    );
\mw_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(2),
      Q => \mw_s_reg_n_0_[2]\,
      R => '0'
    );
\mw_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(3),
      Q => \mw_s_reg_n_0_[3]\,
      R => '0'
    );
\mw_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(4),
      Q => \mw_s_reg_n_0_[4]\,
      R => '0'
    );
\mw_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(5),
      Q => \mw_s_reg_n_0_[5]\,
      R => '0'
    );
\mw_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(6),
      Q => \mw_s_reg_n_0_[6]\,
      R => '0'
    );
own_wins_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^uio_r_reg[7]_0\(7),
      I1 => best_s(7),
      I2 => \^uio_r_reg[7]_0\(6),
      I3 => best_s(6),
      O => own_wins_i_3_n_0
    );
own_wins_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^uio_r_reg[7]_0\(5),
      I1 => best_s(5),
      I2 => \^uio_r_reg[7]_0\(4),
      I3 => best_s(4),
      O => own_wins_i_4_n_0
    );
own_wins_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^uio_r_reg[7]_0\(3),
      I1 => best_s(3),
      I2 => \^uio_r_reg[7]_0\(2),
      I3 => best_s(2),
      O => own_wins_i_5_n_0
    );
own_wins_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^uio_r_reg[7]_0\(1),
      I1 => best_s(1),
      I2 => \^uio_r_reg[7]_0\(0),
      I3 => best_s(0),
      O => own_wins_i_6_n_0
    );
own_wins_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => b_own,
      Q => own_wins_reg_0,
      R => '0'
    );
own_wins_reg_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \uio_r_reg[7]_2\(0),
      CO(2) => own_wins_reg_i_2_n_1,
      CO(1) => own_wins_reg_i_2_n_2,
      CO(0) => own_wins_reg_i_2_n_3,
      CYINIT => '0',
      DI(3) => own_wins_i_3_n_0,
      DI(2) => own_wins_i_4_n_0,
      DI(1) => own_wins_i_5_n_0,
      DI(0) => own_wins_i_6_n_0,
      O(3 downto 0) => NLW_own_wins_reg_i_2_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => own_wins_reg_1(3 downto 0)
    );
\pw_k_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pw_k_reg[0]_1\(0),
      D => \mw_k_reg_n_0_[0]\,
      Q => pw_k(0),
      R => '0'
    );
\pw_k_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pw_k_reg[0]_1\(0),
      D => \mw_k_reg_n_0_[1]\,
      Q => \pw_k_reg[6]_0\(0),
      R => '0'
    );
\pw_k_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pw_k_reg[0]_1\(0),
      D => \mw_k_reg_n_0_[2]\,
      Q => \pw_k_reg[6]_0\(1),
      R => '0'
    );
\pw_k_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pw_k_reg[0]_1\(0),
      D => \mw_k_reg_n_0_[3]\,
      Q => pw_k(3),
      R => '0'
    );
\pw_k_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pw_k_reg[0]_1\(0),
      D => \mw_k_reg_n_0_[4]\,
      Q => pw_k(4),
      R => '0'
    );
\pw_k_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pw_k_reg[0]_1\(0),
      D => \mw_k_reg_n_0_[5]\,
      Q => \pw_k_reg[6]_0\(2),
      R => '0'
    );
\pw_k_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pw_k_reg[0]_1\(0),
      D => \mw_k_reg_n_0_[6]\,
      Q => \pw_k_reg[6]_0\(3),
      R => '0'
    );
\pw_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pw_k_reg[0]_1\(0),
      D => \mw_s_reg_n_0_[0]\,
      Q => p_0_in(1),
      R => '0'
    );
\pw_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pw_k_reg[0]_1\(0),
      D => \mw_s_reg_n_0_[1]\,
      Q => p_0_in(2),
      R => '0'
    );
\pw_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pw_k_reg[0]_1\(0),
      D => \mw_s_reg_n_0_[2]\,
      Q => p_0_in(3),
      R => '0'
    );
\pw_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pw_k_reg[0]_1\(0),
      D => \mw_s_reg_n_0_[3]\,
      Q => p_0_in(4),
      R => '0'
    );
\pw_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pw_k_reg[0]_1\(0),
      D => \mw_s_reg_n_0_[4]\,
      Q => p_0_in(5),
      R => '0'
    );
\pw_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pw_k_reg[0]_1\(0),
      D => \mw_s_reg_n_0_[5]\,
      Q => p_0_in(6),
      R => '0'
    );
\pw_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pw_k_reg[0]_1\(0),
      D => \mw_s_reg_n_0_[6]\,
      Q => p_0_in(7),
      R => '0'
    );
\rec_in_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_in_reg[14]_1\(0),
      D => \^uio_r_reg[7]_0\(0),
      Q => \rec_in_reg[14]_0\(0),
      R => SR(0)
    );
\rec_in_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_in_reg[14]_1\(0),
      D => \rin_s_reg_n_0_[3]\,
      Q => \rec_in_reg[14]_0\(10),
      R => SR(1)
    );
\rec_in_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_in_reg[14]_1\(0),
      D => \rin_s_reg_n_0_[4]\,
      Q => \rec_in_reg[14]_0\(11),
      R => SR(1)
    );
\rec_in_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_in_reg[14]_1\(0),
      D => \rin_s_reg_n_0_[5]\,
      Q => \rec_in_reg[14]_0\(12),
      R => SR(1)
    );
\rec_in_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_in_reg[14]_1\(0),
      D => \rin_s_reg_n_0_[6]\,
      Q => \rec_in_reg[14]_0\(13),
      R => SR(1)
    );
\rec_in_reg[14]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \rec_in_reg[14]_1\(0),
      D => \rin_s_reg_n_0_[7]\,
      Q => \rec_in_reg[14]_0\(14),
      S => SR(1)
    );
\rec_in_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_in_reg[14]_1\(0),
      D => \^uio_r_reg[7]_0\(1),
      Q => \rec_in_reg[14]_0\(1),
      R => SR(0)
    );
\rec_in_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_in_reg[14]_1\(0),
      D => \^uio_r_reg[7]_0\(2),
      Q => \rec_in_reg[14]_0\(2),
      R => SR(0)
    );
\rec_in_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_in_reg[14]_1\(0),
      D => \^uio_r_reg[7]_0\(3),
      Q => \rec_in_reg[14]_0\(3),
      R => SR(0)
    );
\rec_in_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_in_reg[14]_1\(0),
      D => \^uio_r_reg[7]_0\(4),
      Q => \rec_in_reg[14]_0\(4),
      R => SR(0)
    );
\rec_in_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_in_reg[14]_1\(0),
      D => \^uio_r_reg[7]_0\(5),
      Q => \rec_in_reg[14]_0\(5),
      R => SR(0)
    );
\rec_in_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_in_reg[14]_1\(0),
      D => \^uio_r_reg[7]_0\(6),
      Q => \rec_in_reg[14]_0\(6),
      R => SR(0)
    );
\rec_in_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_in_reg[14]_1\(0),
      D => \rin_s_reg_n_0_[0]\,
      Q => \rec_in_reg[14]_0\(7),
      R => SR(1)
    );
\rec_in_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_in_reg[14]_1\(0),
      D => \rin_s_reg_n_0_[1]\,
      Q => \rec_in_reg[14]_0\(8),
      R => SR(1)
    );
\rec_in_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rec_in_reg[14]_1\(0),
      D => \rin_s_reg_n_0_[2]\,
      Q => \rec_in_reg[14]_0\(9),
      R => SR(1)
    );
\rin_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rin_s_reg[7]_1\(0),
      D => \^uio_r_reg[7]_0\(0),
      Q => \rin_s_reg_n_0_[0]\,
      R => \rin_s_reg[7]_0\(0)
    );
\rin_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rin_s_reg[7]_1\(0),
      D => \^uio_r_reg[7]_0\(1),
      Q => \rin_s_reg_n_0_[1]\,
      R => \rin_s_reg[7]_0\(0)
    );
\rin_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rin_s_reg[7]_1\(0),
      D => \^uio_r_reg[7]_0\(2),
      Q => \rin_s_reg_n_0_[2]\,
      R => \rin_s_reg[7]_0\(0)
    );
\rin_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rin_s_reg[7]_1\(0),
      D => \^uio_r_reg[7]_0\(3),
      Q => \rin_s_reg_n_0_[3]\,
      R => \rin_s_reg[7]_0\(0)
    );
\rin_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rin_s_reg[7]_1\(0),
      D => \^uio_r_reg[7]_0\(4),
      Q => \rin_s_reg_n_0_[4]\,
      R => \rin_s_reg[7]_0\(0)
    );
\rin_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rin_s_reg[7]_1\(0),
      D => \^uio_r_reg[7]_0\(5),
      Q => \rin_s_reg_n_0_[5]\,
      R => \rin_s_reg[7]_0\(0)
    );
\rin_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rin_s_reg[7]_1\(0),
      D => \^uio_r_reg[7]_0\(6),
      Q => \rin_s_reg_n_0_[6]\,
      R => \rin_s_reg[7]_0\(0)
    );
\rin_s_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \rin_s_reg[7]_1\(0),
      D => \^uio_r_reg[7]_0\(7),
      Q => \rin_s_reg_n_0_[7]\,
      S => \rin_s_reg[7]_0\(0)
    );
\uio_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => uio_in(0),
      Q => \^uio_r_reg[7]_0\(0),
      R => '0'
    );
\uio_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => uio_in(1),
      Q => \^uio_r_reg[7]_0\(1),
      R => '0'
    );
\uio_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => uio_in(2),
      Q => \^uio_r_reg[7]_0\(2),
      R => '0'
    );
\uio_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => uio_in(3),
      Q => \^uio_r_reg[7]_0\(3),
      R => '0'
    );
\uio_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => uio_in(4),
      Q => \^uio_r_reg[7]_0\(4),
      R => '0'
    );
\uio_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => uio_in(5),
      Q => \^uio_r_reg[7]_0\(5),
      R => '0'
    );
\uio_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => uio_in(6),
      Q => \^uio_r_reg[7]_0\(6),
      R => '0'
    );
\uio_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => uio_in(7),
      Q => \^uio_r_reg[7]_0\(7),
      R => '0'
    );
\uo[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80808080808080D0"
    )
        port map (
      I0 => \uo[2]_i_5\,
      I1 => pw_k(0),
      I2 => \uo[2]_i_5_0\,
      I3 => f_off11_in,
      I4 => \uo[1]_i_18_n_0\,
      I5 => \uo[1]_i_17_n_0\,
      O => \pw_k_reg[0]_0\
    );
\uo[0]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^uio_r_reg[7]_0\(6),
      I1 => lmin(6),
      O => \uo[0]_i_17_n_0\
    );
\uo[0]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^uio_r_reg[7]_0\(5),
      I1 => lmin(5),
      I2 => \^uio_r_reg[7]_0\(4),
      I3 => lmin(4),
      O => \uo[0]_i_18_n_0\
    );
\uo[0]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^uio_r_reg[7]_0\(3),
      I1 => lmin(3),
      I2 => \^uio_r_reg[7]_0\(2),
      I3 => lmin(2),
      O => \uo[0]_i_19_n_0\
    );
\uo[0]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^uio_r_reg[7]_0\(1),
      I1 => lmin(1),
      I2 => \^uio_r_reg[7]_0\(0),
      I3 => lmin(0),
      O => \uo[0]_i_20_n_0\
    );
\uo[1]_i_100\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => fit2(1),
      I1 => fit2(4),
      I2 => fit2(2),
      I3 => fit2(5),
      O => \uo[1]_i_100_n_0\
    );
\uo[1]_i_101\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => f_b0(0),
      I1 => fit2(3),
      I2 => fit2(1),
      I3 => fit2(4),
      O => \uo[1]_i_101_n_0\
    );
\uo[1]_i_102\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => f_b0(0),
      I1 => fit2(3),
      O => \uo[1]_i_102_n_0\
    );
\uo[1]_i_104\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \uo_reg[2]_i_93_n_3\,
      O => \uo[1]_i_104_n_0\
    );
\uo[1]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555514FFFFFFFF"
    )
        port map (
      I0 => \uo[2]_i_5\,
      I1 => \uo[1]_i_16_n_0\,
      I2 => \uo[1]_i_17_n_0\,
      I3 => \uo[1]_i_18_n_0\,
      I4 => f_off11_in,
      I5 => \uo[2]_i_5_0\,
      O => \uo[5]_i_13\
    );
\uo[1]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444544444444"
    )
        port map (
      I0 => \uo[2]_i_27_n_0\,
      I1 => \uo[1]_i_19_n_0\,
      I2 => \uo_reg[2]_i_34_n_2\,
      I3 => \uo_reg[2]_i_33_n_0\,
      I4 => \uo[2]_i_25_n_0\,
      I5 => \uo[1]_i_20_n_0\,
      O => \uo[1]_i_16_n_0\
    );
\uo[1]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFABFFA8"
    )
        port map (
      I0 => \uo[2]_i_26_n_0\,
      I1 => \uo[2]_i_25_n_0\,
      I2 => \uo_reg[4]_i_31_n_3\,
      I3 => \uo_reg[4]_i_32_n_2\,
      I4 => \uo[4]_i_27_n_0\,
      O => \uo[1]_i_17_n_0\
    );
\uo[1]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \uo[2]_i_20_n_0\,
      I1 => \uo[4]_i_27_n_0\,
      I2 => \uo[1]_i_16_n_0\,
      I3 => \uo[2]_i_30_n_0\,
      I4 => \uo[4]_i_28_n_0\,
      O => \uo[1]_i_18_n_0\
    );
\uo[1]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEFEEEFEEEFEEEE"
    )
        port map (
      I0 => \uo_reg[2]_i_40_n_3\,
      I1 => \uo_reg[2]_i_39_n_3\,
      I2 => \uo_reg[2]_i_37_n_3\,
      I3 => \uo_reg[2]_i_38_n_3\,
      I4 => \uo_reg[2]_i_32_n_3\,
      I5 => \uo_reg[2]_i_31_n_0\,
      O => \uo[1]_i_19_n_0\
    );
\uo[1]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF1110"
    )
        port map (
      I0 => \uo_reg[2]_i_42_n_3\,
      I1 => \uo_reg[2]_i_41_n_3\,
      I2 => \uo_reg[1]_i_21_n_3\,
      I3 => \uo_reg[1]_i_22_n_3\,
      I4 => \uo_reg[4]_i_35_n_0\,
      I5 => \uo_reg[4]_i_33_n_3\,
      O => \uo[1]_i_20_n_0\
    );
\uo[1]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \uo_reg[2]_i_34_n_2\,
      I1 => \uo_reg[1]_i_38_n_3\,
      O => \uo[1]_i_24_n_0\
    );
\uo[1]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \uo_reg[2]_i_34_n_2\,
      I1 => \uo_reg[1]_i_38_n_3\,
      O => \uo[1]_i_25_n_0\
    );
\uo[1]_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \uo_reg[2]_i_34_n_2\,
      I1 => \uo_reg[1]_i_48_n_0\,
      O => \uo[1]_i_27_n_0\
    );
\uo[1]_i_28\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \uo_reg[1]_i_48_n_0\,
      I1 => \uo_reg[2]_i_34_n_2\,
      O => \uo[1]_i_28_n_0\
    );
\uo[1]_i_30\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => \uo_reg[2]_i_34_n_2\,
      I1 => \uo_reg[1]_i_57_n_4\,
      I2 => \uo_reg[1]_i_57_n_5\,
      O => \uo[1]_i_30_n_0\
    );
\uo[1]_i_31\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => \uo_reg[2]_i_34_n_2\,
      I1 => \uo_reg[1]_i_57_n_6\,
      I2 => \uo_reg[1]_i_57_n_7\,
      O => \uo[1]_i_31_n_0\
    );
\uo[1]_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(11),
      I1 => \uo_reg[1]_i_58_n_4\,
      I2 => pt(10),
      I3 => \uo_reg[1]_i_58_n_5\,
      O => \uo[1]_i_32_n_0\
    );
\uo[1]_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(9),
      I1 => \uo_reg[1]_i_58_n_6\,
      I2 => pt(8),
      I3 => \uo_reg[1]_i_58_n_7\,
      O => \uo[1]_i_33_n_0\
    );
\uo[1]_i_34\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => \uo_reg[1]_i_57_n_4\,
      I1 => \uo_reg[1]_i_57_n_5\,
      I2 => \uo_reg[2]_i_34_n_2\,
      O => \uo[1]_i_34_n_0\
    );
\uo[1]_i_35\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => \uo_reg[1]_i_57_n_6\,
      I1 => \uo_reg[1]_i_57_n_7\,
      I2 => \uo_reg[2]_i_34_n_2\,
      O => \uo[1]_i_35_n_0\
    );
\uo[1]_i_36\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \uo_reg[1]_i_58_n_4\,
      I1 => pt(11),
      I2 => \uo_reg[1]_i_58_n_5\,
      I3 => pt(10),
      O => \uo[1]_i_36_n_0\
    );
\uo[1]_i_37\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \uo_reg[1]_i_58_n_6\,
      I1 => pt(9),
      I2 => \uo_reg[1]_i_58_n_7\,
      I3 => pt(8),
      O => \uo[1]_i_37_n_0\
    );
\uo[1]_i_40\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0B"
    )
        port map (
      I0 => \uo_reg[1]_i_48_n_0\,
      I1 => \uo_reg[1]_i_48_n_5\,
      I2 => \uo_reg[2]_i_34_n_2\,
      O => \uo[1]_i_40_n_0\
    );
\uo[1]_i_41\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => \uo_reg[2]_i_34_n_2\,
      I1 => \uo_reg[1]_i_48_n_6\,
      I2 => \uo_reg[1]_i_48_n_7\,
      O => \uo[1]_i_41_n_0\
    );
\uo[1]_i_42\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(11),
      I1 => \uo_reg[1]_i_67_n_4\,
      I2 => pt(10),
      I3 => \uo_reg[1]_i_67_n_5\,
      O => \uo[1]_i_42_n_0\
    );
\uo[1]_i_43\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(9),
      I1 => \uo_reg[1]_i_67_n_6\,
      I2 => pt(8),
      I3 => \uo_reg[1]_i_67_n_7\,
      O => \uo[1]_i_43_n_0\
    );
\uo[1]_i_44\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"42"
    )
        port map (
      I0 => \uo_reg[1]_i_48_n_5\,
      I1 => \uo_reg[1]_i_48_n_0\,
      I2 => \uo_reg[2]_i_34_n_2\,
      O => \uo[1]_i_44_n_0\
    );
\uo[1]_i_45\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => \uo_reg[1]_i_48_n_6\,
      I1 => \uo_reg[1]_i_48_n_7\,
      I2 => \uo_reg[2]_i_34_n_2\,
      O => \uo[1]_i_45_n_0\
    );
\uo[1]_i_46\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \uo_reg[1]_i_67_n_4\,
      I1 => pt(11),
      I2 => \uo_reg[1]_i_67_n_5\,
      I3 => pt(10),
      O => \uo[1]_i_46_n_0\
    );
\uo[1]_i_47\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \uo_reg[1]_i_67_n_6\,
      I1 => pt(9),
      I2 => \uo_reg[1]_i_67_n_7\,
      I3 => pt(8),
      O => \uo[1]_i_47_n_0\
    );
\uo[1]_i_49\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(7),
      I1 => \uo_reg[1]_i_71_n_4\,
      I2 => pt(6),
      I3 => \uo_reg[1]_i_71_n_5\,
      O => \uo[1]_i_49_n_0\
    );
\uo[1]_i_50\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(5),
      I1 => \uo_reg[1]_i_71_n_6\,
      I2 => pt(4),
      I3 => \uo_reg[1]_i_71_n_7\,
      O => \uo[1]_i_50_n_0\
    );
\uo[1]_i_51\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"444D"
    )
        port map (
      I0 => fit2(2),
      I1 => pt(3),
      I2 => fit2(1),
      I3 => \uo[2]_i_180_n_0\,
      O => \uo[1]_i_51_n_0\
    );
\uo[1]_i_52\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F44"
    )
        port map (
      I0 => \uo_reg[2]_i_60_n_0\,
      I1 => f_b0(0),
      I2 => \uo[2]_i_181_n_0\,
      I3 => fit2(1),
      O => \uo[1]_i_52_n_0\
    );
\uo[1]_i_53\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \uo_reg[1]_i_71_n_4\,
      I1 => pt(7),
      I2 => \uo_reg[1]_i_71_n_5\,
      I3 => pt(6),
      O => \uo[1]_i_53_n_0\
    );
\uo[1]_i_54\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \uo_reg[1]_i_71_n_6\,
      I1 => pt(5),
      I2 => \uo_reg[1]_i_71_n_7\,
      I3 => pt(4),
      O => \uo[1]_i_54_n_0\
    );
\uo[1]_i_55\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => \uo[2]_i_180_n_0\,
      I1 => fit2(1),
      I2 => pt(3),
      I3 => fit2(2),
      O => \uo[1]_i_55_n_0\
    );
\uo[1]_i_56\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2033"
    )
        port map (
      I0 => \uo_reg[2]_i_60_n_0\,
      I1 => f_b0(0),
      I2 => \uo[2]_i_181_n_0\,
      I3 => fit2(1),
      O => \uo[1]_i_56_n_0\
    );
\uo[1]_i_59\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(7),
      I1 => \uo_reg[4]_i_160_n_4\,
      I2 => pt(6),
      I3 => \uo_reg[4]_i_160_n_5\,
      O => \uo[1]_i_59_n_0\
    );
\uo[1]_i_60\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B22222B2"
    )
        port map (
      I0 => pt(5),
      I1 => \uo_reg[4]_i_160_n_6\,
      I2 => pt(4),
      I3 => fit2(2),
      I4 => f_b0(0),
      O => \uo[1]_i_60_n_0\
    );
\uo[1]_i_61\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F01"
    )
        port map (
      I0 => f_b0(0),
      I1 => \uo[2]_i_180_n_0\,
      I2 => fit2(1),
      I3 => pt(3),
      O => \uo[1]_i_61_n_0\
    );
\uo[1]_i_62\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => fit2(1),
      I1 => f_b0(0),
      I2 => \uo[4]_i_137_n_0\,
      O => \uo[1]_i_62_n_0\
    );
\uo[1]_i_63\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \uo_reg[4]_i_160_n_4\,
      I1 => pt(7),
      I2 => \uo_reg[4]_i_160_n_5\,
      I3 => pt(6),
      O => \uo[1]_i_63_n_0\
    );
\uo[1]_i_64\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09909009"
    )
        port map (
      I0 => \uo_reg[4]_i_160_n_6\,
      I1 => pt(5),
      I2 => f_b0(0),
      I3 => fit2(2),
      I4 => pt(4),
      O => \uo[1]_i_64_n_0\
    );
\uo[1]_i_65\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0990"
    )
        port map (
      I0 => pt(3),
      I1 => fit2(1),
      I2 => f_b0(0),
      I3 => \uo[2]_i_180_n_0\,
      O => \uo[1]_i_65_n_0\
    );
\uo[1]_i_66\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => fit2(1),
      I1 => f_b0(0),
      I2 => \uo[4]_i_137_n_0\,
      O => \uo[1]_i_66_n_0\
    );
\uo[1]_i_68\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fit2(8),
      O => \uo[1]_i_68_n_0\
    );
\uo[1]_i_69\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fit2(8),
      O => \uo[1]_i_69_n_0\
    );
\uo[1]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \^uio_r_reg[7]_0\(1),
      I1 => \^uio_r_reg[7]_0\(0),
      I2 => run,
      O => \uio_r_reg[1]_0\
    );
\uo[1]_i_70\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2D"
    )
        port map (
      I0 => fit2(7),
      I1 => \uo_reg[2]_i_93_n_3\,
      I2 => fit2(8),
      O => \uo[1]_i_70_n_0\
    );
\uo[1]_i_72\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \uo_reg[2]_i_93_n_3\,
      I1 => \uo_reg[1]_i_103_n_1\,
      O => \uo[1]_i_72_n_0\
    );
\uo[1]_i_73\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \uo_reg[2]_i_93_n_3\,
      I1 => \uo_reg[1]_i_103_n_1\,
      O => \uo[1]_i_73_n_0\
    );
\uo[1]_i_74\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \uo_reg[2]_i_93_n_3\,
      I1 => fit2(8),
      O => \uo[1]_i_74_n_0\
    );
\uo[1]_i_75\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \uo_reg[1]_i_103_n_7\,
      I1 => fit2(7),
      O => \uo[1]_i_75_n_0\
    );
\uo[1]_i_76\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \uo_reg[2]_i_93_n_3\,
      I1 => \uo_reg[1]_i_103_n_1\,
      O => \uo[1]_i_76_n_0\
    );
\uo[1]_i_77\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"65"
    )
        port map (
      I0 => \uo_reg[1]_i_103_n_1\,
      I1 => \uo_reg[1]_i_103_n_6\,
      I2 => \uo_reg[2]_i_93_n_3\,
      O => \uo[1]_i_77_n_0\
    );
\uo[1]_i_78\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6C"
    )
        port map (
      I0 => fit2(8),
      I1 => \uo_reg[1]_i_103_n_6\,
      I2 => \uo_reg[2]_i_93_n_3\,
      O => \uo[1]_i_78_n_0\
    );
\uo[1]_i_79\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => fit2(7),
      I1 => \uo_reg[1]_i_103_n_7\,
      I2 => \uo_reg[2]_i_93_n_3\,
      I3 => fit2(8),
      O => \uo[1]_i_79_n_0\
    );
\uo[1]_i_80\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => fit2(7),
      I1 => \uo_reg[1]_i_103_n_7\,
      O => \uo[1]_i_80_n_0\
    );
\uo[1]_i_81\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => fit2(8),
      I1 => fit2(5),
      O => \uo[1]_i_81_n_0\
    );
\uo[1]_i_82\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => fit2(7),
      I1 => fit2(4),
      O => \uo[1]_i_82_n_0\
    );
\uo[1]_i_83\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => fit2(6),
      I1 => fit2(3),
      O => \uo[1]_i_83_n_0\
    );
\uo[1]_i_84\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6669"
    )
        port map (
      I0 => \uo_reg[1]_i_103_n_7\,
      I1 => fit2(7),
      I2 => fit2(6),
      I3 => \uo_reg[2]_i_93_n_3\,
      O => \uo[1]_i_84_n_0\
    );
\uo[1]_i_85\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4BB4"
    )
        port map (
      I0 => fit2(5),
      I1 => fit2(8),
      I2 => fit2(6),
      I3 => \uo_reg[2]_i_93_n_3\,
      O => \uo[1]_i_85_n_0\
    );
\uo[1]_i_86\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => fit2(4),
      I1 => fit2(7),
      I2 => fit2(8),
      I3 => fit2(5),
      O => \uo[1]_i_86_n_0\
    );
\uo[1]_i_87\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => fit2(3),
      I1 => fit2(6),
      I2 => fit2(7),
      I3 => fit2(4),
      O => \uo[1]_i_87_n_0\
    );
\uo[1]_i_88\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => fit2(7),
      I1 => \uo_reg[2]_i_93_n_3\,
      O => \uo[1]_i_88_n_0\
    );
\uo[1]_i_89\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => fit2(7),
      I1 => fit2(5),
      O => \uo[1]_i_89_n_0\
    );
\uo[1]_i_90\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => fit2(6),
      I1 => fit2(4),
      O => \uo[1]_i_90_n_0\
    );
\uo[1]_i_91\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => fit2(5),
      I1 => fit2(3),
      O => \uo[1]_i_91_n_0\
    );
\uo[1]_i_92\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6966"
    )
        port map (
      I0 => \uo_reg[2]_i_93_n_3\,
      I1 => fit2(7),
      I2 => fit2(6),
      I3 => fit2(8),
      O => \uo[1]_i_92_n_0\
    );
\uo[1]_i_93\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => fit2(5),
      I1 => fit2(7),
      I2 => fit2(6),
      I3 => fit2(8),
      O => \uo[1]_i_93_n_0\
    );
\uo[1]_i_94\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => fit2(4),
      I1 => fit2(6),
      I2 => fit2(5),
      I3 => fit2(7),
      O => \uo[1]_i_94_n_0\
    );
\uo[1]_i_95\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => fit2(3),
      I1 => fit2(5),
      I2 => fit2(4),
      I3 => fit2(6),
      O => \uo[1]_i_95_n_0\
    );
\uo[1]_i_96\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => fit2(5),
      I1 => fit2(2),
      O => \uo[1]_i_96_n_0\
    );
\uo[1]_i_97\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => fit2(4),
      I1 => fit2(1),
      O => \uo[1]_i_97_n_0\
    );
\uo[1]_i_98\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => fit2(3),
      I1 => f_b0(0),
      O => \uo[1]_i_98_n_0\
    );
\uo[1]_i_99\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => fit2(2),
      I1 => fit2(5),
      I2 => fit2(3),
      I3 => fit2(6),
      O => \uo[1]_i_99_n_0\
    );
\uo[2]_i_100\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \uo_reg[2]_i_34_n_2\,
      I1 => \uo_reg[2]_i_93_n_3\,
      O => \uo[2]_i_100_n_0\
    );
\uo[2]_i_101\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => pt(11),
      I1 => \uo_reg[2]_i_93_n_3\,
      I2 => fit2(8),
      I3 => pt(10),
      O => \uo[2]_i_101_n_0\
    );
\uo[2]_i_102\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => fit2(7),
      I1 => pt(9),
      I2 => fit2(6),
      I3 => pt(8),
      O => \uo[2]_i_102_n_0\
    );
\uo[2]_i_103\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(7),
      I1 => \uo[4]_i_94_n_0\,
      I2 => pt(6),
      I3 => \uo[2]_i_198_n_0\,
      O => \uo[2]_i_103_n_0\
    );
\uo[2]_i_104\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(5),
      I1 => \uo[2]_i_199_n_0\,
      I2 => pt(4),
      I3 => \uo[2]_i_200_n_0\,
      O => \uo[2]_i_104_n_0\
    );
\uo[2]_i_105\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A802EA83"
    )
        port map (
      I0 => pt(3),
      I1 => f_b0(0),
      I2 => fit2(1),
      I3 => fit2(2),
      I4 => \uo[2]_i_180_n_0\,
      O => \uo[2]_i_105_n_0\
    );
\uo[2]_i_106\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F44"
    )
        port map (
      I0 => \uo_reg[2]_i_60_n_0\,
      I1 => f_b0(0),
      I2 => \uo[2]_i_181_n_0\,
      I3 => fit2(1),
      O => \uo[2]_i_106_n_0\
    );
\uo[2]_i_107\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \uo[4]_i_94_n_0\,
      I1 => pt(7),
      I2 => \uo[2]_i_198_n_0\,
      I3 => pt(6),
      O => \uo[2]_i_107_n_0\
    );
\uo[2]_i_108\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \uo[2]_i_199_n_0\,
      I1 => pt(5),
      I2 => \uo[2]_i_200_n_0\,
      I3 => pt(4),
      O => \uo[2]_i_108_n_0\
    );
\uo[2]_i_109\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"60060690"
    )
        port map (
      I0 => fit2(2),
      I1 => pt(3),
      I2 => \uo[2]_i_180_n_0\,
      I3 => f_b0(0),
      I4 => fit2(1),
      O => \uo[2]_i_109_n_0\
    );
\uo[2]_i_110\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2033"
    )
        port map (
      I0 => \uo_reg[2]_i_60_n_0\,
      I1 => f_b0(0),
      I2 => \uo[2]_i_181_n_0\,
      I3 => fit2(1),
      O => \uo[2]_i_110_n_0\
    );
\uo[2]_i_111\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => fit2(7),
      I1 => \uo[2]_i_112_n_0\,
      I2 => fit2(6),
      I3 => fit2(8),
      O => \uo[2]_i_111_n_0\
    );
\uo[2]_i_112\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => fit2(4),
      I1 => fit2(2),
      I2 => f_b0(0),
      I3 => fit2(1),
      I4 => fit2(3),
      I5 => fit2(5),
      O => \uo[2]_i_112_n_0\
    );
\uo[2]_i_113\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5565"
    )
        port map (
      I0 => fit2(8),
      I1 => fit2(7),
      I2 => \uo[2]_i_112_n_0\,
      I3 => fit2(6),
      O => \uo[2]_i_113_n_0\
    );
\uo[2]_i_116\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0A5D287"
    )
        port map (
      I0 => \uo_reg[2]_i_93_n_3\,
      I1 => \uo[2]_i_111_n_0\,
      I2 => pt0(6),
      I3 => \uo[2]_i_181_n_0\,
      I4 => \uo_reg[2]_i_60_n_0\,
      O => \uo[2]_i_116_n_0\
    );
\uo[2]_i_117\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F096A587"
    )
        port map (
      I0 => \uo_reg[2]_i_93_n_3\,
      I1 => \uo[2]_i_111_n_0\,
      I2 => pt0(5),
      I3 => \uo_reg[2]_i_60_n_0\,
      I4 => \uo[2]_i_181_n_0\,
      O => \uo[2]_i_117_n_0\
    );
\uo[2]_i_118\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6A655A6"
    )
        port map (
      I0 => pt0(4),
      I1 => fit2(8),
      I2 => \uo[2]_i_181_n_0\,
      I3 => \uo[2]_i_113_n_0\,
      I4 => \uo_reg[2]_i_60_n_0\,
      O => \uo[2]_i_118_n_0\
    );
\uo[2]_i_119\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0055AA9A6510EF"
    )
        port map (
      I0 => fit2(7),
      I1 => fit2(6),
      I2 => \uo[2]_i_112_n_0\,
      I3 => pt0(3),
      I4 => \uo[2]_i_181_n_0\,
      I5 => \uo_reg[2]_i_60_n_0\,
      O => \uo[2]_i_119_n_0\
    );
\uo[2]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45544555FFFFFFFF"
    )
        port map (
      I0 => \uo[2]_i_5\,
      I1 => f_off11_in,
      I2 => \uo[2]_i_19_n_0\,
      I3 => \uo[2]_i_20_n_0\,
      I4 => \uo[2]_i_21_n_0\,
      I5 => \uo[2]_i_5_0\,
      O => \uo[5]_i_13_0\
    );
\uo[2]_i_120\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \m_s2_reg_n_0_[6]\,
      I1 => \m_s0_reg_n_0_[6]\,
      O => \uo[2]_i_120_n_0\
    );
\uo[2]_i_121\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \m_s2_reg_n_0_[5]\,
      I1 => \m_s0_reg_n_0_[5]\,
      O => \uo[2]_i_121_n_0\
    );
\uo[2]_i_122\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \m_s2_reg_n_0_[4]\,
      I1 => \m_s0_reg_n_0_[4]\,
      O => \uo[2]_i_122_n_0\
    );
\uo[2]_i_124\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => \uo_reg[2]_i_34_n_2\,
      I1 => \uo_reg[2]_i_132_n_2\,
      I2 => \uo_reg[2]_i_132_n_7\,
      O => \uo[2]_i_124_n_0\
    );
\uo[2]_i_125\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => \uo_reg[2]_i_34_n_2\,
      I1 => \uo_reg[2]_i_217_n_4\,
      I2 => \uo_reg[2]_i_217_n_5\,
      O => \uo[2]_i_125_n_0\
    );
\uo[2]_i_126\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(11),
      I1 => \uo_reg[2]_i_217_n_6\,
      I2 => pt(10),
      I3 => \uo_reg[2]_i_217_n_7\,
      O => \uo[2]_i_126_n_0\
    );
\uo[2]_i_127\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(9),
      I1 => \uo_reg[2]_i_218_n_7\,
      I2 => pt(8),
      I3 => \uo_reg[2]_i_219_n_4\,
      O => \uo[2]_i_127_n_0\
    );
\uo[2]_i_128\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"42"
    )
        port map (
      I0 => \uo_reg[2]_i_132_n_7\,
      I1 => \uo_reg[2]_i_34_n_2\,
      I2 => \uo_reg[2]_i_132_n_2\,
      O => \uo[2]_i_128_n_0\
    );
\uo[2]_i_129\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => \uo_reg[2]_i_217_n_4\,
      I1 => \uo_reg[2]_i_217_n_5\,
      I2 => \uo_reg[2]_i_34_n_2\,
      O => \uo[2]_i_129_n_0\
    );
\uo[2]_i_130\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \uo_reg[2]_i_217_n_6\,
      I1 => pt(11),
      I2 => \uo_reg[2]_i_217_n_7\,
      I3 => pt(10),
      O => \uo[2]_i_130_n_0\
    );
\uo[2]_i_131\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \uo_reg[2]_i_218_n_7\,
      I1 => pt(9),
      I2 => \uo_reg[2]_i_219_n_4\,
      I3 => pt(8),
      O => \uo[2]_i_131_n_0\
    );
\uo[2]_i_134\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \uo_reg[2]_i_34_n_2\,
      O => \uo[2]_i_134_n_0\
    );
\uo[2]_i_135\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \uo_reg[2]_i_93_n_3\,
      I1 => \uo_reg[2]_i_34_n_2\,
      O => \uo[2]_i_135_n_0\
    );
\uo[2]_i_136\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(11),
      I1 => fit2(8),
      I2 => pt(10),
      I3 => fit2(7),
      O => \uo[2]_i_136_n_0\
    );
\uo[2]_i_137\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(9),
      I1 => fit2(6),
      I2 => pt(8),
      I3 => fit2(5),
      O => \uo[2]_i_137_n_0\
    );
\uo[2]_i_138\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \uo_reg[2]_i_93_n_3\,
      I1 => \uo_reg[2]_i_34_n_2\,
      O => \uo[2]_i_138_n_0\
    );
\uo[2]_i_139\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => fit2(8),
      I1 => pt(11),
      I2 => fit2(7),
      I3 => pt(10),
      O => \uo[2]_i_139_n_0\
    );
\uo[2]_i_140\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => fit2(6),
      I1 => pt(9),
      I2 => fit2(5),
      I3 => pt(8),
      O => \uo[2]_i_140_n_0\
    );
\uo[2]_i_142\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => \uo_reg[2]_i_34_n_2\,
      I1 => \uo_reg[2]_i_150_n_6\,
      I2 => \uo_reg[2]_i_150_n_7\,
      O => \uo[2]_i_142_n_0\
    );
\uo[2]_i_143\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => \uo_reg[2]_i_34_n_2\,
      I1 => \uo_reg[2]_i_238_n_4\,
      I2 => \uo_reg[2]_i_238_n_5\,
      O => \uo[2]_i_143_n_0\
    );
\uo[2]_i_144\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(11),
      I1 => \uo_reg[2]_i_238_n_6\,
      I2 => pt(10),
      I3 => \uo_reg[2]_i_238_n_7\,
      O => \uo[2]_i_144_n_0\
    );
\uo[2]_i_145\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(9),
      I1 => \uo_reg[2]_i_239_n_4\,
      I2 => pt(8),
      I3 => \uo_reg[2]_i_239_n_5\,
      O => \uo[2]_i_145_n_0\
    );
\uo[2]_i_146\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => \uo_reg[2]_i_150_n_6\,
      I1 => \uo_reg[2]_i_150_n_7\,
      I2 => \uo_reg[2]_i_34_n_2\,
      O => \uo[2]_i_146_n_0\
    );
\uo[2]_i_147\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => \uo_reg[2]_i_238_n_4\,
      I1 => \uo_reg[2]_i_238_n_5\,
      I2 => \uo_reg[2]_i_34_n_2\,
      O => \uo[2]_i_147_n_0\
    );
\uo[2]_i_148\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \uo_reg[2]_i_238_n_6\,
      I1 => pt(11),
      I2 => \uo_reg[2]_i_238_n_7\,
      I3 => pt(10),
      O => \uo[2]_i_148_n_0\
    );
\uo[2]_i_149\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \uo_reg[2]_i_239_n_4\,
      I1 => pt(9),
      I2 => \uo_reg[2]_i_239_n_5\,
      I3 => pt(8),
      O => \uo[2]_i_149_n_0\
    );
\uo[2]_i_152\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => \uo_reg[2]_i_34_n_2\,
      I1 => \uo_reg[2]_i_160_n_6\,
      I2 => \uo_reg[2]_i_160_n_7\,
      O => \uo[2]_i_152_n_0\
    );
\uo[2]_i_153\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => \uo_reg[2]_i_34_n_2\,
      I1 => \uo_reg[2]_i_252_n_4\,
      I2 => \uo_reg[2]_i_252_n_5\,
      O => \uo[2]_i_153_n_0\
    );
\uo[2]_i_154\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(11),
      I1 => \uo_reg[2]_i_252_n_6\,
      I2 => pt(10),
      I3 => \uo_reg[2]_i_252_n_7\,
      O => \uo[2]_i_154_n_0\
    );
\uo[2]_i_155\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(9),
      I1 => \uo_reg[2]_i_253_n_4\,
      I2 => pt(8),
      I3 => \uo_reg[2]_i_253_n_5\,
      O => \uo[2]_i_155_n_0\
    );
\uo[2]_i_156\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => \uo_reg[2]_i_160_n_6\,
      I1 => \uo_reg[2]_i_160_n_7\,
      I2 => \uo_reg[2]_i_34_n_2\,
      O => \uo[2]_i_156_n_0\
    );
\uo[2]_i_157\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => \uo_reg[2]_i_252_n_4\,
      I1 => \uo_reg[2]_i_252_n_5\,
      I2 => \uo_reg[2]_i_34_n_2\,
      O => \uo[2]_i_157_n_0\
    );
\uo[2]_i_158\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \uo_reg[2]_i_252_n_6\,
      I1 => pt(11),
      I2 => \uo_reg[2]_i_252_n_7\,
      I3 => pt(10),
      O => \uo[2]_i_158_n_0\
    );
\uo[2]_i_159\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \uo_reg[2]_i_253_n_4\,
      I1 => pt(9),
      I2 => \uo_reg[2]_i_253_n_5\,
      I3 => pt(8),
      O => \uo[2]_i_159_n_0\
    );
\uo[2]_i_162\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => \uo_reg[2]_i_34_n_2\,
      I1 => \uo_reg[2]_i_263_n_4\,
      I2 => \uo_reg[2]_i_263_n_5\,
      O => \uo[2]_i_162_n_0\
    );
\uo[2]_i_163\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => \uo_reg[2]_i_34_n_2\,
      I1 => \uo_reg[2]_i_263_n_6\,
      I2 => \uo_reg[2]_i_263_n_7\,
      O => \uo[2]_i_163_n_0\
    );
\uo[2]_i_164\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(11),
      I1 => \uo_reg[2]_i_264_n_4\,
      I2 => pt(10),
      I3 => \uo_reg[2]_i_264_n_5\,
      O => \uo[2]_i_164_n_0\
    );
\uo[2]_i_165\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(9),
      I1 => \uo_reg[2]_i_264_n_6\,
      I2 => pt(8),
      I3 => \uo_reg[2]_i_264_n_7\,
      O => \uo[2]_i_165_n_0\
    );
\uo[2]_i_166\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => \uo_reg[2]_i_263_n_4\,
      I1 => \uo_reg[2]_i_263_n_5\,
      I2 => \uo_reg[2]_i_34_n_2\,
      O => \uo[2]_i_166_n_0\
    );
\uo[2]_i_167\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => \uo_reg[2]_i_263_n_6\,
      I1 => \uo_reg[2]_i_263_n_7\,
      I2 => \uo_reg[2]_i_34_n_2\,
      O => \uo[2]_i_167_n_0\
    );
\uo[2]_i_168\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \uo_reg[2]_i_264_n_4\,
      I1 => pt(11),
      I2 => \uo_reg[2]_i_264_n_5\,
      I3 => pt(10),
      O => \uo[2]_i_168_n_0\
    );
\uo[2]_i_169\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \uo_reg[2]_i_264_n_6\,
      I1 => pt(9),
      I2 => \uo_reg[2]_i_264_n_7\,
      I3 => pt(8),
      O => \uo[2]_i_169_n_0\
    );
\uo[2]_i_172\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \uo[2]_i_111_n_0\,
      I1 => \uo_reg[2]_i_34_n_2\,
      I2 => \uo_reg[2]_i_93_n_3\,
      O => \uo[2]_i_172_n_0\
    );
\uo[2]_i_173\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \uo_reg[2]_i_93_n_3\,
      I1 => \uo[2]_i_111_n_0\,
      I2 => \uo_reg[2]_i_34_n_2\,
      O => \uo[2]_i_173_n_0\
    );
\uo[2]_i_174\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A00FF9A0000FF00"
    )
        port map (
      I0 => fit2(7),
      I1 => fit2(6),
      I2 => \uo[2]_i_112_n_0\,
      I3 => pt(11),
      I4 => \uo[2]_i_113_n_0\,
      I5 => pt(10),
      O => \uo[2]_i_174_n_0\
    );
\uo[2]_i_175\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(9),
      I1 => \uo[4]_i_94_n_0\,
      I2 => pt(8),
      I3 => \uo[2]_i_198_n_0\,
      O => \uo[2]_i_175_n_0\
    );
\uo[2]_i_176\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => \uo_reg[2]_i_93_n_3\,
      I1 => \uo[2]_i_111_n_0\,
      I2 => \uo_reg[2]_i_34_n_2\,
      O => \uo[2]_i_176_n_0\
    );
\uo[2]_i_177\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"92"
    )
        port map (
      I0 => \uo_reg[2]_i_93_n_3\,
      I1 => \uo[2]_i_111_n_0\,
      I2 => \uo_reg[2]_i_34_n_2\,
      O => \uo[2]_i_177_n_0\
    );
\uo[2]_i_178\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"650000659A00009A"
    )
        port map (
      I0 => fit2(7),
      I1 => fit2(6),
      I2 => \uo[2]_i_112_n_0\,
      I3 => \uo[2]_i_113_n_0\,
      I4 => pt(11),
      I5 => pt(10),
      O => \uo[2]_i_178_n_0\
    );
\uo[2]_i_179\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \uo[4]_i_94_n_0\,
      I1 => pt(9),
      I2 => \uo[2]_i_198_n_0\,
      I3 => pt(8),
      O => \uo[2]_i_179_n_0\
    );
\uo[2]_i_180\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE00ABAB"
    )
        port map (
      I0 => \uo_reg[2]_i_60_n_0\,
      I1 => fit2(1),
      I2 => f_b0(0),
      I3 => \uo[2]_i_181_n_0\,
      I4 => fit2(2),
      O => \uo[2]_i_180_n_0\
    );
\uo[2]_i_181\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFF"
    )
        port map (
      I0 => \uo[2]_i_273_n_0\,
      I1 => pt0(2),
      I2 => pt0(5),
      I3 => pt0(3),
      I4 => \uo_reg[2]_i_60_n_0\,
      O => \uo[2]_i_181_n_0\
    );
\uo[2]_i_182\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => f_b0(7),
      I1 => p_0_in(7),
      O => \uo[2]_i_182_n_0\
    );
\uo[2]_i_183\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => f_b0(6),
      I1 => p_0_in(6),
      O => \uo[2]_i_183_n_0\
    );
\uo[2]_i_184\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => f_b0(5),
      I1 => p_0_in(5),
      O => \uo[2]_i_184_n_0\
    );
\uo[2]_i_185\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => f_b0(4),
      I1 => p_0_in(4),
      O => \uo[2]_i_185_n_0\
    );
\uo[2]_i_186\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_0_in(7),
      I1 => f_b0(7),
      O => \uo[2]_i_186_n_0\
    );
\uo[2]_i_187\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => p_0_in(6),
      I1 => f_b0(6),
      I2 => p_0_in(7),
      I3 => f_b0(7),
      O => \uo[2]_i_187_n_0\
    );
\uo[2]_i_188\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => p_0_in(5),
      I1 => f_b0(5),
      I2 => p_0_in(6),
      I3 => f_b0(6),
      O => \uo[2]_i_188_n_0\
    );
\uo[2]_i_189\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => p_0_in(4),
      I1 => f_b0(4),
      I2 => p_0_in(5),
      I3 => f_b0(5),
      O => \uo[2]_i_189_n_0\
    );
\uo[2]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFECCCE"
    )
        port map (
      I0 => \uo[4]_i_27_n_0\,
      I1 => \uo_reg[4]_i_32_n_2\,
      I2 => \uo_reg[4]_i_31_n_3\,
      I3 => \uo[2]_i_25_n_0\,
      I4 => \uo[2]_i_26_n_0\,
      I5 => \uo[1]_i_16_n_0\,
      O => \uo[2]_i_19_n_0\
    );
\uo[2]_i_190\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(7),
      I1 => fit2(5),
      I2 => pt(6),
      I3 => fit2(4),
      O => \uo[2]_i_190_n_0\
    );
\uo[2]_i_191\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(5),
      I1 => fit2(3),
      I2 => pt(4),
      I3 => fit2(2),
      O => \uo[2]_i_191_n_0\
    );
\uo[2]_i_192\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F01"
    )
        port map (
      I0 => f_b0(0),
      I1 => \uo[2]_i_180_n_0\,
      I2 => fit2(1),
      I3 => pt(3),
      O => \uo[2]_i_192_n_0\
    );
\uo[2]_i_193\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => fit2(1),
      I1 => f_b0(0),
      I2 => \uo[4]_i_137_n_0\,
      O => \uo[2]_i_193_n_0\
    );
\uo[2]_i_194\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => fit2(5),
      I1 => pt(7),
      I2 => fit2(4),
      I3 => pt(6),
      O => \uo[2]_i_194_n_0\
    );
\uo[2]_i_195\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => fit2(3),
      I1 => pt(5),
      I2 => pt(4),
      I3 => fit2(2),
      O => \uo[2]_i_195_n_0\
    );
\uo[2]_i_196\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0990"
    )
        port map (
      I0 => pt(3),
      I1 => fit2(1),
      I2 => f_b0(0),
      I3 => \uo[2]_i_180_n_0\,
      O => \uo[2]_i_196_n_0\
    );
\uo[2]_i_197\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => fit2(1),
      I1 => f_b0(0),
      I2 => \uo[4]_i_137_n_0\,
      O => \uo[2]_i_197_n_0\
    );
\uo[2]_i_198\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555556"
    )
        port map (
      I0 => fit2(5),
      I1 => fit2(4),
      I2 => fit2(2),
      I3 => f_b0(0),
      I4 => fit2(1),
      I5 => fit2(3),
      O => \uo[2]_i_198_n_0\
    );
\uo[2]_i_199\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555556"
    )
        port map (
      I0 => fit2(4),
      I1 => fit2(3),
      I2 => fit2(1),
      I3 => f_b0(0),
      I4 => fit2(2),
      O => \uo[2]_i_199_n_0\
    );
\uo[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1540"
    )
        port map (
      I0 => run,
      I1 => \^uio_r_reg[7]_0\(0),
      I2 => \^uio_r_reg[7]_0\(1),
      I3 => \^uio_r_reg[7]_0\(2),
      O => run_reg_3
    );
\uo[2]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444444445"
    )
        port map (
      I0 => \uo[2]_i_27_n_0\,
      I1 => \uo[2]_i_28_n_0\,
      I2 => \uo[2]_i_29_n_0\,
      I3 => \uo[2]_i_30_n_0\,
      I4 => \uo_reg[2]_i_31_n_0\,
      I5 => \uo_reg[2]_i_32_n_3\,
      O => \uo[2]_i_20_n_0\
    );
\uo[2]_i_200\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5556"
    )
        port map (
      I0 => fit2(3),
      I1 => fit2(2),
      I2 => f_b0(0),
      I3 => fit2(1),
      O => \uo[2]_i_200_n_0\
    );
\uo[2]_i_201\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6A655A6"
    )
        port map (
      I0 => pt0(2),
      I1 => fit2(6),
      I2 => \uo[2]_i_181_n_0\,
      I3 => \uo[4]_i_94_n_0\,
      I4 => \uo_reg[2]_i_60_n_0\,
      O => \uo[2]_i_201_n_0\
    );
\uo[2]_i_202\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6A655A6"
    )
        port map (
      I0 => pt0(1),
      I1 => fit2(5),
      I2 => \uo[2]_i_181_n_0\,
      I3 => \uo[2]_i_198_n_0\,
      I4 => \uo_reg[2]_i_60_n_0\,
      O => \uo[2]_i_202_n_0\
    );
\uo[2]_i_203\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6A655A6"
    )
        port map (
      I0 => pt0(0),
      I1 => fit2(4),
      I2 => \uo[2]_i_181_n_0\,
      I3 => \uo[2]_i_199_n_0\,
      I4 => \uo_reg[2]_i_60_n_0\,
      O => \uo[2]_i_203_n_0\
    );
\uo[2]_i_204\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFF55545554"
    )
        port map (
      I0 => \uo_reg[2]_i_60_n_0\,
      I1 => fit2(2),
      I2 => f_b0(0),
      I3 => fit2(1),
      I4 => \uo[2]_i_181_n_0\,
      I5 => fit2(3),
      O => C(3)
    );
\uo[2]_i_205\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \m_s2_reg_n_0_[3]\,
      I1 => \m_s0_reg_n_0_[3]\,
      O => \uo[2]_i_205_n_0\
    );
\uo[2]_i_206\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \m_s2_reg_n_0_[2]\,
      I1 => \m_s0_reg_n_0_[2]\,
      O => \uo[2]_i_206_n_0\
    );
\uo[2]_i_207\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \m_s2_reg_n_0_[1]\,
      I1 => \m_s0_reg_n_0_[1]\,
      O => \uo[2]_i_207_n_0\
    );
\uo[2]_i_208\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \m_s2_reg_n_0_[0]\,
      I1 => \m_s0_reg_n_0_[0]\,
      O => \uo[2]_i_208_n_0\
    );
\uo[2]_i_209\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(7),
      I1 => \uo_reg[2]_i_219_n_5\,
      I2 => pt(6),
      I3 => \uo_reg[2]_i_219_n_6\,
      O => \uo[2]_i_209_n_0\
    );
\uo[2]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \uo_reg[4]_i_32_n_2\,
      I1 => \uo_reg[4]_i_31_n_3\,
      I2 => \uo[2]_i_25_n_0\,
      I3 => \uo_reg[2]_i_33_n_0\,
      I4 => \uo_reg[2]_i_34_n_2\,
      O => \uo[2]_i_21_n_0\
    );
\uo[2]_i_210\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(5),
      I1 => \uo_reg[2]_i_219_n_7\,
      I2 => pt(4),
      I3 => \uo_reg[2]_i_274_n_4\,
      O => \uo[2]_i_210_n_0\
    );
\uo[2]_i_211\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"222B"
    )
        port map (
      I0 => pt(3),
      I1 => \uo_reg[2]_i_274_n_5\,
      I2 => \uo_reg[2]_i_274_n_6\,
      I3 => \uo[2]_i_180_n_0\,
      O => \uo[2]_i_211_n_0\
    );
\uo[2]_i_212\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3F771300"
    )
        port map (
      I0 => \uo_reg[2]_i_60_n_0\,
      I1 => f_b0(0),
      I2 => \uo[2]_i_181_n_0\,
      I3 => fit2(1),
      I4 => \uo[4]_i_140_n_0\,
      O => \uo[2]_i_212_n_0\
    );
\uo[2]_i_213\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \uo_reg[2]_i_219_n_5\,
      I1 => pt(7),
      I2 => \uo_reg[2]_i_219_n_6\,
      I3 => pt(6),
      O => \uo[2]_i_213_n_0\
    );
\uo[2]_i_214\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \uo_reg[2]_i_219_n_7\,
      I1 => pt(5),
      I2 => \uo_reg[2]_i_274_n_4\,
      I3 => pt(4),
      O => \uo[2]_i_214_n_0\
    );
\uo[2]_i_215\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0990"
    )
        port map (
      I0 => \uo_reg[2]_i_274_n_5\,
      I1 => pt(3),
      I2 => \uo[2]_i_180_n_0\,
      I3 => \uo_reg[2]_i_274_n_6\,
      O => \uo[2]_i_215_n_0\
    );
\uo[2]_i_216\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002C77"
    )
        port map (
      I0 => \uo_reg[2]_i_60_n_0\,
      I1 => f_b0(0),
      I2 => \uo[2]_i_181_n_0\,
      I3 => fit2(1),
      I4 => \uo[4]_i_140_n_0\,
      O => \uo[2]_i_216_n_0\
    );
\uo[2]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_0_in(7),
      I1 => f_b0(7),
      I2 => p_0_in(6),
      I3 => f_b0(6),
      O => \uo[2]_i_22_n_0\
    );
\uo[2]_i_221\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \uo_reg[2]_i_220_n_2\,
      O => \uo[2]_i_221_n_0\
    );
\uo[2]_i_222\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(7),
      I1 => fit2(4),
      I2 => pt(6),
      I3 => fit2(3),
      O => \uo[2]_i_222_n_0\
    );
\uo[2]_i_223\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(5),
      I1 => fit2(2),
      I2 => pt(4),
      I3 => fit2(1),
      O => \uo[2]_i_223_n_0\
    );
\uo[2]_i_224\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => f_b0(0),
      I1 => pt(3),
      I2 => \uo[2]_i_180_n_0\,
      O => \uo[2]_i_224_n_0\
    );
\uo[2]_i_225\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => fit2(1),
      I1 => f_b0(0),
      I2 => \uo[4]_i_137_n_0\,
      O => \uo[2]_i_225_n_0\
    );
\uo[2]_i_226\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => fit2(4),
      I1 => pt(7),
      I2 => fit2(3),
      I3 => pt(6),
      O => \uo[2]_i_226_n_0\
    );
\uo[2]_i_227\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => fit2(2),
      I1 => pt(5),
      I2 => pt(4),
      I3 => fit2(1),
      O => \uo[2]_i_227_n_0\
    );
\uo[2]_i_228\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \uo[2]_i_180_n_0\,
      I1 => pt(3),
      I2 => f_b0(0),
      O => \uo[2]_i_228_n_0\
    );
\uo[2]_i_229\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => fit2(1),
      I1 => f_b0(0),
      I2 => \uo[4]_i_137_n_0\,
      O => \uo[2]_i_229_n_0\
    );
\uo[2]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => f_b0(4),
      I1 => p_0_in(4),
      I2 => f_b0(5),
      I3 => p_0_in(5),
      I4 => f_b0(3),
      I5 => p_0_in(3),
      O => \uo[2]_i_23_n_0\
    );
\uo[2]_i_230\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(7),
      I1 => \uo_reg[2]_i_239_n_6\,
      I2 => pt(6),
      I3 => \uo_reg[2]_i_239_n_7\,
      O => \uo[2]_i_230_n_0\
    );
\uo[2]_i_231\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(5),
      I1 => \uo_reg[2]_i_285_n_4\,
      I2 => pt(4),
      I3 => \uo_reg[2]_i_285_n_5\,
      O => \uo[2]_i_231_n_0\
    );
\uo[2]_i_232\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"222B"
    )
        port map (
      I0 => pt(3),
      I1 => \uo_reg[2]_i_285_n_6\,
      I2 => \uo_reg[2]_i_285_n_7\,
      I3 => \uo[2]_i_180_n_0\,
      O => \uo[2]_i_232_n_0\
    );
\uo[2]_i_233\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F44"
    )
        port map (
      I0 => \uo_reg[2]_i_60_n_0\,
      I1 => f_b0(0),
      I2 => \uo[2]_i_181_n_0\,
      I3 => fit2(1),
      O => \uo[2]_i_233_n_0\
    );
\uo[2]_i_234\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \uo_reg[2]_i_239_n_6\,
      I1 => pt(7),
      I2 => \uo_reg[2]_i_239_n_7\,
      I3 => pt(6),
      O => \uo[2]_i_234_n_0\
    );
\uo[2]_i_235\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \uo_reg[2]_i_285_n_4\,
      I1 => pt(5),
      I2 => \uo_reg[2]_i_285_n_5\,
      I3 => pt(4),
      O => \uo[2]_i_235_n_0\
    );
\uo[2]_i_236\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0990"
    )
        port map (
      I0 => \uo_reg[2]_i_285_n_6\,
      I1 => pt(3),
      I2 => \uo[2]_i_180_n_0\,
      I3 => \uo_reg[2]_i_285_n_7\,
      O => \uo[2]_i_236_n_0\
    );
\uo[2]_i_237\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2033"
    )
        port map (
      I0 => \uo_reg[2]_i_60_n_0\,
      I1 => f_b0(0),
      I2 => \uo[2]_i_181_n_0\,
      I3 => fit2(1),
      O => \uo[2]_i_237_n_0\
    );
\uo[2]_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00009009"
    )
        port map (
      I0 => f_b0(2),
      I1 => p_0_in(2),
      I2 => f_b0(1),
      I3 => p_0_in(1),
      I4 => f_b0(0),
      O => \uo[2]_i_24_n_0\
    );
\uo[2]_i_241\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \uo_reg[2]_i_240_n_6\,
      I1 => \uo_reg[2]_i_93_n_3\,
      O => \uo[2]_i_241_n_0\
    );
\uo[2]_i_242\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \uo_reg[2]_i_240_n_1\,
      O => \uo[2]_i_242_n_0\
    );
\uo[2]_i_243\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => \uo_reg[2]_i_93_n_3\,
      I1 => \uo_reg[2]_i_240_n_6\,
      I2 => \uo_reg[2]_i_240_n_1\,
      O => \uo[2]_i_243_n_0\
    );
\uo[2]_i_244\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(7),
      I1 => \uo_reg[2]_i_253_n_6\,
      I2 => pt(6),
      I3 => \uo_reg[2]_i_253_n_7\,
      O => \uo[2]_i_244_n_0\
    );
\uo[2]_i_245\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(5),
      I1 => \uo_reg[2]_i_295_n_4\,
      I2 => pt(4),
      I3 => \uo_reg[2]_i_295_n_5\,
      O => \uo[2]_i_245_n_0\
    );
\uo[2]_i_246\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"222B"
    )
        port map (
      I0 => pt(3),
      I1 => \uo_reg[2]_i_295_n_6\,
      I2 => \uo[2]_i_180_n_0\,
      I3 => f_b0(0),
      O => \uo[2]_i_246_n_0\
    );
\uo[2]_i_247\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => fit2(1),
      I1 => f_b0(0),
      I2 => \uo[4]_i_137_n_0\,
      O => \uo[2]_i_247_n_0\
    );
\uo[2]_i_248\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \uo_reg[2]_i_253_n_6\,
      I1 => pt(7),
      I2 => \uo_reg[2]_i_253_n_7\,
      I3 => pt(6),
      O => \uo[2]_i_248_n_0\
    );
\uo[2]_i_249\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \uo_reg[2]_i_295_n_4\,
      I1 => pt(5),
      I2 => \uo_reg[2]_i_295_n_5\,
      I3 => pt(4),
      O => \uo[2]_i_249_n_0\
    );
\uo[2]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \uo_reg[2]_i_37_n_3\,
      I1 => \uo_reg[2]_i_38_n_3\,
      I2 => \uo_reg[2]_i_39_n_3\,
      I3 => \uo_reg[2]_i_40_n_3\,
      I4 => \uo_reg[2]_i_31_n_0\,
      I5 => \uo_reg[2]_i_32_n_3\,
      O => \uo[2]_i_25_n_0\
    );
\uo[2]_i_250\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0990"
    )
        port map (
      I0 => \uo_reg[2]_i_295_n_6\,
      I1 => pt(3),
      I2 => \uo[2]_i_180_n_0\,
      I3 => f_b0(0),
      O => \uo[2]_i_250_n_0\
    );
\uo[2]_i_251\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => fit2(1),
      I1 => f_b0(0),
      I2 => \uo[4]_i_137_n_0\,
      O => \uo[2]_i_251_n_0\
    );
\uo[2]_i_254\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \uo_reg[2]_i_93_n_3\,
      O => \uo[2]_i_254_n_0\
    );
\uo[2]_i_255\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(7),
      I1 => \uo_reg[2]_i_305_n_4\,
      I2 => pt(6),
      I3 => \uo_reg[2]_i_305_n_5\,
      O => \uo[2]_i_255_n_0\
    );
\uo[2]_i_256\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(5),
      I1 => \uo_reg[2]_i_305_n_6\,
      I2 => pt(4),
      I3 => \uo_reg[2]_i_305_n_7\,
      O => \uo[2]_i_256_n_0\
    );
\uo[2]_i_257\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"222B"
    )
        port map (
      I0 => pt(3),
      I1 => \uo_reg[2]_i_306_n_5\,
      I2 => \uo_reg[2]_i_306_n_6\,
      I3 => \uo[2]_i_180_n_0\,
      O => \uo[2]_i_257_n_0\
    );
\uo[2]_i_258\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1F440000FFFF1F44"
    )
        port map (
      I0 => \uo_reg[2]_i_60_n_0\,
      I1 => f_b0(0),
      I2 => \uo[2]_i_181_n_0\,
      I3 => fit2(1),
      I4 => \uo[4]_i_140_n_0\,
      I5 => \uo_reg[2]_i_306_n_7\,
      O => \uo[2]_i_258_n_0\
    );
\uo[2]_i_259\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \uo_reg[2]_i_305_n_4\,
      I1 => pt(7),
      I2 => \uo_reg[2]_i_305_n_5\,
      I3 => pt(6),
      O => \uo[2]_i_259_n_0\
    );
\uo[2]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F2F2F3F2"
    )
        port map (
      I0 => \uo_reg[2]_i_38_n_3\,
      I1 => \uo_reg[2]_i_39_n_3\,
      I2 => \uo_reg[2]_i_40_n_3\,
      I3 => \uo_reg[2]_i_32_n_3\,
      I4 => \uo_reg[2]_i_37_n_3\,
      I5 => \uo_reg[4]_i_31_n_3\,
      O => \uo[2]_i_26_n_0\
    );
\uo[2]_i_260\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \uo_reg[2]_i_305_n_6\,
      I1 => pt(5),
      I2 => \uo_reg[2]_i_305_n_7\,
      I3 => pt(4),
      O => \uo[2]_i_260_n_0\
    );
\uo[2]_i_261\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0990"
    )
        port map (
      I0 => \uo_reg[2]_i_306_n_5\,
      I1 => pt(3),
      I2 => \uo[2]_i_180_n_0\,
      I3 => \uo_reg[2]_i_306_n_6\,
      O => \uo[2]_i_261_n_0\
    );
\uo[2]_i_262\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00001F440000E0BB"
    )
        port map (
      I0 => \uo_reg[2]_i_60_n_0\,
      I1 => f_b0(0),
      I2 => \uo[2]_i_181_n_0\,
      I3 => fit2(1),
      I4 => \uo[4]_i_140_n_0\,
      I5 => \uo_reg[2]_i_306_n_7\,
      O => \uo[2]_i_262_n_0\
    );
\uo[2]_i_265\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(7),
      I1 => \uo[2]_i_199_n_0\,
      I2 => pt(6),
      I3 => \uo[2]_i_200_n_0\,
      O => \uo[2]_i_265_n_0\
    );
\uo[2]_i_266\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EA83A802"
    )
        port map (
      I0 => pt(5),
      I1 => f_b0(0),
      I2 => fit2(1),
      I3 => fit2(2),
      I4 => pt(4),
      O => \uo[2]_i_266_n_0\
    );
\uo[2]_i_267\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => f_b0(0),
      I1 => pt(3),
      I2 => \uo[2]_i_180_n_0\,
      O => \uo[2]_i_267_n_0\
    );
\uo[2]_i_268\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => fit2(1),
      I1 => f_b0(0),
      I2 => \uo[4]_i_137_n_0\,
      O => \uo[2]_i_268_n_0\
    );
\uo[2]_i_269\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \uo[2]_i_199_n_0\,
      I1 => pt(7),
      I2 => \uo[2]_i_200_n_0\,
      I3 => pt(6),
      O => \uo[2]_i_269_n_0\
    );
\uo[2]_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \uo_reg[4]_i_32_n_2\,
      I1 => \uo_reg[4]_i_31_n_3\,
      O => \uo[2]_i_27_n_0\
    );
\uo[2]_i_270\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06606009"
    )
        port map (
      I0 => fit2(2),
      I1 => pt(5),
      I2 => f_b0(0),
      I3 => fit2(1),
      I4 => pt(4),
      O => \uo[2]_i_270_n_0\
    );
\uo[2]_i_271\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \uo[2]_i_180_n_0\,
      I1 => pt(3),
      I2 => f_b0(0),
      O => \uo[2]_i_271_n_0\
    );
\uo[2]_i_272\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => fit2(1),
      I1 => f_b0(0),
      I2 => \uo[4]_i_137_n_0\,
      O => \uo[2]_i_272_n_0\
    );
\uo[2]_i_273\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pt0(4),
      I1 => pt0(0),
      I2 => pt0(6),
      I3 => pt0(1),
      O => \uo[2]_i_273_n_0\
    );
\uo[2]_i_275\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \uo_reg[2]_i_218_n_5\,
      O => \uo[2]_i_275_n_0\
    );
\uo[2]_i_276\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \uo_reg[2]_i_93_n_3\,
      O => \uo[2]_i_276_n_0\
    );
\uo[2]_i_277\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \uo_reg[2]_i_93_n_3\,
      I1 => fit2(8),
      O => \uo[2]_i_277_n_0\
    );
\uo[2]_i_278\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => fit2(7),
      I1 => \uo_reg[2]_i_93_n_3\,
      O => \uo[2]_i_278_n_0\
    );
\uo[2]_i_279\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => fit2(6),
      I1 => fit2(8),
      O => \uo[2]_i_279_n_0\
    );
\uo[2]_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \uo_reg[2]_i_40_n_3\,
      I1 => \uo_reg[2]_i_39_n_3\,
      I2 => \uo_reg[2]_i_38_n_3\,
      I3 => \uo_reg[2]_i_37_n_3\,
      O => \uo[2]_i_28_n_0\
    );
\uo[2]_i_280\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => fit2(5),
      I1 => fit2(7),
      O => \uo[2]_i_280_n_0\
    );
\uo[2]_i_281\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => fit2(4),
      I1 => fit2(6),
      O => \uo[2]_i_281_n_0\
    );
\uo[2]_i_282\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => fit2(3),
      I1 => fit2(5),
      O => \uo[2]_i_282_n_0\
    );
\uo[2]_i_283\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => fit2(2),
      I1 => fit2(4),
      O => \uo[2]_i_283_n_0\
    );
\uo[2]_i_284\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \uo_reg[2]_i_93_n_3\,
      O => \uo[2]_i_284_n_0\
    );
\uo[2]_i_286\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \uo_reg[2]_i_93_n_3\,
      I1 => \uo_reg[2]_i_240_n_6\,
      O => \uo[2]_i_286_n_0\
    );
\uo[2]_i_287\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \uo_reg[2]_i_93_n_3\,
      O => \uo[2]_i_287_n_0\
    );
\uo[2]_i_288\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \uo_reg[2]_i_93_n_3\,
      I1 => fit2(8),
      O => \uo[2]_i_288_n_0\
    );
\uo[2]_i_289\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \uo_reg[2]_i_93_n_3\,
      I1 => fit2(7),
      O => \uo[2]_i_289_n_0\
    );
\uo[2]_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \uo_reg[4]_i_35_n_0\,
      I1 => \uo_reg[4]_i_33_n_3\,
      I2 => \uo_reg[2]_i_41_n_3\,
      I3 => \uo_reg[2]_i_42_n_3\,
      O => \uo[2]_i_29_n_0\
    );
\uo[2]_i_290\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => fit2(8),
      I1 => fit2(6),
      O => \uo[2]_i_290_n_0\
    );
\uo[2]_i_291\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => fit2(7),
      I1 => fit2(5),
      O => \uo[2]_i_291_n_0\
    );
\uo[2]_i_292\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => fit2(6),
      I1 => fit2(4),
      O => \uo[2]_i_292_n_0\
    );
\uo[2]_i_293\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => fit2(5),
      I1 => fit2(3),
      O => \uo[2]_i_293_n_0\
    );
\uo[2]_i_294\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \uo_reg[2]_i_93_n_3\,
      O => \uo[2]_i_294_n_0\
    );
\uo[2]_i_296\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fit2(8),
      O => \uo[2]_i_296_n_0\
    );
\uo[2]_i_297\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fit2(8),
      O => \uo[2]_i_297_n_0\
    );
\uo[2]_i_298\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => fit2(8),
      I1 => \uo_reg[2]_i_93_n_3\,
      O => \uo[2]_i_298_n_0\
    );
\uo[2]_i_299\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => fit2(7),
      I1 => \uo_reg[2]_i_93_n_3\,
      O => \uo[2]_i_299_n_0\
    );
\uo[2]_i_30\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \uo_reg[2]_i_34_n_2\,
      I1 => \uo_reg[2]_i_33_n_0\,
      O => \uo[2]_i_30_n_0\
    );
\uo[2]_i_300\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => fit2(6),
      I1 => fit2(8),
      O => \uo[2]_i_300_n_0\
    );
\uo[2]_i_301\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => fit2(5),
      I1 => fit2(7),
      O => \uo[2]_i_301_n_0\
    );
\uo[2]_i_302\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => fit2(4),
      I1 => fit2(6),
      O => \uo[2]_i_302_n_0\
    );
\uo[2]_i_303\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => fit2(3),
      I1 => fit2(5),
      O => \uo[2]_i_303_n_0\
    );
\uo[2]_i_304\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => fit2(2),
      I1 => fit2(4),
      O => \uo[2]_i_304_n_0\
    );
\uo[2]_i_307\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \uo_reg[2]_i_93_n_3\,
      I1 => \uo_reg[2]_i_342_n_1\,
      O => \uo[2]_i_307_n_0\
    );
\uo[2]_i_308\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \uo_reg[2]_i_93_n_3\,
      I1 => \uo_reg[2]_i_342_n_1\,
      O => \uo[2]_i_308_n_0\
    );
\uo[2]_i_309\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fit2(8),
      I1 => \uo_reg[2]_i_343_n_0\,
      O => \uo[2]_i_309_n_0\
    );
\uo[2]_i_310\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \uo_reg[2]_i_343_n_5\,
      I1 => fit2(7),
      O => \uo[2]_i_310_n_0\
    );
\uo[2]_i_311\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \uo_reg[2]_i_93_n_3\,
      I1 => \uo_reg[2]_i_342_n_1\,
      O => \uo[2]_i_311_n_0\
    );
\uo[2]_i_312\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"65"
    )
        port map (
      I0 => \uo_reg[2]_i_342_n_1\,
      I1 => \uo_reg[2]_i_342_n_6\,
      I2 => \uo_reg[2]_i_93_n_3\,
      O => \uo[2]_i_312_n_0\
    );
\uo[2]_i_313\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => \uo_reg[2]_i_343_n_0\,
      I1 => fit2(8),
      I2 => \uo_reg[2]_i_342_n_6\,
      I3 => \uo_reg[2]_i_93_n_3\,
      O => \uo[2]_i_313_n_0\
    );
\uo[2]_i_314\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => fit2(7),
      I1 => \uo_reg[2]_i_343_n_5\,
      I2 => \uo_reg[2]_i_343_n_0\,
      I3 => fit2(8),
      O => \uo[2]_i_314_n_0\
    );
\uo[2]_i_315\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => fit2(7),
      I1 => \uo_reg[2]_i_343_n_5\,
      O => \uo[2]_i_315_n_0\
    );
\uo[2]_i_316\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \uo_reg[2]_i_343_n_7\,
      I1 => fit2(5),
      O => \uo[2]_i_316_n_0\
    );
\uo[2]_i_317\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \uo_reg[2]_i_344_n_4\,
      I1 => fit2(4),
      O => \uo[2]_i_317_n_0\
    );
\uo[2]_i_318\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \uo_reg[2]_i_344_n_5\,
      I1 => fit2(3),
      O => \uo[2]_i_318_n_0\
    );
\uo[2]_i_319\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6966"
    )
        port map (
      I0 => \uo_reg[2]_i_343_n_5\,
      I1 => fit2(7),
      I2 => fit2(6),
      I3 => \uo_reg[2]_i_343_n_6\,
      O => \uo[2]_i_319_n_0\
    );
\uo[2]_i_320\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => fit2(5),
      I1 => \uo_reg[2]_i_343_n_7\,
      I2 => \uo_reg[2]_i_343_n_6\,
      I3 => fit2(6),
      O => \uo[2]_i_320_n_0\
    );
\uo[2]_i_321\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => fit2(4),
      I1 => \uo_reg[2]_i_344_n_4\,
      I2 => \uo_reg[2]_i_343_n_7\,
      I3 => fit2(5),
      O => \uo[2]_i_321_n_0\
    );
\uo[2]_i_322\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => fit2(3),
      I1 => \uo_reg[2]_i_344_n_5\,
      I2 => \uo_reg[2]_i_344_n_4\,
      I3 => fit2(4),
      O => \uo[2]_i_322_n_0\
    );
\uo[2]_i_323\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => fit2(1),
      I1 => fit2(3),
      O => \uo[2]_i_323_n_0\
    );
\uo[2]_i_324\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => fit2(2),
      I1 => f_b0(0),
      O => \uo[2]_i_324_n_0\
    );
\uo[2]_i_325\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fit2(1),
      O => \uo[2]_i_325_n_0\
    );
\uo[2]_i_326\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => fit2(4),
      I1 => fit2(2),
      O => \uo[2]_i_326_n_0\
    );
\uo[2]_i_327\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => fit2(3),
      I1 => fit2(1),
      O => \uo[2]_i_327_n_0\
    );
\uo[2]_i_328\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => f_b0(0),
      I1 => fit2(2),
      O => \uo[2]_i_328_n_0\
    );
\uo[2]_i_329\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => fit2(1),
      I1 => fit2(3),
      O => \uo[2]_i_329_n_0\
    );
\uo[2]_i_330\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => fit2(2),
      I1 => f_b0(0),
      O => \uo[2]_i_330_n_0\
    );
\uo[2]_i_331\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fit2(1),
      O => \uo[2]_i_331_n_0\
    );
\uo[2]_i_332\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \uo_reg[2]_i_344_n_6\,
      I1 => fit2(2),
      O => \uo[2]_i_332_n_0\
    );
\uo[2]_i_333\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \uo_reg[2]_i_344_n_7\,
      I1 => fit2(1),
      O => \uo[2]_i_333_n_0\
    );
\uo[2]_i_334\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \uo_reg[2]_i_306_n_4\,
      I1 => f_b0(0),
      O => \uo[2]_i_334_n_0\
    );
\uo[2]_i_335\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => fit2(2),
      I1 => \uo_reg[2]_i_344_n_6\,
      I2 => \uo_reg[2]_i_344_n_5\,
      I3 => fit2(3),
      O => \uo[2]_i_335_n_0\
    );
\uo[2]_i_336\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => fit2(1),
      I1 => \uo_reg[2]_i_344_n_7\,
      I2 => \uo_reg[2]_i_344_n_6\,
      I3 => fit2(2),
      O => \uo[2]_i_336_n_0\
    );
\uo[2]_i_337\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => f_b0(0),
      I1 => \uo_reg[2]_i_306_n_4\,
      I2 => \uo_reg[2]_i_344_n_7\,
      I3 => fit2(1),
      O => \uo[2]_i_337_n_0\
    );
\uo[2]_i_338\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => f_b0(0),
      I1 => \uo_reg[2]_i_306_n_4\,
      O => \uo[2]_i_338_n_0\
    );
\uo[2]_i_339\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => fit2(1),
      I1 => fit2(3),
      O => \uo[2]_i_339_n_0\
    );
\uo[2]_i_340\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => fit2(2),
      I1 => f_b0(0),
      O => \uo[2]_i_340_n_0\
    );
\uo[2]_i_341\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fit2(1),
      O => \uo[2]_i_341_n_0\
    );
\uo[2]_i_345\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \uo_reg[2]_i_93_n_3\,
      O => \uo[2]_i_345_n_0\
    );
\uo[2]_i_346\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \uo_reg[2]_i_93_n_3\,
      O => \uo[2]_i_346_n_0\
    );
\uo[2]_i_347\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \uo_reg[2]_i_93_n_3\,
      I1 => fit2(8),
      O => \uo[2]_i_347_n_0\
    );
\uo[2]_i_348\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => fit2(7),
      I1 => \uo_reg[2]_i_93_n_3\,
      O => \uo[2]_i_348_n_0\
    );
\uo[2]_i_349\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => fit2(6),
      I1 => fit2(8),
      O => \uo[2]_i_349_n_0\
    );
\uo[2]_i_350\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => fit2(5),
      I1 => fit2(7),
      O => \uo[2]_i_350_n_0\
    );
\uo[2]_i_351\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => fit2(4),
      I1 => fit2(6),
      O => \uo[2]_i_351_n_0\
    );
\uo[2]_i_352\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => fit2(3),
      I1 => fit2(5),
      O => \uo[2]_i_352_n_0\
    );
\uo[2]_i_353\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => fit2(2),
      I1 => fit2(4),
      O => \uo[2]_i_353_n_0\
    );
\uo[2]_i_44\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \uo_reg[2]_i_34_n_2\,
      O => \uo[2]_i_44_n_0\
    );
\uo[2]_i_45\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \uo_reg[2]_i_93_n_3\,
      I1 => pt(11),
      I2 => pt(10),
      O => \uo[2]_i_45_n_0\
    );
\uo[2]_i_46\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(9),
      I1 => fit2(8),
      I2 => pt(8),
      I3 => fit2(7),
      O => \uo[2]_i_46_n_0\
    );
\uo[2]_i_47\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => pt(11),
      I1 => pt(10),
      I2 => \uo_reg[2]_i_93_n_3\,
      O => \uo[2]_i_47_n_0\
    );
\uo[2]_i_48\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => fit2(8),
      I1 => pt(9),
      I2 => fit2(7),
      I3 => pt(8),
      O => \uo[2]_i_48_n_0\
    );
\uo[2]_i_51\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \uo_reg[2]_i_34_n_2\,
      I1 => \uo_reg[2]_i_93_n_3\,
      I2 => \uo[2]_i_111_n_0\,
      O => \uo[2]_i_51_n_0\
    );
\uo[2]_i_52\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \uo[2]_i_111_n_0\,
      I1 => \uo_reg[2]_i_34_n_2\,
      I2 => \uo_reg[2]_i_93_n_3\,
      O => \uo[2]_i_52_n_0\
    );
\uo[2]_i_53\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E0CE"
    )
        port map (
      I0 => pt(10),
      I1 => pt(11),
      I2 => \uo[2]_i_111_n_0\,
      I3 => \uo_reg[2]_i_93_n_3\,
      O => \uo[2]_i_53_n_0\
    );
\uo[2]_i_54\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A00FF9A0000FF00"
    )
        port map (
      I0 => fit2(7),
      I1 => fit2(6),
      I2 => \uo[2]_i_112_n_0\,
      I3 => pt(9),
      I4 => \uo[2]_i_113_n_0\,
      I5 => pt(8),
      O => \uo[2]_i_54_n_0\
    );
\uo[2]_i_55\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"95"
    )
        port map (
      I0 => \uo_reg[2]_i_34_n_2\,
      I1 => \uo_reg[2]_i_93_n_3\,
      I2 => \uo[2]_i_111_n_0\,
      O => \uo[2]_i_55_n_0\
    );
\uo[2]_i_56\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => \uo_reg[2]_i_93_n_3\,
      I1 => \uo[2]_i_111_n_0\,
      I2 => \uo_reg[2]_i_34_n_2\,
      O => \uo[2]_i_56_n_0\
    );
\uo[2]_i_57\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1841"
    )
        port map (
      I0 => pt(11),
      I1 => \uo_reg[2]_i_93_n_3\,
      I2 => \uo[2]_i_111_n_0\,
      I3 => pt(10),
      O => \uo[2]_i_57_n_0\
    );
\uo[2]_i_58\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"650000659A00009A"
    )
        port map (
      I0 => fit2(7),
      I1 => fit2(6),
      I2 => \uo[2]_i_112_n_0\,
      I3 => \uo[2]_i_113_n_0\,
      I4 => pt(9),
      I5 => pt(8),
      O => \uo[2]_i_58_n_0\
    );
\uo[2]_i_61\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \uo[2]_i_111_n_0\,
      I1 => \uo_reg[2]_i_93_n_3\,
      I2 => \uo_reg[2]_i_60_n_0\,
      O => \uo[2]_i_61_n_0\
    );
\uo[2]_i_62\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \m_s0_reg_n_0_[6]\,
      I1 => \m_s2_reg_n_0_[6]\,
      O => \uo[2]_i_62_n_0\
    );
\uo[2]_i_63\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \m_s0_reg_n_0_[5]\,
      I1 => \m_s2_reg_n_0_[5]\,
      O => \uo[2]_i_63_n_0\
    );
\uo[2]_i_64\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \m_s0_reg_n_0_[4]\,
      I1 => \m_s2_reg_n_0_[4]\,
      O => \uo[2]_i_64_n_0\
    );
\uo[2]_i_65\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \m_s0_reg_n_0_[3]\,
      I1 => \m_s2_reg_n_0_[3]\,
      O => \uo[2]_i_65_n_0\
    );
\uo[2]_i_66\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \m_s0_reg_n_0_[2]\,
      I1 => \m_s2_reg_n_0_[2]\,
      O => \uo[2]_i_66_n_0\
    );
\uo[2]_i_67\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \m_s0_reg_n_0_[1]\,
      I1 => \m_s2_reg_n_0_[1]\,
      O => \uo[2]_i_67_n_0\
    );
\uo[2]_i_68\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \m_s0_reg_n_0_[0]\,
      I1 => \m_s2_reg_n_0_[0]\,
      O => \uo[2]_i_68_n_0\
    );
\uo[2]_i_70\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \uo_reg[2]_i_34_n_2\,
      I1 => \uo_reg[2]_i_132_n_2\,
      O => \uo[2]_i_70_n_0\
    );
\uo[2]_i_71\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \uo_reg[2]_i_34_n_2\,
      I1 => \uo_reg[2]_i_132_n_2\,
      O => \uo[2]_i_71_n_0\
    );
\uo[2]_i_74\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \uo_reg[2]_i_34_n_2\,
      I1 => \uo_reg[2]_i_150_n_1\,
      O => \uo[2]_i_74_n_0\
    );
\uo[2]_i_75\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \uo_reg[2]_i_34_n_2\,
      I1 => \uo_reg[2]_i_150_n_1\,
      O => \uo[2]_i_75_n_0\
    );
\uo[2]_i_77\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \uo_reg[2]_i_34_n_2\,
      I1 => \uo_reg[2]_i_160_n_1\,
      O => \uo[2]_i_77_n_0\
    );
\uo[2]_i_78\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \uo_reg[2]_i_34_n_2\,
      I1 => \uo_reg[2]_i_160_n_1\,
      O => \uo[2]_i_78_n_0\
    );
\uo[2]_i_80\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \uo_reg[2]_i_34_n_2\,
      I1 => \uo_reg[2]_i_170_n_3\,
      O => \uo[2]_i_80_n_0\
    );
\uo[2]_i_81\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \uo_reg[2]_i_34_n_2\,
      I1 => \uo_reg[2]_i_170_n_3\,
      O => \uo[2]_i_81_n_0\
    );
\uo[2]_i_83\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \uo_reg[2]_i_34_n_2\,
      I1 => \uo_reg[2]_i_93_n_3\,
      I2 => \uo[2]_i_111_n_0\,
      O => \uo[2]_i_83_n_0\
    );
\uo[2]_i_84\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"95"
    )
        port map (
      I0 => \uo_reg[2]_i_34_n_2\,
      I1 => \uo_reg[2]_i_93_n_3\,
      I2 => \uo[2]_i_111_n_0\,
      O => \uo[2]_i_84_n_0\
    );
\uo[2]_i_85\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(7),
      I1 => fit2(6),
      I2 => pt(6),
      I3 => fit2(5),
      O => \uo[2]_i_85_n_0\
    );
\uo[2]_i_86\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(5),
      I1 => fit2(4),
      I2 => pt(4),
      I3 => fit2(3),
      O => \uo[2]_i_86_n_0\
    );
\uo[2]_i_87\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"444D"
    )
        port map (
      I0 => fit2(2),
      I1 => pt(3),
      I2 => fit2(1),
      I3 => \uo[2]_i_180_n_0\,
      O => \uo[2]_i_87_n_0\
    );
\uo[2]_i_88\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F44"
    )
        port map (
      I0 => \uo_reg[2]_i_60_n_0\,
      I1 => f_b0(0),
      I2 => \uo[2]_i_181_n_0\,
      I3 => fit2(1),
      O => \uo[2]_i_88_n_0\
    );
\uo[2]_i_89\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => fit2(6),
      I1 => pt(7),
      I2 => fit2(5),
      I3 => pt(6),
      O => \uo[2]_i_89_n_0\
    );
\uo[2]_i_90\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => fit2(4),
      I1 => pt(5),
      I2 => pt(4),
      I3 => fit2(3),
      O => \uo[2]_i_90_n_0\
    );
\uo[2]_i_91\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => \uo[2]_i_180_n_0\,
      I1 => fit2(1),
      I2 => pt(3),
      I3 => fit2(2),
      O => \uo[2]_i_91_n_0\
    );
\uo[2]_i_92\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2033"
    )
        port map (
      I0 => \uo_reg[2]_i_60_n_0\,
      I1 => f_b0(0),
      I2 => \uo[2]_i_181_n_0\,
      I3 => fit2(1),
      O => \uo[2]_i_92_n_0\
    );
\uo[2]_i_96\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \uo_reg[2]_i_34_n_2\,
      O => \uo[2]_i_96_n_0\
    );
\uo[2]_i_97\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \uo_reg[2]_i_34_n_2\,
      O => \uo[2]_i_97_n_0\
    );
\uo[2]_i_98\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F440"
    )
        port map (
      I0 => fit2(8),
      I1 => pt(10),
      I2 => \uo_reg[2]_i_93_n_3\,
      I3 => pt(11),
      O => \uo[2]_i_98_n_0\
    );
\uo[2]_i_99\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(9),
      I1 => fit2(7),
      I2 => pt(8),
      I3 => fit2(6),
      O => \uo[2]_i_99_n_0\
    );
\uo[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAA003000"
    )
        port map (
      I0 => pw_k(3),
      I1 => \uo[3]_i_15_n_0\,
      I2 => \uo[4]_i_16_n_0\,
      I3 => \uo[2]_i_5_0\,
      I4 => \uo[2]_i_5\,
      I5 => \uo[3]_i_5\,
      O => \pw_k_reg[3]_0\
    );
\uo[3]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => f_off11_in,
      I1 => \uo_reg[4]_i_32_n_2\,
      I2 => \uo_reg[4]_i_31_n_3\,
      O => \uo[3]_i_15_n_0\
    );
\uo[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15554000"
    )
        port map (
      I0 => run,
      I1 => \^uio_r_reg[7]_0\(1),
      I2 => \^uio_r_reg[7]_0\(0),
      I3 => \^uio_r_reg[7]_0\(2),
      I4 => \^uio_r_reg[7]_0\(3),
      O => run_reg
    );
\uo[4]_i_100\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \uo_reg[4]_i_139_n_4\,
      I1 => pt(5),
      I2 => \uo_reg[4]_i_139_n_5\,
      I3 => pt(4),
      O => \uo[4]_i_100_n_0\
    );
\uo[4]_i_101\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0990"
    )
        port map (
      I0 => \uo_reg[4]_i_139_n_6\,
      I1 => pt(3),
      I2 => \uo[2]_i_180_n_0\,
      I3 => \uo_reg[4]_i_139_n_7\,
      O => \uo[4]_i_101_n_0\
    );
\uo[4]_i_102\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002C77"
    )
        port map (
      I0 => \uo_reg[2]_i_60_n_0\,
      I1 => f_b0(0),
      I2 => \uo[2]_i_181_n_0\,
      I3 => fit2(1),
      I4 => \uo[4]_i_140_n_0\,
      O => \uo[4]_i_102_n_0\
    );
\uo[4]_i_106\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \uo_reg[4]_i_105_n_6\,
      I1 => \uo_reg[2]_i_93_n_3\,
      O => \uo[4]_i_106_n_0\
    );
\uo[4]_i_107\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \uo_reg[4]_i_105_n_1\,
      O => \uo[4]_i_107_n_0\
    );
\uo[4]_i_108\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => \uo_reg[2]_i_93_n_3\,
      I1 => \uo_reg[4]_i_105_n_6\,
      I2 => \uo_reg[4]_i_105_n_1\,
      O => \uo[4]_i_108_n_0\
    );
\uo[4]_i_109\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(7),
      I1 => fit2(3),
      I2 => pt(6),
      I3 => fit2(2),
      O => \uo[4]_i_109_n_0\
    );
\uo[4]_i_110\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(5),
      I1 => fit2(1),
      I2 => pt(4),
      I3 => f_b0(0),
      O => \uo[4]_i_110_n_0\
    );
\uo[4]_i_111\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => pt(3),
      I1 => \uo[2]_i_180_n_0\,
      O => \uo[4]_i_111_n_0\
    );
\uo[4]_i_112\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => fit2(1),
      I1 => f_b0(0),
      I2 => \uo[4]_i_137_n_0\,
      O => \uo[4]_i_112_n_0\
    );
\uo[4]_i_113\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => fit2(3),
      I1 => pt(7),
      I2 => fit2(2),
      I3 => pt(6),
      O => \uo[4]_i_113_n_0\
    );
\uo[4]_i_114\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => fit2(1),
      I1 => pt(5),
      I2 => pt(4),
      I3 => f_b0(0),
      O => \uo[4]_i_114_n_0\
    );
\uo[4]_i_115\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \uo[2]_i_180_n_0\,
      I1 => pt(3),
      O => \uo[4]_i_115_n_0\
    );
\uo[4]_i_116\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => fit2(1),
      I1 => f_b0(0),
      I2 => \uo[4]_i_137_n_0\,
      O => \uo[4]_i_116_n_0\
    );
\uo[4]_i_118\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(7),
      I1 => \uo_reg[4]_i_127_n_7\,
      I2 => pt(6),
      I3 => \uo_reg[4]_i_159_n_4\,
      O => \uo[4]_i_118_n_0\
    );
\uo[4]_i_119\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(5),
      I1 => \uo_reg[4]_i_159_n_5\,
      I2 => pt(4),
      I3 => \uo_reg[4]_i_159_n_6\,
      O => \uo[4]_i_119_n_0\
    );
\uo[4]_i_120\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"222B"
    )
        port map (
      I0 => pt(3),
      I1 => \uo_reg[4]_i_160_n_7\,
      I2 => fit2(1),
      I3 => \uo[2]_i_180_n_0\,
      O => \uo[4]_i_120_n_0\
    );
\uo[4]_i_121\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F44"
    )
        port map (
      I0 => \uo_reg[2]_i_60_n_0\,
      I1 => f_b0(0),
      I2 => \uo[2]_i_181_n_0\,
      I3 => fit2(1),
      O => \uo[4]_i_121_n_0\
    );
\uo[4]_i_122\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \uo_reg[4]_i_127_n_7\,
      I1 => pt(7),
      I2 => \uo_reg[4]_i_159_n_4\,
      I3 => pt(6),
      O => \uo[4]_i_122_n_0\
    );
\uo[4]_i_123\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \uo_reg[4]_i_159_n_5\,
      I1 => pt(5),
      I2 => \uo_reg[4]_i_159_n_6\,
      I3 => pt(4),
      O => \uo[4]_i_123_n_0\
    );
\uo[4]_i_124\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0990"
    )
        port map (
      I0 => \uo_reg[4]_i_160_n_7\,
      I1 => pt(3),
      I2 => \uo[2]_i_180_n_0\,
      I3 => fit2(1),
      O => \uo[4]_i_124_n_0\
    );
\uo[4]_i_125\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2033"
    )
        port map (
      I0 => \uo_reg[2]_i_60_n_0\,
      I1 => f_b0(0),
      I2 => \uo[2]_i_181_n_0\,
      I3 => fit2(1),
      O => \uo[4]_i_125_n_0\
    );
\uo[4]_i_129\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \uo_reg[2]_i_93_n_3\,
      I1 => \uo[2]_i_111_n_0\,
      I2 => \uo_reg[2]_i_34_n_2\,
      O => \uo[4]_i_129_n_0\
    );
\uo[4]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F0F0F07070F0F"
    )
        port map (
      I0 => \uo[4]_i_16_n_0\,
      I1 => \uo[4]_i_17_n_0\,
      I2 => \uo[4]_i_6\,
      I3 => pw_k(4),
      I4 => \uo[2]_i_5_0\,
      I5 => \uo[2]_i_5\,
      O => \pw_k_reg[4]_0\
    );
\uo[4]_i_130\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444414455555555"
    )
        port map (
      I0 => \uo_reg[2]_i_34_n_2\,
      I1 => fit2(8),
      I2 => fit2(7),
      I3 => \uo[2]_i_112_n_0\,
      I4 => fit2(6),
      I5 => \uo_reg[2]_i_93_n_3\,
      O => \uo[4]_i_130_n_0\
    );
\uo[4]_i_131\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A009A00FF9A9A00"
    )
        port map (
      I0 => fit2(7),
      I1 => fit2(6),
      I2 => \uo[2]_i_112_n_0\,
      I3 => pt(11),
      I4 => pt(10),
      I5 => \uo[4]_i_94_n_0\,
      O => \uo[4]_i_131_n_0\
    );
\uo[4]_i_132\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(9),
      I1 => \uo[2]_i_198_n_0\,
      I2 => pt(8),
      I3 => \uo[2]_i_199_n_0\,
      O => \uo[4]_i_132_n_0\
    );
\uo[4]_i_133\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \uo_reg[2]_i_93_n_3\,
      I1 => \uo[2]_i_111_n_0\,
      I2 => \uo_reg[2]_i_34_n_2\,
      O => \uo[4]_i_133_n_0\
    );
\uo[4]_i_134\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0960"
    )
        port map (
      I0 => \uo_reg[2]_i_93_n_3\,
      I1 => \uo[2]_i_111_n_0\,
      I2 => \uo[2]_i_113_n_0\,
      I3 => \uo_reg[2]_i_34_n_2\,
      O => \uo[4]_i_134_n_0\
    );
\uo[4]_i_135\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"659A00000000659A"
    )
        port map (
      I0 => fit2(7),
      I1 => fit2(6),
      I2 => \uo[2]_i_112_n_0\,
      I3 => pt(11),
      I4 => \uo[4]_i_94_n_0\,
      I5 => pt(10),
      O => \uo[4]_i_135_n_0\
    );
\uo[4]_i_136\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \uo[2]_i_198_n_0\,
      I1 => pt(9),
      I2 => \uo[2]_i_199_n_0\,
      I3 => pt(8),
      O => \uo[4]_i_136_n_0\
    );
\uo[4]_i_137\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \uo[2]_i_273_n_0\,
      I1 => pt0(2),
      I2 => pt0(5),
      I3 => pt0(3),
      I4 => \uo_reg[2]_i_60_n_0\,
      O => \uo[4]_i_137_n_0\
    );
\uo[4]_i_138\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => f_b0(0),
      I1 => fit2(1),
      O => \uo[4]_i_138_n_0\
    );
\uo[4]_i_140\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA2"
    )
        port map (
      I0 => f_b0(0),
      I1 => \uo_reg[2]_i_60_n_0\,
      I2 => pt0(3),
      I3 => pt0(5),
      I4 => pt0(2),
      I5 => \uo[2]_i_273_n_0\,
      O => \uo[4]_i_140_n_0\
    );
\uo[4]_i_141\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \uo_reg[2]_i_93_n_3\,
      I1 => \uo_reg[4]_i_142_n_0\,
      O => \uo[4]_i_141_n_0\
    );
\uo[4]_i_143\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C6"
    )
        port map (
      I0 => \uo_reg[4]_i_142_n_0\,
      I1 => \uo_reg[4]_i_105_n_6\,
      I2 => \uo_reg[2]_i_93_n_3\,
      O => \uo[4]_i_143_n_0\
    );
\uo[4]_i_144\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \uo_reg[4]_i_142_n_5\,
      I1 => \uo_reg[4]_i_142_n_0\,
      I2 => \uo_reg[2]_i_93_n_3\,
      O => \uo[4]_i_144_n_0\
    );
\uo[4]_i_145\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \uo_reg[4]_i_142_n_5\,
      I1 => fit2(8),
      O => \uo[4]_i_145_n_0\
    );
\uo[4]_i_146\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => fit2(7),
      I1 => \uo_reg[4]_i_142_n_6\,
      O => \uo[4]_i_146_n_0\
    );
\uo[4]_i_147\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => fit2(6),
      I1 => \uo_reg[4]_i_142_n_7\,
      O => \uo[4]_i_147_n_0\
    );
\uo[4]_i_148\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => fit2(5),
      I1 => \uo_reg[4]_i_188_n_4\,
      O => \uo[4]_i_148_n_0\
    );
\uo[4]_i_149\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => fit2(4),
      I1 => \uo_reg[4]_i_188_n_5\,
      O => \uo[4]_i_149_n_0\
    );
\uo[4]_i_150\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => fit2(3),
      I1 => \uo_reg[4]_i_188_n_6\,
      O => \uo[4]_i_150_n_0\
    );
\uo[4]_i_151\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \uo_reg[2]_i_93_n_3\,
      O => fit2(9)
    );
\uo[4]_i_152\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_0_in(4),
      I1 => f_b0(4),
      O => \uo[4]_i_152_n_0\
    );
\uo[4]_i_153\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => f_b0(2),
      I1 => p_0_in(2),
      O => \uo[4]_i_153_n_0\
    );
\uo[4]_i_154\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_0_in(2),
      I1 => f_b0(2),
      O => \uo[4]_i_154_n_0\
    );
\uo[4]_i_155\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => p_0_in(3),
      I1 => f_b0(3),
      I2 => f_b0(4),
      I3 => p_0_in(4),
      O => \uo[4]_i_155_n_0\
    );
\uo[4]_i_156\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => p_0_in(2),
      I1 => f_b0(2),
      I2 => p_0_in(3),
      I3 => f_b0(3),
      O => \uo[4]_i_156_n_0\
    );
\uo[4]_i_157\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => p_0_in(1),
      I1 => f_b0(1),
      I2 => f_b0(2),
      I3 => p_0_in(2),
      O => \uo[4]_i_157_n_0\
    );
\uo[4]_i_158\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => f_b0(1),
      I1 => p_0_in(1),
      O => \uo[4]_i_158_n_0\
    );
\uo[4]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000151"
    )
        port map (
      I0 => \uo[2]_i_20_n_0\,
      I1 => \uo[4]_i_27_n_0\,
      I2 => \uo[4]_i_28_n_0\,
      I3 => \uo[4]_i_29_n_0\,
      I4 => \uo[1]_i_16_n_0\,
      I5 => \uo[4]_i_30_n_0\,
      O => \uo[4]_i_16_n_0\
    );
\uo[4]_i_162\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \uo_reg[2]_i_93_n_3\,
      I1 => fit2(8),
      O => \uo[4]_i_162_n_0\
    );
\uo[4]_i_163\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => fit2(8),
      I1 => \uo_reg[2]_i_93_n_3\,
      O => \uo[4]_i_163_n_0\
    );
\uo[4]_i_164\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \uo_reg[4]_i_161_n_6\,
      I1 => \uo_reg[2]_i_93_n_3\,
      I2 => \uo_reg[4]_i_161_n_1\,
      O => \uo[4]_i_164_n_0\
    );
\uo[4]_i_165\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \uo_reg[4]_i_161_n_6\,
      O => \uo[4]_i_165_n_0\
    );
\uo[4]_i_166\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \uo_reg[2]_i_93_n_3\,
      I1 => fit2(8),
      O => \uo[4]_i_166_n_0\
    );
\uo[4]_i_167\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"59"
    )
        port map (
      I0 => fit2(8),
      I1 => fit2(7),
      I2 => \uo_reg[2]_i_93_n_3\,
      O => \uo[4]_i_167_n_0\
    );
\uo[4]_i_168\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => fit2(8),
      I1 => fit2(6),
      O => \uo[4]_i_168_n_0\
    );
\uo[4]_i_169\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => fit2(7),
      I1 => fit2(5),
      O => \uo[4]_i_169_n_0\
    );
\uo[4]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => f_off11_in,
      I1 => \uo_reg[4]_i_31_n_3\,
      I2 => \uo_reg[4]_i_32_n_2\,
      O => \uo[4]_i_17_n_0\
    );
\uo[4]_i_170\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => fit2(6),
      I1 => fit2(4),
      O => \uo[4]_i_170_n_0\
    );
\uo[4]_i_171\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => fit2(5),
      I1 => fit2(3),
      O => \uo[4]_i_171_n_0\
    );
\uo[4]_i_172\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4BB4"
    )
        port map (
      I0 => fit2(6),
      I1 => fit2(8),
      I2 => fit2(7),
      I3 => \uo_reg[2]_i_93_n_3\,
      O => \uo[4]_i_172_n_0\
    );
\uo[4]_i_173\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => fit2(5),
      I1 => fit2(7),
      I2 => fit2(6),
      I3 => fit2(8),
      O => \uo[4]_i_173_n_0\
    );
\uo[4]_i_174\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => fit2(4),
      I1 => fit2(6),
      I2 => fit2(5),
      I3 => fit2(7),
      O => \uo[4]_i_174_n_0\
    );
\uo[4]_i_175\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => fit2(3),
      I1 => fit2(5),
      I2 => fit2(4),
      I3 => fit2(6),
      O => \uo[4]_i_175_n_0\
    );
\uo[4]_i_176\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEAAA803AAA80002"
    )
        port map (
      I0 => pt(7),
      I1 => fit2(1),
      I2 => f_b0(0),
      I3 => fit2(2),
      I4 => fit2(3),
      I5 => pt(6),
      O => \uo[4]_i_176_n_0\
    );
\uo[4]_i_177\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B2"
    )
        port map (
      I0 => pt(5),
      I1 => fit2(1),
      I2 => pt(4),
      I3 => f_b0(0),
      O => \uo[4]_i_177_n_0\
    );
\uo[4]_i_178\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => pt(3),
      I1 => \uo[2]_i_180_n_0\,
      O => \uo[4]_i_178_n_0\
    );
\uo[4]_i_179\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => fit2(1),
      I1 => f_b0(0),
      I2 => \uo[4]_i_137_n_0\,
      O => \uo[4]_i_179_n_0\
    );
\uo[4]_i_180\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0606066060606009"
    )
        port map (
      I0 => fit2(3),
      I1 => pt(7),
      I2 => fit2(2),
      I3 => fit2(1),
      I4 => f_b0(0),
      I5 => pt(6),
      O => \uo[4]_i_180_n_0\
    );
\uo[4]_i_181\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6009"
    )
        port map (
      I0 => fit2(1),
      I1 => pt(5),
      I2 => pt(4),
      I3 => f_b0(0),
      O => \uo[4]_i_181_n_0\
    );
\uo[4]_i_182\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \uo[2]_i_180_n_0\,
      I1 => pt(3),
      O => \uo[4]_i_182_n_0\
    );
\uo[4]_i_183\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => fit2(1),
      I1 => f_b0(0),
      I2 => \uo[4]_i_137_n_0\,
      O => \uo[4]_i_183_n_0\
    );
\uo[4]_i_184\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => fit2(2),
      I1 => \uo_reg[4]_i_188_n_7\,
      O => \uo[4]_i_184_n_0\
    );
\uo[4]_i_185\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => fit2(1),
      I1 => \uo_reg[4]_i_187_n_4\,
      O => \uo[4]_i_185_n_0\
    );
\uo[4]_i_186\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => f_b0(0),
      I1 => \uo_reg[4]_i_187_n_5\,
      O => \uo[4]_i_186_n_0\
    );
\uo[4]_i_189\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \uo_reg[2]_i_93_n_3\,
      O => \uo[4]_i_189_n_0\
    );
\uo[4]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^uio_r_reg[7]_0\(7),
      I1 => \uo_reg[4]_i_15_0\(7),
      I2 => \^uio_r_reg[7]_0\(6),
      I3 => \uo_reg[4]_i_15_0\(6),
      O => \uo[4]_i_19_n_0\
    );
\uo[4]_i_190\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \uo_reg[2]_i_93_n_3\,
      I1 => fit2(8),
      O => \uo[4]_i_190_n_0\
    );
\uo[4]_i_191\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => fit2(7),
      I1 => \uo_reg[2]_i_93_n_3\,
      O => \uo[4]_i_191_n_0\
    );
\uo[4]_i_192\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => fit2(6),
      I1 => fit2(8),
      O => \uo[4]_i_192_n_0\
    );
\uo[4]_i_193\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => fit2(4),
      I1 => fit2(2),
      O => \uo[4]_i_193_n_0\
    );
\uo[4]_i_194\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => fit2(3),
      I1 => fit2(1),
      O => \uo[4]_i_194_n_0\
    );
\uo[4]_i_195\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => fit2(2),
      I1 => f_b0(0),
      O => \uo[4]_i_195_n_0\
    );
\uo[4]_i_196\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => fit2(2),
      I1 => fit2(4),
      I2 => fit2(3),
      I3 => fit2(5),
      O => \uo[4]_i_196_n_0\
    );
\uo[4]_i_197\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => fit2(1),
      I1 => fit2(3),
      I2 => fit2(2),
      I3 => fit2(4),
      O => \uo[4]_i_197_n_0\
    );
\uo[4]_i_198\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => f_b0(0),
      I1 => fit2(2),
      I2 => fit2(1),
      I3 => fit2(3),
      O => \uo[4]_i_198_n_0\
    );
\uo[4]_i_199\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => f_b0(0),
      I1 => fit2(2),
      O => \uo[4]_i_199_n_0\
    );
\uo[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555555540000000"
    )
        port map (
      I0 => run,
      I1 => \^uio_r_reg[7]_0\(2),
      I2 => \^uio_r_reg[7]_0\(0),
      I3 => \^uio_r_reg[7]_0\(1),
      I4 => \^uio_r_reg[7]_0\(3),
      I5 => \^uio_r_reg[7]_0\(4),
      O => run_reg_0
    );
\uo[4]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^uio_r_reg[7]_0\(5),
      I1 => \uo_reg[4]_i_15_0\(5),
      I2 => \^uio_r_reg[7]_0\(4),
      I3 => \uo_reg[4]_i_15_0\(4),
      O => \uo[4]_i_20_n_0\
    );
\uo[4]_i_200\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => fit2(4),
      I1 => fit2(2),
      O => \uo[4]_i_200_n_0\
    );
\uo[4]_i_201\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => fit2(3),
      I1 => fit2(1),
      O => \uo[4]_i_201_n_0\
    );
\uo[4]_i_202\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => fit2(2),
      I1 => f_b0(0),
      O => \uo[4]_i_202_n_0\
    );
\uo[4]_i_203\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => fit2(2),
      I1 => fit2(4),
      I2 => fit2(3),
      I3 => fit2(5),
      O => \uo[4]_i_203_n_0\
    );
\uo[4]_i_204\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => fit2(1),
      I1 => fit2(3),
      I2 => fit2(2),
      I3 => fit2(4),
      O => \uo[4]_i_204_n_0\
    );
\uo[4]_i_205\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => f_b0(0),
      I1 => fit2(2),
      I2 => fit2(1),
      I3 => fit2(3),
      O => \uo[4]_i_205_n_0\
    );
\uo[4]_i_206\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => f_b0(0),
      I1 => fit2(2),
      O => \uo[4]_i_206_n_0\
    );
\uo[4]_i_207\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \uo_reg[2]_i_93_n_3\,
      O => \uo[4]_i_207_n_0\
    );
\uo[4]_i_208\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => fit2(1),
      I1 => fit2(3),
      O => \uo[4]_i_208_n_0\
    );
\uo[4]_i_209\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => fit2(2),
      I1 => f_b0(0),
      O => \uo[4]_i_209_n_0\
    );
\uo[4]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^uio_r_reg[7]_0\(3),
      I1 => \uo_reg[4]_i_15_0\(3),
      I2 => \^uio_r_reg[7]_0\(2),
      I3 => \uo_reg[4]_i_15_0\(2),
      O => \uo[4]_i_21_n_0\
    );
\uo[4]_i_210\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fit2(1),
      O => \uo[4]_i_210_n_0\
    );
\uo[4]_i_211\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => fit2(5),
      I1 => fit2(7),
      O => \uo[4]_i_211_n_0\
    );
\uo[4]_i_212\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => fit2(4),
      I1 => fit2(6),
      O => \uo[4]_i_212_n_0\
    );
\uo[4]_i_213\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => fit2(3),
      I1 => fit2(5),
      O => \uo[4]_i_213_n_0\
    );
\uo[4]_i_214\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => fit2(2),
      I1 => fit2(4),
      O => \uo[4]_i_214_n_0\
    );
\uo[4]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^uio_r_reg[7]_0\(1),
      I1 => \uo_reg[4]_i_15_0\(1),
      I2 => \^uio_r_reg[7]_0\(0),
      I3 => \uo_reg[4]_i_15_0\(0),
      O => \uo[4]_i_22_n_0\
    );
\uo[4]_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF00F4"
    )
        port map (
      I0 => \uo_reg[4]_i_33_n_3\,
      I1 => \uo[4]_i_34_n_0\,
      I2 => \uo_reg[4]_i_35_n_0\,
      I3 => \uo_reg[2]_i_33_n_0\,
      I4 => \uo_reg[2]_i_34_n_2\,
      O => \uo[4]_i_27_n_0\
    );
\uo[4]_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \uo_reg[2]_i_32_n_3\,
      I1 => \uo_reg[2]_i_31_n_0\,
      I2 => \uo[2]_i_28_n_0\,
      I3 => \uo_reg[4]_i_31_n_3\,
      I4 => \uo_reg[4]_i_32_n_2\,
      O => \uo[4]_i_28_n_0\
    );
\uo[4]_i_29\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \uo_reg[4]_i_32_n_2\,
      I1 => \uo[2]_i_26_n_0\,
      O => \uo[4]_i_29_n_0\
    );
\uo[4]_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEEEEF"
    )
        port map (
      I0 => \uo_reg[4]_i_31_n_3\,
      I1 => \uo_reg[4]_i_32_n_2\,
      I2 => \uo_reg[2]_i_34_n_2\,
      I3 => \uo_reg[2]_i_33_n_0\,
      I4 => \uo[2]_i_25_n_0\,
      O => \uo[4]_i_30_n_0\
    );
\uo[4]_i_34\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABBBABA"
    )
        port map (
      I0 => \uo_reg[2]_i_42_n_3\,
      I1 => \uo_reg[2]_i_41_n_3\,
      I2 => \uo_reg[1]_i_22_n_3\,
      I3 => \uo_reg[1]_i_21_n_3\,
      I4 => data0,
      O => \uo[4]_i_34_n_0\
    );
\uo[4]_i_37\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \uo_reg[2]_i_34_n_2\,
      I1 => \uo_reg[4]_i_63_n_1\,
      O => \uo[4]_i_37_n_0\
    );
\uo[4]_i_38\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \uo_reg[2]_i_34_n_2\,
      I1 => \uo_reg[4]_i_63_n_1\,
      O => \uo[4]_i_38_n_0\
    );
\uo[4]_i_40\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \uo_reg[2]_i_34_n_2\,
      O => pt(12)
    );
\uo[4]_i_42\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \uo_reg[2]_i_34_n_2\,
      I1 => \uo_reg[4]_i_82_n_3\,
      O => \uo[4]_i_42_n_0\
    );
\uo[4]_i_43\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \uo_reg[2]_i_34_n_2\,
      I1 => \uo_reg[4]_i_82_n_3\,
      O => \uo[4]_i_43_n_0\
    );
\uo[4]_i_46\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4C"
    )
        port map (
      I0 => \uo[2]_i_111_n_0\,
      I1 => \uo_reg[2]_i_34_n_2\,
      I2 => \uo_reg[2]_i_93_n_3\,
      O => \uo[4]_i_46_n_0\
    );
\uo[4]_i_47\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \uo_reg[2]_i_93_n_3\,
      I1 => \uo[2]_i_111_n_0\,
      I2 => \uo_reg[2]_i_34_n_2\,
      O => \uo[4]_i_47_n_0\
    );
\uo[4]_i_48\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9090F990"
    )
        port map (
      I0 => \uo_reg[2]_i_93_n_3\,
      I1 => \uo[2]_i_111_n_0\,
      I2 => pt(11),
      I3 => pt(10),
      I4 => \uo[2]_i_113_n_0\,
      O => \uo[4]_i_48_n_0\
    );
\uo[4]_i_49\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A009A00FF9A9A00"
    )
        port map (
      I0 => fit2(7),
      I1 => fit2(6),
      I2 => \uo[2]_i_112_n_0\,
      I3 => pt(9),
      I4 => pt(8),
      I5 => \uo[4]_i_94_n_0\,
      O => \uo[4]_i_49_n_0\
    );
\uo[4]_i_50\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"95"
    )
        port map (
      I0 => \uo_reg[2]_i_34_n_2\,
      I1 => \uo[2]_i_111_n_0\,
      I2 => \uo_reg[2]_i_93_n_3\,
      O => \uo[4]_i_50_n_0\
    );
\uo[4]_i_51\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \uo_reg[2]_i_93_n_3\,
      I1 => \uo[2]_i_111_n_0\,
      I2 => \uo_reg[2]_i_34_n_2\,
      O => \uo[4]_i_51_n_0\
    );
\uo[4]_i_52\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69000069"
    )
        port map (
      I0 => \uo_reg[2]_i_93_n_3\,
      I1 => \uo[2]_i_111_n_0\,
      I2 => pt(11),
      I3 => \uo[2]_i_113_n_0\,
      I4 => pt(10),
      O => \uo[4]_i_52_n_0\
    );
\uo[4]_i_53\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"659A00000000659A"
    )
        port map (
      I0 => fit2(7),
      I1 => fit2(6),
      I2 => \uo[2]_i_112_n_0\,
      I3 => pt(9),
      I4 => \uo[4]_i_94_n_0\,
      I5 => pt(8),
      O => \uo[4]_i_53_n_0\
    );
\uo[4]_i_55\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => \uo_reg[2]_i_34_n_2\,
      I1 => \uo_reg[4]_i_63_n_6\,
      I2 => \uo_reg[4]_i_63_n_7\,
      O => \uo[4]_i_55_n_0\
    );
\uo[4]_i_56\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => \uo_reg[2]_i_34_n_2\,
      I1 => \uo_reg[4]_i_103_n_4\,
      I2 => \uo_reg[4]_i_103_n_5\,
      O => \uo[4]_i_56_n_0\
    );
\uo[4]_i_57\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(11),
      I1 => \uo_reg[4]_i_103_n_6\,
      I2 => pt(10),
      I3 => \uo_reg[4]_i_103_n_7\,
      O => \uo[4]_i_57_n_0\
    );
\uo[4]_i_58\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(9),
      I1 => \uo_reg[4]_i_104_n_4\,
      I2 => pt(8),
      I3 => \uo_reg[4]_i_104_n_5\,
      O => \uo[4]_i_58_n_0\
    );
\uo[4]_i_59\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => \uo_reg[4]_i_63_n_6\,
      I1 => \uo_reg[4]_i_63_n_7\,
      I2 => \uo_reg[2]_i_34_n_2\,
      O => \uo[4]_i_59_n_0\
    );
\uo[4]_i_60\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => \uo_reg[4]_i_103_n_4\,
      I1 => \uo_reg[4]_i_103_n_5\,
      I2 => \uo_reg[2]_i_34_n_2\,
      O => \uo[4]_i_60_n_0\
    );
\uo[4]_i_61\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \uo_reg[4]_i_103_n_6\,
      I1 => pt(11),
      I2 => \uo_reg[4]_i_103_n_7\,
      I3 => pt(10),
      O => \uo[4]_i_61_n_0\
    );
\uo[4]_i_62\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \uo_reg[4]_i_104_n_4\,
      I1 => pt(9),
      I2 => \uo_reg[4]_i_104_n_5\,
      I3 => pt(8),
      O => \uo[4]_i_62_n_0\
    );
\uo[4]_i_65\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \uo_reg[2]_i_34_n_2\,
      O => \uo[4]_i_65_n_0\
    );
\uo[4]_i_66\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"51"
    )
        port map (
      I0 => \uo_reg[2]_i_34_n_2\,
      I1 => fit2(8),
      I2 => \uo_reg[2]_i_93_n_3\,
      O => \uo[4]_i_66_n_0\
    );
\uo[4]_i_67\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(11),
      I1 => fit2(7),
      I2 => pt(10),
      I3 => fit2(6),
      O => \uo[4]_i_67_n_0\
    );
\uo[4]_i_68\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(9),
      I1 => fit2(5),
      I2 => pt(8),
      I3 => fit2(4),
      O => \uo[4]_i_68_n_0\
    );
\uo[4]_i_69\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \uo_reg[2]_i_34_n_2\,
      I1 => \uo_reg[2]_i_93_n_3\,
      O => \uo[4]_i_69_n_0\
    );
\uo[4]_i_70\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"24"
    )
        port map (
      I0 => \uo_reg[2]_i_93_n_3\,
      I1 => fit2(8),
      I2 => \uo_reg[2]_i_34_n_2\,
      O => \uo[4]_i_70_n_0\
    );
\uo[4]_i_71\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => fit2(7),
      I1 => pt(11),
      I2 => fit2(6),
      I3 => pt(10),
      O => \uo[4]_i_71_n_0\
    );
\uo[4]_i_72\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => fit2(5),
      I1 => pt(9),
      I2 => fit2(4),
      I3 => pt(8),
      O => \uo[4]_i_72_n_0\
    );
\uo[4]_i_74\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => \uo_reg[2]_i_34_n_2\,
      I1 => \uo_reg[4]_i_82_n_3\,
      I2 => \uo_reg[4]_i_126_n_4\,
      O => \uo[4]_i_74_n_0\
    );
\uo[4]_i_75\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => \uo_reg[2]_i_34_n_2\,
      I1 => \uo_reg[4]_i_126_n_5\,
      I2 => \uo_reg[4]_i_126_n_6\,
      O => \uo[4]_i_75_n_0\
    );
\uo[4]_i_76\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(11),
      I1 => \uo_reg[4]_i_126_n_7\,
      I2 => pt(10),
      I3 => \uo_reg[4]_i_127_n_4\,
      O => \uo[4]_i_76_n_0\
    );
\uo[4]_i_77\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(9),
      I1 => \uo_reg[4]_i_127_n_5\,
      I2 => pt(8),
      I3 => \uo_reg[4]_i_127_n_6\,
      O => \uo[4]_i_77_n_0\
    );
\uo[4]_i_78\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"42"
    )
        port map (
      I0 => \uo_reg[4]_i_126_n_4\,
      I1 => \uo_reg[2]_i_34_n_2\,
      I2 => \uo_reg[4]_i_82_n_3\,
      O => \uo[4]_i_78_n_0\
    );
\uo[4]_i_79\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => \uo_reg[4]_i_126_n_5\,
      I1 => \uo_reg[4]_i_126_n_6\,
      I2 => \uo_reg[2]_i_34_n_2\,
      O => \uo[4]_i_79_n_0\
    );
\uo[4]_i_80\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \uo_reg[4]_i_126_n_7\,
      I1 => pt(11),
      I2 => \uo_reg[4]_i_127_n_4\,
      I3 => pt(10),
      O => \uo[4]_i_80_n_0\
    );
\uo[4]_i_81\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \uo_reg[4]_i_127_n_5\,
      I1 => pt(9),
      I2 => \uo_reg[4]_i_127_n_6\,
      I3 => pt(8),
      O => \uo[4]_i_81_n_0\
    );
\uo[4]_i_84\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4C"
    )
        port map (
      I0 => \uo[2]_i_111_n_0\,
      I1 => \uo_reg[2]_i_34_n_2\,
      I2 => \uo_reg[2]_i_93_n_3\,
      O => \uo[4]_i_84_n_0\
    );
\uo[4]_i_85\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"95"
    )
        port map (
      I0 => \uo_reg[2]_i_34_n_2\,
      I1 => \uo[2]_i_111_n_0\,
      I2 => \uo_reg[2]_i_93_n_3\,
      O => \uo[4]_i_85_n_0\
    );
\uo[4]_i_86\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(7),
      I1 => \uo[2]_i_198_n_0\,
      I2 => pt(6),
      I3 => \uo[2]_i_199_n_0\,
      O => \uo[4]_i_86_n_0\
    );
\uo[4]_i_87\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEAAA803AAA80002"
    )
        port map (
      I0 => pt(5),
      I1 => fit2(1),
      I2 => f_b0(0),
      I3 => fit2(2),
      I4 => fit2(3),
      I5 => pt(4),
      O => \uo[4]_i_87_n_0\
    );
\uo[4]_i_88\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B501"
    )
        port map (
      I0 => f_b0(0),
      I1 => \uo[2]_i_180_n_0\,
      I2 => fit2(1),
      I3 => pt(3),
      O => \uo[4]_i_88_n_0\
    );
\uo[4]_i_89\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => fit2(1),
      I1 => f_b0(0),
      I2 => \uo[4]_i_137_n_0\,
      O => \uo[4]_i_89_n_0\
    );
\uo[4]_i_90\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \uo[2]_i_198_n_0\,
      I1 => pt(7),
      I2 => \uo[2]_i_199_n_0\,
      I3 => pt(6),
      O => \uo[4]_i_90_n_0\
    );
\uo[4]_i_91\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0606066060606009"
    )
        port map (
      I0 => fit2(3),
      I1 => pt(5),
      I2 => fit2(2),
      I3 => fit2(1),
      I4 => f_b0(0),
      I5 => pt(4),
      O => \uo[4]_i_91_n_0\
    );
\uo[4]_i_92\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0960"
    )
        port map (
      I0 => fit2(1),
      I1 => pt(3),
      I2 => f_b0(0),
      I3 => \uo[2]_i_180_n_0\,
      O => \uo[4]_i_92_n_0\
    );
\uo[4]_i_93\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => fit2(1),
      I1 => f_b0(0),
      I2 => \uo[4]_i_137_n_0\,
      O => \uo[4]_i_93_n_0\
    );
\uo[4]_i_94\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555655"
    )
        port map (
      I0 => fit2(6),
      I1 => fit2(5),
      I2 => fit2(3),
      I3 => \uo[4]_i_138_n_0\,
      I4 => fit2(2),
      I5 => fit2(4),
      O => \uo[4]_i_94_n_0\
    );
\uo[4]_i_95\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(7),
      I1 => \uo_reg[4]_i_104_n_6\,
      I2 => pt(6),
      I3 => \uo_reg[4]_i_104_n_7\,
      O => \uo[4]_i_95_n_0\
    );
\uo[4]_i_96\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pt(5),
      I1 => \uo_reg[4]_i_139_n_4\,
      I2 => pt(4),
      I3 => \uo_reg[4]_i_139_n_5\,
      O => \uo[4]_i_96_n_0\
    );
\uo[4]_i_97\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"222B"
    )
        port map (
      I0 => pt(3),
      I1 => \uo_reg[4]_i_139_n_6\,
      I2 => \uo_reg[4]_i_139_n_7\,
      I3 => \uo[2]_i_180_n_0\,
      O => \uo[4]_i_97_n_0\
    );
\uo[4]_i_98\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3F771300"
    )
        port map (
      I0 => \uo_reg[2]_i_60_n_0\,
      I1 => f_b0(0),
      I2 => \uo[2]_i_181_n_0\,
      I3 => fit2(1),
      I4 => \uo[4]_i_140_n_0\,
      O => \uo[4]_i_98_n_0\
    );
\uo[4]_i_99\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \uo_reg[4]_i_104_n_6\,
      I1 => pt(7),
      I2 => \uo_reg[4]_i_104_n_7\,
      I3 => pt(6),
      O => \uo[4]_i_99_n_0\
    );
\uo[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => run,
      I1 => \uo[5]_i_7_n_0\,
      I2 => \^uio_r_reg[7]_0\(5),
      O => run_reg_1
    );
\uo[5]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^uio_r_reg[7]_0\(3),
      I1 => \^uio_r_reg[7]_0\(1),
      I2 => \^uio_r_reg[7]_0\(0),
      I3 => \^uio_r_reg[7]_0\(2),
      I4 => \^uio_r_reg[7]_0\(4),
      O => \uo[5]_i_7_n_0\
    );
\uo[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => run,
      I1 => \uo[7]_i_9_n_0\,
      I2 => \^uio_r_reg[7]_0\(6),
      O => run_reg_2
    );
\uo[7]_i_100\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \uo[7]_i_96_n_0\,
      I1 => \uo[7]_i_107_n_0\,
      I2 => \uo_reg[7]_i_63_0\,
      I3 => \uo[7]_i_108_n_0\,
      O => \uo[7]_i_100_n_0\
    );
\uo[7]_i_101\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9996666666699999"
    )
        port map (
      I0 => \uo[7]_i_97_n_0\,
      I1 => \uo[7]_i_119_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => uq(0),
      I5 => \uo[7]_i_120_n_0\,
      O => \uo[7]_i_101_n_0\
    );
\uo[7]_i_102\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9996666666699999"
    )
        port map (
      I0 => \uo[7]_i_98_n_0\,
      I1 => \uo[7]_i_121_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => uq(0),
      I5 => \uo[7]_i_122_n_0\,
      O => \uo[7]_i_102_n_0\
    );
\uo[7]_i_103\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA6AAA6A6656AA6A"
    )
        port map (
      I0 => \uo[7]_i_99_n_0\,
      I1 => \uo[7]_i_126_n_0\,
      I2 => uq(2),
      I3 => \uo[7]_i_118_n_0\,
      I4 => uq(3),
      I5 => \uo[7]_i_116_n_0\,
      O => \uo[7]_i_103_n_0\
    );
\uo[7]_i_104\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CECA0C00FEFACCC0"
    )
        port map (
      I0 => \^q\(0),
      I1 => uq(2),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => uq(3),
      I5 => uq(1),
      O => \uo[7]_i_104_n_0\
    );
\uo[7]_i_105\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00073737"
    )
        port map (
      I0 => \m_sec_reg_n_0_[4]\,
      I1 => uq(3),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => uq(2),
      O => \uo[7]_i_105_n_0\
    );
\uo[7]_i_107\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFBFFB0BBFBFF"
    )
        port map (
      I0 => \uo[7]_i_127_n_0\,
      I1 => uq(3),
      I2 => \uo[7]_i_112_n_0\,
      I3 => uq(2),
      I4 => uq(1),
      I5 => \uo[7]_i_128_n_0\,
      O => \uo[7]_i_107_n_0\
    );
\uo[7]_i_108\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3738C8C8"
    )
        port map (
      I0 => \m_sec_reg_n_0_[4]\,
      I1 => uq(3),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => uq(2),
      O => \uo[7]_i_108_n_0\
    );
\uo[7]_i_110\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => uq(3),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \uo[7]_i_110_n_0\
    );
\uo[7]_i_111\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08C8"
    )
        port map (
      I0 => \^q\(1),
      I1 => uq(1),
      I2 => \^q\(2),
      I3 => uq(0),
      O => \uo[7]_i_111_n_0\
    );
\uo[7]_i_112\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(2),
      I1 => \m_sec_reg_n_0_[4]\,
      O => \uo[7]_i_112_n_0\
    );
\uo[7]_i_113\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => uq(2),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => \uo[7]_i_113_n_0\
    );
\uo[7]_i_114\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => uq(2),
      I1 => \m_sec_reg_n_0_[1]\,
      I2 => \^q\(2),
      O => \uo[7]_i_114_n_0\
    );
\uo[7]_i_115\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(2),
      I1 => \m_sec_reg_n_0_[2]\,
      O => \uo[7]_i_115_n_0\
    );
\uo[7]_i_116\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(2),
      I1 => \m_sec_reg_n_0_[0]\,
      O => \uo[7]_i_116_n_0\
    );
\uo[7]_i_117\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => uq(0),
      I1 => \m_sec_reg_n_0_[3]\,
      I2 => \^q\(2),
      O => \uo[7]_i_117_n_0\
    );
\uo[7]_i_118\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(2),
      I1 => \m_sec_reg_n_0_[1]\,
      O => \uo[7]_i_118_n_0\
    );
\uo[7]_i_119\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFBFFB0BBFBFF"
    )
        port map (
      I0 => \uo[7]_i_115_n_0\,
      I1 => uq(3),
      I2 => \uo[7]_i_127_n_0\,
      I3 => uq(2),
      I4 => uq(1),
      I5 => \uo[7]_i_112_n_0\,
      O => \uo[7]_i_119_n_0\
    );
\uo[7]_i_120\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C3C387773C3C7888"
    )
        port map (
      I0 => \^q\(0),
      I1 => uq(1),
      I2 => uq(2),
      I3 => \m_sec_reg_n_0_[4]\,
      I4 => \^q\(2),
      I5 => \uo[7]_i_129_n_0\,
      O => \uo[7]_i_120_n_0\
    );
\uo[7]_i_121\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFBFFB0BBFBFF"
    )
        port map (
      I0 => \uo[7]_i_118_n_0\,
      I1 => uq(3),
      I2 => \uo[7]_i_115_n_0\,
      I3 => uq(2),
      I4 => uq(1),
      I5 => \uo[7]_i_127_n_0\,
      O => \uo[7]_i_121_n_0\
    );
\uo[7]_i_122\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C33CC33C87787878"
    )
        port map (
      I0 => \m_sec_reg_n_0_[4]\,
      I1 => uq(1),
      I2 => \uo[7]_i_130_n_0\,
      I3 => uq(3),
      I4 => \m_sec_reg_n_0_[2]\,
      I5 => \^q\(2),
      O => \uo[7]_i_122_n_0\
    );
\uo[7]_i_123\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C33CC33C87787878"
    )
        port map (
      I0 => \m_sec_reg_n_0_[3]\,
      I1 => uq(1),
      I2 => \uo[7]_i_131_n_0\,
      I3 => uq(3),
      I4 => \m_sec_reg_n_0_[1]\,
      I5 => \^q\(2),
      O => \uo[7]_i_123_n_0\
    );
\uo[7]_i_124\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C8C00000"
    )
        port map (
      I0 => \m_sec_reg_n_0_[1]\,
      I1 => uq(2),
      I2 => \^q\(2),
      I3 => \m_sec_reg_n_0_[0]\,
      I4 => uq(1),
      O => \uo[7]_i_124_n_0\
    );
\uo[7]_i_126\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => uq(1),
      I1 => \m_sec_reg_n_0_[2]\,
      I2 => \^q\(2),
      O => \uo[7]_i_126_n_0\
    );
\uo[7]_i_127\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(2),
      I1 => \m_sec_reg_n_0_[3]\,
      O => \uo[7]_i_127_n_0\
    );
\uo[7]_i_128\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      O => \uo[7]_i_128_n_0\
    );
\uo[7]_i_129\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => uq(3),
      I1 => \m_sec_reg_n_0_[3]\,
      I2 => \^q\(2),
      O => \uo[7]_i_129_n_0\
    );
\uo[7]_i_130\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => uq(2),
      I1 => \m_sec_reg_n_0_[3]\,
      I2 => \^q\(2),
      O => \uo[7]_i_130_n_0\
    );
\uo[7]_i_131\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => uq(2),
      I1 => \m_sec_reg_n_0_[2]\,
      I2 => \^q\(2),
      O => \uo[7]_i_131_n_0\
    );
\uo[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => \uo[7]_i_9_n_0\,
      I1 => \^uio_r_reg[7]_0\(6),
      I2 => \^uio_r_reg[7]_0\(7),
      I3 => run,
      O => \uio_r_reg[6]_0\
    );
\uo[7]_i_44\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => f_margin(13),
      I1 => f_uniq0(12),
      I2 => \uo_reg[7]_i_58_n_3\,
      O => \uo[7]_i_44_n_0\
    );
\uo[7]_i_45\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => f_margin(11),
      I1 => f_uniq0(11),
      I2 => f_margin(10),
      I3 => f_uniq0(10),
      O => \uo[7]_i_45_n_0\
    );
\uo[7]_i_46\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => f_uniq0(12),
      I1 => \uo_reg[7]_i_58_n_3\,
      I2 => f_margin(13),
      O => \uo[7]_i_46_n_0\
    );
\uo[7]_i_47\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => f_uniq0(11),
      I1 => f_margin(11),
      I2 => f_uniq0(10),
      I3 => f_margin(10),
      O => \uo[7]_i_47_n_0\
    );
\uo[7]_i_48\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => f_uniq0(0),
      I1 => f_uniq0(1),
      O => \uo[7]_i_48_n_0\
    );
\uo[7]_i_49\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => f_margin(9),
      I1 => f_uniq0(9),
      I2 => f_margin(8),
      I3 => f_uniq0(8),
      O => \uo[7]_i_49_n_0\
    );
\uo[7]_i_50\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => f_margin(7),
      I1 => f_uniq0(7),
      I2 => f_margin(6),
      I3 => f_uniq0(6),
      O => \uo[7]_i_50_n_0\
    );
\uo[7]_i_51\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => f_margin(5),
      I1 => f_uniq0(5),
      I2 => f_margin(4),
      I3 => f_uniq0(4),
      O => \uo[7]_i_51_n_0\
    );
\uo[7]_i_52\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => f_uniq0(9),
      I1 => f_margin(9),
      I2 => f_uniq0(8),
      I3 => f_margin(8),
      O => \uo[7]_i_52_n_0\
    );
\uo[7]_i_53\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => f_uniq0(7),
      I1 => f_margin(7),
      I2 => f_uniq0(6),
      I3 => f_margin(6),
      O => \uo[7]_i_53_n_0\
    );
\uo[7]_i_54\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => f_uniq0(5),
      I1 => f_margin(5),
      I2 => f_uniq0(4),
      I3 => f_margin(4),
      O => \uo[7]_i_54_n_0\
    );
\uo[7]_i_55\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => f_uniq0(3),
      I1 => f_uniq0(2),
      O => \uo[7]_i_55_n_0\
    );
\uo[7]_i_64\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(2),
      O => \uo[7]_i_64_n_0\
    );
\uo[7]_i_66\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => p_0_in(7),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \uo[7]_i_66_n_0\
    );
\uo[7]_i_67\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => p_0_in(6),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => \uo[7]_i_67_n_0\
    );
\uo[7]_i_68\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => p_0_in(5),
      I1 => \m_sec_reg_n_0_[4]\,
      I2 => \^q\(2),
      O => \uo[7]_i_68_n_0\
    );
\uo[7]_i_69\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => p_0_in(4),
      I1 => \m_sec_reg_n_0_[3]\,
      I2 => \^q\(2),
      O => \uo[7]_i_69_n_0\
    );
\uo[7]_i_70\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3D"
    )
        port map (
      I0 => \^q\(1),
      I1 => p_0_in(7),
      I2 => \^q\(2),
      O => \uo[7]_i_70_n_0\
    );
\uo[7]_i_71\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CDC2323D"
    )
        port map (
      I0 => \^q\(0),
      I1 => p_0_in(6),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => p_0_in(7),
      O => \uo[7]_i_71_n_0\
    );
\uo[7]_i_72\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CDC2323D"
    )
        port map (
      I0 => \m_sec_reg_n_0_[4]\,
      I1 => p_0_in(5),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => p_0_in(6),
      O => \uo[7]_i_72_n_0\
    );
\uo[7]_i_73\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CDC2323D"
    )
        port map (
      I0 => \m_sec_reg_n_0_[3]\,
      I1 => p_0_in(4),
      I2 => \^q\(2),
      I3 => \m_sec_reg_n_0_[4]\,
      I4 => p_0_in(5),
      O => \uo[7]_i_73_n_0\
    );
\uo[7]_i_75\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"202A8A8A808A2A2A"
    )
        port map (
      I0 => \uo[7]_i_104_n_0\,
      I1 => uq(2),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => uq(3),
      I5 => uq(0),
      O => \^uq_reg[2]\(0)
    );
\uo[7]_i_76\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040504055D5F5D5"
    )
        port map (
      I0 => \uo[7]_i_105_n_0\,
      I1 => \^q\(1),
      I2 => uq(1),
      I3 => \^q\(2),
      I4 => uq(0),
      I5 => \uo_reg[7]_i_60_0\,
      O => \uo[7]_i_76_n_0\
    );
\uo[7]_i_77\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"50150515F57F5F7F"
    )
        port map (
      I0 => \uo[7]_i_107_n_0\,
      I1 => \^q\(1),
      I2 => uq(1),
      I3 => \^q\(2),
      I4 => uq(0),
      I5 => \uo[7]_i_108_n_0\,
      O => \uo[7]_i_77_n_0\
    );
\uo[7]_i_80\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"695A965A96A569A5"
    )
        port map (
      I0 => \uo[7]_i_76_n_0\,
      I1 => uq(0),
      I2 => \uo[7]_i_110_n_0\,
      I3 => \^q\(2),
      I4 => uq(2),
      I5 => \uo[7]_i_104_n_0\,
      O => \uo[7]_i_80_n_0\
    );
\uo[7]_i_81\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9696969669966969"
    )
        port map (
      I0 => \uo[7]_i_77_n_0\,
      I1 => \uo[7]_i_111_n_0\,
      I2 => \uo_reg[7]_i_60_0\,
      I3 => \uo[7]_i_112_n_0\,
      I4 => uq(3),
      I5 => \uo[7]_i_113_n_0\,
      O => \uo[7]_i_81_n_0\
    );
\uo[7]_i_82\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C33CC33C87787878"
    )
        port map (
      I0 => \m_sec_reg_n_0_[2]\,
      I1 => uq(1),
      I2 => \uo[7]_i_114_n_0\,
      I3 => uq(3),
      I4 => \m_sec_reg_n_0_[0]\,
      I5 => \^q\(2),
      O => \uo[7]_i_82_n_0\
    );
\uo[7]_i_83\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5A785A88"
    )
        port map (
      I0 => uq(1),
      I1 => \m_sec_reg_n_0_[1]\,
      I2 => uq(2),
      I3 => \^q\(2),
      I4 => \m_sec_reg_n_0_[0]\,
      O => \uo[7]_i_83_n_0\
    );
\uo[7]_i_84\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => uq(1),
      I1 => \m_sec_reg_n_0_[0]\,
      I2 => \^q\(2),
      O => \uo[7]_i_84_n_0\
    );
\uo[7]_i_85\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3C660FA5C399F05A"
    )
        port map (
      I0 => uq(3),
      I1 => \uo[7]_i_115_n_0\,
      I2 => \uo[7]_i_114_n_0\,
      I3 => \uo[7]_i_116_n_0\,
      I4 => uq(1),
      I5 => \uo[7]_i_117_n_0\,
      O => \uo[7]_i_85_n_0\
    );
\uo[7]_i_86\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4B44B4BB4B444B44"
    )
        port map (
      I0 => \uo[7]_i_116_n_0\,
      I1 => uq(2),
      I2 => \uo[7]_i_118_n_0\,
      I3 => uq(1),
      I4 => \uo[7]_i_115_n_0\,
      I5 => uq(0),
      O => \uo[7]_i_86_n_0\
    );
\uo[7]_i_87\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3738C8C8"
    )
        port map (
      I0 => \m_sec_reg_n_0_[1]\,
      I1 => uq(0),
      I2 => \^q\(2),
      I3 => \m_sec_reg_n_0_[0]\,
      I4 => uq(1),
      O => \uo[7]_i_87_n_0\
    );
\uo[7]_i_88\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => uq(0),
      I1 => \m_sec_reg_n_0_[0]\,
      I2 => \^q\(2),
      O => \uo[7]_i_88_n_0\
    );
\uo[7]_i_89\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => p_0_in(3),
      I1 => \m_sec_reg_n_0_[2]\,
      I2 => \^q\(2),
      O => \uo[7]_i_89_n_0\
    );
\uo[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^uio_r_reg[7]_0\(4),
      I1 => \^uio_r_reg[7]_0\(2),
      I2 => \^uio_r_reg[7]_0\(0),
      I3 => \^uio_r_reg[7]_0\(1),
      I4 => \^uio_r_reg[7]_0\(3),
      I5 => \^uio_r_reg[7]_0\(5),
      O => \uo[7]_i_9_n_0\
    );
\uo[7]_i_90\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => p_0_in(2),
      I1 => \m_sec_reg_n_0_[1]\,
      I2 => \^q\(2),
      O => \uo[7]_i_90_n_0\
    );
\uo[7]_i_91\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => p_0_in(1),
      I1 => \m_sec_reg_n_0_[0]\,
      I2 => \^q\(2),
      O => \uo[7]_i_91_n_0\
    );
\uo[7]_i_92\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CDC2323D"
    )
        port map (
      I0 => \m_sec_reg_n_0_[2]\,
      I1 => p_0_in(3),
      I2 => \^q\(2),
      I3 => \m_sec_reg_n_0_[3]\,
      I4 => p_0_in(4),
      O => \uo[7]_i_92_n_0\
    );
\uo[7]_i_93\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CDC2323D"
    )
        port map (
      I0 => \m_sec_reg_n_0_[1]\,
      I1 => p_0_in(2),
      I2 => \^q\(2),
      I3 => \m_sec_reg_n_0_[2]\,
      I4 => p_0_in(3),
      O => \uo[7]_i_93_n_0\
    );
\uo[7]_i_94\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"040BFBF4"
    )
        port map (
      I0 => \m_sec_reg_n_0_[0]\,
      I1 => p_0_in(1),
      I2 => \^q\(2),
      I3 => \m_sec_reg_n_0_[1]\,
      I4 => p_0_in(2),
      O => \uo[7]_i_94_n_0\
    );
\uo[7]_i_95\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => \^q\(2),
      I1 => \m_sec_reg_n_0_[0]\,
      I2 => p_0_in(1),
      O => \uo[7]_i_95_n_0\
    );
\uo[7]_i_96\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FD555400"
    )
        port map (
      I0 => \uo[7]_i_119_n_0\,
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => uq(0),
      I4 => \uo[7]_i_120_n_0\,
      O => \uo[7]_i_96_n_0\
    );
\uo[7]_i_97\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FD555400"
    )
        port map (
      I0 => \uo[7]_i_121_n_0\,
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => uq(0),
      I4 => \uo[7]_i_122_n_0\,
      O => \uo[7]_i_97_n_0\
    );
\uo[7]_i_98\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0E0E0A0E000E000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \m_sec_reg_n_0_[4]\,
      I2 => uq(0),
      I3 => \uo[7]_i_123_n_0\,
      I4 => \m_sec_reg_n_0_[3]\,
      I5 => \uo[7]_i_124_n_0\,
      O => \uo[7]_i_98_n_0\
    );
\uo[7]_i_99\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A5F0A5F087F078F0"
    )
        port map (
      I0 => \uo[7]_i_124_n_0\,
      I1 => \m_sec_reg_n_0_[3]\,
      I2 => \uo[7]_i_123_n_0\,
      I3 => uq(0),
      I4 => \m_sec_reg_n_0_[4]\,
      I5 => \^q\(2),
      O => \uo[7]_i_99_n_0\
    );
\uo_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => D(0),
      Q => uo_out(0),
      R => SR(1)
    );
\uo_reg[0]_i_16\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \uio_r_reg[6]_1\(0),
      CO(2) => \uo_reg[0]_i_16_n_1\,
      CO(1) => \uo_reg[0]_i_16_n_2\,
      CO(0) => \uo_reg[0]_i_16_n_3\,
      CYINIT => '0',
      DI(3) => \uo[0]_i_17_n_0\,
      DI(2) => \uo[0]_i_18_n_0\,
      DI(1) => \uo[0]_i_19_n_0\,
      DI(0) => \uo[0]_i_20_n_0\,
      O(3 downto 0) => \NLW_uo_reg[0]_i_16_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \uo[6]_i_10\(3 downto 0)
    );
\uo_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => D(1),
      Q => uo_out(1),
      R => SR(1)
    );
\uo_reg[1]_i_103\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_uo_reg[1]_i_103_CO_UNCONNECTED\(3),
      CO(2) => \uo_reg[1]_i_103_n_1\,
      CO(1) => \NLW_uo_reg[1]_i_103_CO_UNCONNECTED\(1),
      CO(0) => \uo_reg[1]_i_103_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \uo[1]_i_104_n_0\,
      DI(0) => '0',
      O(3 downto 2) => \NLW_uo_reg[1]_i_103_O_UNCONNECTED\(3 downto 2),
      O(1) => \uo_reg[1]_i_103_n_6\,
      O(0) => \uo_reg[1]_i_103_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \uo_reg[2]_i_93_n_3\,
      S(0) => \uo_reg[2]_i_93_n_3\
    );
\uo_reg[1]_i_21\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[1]_i_23_n_0\,
      CO(3 downto 1) => \NLW_uo_reg[1]_i_21_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \uo_reg[1]_i_21_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \uo[1]_i_24_n_0\,
      O(3 downto 0) => \NLW_uo_reg[1]_i_21_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \uo[1]_i_25_n_0\
    );
\uo_reg[1]_i_22\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[1]_i_26_n_0\,
      CO(3 downto 1) => \NLW_uo_reg[1]_i_22_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \uo_reg[1]_i_22_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \uo[1]_i_27_n_0\,
      O(3 downto 0) => \NLW_uo_reg[1]_i_22_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \uo[1]_i_28_n_0\
    );
\uo_reg[1]_i_23\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[1]_i_29_n_0\,
      CO(3) => \uo_reg[1]_i_23_n_0\,
      CO(2) => \uo_reg[1]_i_23_n_1\,
      CO(1) => \uo_reg[1]_i_23_n_2\,
      CO(0) => \uo_reg[1]_i_23_n_3\,
      CYINIT => '0',
      DI(3) => \uo[1]_i_30_n_0\,
      DI(2) => \uo[1]_i_31_n_0\,
      DI(1) => \uo[1]_i_32_n_0\,
      DI(0) => \uo[1]_i_33_n_0\,
      O(3 downto 0) => \NLW_uo_reg[1]_i_23_O_UNCONNECTED\(3 downto 0),
      S(3) => \uo[1]_i_34_n_0\,
      S(2) => \uo[1]_i_35_n_0\,
      S(1) => \uo[1]_i_36_n_0\,
      S(0) => \uo[1]_i_37_n_0\
    );
\uo_reg[1]_i_26\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[1]_i_39_n_0\,
      CO(3) => \uo_reg[1]_i_26_n_0\,
      CO(2) => \uo_reg[1]_i_26_n_1\,
      CO(1) => \uo_reg[1]_i_26_n_2\,
      CO(0) => \uo_reg[1]_i_26_n_3\,
      CYINIT => '0',
      DI(3) => \uo[1]_i_40_n_0\,
      DI(2) => \uo[1]_i_41_n_0\,
      DI(1) => \uo[1]_i_42_n_0\,
      DI(0) => \uo[1]_i_43_n_0\,
      O(3 downto 0) => \NLW_uo_reg[1]_i_26_O_UNCONNECTED\(3 downto 0),
      S(3) => \uo[1]_i_44_n_0\,
      S(2) => \uo[1]_i_45_n_0\,
      S(1) => \uo[1]_i_46_n_0\,
      S(0) => \uo[1]_i_47_n_0\
    );
\uo_reg[1]_i_29\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \uo_reg[1]_i_29_n_0\,
      CO(2) => \uo_reg[1]_i_29_n_1\,
      CO(1) => \uo_reg[1]_i_29_n_2\,
      CO(0) => \uo_reg[1]_i_29_n_3\,
      CYINIT => '1',
      DI(3) => \uo[1]_i_49_n_0\,
      DI(2) => \uo[1]_i_50_n_0\,
      DI(1) => \uo[1]_i_51_n_0\,
      DI(0) => \uo[1]_i_52_n_0\,
      O(3 downto 0) => \NLW_uo_reg[1]_i_29_O_UNCONNECTED\(3 downto 0),
      S(3) => \uo[1]_i_53_n_0\,
      S(2) => \uo[1]_i_54_n_0\,
      S(1) => \uo[1]_i_55_n_0\,
      S(0) => \uo[1]_i_56_n_0\
    );
\uo_reg[1]_i_38\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[1]_i_57_n_0\,
      CO(3 downto 1) => \NLW_uo_reg[1]_i_38_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \uo_reg[1]_i_38_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_uo_reg[1]_i_38_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\uo_reg[1]_i_39\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \uo_reg[1]_i_39_n_0\,
      CO(2) => \uo_reg[1]_i_39_n_1\,
      CO(1) => \uo_reg[1]_i_39_n_2\,
      CO(0) => \uo_reg[1]_i_39_n_3\,
      CYINIT => '1',
      DI(3) => \uo[1]_i_59_n_0\,
      DI(2) => \uo[1]_i_60_n_0\,
      DI(1) => \uo[1]_i_61_n_0\,
      DI(0) => \uo[1]_i_62_n_0\,
      O(3 downto 0) => \NLW_uo_reg[1]_i_39_O_UNCONNECTED\(3 downto 0),
      S(3) => \uo[1]_i_63_n_0\,
      S(2) => \uo[1]_i_64_n_0\,
      S(1) => \uo[1]_i_65_n_0\,
      S(0) => \uo[1]_i_66_n_0\
    );
\uo_reg[1]_i_48\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[1]_i_67_n_0\,
      CO(3) => \uo_reg[1]_i_48_n_0\,
      CO(2) => \NLW_uo_reg[1]_i_48_CO_UNCONNECTED\(2),
      CO(1) => \uo_reg[1]_i_48_n_2\,
      CO(0) => \uo_reg[1]_i_48_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \uo[1]_i_68_n_0\,
      DI(0) => fit2(8),
      O(3) => \NLW_uo_reg[1]_i_48_O_UNCONNECTED\(3),
      O(2) => \uo_reg[1]_i_48_n_5\,
      O(1) => \uo_reg[1]_i_48_n_6\,
      O(0) => \uo_reg[1]_i_48_n_7\,
      S(3) => '1',
      S(2) => \uo_reg[2]_i_93_n_3\,
      S(1) => \uo[1]_i_69_n_0\,
      S(0) => \uo[1]_i_70_n_0\
    );
\uo_reg[1]_i_57\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[1]_i_58_n_0\,
      CO(3) => \uo_reg[1]_i_57_n_0\,
      CO(2) => \uo_reg[1]_i_57_n_1\,
      CO(1) => \uo_reg[1]_i_57_n_2\,
      CO(0) => \uo_reg[1]_i_57_n_3\,
      CYINIT => '0',
      DI(3) => \uo[1]_i_72_n_0\,
      DI(2) => \uo[1]_i_73_n_0\,
      DI(1) => \uo[1]_i_74_n_0\,
      DI(0) => \uo[1]_i_75_n_0\,
      O(3) => \uo_reg[1]_i_57_n_4\,
      O(2) => \uo_reg[1]_i_57_n_5\,
      O(1) => \uo_reg[1]_i_57_n_6\,
      O(0) => \uo_reg[1]_i_57_n_7\,
      S(3) => \uo[1]_i_76_n_0\,
      S(2) => \uo[1]_i_77_n_0\,
      S(1) => \uo[1]_i_78_n_0\,
      S(0) => \uo[1]_i_79_n_0\
    );
\uo_reg[1]_i_58\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[1]_i_71_n_0\,
      CO(3) => \uo_reg[1]_i_58_n_0\,
      CO(2) => \uo_reg[1]_i_58_n_1\,
      CO(1) => \uo_reg[1]_i_58_n_2\,
      CO(0) => \uo_reg[1]_i_58_n_3\,
      CYINIT => '0',
      DI(3) => \uo[1]_i_80_n_0\,
      DI(2) => \uo[1]_i_81_n_0\,
      DI(1) => \uo[1]_i_82_n_0\,
      DI(0) => \uo[1]_i_83_n_0\,
      O(3) => \uo_reg[1]_i_58_n_4\,
      O(2) => \uo_reg[1]_i_58_n_5\,
      O(1) => \uo_reg[1]_i_58_n_6\,
      O(0) => \uo_reg[1]_i_58_n_7\,
      S(3) => \uo[1]_i_84_n_0\,
      S(2) => \uo[1]_i_85_n_0\,
      S(1) => \uo[1]_i_86_n_0\,
      S(0) => \uo[1]_i_87_n_0\
    );
\uo_reg[1]_i_67\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[4]_i_160_n_0\,
      CO(3) => \uo_reg[1]_i_67_n_0\,
      CO(2) => \uo_reg[1]_i_67_n_1\,
      CO(1) => \uo_reg[1]_i_67_n_2\,
      CO(0) => \uo_reg[1]_i_67_n_3\,
      CYINIT => '0',
      DI(3) => \uo[1]_i_88_n_0\,
      DI(2) => \uo[1]_i_89_n_0\,
      DI(1) => \uo[1]_i_90_n_0\,
      DI(0) => \uo[1]_i_91_n_0\,
      O(3) => \uo_reg[1]_i_67_n_4\,
      O(2) => \uo_reg[1]_i_67_n_5\,
      O(1) => \uo_reg[1]_i_67_n_6\,
      O(0) => \uo_reg[1]_i_67_n_7\,
      S(3) => \uo[1]_i_92_n_0\,
      S(2) => \uo[1]_i_93_n_0\,
      S(1) => \uo[1]_i_94_n_0\,
      S(0) => \uo[1]_i_95_n_0\
    );
\uo_reg[1]_i_71\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \uo_reg[1]_i_71_n_0\,
      CO(2) => \uo_reg[1]_i_71_n_1\,
      CO(1) => \uo_reg[1]_i_71_n_2\,
      CO(0) => \uo_reg[1]_i_71_n_3\,
      CYINIT => '0',
      DI(3) => \uo[1]_i_96_n_0\,
      DI(2) => \uo[1]_i_97_n_0\,
      DI(1) => \uo[1]_i_98_n_0\,
      DI(0) => '0',
      O(3) => \uo_reg[1]_i_71_n_4\,
      O(2) => \uo_reg[1]_i_71_n_5\,
      O(1) => \uo_reg[1]_i_71_n_6\,
      O(0) => \uo_reg[1]_i_71_n_7\,
      S(3) => \uo[1]_i_99_n_0\,
      S(2) => \uo[1]_i_100_n_0\,
      S(1) => \uo[1]_i_101_n_0\,
      S(0) => \uo[1]_i_102_n_0\
    );
\uo_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => D(2),
      Q => uo_out(2),
      R => SR(1)
    );
\uo_reg[2]_i_114\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \uo_reg[2]_i_114_n_0\,
      CO(2) => \uo_reg[2]_i_114_n_1\,
      CO(1) => \uo_reg[2]_i_114_n_2\,
      CO(0) => \uo_reg[2]_i_114_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => pt0(2 downto 0),
      DI(0) => '0',
      O(3 downto 0) => pt(6 downto 3),
      S(3) => \uo[2]_i_201_n_0\,
      S(2) => \uo[2]_i_202_n_0\,
      S(1) => \uo[2]_i_203_n_0\,
      S(0) => C(3)
    );
\uo_reg[2]_i_115\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \uo_reg[2]_i_115_n_0\,
      CO(2) => \uo_reg[2]_i_115_n_1\,
      CO(1) => \uo_reg[2]_i_115_n_2\,
      CO(0) => \uo_reg[2]_i_115_n_3\,
      CYINIT => '1',
      DI(3) => \m_s0_reg_n_0_[3]\,
      DI(2) => \m_s0_reg_n_0_[2]\,
      DI(1) => \m_s0_reg_n_0_[1]\,
      DI(0) => \m_s0_reg_n_0_[0]\,
      O(3 downto 0) => pt0(3 downto 0),
      S(3) => \uo[2]_i_205_n_0\,
      S(2) => \uo[2]_i_206_n_0\,
      S(1) => \uo[2]_i_207_n_0\,
      S(0) => \uo[2]_i_208_n_0\
    );
\uo_reg[2]_i_123\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \uo_reg[2]_i_123_n_0\,
      CO(2) => \uo_reg[2]_i_123_n_1\,
      CO(1) => \uo_reg[2]_i_123_n_2\,
      CO(0) => \uo_reg[2]_i_123_n_3\,
      CYINIT => '1',
      DI(3) => \uo[2]_i_209_n_0\,
      DI(2) => \uo[2]_i_210_n_0\,
      DI(1) => \uo[2]_i_211_n_0\,
      DI(0) => \uo[2]_i_212_n_0\,
      O(3 downto 0) => \NLW_uo_reg[2]_i_123_O_UNCONNECTED\(3 downto 0),
      S(3) => \uo[2]_i_213_n_0\,
      S(2) => \uo[2]_i_214_n_0\,
      S(1) => \uo[2]_i_215_n_0\,
      S(0) => \uo[2]_i_216_n_0\
    );
\uo_reg[2]_i_132\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[2]_i_217_n_0\,
      CO(3 downto 2) => \NLW_uo_reg[2]_i_132_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \uo_reg[2]_i_132_n_2\,
      CO(0) => \NLW_uo_reg[2]_i_132_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \uo_reg[2]_i_220_n_2\,
      O(3 downto 1) => \NLW_uo_reg[2]_i_132_O_UNCONNECTED\(3 downto 1),
      O(0) => \uo_reg[2]_i_132_n_7\,
      S(3 downto 1) => B"001",
      S(0) => \uo[2]_i_221_n_0\
    );
\uo_reg[2]_i_133\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \uo_reg[2]_i_133_n_0\,
      CO(2) => \uo_reg[2]_i_133_n_1\,
      CO(1) => \uo_reg[2]_i_133_n_2\,
      CO(0) => \uo_reg[2]_i_133_n_3\,
      CYINIT => '1',
      DI(3) => \uo[2]_i_222_n_0\,
      DI(2) => \uo[2]_i_223_n_0\,
      DI(1) => \uo[2]_i_224_n_0\,
      DI(0) => \uo[2]_i_225_n_0\,
      O(3 downto 0) => \NLW_uo_reg[2]_i_133_O_UNCONNECTED\(3 downto 0),
      S(3) => \uo[2]_i_226_n_0\,
      S(2) => \uo[2]_i_227_n_0\,
      S(1) => \uo[2]_i_228_n_0\,
      S(0) => \uo[2]_i_229_n_0\
    );
\uo_reg[2]_i_141\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \uo_reg[2]_i_141_n_0\,
      CO(2) => \uo_reg[2]_i_141_n_1\,
      CO(1) => \uo_reg[2]_i_141_n_2\,
      CO(0) => \uo_reg[2]_i_141_n_3\,
      CYINIT => '1',
      DI(3) => \uo[2]_i_230_n_0\,
      DI(2) => \uo[2]_i_231_n_0\,
      DI(1) => \uo[2]_i_232_n_0\,
      DI(0) => \uo[2]_i_233_n_0\,
      O(3 downto 0) => \NLW_uo_reg[2]_i_141_O_UNCONNECTED\(3 downto 0),
      S(3) => \uo[2]_i_234_n_0\,
      S(2) => \uo[2]_i_235_n_0\,
      S(1) => \uo[2]_i_236_n_0\,
      S(0) => \uo[2]_i_237_n_0\
    );
\uo_reg[2]_i_150\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[2]_i_238_n_0\,
      CO(3) => \NLW_uo_reg[2]_i_150_CO_UNCONNECTED\(3),
      CO(2) => \uo_reg[2]_i_150_n_1\,
      CO(1) => \NLW_uo_reg[2]_i_150_CO_UNCONNECTED\(1),
      CO(0) => \uo_reg[2]_i_150_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \uo_reg[2]_i_240_n_1\,
      DI(0) => \uo[2]_i_241_n_0\,
      O(3 downto 2) => \NLW_uo_reg[2]_i_150_O_UNCONNECTED\(3 downto 2),
      O(1) => \uo_reg[2]_i_150_n_6\,
      O(0) => \uo_reg[2]_i_150_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \uo[2]_i_242_n_0\,
      S(0) => \uo[2]_i_243_n_0\
    );
\uo_reg[2]_i_151\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \uo_reg[2]_i_151_n_0\,
      CO(2) => \uo_reg[2]_i_151_n_1\,
      CO(1) => \uo_reg[2]_i_151_n_2\,
      CO(0) => \uo_reg[2]_i_151_n_3\,
      CYINIT => '1',
      DI(3) => \uo[2]_i_244_n_0\,
      DI(2) => \uo[2]_i_245_n_0\,
      DI(1) => \uo[2]_i_246_n_0\,
      DI(0) => \uo[2]_i_247_n_0\,
      O(3 downto 0) => \NLW_uo_reg[2]_i_151_O_UNCONNECTED\(3 downto 0),
      S(3) => \uo[2]_i_248_n_0\,
      S(2) => \uo[2]_i_249_n_0\,
      S(1) => \uo[2]_i_250_n_0\,
      S(0) => \uo[2]_i_251_n_0\
    );
\uo_reg[2]_i_160\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[2]_i_252_n_0\,
      CO(3) => \NLW_uo_reg[2]_i_160_CO_UNCONNECTED\(3),
      CO(2) => \uo_reg[2]_i_160_n_1\,
      CO(1) => \NLW_uo_reg[2]_i_160_CO_UNCONNECTED\(1),
      CO(0) => \uo_reg[2]_i_160_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \uo[2]_i_254_n_0\,
      DI(0) => '0',
      O(3 downto 2) => \NLW_uo_reg[2]_i_160_O_UNCONNECTED\(3 downto 2),
      O(1) => \uo_reg[2]_i_160_n_6\,
      O(0) => \uo_reg[2]_i_160_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \uo_reg[2]_i_93_n_3\,
      S(0) => \uo_reg[2]_i_93_n_3\
    );
\uo_reg[2]_i_161\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \uo_reg[2]_i_161_n_0\,
      CO(2) => \uo_reg[2]_i_161_n_1\,
      CO(1) => \uo_reg[2]_i_161_n_2\,
      CO(0) => \uo_reg[2]_i_161_n_3\,
      CYINIT => '1',
      DI(3) => \uo[2]_i_255_n_0\,
      DI(2) => \uo[2]_i_256_n_0\,
      DI(1) => \uo[2]_i_257_n_0\,
      DI(0) => \uo[2]_i_258_n_0\,
      O(3 downto 0) => \NLW_uo_reg[2]_i_161_O_UNCONNECTED\(3 downto 0),
      S(3) => \uo[2]_i_259_n_0\,
      S(2) => \uo[2]_i_260_n_0\,
      S(1) => \uo[2]_i_261_n_0\,
      S(0) => \uo[2]_i_262_n_0\
    );
\uo_reg[2]_i_170\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[2]_i_263_n_0\,
      CO(3 downto 1) => \NLW_uo_reg[2]_i_170_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \uo_reg[2]_i_170_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_uo_reg[2]_i_170_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\uo_reg[2]_i_171\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \uo_reg[2]_i_171_n_0\,
      CO(2) => \uo_reg[2]_i_171_n_1\,
      CO(1) => \uo_reg[2]_i_171_n_2\,
      CO(0) => \uo_reg[2]_i_171_n_3\,
      CYINIT => '1',
      DI(3) => \uo[2]_i_265_n_0\,
      DI(2) => \uo[2]_i_266_n_0\,
      DI(1) => \uo[2]_i_267_n_0\,
      DI(0) => \uo[2]_i_268_n_0\,
      O(3 downto 0) => \NLW_uo_reg[2]_i_171_O_UNCONNECTED\(3 downto 0),
      S(3) => \uo[2]_i_269_n_0\,
      S(2) => \uo[2]_i_270_n_0\,
      S(1) => \uo[2]_i_271_n_0\,
      S(0) => \uo[2]_i_272_n_0\
    );
\uo_reg[2]_i_18\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_uo_reg[2]_i_18_CO_UNCONNECTED\(3),
      CO(2) => f_off11_in,
      CO(1) => \uo_reg[2]_i_18_n_2\,
      CO(0) => \uo_reg[2]_i_18_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_uo_reg[2]_i_18_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \uo[2]_i_22_n_0\,
      S(1) => \uo[2]_i_23_n_0\,
      S(0) => \uo[2]_i_24_n_0\
    );
\uo_reg[2]_i_217\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \uo_reg[2]_i_217_n_0\,
      CO(2) => \uo_reg[2]_i_217_n_1\,
      CO(1) => \uo_reg[2]_i_217_n_2\,
      CO(0) => \uo_reg[2]_i_217_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \uo_reg[2]_i_218_n_5\,
      DI(0) => '0',
      O(3) => \uo_reg[2]_i_217_n_4\,
      O(2) => \uo_reg[2]_i_217_n_5\,
      O(1) => \uo_reg[2]_i_217_n_6\,
      O(0) => \uo_reg[2]_i_217_n_7\,
      S(3) => \uo_reg[2]_i_220_n_7\,
      S(2) => \uo_reg[2]_i_218_n_4\,
      S(1) => \uo[2]_i_275_n_0\,
      S(0) => \uo_reg[2]_i_218_n_6\
    );
\uo_reg[2]_i_218\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[2]_i_219_n_0\,
      CO(3) => \uo_reg[2]_i_218_n_0\,
      CO(2) => \uo_reg[2]_i_218_n_1\,
      CO(1) => \uo_reg[2]_i_218_n_2\,
      CO(0) => \uo_reg[2]_i_218_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \uo[2]_i_276_n_0\,
      DI(1 downto 0) => fit2(7 downto 6),
      O(3) => \uo_reg[2]_i_218_n_4\,
      O(2) => \uo_reg[2]_i_218_n_5\,
      O(1) => \uo_reg[2]_i_218_n_6\,
      O(0) => \uo_reg[2]_i_218_n_7\,
      S(3) => '1',
      S(2) => \uo[2]_i_277_n_0\,
      S(1) => \uo[2]_i_278_n_0\,
      S(0) => \uo[2]_i_279_n_0\
    );
\uo_reg[2]_i_219\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[2]_i_274_n_0\,
      CO(3) => \uo_reg[2]_i_219_n_0\,
      CO(2) => \uo_reg[2]_i_219_n_1\,
      CO(1) => \uo_reg[2]_i_219_n_2\,
      CO(0) => \uo_reg[2]_i_219_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => fit2(5 downto 2),
      O(3) => \uo_reg[2]_i_219_n_4\,
      O(2) => \uo_reg[2]_i_219_n_5\,
      O(1) => \uo_reg[2]_i_219_n_6\,
      O(0) => \uo_reg[2]_i_219_n_7\,
      S(3) => \uo[2]_i_280_n_0\,
      S(2) => \uo[2]_i_281_n_0\,
      S(1) => \uo[2]_i_282_n_0\,
      S(0) => \uo[2]_i_283_n_0\
    );
\uo_reg[2]_i_220\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[2]_i_218_n_0\,
      CO(3 downto 2) => \NLW_uo_reg[2]_i_220_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \uo_reg[2]_i_220_n_2\,
      CO(0) => \NLW_uo_reg[2]_i_220_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \uo[2]_i_284_n_0\,
      O(3 downto 1) => \NLW_uo_reg[2]_i_220_O_UNCONNECTED\(3 downto 1),
      O(0) => \uo_reg[2]_i_220_n_7\,
      S(3 downto 1) => B"001",
      S(0) => \uo_reg[2]_i_93_n_3\
    );
\uo_reg[2]_i_238\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[2]_i_239_n_0\,
      CO(3) => \uo_reg[2]_i_238_n_0\,
      CO(2) => \uo_reg[2]_i_238_n_1\,
      CO(1) => \uo_reg[2]_i_238_n_2\,
      CO(0) => \uo_reg[2]_i_238_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \uo_reg[2]_i_93_n_3\,
      DI(1 downto 0) => fit2(8 downto 7),
      O(3) => \uo_reg[2]_i_238_n_4\,
      O(2) => \uo_reg[2]_i_238_n_5\,
      O(1) => \uo_reg[2]_i_238_n_6\,
      O(0) => \uo_reg[2]_i_238_n_7\,
      S(3) => \uo[2]_i_286_n_0\,
      S(2) => \uo[2]_i_287_n_0\,
      S(1) => \uo[2]_i_288_n_0\,
      S(0) => \uo[2]_i_289_n_0\
    );
\uo_reg[2]_i_239\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[2]_i_285_n_0\,
      CO(3) => \uo_reg[2]_i_239_n_0\,
      CO(2) => \uo_reg[2]_i_239_n_1\,
      CO(1) => \uo_reg[2]_i_239_n_2\,
      CO(0) => \uo_reg[2]_i_239_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => fit2(6 downto 3),
      O(3) => \uo_reg[2]_i_239_n_4\,
      O(2) => \uo_reg[2]_i_239_n_5\,
      O(1) => \uo_reg[2]_i_239_n_6\,
      O(0) => \uo_reg[2]_i_239_n_7\,
      S(3) => \uo[2]_i_290_n_0\,
      S(2) => \uo[2]_i_291_n_0\,
      S(1) => \uo[2]_i_292_n_0\,
      S(0) => \uo[2]_i_293_n_0\
    );
\uo_reg[2]_i_240\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_uo_reg[2]_i_240_CO_UNCONNECTED\(3),
      CO(2) => \uo_reg[2]_i_240_n_1\,
      CO(1) => \NLW_uo_reg[2]_i_240_CO_UNCONNECTED\(1),
      CO(0) => \uo_reg[2]_i_240_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \uo[2]_i_294_n_0\,
      DI(0) => '0',
      O(3 downto 2) => \NLW_uo_reg[2]_i_240_O_UNCONNECTED\(3 downto 2),
      O(1) => \uo_reg[2]_i_240_n_6\,
      O(0) => \NLW_uo_reg[2]_i_240_O_UNCONNECTED\(0),
      S(3 downto 2) => B"01",
      S(1) => \uo_reg[2]_i_93_n_3\,
      S(0) => \uo_reg[2]_i_93_n_3\
    );
\uo_reg[2]_i_252\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[2]_i_253_n_0\,
      CO(3) => \uo_reg[2]_i_252_n_0\,
      CO(2) => \uo_reg[2]_i_252_n_1\,
      CO(1) => \uo_reg[2]_i_252_n_2\,
      CO(0) => \uo_reg[2]_i_252_n_3\,
      CYINIT => '0',
      DI(3) => fit2(8),
      DI(2) => \uo[2]_i_296_n_0\,
      DI(1 downto 0) => fit2(7 downto 6),
      O(3) => \uo_reg[2]_i_252_n_4\,
      O(2) => \uo_reg[2]_i_252_n_5\,
      O(1) => \uo_reg[2]_i_252_n_6\,
      O(0) => \uo_reg[2]_i_252_n_7\,
      S(3) => \uo[2]_i_297_n_0\,
      S(2) => \uo[2]_i_298_n_0\,
      S(1) => \uo[2]_i_299_n_0\,
      S(0) => \uo[2]_i_300_n_0\
    );
\uo_reg[2]_i_253\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[2]_i_295_n_0\,
      CO(3) => \uo_reg[2]_i_253_n_0\,
      CO(2) => \uo_reg[2]_i_253_n_1\,
      CO(1) => \uo_reg[2]_i_253_n_2\,
      CO(0) => \uo_reg[2]_i_253_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => fit2(5 downto 2),
      O(3) => \uo_reg[2]_i_253_n_4\,
      O(2) => \uo_reg[2]_i_253_n_5\,
      O(1) => \uo_reg[2]_i_253_n_6\,
      O(0) => \uo_reg[2]_i_253_n_7\,
      S(3) => \uo[2]_i_301_n_0\,
      S(2) => \uo[2]_i_302_n_0\,
      S(1) => \uo[2]_i_303_n_0\,
      S(0) => \uo[2]_i_304_n_0\
    );
\uo_reg[2]_i_263\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[2]_i_264_n_0\,
      CO(3) => \uo_reg[2]_i_263_n_0\,
      CO(2) => \uo_reg[2]_i_263_n_1\,
      CO(1) => \uo_reg[2]_i_263_n_2\,
      CO(0) => \uo_reg[2]_i_263_n_3\,
      CYINIT => '0',
      DI(3) => \uo[2]_i_307_n_0\,
      DI(2) => \uo[2]_i_308_n_0\,
      DI(1) => \uo[2]_i_309_n_0\,
      DI(0) => \uo[2]_i_310_n_0\,
      O(3) => \uo_reg[2]_i_263_n_4\,
      O(2) => \uo_reg[2]_i_263_n_5\,
      O(1) => \uo_reg[2]_i_263_n_6\,
      O(0) => \uo_reg[2]_i_263_n_7\,
      S(3) => \uo[2]_i_311_n_0\,
      S(2) => \uo[2]_i_312_n_0\,
      S(1) => \uo[2]_i_313_n_0\,
      S(0) => \uo[2]_i_314_n_0\
    );
\uo_reg[2]_i_264\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[2]_i_305_n_0\,
      CO(3) => \uo_reg[2]_i_264_n_0\,
      CO(2) => \uo_reg[2]_i_264_n_1\,
      CO(1) => \uo_reg[2]_i_264_n_2\,
      CO(0) => \uo_reg[2]_i_264_n_3\,
      CYINIT => '0',
      DI(3) => \uo[2]_i_315_n_0\,
      DI(2) => \uo[2]_i_316_n_0\,
      DI(1) => \uo[2]_i_317_n_0\,
      DI(0) => \uo[2]_i_318_n_0\,
      O(3) => \uo_reg[2]_i_264_n_4\,
      O(2) => \uo_reg[2]_i_264_n_5\,
      O(1) => \uo_reg[2]_i_264_n_6\,
      O(0) => \uo_reg[2]_i_264_n_7\,
      S(3) => \uo[2]_i_319_n_0\,
      S(2) => \uo[2]_i_320_n_0\,
      S(1) => \uo[2]_i_321_n_0\,
      S(0) => \uo[2]_i_322_n_0\
    );
\uo_reg[2]_i_274\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \uo_reg[2]_i_274_n_0\,
      CO(2) => \uo_reg[2]_i_274_n_1\,
      CO(1) => \uo_reg[2]_i_274_n_2\,
      CO(0) => \uo_reg[2]_i_274_n_3\,
      CYINIT => '0',
      DI(3) => fit2(1),
      DI(2) => f_b0(0),
      DI(1 downto 0) => B"01",
      O(3) => \uo_reg[2]_i_274_n_4\,
      O(2) => \uo_reg[2]_i_274_n_5\,
      O(1) => \uo_reg[2]_i_274_n_6\,
      O(0) => \NLW_uo_reg[2]_i_274_O_UNCONNECTED\(0),
      S(3) => \uo[2]_i_323_n_0\,
      S(2) => \uo[2]_i_324_n_0\,
      S(1) => \uo[2]_i_325_n_0\,
      S(0) => f_b0(0)
    );
\uo_reg[2]_i_285\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \uo_reg[2]_i_285_n_0\,
      CO(2) => \uo_reg[2]_i_285_n_1\,
      CO(1) => \uo_reg[2]_i_285_n_2\,
      CO(0) => \uo_reg[2]_i_285_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => fit2(2 downto 1),
      DI(1) => f_b0(0),
      DI(0) => '0',
      O(3) => \uo_reg[2]_i_285_n_4\,
      O(2) => \uo_reg[2]_i_285_n_5\,
      O(1) => \uo_reg[2]_i_285_n_6\,
      O(0) => \uo_reg[2]_i_285_n_7\,
      S(3) => \uo[2]_i_326_n_0\,
      S(2) => \uo[2]_i_327_n_0\,
      S(1) => \uo[2]_i_328_n_0\,
      S(0) => fit2(1)
    );
\uo_reg[2]_i_295\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \uo_reg[2]_i_295_n_0\,
      CO(2) => \uo_reg[2]_i_295_n_1\,
      CO(1) => \uo_reg[2]_i_295_n_2\,
      CO(0) => \uo_reg[2]_i_295_n_3\,
      CYINIT => '0',
      DI(3) => fit2(1),
      DI(2) => f_b0(0),
      DI(1 downto 0) => B"01",
      O(3) => \uo_reg[2]_i_295_n_4\,
      O(2) => \uo_reg[2]_i_295_n_5\,
      O(1) => \uo_reg[2]_i_295_n_6\,
      O(0) => \NLW_uo_reg[2]_i_295_O_UNCONNECTED\(0),
      S(3) => \uo[2]_i_329_n_0\,
      S(2) => \uo[2]_i_330_n_0\,
      S(1) => \uo[2]_i_331_n_0\,
      S(0) => f_b0(0)
    );
\uo_reg[2]_i_305\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \uo_reg[2]_i_305_n_0\,
      CO(2) => \uo_reg[2]_i_305_n_1\,
      CO(1) => \uo_reg[2]_i_305_n_2\,
      CO(0) => \uo_reg[2]_i_305_n_3\,
      CYINIT => '0',
      DI(3) => \uo[2]_i_332_n_0\,
      DI(2) => \uo[2]_i_333_n_0\,
      DI(1) => \uo[2]_i_334_n_0\,
      DI(0) => '0',
      O(3) => \uo_reg[2]_i_305_n_4\,
      O(2) => \uo_reg[2]_i_305_n_5\,
      O(1) => \uo_reg[2]_i_305_n_6\,
      O(0) => \uo_reg[2]_i_305_n_7\,
      S(3) => \uo[2]_i_335_n_0\,
      S(2) => \uo[2]_i_336_n_0\,
      S(1) => \uo[2]_i_337_n_0\,
      S(0) => \uo[2]_i_338_n_0\
    );
\uo_reg[2]_i_306\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \uo_reg[2]_i_306_n_0\,
      CO(2) => \uo_reg[2]_i_306_n_1\,
      CO(1) => \uo_reg[2]_i_306_n_2\,
      CO(0) => \uo_reg[2]_i_306_n_3\,
      CYINIT => '0',
      DI(3) => fit2(1),
      DI(2) => f_b0(0),
      DI(1 downto 0) => B"01",
      O(3) => \uo_reg[2]_i_306_n_4\,
      O(2) => \uo_reg[2]_i_306_n_5\,
      O(1) => \uo_reg[2]_i_306_n_6\,
      O(0) => \uo_reg[2]_i_306_n_7\,
      S(3) => \uo[2]_i_339_n_0\,
      S(2) => \uo[2]_i_340_n_0\,
      S(1) => \uo[2]_i_341_n_0\,
      S(0) => f_b0(0)
    );
\uo_reg[2]_i_31\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[2]_i_43_n_0\,
      CO(3) => \uo_reg[2]_i_31_n_0\,
      CO(2) => \uo_reg[2]_i_31_n_1\,
      CO(1) => \uo_reg[2]_i_31_n_2\,
      CO(0) => \uo_reg[2]_i_31_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \uo[2]_i_44_n_0\,
      DI(1) => \uo[2]_i_45_n_0\,
      DI(0) => \uo[2]_i_46_n_0\,
      O(3 downto 0) => \NLW_uo_reg[2]_i_31_O_UNCONNECTED\(3 downto 0),
      S(3) => \uo_reg[2]_i_34_n_2\,
      S(2) => \uo_reg[2]_i_34_n_2\,
      S(1) => \uo[2]_i_47_n_0\,
      S(0) => \uo[2]_i_48_n_0\
    );
\uo_reg[2]_i_32\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[2]_i_49_n_0\,
      CO(3 downto 1) => \NLW_uo_reg[2]_i_32_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \uo_reg[2]_i_32_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_uo_reg[2]_i_32_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \uo_reg[2]_i_34_n_2\
    );
\uo_reg[2]_i_33\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[2]_i_50_n_0\,
      CO(3) => \uo_reg[2]_i_33_n_0\,
      CO(2) => \uo_reg[2]_i_33_n_1\,
      CO(1) => \uo_reg[2]_i_33_n_2\,
      CO(0) => \uo_reg[2]_i_33_n_3\,
      CYINIT => '0',
      DI(3) => \uo[2]_i_51_n_0\,
      DI(2) => \uo[2]_i_52_n_0\,
      DI(1) => \uo[2]_i_53_n_0\,
      DI(0) => \uo[2]_i_54_n_0\,
      O(3 downto 0) => \NLW_uo_reg[2]_i_33_O_UNCONNECTED\(3 downto 0),
      S(3) => \uo[2]_i_55_n_0\,
      S(2) => \uo[2]_i_56_n_0\,
      S(1) => \uo[2]_i_57_n_0\,
      S(0) => \uo[2]_i_58_n_0\
    );
\uo_reg[2]_i_34\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[2]_i_59_n_0\,
      CO(3 downto 2) => \NLW_uo_reg[2]_i_34_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \uo_reg[2]_i_34_n_2\,
      CO(0) => \NLW_uo_reg[2]_i_34_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \uo_reg[2]_i_60_n_0\,
      O(3 downto 1) => \NLW_uo_reg[2]_i_34_O_UNCONNECTED\(3 downto 1),
      O(0) => pt(11),
      S(3 downto 1) => B"001",
      S(0) => \uo[2]_i_61_n_0\
    );
\uo_reg[2]_i_342\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_uo_reg[2]_i_342_CO_UNCONNECTED\(3),
      CO(2) => \uo_reg[2]_i_342_n_1\,
      CO(1) => \NLW_uo_reg[2]_i_342_CO_UNCONNECTED\(1),
      CO(0) => \uo_reg[2]_i_342_n_3\,
      CYINIT => \uo_reg[2]_i_343_n_0\,
      DI(3 downto 2) => B"00",
      DI(1) => \uo[2]_i_345_n_0\,
      DI(0) => '0',
      O(3 downto 2) => \NLW_uo_reg[2]_i_342_O_UNCONNECTED\(3 downto 2),
      O(1) => \uo_reg[2]_i_342_n_6\,
      O(0) => \NLW_uo_reg[2]_i_342_O_UNCONNECTED\(0),
      S(3 downto 2) => B"01",
      S(1) => \uo_reg[2]_i_93_n_3\,
      S(0) => '1'
    );
\uo_reg[2]_i_343\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[2]_i_344_n_0\,
      CO(3) => \uo_reg[2]_i_343_n_0\,
      CO(2) => \NLW_uo_reg[2]_i_343_CO_UNCONNECTED\(2),
      CO(1) => \uo_reg[2]_i_343_n_2\,
      CO(0) => \uo_reg[2]_i_343_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \uo[2]_i_346_n_0\,
      DI(1 downto 0) => fit2(7 downto 6),
      O(3) => \NLW_uo_reg[2]_i_343_O_UNCONNECTED\(3),
      O(2) => \uo_reg[2]_i_343_n_5\,
      O(1) => \uo_reg[2]_i_343_n_6\,
      O(0) => \uo_reg[2]_i_343_n_7\,
      S(3) => '1',
      S(2) => \uo[2]_i_347_n_0\,
      S(1) => \uo[2]_i_348_n_0\,
      S(0) => \uo[2]_i_349_n_0\
    );
\uo_reg[2]_i_344\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[2]_i_306_n_0\,
      CO(3) => \uo_reg[2]_i_344_n_0\,
      CO(2) => \uo_reg[2]_i_344_n_1\,
      CO(1) => \uo_reg[2]_i_344_n_2\,
      CO(0) => \uo_reg[2]_i_344_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => fit2(5 downto 2),
      O(3) => \uo_reg[2]_i_344_n_4\,
      O(2) => \uo_reg[2]_i_344_n_5\,
      O(1) => \uo_reg[2]_i_344_n_6\,
      O(0) => \uo_reg[2]_i_344_n_7\,
      S(3) => \uo[2]_i_350_n_0\,
      S(2) => \uo[2]_i_351_n_0\,
      S(1) => \uo[2]_i_352_n_0\,
      S(0) => \uo[2]_i_353_n_0\
    );
\uo_reg[2]_i_35\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[2]_i_36_n_0\,
      CO(3) => f_b0(7),
      CO(2) => \NLW_uo_reg[2]_i_35_CO_UNCONNECTED\(2),
      CO(1) => \uo_reg[2]_i_35_n_2\,
      CO(0) => \uo_reg[2]_i_35_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \m_s0_reg_n_0_[6]\,
      DI(1) => \m_s0_reg_n_0_[5]\,
      DI(0) => \m_s0_reg_n_0_[4]\,
      O(3) => \NLW_uo_reg[2]_i_35_O_UNCONNECTED\(3),
      O(2 downto 0) => f_b0(6 downto 4),
      S(3) => '1',
      S(2) => \uo[2]_i_62_n_0\,
      S(1) => \uo[2]_i_63_n_0\,
      S(0) => \uo[2]_i_64_n_0\
    );
\uo_reg[2]_i_36\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \uo_reg[2]_i_36_n_0\,
      CO(2) => \uo_reg[2]_i_36_n_1\,
      CO(1) => \uo_reg[2]_i_36_n_2\,
      CO(0) => \uo_reg[2]_i_36_n_3\,
      CYINIT => '0',
      DI(3) => \m_s0_reg_n_0_[3]\,
      DI(2) => \m_s0_reg_n_0_[2]\,
      DI(1) => \m_s0_reg_n_0_[1]\,
      DI(0) => \m_s0_reg_n_0_[0]\,
      O(3 downto 0) => f_b0(3 downto 0),
      S(3) => \uo[2]_i_65_n_0\,
      S(2) => \uo[2]_i_66_n_0\,
      S(1) => \uo[2]_i_67_n_0\,
      S(0) => \uo[2]_i_68_n_0\
    );
\uo_reg[2]_i_37\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[2]_i_69_n_0\,
      CO(3 downto 1) => \NLW_uo_reg[2]_i_37_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \uo_reg[2]_i_37_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \uo[2]_i_70_n_0\,
      O(3 downto 0) => \NLW_uo_reg[2]_i_37_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \uo[2]_i_71_n_0\
    );
\uo_reg[2]_i_38\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[2]_i_72_n_0\,
      CO(3 downto 1) => \NLW_uo_reg[2]_i_38_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \uo_reg[2]_i_38_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_uo_reg[2]_i_38_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \uo_reg[2]_i_34_n_2\
    );
\uo_reg[2]_i_39\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[2]_i_73_n_0\,
      CO(3 downto 1) => \NLW_uo_reg[2]_i_39_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \uo_reg[2]_i_39_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \uo[2]_i_74_n_0\,
      O(3 downto 0) => \NLW_uo_reg[2]_i_39_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \uo[2]_i_75_n_0\
    );
\uo_reg[2]_i_40\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[2]_i_76_n_0\,
      CO(3 downto 1) => \NLW_uo_reg[2]_i_40_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \uo_reg[2]_i_40_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \uo[2]_i_77_n_0\,
      O(3 downto 0) => \NLW_uo_reg[2]_i_40_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \uo[2]_i_78_n_0\
    );
\uo_reg[2]_i_41\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[2]_i_79_n_0\,
      CO(3 downto 1) => \NLW_uo_reg[2]_i_41_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \uo_reg[2]_i_41_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \uo[2]_i_80_n_0\,
      O(3 downto 0) => \NLW_uo_reg[2]_i_41_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \uo[2]_i_81_n_0\
    );
\uo_reg[2]_i_42\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[2]_i_82_n_0\,
      CO(3 downto 1) => \NLW_uo_reg[2]_i_42_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \uo_reg[2]_i_42_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \uo[2]_i_83_n_0\,
      O(3 downto 0) => \NLW_uo_reg[2]_i_42_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \uo[2]_i_84_n_0\
    );
\uo_reg[2]_i_43\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \uo_reg[2]_i_43_n_0\,
      CO(2) => \uo_reg[2]_i_43_n_1\,
      CO(1) => \uo_reg[2]_i_43_n_2\,
      CO(0) => \uo_reg[2]_i_43_n_3\,
      CYINIT => '1',
      DI(3) => \uo[2]_i_85_n_0\,
      DI(2) => \uo[2]_i_86_n_0\,
      DI(1) => \uo[2]_i_87_n_0\,
      DI(0) => \uo[2]_i_88_n_0\,
      O(3 downto 0) => \NLW_uo_reg[2]_i_43_O_UNCONNECTED\(3 downto 0),
      S(3) => \uo[2]_i_89_n_0\,
      S(2) => \uo[2]_i_90_n_0\,
      S(1) => \uo[2]_i_91_n_0\,
      S(0) => \uo[2]_i_92_n_0\
    );
\uo_reg[2]_i_49\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[2]_i_95_n_0\,
      CO(3) => \uo_reg[2]_i_49_n_0\,
      CO(2) => \uo_reg[2]_i_49_n_1\,
      CO(1) => \uo_reg[2]_i_49_n_2\,
      CO(0) => \uo_reg[2]_i_49_n_3\,
      CYINIT => '0',
      DI(3) => \uo[2]_i_96_n_0\,
      DI(2) => \uo[2]_i_97_n_0\,
      DI(1) => \uo[2]_i_98_n_0\,
      DI(0) => \uo[2]_i_99_n_0\,
      O(3 downto 0) => \NLW_uo_reg[2]_i_49_O_UNCONNECTED\(3 downto 0),
      S(3) => \uo_reg[2]_i_34_n_2\,
      S(2) => \uo[2]_i_100_n_0\,
      S(1) => \uo[2]_i_101_n_0\,
      S(0) => \uo[2]_i_102_n_0\
    );
\uo_reg[2]_i_50\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \uo_reg[2]_i_50_n_0\,
      CO(2) => \uo_reg[2]_i_50_n_1\,
      CO(1) => \uo_reg[2]_i_50_n_2\,
      CO(0) => \uo_reg[2]_i_50_n_3\,
      CYINIT => '1',
      DI(3) => \uo[2]_i_103_n_0\,
      DI(2) => \uo[2]_i_104_n_0\,
      DI(1) => \uo[2]_i_105_n_0\,
      DI(0) => \uo[2]_i_106_n_0\,
      O(3 downto 0) => \NLW_uo_reg[2]_i_50_O_UNCONNECTED\(3 downto 0),
      S(3) => \uo[2]_i_107_n_0\,
      S(2) => \uo[2]_i_108_n_0\,
      S(1) => \uo[2]_i_109_n_0\,
      S(0) => \uo[2]_i_110_n_0\
    );
\uo_reg[2]_i_59\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[2]_i_114_n_0\,
      CO(3) => \uo_reg[2]_i_59_n_0\,
      CO(2) => \uo_reg[2]_i_59_n_1\,
      CO(1) => \uo_reg[2]_i_59_n_2\,
      CO(0) => \uo_reg[2]_i_59_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => pt0(6 downto 3),
      O(3 downto 0) => pt(10 downto 7),
      S(3) => \uo[2]_i_116_n_0\,
      S(2) => \uo[2]_i_117_n_0\,
      S(1) => \uo[2]_i_118_n_0\,
      S(0) => \uo[2]_i_119_n_0\
    );
\uo_reg[2]_i_60\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[2]_i_115_n_0\,
      CO(3) => \uo_reg[2]_i_60_n_0\,
      CO(2) => \NLW_uo_reg[2]_i_60_CO_UNCONNECTED\(2),
      CO(1) => \uo_reg[2]_i_60_n_2\,
      CO(0) => \uo_reg[2]_i_60_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \m_s0_reg_n_0_[6]\,
      DI(1) => \m_s0_reg_n_0_[5]\,
      DI(0) => \m_s0_reg_n_0_[4]\,
      O(3) => \NLW_uo_reg[2]_i_60_O_UNCONNECTED\(3),
      O(2 downto 0) => pt0(6 downto 4),
      S(3) => '1',
      S(2) => \uo[2]_i_120_n_0\,
      S(1) => \uo[2]_i_121_n_0\,
      S(0) => \uo[2]_i_122_n_0\
    );
\uo_reg[2]_i_69\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[2]_i_123_n_0\,
      CO(3) => \uo_reg[2]_i_69_n_0\,
      CO(2) => \uo_reg[2]_i_69_n_1\,
      CO(1) => \uo_reg[2]_i_69_n_2\,
      CO(0) => \uo_reg[2]_i_69_n_3\,
      CYINIT => '0',
      DI(3) => \uo[2]_i_124_n_0\,
      DI(2) => \uo[2]_i_125_n_0\,
      DI(1) => \uo[2]_i_126_n_0\,
      DI(0) => \uo[2]_i_127_n_0\,
      O(3 downto 0) => \NLW_uo_reg[2]_i_69_O_UNCONNECTED\(3 downto 0),
      S(3) => \uo[2]_i_128_n_0\,
      S(2) => \uo[2]_i_129_n_0\,
      S(1) => \uo[2]_i_130_n_0\,
      S(0) => \uo[2]_i_131_n_0\
    );
\uo_reg[2]_i_72\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[2]_i_133_n_0\,
      CO(3) => \uo_reg[2]_i_72_n_0\,
      CO(2) => \uo_reg[2]_i_72_n_1\,
      CO(1) => \uo_reg[2]_i_72_n_2\,
      CO(0) => \uo_reg[2]_i_72_n_3\,
      CYINIT => '0',
      DI(3) => \uo[2]_i_134_n_0\,
      DI(2) => \uo[2]_i_135_n_0\,
      DI(1) => \uo[2]_i_136_n_0\,
      DI(0) => \uo[2]_i_137_n_0\,
      O(3 downto 0) => \NLW_uo_reg[2]_i_72_O_UNCONNECTED\(3 downto 0),
      S(3) => \uo_reg[2]_i_34_n_2\,
      S(2) => \uo[2]_i_138_n_0\,
      S(1) => \uo[2]_i_139_n_0\,
      S(0) => \uo[2]_i_140_n_0\
    );
\uo_reg[2]_i_73\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[2]_i_141_n_0\,
      CO(3) => \uo_reg[2]_i_73_n_0\,
      CO(2) => \uo_reg[2]_i_73_n_1\,
      CO(1) => \uo_reg[2]_i_73_n_2\,
      CO(0) => \uo_reg[2]_i_73_n_3\,
      CYINIT => '0',
      DI(3) => \uo[2]_i_142_n_0\,
      DI(2) => \uo[2]_i_143_n_0\,
      DI(1) => \uo[2]_i_144_n_0\,
      DI(0) => \uo[2]_i_145_n_0\,
      O(3 downto 0) => \NLW_uo_reg[2]_i_73_O_UNCONNECTED\(3 downto 0),
      S(3) => \uo[2]_i_146_n_0\,
      S(2) => \uo[2]_i_147_n_0\,
      S(1) => \uo[2]_i_148_n_0\,
      S(0) => \uo[2]_i_149_n_0\
    );
\uo_reg[2]_i_76\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[2]_i_151_n_0\,
      CO(3) => \uo_reg[2]_i_76_n_0\,
      CO(2) => \uo_reg[2]_i_76_n_1\,
      CO(1) => \uo_reg[2]_i_76_n_2\,
      CO(0) => \uo_reg[2]_i_76_n_3\,
      CYINIT => '0',
      DI(3) => \uo[2]_i_152_n_0\,
      DI(2) => \uo[2]_i_153_n_0\,
      DI(1) => \uo[2]_i_154_n_0\,
      DI(0) => \uo[2]_i_155_n_0\,
      O(3 downto 0) => \NLW_uo_reg[2]_i_76_O_UNCONNECTED\(3 downto 0),
      S(3) => \uo[2]_i_156_n_0\,
      S(2) => \uo[2]_i_157_n_0\,
      S(1) => \uo[2]_i_158_n_0\,
      S(0) => \uo[2]_i_159_n_0\
    );
\uo_reg[2]_i_79\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[2]_i_161_n_0\,
      CO(3) => \uo_reg[2]_i_79_n_0\,
      CO(2) => \uo_reg[2]_i_79_n_1\,
      CO(1) => \uo_reg[2]_i_79_n_2\,
      CO(0) => \uo_reg[2]_i_79_n_3\,
      CYINIT => '0',
      DI(3) => \uo[2]_i_162_n_0\,
      DI(2) => \uo[2]_i_163_n_0\,
      DI(1) => \uo[2]_i_164_n_0\,
      DI(0) => \uo[2]_i_165_n_0\,
      O(3 downto 0) => \NLW_uo_reg[2]_i_79_O_UNCONNECTED\(3 downto 0),
      S(3) => \uo[2]_i_166_n_0\,
      S(2) => \uo[2]_i_167_n_0\,
      S(1) => \uo[2]_i_168_n_0\,
      S(0) => \uo[2]_i_169_n_0\
    );
\uo_reg[2]_i_82\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[2]_i_171_n_0\,
      CO(3) => \uo_reg[2]_i_82_n_0\,
      CO(2) => \uo_reg[2]_i_82_n_1\,
      CO(1) => \uo_reg[2]_i_82_n_2\,
      CO(0) => \uo_reg[2]_i_82_n_3\,
      CYINIT => '0',
      DI(3) => \uo[2]_i_172_n_0\,
      DI(2) => \uo[2]_i_173_n_0\,
      DI(1) => \uo[2]_i_174_n_0\,
      DI(0) => \uo[2]_i_175_n_0\,
      O(3 downto 0) => \NLW_uo_reg[2]_i_82_O_UNCONNECTED\(3 downto 0),
      S(3) => \uo[2]_i_176_n_0\,
      S(2) => \uo[2]_i_177_n_0\,
      S(1) => \uo[2]_i_178_n_0\,
      S(0) => \uo[2]_i_179_n_0\
    );
\uo_reg[2]_i_93\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[2]_i_94_n_0\,
      CO(3 downto 1) => \NLW_uo_reg[2]_i_93_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \uo_reg[2]_i_93_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_uo_reg[2]_i_93_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\uo_reg[2]_i_94\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[4]_i_117_n_0\,
      CO(3) => \uo_reg[2]_i_94_n_0\,
      CO(2) => \uo_reg[2]_i_94_n_1\,
      CO(1) => \uo_reg[2]_i_94_n_2\,
      CO(0) => \uo_reg[2]_i_94_n_3\,
      CYINIT => '0',
      DI(3) => \uo[2]_i_182_n_0\,
      DI(2) => \uo[2]_i_183_n_0\,
      DI(1) => \uo[2]_i_184_n_0\,
      DI(0) => \uo[2]_i_185_n_0\,
      O(3 downto 0) => fit2(8 downto 5),
      S(3) => \uo[2]_i_186_n_0\,
      S(2) => \uo[2]_i_187_n_0\,
      S(1) => \uo[2]_i_188_n_0\,
      S(0) => \uo[2]_i_189_n_0\
    );
\uo_reg[2]_i_95\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \uo_reg[2]_i_95_n_0\,
      CO(2) => \uo_reg[2]_i_95_n_1\,
      CO(1) => \uo_reg[2]_i_95_n_2\,
      CO(0) => \uo_reg[2]_i_95_n_3\,
      CYINIT => '1',
      DI(3) => \uo[2]_i_190_n_0\,
      DI(2) => \uo[2]_i_191_n_0\,
      DI(1) => \uo[2]_i_192_n_0\,
      DI(0) => \uo[2]_i_193_n_0\,
      O(3 downto 0) => \NLW_uo_reg[2]_i_95_O_UNCONNECTED\(3 downto 0),
      S(3) => \uo[2]_i_194_n_0\,
      S(2) => \uo[2]_i_195_n_0\,
      S(1) => \uo[2]_i_196_n_0\,
      S(0) => \uo[2]_i_197_n_0\
    );
\uo_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => D(3),
      Q => uo_out(3),
      R => SR(1)
    );
\uo_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => D(4),
      Q => uo_out(4),
      R => SR(1)
    );
\uo_reg[4]_i_103\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[4]_i_104_n_0\,
      CO(3) => \uo_reg[4]_i_103_n_0\,
      CO(2) => \uo_reg[4]_i_103_n_1\,
      CO(1) => \uo_reg[4]_i_103_n_2\,
      CO(0) => \uo_reg[4]_i_103_n_3\,
      CYINIT => '0',
      DI(3) => \uo[4]_i_141_n_0\,
      DI(2) => \uo_reg[4]_i_142_n_5\,
      DI(1 downto 0) => fit2(8 downto 7),
      O(3) => \uo_reg[4]_i_103_n_4\,
      O(2) => \uo_reg[4]_i_103_n_5\,
      O(1) => \uo_reg[4]_i_103_n_6\,
      O(0) => \uo_reg[4]_i_103_n_7\,
      S(3) => \uo[4]_i_143_n_0\,
      S(2) => \uo[4]_i_144_n_0\,
      S(1) => \uo[4]_i_145_n_0\,
      S(0) => \uo[4]_i_146_n_0\
    );
\uo_reg[4]_i_104\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[4]_i_139_n_0\,
      CO(3) => \uo_reg[4]_i_104_n_0\,
      CO(2) => \uo_reg[4]_i_104_n_1\,
      CO(1) => \uo_reg[4]_i_104_n_2\,
      CO(0) => \uo_reg[4]_i_104_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => fit2(6 downto 3),
      O(3) => \uo_reg[4]_i_104_n_4\,
      O(2) => \uo_reg[4]_i_104_n_5\,
      O(1) => \uo_reg[4]_i_104_n_6\,
      O(0) => \uo_reg[4]_i_104_n_7\,
      S(3) => \uo[4]_i_147_n_0\,
      S(2) => \uo[4]_i_148_n_0\,
      S(1) => \uo[4]_i_149_n_0\,
      S(0) => \uo[4]_i_150_n_0\
    );
\uo_reg[4]_i_105\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_uo_reg[4]_i_105_CO_UNCONNECTED\(3),
      CO(2) => \uo_reg[4]_i_105_n_1\,
      CO(1) => \NLW_uo_reg[4]_i_105_CO_UNCONNECTED\(1),
      CO(0) => \uo_reg[4]_i_105_n_3\,
      CYINIT => \uo_reg[4]_i_142_n_0\,
      DI(3 downto 2) => B"00",
      DI(1) => fit2(9),
      DI(0) => '0',
      O(3 downto 2) => \NLW_uo_reg[4]_i_105_O_UNCONNECTED\(3 downto 2),
      O(1) => \uo_reg[4]_i_105_n_6\,
      O(0) => \NLW_uo_reg[4]_i_105_O_UNCONNECTED\(0),
      S(3 downto 2) => B"01",
      S(1) => \uo_reg[2]_i_93_n_3\,
      S(0) => '1'
    );
\uo_reg[4]_i_117\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \uo_reg[4]_i_117_n_0\,
      CO(2) => \uo_reg[4]_i_117_n_1\,
      CO(1) => \uo_reg[4]_i_117_n_2\,
      CO(0) => \uo_reg[4]_i_117_n_3\,
      CYINIT => '0',
      DI(3) => \uo[4]_i_152_n_0\,
      DI(2) => \uo[4]_i_153_n_0\,
      DI(1) => \uo[4]_i_154_n_0\,
      DI(0) => '0',
      O(3 downto 0) => fit2(4 downto 1),
      S(3) => \uo[4]_i_155_n_0\,
      S(2) => \uo[4]_i_156_n_0\,
      S(1) => \uo[4]_i_157_n_0\,
      S(0) => \uo[4]_i_158_n_0\
    );
\uo_reg[4]_i_126\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[4]_i_127_n_0\,
      CO(3) => \uo_reg[4]_i_126_n_0\,
      CO(2) => \uo_reg[4]_i_126_n_1\,
      CO(1) => \uo_reg[4]_i_126_n_2\,
      CO(0) => \uo_reg[4]_i_126_n_3\,
      CYINIT => '0',
      DI(3) => \uo_reg[4]_i_161_n_1\,
      DI(2) => \uo_reg[2]_i_93_n_3\,
      DI(1) => \uo[4]_i_162_n_0\,
      DI(0) => \uo[4]_i_163_n_0\,
      O(3) => \uo_reg[4]_i_126_n_4\,
      O(2) => \uo_reg[4]_i_126_n_5\,
      O(1) => \uo_reg[4]_i_126_n_6\,
      O(0) => \uo_reg[4]_i_126_n_7\,
      S(3) => \uo[4]_i_164_n_0\,
      S(2) => \uo[4]_i_165_n_0\,
      S(1) => \uo[4]_i_166_n_0\,
      S(0) => \uo[4]_i_167_n_0\
    );
\uo_reg[4]_i_127\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[4]_i_159_n_0\,
      CO(3) => \uo_reg[4]_i_127_n_0\,
      CO(2) => \uo_reg[4]_i_127_n_1\,
      CO(1) => \uo_reg[4]_i_127_n_2\,
      CO(0) => \uo_reg[4]_i_127_n_3\,
      CYINIT => '0',
      DI(3) => \uo[4]_i_168_n_0\,
      DI(2) => \uo[4]_i_169_n_0\,
      DI(1) => \uo[4]_i_170_n_0\,
      DI(0) => \uo[4]_i_171_n_0\,
      O(3) => \uo_reg[4]_i_127_n_4\,
      O(2) => \uo_reg[4]_i_127_n_5\,
      O(1) => \uo_reg[4]_i_127_n_6\,
      O(0) => \uo_reg[4]_i_127_n_7\,
      S(3) => \uo[4]_i_172_n_0\,
      S(2) => \uo[4]_i_173_n_0\,
      S(1) => \uo[4]_i_174_n_0\,
      S(0) => \uo[4]_i_175_n_0\
    );
\uo_reg[4]_i_128\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \uo_reg[4]_i_128_n_0\,
      CO(2) => \uo_reg[4]_i_128_n_1\,
      CO(1) => \uo_reg[4]_i_128_n_2\,
      CO(0) => \uo_reg[4]_i_128_n_3\,
      CYINIT => '1',
      DI(3) => \uo[4]_i_176_n_0\,
      DI(2) => \uo[4]_i_177_n_0\,
      DI(1) => \uo[4]_i_178_n_0\,
      DI(0) => \uo[4]_i_179_n_0\,
      O(3 downto 0) => \NLW_uo_reg[4]_i_128_O_UNCONNECTED\(3 downto 0),
      S(3) => \uo[4]_i_180_n_0\,
      S(2) => \uo[4]_i_181_n_0\,
      S(1) => \uo[4]_i_182_n_0\,
      S(0) => \uo[4]_i_183_n_0\
    );
\uo_reg[4]_i_139\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \uo_reg[4]_i_139_n_0\,
      CO(2) => \uo_reg[4]_i_139_n_1\,
      CO(1) => \uo_reg[4]_i_139_n_2\,
      CO(0) => \uo_reg[4]_i_139_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => fit2(2 downto 1),
      DI(1) => f_b0(0),
      DI(0) => '0',
      O(3) => \uo_reg[4]_i_139_n_4\,
      O(2) => \uo_reg[4]_i_139_n_5\,
      O(1) => \uo_reg[4]_i_139_n_6\,
      O(0) => \uo_reg[4]_i_139_n_7\,
      S(3) => \uo[4]_i_184_n_0\,
      S(2) => \uo[4]_i_185_n_0\,
      S(1) => \uo[4]_i_186_n_0\,
      S(0) => \uo_reg[4]_i_187_n_6\
    );
\uo_reg[4]_i_142\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[4]_i_188_n_0\,
      CO(3) => \uo_reg[4]_i_142_n_0\,
      CO(2) => \NLW_uo_reg[4]_i_142_CO_UNCONNECTED\(2),
      CO(1) => \uo_reg[4]_i_142_n_2\,
      CO(0) => \uo_reg[4]_i_142_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \uo[4]_i_189_n_0\,
      DI(1 downto 0) => fit2(7 downto 6),
      O(3) => \NLW_uo_reg[4]_i_142_O_UNCONNECTED\(3),
      O(2) => \uo_reg[4]_i_142_n_5\,
      O(1) => \uo_reg[4]_i_142_n_6\,
      O(0) => \uo_reg[4]_i_142_n_7\,
      S(3) => '1',
      S(2) => \uo[4]_i_190_n_0\,
      S(1) => \uo[4]_i_191_n_0\,
      S(0) => \uo[4]_i_192_n_0\
    );
\uo_reg[4]_i_15\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \uio_r_reg[7]_1\(0),
      CO(2) => \uo_reg[4]_i_15_n_1\,
      CO(1) => \uo_reg[4]_i_15_n_2\,
      CO(0) => \uo_reg[4]_i_15_n_3\,
      CYINIT => '0',
      DI(3) => \uo[4]_i_19_n_0\,
      DI(2) => \uo[4]_i_20_n_0\,
      DI(1) => \uo[4]_i_21_n_0\,
      DI(0) => \uo[4]_i_22_n_0\,
      O(3 downto 0) => \NLW_uo_reg[4]_i_15_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \uo[5]_i_16\(3 downto 0)
    );
\uo_reg[4]_i_159\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \uo_reg[4]_i_159_n_0\,
      CO(2) => \uo_reg[4]_i_159_n_1\,
      CO(1) => \uo_reg[4]_i_159_n_2\,
      CO(0) => \uo_reg[4]_i_159_n_3\,
      CYINIT => '0',
      DI(3) => \uo[4]_i_193_n_0\,
      DI(2) => \uo[4]_i_194_n_0\,
      DI(1) => \uo[4]_i_195_n_0\,
      DI(0) => '0',
      O(3) => \uo_reg[4]_i_159_n_4\,
      O(2) => \uo_reg[4]_i_159_n_5\,
      O(1) => \uo_reg[4]_i_159_n_6\,
      O(0) => \NLW_uo_reg[4]_i_159_O_UNCONNECTED\(0),
      S(3) => \uo[4]_i_196_n_0\,
      S(2) => \uo[4]_i_197_n_0\,
      S(1) => \uo[4]_i_198_n_0\,
      S(0) => \uo[4]_i_199_n_0\
    );
\uo_reg[4]_i_160\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \uo_reg[4]_i_160_n_0\,
      CO(2) => \uo_reg[4]_i_160_n_1\,
      CO(1) => \uo_reg[4]_i_160_n_2\,
      CO(0) => \uo_reg[4]_i_160_n_3\,
      CYINIT => '0',
      DI(3) => \uo[4]_i_200_n_0\,
      DI(2) => \uo[4]_i_201_n_0\,
      DI(1) => \uo[4]_i_202_n_0\,
      DI(0) => '0',
      O(3) => \uo_reg[4]_i_160_n_4\,
      O(2) => \uo_reg[4]_i_160_n_5\,
      O(1) => \uo_reg[4]_i_160_n_6\,
      O(0) => \uo_reg[4]_i_160_n_7\,
      S(3) => \uo[4]_i_203_n_0\,
      S(2) => \uo[4]_i_204_n_0\,
      S(1) => \uo[4]_i_205_n_0\,
      S(0) => \uo[4]_i_206_n_0\
    );
\uo_reg[4]_i_161\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_uo_reg[4]_i_161_CO_UNCONNECTED\(3),
      CO(2) => \uo_reg[4]_i_161_n_1\,
      CO(1) => \NLW_uo_reg[4]_i_161_CO_UNCONNECTED\(1),
      CO(0) => \uo_reg[4]_i_161_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \uo[4]_i_207_n_0\,
      DI(0) => '0',
      O(3 downto 2) => \NLW_uo_reg[4]_i_161_O_UNCONNECTED\(3 downto 2),
      O(1) => \uo_reg[4]_i_161_n_6\,
      O(0) => \NLW_uo_reg[4]_i_161_O_UNCONNECTED\(0),
      S(3 downto 2) => B"01",
      S(1) => \uo_reg[2]_i_93_n_3\,
      S(0) => \uo_reg[2]_i_93_n_3\
    );
\uo_reg[4]_i_187\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \uo_reg[4]_i_187_n_0\,
      CO(2) => \uo_reg[4]_i_187_n_1\,
      CO(1) => \uo_reg[4]_i_187_n_2\,
      CO(0) => \uo_reg[4]_i_187_n_3\,
      CYINIT => '0',
      DI(3) => fit2(1),
      DI(2) => f_b0(0),
      DI(1 downto 0) => B"01",
      O(3) => \uo_reg[4]_i_187_n_4\,
      O(2) => \uo_reg[4]_i_187_n_5\,
      O(1) => \uo_reg[4]_i_187_n_6\,
      O(0) => \NLW_uo_reg[4]_i_187_O_UNCONNECTED\(0),
      S(3) => \uo[4]_i_208_n_0\,
      S(2) => \uo[4]_i_209_n_0\,
      S(1) => \uo[4]_i_210_n_0\,
      S(0) => f_b0(0)
    );
\uo_reg[4]_i_188\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[4]_i_187_n_0\,
      CO(3) => \uo_reg[4]_i_188_n_0\,
      CO(2) => \uo_reg[4]_i_188_n_1\,
      CO(1) => \uo_reg[4]_i_188_n_2\,
      CO(0) => \uo_reg[4]_i_188_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => fit2(5 downto 2),
      O(3) => \uo_reg[4]_i_188_n_4\,
      O(2) => \uo_reg[4]_i_188_n_5\,
      O(1) => \uo_reg[4]_i_188_n_6\,
      O(0) => \uo_reg[4]_i_188_n_7\,
      S(3) => \uo[4]_i_211_n_0\,
      S(2) => \uo[4]_i_212_n_0\,
      S(1) => \uo[4]_i_213_n_0\,
      S(0) => \uo[4]_i_214_n_0\
    );
\uo_reg[4]_i_31\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[4]_i_36_n_0\,
      CO(3 downto 1) => \NLW_uo_reg[4]_i_31_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \uo_reg[4]_i_31_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \uo[4]_i_37_n_0\,
      O(3 downto 0) => \NLW_uo_reg[4]_i_31_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \uo[4]_i_38_n_0\
    );
\uo_reg[4]_i_32\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[4]_i_39_n_0\,
      CO(3 downto 2) => \NLW_uo_reg[4]_i_32_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \uo_reg[4]_i_32_n_2\,
      CO(0) => \uo_reg[4]_i_32_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => pt(12),
      O(3 downto 0) => \NLW_uo_reg[4]_i_32_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \uo_reg[2]_i_34_n_2\,
      S(0) => \uo_reg[2]_i_34_n_2\
    );
\uo_reg[4]_i_33\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[4]_i_41_n_0\,
      CO(3 downto 1) => \NLW_uo_reg[4]_i_33_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \uo_reg[4]_i_33_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \uo[4]_i_42_n_0\,
      O(3 downto 0) => \NLW_uo_reg[4]_i_33_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \uo[4]_i_43_n_0\
    );
\uo_reg[4]_i_35\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[4]_i_45_n_0\,
      CO(3) => \uo_reg[4]_i_35_n_0\,
      CO(2) => \uo_reg[4]_i_35_n_1\,
      CO(1) => \uo_reg[4]_i_35_n_2\,
      CO(0) => \uo_reg[4]_i_35_n_3\,
      CYINIT => '0',
      DI(3) => \uo[4]_i_46_n_0\,
      DI(2) => \uo[4]_i_47_n_0\,
      DI(1) => \uo[4]_i_48_n_0\,
      DI(0) => \uo[4]_i_49_n_0\,
      O(3 downto 0) => \NLW_uo_reg[4]_i_35_O_UNCONNECTED\(3 downto 0),
      S(3) => \uo[4]_i_50_n_0\,
      S(2) => \uo[4]_i_51_n_0\,
      S(1) => \uo[4]_i_52_n_0\,
      S(0) => \uo[4]_i_53_n_0\
    );
\uo_reg[4]_i_36\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[4]_i_54_n_0\,
      CO(3) => \uo_reg[4]_i_36_n_0\,
      CO(2) => \uo_reg[4]_i_36_n_1\,
      CO(1) => \uo_reg[4]_i_36_n_2\,
      CO(0) => \uo_reg[4]_i_36_n_3\,
      CYINIT => '0',
      DI(3) => \uo[4]_i_55_n_0\,
      DI(2) => \uo[4]_i_56_n_0\,
      DI(1) => \uo[4]_i_57_n_0\,
      DI(0) => \uo[4]_i_58_n_0\,
      O(3 downto 0) => \NLW_uo_reg[4]_i_36_O_UNCONNECTED\(3 downto 0),
      S(3) => \uo[4]_i_59_n_0\,
      S(2) => \uo[4]_i_60_n_0\,
      S(1) => \uo[4]_i_61_n_0\,
      S(0) => \uo[4]_i_62_n_0\
    );
\uo_reg[4]_i_39\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[4]_i_64_n_0\,
      CO(3) => \uo_reg[4]_i_39_n_0\,
      CO(2) => \uo_reg[4]_i_39_n_1\,
      CO(1) => \uo_reg[4]_i_39_n_2\,
      CO(0) => \uo_reg[4]_i_39_n_3\,
      CYINIT => '0',
      DI(3) => \uo[4]_i_65_n_0\,
      DI(2) => \uo[4]_i_66_n_0\,
      DI(1) => \uo[4]_i_67_n_0\,
      DI(0) => \uo[4]_i_68_n_0\,
      O(3 downto 0) => \NLW_uo_reg[4]_i_39_O_UNCONNECTED\(3 downto 0),
      S(3) => \uo[4]_i_69_n_0\,
      S(2) => \uo[4]_i_70_n_0\,
      S(1) => \uo[4]_i_71_n_0\,
      S(0) => \uo[4]_i_72_n_0\
    );
\uo_reg[4]_i_41\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[4]_i_73_n_0\,
      CO(3) => \uo_reg[4]_i_41_n_0\,
      CO(2) => \uo_reg[4]_i_41_n_1\,
      CO(1) => \uo_reg[4]_i_41_n_2\,
      CO(0) => \uo_reg[4]_i_41_n_3\,
      CYINIT => '0',
      DI(3) => \uo[4]_i_74_n_0\,
      DI(2) => \uo[4]_i_75_n_0\,
      DI(1) => \uo[4]_i_76_n_0\,
      DI(0) => \uo[4]_i_77_n_0\,
      O(3 downto 0) => \NLW_uo_reg[4]_i_41_O_UNCONNECTED\(3 downto 0),
      S(3) => \uo[4]_i_78_n_0\,
      S(2) => \uo[4]_i_79_n_0\,
      S(1) => \uo[4]_i_80_n_0\,
      S(0) => \uo[4]_i_81_n_0\
    );
\uo_reg[4]_i_44\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[4]_i_83_n_0\,
      CO(3 downto 1) => \NLW_uo_reg[4]_i_44_CO_UNCONNECTED\(3 downto 1),
      CO(0) => data0,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \uo[4]_i_84_n_0\,
      O(3 downto 0) => \NLW_uo_reg[4]_i_44_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \uo[4]_i_85_n_0\
    );
\uo_reg[4]_i_45\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \uo_reg[4]_i_45_n_0\,
      CO(2) => \uo_reg[4]_i_45_n_1\,
      CO(1) => \uo_reg[4]_i_45_n_2\,
      CO(0) => \uo_reg[4]_i_45_n_3\,
      CYINIT => '1',
      DI(3) => \uo[4]_i_86_n_0\,
      DI(2) => \uo[4]_i_87_n_0\,
      DI(1) => \uo[4]_i_88_n_0\,
      DI(0) => \uo[4]_i_89_n_0\,
      O(3 downto 0) => \NLW_uo_reg[4]_i_45_O_UNCONNECTED\(3 downto 0),
      S(3) => \uo[4]_i_90_n_0\,
      S(2) => \uo[4]_i_91_n_0\,
      S(1) => \uo[4]_i_92_n_0\,
      S(0) => \uo[4]_i_93_n_0\
    );
\uo_reg[4]_i_54\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \uo_reg[4]_i_54_n_0\,
      CO(2) => \uo_reg[4]_i_54_n_1\,
      CO(1) => \uo_reg[4]_i_54_n_2\,
      CO(0) => \uo_reg[4]_i_54_n_3\,
      CYINIT => '1',
      DI(3) => \uo[4]_i_95_n_0\,
      DI(2) => \uo[4]_i_96_n_0\,
      DI(1) => \uo[4]_i_97_n_0\,
      DI(0) => \uo[4]_i_98_n_0\,
      O(3 downto 0) => \NLW_uo_reg[4]_i_54_O_UNCONNECTED\(3 downto 0),
      S(3) => \uo[4]_i_99_n_0\,
      S(2) => \uo[4]_i_100_n_0\,
      S(1) => \uo[4]_i_101_n_0\,
      S(0) => \uo[4]_i_102_n_0\
    );
\uo_reg[4]_i_63\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[4]_i_103_n_0\,
      CO(3) => \NLW_uo_reg[4]_i_63_CO_UNCONNECTED\(3),
      CO(2) => \uo_reg[4]_i_63_n_1\,
      CO(1) => \NLW_uo_reg[4]_i_63_CO_UNCONNECTED\(1),
      CO(0) => \uo_reg[4]_i_63_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \uo_reg[4]_i_105_n_1\,
      DI(0) => \uo[4]_i_106_n_0\,
      O(3 downto 2) => \NLW_uo_reg[4]_i_63_O_UNCONNECTED\(3 downto 2),
      O(1) => \uo_reg[4]_i_63_n_6\,
      O(0) => \uo_reg[4]_i_63_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \uo[4]_i_107_n_0\,
      S(0) => \uo[4]_i_108_n_0\
    );
\uo_reg[4]_i_64\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \uo_reg[4]_i_64_n_0\,
      CO(2) => \uo_reg[4]_i_64_n_1\,
      CO(1) => \uo_reg[4]_i_64_n_2\,
      CO(0) => \uo_reg[4]_i_64_n_3\,
      CYINIT => '1',
      DI(3) => \uo[4]_i_109_n_0\,
      DI(2) => \uo[4]_i_110_n_0\,
      DI(1) => \uo[4]_i_111_n_0\,
      DI(0) => \uo[4]_i_112_n_0\,
      O(3 downto 0) => \NLW_uo_reg[4]_i_64_O_UNCONNECTED\(3 downto 0),
      S(3) => \uo[4]_i_113_n_0\,
      S(2) => \uo[4]_i_114_n_0\,
      S(1) => \uo[4]_i_115_n_0\,
      S(0) => \uo[4]_i_116_n_0\
    );
\uo_reg[4]_i_73\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \uo_reg[4]_i_73_n_0\,
      CO(2) => \uo_reg[4]_i_73_n_1\,
      CO(1) => \uo_reg[4]_i_73_n_2\,
      CO(0) => \uo_reg[4]_i_73_n_3\,
      CYINIT => '1',
      DI(3) => \uo[4]_i_118_n_0\,
      DI(2) => \uo[4]_i_119_n_0\,
      DI(1) => \uo[4]_i_120_n_0\,
      DI(0) => \uo[4]_i_121_n_0\,
      O(3 downto 0) => \NLW_uo_reg[4]_i_73_O_UNCONNECTED\(3 downto 0),
      S(3) => \uo[4]_i_122_n_0\,
      S(2) => \uo[4]_i_123_n_0\,
      S(1) => \uo[4]_i_124_n_0\,
      S(0) => \uo[4]_i_125_n_0\
    );
\uo_reg[4]_i_82\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[4]_i_126_n_0\,
      CO(3 downto 1) => \NLW_uo_reg[4]_i_82_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \uo_reg[4]_i_82_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_uo_reg[4]_i_82_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\uo_reg[4]_i_83\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[4]_i_128_n_0\,
      CO(3) => \uo_reg[4]_i_83_n_0\,
      CO(2) => \uo_reg[4]_i_83_n_1\,
      CO(1) => \uo_reg[4]_i_83_n_2\,
      CO(0) => \uo_reg[4]_i_83_n_3\,
      CYINIT => '0',
      DI(3) => \uo[4]_i_129_n_0\,
      DI(2) => \uo[4]_i_130_n_0\,
      DI(1) => \uo[4]_i_131_n_0\,
      DI(0) => \uo[4]_i_132_n_0\,
      O(3 downto 0) => \NLW_uo_reg[4]_i_83_O_UNCONNECTED\(3 downto 0),
      S(3) => \uo[4]_i_133_n_0\,
      S(2) => \uo[4]_i_134_n_0\,
      S(1) => \uo[4]_i_135_n_0\,
      S(0) => \uo[4]_i_136_n_0\
    );
\uo_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => D(5),
      Q => uo_out(5),
      R => SR(1)
    );
\uo_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => D(6),
      Q => uo_out(6),
      R => SR(1)
    );
\uo_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => D(7),
      Q => uo_out(7),
      R => SR(1)
    );
\uo_reg[7]_i_42\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[7]_i_43_n_0\,
      CO(3 downto 2) => \NLW_uo_reg[7]_i_42_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \uo[7]_i_47_0\(0),
      CO(0) => \uo_reg[7]_i_42_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \uo[7]_i_44_n_0\,
      DI(0) => \uo[7]_i_45_n_0\,
      O(3 downto 0) => \NLW_uo_reg[7]_i_42_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \uo[7]_i_46_n_0\,
      S(0) => \uo[7]_i_47_n_0\
    );
\uo_reg[7]_i_43\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \uo_reg[7]_i_43_n_0\,
      CO(2) => \uo_reg[7]_i_43_n_1\,
      CO(1) => \uo_reg[7]_i_43_n_2\,
      CO(0) => \uo_reg[7]_i_43_n_3\,
      CYINIT => \uo[7]_i_48_n_0\,
      DI(3) => \uo[7]_i_49_n_0\,
      DI(2) => \uo[7]_i_50_n_0\,
      DI(1) => \uo[7]_i_51_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_uo_reg[7]_i_43_O_UNCONNECTED\(3 downto 0),
      S(3) => \uo[7]_i_52_n_0\,
      S(2) => \uo[7]_i_53_n_0\,
      S(1) => \uo[7]_i_54_n_0\,
      S(0) => \uo[7]_i_55_n_0\
    );
\uo_reg[7]_i_56\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => \NLW_uo_reg[7]_i_56_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \uo_reg[7]_i_56_n_3\,
      CYINIT => \uo_reg[7]_i_58_n_3\,
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_uo_reg[7]_i_56_O_UNCONNECTED\(3 downto 2),
      O(1) => f_margin(13),
      O(0) => \NLW_uo_reg[7]_i_56_O_UNCONNECTED\(0),
      S(3 downto 2) => B"00",
      S(1) => \uo[7]_i_64_n_0\,
      S(0) => '1'
    );
\uo_reg[7]_i_57\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[7]_i_60_n_0\,
      CO(3 downto 0) => \NLW_uo_reg[7]_i_57_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_uo_reg[7]_i_57_O_UNCONNECTED\(3 downto 1),
      O(0) => f_uniq0(12),
      S(3 downto 1) => B"000",
      S(0) => \uo[7]_i_44_0\(0)
    );
\uo_reg[7]_i_58\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[7]_i_59_n_0\,
      CO(3 downto 1) => \NLW_uo_reg[7]_i_58_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \uo_reg[7]_i_58_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_uo_reg[7]_i_58_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\uo_reg[7]_i_59\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[7]_i_62_n_0\,
      CO(3) => \uo_reg[7]_i_59_n_0\,
      CO(2) => \uo_reg[7]_i_59_n_1\,
      CO(1) => \uo_reg[7]_i_59_n_2\,
      CO(0) => \uo_reg[7]_i_59_n_3\,
      CYINIT => '0',
      DI(3) => \uo[7]_i_66_n_0\,
      DI(2) => \uo[7]_i_67_n_0\,
      DI(1) => \uo[7]_i_68_n_0\,
      DI(0) => \uo[7]_i_69_n_0\,
      O(3 downto 0) => f_margin(11 downto 8),
      S(3) => \uo[7]_i_70_n_0\,
      S(2) => \uo[7]_i_71_n_0\,
      S(1) => \uo[7]_i_72_n_0\,
      S(0) => \uo[7]_i_73_n_0\
    );
\uo_reg[7]_i_60\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[7]_i_63_n_0\,
      CO(3) => \uo_reg[7]_i_60_n_0\,
      CO(2) => \uo_reg[7]_i_60_n_1\,
      CO(1) => \uo_reg[7]_i_60_n_2\,
      CO(0) => \uo_reg[7]_i_60_n_3\,
      CYINIT => '0',
      DI(3) => \uo[7]_i_52_0\(0),
      DI(2) => \^uq_reg[2]\(0),
      DI(1) => \uo[7]_i_76_n_0\,
      DI(0) => \uo[7]_i_77_n_0\,
      O(3 downto 0) => f_uniq0(11 downto 8),
      S(3 downto 2) => S(1 downto 0),
      S(1) => \uo[7]_i_80_n_0\,
      S(0) => \uo[7]_i_81_n_0\
    );
\uo_reg[7]_i_61\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \uo_reg[7]_i_61_n_0\,
      CO(2) => \uo_reg[7]_i_61_n_1\,
      CO(1) => \uo_reg[7]_i_61_n_2\,
      CO(0) => \uo_reg[7]_i_61_n_3\,
      CYINIT => '0',
      DI(3) => \uo[7]_i_82_n_0\,
      DI(2) => \uo[7]_i_83_n_0\,
      DI(1) => \uo[7]_i_84_n_0\,
      DI(0) => '0',
      O(3 downto 0) => f_uniq0(3 downto 0),
      S(3) => \uo[7]_i_85_n_0\,
      S(2) => \uo[7]_i_86_n_0\,
      S(1) => \uo[7]_i_87_n_0\,
      S(0) => \uo[7]_i_88_n_0\
    );
\uo_reg[7]_i_62\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \uo_reg[7]_i_62_n_0\,
      CO(2) => \uo_reg[7]_i_62_n_1\,
      CO(1) => \uo_reg[7]_i_62_n_2\,
      CO(0) => \uo_reg[7]_i_62_n_3\,
      CYINIT => '0',
      DI(3) => \uo[7]_i_89_n_0\,
      DI(2) => \uo[7]_i_90_n_0\,
      DI(1) => \uo[7]_i_91_n_0\,
      DI(0) => '0',
      O(3 downto 0) => f_margin(7 downto 4),
      S(3) => \uo[7]_i_92_n_0\,
      S(2) => \uo[7]_i_93_n_0\,
      S(1) => \uo[7]_i_94_n_0\,
      S(0) => \uo[7]_i_95_n_0\
    );
\uo_reg[7]_i_63\: unisim.vcomponents.CARRY4
     port map (
      CI => \uo_reg[7]_i_61_n_0\,
      CO(3) => \uo_reg[7]_i_63_n_0\,
      CO(2) => \uo_reg[7]_i_63_n_1\,
      CO(1) => \uo_reg[7]_i_63_n_2\,
      CO(0) => \uo_reg[7]_i_63_n_3\,
      CYINIT => '0',
      DI(3) => \uo[7]_i_96_n_0\,
      DI(2) => \uo[7]_i_97_n_0\,
      DI(1) => \uo[7]_i_98_n_0\,
      DI(0) => \uo[7]_i_99_n_0\,
      O(3 downto 0) => f_uniq0(7 downto 4),
      S(3) => \uo[7]_i_100_n_0\,
      S(2) => \uo[7]_i_101_n_0\,
      S(1) => \uo[7]_i_102_n_0\,
      S(0) => \uo[7]_i_103_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_slice_1_0_mini_slice is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    uo_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ui_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \l_bot_reg[6]_i_55\ : in STD_LOGIC;
    \rec_in_reg[6]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    uio_in : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_slice_1_0_mini_slice : entity is "mini_slice";
end system_slice_1_0_mini_slice;

architecture STRUCTURE of system_slice_1_0_mini_slice is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal a : STD_LOGIC_VECTOR ( 2 to 2 );
  signal b2_out : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal b_first : STD_LOGIC;
  signal b_own : STD_LOGIC;
  signal b_own0 : STD_LOGIC;
  signal b_real : STD_LOGIC;
  signal b_use : STD_LOGIC;
  signal best_j : STD_LOGIC_VECTOR ( 0 to 0 );
  signal best_s : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal carry_l : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal cost : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal dn_edge : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal f_uniq : STD_LOGIC;
  signal in_left : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal in_right : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal l_bot : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal l_new : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal l_top : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal l_up0 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal lmin : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal load : STD_LOGIC;
  signal m_s0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m_sec : STD_LOGIC_VECTOR ( 0 to 0 );
  signal min90_return1 : STD_LOGIC;
  signal old : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in0 : STD_LOGIC;
  signal pw_k : STD_LOGIC_VECTOR ( 6 downto 1 );
  signal r_new : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal rec_in : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal rec_top : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal rin_s : STD_LOGIC_VECTOR ( 0 to 0 );
  signal run : STD_LOGIC;
  signal s0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal scan : STD_LOGIC;
  signal sec : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sec2 : STD_LOGIC;
  signal u_cost_n_0 : STD_LOGIC;
  signal u_ctrl_n_0 : STD_LOGIC;
  signal u_ctrl_n_10 : STD_LOGIC;
  signal u_ctrl_n_100 : STD_LOGIC;
  signal u_ctrl_n_101 : STD_LOGIC;
  signal u_ctrl_n_102 : STD_LOGIC;
  signal u_ctrl_n_103 : STD_LOGIC;
  signal u_ctrl_n_104 : STD_LOGIC;
  signal u_ctrl_n_105 : STD_LOGIC;
  signal u_ctrl_n_106 : STD_LOGIC;
  signal u_ctrl_n_107 : STD_LOGIC;
  signal u_ctrl_n_108 : STD_LOGIC;
  signal u_ctrl_n_109 : STD_LOGIC;
  signal u_ctrl_n_11 : STD_LOGIC;
  signal u_ctrl_n_110 : STD_LOGIC;
  signal u_ctrl_n_111 : STD_LOGIC;
  signal u_ctrl_n_112 : STD_LOGIC;
  signal u_ctrl_n_113 : STD_LOGIC;
  signal u_ctrl_n_114 : STD_LOGIC;
  signal u_ctrl_n_115 : STD_LOGIC;
  signal u_ctrl_n_116 : STD_LOGIC;
  signal u_ctrl_n_118 : STD_LOGIC;
  signal u_ctrl_n_12 : STD_LOGIC;
  signal u_ctrl_n_126 : STD_LOGIC;
  signal u_ctrl_n_127 : STD_LOGIC;
  signal u_ctrl_n_128 : STD_LOGIC;
  signal u_ctrl_n_129 : STD_LOGIC;
  signal u_ctrl_n_13 : STD_LOGIC;
  signal u_ctrl_n_130 : STD_LOGIC;
  signal u_ctrl_n_131 : STD_LOGIC;
  signal u_ctrl_n_132 : STD_LOGIC;
  signal u_ctrl_n_133 : STD_LOGIC;
  signal u_ctrl_n_134 : STD_LOGIC;
  signal u_ctrl_n_135 : STD_LOGIC;
  signal u_ctrl_n_136 : STD_LOGIC;
  signal u_ctrl_n_137 : STD_LOGIC;
  signal u_ctrl_n_138 : STD_LOGIC;
  signal u_ctrl_n_139 : STD_LOGIC;
  signal u_ctrl_n_14 : STD_LOGIC;
  signal u_ctrl_n_140 : STD_LOGIC;
  signal u_ctrl_n_141 : STD_LOGIC;
  signal u_ctrl_n_142 : STD_LOGIC;
  signal u_ctrl_n_143 : STD_LOGIC;
  signal u_ctrl_n_144 : STD_LOGIC;
  signal u_ctrl_n_146 : STD_LOGIC;
  signal u_ctrl_n_147 : STD_LOGIC;
  signal u_ctrl_n_148 : STD_LOGIC;
  signal u_ctrl_n_149 : STD_LOGIC;
  signal u_ctrl_n_15 : STD_LOGIC;
  signal u_ctrl_n_150 : STD_LOGIC;
  signal u_ctrl_n_154 : STD_LOGIC;
  signal u_ctrl_n_156 : STD_LOGIC;
  signal u_ctrl_n_157 : STD_LOGIC;
  signal u_ctrl_n_158 : STD_LOGIC;
  signal u_ctrl_n_16 : STD_LOGIC;
  signal u_ctrl_n_2 : STD_LOGIC;
  signal u_ctrl_n_21 : STD_LOGIC;
  signal u_ctrl_n_22 : STD_LOGIC;
  signal u_ctrl_n_23 : STD_LOGIC;
  signal u_ctrl_n_24 : STD_LOGIC;
  signal u_ctrl_n_25 : STD_LOGIC;
  signal u_ctrl_n_26 : STD_LOGIC;
  signal u_ctrl_n_27 : STD_LOGIC;
  signal u_ctrl_n_28 : STD_LOGIC;
  signal u_ctrl_n_29 : STD_LOGIC;
  signal u_ctrl_n_30 : STD_LOGIC;
  signal u_ctrl_n_31 : STD_LOGIC;
  signal u_ctrl_n_32 : STD_LOGIC;
  signal u_ctrl_n_33 : STD_LOGIC;
  signal u_ctrl_n_35 : STD_LOGIC;
  signal u_ctrl_n_44 : STD_LOGIC;
  signal u_ctrl_n_45 : STD_LOGIC;
  signal u_ctrl_n_46 : STD_LOGIC;
  signal u_ctrl_n_47 : STD_LOGIC;
  signal u_ctrl_n_48 : STD_LOGIC;
  signal u_ctrl_n_49 : STD_LOGIC;
  signal u_ctrl_n_50 : STD_LOGIC;
  signal u_ctrl_n_51 : STD_LOGIC;
  signal u_ctrl_n_52 : STD_LOGIC;
  signal u_ctrl_n_53 : STD_LOGIC;
  signal u_ctrl_n_54 : STD_LOGIC;
  signal u_ctrl_n_55 : STD_LOGIC;
  signal u_ctrl_n_56 : STD_LOGIC;
  signal u_ctrl_n_57 : STD_LOGIC;
  signal u_ctrl_n_58 : STD_LOGIC;
  signal u_ctrl_n_59 : STD_LOGIC;
  signal u_ctrl_n_60 : STD_LOGIC;
  signal u_ctrl_n_61 : STD_LOGIC;
  signal u_ctrl_n_62 : STD_LOGIC;
  signal u_ctrl_n_63 : STD_LOGIC;
  signal u_ctrl_n_64 : STD_LOGIC;
  signal u_ctrl_n_65 : STD_LOGIC;
  signal u_ctrl_n_66 : STD_LOGIC;
  signal u_ctrl_n_67 : STD_LOGIC;
  signal u_ctrl_n_68 : STD_LOGIC;
  signal u_ctrl_n_69 : STD_LOGIC;
  signal u_ctrl_n_7 : STD_LOGIC;
  signal u_ctrl_n_70 : STD_LOGIC;
  signal u_ctrl_n_8 : STD_LOGIC;
  signal u_ctrl_n_9 : STD_LOGIC;
  signal u_ctrl_n_93 : STD_LOGIC;
  signal u_ctrl_n_94 : STD_LOGIC;
  signal u_ctrl_n_95 : STD_LOGIC;
  signal u_ctrl_n_96 : STD_LOGIC;
  signal u_ctrl_n_97 : STD_LOGIC;
  signal u_ctrl_n_98 : STD_LOGIC;
  signal u_ctrl_n_99 : STD_LOGIC;
  signal u_path_n_15 : STD_LOGIC;
  signal u_path_n_16 : STD_LOGIC;
  signal u_path_n_17 : STD_LOGIC;
  signal u_path_n_25 : STD_LOGIC;
  signal u_path_n_26 : STD_LOGIC;
  signal u_path_n_27 : STD_LOGIC;
  signal u_path_n_29 : STD_LOGIC;
  signal u_path_n_30 : STD_LOGIC;
  signal u_path_n_31 : STD_LOGIC;
  signal u_path_n_33 : STD_LOGIC;
  signal u_path_n_34 : STD_LOGIC;
  signal u_path_n_35 : STD_LOGIC;
  signal u_path_n_36 : STD_LOGIC;
  signal u_path_n_37 : STD_LOGIC;
  signal u_path_n_38 : STD_LOGIC;
  signal u_path_n_39 : STD_LOGIC;
  signal u_path_n_40 : STD_LOGIC;
  signal u_path_n_41 : STD_LOGIC;
  signal u_path_n_42 : STD_LOGIC;
  signal u_pick_n_16 : STD_LOGIC;
  signal u_pick_n_17 : STD_LOGIC;
  signal u_pick_n_18 : STD_LOGIC;
  signal u_pick_n_19 : STD_LOGIC;
  signal u_pick_n_20 : STD_LOGIC;
  signal u_pick_n_21 : STD_LOGIC;
  signal u_pick_n_22 : STD_LOGIC;
  signal u_pick_n_23 : STD_LOGIC;
  signal u_pick_n_24 : STD_LOGIC;
  signal u_pick_n_25 : STD_LOGIC;
  signal u_pick_n_26 : STD_LOGIC;
  signal u_pick_n_27 : STD_LOGIC;
  signal u_pick_n_28 : STD_LOGIC;
  signal u_pick_n_29 : STD_LOGIC;
  signal u_pick_n_30 : STD_LOGIC;
  signal u_pick_n_38 : STD_LOGIC;
  signal u_pick_n_39 : STD_LOGIC;
  signal u_pick_n_40 : STD_LOGIC;
  signal u_pick_n_41 : STD_LOGIC;
  signal u_pick_n_42 : STD_LOGIC;
  signal u_pick_n_43 : STD_LOGIC;
  signal u_pick_n_44 : STD_LOGIC;
  signal u_pick_n_68 : STD_LOGIC;
  signal u_pick_n_69 : STD_LOGIC;
  signal u_pick_n_70 : STD_LOGIC;
  signal u_pick_n_71 : STD_LOGIC;
  signal u_pick_n_72 : STD_LOGIC;
  signal u_pick_n_73 : STD_LOGIC;
  signal u_pick_n_74 : STD_LOGIC;
  signal u_pick_n_75 : STD_LOGIC;
  signal u_pick_n_76 : STD_LOGIC;
  signal u_pick_n_77 : STD_LOGIC;
  signal u_pick_n_78 : STD_LOGIC;
  signal u_pick_n_79 : STD_LOGIC;
  signal u_pick_n_80 : STD_LOGIC;
  signal u_pick_n_81 : STD_LOGIC;
  signal u_pick_n_82 : STD_LOGIC;
  signal u_pick_n_83 : STD_LOGIC;
  signal u_pick_n_85 : STD_LOGIC;
  signal u_pick_n_86 : STD_LOGIC;
  signal u_pick_n_87 : STD_LOGIC;
  signal u_pick_n_88 : STD_LOGIC;
  signal u_up_n_0 : STD_LOGIC;
  signal u_up_n_13 : STD_LOGIC;
  signal u_up_n_14 : STD_LOGIC;
  signal u_up_n_15 : STD_LOGIC;
  signal u_up_n_16 : STD_LOGIC;
  signal u_up_n_17 : STD_LOGIC;
  signal u_up_n_2 : STD_LOGIC;
  signal u_up_n_22 : STD_LOGIC;
  signal u_up_n_23 : STD_LOGIC;
  signal u_up_n_24 : STD_LOGIC;
  signal u_up_n_25 : STD_LOGIC;
  signal u_up_n_26 : STD_LOGIC;
  signal u_up_n_27 : STD_LOGIC;
  signal u_up_n_28 : STD_LOGIC;
  signal u_up_n_29 : STD_LOGIC;
  signal u_up_n_3 : STD_LOGIC;
  signal u_up_n_4 : STD_LOGIC;
  signal u_up_n_5 : STD_LOGIC;
  signal u_up_n_6 : STD_LOGIC;
  signal u_up_n_7 : STD_LOGIC;
  signal u_up_n_8 : STD_LOGIC;
  signal u_up_n_9 : STD_LOGIC;
  signal ucomb30_in : STD_LOGIC;
  signal uio_r : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal uq : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal w_real : STD_LOGIC;
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
u_cost: entity work.system_slice_1_0_ms_cost
     port map (
      CO(0) => u_ctrl_n_116,
      O(1) => u_ctrl_n_113,
      O(0) => u_ctrl_n_114,
      Q(3 downto 0) => \^q\(3 downto 0),
      a(0) => old(5),
      b_first => b_first,
      b_real => b_real,
      clk => clk,
      cost(5 downto 0) => cost(5 downto 0),
      in_left(44 downto 0) => in_left(44 downto 0),
      in_right(44 downto 0) => in_right(44 downto 0),
      \l_bot_reg[5]\(0) => u_ctrl_n_115,
      l_new(0) => l_new(5),
      load => load,
      p_1_in(0) => u_cost_n_0,
      \rs_ok_reg[15]_0\ => u_ctrl_n_28,
      scan => scan,
      w_real => w_real
    );
u_ctrl: entity work.system_slice_1_0_ms_ctrl
     port map (
      CO(0) => sec2,
      D(7 downto 0) => p_1_in(7 downto 0),
      DI(0) => u_ctrl_n_132,
      E(0) => u_ctrl_n_7,
      O(1) => u_ctrl_n_113,
      O(0) => u_ctrl_n_114,
      Q(6 downto 0) => carry_l(6 downto 0),
      S(1) => u_ctrl_n_15,
      S(0) => u_ctrl_n_16,
      SR(1) => u_ctrl_n_23,
      SR(0) => u_ctrl_n_24,
      SS(0) => u_ctrl_n_22,
      a(6 downto 0) => old(6 downto 0),
      b_first => b_first,
      b_first_reg_0 => u_ctrl_n_112,
      b_first_reg_1(0) => u_ctrl_n_134,
      b_own => b_own,
      b_real => b_real,
      b_real_reg_0 => u_ctrl_n_93,
      b_real_reg_1 => u_ctrl_n_94,
      b_real_reg_10 => u_ctrl_n_105,
      b_real_reg_11 => u_ctrl_n_106,
      b_real_reg_12 => u_ctrl_n_107,
      b_real_reg_13 => u_ctrl_n_108,
      b_real_reg_14 => u_ctrl_n_109,
      b_real_reg_15 => u_ctrl_n_110,
      b_real_reg_16 => u_ctrl_n_111,
      b_real_reg_17(0) => u_ctrl_n_118,
      b_real_reg_18 => u_ctrl_n_135,
      b_real_reg_2 => u_ctrl_n_96,
      b_real_reg_3(0) => u_ctrl_n_97,
      b_real_reg_4 => u_ctrl_n_99,
      b_real_reg_5 => u_ctrl_n_100,
      b_real_reg_6 => u_ctrl_n_101,
      b_real_reg_7 => u_ctrl_n_102,
      b_real_reg_8 => u_ctrl_n_103,
      b_real_reg_9 => u_ctrl_n_104,
      b_use => b_use,
      b_use_reg_0(13 downto 0) => r_new(13 downto 0),
      b_v_reg_0(0) => u_ctrl_n_35,
      best_s(7 downto 0) => best_s(7 downto 0),
      \best_s_reg[6]\(0) => u_path_n_30,
      \best_s_reg[7]\ => u_ctrl_n_95,
      \carry_rec_reg[0]\ => u_pick_n_16,
      \carry_rec_reg[0]_0\ => u_pick_n_82,
      \carry_rec_reg[10]\(1) => u_ctrl_n_69,
      \carry_rec_reg[10]\(0) => u_ctrl_n_70,
      \carry_rec_reg[10]_0\ => u_pick_n_26,
      \carry_rec_reg[10]_1\ => u_pick_n_72,
      \carry_rec_reg[11]\ => u_pick_n_27,
      \carry_rec_reg[11]_0\ => u_pick_n_71,
      \carry_rec_reg[12]\ => u_pick_n_28,
      \carry_rec_reg[12]_0\ => u_pick_n_70,
      \carry_rec_reg[13]\ => u_pick_n_29,
      \carry_rec_reg[13]_0\ => u_pick_n_69,
      \carry_rec_reg[14]\ => u_pick_n_30,
      \carry_rec_reg[14]_0\ => u_pick_n_68,
      \carry_rec_reg[14]_1\(14 downto 0) => rec_in(14 downto 0),
      \carry_rec_reg[1]\ => u_pick_n_17,
      \carry_rec_reg[1]_0\ => u_pick_n_81,
      \carry_rec_reg[2]\ => u_pick_n_18,
      \carry_rec_reg[2]_0\ => u_pick_n_80,
      \carry_rec_reg[3]\ => u_pick_n_19,
      \carry_rec_reg[3]_0\ => u_pick_n_79,
      \carry_rec_reg[4]\ => u_pick_n_20,
      \carry_rec_reg[4]_0\ => u_pick_n_78,
      \carry_rec_reg[5]\ => u_pick_n_21,
      \carry_rec_reg[5]_0\ => u_pick_n_77,
      \carry_rec_reg[6]\ => u_pick_n_22,
      \carry_rec_reg[6]_0\ => u_pick_n_76,
      \carry_rec_reg[7]\ => u_pick_n_23,
      \carry_rec_reg[7]_0\ => u_pick_n_75,
      \carry_rec_reg[8]\ => u_pick_n_24,
      \carry_rec_reg[8]_0\ => u_pick_n_74,
      \carry_rec_reg[9]\ => u_pick_n_25,
      \carry_rec_reg[9]_0\ => u_pick_n_73,
      clk => clk,
      cost(5 downto 0) => cost(5 downto 0),
      \gmin_reg[6]_0\(5 downto 0) => b2_out(5 downto 0),
      in_left(44 downto 0) => in_left(44 downto 0),
      in_right(44 downto 0) => in_right(44 downto 0),
      \l_bot[3]_i_10\(2) => u_path_n_25,
      \l_bot[3]_i_10\(1) => u_path_n_26,
      \l_bot[3]_i_10\(0) => u_path_n_27,
      \l_bot[6]_i_14_0\(0) => u_ctrl_n_115,
      \l_bot[6]_i_14_1\(0) => u_ctrl_n_116,
      \l_bot[6]_i_35\(0) => min90_return1,
      \l_bot_reg[3]_i_2_0\(0) => a(2),
      \l_bot_reg[6]_i_18_0\(6 downto 0) => dn_edge(6 downto 0),
      \l_bot_reg[6]_i_55_0\ => \l_bot_reg[6]_i_55\,
      l_new(5) => l_new(6),
      l_new(4 downto 0) => l_new(4 downto 0),
      l_up0(6 downto 0) => l_up0(6 downto 0),
      lmin(3 downto 1) => lmin(6 downto 4),
      lmin(0) => lmin(0),
      \lmin_reg[5]\(0) => l_new(5),
      \lmin_reg[6]\(0) => u_path_n_29,
      load => load,
      \m_s0_reg[0]\ => u_up_n_17,
      \m_s0_reg[1]\ => u_up_n_28,
      \m_s0_reg[1]_0\ => u_up_n_22,
      \m_s0_reg[1]_1\ => u_path_n_34,
      \m_s0_reg[2]\ => u_up_n_16,
      \m_s0_reg[2]_0\ => u_up_n_23,
      \m_s0_reg[2]_1\ => u_path_n_33,
      \m_s0_reg[3]\ => u_up_n_4,
      \m_s0_reg[3]_0\ => u_up_n_25,
      \m_s0_reg[3]_1\ => u_path_n_31,
      \m_s0_reg[4]\ => u_up_n_13,
      \m_s0_reg[4]_0\ => u_up_n_24,
      \m_s0_reg[5]\ => u_up_n_14,
      \m_s0_reg[6]\ => u_up_n_15,
      \m_sec_reg[7]\(7) => u_up_n_5,
      \m_sec_reg[7]\(6) => u_up_n_6,
      \m_sec_reg[7]\(5) => u_up_n_7,
      \m_sec_reg[7]\(4) => u_up_n_8,
      \m_sec_reg[7]\(3) => u_up_n_9,
      \m_sec_reg[7]\(2 downto 0) => uio_r(2 downto 0),
      \m_sec_reg[7]_0\(14 downto 0) => rec_top(14 downto 0),
      \m_sec_reg[7]_1\ => u_up_n_27,
      \m_sec_reg[7]_2\ => u_up_n_0,
      own_wins_reg(0) => b_own0,
      p_1_in(5) => u_ctrl_n_126,
      p_1_in(4) => u_ctrl_n_127,
      p_1_in(3) => u_ctrl_n_128,
      p_1_in(2) => u_ctrl_n_129,
      p_1_in(1) => u_ctrl_n_130,
      p_1_in(0) => u_ctrl_n_131,
      \pos_reg[0]_0\ => u_ctrl_n_13,
      \pos_reg[0]_1\ => u_ctrl_n_27,
      \pos_reg[0]_2\(0) => u_ctrl_n_148,
      \pos_reg[2]_0\(0) => u_ctrl_n_25,
      \pos_reg[2]_1\ => u_ctrl_n_154,
      \rec_in_reg[6]\(0) => \rec_in_reg[6]\(0),
      \rec_reg[0][13]\(13 downto 7) => p_0_in_0(6 downto 0),
      \rec_reg[0][13]\(6) => u_pick_n_38,
      \rec_reg[0][13]\(5) => u_pick_n_39,
      \rec_reg[0][13]\(4) => u_pick_n_40,
      \rec_reg[0][13]\(3) => u_pick_n_41,
      \rec_reg[0][13]\(2) => u_pick_n_42,
      \rec_reg[0][13]\(1) => u_pick_n_43,
      \rec_reg[0][13]\(0) => u_pick_n_44,
      \rec_reg[0][7]\(0) => u_pick_n_83,
      run => run,
      run_reg_0(0) => u_ctrl_n_14,
      run_reg_1(0) => m_s0(0),
      run_reg_2(0) => u_ctrl_n_146,
      run_reg_3(0) => u_ctrl_n_150,
      run_reg_4(0) => m_sec(0),
      run_reg_5(0) => rin_s(0),
      s0(7 downto 0) => s0(7 downto 0),
      \s0_reg[7]\ => u_ctrl_n_29,
      s2(7 downto 0) => s2(7 downto 0),
      \s2_reg[7]\ => u_ctrl_n_31,
      scan => scan,
      sg_first_reg_0 => u_ctrl_n_28,
      sg_valid_reg_0 => u_ctrl_n_0,
      sg_valid_reg_1 => u_ctrl_n_2,
      sg_valid_reg_2 => u_ctrl_n_30,
      sg_valid_reg_3 => u_ctrl_n_32,
      sg_valid_reg_4(0) => u_ctrl_n_33,
      \uc_reg[0]_0\(0) => u_ctrl_n_59,
      \uc_reg[0]_1\(0) => u_ctrl_n_60,
      \uc_reg[0]_2\(0) => u_ctrl_n_63,
      \uc_reg[0]_3\(0) => u_ctrl_n_64,
      \uc_reg[0]_4\(0) => u_ctrl_n_67,
      \uc_reg[0]_5\(0) => u_ctrl_n_68,
      \uc_reg[0]_6\ => u_ctrl_n_133,
      \uc_reg[0]_7\(0) => u_ctrl_n_149,
      \uc_reg[1]_0\(0) => u_ctrl_n_61,
      \uc_reg[1]_1\(0) => u_ctrl_n_62,
      \uc_reg[1]_2\(0) => u_ctrl_n_65,
      \uc_reg[1]_3\(0) => u_ctrl_n_66,
      \uc_reg[2]_0\(0) => u_ctrl_n_10,
      \uc_reg[2]_1\(0) => u_ctrl_n_11,
      \uc_reg[2]_2\(0) => u_ctrl_n_12,
      \uc_reg[2]_3\(0) => u_ctrl_n_98,
      \uc_reg[3]_0\(3 downto 0) => \^q\(3 downto 0),
      \uc_reg[3]_1\(0) => u_ctrl_n_8,
      \uc_reg[3]_2\(0) => u_ctrl_n_9,
      \uc_reg[3]_3\(14) => u_ctrl_n_44,
      \uc_reg[3]_3\(13) => u_ctrl_n_45,
      \uc_reg[3]_3\(12) => u_ctrl_n_46,
      \uc_reg[3]_3\(11) => u_ctrl_n_47,
      \uc_reg[3]_3\(10) => u_ctrl_n_48,
      \uc_reg[3]_3\(9) => u_ctrl_n_49,
      \uc_reg[3]_3\(8) => u_ctrl_n_50,
      \uc_reg[3]_3\(7) => u_ctrl_n_51,
      \uc_reg[3]_3\(6) => u_ctrl_n_52,
      \uc_reg[3]_3\(5) => u_ctrl_n_53,
      \uc_reg[3]_3\(4) => u_ctrl_n_54,
      \uc_reg[3]_3\(3) => u_ctrl_n_55,
      \uc_reg[3]_3\(2) => u_ctrl_n_56,
      \uc_reg[3]_3\(1) => u_ctrl_n_57,
      \uc_reg[3]_3\(0) => u_ctrl_n_58,
      \uc_reg[4]_0\ => u_ctrl_n_26,
      ui_in(7 downto 0) => ui_in(7 downto 0),
      \uio_r_reg[3]\ => u_ctrl_n_147,
      \uio_r_reg[4]\ => u_ctrl_n_144,
      \uio_r_reg[6]\(7) => u_ctrl_n_136,
      \uio_r_reg[6]\(6) => u_ctrl_n_137,
      \uio_r_reg[6]\(5) => u_ctrl_n_138,
      \uio_r_reg[6]\(4) => u_ctrl_n_139,
      \uio_r_reg[6]\(3) => u_ctrl_n_140,
      \uio_r_reg[6]\(2) => u_ctrl_n_141,
      \uio_r_reg[6]\(1) => u_ctrl_n_142,
      \uio_r_reg[6]\(0) => u_ctrl_n_143,
      \uo[0]_i_7_0\(0) => best_j(0),
      \uo[1]_i_8\(0) => ucomb30_in,
      \uo[5]_i_11_0\(0) => u_up_n_29,
      \uo[6]_i_5_0\(6 downto 0) => l_top(6 downto 0),
      \uo[6]_i_5_1\(6 downto 0) => l_bot(6 downto 0),
      \uo[6]_i_8_0\(3 downto 2) => pw_k(6 downto 5),
      \uo[6]_i_8_0\(1 downto 0) => pw_k(2 downto 1),
      \uo[7]_i_100\(2) => p_1_in0,
      \uo[7]_i_100\(1) => u_up_n_2,
      \uo[7]_i_100\(0) => u_up_n_3,
      \uo[7]_i_10_0\(0) => f_uniq,
      \uo[7]_i_10_1\(7 downto 0) => sec(7 downto 0),
      \uo_reg[7]_i_60\(0) => u_up_n_26,
      uq(3 downto 0) => uq(3 downto 0),
      \uq_reg[0]_0\ => u_ctrl_n_158,
      \uq_reg[1]_0\ => u_ctrl_n_157,
      \uq_reg[2]_0\(0) => u_ctrl_n_21,
      \uq_reg[2]_1\(0) => u_ctrl_n_156,
      w_real => w_real
    );
u_path: entity work.system_slice_1_0_ms_path
     port map (
      D(3 downto 0) => \^q\(3 downto 0),
      DI(0) => u_ctrl_n_132,
      E(0) => u_ctrl_n_98,
      Q(5 downto 0) => sec(5 downto 0),
      S(2) => u_path_n_15,
      S(1) => u_path_n_16,
      S(0) => u_path_n_17,
      a(6 downto 0) => old(6 downto 0),
      \best_j_reg[0]_0\(0) => best_j(0),
      \best_j_reg[1]_0\ => u_path_n_34,
      \best_j_reg[2]_0\ => u_path_n_33,
      \best_j_reg[3]_0\ => u_path_n_31,
      \best_j_reg[3]_1\(0) => u_ctrl_n_118,
      best_s(7 downto 0) => best_s(7 downto 0),
      \best_s_reg[0]_0\ => u_ctrl_n_106,
      \best_s_reg[1]_0\ => u_ctrl_n_107,
      \best_s_reg[2]_0\ => u_ctrl_n_108,
      \best_s_reg[3]_0\ => u_ctrl_n_109,
      \best_s_reg[4]_0\ => u_ctrl_n_110,
      \best_s_reg[5]_0\ => u_ctrl_n_111,
      \best_s_reg[6]_0\(0) => u_path_n_30,
      \best_s_reg[6]_1\ => u_ctrl_n_135,
      \best_s_reg[6]_2\ => u_ctrl_n_96,
      \best_s_reg[6]_3\ => u_ctrl_n_112,
      \best_s_reg[7]_0\(3) => u_path_n_35,
      \best_s_reg[7]_0\(2) => u_path_n_36,
      \best_s_reg[7]_0\(1) => u_path_n_37,
      \best_s_reg[7]_0\(0) => u_path_n_38,
      \best_s_reg[7]_1\ => u_ctrl_n_95,
      carry_l(6 downto 0) => carry_l(6 downto 0),
      \carry_l_reg[6]_0\ => u_ctrl_n_133,
      clk => clk,
      clk_0(2) => u_path_n_25,
      clk_0(1) => u_path_n_26,
      clk_0(0) => u_path_n_27,
      clk_1(0) => a(2),
      \l_bot[3]_i_3\(0) => min90_return1,
      \l_bot_reg[6]_0\(6 downto 0) => l_bot(6 downto 0),
      \l_bot_reg[6]_i_15\(5 downto 0) => b2_out(5 downto 0),
      l_new(6 downto 0) => l_new(6 downto 0),
      \l_top_reg[6]_0\(6 downto 0) => l_top(6 downto 0),
      \l_top_reg[6]_1\(0) => u_ctrl_n_97,
      l_up0(6 downto 0) => l_up0(6 downto 0),
      lmin(6 downto 0) => lmin(6 downto 0),
      \lmin_reg[0]_0\ => u_ctrl_n_99,
      \lmin_reg[1]_0\ => u_ctrl_n_100,
      \lmin_reg[2]_0\ => u_ctrl_n_101,
      \lmin_reg[3]_0\ => u_ctrl_n_102,
      \lmin_reg[4]_0\ => u_ctrl_n_103,
      \lmin_reg[5]_0\ => u_ctrl_n_104,
      \lmin_reg[6]_0\(0) => u_path_n_29,
      \lmin_reg[6]_1\(3) => u_path_n_39,
      \lmin_reg[6]_1\(2) => u_path_n_40,
      \lmin_reg[6]_1\(1) => u_path_n_41,
      \lmin_reg[6]_1\(0) => u_path_n_42,
      \lmin_reg[6]_2\ => u_ctrl_n_93,
      \lmin_reg[6]_3\ => u_ctrl_n_94,
      \lmin_reg[6]_4\ => u_ctrl_n_105,
      \lmin_reg[6]_5\(0) => u_ctrl_n_134,
      own_wins_reg_i_2(7) => u_up_n_5,
      own_wins_reg_i_2(6) => u_up_n_6,
      own_wins_reg_i_2(5) => u_up_n_7,
      own_wins_reg_i_2(4) => u_up_n_8,
      own_wins_reg_i_2(3) => u_up_n_9,
      own_wins_reg_i_2(2 downto 0) => uio_r(2 downto 0),
      p_0_in(2 downto 0) => p_0_in(2 downto 0),
      p_1_in(6) => u_ctrl_n_126,
      p_1_in(5) => u_cost_n_0,
      p_1_in(4) => u_ctrl_n_127,
      p_1_in(3) => u_ctrl_n_128,
      p_1_in(2) => u_ctrl_n_129,
      p_1_in(1) => u_ctrl_n_130,
      p_1_in(0) => u_ctrl_n_131,
      scan => scan,
      \uo[1]_i_2\ => u_up_n_0,
      \uo[1]_i_2_0\ => u_ctrl_n_13,
      \uo[1]_i_2_1\ => u_ctrl_n_154
    );
u_pick: entity work.system_slice_1_0_ms_pick
     port map (
      CO(0) => sec2,
      D(13 downto 0) => r_new(13 downto 0),
      E(0) => u_ctrl_n_33,
      Q(13 downto 7) => p_0_in_0(6 downto 0),
      Q(6) => u_pick_n_38,
      Q(5) => u_pick_n_39,
      Q(4) => u_pick_n_40,
      Q(3) => u_pick_n_41,
      Q(2) => u_pick_n_42,
      Q(1) => u_pick_n_43,
      Q(0) => u_pick_n_44,
      S(2) => u_path_n_15,
      S(1) => u_path_n_16,
      S(0) => u_path_n_17,
      a(6 downto 0) => old(6 downto 0),
      b_real => b_real,
      b_use => b_use,
      \carry_rec_reg[14]_0\(0) => u_pick_n_83,
      \carry_rec_reg[14]_1\(3 downto 0) => \^q\(3 downto 0),
      \carry_rec_reg[14]_2\(0) => u_ctrl_n_35,
      \carry_rec_reg[14]_3\(14) => u_ctrl_n_44,
      \carry_rec_reg[14]_3\(13) => u_ctrl_n_45,
      \carry_rec_reg[14]_3\(12) => u_ctrl_n_46,
      \carry_rec_reg[14]_3\(11) => u_ctrl_n_47,
      \carry_rec_reg[14]_3\(10) => u_ctrl_n_48,
      \carry_rec_reg[14]_3\(9) => u_ctrl_n_49,
      \carry_rec_reg[14]_3\(8) => u_ctrl_n_50,
      \carry_rec_reg[14]_3\(7) => u_ctrl_n_51,
      \carry_rec_reg[14]_3\(6) => u_ctrl_n_52,
      \carry_rec_reg[14]_3\(5) => u_ctrl_n_53,
      \carry_rec_reg[14]_3\(4) => u_ctrl_n_54,
      \carry_rec_reg[14]_3\(3) => u_ctrl_n_55,
      \carry_rec_reg[14]_3\(2) => u_ctrl_n_56,
      \carry_rec_reg[14]_3\(1) => u_ctrl_n_57,
      \carry_rec_reg[14]_3\(0) => u_ctrl_n_58,
      clk => clk,
      l_new(6 downto 0) => l_new(6 downto 0),
      \rec_reg[0][0]_0\(0) => u_ctrl_n_9,
      \rec_reg[10][14]_0\(0) => u_ctrl_n_60,
      \rec_reg[11][14]_0\(0) => u_ctrl_n_59,
      \rec_reg[12][0]_0\(0) => u_ctrl_n_12,
      \rec_reg[13][0]_0\(0) => u_ctrl_n_11,
      \rec_reg[14][0]_0\(0) => u_ctrl_n_10,
      \rec_reg[15][13]_0\ => u_pick_n_69,
      \rec_reg[15][14]_0\(14 downto 0) => rec_top(14 downto 0),
      \rec_reg[15][14]_1\(1) => u_ctrl_n_69,
      \rec_reg[15][14]_1\(0) => u_ctrl_n_70,
      \rec_reg[15][14]_2\(0) => u_ctrl_n_68,
      \rec_reg[15][1]_0\ => u_pick_n_81,
      \rec_reg[15][2]_0\ => u_pick_n_80,
      \rec_reg[1][0]_0\(0) => u_ctrl_n_8,
      \rec_reg[2][0]_0\(0) => u_ctrl_n_7,
      \rec_reg[3][14]_0\(0) => u_ctrl_n_67,
      \rec_reg[4][14]_0\(0) => u_ctrl_n_66,
      \rec_reg[5][14]_0\(0) => u_ctrl_n_65,
      \rec_reg[6][14]_0\(0) => u_ctrl_n_64,
      \rec_reg[7][0]_0\ => u_pick_n_82,
      \rec_reg[7][10]_0\ => u_pick_n_72,
      \rec_reg[7][11]_0\ => u_pick_n_71,
      \rec_reg[7][12]_0\ => u_pick_n_70,
      \rec_reg[7][14]_0\ => u_pick_n_68,
      \rec_reg[7][14]_1\(0) => u_ctrl_n_63,
      \rec_reg[7][3]_0\ => u_pick_n_79,
      \rec_reg[7][4]_0\ => u_pick_n_78,
      \rec_reg[7][5]_0\ => u_pick_n_77,
      \rec_reg[7][6]_0\ => u_pick_n_76,
      \rec_reg[7][7]_0\ => u_pick_n_75,
      \rec_reg[7][8]_0\ => u_pick_n_74,
      \rec_reg[7][9]_0\ => u_pick_n_73,
      \rec_reg[8][14]_0\(0) => u_ctrl_n_62,
      \rec_reg[9][14]_0\(0) => u_ctrl_n_61,
      s0(7 downto 0) => s0(7 downto 0),
      \s0_reg[0]_0\ => u_ctrl_n_0,
      \s0_reg[6]_0\ => u_ctrl_n_30,
      \s0_reg[7]_0\ => u_ctrl_n_29,
      s2(7 downto 0) => s2(7 downto 0),
      \s2_reg[0]_0\ => u_ctrl_n_2,
      \s2_reg[6]_0\ => u_ctrl_n_32,
      \s2_reg[7]_0\ => u_ctrl_n_31,
      \sec_reg[7]_0\(7 downto 0) => sec(7 downto 0),
      \sec_reg[7]_1\(3) => u_pick_n_85,
      \sec_reg[7]_1\(2) => u_pick_n_86,
      \sec_reg[7]_1\(1) => u_pick_n_87,
      \sec_reg[7]_1\(0) => u_pick_n_88,
      \sec_reg[7]_2\(7 downto 0) => p_1_in(7 downto 0),
      \uc_reg[2]\ => u_pick_n_17,
      \uc_reg[2]_0\ => u_pick_n_18,
      \uc_reg[2]_1\ => u_pick_n_29,
      \uc_reg[3]\ => u_pick_n_16,
      \uc_reg[3]_0\ => u_pick_n_19,
      \uc_reg[3]_1\ => u_pick_n_20,
      \uc_reg[3]_10\ => u_pick_n_30,
      \uc_reg[3]_2\ => u_pick_n_21,
      \uc_reg[3]_3\ => u_pick_n_22,
      \uc_reg[3]_4\ => u_pick_n_23,
      \uc_reg[3]_5\ => u_pick_n_24,
      \uc_reg[3]_6\ => u_pick_n_25,
      \uc_reg[3]_7\ => u_pick_n_26,
      \uc_reg[3]_8\ => u_pick_n_27,
      \uc_reg[3]_9\ => u_pick_n_28,
      \uo_reg[4]_i_15\(7) => u_up_n_5,
      \uo_reg[4]_i_15\(6) => u_up_n_6,
      \uo_reg[4]_i_15\(5) => u_up_n_7,
      \uo_reg[4]_i_15\(4) => u_up_n_8,
      \uo_reg[4]_i_15\(3) => u_up_n_9,
      \uo_reg[4]_i_15\(2 downto 0) => uio_r(2 downto 0)
    );
u_up: entity work.system_slice_1_0_ms_up
     port map (
      D(7) => u_ctrl_n_136,
      D(6) => u_ctrl_n_137,
      D(5) => u_ctrl_n_138,
      D(4) => u_ctrl_n_139,
      D(3) => u_ctrl_n_140,
      D(2) => u_ctrl_n_141,
      D(1) => u_ctrl_n_142,
      D(0) => u_ctrl_n_143,
      E(0) => u_ctrl_n_148,
      Q(2) => p_1_in0,
      Q(1) => u_up_n_2,
      Q(0) => u_up_n_3,
      S(1) => u_ctrl_n_15,
      S(0) => u_ctrl_n_16,
      SR(1) => u_ctrl_n_23,
      SR(0) => u_ctrl_n_24,
      SS(0) => u_ctrl_n_22,
      b_own => b_own,
      best_s(7 downto 0) => best_s(7 downto 0),
      clk => clk,
      \dn_edge_reg[6]_0\(6 downto 0) => dn_edge(6 downto 0),
      \dn_edge_reg[6]_1\(0) => u_ctrl_n_146,
      lmin(6 downto 0) => lmin(6 downto 0),
      \m_s0_reg[6]_0\(0) => m_s0(0),
      \m_s2_reg[0]_0\(0) => u_ctrl_n_14,
      \m_sec_reg[7]_0\(0) => m_sec(0),
      \mw_k_reg[6]_0\(0) => u_ctrl_n_149,
      own_wins_reg_0 => u_up_n_0,
      own_wins_reg_1(3) => u_path_n_35,
      own_wins_reg_1(2) => u_path_n_36,
      own_wins_reg_1(1) => u_path_n_37,
      own_wins_reg_1(0) => u_path_n_38,
      \pw_k_reg[0]_0\ => u_up_n_17,
      \pw_k_reg[0]_1\(0) => load,
      \pw_k_reg[3]_0\ => u_up_n_25,
      \pw_k_reg[4]_0\ => u_up_n_24,
      \pw_k_reg[6]_0\(3 downto 2) => pw_k(6 downto 5),
      \pw_k_reg[6]_0\(1 downto 0) => pw_k(2 downto 1),
      \rec_in_reg[14]_0\(14 downto 0) => rec_in(14 downto 0),
      \rec_in_reg[14]_1\(0) => u_ctrl_n_150,
      \rin_s_reg[7]_0\(0) => u_ctrl_n_25,
      \rin_s_reg[7]_1\(0) => rin_s(0),
      run => run,
      run_reg => u_up_n_4,
      run_reg_0 => u_up_n_13,
      run_reg_1 => u_up_n_14,
      run_reg_2 => u_up_n_15,
      run_reg_3 => u_up_n_16,
      uio_in(7 downto 0) => uio_in(7 downto 0),
      \uio_r_reg[1]_0\ => u_up_n_28,
      \uio_r_reg[6]_0\ => u_up_n_27,
      \uio_r_reg[6]_1\(0) => ucomb30_in,
      \uio_r_reg[7]_0\(7) => u_up_n_5,
      \uio_r_reg[7]_0\(6) => u_up_n_6,
      \uio_r_reg[7]_0\(5) => u_up_n_7,
      \uio_r_reg[7]_0\(4) => u_up_n_8,
      \uio_r_reg[7]_0\(3) => u_up_n_9,
      \uio_r_reg[7]_0\(2 downto 0) => uio_r(2 downto 0),
      \uio_r_reg[7]_1\(0) => u_up_n_29,
      \uio_r_reg[7]_2\(0) => b_own0,
      \uo[2]_i_5\ => u_ctrl_n_26,
      \uo[2]_i_5_0\ => u_ctrl_n_27,
      \uo[3]_i_5\ => u_ctrl_n_147,
      \uo[4]_i_6\ => u_ctrl_n_144,
      \uo[5]_i_13\ => u_up_n_22,
      \uo[5]_i_13_0\ => u_up_n_23,
      \uo[5]_i_16\(3) => u_pick_n_85,
      \uo[5]_i_16\(2) => u_pick_n_86,
      \uo[5]_i_16\(1) => u_pick_n_87,
      \uo[5]_i_16\(0) => u_pick_n_88,
      \uo[6]_i_10\(3) => u_path_n_39,
      \uo[6]_i_10\(2) => u_path_n_40,
      \uo[6]_i_10\(1) => u_path_n_41,
      \uo[6]_i_10\(0) => u_path_n_42,
      \uo[7]_i_44_0\(0) => u_ctrl_n_21,
      \uo[7]_i_47_0\(0) => f_uniq,
      \uo[7]_i_52_0\(0) => u_ctrl_n_156,
      uo_out(7 downto 0) => uo_out(7 downto 0),
      \uo_reg[4]_i_15_0\(7 downto 0) => sec(7 downto 0),
      \uo_reg[7]_i_60_0\ => u_ctrl_n_157,
      \uo_reg[7]_i_63_0\ => u_ctrl_n_158,
      uq(3 downto 0) => uq(3 downto 0),
      \uq_reg[2]\(0) => u_up_n_26
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_slice_1_0_tt_um_stereo_slice is
  port (
    uo_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ui_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    uio_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_slice_1_0_tt_um_stereo_slice : entity is "tt_um_stereo_slice";
end system_slice_1_0_tt_um_stereo_slice;

architecture STRUCTURE of system_slice_1_0_tt_um_stereo_slice is
  signal \l_bot[6]_i_71_n_0\ : STD_LOGIC;
  signal lr_reg_0_15_0_0_i_3_n_0 : STD_LOGIC;
  signal lr_reg_0_15_0_0_i_4_n_0 : STD_LOGIC;
  signal lr_reg_0_15_0_0_i_5_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \rs[1]_i_1_n_0\ : STD_LOGIC;
  signal \rs_reg_n_0_[1]\ : STD_LOGIC;
  signal uc : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
\l_bot[6]_i_71\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => uc(3),
      I1 => uc(1),
      I2 => uc(0),
      I3 => uc(2),
      O => \l_bot[6]_i_71_n_0\
    );
lr_reg_0_15_0_0_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => uc(0),
      I1 => uc(1),
      O => lr_reg_0_15_0_0_i_3_n_0
    );
lr_reg_0_15_0_0_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => uc(1),
      I1 => uc(0),
      I2 => uc(2),
      O => lr_reg_0_15_0_0_i_4_n_0
    );
lr_reg_0_15_0_0_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => uc(2),
      I1 => uc(0),
      I2 => uc(1),
      I3 => uc(3),
      O => lr_reg_0_15_0_0_i_5_n_0
    );
\rs[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \rs[1]_i_1_n_0\
    );
\rs_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rs[1]_i_1_n_0\,
      D => '1',
      Q => p_0_in(1)
    );
\rs_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rs[1]_i_1_n_0\,
      D => p_0_in(1),
      Q => \rs_reg_n_0_[1]\
    );
u_slice: entity work.system_slice_1_0_mini_slice
     port map (
      Q(3 downto 0) => uc(3 downto 0),
      clk => clk,
      \l_bot_reg[6]_i_55\ => \l_bot[6]_i_71_n_0\,
      p_0_in(2) => lr_reg_0_15_0_0_i_5_n_0,
      p_0_in(1) => lr_reg_0_15_0_0_i_4_n_0,
      p_0_in(0) => lr_reg_0_15_0_0_i_3_n_0,
      \rec_in_reg[6]\(0) => \rs_reg_n_0_[1]\,
      ui_in(7 downto 0) => ui_in(7 downto 0),
      uio_in(7 downto 0) => uio_in(7 downto 0),
      uo_out(7 downto 0) => uo_out(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_slice_1_0 is
  port (
    ui_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    uo_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    uio_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    uio_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    uio_oe : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ena : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_slice_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_slice_1_0 : entity is "system_slice_1_0,tt_um_stereo_slice,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_slice_1_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of system_slice_1_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_slice_1_0 : entity is "tt_um_stereo_slice,Vivado 2025.2";
end system_slice_1_0;

architecture STRUCTURE of system_slice_1_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_MODE of rst_n : signal is "slave";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  uio_oe(7) <= \<const0>\;
  uio_oe(6) <= \<const0>\;
  uio_oe(5) <= \<const0>\;
  uio_oe(4) <= \<const0>\;
  uio_oe(3) <= \<const0>\;
  uio_oe(2) <= \<const0>\;
  uio_oe(1) <= \<const0>\;
  uio_oe(0) <= \<const0>\;
  uio_out(7) <= \<const0>\;
  uio_out(6) <= \<const0>\;
  uio_out(5) <= \<const0>\;
  uio_out(4) <= \<const0>\;
  uio_out(3) <= \<const0>\;
  uio_out(2) <= \<const0>\;
  uio_out(1) <= \<const0>\;
  uio_out(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.system_slice_1_0_tt_um_stereo_slice
     port map (
      clk => clk,
      rst_n => rst_n,
      ui_in(7 downto 0) => ui_in(7 downto 0),
      uio_in(7 downto 0) => uio_in(7 downto 0),
      uo_out(7 downto 0) => uo_out(7 downto 0)
    );
end STRUCTURE;
