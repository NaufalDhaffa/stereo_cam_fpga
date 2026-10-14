-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Wed Oct 14 08:44:12 2026
-- Host        : LAPTOP-THBQET7J running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/stereo-depth-cam/hw/projects/stereo_1slice/stereo_1slice.gen/sources_1/bd/system/ip/system_frame_format_0_0/system_frame_format_0_0_sim_netlist.vhdl
-- Design      : system_frame_format_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_frame_format_0_0_mem_1r1w is
  port (
    \FSM_sequential_st_reg[0]\ : out STD_LOGIC;
    first_row_reg : out STD_LOGIC;
    first_row_reg_0 : out STD_LOGIC;
    lr : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \FSM_sequential_st_reg[0]_0\ : out STD_LOGIC;
    \FSM_sequential_st_reg[0]_1\ : out STD_LOGIC;
    \FSM_sequential_st_reg[0]_2\ : out STD_LOGIC;
    \FSM_sequential_st_reg[0]_3\ : out STD_LOGIC;
    clk : in STD_LOGIC;
    l_valid : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    ADDRBWRADDR : in STD_LOGIC_VECTOR ( 11 downto 0 );
    l_luma : in STD_LOGIC_VECTOR ( 7 downto 0 );
    l_first : in STD_LOGIC;
    \st__0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \n_reg[9]\ : in STD_LOGIC;
    \n_reg[1]\ : in STD_LOGIC;
    first_row : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \n_reg[1]_0\ : in STD_LOGIC;
    \lr_reg[0]\ : in STD_LOGIC;
    \lr_reg[0]_0\ : in STD_LOGIC;
    DOBDO : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \out_byte_reg[7]\ : in STD_LOGIC;
    \out_byte_reg[7]_0\ : in STD_LOGIC;
    phase : in STD_LOGIC;
    eof : in STD_LOGIC;
    \out_byte_reg[0]\ : in STD_LOGIC;
    \out_byte_reg[0]_0\ : in STD_LOGIC;
    \out_byte_reg[0]_1\ : in STD_LOGIC;
    \out_byte_reg[1]\ : in STD_LOGIC;
    \FSM_sequential_st_reg[0]_4\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_frame_format_0_0_mem_1r1w : entity is "mem_1r1w";
end system_frame_format_0_0_mem_1r1w;

architecture STRUCTURE of system_frame_format_0_0_mem_1r1w is
  signal \FSM_sequential_st[2]_i_2_n_0\ : STD_LOGIC;
  signal \^first_row_reg\ : STD_LOGIC;
  signal lq : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \lr[0]_i_3_n_0\ : STD_LOGIC;
  signal \out_byte[1]_i_2_n_0\ : STD_LOGIC;
  signal \out_byte[7]_i_4_n_0\ : STD_LOGIC;
  signal phase_i_2_n_0 : STD_LOGIC;
  signal NLW_mem_reg_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_mem_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_mem_reg_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_st[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_st[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \lr[0]_i_3\ : label is "soft_lutpair0";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg : label is "p1_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg : label is "p1_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg : label is 36864;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg : label is "system_frame_format_0_0/inst/u_uvc/u_left/mem_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of mem_reg : label is "auto";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of mem_reg : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg : label is 4095;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg : label is 8;
  attribute SOFT_HLUTNM of \n[9]_i_2\ : label is "soft_lutpair0";
begin
  first_row_reg <= \^first_row_reg\;
\FSM_sequential_st[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033003344764466"
    )
        port map (
      I0 => \FSM_sequential_st[2]_i_2_n_0\,
      I1 => \st__0\(0),
      I2 => phase,
      I3 => \st__0\(2),
      I4 => \st__0\(1),
      I5 => \FSM_sequential_st_reg[0]_4\,
      O => \FSM_sequential_st_reg[0]_1\
    );
\FSM_sequential_st[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"030C5708"
    )
        port map (
      I0 => \FSM_sequential_st[2]_i_2_n_0\,
      I1 => \st__0\(0),
      I2 => \st__0\(2),
      I3 => \st__0\(1),
      I4 => \FSM_sequential_st_reg[0]_4\,
      O => \FSM_sequential_st_reg[0]_3\
    );
\FSM_sequential_st[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C005850"
    )
        port map (
      I0 => \FSM_sequential_st[2]_i_2_n_0\,
      I1 => \st__0\(0),
      I2 => \st__0\(2),
      I3 => \st__0\(1),
      I4 => \FSM_sequential_st_reg[0]_4\,
      O => \FSM_sequential_st_reg[0]_2\
    );
\FSM_sequential_st[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF00FFFFDF00DF00"
    )
        port map (
      I0 => first_row,
      I1 => lq(8),
      I2 => CO(0),
      I3 => \n_reg[1]_0\,
      I4 => \n_reg[9]\,
      I5 => \n_reg[1]\,
      O => \FSM_sequential_st[2]_i_2_n_0\
    );
\lr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0030000400000000"
    )
        port map (
      I0 => \lr[0]_i_3_n_0\,
      I1 => \lr_reg[0]\,
      I2 => \lr_reg[0]_0\,
      I3 => \st__0\(2),
      I4 => \st__0\(1),
      I5 => \st__0\(0),
      O => lr(0)
    );
\lr[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => first_row,
      I1 => lq(8),
      I2 => CO(0),
      O => \lr[0]_i_3_n_0\
    );
mem_reg: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => \out\(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => ADDRBWRADDR(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => NLW_mem_reg_DBITERR_UNCONNECTED,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => l_luma(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000011111111",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => l_first,
      DIPBDIP(3 downto 0) => B"0001",
      DOADO(31 downto 0) => NLW_mem_reg_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 8) => NLW_mem_reg_DOBDO_UNCONNECTED(31 downto 8),
      DOBDO(7 downto 0) => lq(7 downto 0),
      DOPADOP(3 downto 0) => NLW_mem_reg_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 1) => NLW_mem_reg_DOPBDOP_UNCONNECTED(3 downto 1),
      DOPBDOP(0) => lq(8),
      ECCPARITY(7 downto 0) => NLW_mem_reg_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => l_valid,
      ENBWREN => '1',
      INJECTDBITERR => NLW_mem_reg_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_SBITERR_UNCONNECTED,
      WEA(3) => l_valid,
      WEA(2) => l_valid,
      WEA(1) => l_valid,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
\n[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8A808A8"
    )
        port map (
      I0 => \^first_row_reg\,
      I1 => \st__0\(0),
      I2 => \st__0\(1),
      I3 => \n_reg[9]\,
      I4 => \st__0\(2),
      O => \FSM_sequential_st_reg[0]\
    );
\n[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFFAAAA"
    )
        port map (
      I0 => \n_reg[1]\,
      I1 => first_row,
      I2 => lq(8),
      I3 => CO(0),
      I4 => \n_reg[1]_0\,
      O => \^first_row_reg\
    );
\out_byte[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \out_byte_reg[0]\,
      I1 => \out_byte_reg[0]_0\,
      I2 => lq(0),
      I3 => DOBDO(1),
      I4 => \out_byte_reg[0]_1\,
      O => D(0)
    );
\out_byte[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAFAAAB"
    )
        port map (
      I0 => \out_byte[1]_i_2_n_0\,
      I1 => phase,
      I2 => \st__0\(0),
      I3 => \st__0\(2),
      I4 => eof,
      O => D(1)
    );
\out_byte[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0C0C0C0FFC0EAEA"
    )
        port map (
      I0 => DOBDO(0),
      I1 => \out_byte_reg[0]_0\,
      I2 => lq(1),
      I3 => DOBDO(2),
      I4 => \out_byte_reg[1]\,
      I5 => \out_byte_reg[7]_0\,
      O => \out_byte[1]_i_2_n_0\
    );
\out_byte[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00A200A200A2"
    )
        port map (
      I0 => DOBDO(3),
      I1 => \lr_reg[0]\,
      I2 => \lr_reg[0]_0\,
      I3 => \out_byte_reg[7]_0\,
      I4 => lq(2),
      I5 => \out_byte_reg[0]_0\,
      O => D(2)
    );
\out_byte[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00A200A200A2"
    )
        port map (
      I0 => DOBDO(4),
      I1 => \lr_reg[0]\,
      I2 => \lr_reg[0]_0\,
      I3 => \out_byte_reg[7]_0\,
      I4 => lq(3),
      I5 => \out_byte_reg[0]_0\,
      O => D(3)
    );
\out_byte[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00A200A200A2"
    )
        port map (
      I0 => DOBDO(5),
      I1 => \lr_reg[0]\,
      I2 => \lr_reg[0]_0\,
      I3 => \out_byte_reg[7]_0\,
      I4 => lq(4),
      I5 => \out_byte_reg[0]_0\,
      O => D(4)
    );
\out_byte[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00A200A200A2"
    )
        port map (
      I0 => DOBDO(6),
      I1 => \lr_reg[0]\,
      I2 => \lr_reg[0]_0\,
      I3 => \out_byte_reg[7]_0\,
      I4 => lq(5),
      I5 => \out_byte_reg[0]_0\,
      O => D(5)
    );
\out_byte[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00A200A200A2"
    )
        port map (
      I0 => DOBDO(7),
      I1 => \lr_reg[0]\,
      I2 => \lr_reg[0]_0\,
      I3 => \out_byte_reg[7]_0\,
      I4 => lq(6),
      I5 => \out_byte_reg[0]_0\,
      O => D(6)
    );
\out_byte[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0A0FCE0A"
    )
        port map (
      I0 => DOBDO(8),
      I1 => \out_byte_reg[7]\,
      I2 => \out_byte_reg[7]_0\,
      I3 => \lr_reg[0]_0\,
      I4 => \lr_reg[0]\,
      I5 => \out_byte[7]_i_4_n_0\,
      O => D(7)
    );
\out_byte[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => lq(7),
      I1 => phase,
      I2 => \st__0\(0),
      I3 => \st__0\(2),
      O => \out_byte[7]_i_4_n_0\
    );
phase_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FB0C04"
    )
        port map (
      I0 => \st__0\(0),
      I1 => \st__0\(1),
      I2 => \st__0\(2),
      I3 => phase_i_2_n_0,
      I4 => phase,
      O => \FSM_sequential_st_reg[0]_0\
    );
phase_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404000404040404"
    )
        port map (
      I0 => \out_byte_reg[1]\,
      I1 => \out_byte_reg[7]\,
      I2 => \st__0\(1),
      I3 => CO(0),
      I4 => lq(8),
      I5 => first_row,
      O => phase_i_2_n_0
    );
\wait2[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00DF0000FF00"
    )
        port map (
      I0 => first_row,
      I1 => lq(8),
      I2 => CO(0),
      I3 => \st__0\(2),
      I4 => \st__0\(1),
      I5 => \st__0\(0),
      O => first_row_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_frame_format_0_0_uvc_lines is
  port (
    out_wr : out STD_LOGIC;
    out_last : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    l_valid : in STD_LOGIC;
    l_luma : in STD_LOGIC_VECTOR ( 7 downto 0 );
    l_first : in STD_LOGIC;
    px_valid : in STD_LOGIC;
    px_x : in STD_LOGIC_VECTOR ( 9 downto 0 );
    rst : in STD_LOGIC;
    out_room : in STD_LOGIC;
    px_disp : in STD_LOGIC_VECTOR ( 11 downto 0 );
    uvc : in STD_LOGIC;
    out_wr_0 : in STD_LOGIC;
    px_y : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_frame_format_0_0_uvc_lines : entity is "uvc_lines";
end system_frame_format_0_0_uvc_lines;

architecture STRUCTURE of system_frame_format_0_0_uvc_lines is
  signal \FSM_sequential_st[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_st[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_st[2]_i_5_n_0\ : STD_LOGIC;
  signal d10 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal dq : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal dr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dr[0]_i_1_n_0\ : STD_LOGIC;
  signal \dr[6]_i_1_n_0\ : STD_LOGIC;
  signal \dr[6]_i_2_n_0\ : STD_LOGIC;
  signal \dr[6]_i_4_n_0\ : STD_LOGIC;
  signal eof : STD_LOGIC;
  signal eof_i_1_n_0 : STD_LOGIC;
  signal eof_i_2_n_0 : STD_LOGIC;
  signal eof_i_3_n_0 : STD_LOGIC;
  signal fid : STD_LOGIC;
  signal fid_i_1_n_0 : STD_LOGIC;
  signal fid_i_2_n_0 : STD_LOGIC;
  signal first_row : STD_LOGIC;
  signal first_row_i_1_n_0 : STD_LOGIC;
  signal first_row_i_2_n_0 : STD_LOGIC;
  signal first_row_i_3_n_0 : STD_LOGIC;
  signal in13 : STD_LOGIC_VECTOR ( 9 downto 4 );
  signal in23 : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal lr : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \lr[0]_i_4_n_0\ : STD_LOGIC;
  signal lr_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \lr_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \lr_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \lr_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \lr_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \lr_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \lr_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \lr_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \lr_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \lr_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \lr_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \lr_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \lr_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \lr_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \lr_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \lr_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \lr_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \lr_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \lr_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \lr_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \lr_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \lr_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \lr_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \lr_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \lr_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \lr_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \lr_reg__0\ : STD_LOGIC_VECTOR ( 12 to 12 );
  signal \lw[0]_i_2_n_0\ : STD_LOGIC;
  signal lw_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \lw_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \lw_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \lw_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \lw_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \lw_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \lw_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \lw_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \lw_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \lw_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \lw_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \lw_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \lw_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \lw_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \lw_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \lw_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \lw_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \lw_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \lw_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \lw_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \lw_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \lw_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \lw_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \lw_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \lw_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \lw_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \lw_reg__0\ : STD_LOGIC_VECTOR ( 12 to 12 );
  signal \n[0]_i_1_n_0\ : STD_LOGIC;
  signal \n[1]_i_1_n_0\ : STD_LOGIC;
  signal \n[2]_i_1_n_0\ : STD_LOGIC;
  signal \n[3]_i_1_n_0\ : STD_LOGIC;
  signal \n[7]_i_2_n_0\ : STD_LOGIC;
  signal \n[9]_i_4_n_0\ : STD_LOGIC;
  signal \n[9]_i_5_n_0\ : STD_LOGIC;
  signal \n[9]_i_6_n_0\ : STD_LOGIC;
  signal \n[9]_i_7_n_0\ : STD_LOGIC;
  signal \n_reg_n_0_[0]\ : STD_LOGIC;
  signal \n_reg_n_0_[1]\ : STD_LOGIC;
  signal \n_reg_n_0_[2]\ : STD_LOGIC;
  signal \n_reg_n_0_[3]\ : STD_LOGIC;
  signal \n_reg_n_0_[4]\ : STD_LOGIC;
  signal \n_reg_n_0_[5]\ : STD_LOGIC;
  signal \n_reg_n_0_[6]\ : STD_LOGIC;
  signal \n_reg_n_0_[7]\ : STD_LOGIC;
  signal \n_reg_n_0_[8]\ : STD_LOGIC;
  signal \n_reg_n_0_[9]\ : STD_LOGIC;
  signal out_byte0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \out_byte[0]_i_2_n_0\ : STD_LOGIC;
  signal \out_byte[0]_i_3_n_0\ : STD_LOGIC;
  signal \out_byte[0]_i_4_n_0\ : STD_LOGIC;
  signal \out_byte[1]_i_3_n_0\ : STD_LOGIC;
  signal \out_byte[6]_i_2_n_0\ : STD_LOGIC;
  signal \out_byte[7]_i_1_n_0\ : STD_LOGIC;
  signal \out_byte[7]_i_3_n_0\ : STD_LOGIC;
  signal out_last_i_1_n_0 : STD_LOGIC;
  signal out_last_i_2_n_0 : STD_LOGIC;
  signal out_wr_i_1_n_0 : STD_LOGIC;
  signal phase : STD_LOGIC;
  signal send_i_1_n_0 : STD_LOGIC;
  signal send_i_2_n_0 : STD_LOGIC;
  signal send_i_3_n_0 : STD_LOGIC;
  signal send_reg_n_0 : STD_LOGIC;
  signal \st__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal u_last : STD_LOGIC;
  signal u_left_n_0 : STD_LOGIC;
  signal u_left_n_1 : STD_LOGIC;
  signal u_left_n_12 : STD_LOGIC;
  signal u_left_n_13 : STD_LOGIC;
  signal u_left_n_14 : STD_LOGIC;
  signal u_left_n_15 : STD_LOGIC;
  signal u_left_n_2 : STD_LOGIC;
  signal u_wr : STD_LOGIC;
  signal wait22 : STD_LOGIC;
  signal \wait22_carry__0_i_1_n_0\ : STD_LOGIC;
  signal wait22_carry_i_1_n_0 : STD_LOGIC;
  signal wait22_carry_i_2_n_0 : STD_LOGIC;
  signal wait22_carry_i_3_n_0 : STD_LOGIC;
  signal wait22_carry_i_4_n_0 : STD_LOGIC;
  signal wait22_carry_n_0 : STD_LOGIC;
  signal wait22_carry_n_1 : STD_LOGIC;
  signal wait22_carry_n_2 : STD_LOGIC;
  signal wait22_carry_n_3 : STD_LOGIC;
  signal \wait2[0]_i_1_n_0\ : STD_LOGIC;
  signal \wait2[1]_i_1_n_0\ : STD_LOGIC;
  signal \wait2[1]_i_3_n_0\ : STD_LOGIC;
  signal \wait2_reg_n_0_[0]\ : STD_LOGIC;
  signal \wait2_reg_n_0_[1]\ : STD_LOGIC;
  signal NLW_drow_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_drow_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 10 );
  signal NLW_drow_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_drow_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_lr_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_lr_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_lw_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_lw_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_wait22_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_wait22_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_wait22_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_st[2]_i_3\ : label is "soft_lutpair4";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_st_reg[0]\ : label is "S_IDLE:000,S_SYNC:001,S_HDR:010,S_LEFT:011,S_DEPTH:100,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_st_reg[1]\ : label is "S_IDLE:000,S_SYNC:001,S_HDR:010,S_LEFT:011,S_DEPTH:100,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_st_reg[2]\ : label is "S_IDLE:000,S_SYNC:001,S_HDR:010,S_LEFT:011,S_DEPTH:100,";
  attribute SOFT_HLUTNM of \dr[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \dr[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \dr[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \dr[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \dr[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \dr[6]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \dr[6]_i_4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \dr[7]_i_1\ : label is "soft_lutpair7";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of drow_reg : label is "p0_d10";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of drow_reg : label is "p0_d10";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of drow_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of drow_reg : label is 2560;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of drow_reg : label is "system_frame_format_0_0/inst/u_uvc/drow_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of drow_reg : label is "auto";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of drow_reg : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of drow_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of drow_reg : label is 1023;
  attribute ram_offset : integer;
  attribute ram_offset of drow_reg : label is 768;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of drow_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of drow_reg : label is 9;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \lr_reg[0]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \lr_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \lr_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \lr_reg[8]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \lw_reg[0]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \lw_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \lw_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \lw_reg[8]_i_1\ : label is 35;
  attribute SOFT_HLUTNM of \n[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \n[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \n[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \n[9]_i_5\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \n[9]_i_6\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \n[9]_i_7\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \out_byte[0]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \out_byte[0]_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \out_byte[1]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \out_byte[6]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \out_byte[7]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of out_last_INST_0 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of out_last_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of out_wr_INST_0 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \wait2[1]_i_3\ : label is "soft_lutpair2";
begin
\FSM_sequential_st[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E1000000"
    )
        port map (
      I0 => \st__0\(1),
      I1 => \st__0\(0),
      I2 => \st__0\(2),
      I3 => \FSM_sequential_st[2]_i_4_n_0\,
      I4 => \FSM_sequential_st[2]_i_5_n_0\,
      O => \FSM_sequential_st[2]_i_3_n_0\
    );
\FSM_sequential_st[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => px_x(0),
      I1 => px_x(1),
      I2 => px_x(2),
      I3 => px_x(4),
      I4 => px_x(3),
      O => \FSM_sequential_st[2]_i_4_n_0\
    );
\FSM_sequential_st[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => px_x(7),
      I1 => px_x(8),
      I2 => px_x(6),
      I3 => px_x(5),
      I4 => px_x(9),
      I5 => px_valid,
      O => \FSM_sequential_st[2]_i_5_n_0\
    );
\FSM_sequential_st_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => u_left_n_13,
      Q => \st__0\(0),
      R => rst
    );
\FSM_sequential_st_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => u_left_n_15,
      Q => \st__0\(1),
      R => rst
    );
\FSM_sequential_st_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => u_left_n_14,
      Q => \st__0\(2),
      R => rst
    );
\dr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dr(0),
      O => \dr[0]_i_1_n_0\
    );
\dr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dr(0),
      I1 => dr(1),
      O => in23(1)
    );
\dr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => dr(1),
      I1 => dr(0),
      I2 => dr(2),
      O => in23(2)
    );
\dr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => dr(2),
      I1 => dr(0),
      I2 => dr(1),
      I3 => dr(3),
      O => in23(3)
    );
\dr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => dr(3),
      I1 => dr(1),
      I2 => dr(0),
      I3 => dr(2),
      I4 => dr(4),
      O => in23(4)
    );
\dr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => dr(4),
      I1 => dr(2),
      I2 => dr(0),
      I3 => dr(1),
      I4 => dr(3),
      I5 => dr(5),
      O => in23(5)
    );
\dr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => \n[9]_i_4_n_0\,
      I1 => \st__0\(2),
      I2 => \wait2_reg_n_0_[1]\,
      I3 => \wait2_reg_n_0_[0]\,
      I4 => \st__0\(1),
      I5 => \st__0\(0),
      O => \dr[6]_i_1_n_0\
    );
\dr[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10000000000000C0"
    )
        port map (
      I0 => \n[9]_i_4_n_0\,
      I1 => \st__0\(2),
      I2 => \wait2_reg_n_0_[1]\,
      I3 => \wait2_reg_n_0_[0]\,
      I4 => \st__0\(1),
      I5 => \st__0\(0),
      O => \dr[6]_i_2_n_0\
    );
\dr[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \dr[6]_i_4_n_0\,
      I1 => dr(4),
      I2 => dr(5),
      I3 => dr(6),
      O => in23(6)
    );
\dr[6]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => dr(2),
      I1 => dr(0),
      I2 => dr(1),
      I3 => dr(3),
      O => \dr[6]_i_4_n_0\
    );
\dr[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \dr[6]_i_4_n_0\,
      I1 => dr(6),
      I2 => dr(5),
      I3 => dr(4),
      I4 => dr(7),
      O => in23(7)
    );
\dr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dr[6]_i_2_n_0\,
      D => \dr[0]_i_1_n_0\,
      Q => dr(0),
      R => \dr[6]_i_1_n_0\
    );
\dr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dr[6]_i_2_n_0\,
      D => in23(1),
      Q => dr(1),
      R => \dr[6]_i_1_n_0\
    );
\dr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dr[6]_i_2_n_0\,
      D => in23(2),
      Q => dr(2),
      R => \dr[6]_i_1_n_0\
    );
\dr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dr[6]_i_2_n_0\,
      D => in23(3),
      Q => dr(3),
      R => \dr[6]_i_1_n_0\
    );
\dr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dr[6]_i_2_n_0\,
      D => in23(4),
      Q => dr(4),
      R => \dr[6]_i_1_n_0\
    );
\dr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dr[6]_i_2_n_0\,
      D => in23(5),
      Q => dr(5),
      R => \dr[6]_i_1_n_0\
    );
\dr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dr[6]_i_2_n_0\,
      D => in23(6),
      Q => dr(6),
      R => \dr[6]_i_1_n_0\
    );
\dr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dr[6]_i_2_n_0\,
      D => in23(7),
      Q => dr(7),
      R => \dr[6]_i_1_n_0\
    );
drow_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 12) => B"11",
      ADDRARDADDR(11 downto 4) => px_x(7 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13 downto 12) => B"11",
      ADDRBWRADDR(11 downto 4) => dr(7 downto 0),
      ADDRBWRADDR(3 downto 0) => B"1111",
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DIADI(15 downto 10) => B"000000",
      DIADI(9 downto 0) => d10(9 downto 0),
      DIBDI(15 downto 0) => B"0000001111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => NLW_drow_reg_DOADO_UNCONNECTED(15 downto 0),
      DOBDO(15 downto 10) => NLW_drow_reg_DOBDO_UNCONNECTED(15 downto 10),
      DOBDO(9 downto 0) => dq(9 downto 0),
      DOPADOP(1 downto 0) => NLW_drow_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_drow_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => px_valid,
      ENBWREN => '1',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"11",
      WEBWE(3 downto 0) => B"0000"
    );
drow_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => px_disp(11),
      I1 => px_disp(10),
      I2 => px_disp(9),
      O => d10(9)
    );
drow_reg_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => px_disp(11),
      I1 => px_disp(10),
      I2 => px_disp(0),
      O => d10(0)
    );
drow_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => px_disp(11),
      I1 => px_disp(10),
      I2 => px_disp(8),
      O => d10(8)
    );
drow_reg_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => px_disp(11),
      I1 => px_disp(10),
      I2 => px_disp(7),
      O => d10(7)
    );
drow_reg_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => px_disp(11),
      I1 => px_disp(10),
      I2 => px_disp(6),
      O => d10(6)
    );
drow_reg_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => px_disp(11),
      I1 => px_disp(10),
      I2 => px_disp(5),
      O => d10(5)
    );
drow_reg_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => px_disp(11),
      I1 => px_disp(10),
      I2 => px_disp(4),
      O => d10(4)
    );
drow_reg_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => px_disp(11),
      I1 => px_disp(10),
      I2 => px_disp(3),
      O => d10(3)
    );
drow_reg_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => px_disp(11),
      I1 => px_disp(10),
      I2 => px_disp(2),
      O => d10(2)
    );
drow_reg_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => px_disp(11),
      I1 => px_disp(10),
      I2 => px_disp(1),
      O => d10(1)
    );
eof_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF10000000"
    )
        port map (
      I0 => \st__0\(0),
      I1 => \st__0\(1),
      I2 => send_i_2_n_0,
      I3 => send_i_3_n_0,
      I4 => eof_i_2_n_0,
      I5 => eof,
      O => eof_i_1_n_0
    );
eof_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => px_y(6),
      I1 => px_y(5),
      I2 => px_y(3),
      I3 => px_y(9),
      I4 => px_y(8),
      I5 => eof_i_3_n_0,
      O => eof_i_2_n_0
    );
eof_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7FFFFF"
    )
        port map (
      I0 => px_y(0),
      I1 => px_y(1),
      I2 => px_y(4),
      I3 => px_y(2),
      I4 => px_y(7),
      O => eof_i_3_n_0
    );
eof_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => eof_i_1_n_0,
      Q => eof,
      R => '0'
    );
fid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00004000"
    )
        port map (
      I0 => \n[9]_i_4_n_0\,
      I1 => fid_i_2_n_0,
      I2 => eof,
      I3 => \st__0\(2),
      I4 => out_last_i_2_n_0,
      I5 => fid,
      O => fid_i_1_n_0
    );
fid_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \wait2_reg_n_0_[0]\,
      I1 => \wait2_reg_n_0_[1]\,
      O => fid_i_2_n_0
    );
fid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => fid_i_1_n_0,
      Q => fid,
      R => rst
    );
first_row_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF10000000"
    )
        port map (
      I0 => \st__0\(0),
      I1 => \st__0\(1),
      I2 => send_i_2_n_0,
      I3 => send_i_3_n_0,
      I4 => first_row_i_2_n_0,
      I5 => first_row,
      O => first_row_i_1_n_0
    );
first_row_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => px_y(7),
      I1 => px_y(6),
      I2 => px_y(5),
      I3 => px_y(9),
      I4 => px_y(8),
      I5 => first_row_i_3_n_0,
      O => first_row_i_2_n_0
    );
first_row_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => px_y(2),
      I1 => px_y(0),
      I2 => px_y(1),
      I3 => px_y(4),
      I4 => px_y(3),
      O => first_row_i_3_n_0
    );
first_row_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => first_row_i_1_n_0,
      Q => first_row,
      R => '0'
    );
\lr[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => lr_reg(0),
      O => \lr[0]_i_4_n_0\
    );
\lr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => lr(0),
      D => \lr_reg[0]_i_2_n_7\,
      Q => lr_reg(0),
      R => rst
    );
\lr_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \lr_reg[0]_i_2_n_0\,
      CO(2) => \lr_reg[0]_i_2_n_1\,
      CO(1) => \lr_reg[0]_i_2_n_2\,
      CO(0) => \lr_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \lr_reg[0]_i_2_n_4\,
      O(2) => \lr_reg[0]_i_2_n_5\,
      O(1) => \lr_reg[0]_i_2_n_6\,
      O(0) => \lr_reg[0]_i_2_n_7\,
      S(3 downto 1) => lr_reg(3 downto 1),
      S(0) => \lr[0]_i_4_n_0\
    );
\lr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => lr(0),
      D => \lr_reg[8]_i_1_n_5\,
      Q => lr_reg(10),
      R => rst
    );
\lr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => lr(0),
      D => \lr_reg[8]_i_1_n_4\,
      Q => lr_reg(11),
      R => rst
    );
\lr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => lr(0),
      D => \lr_reg[12]_i_1_n_7\,
      Q => \lr_reg__0\(12),
      R => rst
    );
\lr_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \lr_reg[8]_i_1_n_0\,
      CO(3 downto 0) => \NLW_lr_reg[12]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_lr_reg[12]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \lr_reg[12]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \lr_reg__0\(12)
    );
\lr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => lr(0),
      D => \lr_reg[0]_i_2_n_6\,
      Q => lr_reg(1),
      R => rst
    );
\lr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => lr(0),
      D => \lr_reg[0]_i_2_n_5\,
      Q => lr_reg(2),
      R => rst
    );
\lr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => lr(0),
      D => \lr_reg[0]_i_2_n_4\,
      Q => lr_reg(3),
      R => rst
    );
\lr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => lr(0),
      D => \lr_reg[4]_i_1_n_7\,
      Q => lr_reg(4),
      R => rst
    );
\lr_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \lr_reg[0]_i_2_n_0\,
      CO(3) => \lr_reg[4]_i_1_n_0\,
      CO(2) => \lr_reg[4]_i_1_n_1\,
      CO(1) => \lr_reg[4]_i_1_n_2\,
      CO(0) => \lr_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \lr_reg[4]_i_1_n_4\,
      O(2) => \lr_reg[4]_i_1_n_5\,
      O(1) => \lr_reg[4]_i_1_n_6\,
      O(0) => \lr_reg[4]_i_1_n_7\,
      S(3 downto 0) => lr_reg(7 downto 4)
    );
\lr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => lr(0),
      D => \lr_reg[4]_i_1_n_6\,
      Q => lr_reg(5),
      R => rst
    );
\lr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => lr(0),
      D => \lr_reg[4]_i_1_n_5\,
      Q => lr_reg(6),
      R => rst
    );
\lr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => lr(0),
      D => \lr_reg[4]_i_1_n_4\,
      Q => lr_reg(7),
      R => rst
    );
\lr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => lr(0),
      D => \lr_reg[8]_i_1_n_7\,
      Q => lr_reg(8),
      R => rst
    );
\lr_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \lr_reg[4]_i_1_n_0\,
      CO(3) => \lr_reg[8]_i_1_n_0\,
      CO(2) => \lr_reg[8]_i_1_n_1\,
      CO(1) => \lr_reg[8]_i_1_n_2\,
      CO(0) => \lr_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \lr_reg[8]_i_1_n_4\,
      O(2) => \lr_reg[8]_i_1_n_5\,
      O(1) => \lr_reg[8]_i_1_n_6\,
      O(0) => \lr_reg[8]_i_1_n_7\,
      S(3 downto 0) => lr_reg(11 downto 8)
    );
\lr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => lr(0),
      D => \lr_reg[8]_i_1_n_6\,
      Q => lr_reg(9),
      R => rst
    );
\lw[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => lw_reg(0),
      O => \lw[0]_i_2_n_0\
    );
\lw_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => l_valid,
      D => \lw_reg[0]_i_1_n_7\,
      Q => lw_reg(0),
      R => rst
    );
\lw_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \lw_reg[0]_i_1_n_0\,
      CO(2) => \lw_reg[0]_i_1_n_1\,
      CO(1) => \lw_reg[0]_i_1_n_2\,
      CO(0) => \lw_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \lw_reg[0]_i_1_n_4\,
      O(2) => \lw_reg[0]_i_1_n_5\,
      O(1) => \lw_reg[0]_i_1_n_6\,
      O(0) => \lw_reg[0]_i_1_n_7\,
      S(3 downto 1) => lw_reg(3 downto 1),
      S(0) => \lw[0]_i_2_n_0\
    );
\lw_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => l_valid,
      D => \lw_reg[8]_i_1_n_5\,
      Q => lw_reg(10),
      R => rst
    );
\lw_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => l_valid,
      D => \lw_reg[8]_i_1_n_4\,
      Q => lw_reg(11),
      R => rst
    );
\lw_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => l_valid,
      D => \lw_reg[12]_i_1_n_7\,
      Q => \lw_reg__0\(12),
      R => rst
    );
\lw_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \lw_reg[8]_i_1_n_0\,
      CO(3 downto 0) => \NLW_lw_reg[12]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_lw_reg[12]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \lw_reg[12]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \lw_reg__0\(12)
    );
\lw_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => l_valid,
      D => \lw_reg[0]_i_1_n_6\,
      Q => lw_reg(1),
      R => rst
    );
\lw_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => l_valid,
      D => \lw_reg[0]_i_1_n_5\,
      Q => lw_reg(2),
      R => rst
    );
\lw_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => l_valid,
      D => \lw_reg[0]_i_1_n_4\,
      Q => lw_reg(3),
      R => rst
    );
\lw_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => l_valid,
      D => \lw_reg[4]_i_1_n_7\,
      Q => lw_reg(4),
      R => rst
    );
\lw_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \lw_reg[0]_i_1_n_0\,
      CO(3) => \lw_reg[4]_i_1_n_0\,
      CO(2) => \lw_reg[4]_i_1_n_1\,
      CO(1) => \lw_reg[4]_i_1_n_2\,
      CO(0) => \lw_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \lw_reg[4]_i_1_n_4\,
      O(2) => \lw_reg[4]_i_1_n_5\,
      O(1) => \lw_reg[4]_i_1_n_6\,
      O(0) => \lw_reg[4]_i_1_n_7\,
      S(3 downto 0) => lw_reg(7 downto 4)
    );
\lw_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => l_valid,
      D => \lw_reg[4]_i_1_n_6\,
      Q => lw_reg(5),
      R => rst
    );
\lw_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => l_valid,
      D => \lw_reg[4]_i_1_n_5\,
      Q => lw_reg(6),
      R => rst
    );
\lw_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => l_valid,
      D => \lw_reg[4]_i_1_n_4\,
      Q => lw_reg(7),
      R => rst
    );
\lw_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => l_valid,
      D => \lw_reg[8]_i_1_n_7\,
      Q => lw_reg(8),
      R => rst
    );
\lw_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \lw_reg[4]_i_1_n_0\,
      CO(3) => \lw_reg[8]_i_1_n_0\,
      CO(2) => \lw_reg[8]_i_1_n_1\,
      CO(1) => \lw_reg[8]_i_1_n_2\,
      CO(0) => \lw_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \lw_reg[8]_i_1_n_4\,
      O(2) => \lw_reg[8]_i_1_n_5\,
      O(1) => \lw_reg[8]_i_1_n_6\,
      O(0) => \lw_reg[8]_i_1_n_7\,
      S(3 downto 0) => lw_reg(11 downto 8)
    );
\lw_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => l_valid,
      D => \lw_reg[8]_i_1_n_6\,
      Q => lw_reg(9),
      R => rst
    );
\n[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF1D00"
    )
        port map (
      I0 => \st__0\(0),
      I1 => \st__0\(1),
      I2 => \st__0\(2),
      I3 => u_left_n_1,
      I4 => \n_reg_n_0_[0]\,
      O => \n[0]_i_1_n_0\
    );
\n[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000011D111D10000"
    )
        port map (
      I0 => \st__0\(0),
      I1 => \st__0\(1),
      I2 => \n[9]_i_4_n_0\,
      I3 => \st__0\(2),
      I4 => \n_reg_n_0_[0]\,
      I5 => \n_reg_n_0_[1]\,
      O => \n[1]_i_1_n_0\
    );
\n[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \n_reg_n_0_[1]\,
      I1 => \n_reg_n_0_[0]\,
      I2 => \n_reg_n_0_[2]\,
      O => \n[2]_i_1_n_0\
    );
\n[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \n_reg_n_0_[2]\,
      I1 => \n_reg_n_0_[0]\,
      I2 => \n_reg_n_0_[1]\,
      I3 => \n_reg_n_0_[3]\,
      O => \n[3]_i_1_n_0\
    );
\n[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \n_reg_n_0_[1]\,
      I1 => \n_reg_n_0_[0]\,
      I2 => \n_reg_n_0_[2]\,
      I3 => \n_reg_n_0_[3]\,
      I4 => \n_reg_n_0_[4]\,
      O => in13(4)
    );
\n[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \n_reg_n_0_[1]\,
      I1 => \n_reg_n_0_[0]\,
      I2 => \n_reg_n_0_[2]\,
      I3 => \n_reg_n_0_[3]\,
      I4 => \n_reg_n_0_[4]\,
      I5 => \n_reg_n_0_[5]\,
      O => in13(5)
    );
\n[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF4000"
    )
        port map (
      I0 => \n[7]_i_2_n_0\,
      I1 => \n_reg_n_0_[4]\,
      I2 => \n_reg_n_0_[3]\,
      I3 => \n_reg_n_0_[5]\,
      I4 => \n_reg_n_0_[6]\,
      O => in13(6)
    );
\n[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF40000000"
    )
        port map (
      I0 => \n[7]_i_2_n_0\,
      I1 => \n_reg_n_0_[6]\,
      I2 => \n_reg_n_0_[4]\,
      I3 => \n_reg_n_0_[3]\,
      I4 => \n_reg_n_0_[5]\,
      I5 => \n_reg_n_0_[7]\,
      O => in13(7)
    );
\n[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \n_reg_n_0_[1]\,
      I1 => \n_reg_n_0_[0]\,
      I2 => \n_reg_n_0_[2]\,
      O => \n[7]_i_2_n_0\
    );
\n[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF4000"
    )
        port map (
      I0 => \n[9]_i_7_n_0\,
      I1 => \n_reg_n_0_[4]\,
      I2 => \n_reg_n_0_[3]\,
      I3 => \n_reg_n_0_[5]\,
      I4 => \n_reg_n_0_[8]\,
      O => in13(8)
    );
\n[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF40000000"
    )
        port map (
      I0 => \n[9]_i_7_n_0\,
      I1 => \n_reg_n_0_[5]\,
      I2 => \n_reg_n_0_[3]\,
      I3 => \n_reg_n_0_[4]\,
      I4 => \n_reg_n_0_[8]\,
      I5 => \n_reg_n_0_[9]\,
      O => in13(9)
    );
\n[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \n_reg_n_0_[4]\,
      I1 => \n_reg_n_0_[5]\,
      I2 => \n_reg_n_0_[9]\,
      I3 => \n_reg_n_0_[8]\,
      I4 => \n_reg_n_0_[3]\,
      I5 => \n[9]_i_7_n_0\,
      O => \n[9]_i_4_n_0\
    );
\n[9]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000080"
    )
        port map (
      I0 => \wait2_reg_n_0_[1]\,
      I1 => \wait2_reg_n_0_[0]\,
      I2 => \st__0\(2),
      I3 => \st__0\(1),
      I4 => \st__0\(0),
      O => \n[9]_i_5_n_0\
    );
\n[9]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => \st__0\(1),
      I1 => \st__0\(0),
      I2 => \st__0\(2),
      I3 => \wait2_reg_n_0_[1]\,
      I4 => \wait2_reg_n_0_[0]\,
      O => \n[9]_i_6_n_0\
    );
\n[9]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \n_reg_n_0_[6]\,
      I1 => \n_reg_n_0_[1]\,
      I2 => \n_reg_n_0_[0]\,
      I3 => \n_reg_n_0_[2]\,
      I4 => \n_reg_n_0_[7]\,
      O => \n[9]_i_7_n_0\
    );
\n_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \n[0]_i_1_n_0\,
      Q => \n_reg_n_0_[0]\,
      R => '0'
    );
\n_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => u_left_n_1,
      D => \n[1]_i_1_n_0\,
      Q => \n_reg_n_0_[1]\,
      R => '0'
    );
\n_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => u_left_n_1,
      D => \n[2]_i_1_n_0\,
      Q => \n_reg_n_0_[2]\,
      R => u_left_n_0
    );
\n_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => u_left_n_1,
      D => \n[3]_i_1_n_0\,
      Q => \n_reg_n_0_[3]\,
      R => u_left_n_0
    );
\n_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => u_left_n_1,
      D => in13(4),
      Q => \n_reg_n_0_[4]\,
      R => u_left_n_0
    );
\n_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => u_left_n_1,
      D => in13(5),
      Q => \n_reg_n_0_[5]\,
      R => u_left_n_0
    );
\n_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => u_left_n_1,
      D => in13(6),
      Q => \n_reg_n_0_[6]\,
      R => u_left_n_0
    );
\n_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => u_left_n_1,
      D => in13(7),
      Q => \n_reg_n_0_[7]\,
      R => u_left_n_0
    );
\n_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => u_left_n_1,
      D => in13(8),
      Q => \n_reg_n_0_[8]\,
      R => u_left_n_0
    );
\n_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => u_left_n_1,
      D => in13(9),
      Q => \n_reg_n_0_[9]\,
      R => u_left_n_0
    );
\out_byte[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888F888888888888"
    )
        port map (
      I0 => dq(0),
      I1 => \out_byte[0]_i_4_n_0\,
      I2 => \st__0\(0),
      I3 => \st__0\(2),
      I4 => fid,
      I5 => phase,
      O => \out_byte[0]_i_2_n_0\
    );
\out_byte[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000D"
    )
        port map (
      I0 => \wait2_reg_n_0_[1]\,
      I1 => \wait2_reg_n_0_[0]\,
      I2 => \st__0\(1),
      I3 => \st__0\(0),
      O => \out_byte[0]_i_3_n_0\
    );
\out_byte[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \wait2_reg_n_0_[1]\,
      I1 => \wait2_reg_n_0_[0]\,
      I2 => \st__0\(1),
      I3 => \st__0\(0),
      O => \out_byte[0]_i_4_n_0\
    );
\out_byte[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \wait2_reg_n_0_[0]\,
      I1 => \wait2_reg_n_0_[1]\,
      O => \out_byte[1]_i_3_n_0\
    );
\out_byte[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0D00"
    )
        port map (
      I0 => \wait2_reg_n_0_[0]\,
      I1 => \wait2_reg_n_0_[1]\,
      I2 => \st__0\(2),
      I3 => \st__0\(0),
      O => \out_byte[6]_i_2_n_0\
    );
\out_byte[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"001C0C2C"
    )
        port map (
      I0 => \wait2_reg_n_0_[0]\,
      I1 => \st__0\(1),
      I2 => \st__0\(2),
      I3 => \st__0\(0),
      I4 => \wait2_reg_n_0_[1]\,
      O => \out_byte[7]_i_1_n_0\
    );
\out_byte[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \st__0\(0),
      I1 => \st__0\(2),
      O => \out_byte[7]_i_3_n_0\
    );
\out_byte_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \out_byte[7]_i_1_n_0\,
      D => out_byte0_in(0),
      Q => Q(0),
      R => '0'
    );
\out_byte_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \out_byte[7]_i_1_n_0\,
      D => out_byte0_in(1),
      Q => Q(1),
      R => '0'
    );
\out_byte_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \out_byte[7]_i_1_n_0\,
      D => out_byte0_in(2),
      Q => Q(2),
      R => '0'
    );
\out_byte_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \out_byte[7]_i_1_n_0\,
      D => out_byte0_in(3),
      Q => Q(3),
      R => '0'
    );
\out_byte_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \out_byte[7]_i_1_n_0\,
      D => out_byte0_in(4),
      Q => Q(4),
      R => '0'
    );
\out_byte_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \out_byte[7]_i_1_n_0\,
      D => out_byte0_in(5),
      Q => Q(5),
      R => '0'
    );
\out_byte_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \out_byte[7]_i_1_n_0\,
      D => out_byte0_in(6),
      Q => Q(6),
      R => '0'
    );
\out_byte_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \out_byte[7]_i_1_n_0\,
      D => out_byte0_in(7),
      Q => Q(7),
      R => '0'
    );
out_last_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => uvc,
      I1 => u_last,
      O => out_last
    );
out_last_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000000"
    )
        port map (
      I0 => \wait2_reg_n_0_[1]\,
      I1 => \wait2_reg_n_0_[0]\,
      I2 => out_last_i_2_n_0,
      I3 => \st__0\(2),
      I4 => send_reg_n_0,
      I5 => \n[9]_i_4_n_0\,
      O => out_last_i_1_n_0
    );
out_last_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \st__0\(0),
      I1 => \st__0\(1),
      O => out_last_i_2_n_0
    );
out_last_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => out_last_i_1_n_0,
      Q => u_last,
      R => rst
    );
out_wr_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => u_wr,
      I1 => uvc,
      I2 => out_wr_0,
      O => out_wr
    );
out_wr_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0710072000000000"
    )
        port map (
      I0 => \wait2_reg_n_0_[1]\,
      I1 => \st__0\(0),
      I2 => \st__0\(2),
      I3 => \st__0\(1),
      I4 => \wait2_reg_n_0_[0]\,
      I5 => send_reg_n_0,
      O => out_wr_i_1_n_0
    );
out_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => out_wr_i_1_n_0,
      Q => u_wr,
      R => rst
    );
phase_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => u_left_n_12,
      Q => phase,
      R => '0'
    );
send_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF10000000"
    )
        port map (
      I0 => \st__0\(0),
      I1 => \st__0\(1),
      I2 => send_i_2_n_0,
      I3 => send_i_3_n_0,
      I4 => out_room,
      I5 => send_reg_n_0,
      O => send_i_1_n_0
    );
send_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => px_x(8),
      I1 => px_x(9),
      I2 => px_x(6),
      I3 => px_x(7),
      I4 => \st__0\(2),
      I5 => px_valid,
      O => send_i_2_n_0
    );
send_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => px_x(2),
      I1 => px_x(3),
      I2 => px_x(0),
      I3 => px_x(1),
      I4 => px_x(5),
      I5 => px_x(4),
      O => send_i_3_n_0
    );
send_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => send_i_1_n_0,
      Q => send_reg_n_0,
      R => '0'
    );
u_left: entity work.system_frame_format_0_0_mem_1r1w
     port map (
      ADDRBWRADDR(11 downto 0) => lr_reg(11 downto 0),
      CO(0) => wait22,
      D(7 downto 0) => out_byte0_in(7 downto 0),
      DOBDO(8 downto 0) => dq(9 downto 1),
      \FSM_sequential_st_reg[0]\ => u_left_n_0,
      \FSM_sequential_st_reg[0]_0\ => u_left_n_12,
      \FSM_sequential_st_reg[0]_1\ => u_left_n_13,
      \FSM_sequential_st_reg[0]_2\ => u_left_n_14,
      \FSM_sequential_st_reg[0]_3\ => u_left_n_15,
      \FSM_sequential_st_reg[0]_4\ => \FSM_sequential_st[2]_i_3_n_0\,
      clk => clk,
      eof => eof,
      first_row => first_row,
      first_row_reg => u_left_n_1,
      first_row_reg_0 => u_left_n_2,
      l_first => l_first,
      l_luma(7 downto 0) => l_luma(7 downto 0),
      l_valid => l_valid,
      lr(0) => lr(0),
      \lr_reg[0]\ => \wait2_reg_n_0_[1]\,
      \lr_reg[0]_0\ => \wait2_reg_n_0_[0]\,
      \n_reg[1]\ => \n[9]_i_5_n_0\,
      \n_reg[1]_0\ => \n[9]_i_6_n_0\,
      \n_reg[9]\ => \n[9]_i_4_n_0\,
      \out\(11 downto 0) => lw_reg(11 downto 0),
      \out_byte_reg[0]\ => \out_byte[0]_i_2_n_0\,
      \out_byte_reg[0]_0\ => \out_byte[6]_i_2_n_0\,
      \out_byte_reg[0]_1\ => \out_byte[0]_i_3_n_0\,
      \out_byte_reg[1]\ => \out_byte[1]_i_3_n_0\,
      \out_byte_reg[7]\ => \out_byte[7]_i_3_n_0\,
      \out_byte_reg[7]_0\ => out_last_i_2_n_0,
      phase => phase,
      \st__0\(2 downto 0) => \st__0\(2 downto 0)
    );
wait22_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => wait22_carry_n_0,
      CO(2) => wait22_carry_n_1,
      CO(1) => wait22_carry_n_2,
      CO(0) => wait22_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => NLW_wait22_carry_O_UNCONNECTED(3 downto 0),
      S(3) => wait22_carry_i_1_n_0,
      S(2) => wait22_carry_i_2_n_0,
      S(1) => wait22_carry_i_3_n_0,
      S(0) => wait22_carry_i_4_n_0
    );
\wait22_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => wait22_carry_n_0,
      CO(3 downto 1) => \NLW_wait22_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => wait22,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3 downto 0) => \NLW_wait22_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \wait22_carry__0_i_1_n_0\
    );
\wait22_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \lw_reg__0\(12),
      I1 => \lr_reg__0\(12),
      O => \wait22_carry__0_i_1_n_0\
    );
wait22_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => lw_reg(11),
      I1 => lr_reg(11),
      I2 => lw_reg(10),
      I3 => lr_reg(10),
      I4 => lr_reg(9),
      I5 => lw_reg(9),
      O => wait22_carry_i_1_n_0
    );
wait22_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => lw_reg(8),
      I1 => lr_reg(8),
      I2 => lw_reg(7),
      I3 => lr_reg(7),
      I4 => lr_reg(6),
      I5 => lw_reg(6),
      O => wait22_carry_i_2_n_0
    );
wait22_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => lw_reg(5),
      I1 => lr_reg(5),
      I2 => lw_reg(4),
      I3 => lr_reg(4),
      I4 => lr_reg(3),
      I5 => lw_reg(3),
      O => wait22_carry_i_3_n_0
    );
wait22_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => lw_reg(2),
      I1 => lr_reg(2),
      I2 => lw_reg(1),
      I3 => lr_reg(1),
      I4 => lr_reg(0),
      I5 => lw_reg(0),
      O => wait22_carry_i_4_n_0
    );
\wait2[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFAAAE0000"
    )
        port map (
      I0 => u_left_n_2,
      I1 => \st__0\(0),
      I2 => \st__0\(2),
      I3 => \wait2_reg_n_0_[1]\,
      I4 => \wait2[1]_i_3_n_0\,
      I5 => \wait2_reg_n_0_[0]\,
      O => \wait2[0]_i_1_n_0\
    );
\wait2[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AAFFFFAE000000"
    )
        port map (
      I0 => u_left_n_2,
      I1 => \st__0\(0),
      I2 => \st__0\(2),
      I3 => \wait2_reg_n_0_[0]\,
      I4 => \wait2[1]_i_3_n_0\,
      I5 => \wait2_reg_n_0_[1]\,
      O => \wait2[1]_i_1_n_0\
    );
\wait2[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF363636"
    )
        port map (
      I0 => \st__0\(1),
      I1 => \st__0\(2),
      I2 => \st__0\(0),
      I3 => send_i_2_n_0,
      I4 => send_i_3_n_0,
      O => \wait2[1]_i_3_n_0\
    );
\wait2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \wait2[0]_i_1_n_0\,
      Q => \wait2_reg_n_0_[0]\,
      R => '0'
    );
\wait2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \wait2[1]_i_1_n_0\,
      Q => \wait2_reg_n_0_[1]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_frame_format_0_0_frame_format is
  port (
    out_byte : out STD_LOGIC_VECTOR ( 7 downto 0 );
    out_wr : out STD_LOGIC;
    out_last : out STD_LOGIC;
    out_room : in STD_LOGIC;
    clk : in STD_LOGIC;
    l_valid : in STD_LOGIC;
    l_luma : in STD_LOGIC_VECTOR ( 7 downto 0 );
    l_first : in STD_LOGIC;
    px_valid : in STD_LOGIC;
    px_x : in STD_LOGIC_VECTOR ( 9 downto 0 );
    rst : in STD_LOGIC;
    start_us : in STD_LOGIC_VECTOR ( 31 downto 0 );
    hdr_start : in STD_LOGIC;
    px_disp : in STD_LOGIC_VECTOR ( 11 downto 0 );
    uvc : in STD_LOGIC;
    px_y : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_frame_format_0_0_frame_format : entity is "frame_format";
end system_frame_format_0_0_frame_format;

architecture STRUCTURE of system_frame_format_0_0_frame_format is
  signal data1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal frame_no : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \frame_no[0]_i_3_n_0\ : STD_LOGIC;
  signal \frame_no_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \frame_no_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \frame_no_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \frame_no_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \frame_no_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \frame_no_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \frame_no_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \frame_no_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \frame_no_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \frame_no_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \frame_no_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \frame_no_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \frame_no_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \frame_no_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \frame_no_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \frame_no_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \frame_no_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \frame_no_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \frame_no_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \frame_no_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \frame_no_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \frame_no_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \frame_no_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \frame_no_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \frame_no_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \frame_no_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \frame_no_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \frame_no_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \frame_no_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \frame_no_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \frame_no_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \frame_no_reg_n_0_[0]\ : STD_LOGIC;
  signal \frame_no_reg_n_0_[1]\ : STD_LOGIC;
  signal \frame_no_reg_n_0_[2]\ : STD_LOGIC;
  signal \frame_no_reg_n_0_[3]\ : STD_LOGIC;
  signal \frame_no_reg_n_0_[4]\ : STD_LOGIC;
  signal \frame_no_reg_n_0_[5]\ : STD_LOGIC;
  signal \frame_no_reg_n_0_[6]\ : STD_LOGIC;
  signal \frame_no_reg_n_0_[7]\ : STD_LOGIC;
  signal hi_byte : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hi_byte_2 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hi_pending : STD_LOGIC;
  signal \hidx[4]_i_1_n_0\ : STD_LOGIC;
  signal \hidx[5]_inv_i_1_n_0\ : STD_LOGIC;
  signal \hidx[5]_inv_i_2_n_0\ : STD_LOGIC;
  signal \hidx_reg_n_0_[0]\ : STD_LOGIC;
  signal \hidx_reg_n_0_[1]\ : STD_LOGIC;
  signal \hidx_reg_n_0_[2]\ : STD_LOGIC;
  signal \hidx_reg_n_0_[3]\ : STD_LOGIC;
  signal \hidx_reg_n_0_[4]\ : STD_LOGIC;
  signal out_byte_r : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \out_byte_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \out_byte_r[0]_i_2_n_0\ : STD_LOGIC;
  signal \out_byte_r[0]_i_3_n_0\ : STD_LOGIC;
  signal \out_byte_r[0]_i_4_n_0\ : STD_LOGIC;
  signal \out_byte_r[0]_i_5_n_0\ : STD_LOGIC;
  signal \out_byte_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \out_byte_r[1]_i_2_n_0\ : STD_LOGIC;
  signal \out_byte_r[1]_i_3_n_0\ : STD_LOGIC;
  signal \out_byte_r[1]_i_4_n_0\ : STD_LOGIC;
  signal \out_byte_r[1]_i_5_n_0\ : STD_LOGIC;
  signal \out_byte_r[1]_i_6_n_0\ : STD_LOGIC;
  signal \out_byte_r[1]_i_7_n_0\ : STD_LOGIC;
  signal \out_byte_r[2]_i_1_n_0\ : STD_LOGIC;
  signal \out_byte_r[2]_i_2_n_0\ : STD_LOGIC;
  signal \out_byte_r[2]_i_3_n_0\ : STD_LOGIC;
  signal \out_byte_r[2]_i_4_n_0\ : STD_LOGIC;
  signal \out_byte_r[2]_i_5_n_0\ : STD_LOGIC;
  signal \out_byte_r[3]_i_1_n_0\ : STD_LOGIC;
  signal \out_byte_r[3]_i_2_n_0\ : STD_LOGIC;
  signal \out_byte_r[3]_i_3_n_0\ : STD_LOGIC;
  signal \out_byte_r[3]_i_4_n_0\ : STD_LOGIC;
  signal \out_byte_r[3]_i_5_n_0\ : STD_LOGIC;
  signal \out_byte_r[3]_i_6_n_0\ : STD_LOGIC;
  signal \out_byte_r[4]_i_1_n_0\ : STD_LOGIC;
  signal \out_byte_r[4]_i_2_n_0\ : STD_LOGIC;
  signal \out_byte_r[4]_i_3_n_0\ : STD_LOGIC;
  signal \out_byte_r[4]_i_4_n_0\ : STD_LOGIC;
  signal \out_byte_r[4]_i_5_n_0\ : STD_LOGIC;
  signal \out_byte_r[4]_i_6_n_0\ : STD_LOGIC;
  signal \out_byte_r[5]_i_1_n_0\ : STD_LOGIC;
  signal \out_byte_r[5]_i_2_n_0\ : STD_LOGIC;
  signal \out_byte_r[5]_i_3_n_0\ : STD_LOGIC;
  signal \out_byte_r[5]_i_4_n_0\ : STD_LOGIC;
  signal \out_byte_r[5]_i_5_n_0\ : STD_LOGIC;
  signal \out_byte_r[6]_i_1_n_0\ : STD_LOGIC;
  signal \out_byte_r[6]_i_2_n_0\ : STD_LOGIC;
  signal \out_byte_r[6]_i_3_n_0\ : STD_LOGIC;
  signal \out_byte_r[6]_i_4_n_0\ : STD_LOGIC;
  signal \out_byte_r[6]_i_5_n_0\ : STD_LOGIC;
  signal \out_byte_r[6]_i_6_n_0\ : STD_LOGIC;
  signal \out_byte_r[6]_i_7_n_0\ : STD_LOGIC;
  signal \out_byte_r[6]_i_8_n_0\ : STD_LOGIC;
  signal \out_byte_r[7]_i_10_n_0\ : STD_LOGIC;
  signal \out_byte_r[7]_i_11_n_0\ : STD_LOGIC;
  signal \out_byte_r[7]_i_12_n_0\ : STD_LOGIC;
  signal \out_byte_r[7]_i_2_n_0\ : STD_LOGIC;
  signal \out_byte_r[7]_i_3_n_0\ : STD_LOGIC;
  signal \out_byte_r[7]_i_4_n_0\ : STD_LOGIC;
  signal \out_byte_r[7]_i_5_n_0\ : STD_LOGIC;
  signal \out_byte_r[7]_i_6_n_0\ : STD_LOGIC;
  signal \out_byte_r[7]_i_7_n_0\ : STD_LOGIC;
  signal \out_byte_r[7]_i_8_n_0\ : STD_LOGIC;
  signal \out_byte_r[7]_i_9_n_0\ : STD_LOGIC;
  signal out_byte_r_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal out_wr_r : STD_LOGIC;
  signal out_wr_r_i_1_n_0 : STD_LOGIC;
  signal out_wr_r_reg_n_0 : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal u_uvc_n_2 : STD_LOGIC;
  signal u_uvc_n_3 : STD_LOGIC;
  signal u_uvc_n_4 : STD_LOGIC;
  signal u_uvc_n_5 : STD_LOGIC;
  signal u_uvc_n_6 : STD_LOGIC;
  signal u_uvc_n_7 : STD_LOGIC;
  signal u_uvc_n_8 : STD_LOGIC;
  signal u_uvc_n_9 : STD_LOGIC;
  signal us_a : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute async_reg : string;
  attribute async_reg of us_a : signal is "true";
  signal us_b : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute async_reg of us_b : signal is "true";
  signal \NLW_frame_no_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \frame_no_reg[0]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \frame_no_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \frame_no_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \frame_no_reg[8]_i_1\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \hidx[0]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \hidx[1]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \hidx[2]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \hidx[3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \hidx[4]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \hidx[5]_inv_i_2\ : label is "soft_lutpair22";
  attribute inverted : string;
  attribute inverted of \hidx_reg[5]_inv\ : label is "yes";
  attribute SOFT_HLUTNM of \out_byte[0]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \out_byte[1]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \out_byte[2]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \out_byte[3]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \out_byte[4]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \out_byte[5]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \out_byte[6]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \out_byte[7]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \out_byte_r[1]_i_5\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \out_byte_r[2]_i_4\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \out_byte_r[3]_i_4\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \out_byte_r[3]_i_6\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \out_byte_r[4]_i_5\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \out_byte_r[6]_i_5\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \out_byte_r[6]_i_7\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \out_byte_r[6]_i_8\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \out_byte_r[7]_i_10\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \out_byte_r[7]_i_12\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \out_byte_r[7]_i_4\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \out_byte_r[7]_i_8\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \out_byte_r[7]_i_9\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of out_wr_r_i_1 : label is "soft_lutpair21";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \us_a_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \us_a_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_a_reg[10]\ : label is std.standard.true;
  attribute KEEP of \us_a_reg[10]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_a_reg[11]\ : label is std.standard.true;
  attribute KEEP of \us_a_reg[11]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_a_reg[12]\ : label is std.standard.true;
  attribute KEEP of \us_a_reg[12]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_a_reg[13]\ : label is std.standard.true;
  attribute KEEP of \us_a_reg[13]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_a_reg[14]\ : label is std.standard.true;
  attribute KEEP of \us_a_reg[14]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_a_reg[15]\ : label is std.standard.true;
  attribute KEEP of \us_a_reg[15]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_a_reg[16]\ : label is std.standard.true;
  attribute KEEP of \us_a_reg[16]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_a_reg[17]\ : label is std.standard.true;
  attribute KEEP of \us_a_reg[17]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_a_reg[18]\ : label is std.standard.true;
  attribute KEEP of \us_a_reg[18]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_a_reg[19]\ : label is std.standard.true;
  attribute KEEP of \us_a_reg[19]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_a_reg[1]\ : label is std.standard.true;
  attribute KEEP of \us_a_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_a_reg[20]\ : label is std.standard.true;
  attribute KEEP of \us_a_reg[20]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_a_reg[21]\ : label is std.standard.true;
  attribute KEEP of \us_a_reg[21]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_a_reg[22]\ : label is std.standard.true;
  attribute KEEP of \us_a_reg[22]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_a_reg[23]\ : label is std.standard.true;
  attribute KEEP of \us_a_reg[23]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_a_reg[24]\ : label is std.standard.true;
  attribute KEEP of \us_a_reg[24]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_a_reg[25]\ : label is std.standard.true;
  attribute KEEP of \us_a_reg[25]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_a_reg[26]\ : label is std.standard.true;
  attribute KEEP of \us_a_reg[26]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_a_reg[27]\ : label is std.standard.true;
  attribute KEEP of \us_a_reg[27]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_a_reg[28]\ : label is std.standard.true;
  attribute KEEP of \us_a_reg[28]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_a_reg[29]\ : label is std.standard.true;
  attribute KEEP of \us_a_reg[29]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_a_reg[2]\ : label is std.standard.true;
  attribute KEEP of \us_a_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_a_reg[30]\ : label is std.standard.true;
  attribute KEEP of \us_a_reg[30]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_a_reg[31]\ : label is std.standard.true;
  attribute KEEP of \us_a_reg[31]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_a_reg[3]\ : label is std.standard.true;
  attribute KEEP of \us_a_reg[3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_a_reg[4]\ : label is std.standard.true;
  attribute KEEP of \us_a_reg[4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_a_reg[5]\ : label is std.standard.true;
  attribute KEEP of \us_a_reg[5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_a_reg[6]\ : label is std.standard.true;
  attribute KEEP of \us_a_reg[6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_a_reg[7]\ : label is std.standard.true;
  attribute KEEP of \us_a_reg[7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_a_reg[8]\ : label is std.standard.true;
  attribute KEEP of \us_a_reg[8]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_a_reg[9]\ : label is std.standard.true;
  attribute KEEP of \us_a_reg[9]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_b_reg[0]\ : label is std.standard.true;
  attribute KEEP of \us_b_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_b_reg[10]\ : label is std.standard.true;
  attribute KEEP of \us_b_reg[10]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_b_reg[11]\ : label is std.standard.true;
  attribute KEEP of \us_b_reg[11]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_b_reg[12]\ : label is std.standard.true;
  attribute KEEP of \us_b_reg[12]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_b_reg[13]\ : label is std.standard.true;
  attribute KEEP of \us_b_reg[13]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_b_reg[14]\ : label is std.standard.true;
  attribute KEEP of \us_b_reg[14]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_b_reg[15]\ : label is std.standard.true;
  attribute KEEP of \us_b_reg[15]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_b_reg[16]\ : label is std.standard.true;
  attribute KEEP of \us_b_reg[16]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_b_reg[17]\ : label is std.standard.true;
  attribute KEEP of \us_b_reg[17]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_b_reg[18]\ : label is std.standard.true;
  attribute KEEP of \us_b_reg[18]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_b_reg[19]\ : label is std.standard.true;
  attribute KEEP of \us_b_reg[19]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_b_reg[1]\ : label is std.standard.true;
  attribute KEEP of \us_b_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_b_reg[20]\ : label is std.standard.true;
  attribute KEEP of \us_b_reg[20]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_b_reg[21]\ : label is std.standard.true;
  attribute KEEP of \us_b_reg[21]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_b_reg[22]\ : label is std.standard.true;
  attribute KEEP of \us_b_reg[22]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_b_reg[23]\ : label is std.standard.true;
  attribute KEEP of \us_b_reg[23]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_b_reg[24]\ : label is std.standard.true;
  attribute KEEP of \us_b_reg[24]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_b_reg[25]\ : label is std.standard.true;
  attribute KEEP of \us_b_reg[25]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_b_reg[26]\ : label is std.standard.true;
  attribute KEEP of \us_b_reg[26]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_b_reg[27]\ : label is std.standard.true;
  attribute KEEP of \us_b_reg[27]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_b_reg[28]\ : label is std.standard.true;
  attribute KEEP of \us_b_reg[28]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_b_reg[29]\ : label is std.standard.true;
  attribute KEEP of \us_b_reg[29]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_b_reg[2]\ : label is std.standard.true;
  attribute KEEP of \us_b_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_b_reg[30]\ : label is std.standard.true;
  attribute KEEP of \us_b_reg[30]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_b_reg[31]\ : label is std.standard.true;
  attribute KEEP of \us_b_reg[31]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_b_reg[3]\ : label is std.standard.true;
  attribute KEEP of \us_b_reg[3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_b_reg[4]\ : label is std.standard.true;
  attribute KEEP of \us_b_reg[4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_b_reg[5]\ : label is std.standard.true;
  attribute KEEP of \us_b_reg[5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_b_reg[6]\ : label is std.standard.true;
  attribute KEEP of \us_b_reg[6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_b_reg[7]\ : label is std.standard.true;
  attribute KEEP of \us_b_reg[7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_b_reg[8]\ : label is std.standard.true;
  attribute KEEP of \us_b_reg[8]\ : label is "yes";
  attribute ASYNC_REG_boolean of \us_b_reg[9]\ : label is std.standard.true;
  attribute KEEP of \us_b_reg[9]\ : label is "yes";
begin
\frame_no[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hdr_start,
      I1 => rst,
      O => frame_no(0)
    );
\frame_no[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \frame_no_reg_n_0_[0]\,
      O => \frame_no[0]_i_3_n_0\
    );
\frame_no_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => frame_no(0),
      D => \frame_no_reg[0]_i_2_n_7\,
      Q => \frame_no_reg_n_0_[0]\,
      R => '0'
    );
\frame_no_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \frame_no_reg[0]_i_2_n_0\,
      CO(2) => \frame_no_reg[0]_i_2_n_1\,
      CO(1) => \frame_no_reg[0]_i_2_n_2\,
      CO(0) => \frame_no_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \frame_no_reg[0]_i_2_n_4\,
      O(2) => \frame_no_reg[0]_i_2_n_5\,
      O(1) => \frame_no_reg[0]_i_2_n_6\,
      O(0) => \frame_no_reg[0]_i_2_n_7\,
      S(3) => \frame_no_reg_n_0_[3]\,
      S(2) => \frame_no_reg_n_0_[2]\,
      S(1) => \frame_no_reg_n_0_[1]\,
      S(0) => \frame_no[0]_i_3_n_0\
    );
\frame_no_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => frame_no(0),
      D => \frame_no_reg[8]_i_1_n_5\,
      Q => data1(2),
      R => '0'
    );
\frame_no_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => frame_no(0),
      D => \frame_no_reg[8]_i_1_n_4\,
      Q => data1(3),
      R => '0'
    );
\frame_no_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => frame_no(0),
      D => \frame_no_reg[12]_i_1_n_7\,
      Q => data1(4),
      R => '0'
    );
\frame_no_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \frame_no_reg[8]_i_1_n_0\,
      CO(3) => \NLW_frame_no_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \frame_no_reg[12]_i_1_n_1\,
      CO(1) => \frame_no_reg[12]_i_1_n_2\,
      CO(0) => \frame_no_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \frame_no_reg[12]_i_1_n_4\,
      O(2) => \frame_no_reg[12]_i_1_n_5\,
      O(1) => \frame_no_reg[12]_i_1_n_6\,
      O(0) => \frame_no_reg[12]_i_1_n_7\,
      S(3 downto 0) => data1(7 downto 4)
    );
\frame_no_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => frame_no(0),
      D => \frame_no_reg[12]_i_1_n_6\,
      Q => data1(5),
      R => '0'
    );
\frame_no_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => frame_no(0),
      D => \frame_no_reg[12]_i_1_n_5\,
      Q => data1(6),
      R => '0'
    );
\frame_no_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => frame_no(0),
      D => \frame_no_reg[12]_i_1_n_4\,
      Q => data1(7),
      R => '0'
    );
\frame_no_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => frame_no(0),
      D => \frame_no_reg[0]_i_2_n_6\,
      Q => \frame_no_reg_n_0_[1]\,
      R => '0'
    );
\frame_no_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => frame_no(0),
      D => \frame_no_reg[0]_i_2_n_5\,
      Q => \frame_no_reg_n_0_[2]\,
      R => '0'
    );
\frame_no_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => frame_no(0),
      D => \frame_no_reg[0]_i_2_n_4\,
      Q => \frame_no_reg_n_0_[3]\,
      R => '0'
    );
\frame_no_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => frame_no(0),
      D => \frame_no_reg[4]_i_1_n_7\,
      Q => \frame_no_reg_n_0_[4]\,
      R => '0'
    );
\frame_no_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \frame_no_reg[0]_i_2_n_0\,
      CO(3) => \frame_no_reg[4]_i_1_n_0\,
      CO(2) => \frame_no_reg[4]_i_1_n_1\,
      CO(1) => \frame_no_reg[4]_i_1_n_2\,
      CO(0) => \frame_no_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \frame_no_reg[4]_i_1_n_4\,
      O(2) => \frame_no_reg[4]_i_1_n_5\,
      O(1) => \frame_no_reg[4]_i_1_n_6\,
      O(0) => \frame_no_reg[4]_i_1_n_7\,
      S(3) => \frame_no_reg_n_0_[7]\,
      S(2) => \frame_no_reg_n_0_[6]\,
      S(1) => \frame_no_reg_n_0_[5]\,
      S(0) => \frame_no_reg_n_0_[4]\
    );
\frame_no_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => frame_no(0),
      D => \frame_no_reg[4]_i_1_n_6\,
      Q => \frame_no_reg_n_0_[5]\,
      R => '0'
    );
\frame_no_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => frame_no(0),
      D => \frame_no_reg[4]_i_1_n_5\,
      Q => \frame_no_reg_n_0_[6]\,
      R => '0'
    );
\frame_no_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => frame_no(0),
      D => \frame_no_reg[4]_i_1_n_4\,
      Q => \frame_no_reg_n_0_[7]\,
      R => '0'
    );
\frame_no_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => frame_no(0),
      D => \frame_no_reg[8]_i_1_n_7\,
      Q => data1(0),
      R => '0'
    );
\frame_no_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \frame_no_reg[4]_i_1_n_0\,
      CO(3) => \frame_no_reg[8]_i_1_n_0\,
      CO(2) => \frame_no_reg[8]_i_1_n_1\,
      CO(1) => \frame_no_reg[8]_i_1_n_2\,
      CO(0) => \frame_no_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \frame_no_reg[8]_i_1_n_4\,
      O(2) => \frame_no_reg[8]_i_1_n_5\,
      O(1) => \frame_no_reg[8]_i_1_n_6\,
      O(0) => \frame_no_reg[8]_i_1_n_7\,
      S(3 downto 0) => data1(3 downto 0)
    );
\frame_no_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => frame_no(0),
      D => \frame_no_reg[8]_i_1_n_6\,
      Q => data1(1),
      R => '0'
    );
\hi_byte[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => px_valid,
      I1 => rst,
      O => hi_byte_2(0)
    );
\hi_byte_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => hi_byte_2(0),
      D => px_disp(8),
      Q => hi_byte(0),
      R => '0'
    );
\hi_byte_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => hi_byte_2(0),
      D => px_disp(9),
      Q => hi_byte(1),
      R => '0'
    );
\hi_byte_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => hi_byte_2(0),
      D => px_disp(10),
      Q => hi_byte(2),
      R => '0'
    );
\hi_byte_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => hi_byte_2(0),
      D => px_disp(11),
      Q => hi_byte(3),
      R => '0'
    );
hi_pending_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => px_valid,
      Q => hi_pending,
      R => rst
    );
\hidx[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hidx_reg_n_0_[0]\,
      O => p_2_in(0)
    );
\hidx[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \hidx_reg_n_0_[0]\,
      I1 => \hidx_reg_n_0_[1]\,
      O => p_2_in(1)
    );
\hidx[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \hidx_reg_n_0_[1]\,
      I1 => \hidx_reg_n_0_[0]\,
      I2 => \hidx_reg_n_0_[2]\,
      O => p_2_in(2)
    );
\hidx[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \hidx_reg_n_0_[2]\,
      I1 => \hidx_reg_n_0_[0]\,
      I2 => \hidx_reg_n_0_[1]\,
      I3 => \hidx_reg_n_0_[3]\,
      O => p_2_in(3)
    );
\hidx[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => hdr_start,
      I1 => rst,
      O => \hidx[4]_i_1_n_0\
    );
\hidx[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \hidx_reg_n_0_[0]\,
      I1 => \hidx_reg_n_0_[1]\,
      I2 => \hidx_reg_n_0_[2]\,
      I3 => \hidx_reg_n_0_[3]\,
      I4 => \hidx_reg_n_0_[4]\,
      O => p_2_in(4)
    );
\hidx[5]_inv_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFFFFFF0000"
    )
        port map (
      I0 => \hidx_reg_n_0_[2]\,
      I1 => \hidx_reg_n_0_[3]\,
      I2 => \hidx_reg_n_0_[4]\,
      I3 => \hidx[5]_inv_i_2_n_0\,
      I4 => hdr_start,
      I5 => out_wr_r,
      O => \hidx[5]_inv_i_1_n_0\
    );
\hidx[5]_inv_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \hidx_reg_n_0_[0]\,
      I1 => \hidx_reg_n_0_[1]\,
      O => \hidx[5]_inv_i_2_n_0\
    );
\hidx_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_wr_r,
      D => p_2_in(0),
      Q => \hidx_reg_n_0_[0]\,
      R => \hidx[4]_i_1_n_0\
    );
\hidx_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_wr_r,
      D => p_2_in(1),
      Q => \hidx_reg_n_0_[1]\,
      R => \hidx[4]_i_1_n_0\
    );
\hidx_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_wr_r,
      D => p_2_in(2),
      Q => \hidx_reg_n_0_[2]\,
      R => \hidx[4]_i_1_n_0\
    );
\hidx_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_wr_r,
      D => p_2_in(3),
      Q => \hidx_reg_n_0_[3]\,
      R => \hidx[4]_i_1_n_0\
    );
\hidx_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_wr_r,
      D => p_2_in(4),
      Q => \hidx_reg_n_0_[4]\,
      R => \hidx[4]_i_1_n_0\
    );
\hidx_reg[5]_inv\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \hidx[5]_inv_i_1_n_0\,
      Q => out_wr_r,
      R => rst
    );
\out_byte[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => u_uvc_n_9,
      I1 => out_byte_r(0),
      I2 => uvc,
      O => out_byte(0)
    );
\out_byte[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => u_uvc_n_8,
      I1 => out_byte_r(1),
      I2 => uvc,
      O => out_byte(1)
    );
\out_byte[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => u_uvc_n_7,
      I1 => out_byte_r(2),
      I2 => uvc,
      O => out_byte(2)
    );
\out_byte[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => u_uvc_n_6,
      I1 => out_byte_r(3),
      I2 => uvc,
      O => out_byte(3)
    );
\out_byte[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => u_uvc_n_5,
      I1 => out_byte_r(4),
      I2 => uvc,
      O => out_byte(4)
    );
\out_byte[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => u_uvc_n_4,
      I1 => out_byte_r(5),
      I2 => uvc,
      O => out_byte(5)
    );
\out_byte[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => u_uvc_n_3,
      I1 => out_byte_r(6),
      I2 => uvc,
      O => out_byte(6)
    );
\out_byte[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => u_uvc_n_2,
      I1 => out_byte_r(7),
      I2 => uvc,
      O => out_byte(7)
    );
\out_byte_r[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \out_byte_r[0]_i_2_n_0\,
      I1 => \out_byte_r[0]_i_3_n_0\,
      I2 => \out_byte_r[0]_i_4_n_0\,
      I3 => \out_byte_r[0]_i_5_n_0\,
      O => \out_byte_r[0]_i_1_n_0\
    );
\out_byte_r[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF8888888F888"
    )
        port map (
      I0 => \out_byte_r[4]_i_3_n_0\,
      I1 => data1(0),
      I2 => hi_pending,
      I3 => hi_byte(0),
      I4 => px_valid,
      I5 => px_disp(0),
      O => \out_byte_r[0]_i_2_n_0\
    );
\out_byte_r[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002010900020100"
    )
        port map (
      I0 => \hidx_reg_n_0_[3]\,
      I1 => \hidx_reg_n_0_[1]\,
      I2 => \out_byte_r[7]_i_7_n_0\,
      I3 => \hidx_reg_n_0_[2]\,
      I4 => \hidx_reg_n_0_[4]\,
      I5 => \hidx_reg_n_0_[0]\,
      O => \out_byte_r[0]_i_3_n_0\
    );
\out_byte_r[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0FFFF88C088C088"
    )
        port map (
      I0 => us_b(0),
      I1 => \out_byte_r[6]_i_7_n_0\,
      I2 => us_b(8),
      I3 => \hidx_reg_n_0_[0]\,
      I4 => \hidx_reg_n_0_[2]\,
      I5 => \out_byte_r[6]_i_8_n_0\,
      O => \out_byte_r[0]_i_4_n_0\
    );
\out_byte_r[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \out_byte_r[7]_i_9_n_0\,
      I1 => us_b(16),
      I2 => \out_byte_r[7]_i_10_n_0\,
      I3 => us_b(24),
      I4 => \frame_no_reg_n_0_[0]\,
      I5 => \out_byte_r[7]_i_11_n_0\,
      O => \out_byte_r[0]_i_5_n_0\
    );
\out_byte_r[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEA"
    )
        port map (
      I0 => \out_byte_r[1]_i_2_n_0\,
      I1 => px_disp(1),
      I2 => px_valid,
      I3 => \out_byte_r[1]_i_3_n_0\,
      I4 => \out_byte_r[1]_i_4_n_0\,
      O => \out_byte_r[1]_i_1_n_0\
    );
\out_byte_r[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \out_byte_r[7]_i_11_n_0\,
      I1 => \frame_no_reg_n_0_[1]\,
      I2 => \out_byte_r[4]_i_3_n_0\,
      I3 => data1(1),
      I4 => hi_byte(1),
      I5 => \out_byte_r[1]_i_5_n_0\,
      O => \out_byte_r[1]_i_2_n_0\
    );
\out_byte_r[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \out_byte_r[7]_i_9_n_0\,
      I1 => us_b(17),
      I2 => \out_byte_r[7]_i_10_n_0\,
      I3 => us_b(25),
      I4 => \out_byte_r[1]_i_6_n_0\,
      O => \out_byte_r[1]_i_3_n_0\
    );
\out_byte_r[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBAAABAAABAAA"
    )
        port map (
      I0 => \out_byte_r[1]_i_7_n_0\,
      I1 => \hidx_reg_n_0_[0]\,
      I2 => us_b(1),
      I3 => \out_byte_r[6]_i_7_n_0\,
      I4 => us_b(9),
      I5 => \out_byte_r[3]_i_6_n_0\,
      O => \out_byte_r[1]_i_4_n_0\
    );
\out_byte_r[1]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hi_pending,
      I1 => px_valid,
      O => \out_byte_r[1]_i_5_n_0\
    );
\out_byte_r[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \hidx_reg_n_0_[3]\,
      I1 => \hidx_reg_n_0_[1]\,
      I2 => hi_pending,
      I3 => px_valid,
      I4 => \hidx_reg_n_0_[2]\,
      I5 => \hidx_reg_n_0_[4]\,
      O => \out_byte_r[1]_i_6_n_0\
    );
\out_byte_r[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000101000001"
    )
        port map (
      I0 => \hidx_reg_n_0_[4]\,
      I1 => \hidx_reg_n_0_[3]\,
      I2 => \out_byte_r[7]_i_7_n_0\,
      I3 => \hidx_reg_n_0_[1]\,
      I4 => \hidx_reg_n_0_[0]\,
      I5 => \hidx_reg_n_0_[2]\,
      O => \out_byte_r[1]_i_7_n_0\
    );
\out_byte_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFEFFFE"
    )
        port map (
      I0 => \out_byte_r[2]_i_2_n_0\,
      I1 => \out_byte_r[2]_i_3_n_0\,
      I2 => \out_byte_r[2]_i_4_n_0\,
      I3 => \out_byte_r[2]_i_5_n_0\,
      I4 => us_b(10),
      I5 => \out_byte_r[3]_i_6_n_0\,
      O => \out_byte_r[2]_i_1_n_0\
    );
\out_byte_r[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \out_byte_r[7]_i_9_n_0\,
      I1 => us_b(18),
      I2 => \out_byte_r[7]_i_10_n_0\,
      I3 => us_b(26),
      I4 => \frame_no_reg_n_0_[2]\,
      I5 => \out_byte_r[7]_i_11_n_0\,
      O => \out_byte_r[2]_i_2_n_0\
    );
\out_byte_r[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF8888888F888"
    )
        port map (
      I0 => \out_byte_r[4]_i_3_n_0\,
      I1 => data1(2),
      I2 => hi_pending,
      I3 => hi_byte(2),
      I4 => px_valid,
      I5 => px_disp(2),
      O => \out_byte_r[2]_i_3_n_0\
    );
\out_byte_r[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08040880"
    )
        port map (
      I0 => \hidx_reg_n_0_[3]\,
      I1 => \out_byte_r[7]_i_8_n_0\,
      I2 => \hidx_reg_n_0_[2]\,
      I3 => \hidx_reg_n_0_[4]\,
      I4 => \hidx_reg_n_0_[0]\,
      O => \out_byte_r[2]_i_4_n_0\
    );
\out_byte_r[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FF88888"
    )
        port map (
      I0 => us_b(2),
      I1 => \out_byte_r[7]_i_4_n_0\,
      I2 => \hidx_reg_n_0_[0]\,
      I3 => \hidx_reg_n_0_[2]\,
      I4 => \out_byte_r[6]_i_8_n_0\,
      O => \out_byte_r[2]_i_5_n_0\
    );
\out_byte_r[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFEFFFE"
    )
        port map (
      I0 => \out_byte_r[3]_i_2_n_0\,
      I1 => \out_byte_r[3]_i_3_n_0\,
      I2 => \out_byte_r[3]_i_4_n_0\,
      I3 => \out_byte_r[3]_i_5_n_0\,
      I4 => us_b(11),
      I5 => \out_byte_r[3]_i_6_n_0\,
      O => \out_byte_r[3]_i_1_n_0\
    );
\out_byte_r[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \out_byte_r[7]_i_9_n_0\,
      I1 => us_b(19),
      I2 => \out_byte_r[7]_i_10_n_0\,
      I3 => us_b(27),
      I4 => \frame_no_reg_n_0_[3]\,
      I5 => \out_byte_r[7]_i_11_n_0\,
      O => \out_byte_r[3]_i_2_n_0\
    );
\out_byte_r[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF8888888F888"
    )
        port map (
      I0 => \out_byte_r[4]_i_3_n_0\,
      I1 => data1(3),
      I2 => hi_pending,
      I3 => hi_byte(3),
      I4 => px_valid,
      I5 => px_disp(3),
      O => \out_byte_r[3]_i_3_n_0\
    );
\out_byte_r[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C000100"
    )
        port map (
      I0 => \hidx_reg_n_0_[0]\,
      I1 => \hidx_reg_n_0_[4]\,
      I2 => \hidx_reg_n_0_[2]\,
      I3 => \out_byte_r[7]_i_8_n_0\,
      I4 => \hidx_reg_n_0_[3]\,
      O => \out_byte_r[3]_i_4_n_0\
    );
\out_byte_r[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FF88888"
    )
        port map (
      I0 => us_b(3),
      I1 => \out_byte_r[7]_i_4_n_0\,
      I2 => \hidx_reg_n_0_[0]\,
      I3 => \hidx_reg_n_0_[2]\,
      I4 => \out_byte_r[6]_i_8_n_0\,
      O => \out_byte_r[3]_i_5_n_0\
    );
\out_byte_r[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \out_byte_r[7]_i_8_n_0\,
      I1 => \hidx_reg_n_0_[3]\,
      I2 => \hidx_reg_n_0_[2]\,
      I3 => \hidx_reg_n_0_[4]\,
      I4 => \hidx_reg_n_0_[0]\,
      O => \out_byte_r[3]_i_6_n_0\
    );
\out_byte_r[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \out_byte_r[4]_i_2_n_0\,
      I1 => px_valid,
      I2 => px_disp(4),
      I3 => data1(4),
      I4 => \out_byte_r[4]_i_3_n_0\,
      I5 => \out_byte_r[4]_i_4_n_0\,
      O => \out_byte_r[4]_i_1_n_0\
    );
\out_byte_r[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \out_byte_r[3]_i_6_n_0\,
      I1 => us_b(12),
      I2 => us_b(4),
      I3 => \out_byte_r[7]_i_4_n_0\,
      I4 => \out_byte_r[4]_i_5_n_0\,
      I5 => \out_byte_r[4]_i_6_n_0\,
      O => \out_byte_r[4]_i_2_n_0\
    );
\out_byte_r[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \hidx_reg_n_0_[3]\,
      I1 => \hidx_reg_n_0_[1]\,
      I2 => hi_pending,
      I3 => px_valid,
      I4 => \hidx_reg_n_0_[2]\,
      I5 => \hidx_reg_n_0_[0]\,
      O => \out_byte_r[4]_i_3_n_0\
    );
\out_byte_r[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \out_byte_r[7]_i_9_n_0\,
      I1 => us_b(20),
      I2 => \out_byte_r[7]_i_10_n_0\,
      I3 => us_b(28),
      I4 => \frame_no_reg_n_0_[4]\,
      I5 => \out_byte_r[7]_i_11_n_0\,
      O => \out_byte_r[4]_i_4_n_0\
    );
\out_byte_r[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000002"
    )
        port map (
      I0 => \out_byte_r[7]_i_12_n_0\,
      I1 => \hidx_reg_n_0_[3]\,
      I2 => \hidx_reg_n_0_[4]\,
      I3 => \hidx_reg_n_0_[0]\,
      I4 => \hidx_reg_n_0_[2]\,
      O => \out_byte_r[4]_i_5_n_0\
    );
\out_byte_r[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001001C00000002"
    )
        port map (
      I0 => \hidx_reg_n_0_[0]\,
      I1 => \hidx_reg_n_0_[4]\,
      I2 => \hidx_reg_n_0_[2]\,
      I3 => \out_byte_r[7]_i_7_n_0\,
      I4 => \hidx_reg_n_0_[1]\,
      I5 => \hidx_reg_n_0_[3]\,
      O => \out_byte_r[4]_i_6_n_0\
    );
\out_byte_r[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEA"
    )
        port map (
      I0 => \out_byte_r[5]_i_2_n_0\,
      I1 => px_valid,
      I2 => px_disp(5),
      I3 => \out_byte_r[5]_i_3_n_0\,
      I4 => \out_byte_r[5]_i_4_n_0\,
      O => \out_byte_r[5]_i_1_n_0\
    );
\out_byte_r[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00C0008000C00030"
    )
        port map (
      I0 => data1(5),
      I1 => \hidx_reg_n_0_[3]\,
      I2 => \out_byte_r[7]_i_8_n_0\,
      I3 => \hidx_reg_n_0_[2]\,
      I4 => \hidx_reg_n_0_[4]\,
      I5 => \hidx_reg_n_0_[0]\,
      O => \out_byte_r[5]_i_2_n_0\
    );
\out_byte_r[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF888888F2F22222"
    )
        port map (
      I0 => \out_byte_r[6]_i_8_n_0\,
      I1 => \hidx_reg_n_0_[2]\,
      I2 => us_b(5),
      I3 => us_b(13),
      I4 => \out_byte_r[5]_i_5_n_0\,
      I5 => \hidx_reg_n_0_[0]\,
      O => \out_byte_r[5]_i_3_n_0\
    );
\out_byte_r[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \out_byte_r[7]_i_9_n_0\,
      I1 => us_b(21),
      I2 => \out_byte_r[7]_i_10_n_0\,
      I3 => us_b(29),
      I4 => \frame_no_reg_n_0_[5]\,
      I5 => \out_byte_r[7]_i_11_n_0\,
      O => \out_byte_r[5]_i_4_n_0\
    );
\out_byte_r[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => \hidx_reg_n_0_[4]\,
      I1 => \hidx_reg_n_0_[2]\,
      I2 => \hidx_reg_n_0_[3]\,
      I3 => \hidx_reg_n_0_[1]\,
      I4 => hi_pending,
      I5 => px_valid,
      O => \out_byte_r[5]_i_5_n_0\
    );
\out_byte_r[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEA"
    )
        port map (
      I0 => \out_byte_r[6]_i_2_n_0\,
      I1 => px_valid,
      I2 => px_disp(6),
      I3 => \out_byte_r[6]_i_3_n_0\,
      I4 => \out_byte_r[6]_i_4_n_0\,
      O => \out_byte_r[6]_i_1_n_0\
    );
\out_byte_r[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00C030B000C00000"
    )
        port map (
      I0 => data1(6),
      I1 => \hidx_reg_n_0_[3]\,
      I2 => \out_byte_r[7]_i_8_n_0\,
      I3 => \hidx_reg_n_0_[2]\,
      I4 => \hidx_reg_n_0_[4]\,
      I5 => \hidx_reg_n_0_[0]\,
      O => \out_byte_r[6]_i_2_n_0\
    );
\out_byte_r[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00F8880000F888"
    )
        port map (
      I0 => \out_byte_r[6]_i_5_n_0\,
      I1 => \out_byte_r[6]_i_6_n_0\,
      I2 => us_b(6),
      I3 => \out_byte_r[6]_i_7_n_0\,
      I4 => \hidx_reg_n_0_[0]\,
      I5 => us_b(14),
      O => \out_byte_r[6]_i_3_n_0\
    );
\out_byte_r[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \out_byte_r[6]_i_8_n_0\,
      I1 => \hidx_reg_n_0_[0]\,
      I2 => \out_byte_r[7]_i_10_n_0\,
      I3 => us_b(30),
      I4 => \frame_no_reg_n_0_[6]\,
      I5 => \out_byte_r[7]_i_11_n_0\,
      O => \out_byte_r[6]_i_4_n_0\
    );
\out_byte_r[6]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \hidx_reg_n_0_[2]\,
      I1 => \hidx_reg_n_0_[3]\,
      O => \out_byte_r[6]_i_5_n_0\
    );
\out_byte_r[6]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000008F"
    )
        port map (
      I0 => us_b(22),
      I1 => \hidx_reg_n_0_[1]\,
      I2 => \hidx_reg_n_0_[4]\,
      I3 => hi_pending,
      I4 => px_valid,
      O => \out_byte_r[6]_i_6_n_0\
    );
\out_byte_r[6]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \hidx_reg_n_0_[3]\,
      I1 => \hidx_reg_n_0_[2]\,
      I2 => \hidx_reg_n_0_[1]\,
      I3 => hi_pending,
      I4 => px_valid,
      O => \out_byte_r[6]_i_7_n_0\
    );
\out_byte_r[6]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \hidx_reg_n_0_[4]\,
      I1 => \hidx_reg_n_0_[3]\,
      I2 => hi_pending,
      I3 => px_valid,
      I4 => \hidx_reg_n_0_[1]\,
      O => \out_byte_r[6]_i_8_n_0\
    );
\out_byte_r[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EEFE"
    )
        port map (
      I0 => hi_pending,
      I1 => px_valid,
      I2 => out_wr_r,
      I3 => hdr_start,
      I4 => rst,
      O => out_byte_r_1(0)
    );
\out_byte_r[7]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \hidx_reg_n_0_[3]\,
      I1 => \hidx_reg_n_0_[2]\,
      I2 => \hidx_reg_n_0_[4]\,
      I3 => \out_byte_r[7]_i_12_n_0\,
      I4 => \hidx_reg_n_0_[0]\,
      O => \out_byte_r[7]_i_10_n_0\
    );
\out_byte_r[7]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \hidx_reg_n_0_[3]\,
      I1 => \hidx_reg_n_0_[1]\,
      I2 => hi_pending,
      I3 => px_valid,
      I4 => \hidx_reg_n_0_[2]\,
      I5 => \hidx_reg_n_0_[0]\,
      O => \out_byte_r[7]_i_11_n_0\
    );
\out_byte_r[7]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \hidx_reg_n_0_[1]\,
      I1 => px_valid,
      I2 => hi_pending,
      O => \out_byte_r[7]_i_12_n_0\
    );
\out_byte_r[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEA"
    )
        port map (
      I0 => \out_byte_r[7]_i_3_n_0\,
      I1 => us_b(7),
      I2 => \out_byte_r[7]_i_4_n_0\,
      I3 => \out_byte_r[7]_i_5_n_0\,
      I4 => \out_byte_r[7]_i_6_n_0\,
      O => \out_byte_r[7]_i_2_n_0\
    );
\out_byte_r[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000200000002020D"
    )
        port map (
      I0 => \hidx_reg_n_0_[3]\,
      I1 => \hidx_reg_n_0_[1]\,
      I2 => \out_byte_r[7]_i_7_n_0\,
      I3 => \hidx_reg_n_0_[2]\,
      I4 => \hidx_reg_n_0_[4]\,
      I5 => \hidx_reg_n_0_[0]\,
      O => \out_byte_r[7]_i_3_n_0\
    );
\out_byte_r[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => \out_byte_r[7]_i_8_n_0\,
      I1 => \hidx_reg_n_0_[3]\,
      I2 => \hidx_reg_n_0_[2]\,
      I3 => \hidx_reg_n_0_[4]\,
      I4 => \hidx_reg_n_0_[0]\,
      O => \out_byte_r[7]_i_4_n_0\
    );
\out_byte_r[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \out_byte_r[3]_i_6_n_0\,
      I1 => us_b(15),
      I2 => \out_byte_r[7]_i_9_n_0\,
      I3 => us_b(23),
      I4 => us_b(31),
      I5 => \out_byte_r[7]_i_10_n_0\,
      O => \out_byte_r[7]_i_5_n_0\
    );
\out_byte_r[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \out_byte_r[7]_i_11_n_0\,
      I1 => \frame_no_reg_n_0_[7]\,
      I2 => \out_byte_r[4]_i_3_n_0\,
      I3 => data1(7),
      I4 => px_valid,
      I5 => px_disp(7),
      O => \out_byte_r[7]_i_6_n_0\
    );
\out_byte_r[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => hi_pending,
      I1 => px_valid,
      O => \out_byte_r[7]_i_7_n_0\
    );
\out_byte_r[7]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => px_valid,
      I1 => hi_pending,
      I2 => \hidx_reg_n_0_[1]\,
      O => \out_byte_r[7]_i_8_n_0\
    );
\out_byte_r[7]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \hidx_reg_n_0_[3]\,
      I1 => \hidx_reg_n_0_[2]\,
      I2 => \hidx_reg_n_0_[4]\,
      I3 => \out_byte_r[7]_i_12_n_0\,
      I4 => \hidx_reg_n_0_[0]\,
      O => \out_byte_r[7]_i_9_n_0\
    );
\out_byte_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_byte_r_1(0),
      D => \out_byte_r[0]_i_1_n_0\,
      Q => out_byte_r(0),
      R => '0'
    );
\out_byte_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_byte_r_1(0),
      D => \out_byte_r[1]_i_1_n_0\,
      Q => out_byte_r(1),
      R => '0'
    );
\out_byte_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_byte_r_1(0),
      D => \out_byte_r[2]_i_1_n_0\,
      Q => out_byte_r(2),
      R => '0'
    );
\out_byte_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_byte_r_1(0),
      D => \out_byte_r[3]_i_1_n_0\,
      Q => out_byte_r(3),
      R => '0'
    );
\out_byte_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_byte_r_1(0),
      D => \out_byte_r[4]_i_1_n_0\,
      Q => out_byte_r(4),
      R => '0'
    );
\out_byte_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_byte_r_1(0),
      D => \out_byte_r[5]_i_1_n_0\,
      Q => out_byte_r(5),
      R => '0'
    );
\out_byte_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_byte_r_1(0),
      D => \out_byte_r[6]_i_1_n_0\,
      Q => out_byte_r(6),
      R => '0'
    );
\out_byte_r_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_byte_r_1(0),
      D => \out_byte_r[7]_i_2_n_0\,
      Q => out_byte_r(7),
      R => '0'
    );
out_wr_r_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF4"
    )
        port map (
      I0 => hdr_start,
      I1 => out_wr_r,
      I2 => px_valid,
      I3 => hi_pending,
      O => out_wr_r_i_1_n_0
    );
out_wr_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => out_wr_r_i_1_n_0,
      Q => out_wr_r_reg_n_0,
      R => rst
    );
u_uvc: entity work.system_frame_format_0_0_uvc_lines
     port map (
      Q(7) => u_uvc_n_2,
      Q(6) => u_uvc_n_3,
      Q(5) => u_uvc_n_4,
      Q(4) => u_uvc_n_5,
      Q(3) => u_uvc_n_6,
      Q(2) => u_uvc_n_7,
      Q(1) => u_uvc_n_8,
      Q(0) => u_uvc_n_9,
      clk => clk,
      l_first => l_first,
      l_luma(7 downto 0) => l_luma(7 downto 0),
      l_valid => l_valid,
      out_last => out_last,
      out_room => out_room,
      out_wr => out_wr,
      out_wr_0 => out_wr_r_reg_n_0,
      px_disp(11 downto 0) => px_disp(11 downto 0),
      px_valid => px_valid,
      px_x(9 downto 0) => px_x(9 downto 0),
      px_y(9 downto 0) => px_y(9 downto 0),
      rst => rst,
      uvc => uvc
    );
\us_a_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_us(0),
      Q => us_a(0),
      R => '0'
    );
\us_a_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_us(10),
      Q => us_a(10),
      R => '0'
    );
\us_a_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_us(11),
      Q => us_a(11),
      R => '0'
    );
\us_a_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_us(12),
      Q => us_a(12),
      R => '0'
    );
\us_a_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_us(13),
      Q => us_a(13),
      R => '0'
    );
\us_a_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_us(14),
      Q => us_a(14),
      R => '0'
    );
\us_a_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_us(15),
      Q => us_a(15),
      R => '0'
    );
\us_a_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_us(16),
      Q => us_a(16),
      R => '0'
    );
\us_a_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_us(17),
      Q => us_a(17),
      R => '0'
    );
\us_a_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_us(18),
      Q => us_a(18),
      R => '0'
    );
\us_a_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_us(19),
      Q => us_a(19),
      R => '0'
    );
\us_a_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_us(1),
      Q => us_a(1),
      R => '0'
    );
\us_a_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_us(20),
      Q => us_a(20),
      R => '0'
    );
\us_a_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_us(21),
      Q => us_a(21),
      R => '0'
    );
\us_a_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_us(22),
      Q => us_a(22),
      R => '0'
    );
\us_a_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_us(23),
      Q => us_a(23),
      R => '0'
    );
\us_a_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_us(24),
      Q => us_a(24),
      R => '0'
    );
\us_a_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_us(25),
      Q => us_a(25),
      R => '0'
    );
\us_a_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_us(26),
      Q => us_a(26),
      R => '0'
    );
\us_a_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_us(27),
      Q => us_a(27),
      R => '0'
    );
\us_a_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_us(28),
      Q => us_a(28),
      R => '0'
    );
\us_a_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_us(29),
      Q => us_a(29),
      R => '0'
    );
\us_a_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_us(2),
      Q => us_a(2),
      R => '0'
    );
\us_a_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_us(30),
      Q => us_a(30),
      R => '0'
    );
\us_a_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_us(31),
      Q => us_a(31),
      R => '0'
    );
\us_a_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_us(3),
      Q => us_a(3),
      R => '0'
    );
\us_a_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_us(4),
      Q => us_a(4),
      R => '0'
    );
\us_a_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_us(5),
      Q => us_a(5),
      R => '0'
    );
\us_a_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_us(6),
      Q => us_a(6),
      R => '0'
    );
\us_a_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_us(7),
      Q => us_a(7),
      R => '0'
    );
\us_a_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_us(8),
      Q => us_a(8),
      R => '0'
    );
\us_a_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_us(9),
      Q => us_a(9),
      R => '0'
    );
\us_b_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => us_a(0),
      Q => us_b(0),
      R => '0'
    );
\us_b_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => us_a(10),
      Q => us_b(10),
      R => '0'
    );
\us_b_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => us_a(11),
      Q => us_b(11),
      R => '0'
    );
\us_b_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => us_a(12),
      Q => us_b(12),
      R => '0'
    );
\us_b_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => us_a(13),
      Q => us_b(13),
      R => '0'
    );
\us_b_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => us_a(14),
      Q => us_b(14),
      R => '0'
    );
\us_b_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => us_a(15),
      Q => us_b(15),
      R => '0'
    );
\us_b_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => us_a(16),
      Q => us_b(16),
      R => '0'
    );
\us_b_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => us_a(17),
      Q => us_b(17),
      R => '0'
    );
\us_b_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => us_a(18),
      Q => us_b(18),
      R => '0'
    );
\us_b_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => us_a(19),
      Q => us_b(19),
      R => '0'
    );
\us_b_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => us_a(1),
      Q => us_b(1),
      R => '0'
    );
\us_b_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => us_a(20),
      Q => us_b(20),
      R => '0'
    );
\us_b_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => us_a(21),
      Q => us_b(21),
      R => '0'
    );
\us_b_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => us_a(22),
      Q => us_b(22),
      R => '0'
    );
\us_b_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => us_a(23),
      Q => us_b(23),
      R => '0'
    );
\us_b_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => us_a(24),
      Q => us_b(24),
      R => '0'
    );
\us_b_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => us_a(25),
      Q => us_b(25),
      R => '0'
    );
\us_b_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => us_a(26),
      Q => us_b(26),
      R => '0'
    );
\us_b_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => us_a(27),
      Q => us_b(27),
      R => '0'
    );
\us_b_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => us_a(28),
      Q => us_b(28),
      R => '0'
    );
\us_b_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => us_a(29),
      Q => us_b(29),
      R => '0'
    );
\us_b_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => us_a(2),
      Q => us_b(2),
      R => '0'
    );
\us_b_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => us_a(30),
      Q => us_b(30),
      R => '0'
    );
\us_b_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => us_a(31),
      Q => us_b(31),
      R => '0'
    );
\us_b_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => us_a(3),
      Q => us_b(3),
      R => '0'
    );
\us_b_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => us_a(4),
      Q => us_b(4),
      R => '0'
    );
\us_b_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => us_a(5),
      Q => us_b(5),
      R => '0'
    );
\us_b_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => us_a(6),
      Q => us_b(6),
      R => '0'
    );
\us_b_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => us_a(7),
      Q => us_b(7),
      R => '0'
    );
\us_b_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => us_a(8),
      Q => us_b(8),
      R => '0'
    );
\us_b_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => us_a(9),
      Q => us_b(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_frame_format_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    px_valid : in STD_LOGIC;
    px_y : in STD_LOGIC_VECTOR ( 9 downto 0 );
    px_x : in STD_LOGIC_VECTOR ( 9 downto 0 );
    px_disp : in STD_LOGIC_VECTOR ( 11 downto 0 );
    hdr_start : in STD_LOGIC;
    l_valid : in STD_LOGIC;
    l_first : in STD_LOGIC;
    l_luma : in STD_LOGIC_VECTOR ( 7 downto 0 );
    start_us : in STD_LOGIC_VECTOR ( 31 downto 0 );
    uvc : in STD_LOGIC;
    out_room : in STD_LOGIC;
    out_wr : out STD_LOGIC;
    out_byte : out STD_LOGIC_VECTOR ( 7 downto 0 );
    out_last : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_frame_format_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_frame_format_0_0 : entity is "system_frame_format_0_0,frame_format,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_frame_format_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of system_frame_format_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_frame_format_0_0 : entity is "frame_format,Vivado 2025.2";
end system_frame_format_0_0;

architecture STRUCTURE of system_frame_format_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_MODE of rst : signal is "slave";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.system_frame_format_0_0_frame_format
     port map (
      clk => clk,
      hdr_start => hdr_start,
      l_first => l_first,
      l_luma(7 downto 0) => l_luma(7 downto 0),
      l_valid => l_valid,
      out_byte(7 downto 0) => out_byte(7 downto 0),
      out_last => out_last,
      out_room => out_room,
      out_wr => out_wr,
      px_disp(11 downto 0) => px_disp(11 downto 0),
      px_valid => px_valid,
      px_x(9 downto 0) => px_x(9 downto 0),
      px_y(9 downto 0) => px_y(9 downto 0),
      rst => rst,
      start_us(31 downto 0) => start_us(31 downto 0),
      uvc => uvc
    );
end STRUCTURE;
