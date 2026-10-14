-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Wed Oct 14 08:43:04 2026
-- Host        : LAPTOP-THBQET7J running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/stereo-depth-cam/hw/projects/stereo_1slice/stereo_1slice.gen/sources_1/bd/system/ip/system_cam_input_0_0/system_cam_input_0_0_sim_netlist.vhdl
-- Design      : system_cam_input_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_cam_input_0_0_byte_fifo is
  port (
    c0_afull : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 13 downto 0 );
    raw0_dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \rp_reg[0]_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    do_wr : in STD_LOGIC;
    raw0_rd : in STD_LOGIC;
    c0_wr : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_cam_input_0_0_byte_fifo : entity is "byte_fifo";
end system_cam_input_0_0_byte_fifo;

architecture STRUCTURE of system_cam_input_0_0_byte_fifo is
  signal \^q\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal almost_full_i_1_n_0 : STD_LOGIC;
  signal almost_full_i_2_n_0 : STD_LOGIC;
  signal \count0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \count0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \count0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \count0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \count0_carry__0_n_0\ : STD_LOGIC;
  signal \count0_carry__0_n_1\ : STD_LOGIC;
  signal \count0_carry__0_n_2\ : STD_LOGIC;
  signal \count0_carry__0_n_3\ : STD_LOGIC;
  signal \count0_carry__0_n_4\ : STD_LOGIC;
  signal \count0_carry__0_n_5\ : STD_LOGIC;
  signal \count0_carry__0_n_6\ : STD_LOGIC;
  signal \count0_carry__0_n_7\ : STD_LOGIC;
  signal \count0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \count0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \count0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \count0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \count0_carry__1_n_0\ : STD_LOGIC;
  signal \count0_carry__1_n_1\ : STD_LOGIC;
  signal \count0_carry__1_n_2\ : STD_LOGIC;
  signal \count0_carry__1_n_3\ : STD_LOGIC;
  signal \count0_carry__1_n_4\ : STD_LOGIC;
  signal \count0_carry__1_n_5\ : STD_LOGIC;
  signal \count0_carry__1_n_6\ : STD_LOGIC;
  signal \count0_carry__1_n_7\ : STD_LOGIC;
  signal \count0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \count0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \count0_carry__2_n_3\ : STD_LOGIC;
  signal \count0_carry__2_n_6\ : STD_LOGIC;
  signal \count0_carry__2_n_7\ : STD_LOGIC;
  signal count0_carry_i_1_n_0 : STD_LOGIC;
  signal count0_carry_i_2_n_0 : STD_LOGIC;
  signal count0_carry_i_3_n_0 : STD_LOGIC;
  signal count0_carry_i_4_n_0 : STD_LOGIC;
  signal count0_carry_i_5_n_0 : STD_LOGIC;
  signal count0_carry_i_6_n_0 : STD_LOGIC;
  signal count0_carry_n_0 : STD_LOGIC;
  signal count0_carry_n_1 : STD_LOGIC;
  signal count0_carry_n_2 : STD_LOGIC;
  signal count0_carry_n_3 : STD_LOGIC;
  signal count0_carry_n_4 : STD_LOGIC;
  signal count0_carry_n_5 : STD_LOGIC;
  signal count0_carry_n_6 : STD_LOGIC;
  signal count0_carry_n_7 : STD_LOGIC;
  signal mem_reg_1_i_14_n_0 : STD_LOGIC;
  signal raddr : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal rp : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \rp_inc[0]_i_2_n_0\ : STD_LOGIC;
  signal rp_inc_reg : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \rp_inc_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \rp_inc_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \rp_inc_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \rp_inc_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \rp_inc_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \rp_inc_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \rp_inc_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \rp_inc_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \rp_inc_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \rp_inc_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \rp_inc_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \rp_inc_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \rp_inc_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \rp_inc_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \rp_inc_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \rp_inc_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \rp_inc_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \rp_inc_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \rp_inc_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \rp_inc_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \rp_inc_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \rp_inc_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \rp_inc_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \rp_inc_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \rp_inc_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \wp[0]_i_3_n_0\ : STD_LOGIC;
  signal wp_reg : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \wp_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \wp_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \wp_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \wp_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \wp_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \wp_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \wp_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \wp_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \wp_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \wp_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \wp_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \wp_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \wp_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \wp_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \wp_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \wp_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \wp_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \wp_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \wp_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \wp_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \wp_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \wp_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \wp_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \wp_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \wp_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_count0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_count0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_0_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 4 );
  signal NLW_mem_reg_0_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_0_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_1_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_1_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 4 );
  signal NLW_mem_reg_1_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_1_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_1_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_1_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_rp_inc_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rp_inc_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_wp_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_wp_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of count0_carry : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__2\ : label is 35;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_0 : label is "p0_d4";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_0 : label is "p0_d4";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg_0 : label is 65536;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg_0 : label is "system_cam_input_0_0/inst/u_cfifo0/mem_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of mem_reg_0 : label is "auto";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of mem_reg_0 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg_0 : label is 8191;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg_0 : label is 3;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_1 : label is "p0_d4";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_1 : label is "p0_d4";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_1 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of mem_reg_1 : label is 65536;
  attribute RTL_RAM_NAME of mem_reg_1 : label is "system_cam_input_0_0/inst/u_cfifo0/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_1 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_1 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_1 : label is 0;
  attribute ram_addr_end of mem_reg_1 : label is 8191;
  attribute ram_offset of mem_reg_1 : label is 0;
  attribute ram_slice_begin of mem_reg_1 : label is 4;
  attribute ram_slice_end of mem_reg_1 : label is 7;
  attribute ADDER_THRESHOLD of \rp_inc_reg[0]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \rp_inc_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \rp_inc_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \rp_inc_reg[8]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \wp_reg[0]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \wp_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \wp_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \wp_reg[8]_i_1\ : label is 35;
begin
  Q(13 downto 0) <= \^q\(13 downto 0);
almost_full_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAAAAAA"
    )
        port map (
      I0 => \^q\(13),
      I1 => almost_full_i_2_n_0,
      I2 => \^q\(9),
      I3 => \^q\(11),
      I4 => \^q\(5),
      O => almost_full_i_1_n_0
    );
almost_full_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(4),
      I2 => \^q\(10),
      I3 => \^q\(12),
      I4 => \^q\(6),
      I5 => \^q\(7),
      O => almost_full_i_2_n_0
    );
almost_full_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => almost_full_i_1_n_0,
      Q => c0_afull,
      R => \rp_reg[0]_0\
    );
count0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count0_carry_n_0,
      CO(2) => count0_carry_n_1,
      CO(1) => count0_carry_n_2,
      CO(0) => count0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => \^q\(2 downto 1),
      DI(1) => count0_carry_i_1_n_0,
      DI(0) => count0_carry_i_2_n_0,
      O(3) => count0_carry_n_4,
      O(2) => count0_carry_n_5,
      O(1) => count0_carry_n_6,
      O(0) => count0_carry_n_7,
      S(3) => count0_carry_i_3_n_0,
      S(2) => count0_carry_i_4_n_0,
      S(1) => count0_carry_i_5_n_0,
      S(0) => count0_carry_i_6_n_0
    );
\count0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count0_carry_n_0,
      CO(3) => \count0_carry__0_n_0\,
      CO(2) => \count0_carry__0_n_1\,
      CO(1) => \count0_carry__0_n_2\,
      CO(0) => \count0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(6 downto 3),
      O(3) => \count0_carry__0_n_4\,
      O(2) => \count0_carry__0_n_5\,
      O(1) => \count0_carry__0_n_6\,
      O(0) => \count0_carry__0_n_7\,
      S(3) => \count0_carry__0_i_1_n_0\,
      S(2) => \count0_carry__0_i_2_n_0\,
      S(1) => \count0_carry__0_i_3_n_0\,
      S(0) => \count0_carry__0_i_4_n_0\
    );
\count0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(7),
      O => \count0_carry__0_i_1_n_0\
    );
\count0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(6),
      O => \count0_carry__0_i_2_n_0\
    );
\count0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      O => \count0_carry__0_i_3_n_0\
    );
\count0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      O => \count0_carry__0_i_4_n_0\
    );
\count0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__0_n_0\,
      CO(3) => \count0_carry__1_n_0\,
      CO(2) => \count0_carry__1_n_1\,
      CO(1) => \count0_carry__1_n_2\,
      CO(0) => \count0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(10 downto 7),
      O(3) => \count0_carry__1_n_4\,
      O(2) => \count0_carry__1_n_5\,
      O(1) => \count0_carry__1_n_6\,
      O(0) => \count0_carry__1_n_7\,
      S(3) => \count0_carry__1_i_1_n_0\,
      S(2) => \count0_carry__1_i_2_n_0\,
      S(1) => \count0_carry__1_i_3_n_0\,
      S(0) => \count0_carry__1_i_4_n_0\
    );
\count0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^q\(11),
      O => \count0_carry__1_i_1_n_0\
    );
\count0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(10),
      O => \count0_carry__1_i_2_n_0\
    );
\count0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(9),
      O => \count0_carry__1_i_3_n_0\
    );
\count0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(8),
      O => \count0_carry__1_i_4_n_0\
    );
\count0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__1_n_0\,
      CO(3 downto 1) => \NLW_count0_carry__2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \count0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^q\(11),
      O(3 downto 2) => \NLW_count0_carry__2_O_UNCONNECTED\(3 downto 2),
      O(1) => \count0_carry__2_n_6\,
      O(0) => \count0_carry__2_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \count0_carry__2_i_1_n_0\,
      S(0) => \count0_carry__2_i_2_n_0\
    );
\count0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(12),
      I1 => \^q\(13),
      O => \count0_carry__2_i_1_n_0\
    );
\count0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(11),
      I1 => \^q\(12),
      O => \count0_carry__2_i_2_n_0\
    );
count0_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(13),
      I2 => c0_wr,
      O => count0_carry_i_1_n_0
    );
count0_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2D"
    )
        port map (
      I0 => c0_wr,
      I1 => \^q\(13),
      I2 => \^q\(0),
      O => count0_carry_i_2_n_0
    );
count0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => count0_carry_i_3_n_0
    );
count0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      O => count0_carry_i_4_n_0
    );
count0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F20D"
    )
        port map (
      I0 => c0_wr,
      I1 => \^q\(13),
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => count0_carry_i_5_n_0
    );
count0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"659A"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(13),
      I2 => c0_wr,
      I3 => raw0_rd,
      O => count0_carry_i_6_n_0
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => count0_carry_n_7,
      Q => \^q\(0),
      R => \rp_reg[0]_0\
    );
\count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count0_carry__1_n_5\,
      Q => \^q\(10),
      R => \rp_reg[0]_0\
    );
\count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count0_carry__1_n_4\,
      Q => \^q\(11),
      R => \rp_reg[0]_0\
    );
\count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count0_carry__2_n_7\,
      Q => \^q\(12),
      R => \rp_reg[0]_0\
    );
\count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count0_carry__2_n_6\,
      Q => \^q\(13),
      R => \rp_reg[0]_0\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => count0_carry_n_6,
      Q => \^q\(1),
      R => \rp_reg[0]_0\
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => count0_carry_n_5,
      Q => \^q\(2),
      R => \rp_reg[0]_0\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => count0_carry_n_4,
      Q => \^q\(3),
      R => \rp_reg[0]_0\
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count0_carry__0_n_7\,
      Q => \^q\(4),
      R => \rp_reg[0]_0\
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count0_carry__0_n_6\,
      Q => \^q\(5),
      R => \rp_reg[0]_0\
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count0_carry__0_n_5\,
      Q => \^q\(6),
      R => \rp_reg[0]_0\
    );
\count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count0_carry__0_n_4\,
      Q => \^q\(7),
      R => \rp_reg[0]_0\
    );
\count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count0_carry__1_n_7\,
      Q => \^q\(8),
      R => \rp_reg[0]_0\
    );
\count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count0_carry__1_n_6\,
      Q => \^q\(9),
      R => \rp_reg[0]_0\
    );
mem_reg_0: unisim.vcomponents.RAMB36E1
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
      READ_WIDTH_A => 4,
      READ_WIDTH_B => 4,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 4,
      WRITE_WIDTH_B => 4
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 2) => wp_reg(12 downto 0),
      ADDRARDADDR(1 downto 0) => B"11",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 2) => raddr(12 downto 0),
      ADDRBWRADDR(1 downto 0) => B"11",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => NLW_mem_reg_0_DBITERR_UNCONNECTED,
      DIADI(31 downto 4) => B"0000000000000000000000000000",
      DIADI(3 downto 0) => din(3 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000001111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_0_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 4) => NLW_mem_reg_0_DOBDO_UNCONNECTED(31 downto 4),
      DOBDO(3 downto 0) => raw0_dout(3 downto 0),
      DOPADOP(3 downto 0) => NLW_mem_reg_0_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_0_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_0_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => c0_wr,
      ENBWREN => '1',
      INJECTDBITERR => NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_0_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_0_SBITERR_UNCONNECTED,
      WEA(3) => mem_reg_1_i_14_n_0,
      WEA(2) => mem_reg_1_i_14_n_0,
      WEA(1) => mem_reg_1_i_14_n_0,
      WEA(0) => mem_reg_1_i_14_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_1: unisim.vcomponents.RAMB36E1
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
      READ_WIDTH_A => 4,
      READ_WIDTH_B => 4,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 4,
      WRITE_WIDTH_B => 4
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 2) => wp_reg(12 downto 0),
      ADDRARDADDR(1 downto 0) => B"11",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 2) => raddr(12 downto 0),
      ADDRBWRADDR(1 downto 0) => B"11",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_1_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_1_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => NLW_mem_reg_1_DBITERR_UNCONNECTED,
      DIADI(31 downto 4) => B"0000000000000000000000000000",
      DIADI(3 downto 0) => din(7 downto 4),
      DIBDI(31 downto 0) => B"00000000000000000000000000001111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_1_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 4) => NLW_mem_reg_1_DOBDO_UNCONNECTED(31 downto 4),
      DOBDO(3 downto 0) => raw0_dout(7 downto 4),
      DOPADOP(3 downto 0) => NLW_mem_reg_1_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_1_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_1_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => c0_wr,
      ENBWREN => '1',
      INJECTDBITERR => NLW_mem_reg_1_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_1_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_1_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_1_SBITERR_UNCONNECTED,
      WEA(3) => mem_reg_1_i_14_n_0,
      WEA(2) => mem_reg_1_i_14_n_0,
      WEA(1) => mem_reg_1_i_14_n_0,
      WEA(0) => mem_reg_1_i_14_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rp_inc_reg(12),
      I1 => raw0_rd,
      I2 => rp(12),
      O => raddr(12)
    );
mem_reg_1_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rp_inc_reg(3),
      I1 => raw0_rd,
      I2 => rp(3),
      O => raddr(3)
    );
mem_reg_1_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rp_inc_reg(2),
      I1 => raw0_rd,
      I2 => rp(2),
      O => raddr(2)
    );
mem_reg_1_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rp_inc_reg(1),
      I1 => raw0_rd,
      I2 => rp(1),
      O => raddr(1)
    );
mem_reg_1_i_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rp_inc_reg(0),
      I1 => raw0_rd,
      I2 => rp(0),
      O => raddr(0)
    );
mem_reg_1_i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(13),
      O => mem_reg_1_i_14_n_0
    );
mem_reg_1_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rp_inc_reg(11),
      I1 => raw0_rd,
      I2 => rp(11),
      O => raddr(11)
    );
mem_reg_1_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rp_inc_reg(10),
      I1 => raw0_rd,
      I2 => rp(10),
      O => raddr(10)
    );
mem_reg_1_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rp_inc_reg(9),
      I1 => raw0_rd,
      I2 => rp(9),
      O => raddr(9)
    );
mem_reg_1_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rp_inc_reg(8),
      I1 => raw0_rd,
      I2 => rp(8),
      O => raddr(8)
    );
mem_reg_1_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rp_inc_reg(7),
      I1 => raw0_rd,
      I2 => rp(7),
      O => raddr(7)
    );
mem_reg_1_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rp_inc_reg(6),
      I1 => raw0_rd,
      I2 => rp(6),
      O => raddr(6)
    );
mem_reg_1_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rp_inc_reg(5),
      I1 => raw0_rd,
      I2 => rp(5),
      O => raddr(5)
    );
mem_reg_1_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rp_inc_reg(4),
      I1 => raw0_rd,
      I2 => rp(4),
      O => raddr(4)
    );
\rp_inc[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rp_inc_reg(0),
      O => \rp_inc[0]_i_2_n_0\
    );
\rp_inc_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => raw0_rd,
      D => \rp_inc_reg[0]_i_1_n_7\,
      Q => rp_inc_reg(0),
      S => \rp_reg[0]_0\
    );
\rp_inc_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rp_inc_reg[0]_i_1_n_0\,
      CO(2) => \rp_inc_reg[0]_i_1_n_1\,
      CO(1) => \rp_inc_reg[0]_i_1_n_2\,
      CO(0) => \rp_inc_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \rp_inc_reg[0]_i_1_n_4\,
      O(2) => \rp_inc_reg[0]_i_1_n_5\,
      O(1) => \rp_inc_reg[0]_i_1_n_6\,
      O(0) => \rp_inc_reg[0]_i_1_n_7\,
      S(3 downto 1) => rp_inc_reg(3 downto 1),
      S(0) => \rp_inc[0]_i_2_n_0\
    );
\rp_inc_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => raw0_rd,
      D => \rp_inc_reg[8]_i_1_n_5\,
      Q => rp_inc_reg(10),
      R => \rp_reg[0]_0\
    );
\rp_inc_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => raw0_rd,
      D => \rp_inc_reg[8]_i_1_n_4\,
      Q => rp_inc_reg(11),
      R => \rp_reg[0]_0\
    );
\rp_inc_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => raw0_rd,
      D => \rp_inc_reg[12]_i_1_n_7\,
      Q => rp_inc_reg(12),
      R => \rp_reg[0]_0\
    );
\rp_inc_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rp_inc_reg[8]_i_1_n_0\,
      CO(3 downto 0) => \NLW_rp_inc_reg[12]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_rp_inc_reg[12]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \rp_inc_reg[12]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => rp_inc_reg(12)
    );
\rp_inc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => raw0_rd,
      D => \rp_inc_reg[0]_i_1_n_6\,
      Q => rp_inc_reg(1),
      R => \rp_reg[0]_0\
    );
\rp_inc_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => raw0_rd,
      D => \rp_inc_reg[0]_i_1_n_5\,
      Q => rp_inc_reg(2),
      R => \rp_reg[0]_0\
    );
\rp_inc_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => raw0_rd,
      D => \rp_inc_reg[0]_i_1_n_4\,
      Q => rp_inc_reg(3),
      R => \rp_reg[0]_0\
    );
\rp_inc_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => raw0_rd,
      D => \rp_inc_reg[4]_i_1_n_7\,
      Q => rp_inc_reg(4),
      R => \rp_reg[0]_0\
    );
\rp_inc_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rp_inc_reg[0]_i_1_n_0\,
      CO(3) => \rp_inc_reg[4]_i_1_n_0\,
      CO(2) => \rp_inc_reg[4]_i_1_n_1\,
      CO(1) => \rp_inc_reg[4]_i_1_n_2\,
      CO(0) => \rp_inc_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rp_inc_reg[4]_i_1_n_4\,
      O(2) => \rp_inc_reg[4]_i_1_n_5\,
      O(1) => \rp_inc_reg[4]_i_1_n_6\,
      O(0) => \rp_inc_reg[4]_i_1_n_7\,
      S(3 downto 0) => rp_inc_reg(7 downto 4)
    );
\rp_inc_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => raw0_rd,
      D => \rp_inc_reg[4]_i_1_n_6\,
      Q => rp_inc_reg(5),
      R => \rp_reg[0]_0\
    );
\rp_inc_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => raw0_rd,
      D => \rp_inc_reg[4]_i_1_n_5\,
      Q => rp_inc_reg(6),
      R => \rp_reg[0]_0\
    );
\rp_inc_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => raw0_rd,
      D => \rp_inc_reg[4]_i_1_n_4\,
      Q => rp_inc_reg(7),
      R => \rp_reg[0]_0\
    );
\rp_inc_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => raw0_rd,
      D => \rp_inc_reg[8]_i_1_n_7\,
      Q => rp_inc_reg(8),
      R => \rp_reg[0]_0\
    );
\rp_inc_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rp_inc_reg[4]_i_1_n_0\,
      CO(3) => \rp_inc_reg[8]_i_1_n_0\,
      CO(2) => \rp_inc_reg[8]_i_1_n_1\,
      CO(1) => \rp_inc_reg[8]_i_1_n_2\,
      CO(0) => \rp_inc_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rp_inc_reg[8]_i_1_n_4\,
      O(2) => \rp_inc_reg[8]_i_1_n_5\,
      O(1) => \rp_inc_reg[8]_i_1_n_6\,
      O(0) => \rp_inc_reg[8]_i_1_n_7\,
      S(3 downto 0) => rp_inc_reg(11 downto 8)
    );
\rp_inc_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => raw0_rd,
      D => \rp_inc_reg[8]_i_1_n_6\,
      Q => rp_inc_reg(9),
      R => \rp_reg[0]_0\
    );
\rp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => raw0_rd,
      D => rp_inc_reg(0),
      Q => rp(0),
      R => \rp_reg[0]_0\
    );
\rp_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => raw0_rd,
      D => rp_inc_reg(10),
      Q => rp(10),
      R => \rp_reg[0]_0\
    );
\rp_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => raw0_rd,
      D => rp_inc_reg(11),
      Q => rp(11),
      R => \rp_reg[0]_0\
    );
\rp_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => raw0_rd,
      D => rp_inc_reg(12),
      Q => rp(12),
      R => \rp_reg[0]_0\
    );
\rp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => raw0_rd,
      D => rp_inc_reg(1),
      Q => rp(1),
      R => \rp_reg[0]_0\
    );
\rp_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => raw0_rd,
      D => rp_inc_reg(2),
      Q => rp(2),
      R => \rp_reg[0]_0\
    );
\rp_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => raw0_rd,
      D => rp_inc_reg(3),
      Q => rp(3),
      R => \rp_reg[0]_0\
    );
\rp_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => raw0_rd,
      D => rp_inc_reg(4),
      Q => rp(4),
      R => \rp_reg[0]_0\
    );
\rp_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => raw0_rd,
      D => rp_inc_reg(5),
      Q => rp(5),
      R => \rp_reg[0]_0\
    );
\rp_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => raw0_rd,
      D => rp_inc_reg(6),
      Q => rp(6),
      R => \rp_reg[0]_0\
    );
\rp_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => raw0_rd,
      D => rp_inc_reg(7),
      Q => rp(7),
      R => \rp_reg[0]_0\
    );
\rp_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => raw0_rd,
      D => rp_inc_reg(8),
      Q => rp(8),
      R => \rp_reg[0]_0\
    );
\rp_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => raw0_rd,
      D => rp_inc_reg(9),
      Q => rp(9),
      R => \rp_reg[0]_0\
    );
\wp[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wp_reg(0),
      O => \wp[0]_i_3_n_0\
    );
\wp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => do_wr,
      D => \wp_reg[0]_i_2_n_7\,
      Q => wp_reg(0),
      R => \rp_reg[0]_0\
    );
\wp_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \wp_reg[0]_i_2_n_0\,
      CO(2) => \wp_reg[0]_i_2_n_1\,
      CO(1) => \wp_reg[0]_i_2_n_2\,
      CO(0) => \wp_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \wp_reg[0]_i_2_n_4\,
      O(2) => \wp_reg[0]_i_2_n_5\,
      O(1) => \wp_reg[0]_i_2_n_6\,
      O(0) => \wp_reg[0]_i_2_n_7\,
      S(3 downto 1) => wp_reg(3 downto 1),
      S(0) => \wp[0]_i_3_n_0\
    );
\wp_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => do_wr,
      D => \wp_reg[8]_i_1_n_5\,
      Q => wp_reg(10),
      R => \rp_reg[0]_0\
    );
\wp_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => do_wr,
      D => \wp_reg[8]_i_1_n_4\,
      Q => wp_reg(11),
      R => \rp_reg[0]_0\
    );
\wp_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => do_wr,
      D => \wp_reg[12]_i_1_n_7\,
      Q => wp_reg(12),
      R => \rp_reg[0]_0\
    );
\wp_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wp_reg[8]_i_1_n_0\,
      CO(3 downto 0) => \NLW_wp_reg[12]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_wp_reg[12]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \wp_reg[12]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => wp_reg(12)
    );
\wp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => do_wr,
      D => \wp_reg[0]_i_2_n_6\,
      Q => wp_reg(1),
      R => \rp_reg[0]_0\
    );
\wp_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => do_wr,
      D => \wp_reg[0]_i_2_n_5\,
      Q => wp_reg(2),
      R => \rp_reg[0]_0\
    );
\wp_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => do_wr,
      D => \wp_reg[0]_i_2_n_4\,
      Q => wp_reg(3),
      R => \rp_reg[0]_0\
    );
\wp_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => do_wr,
      D => \wp_reg[4]_i_1_n_7\,
      Q => wp_reg(4),
      R => \rp_reg[0]_0\
    );
\wp_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wp_reg[0]_i_2_n_0\,
      CO(3) => \wp_reg[4]_i_1_n_0\,
      CO(2) => \wp_reg[4]_i_1_n_1\,
      CO(1) => \wp_reg[4]_i_1_n_2\,
      CO(0) => \wp_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wp_reg[4]_i_1_n_4\,
      O(2) => \wp_reg[4]_i_1_n_5\,
      O(1) => \wp_reg[4]_i_1_n_6\,
      O(0) => \wp_reg[4]_i_1_n_7\,
      S(3 downto 0) => wp_reg(7 downto 4)
    );
\wp_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => do_wr,
      D => \wp_reg[4]_i_1_n_6\,
      Q => wp_reg(5),
      R => \rp_reg[0]_0\
    );
\wp_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => do_wr,
      D => \wp_reg[4]_i_1_n_5\,
      Q => wp_reg(6),
      R => \rp_reg[0]_0\
    );
\wp_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => do_wr,
      D => \wp_reg[4]_i_1_n_4\,
      Q => wp_reg(7),
      R => \rp_reg[0]_0\
    );
\wp_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => do_wr,
      D => \wp_reg[8]_i_1_n_7\,
      Q => wp_reg(8),
      R => \rp_reg[0]_0\
    );
\wp_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wp_reg[4]_i_1_n_0\,
      CO(3) => \wp_reg[8]_i_1_n_0\,
      CO(2) => \wp_reg[8]_i_1_n_1\,
      CO(1) => \wp_reg[8]_i_1_n_2\,
      CO(0) => \wp_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wp_reg[8]_i_1_n_4\,
      O(2) => \wp_reg[8]_i_1_n_5\,
      O(1) => \wp_reg[8]_i_1_n_6\,
      O(0) => \wp_reg[8]_i_1_n_7\,
      S(3 downto 0) => wp_reg(11 downto 8)
    );
\wp_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => do_wr,
      D => \wp_reg[8]_i_1_n_6\,
      Q => wp_reg(9),
      R => \rp_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_cam_input_0_0_byte_fifo_3 is
  port (
    c1_afull : out STD_LOGIC;
    \en_sync_reg[2]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 13 downto 0 );
    raw1_dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    do_wr : in STD_LOGIC;
    raw1_rd : in STD_LOGIC;
    c1_wr : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    din : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_cam_input_0_0_byte_fifo_3 : entity is "byte_fifo";
end system_cam_input_0_0_byte_fifo_3;

architecture STRUCTURE of system_cam_input_0_0_byte_fifo_3 is
  signal \^q\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \almost_full_i_1__0_n_0\ : STD_LOGIC;
  signal \almost_full_i_2__0_n_0\ : STD_LOGIC;
  signal \count0_carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \count0_carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \count0_carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \count0_carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \count0_carry__0_n_0\ : STD_LOGIC;
  signal \count0_carry__0_n_1\ : STD_LOGIC;
  signal \count0_carry__0_n_2\ : STD_LOGIC;
  signal \count0_carry__0_n_3\ : STD_LOGIC;
  signal \count0_carry__0_n_4\ : STD_LOGIC;
  signal \count0_carry__0_n_5\ : STD_LOGIC;
  signal \count0_carry__0_n_6\ : STD_LOGIC;
  signal \count0_carry__0_n_7\ : STD_LOGIC;
  signal \count0_carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \count0_carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \count0_carry__1_i_3__0_n_0\ : STD_LOGIC;
  signal \count0_carry__1_i_4__0_n_0\ : STD_LOGIC;
  signal \count0_carry__1_n_0\ : STD_LOGIC;
  signal \count0_carry__1_n_1\ : STD_LOGIC;
  signal \count0_carry__1_n_2\ : STD_LOGIC;
  signal \count0_carry__1_n_3\ : STD_LOGIC;
  signal \count0_carry__1_n_4\ : STD_LOGIC;
  signal \count0_carry__1_n_5\ : STD_LOGIC;
  signal \count0_carry__1_n_6\ : STD_LOGIC;
  signal \count0_carry__1_n_7\ : STD_LOGIC;
  signal \count0_carry__2_i_1__0_n_0\ : STD_LOGIC;
  signal \count0_carry__2_i_2__0_n_0\ : STD_LOGIC;
  signal \count0_carry__2_n_3\ : STD_LOGIC;
  signal \count0_carry__2_n_6\ : STD_LOGIC;
  signal \count0_carry__2_n_7\ : STD_LOGIC;
  signal \count0_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \count0_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \count0_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \count0_carry_i_4__0_n_0\ : STD_LOGIC;
  signal \count0_carry_i_5__0_n_0\ : STD_LOGIC;
  signal \count0_carry_i_6__0_n_0\ : STD_LOGIC;
  signal count0_carry_n_0 : STD_LOGIC;
  signal count0_carry_n_1 : STD_LOGIC;
  signal count0_carry_n_2 : STD_LOGIC;
  signal count0_carry_n_3 : STD_LOGIC;
  signal count0_carry_n_4 : STD_LOGIC;
  signal count0_carry_n_5 : STD_LOGIC;
  signal count0_carry_n_6 : STD_LOGIC;
  signal count0_carry_n_7 : STD_LOGIC;
  signal \^en_sync_reg[2]\ : STD_LOGIC;
  signal \mem_reg_1_i_14__0_n_0\ : STD_LOGIC;
  signal raddr : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal rp : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \rp_inc[0]_i_2__0_n_0\ : STD_LOGIC;
  signal rp_inc_reg : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \rp_inc_reg[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \rp_inc_reg[0]_i_1__0_n_1\ : STD_LOGIC;
  signal \rp_inc_reg[0]_i_1__0_n_2\ : STD_LOGIC;
  signal \rp_inc_reg[0]_i_1__0_n_3\ : STD_LOGIC;
  signal \rp_inc_reg[0]_i_1__0_n_4\ : STD_LOGIC;
  signal \rp_inc_reg[0]_i_1__0_n_5\ : STD_LOGIC;
  signal \rp_inc_reg[0]_i_1__0_n_6\ : STD_LOGIC;
  signal \rp_inc_reg[0]_i_1__0_n_7\ : STD_LOGIC;
  signal \rp_inc_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \rp_inc_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \rp_inc_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \rp_inc_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \rp_inc_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \rp_inc_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \rp_inc_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \rp_inc_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \rp_inc_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \rp_inc_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \rp_inc_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \rp_inc_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \rp_inc_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \rp_inc_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \rp_inc_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \rp_inc_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \rp_inc_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \wp[0]_i_3__0_n_0\ : STD_LOGIC;
  signal wp_reg : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \wp_reg[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \wp_reg[0]_i_2__0_n_1\ : STD_LOGIC;
  signal \wp_reg[0]_i_2__0_n_2\ : STD_LOGIC;
  signal \wp_reg[0]_i_2__0_n_3\ : STD_LOGIC;
  signal \wp_reg[0]_i_2__0_n_4\ : STD_LOGIC;
  signal \wp_reg[0]_i_2__0_n_5\ : STD_LOGIC;
  signal \wp_reg[0]_i_2__0_n_6\ : STD_LOGIC;
  signal \wp_reg[0]_i_2__0_n_7\ : STD_LOGIC;
  signal \wp_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \wp_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \wp_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \wp_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \wp_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \wp_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \wp_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \wp_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \wp_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \wp_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \wp_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \wp_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \wp_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \wp_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \wp_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \wp_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \wp_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \NLW_count0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_count0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_0_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 4 );
  signal NLW_mem_reg_0_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_0_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_1_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_1_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 4 );
  signal NLW_mem_reg_1_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_1_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_1_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_1_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_rp_inc_reg[12]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rp_inc_reg[12]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_wp_reg[12]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_wp_reg[12]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of count0_carry : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__2\ : label is 35;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_0 : label is "p0_d4";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_0 : label is "p0_d4";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg_0 : label is 65536;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg_0 : label is "system_cam_input_0_0/inst/u_cfifo1/mem_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of mem_reg_0 : label is "auto";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of mem_reg_0 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg_0 : label is 8191;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg_0 : label is 3;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_1 : label is "p0_d4";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_1 : label is "p0_d4";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_1 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of mem_reg_1 : label is 65536;
  attribute RTL_RAM_NAME of mem_reg_1 : label is "system_cam_input_0_0/inst/u_cfifo1/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_1 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_1 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_1 : label is 0;
  attribute ram_addr_end of mem_reg_1 : label is 8191;
  attribute ram_offset of mem_reg_1 : label is 0;
  attribute ram_slice_begin of mem_reg_1 : label is 4;
  attribute ram_slice_end of mem_reg_1 : label is 7;
  attribute ADDER_THRESHOLD of \rp_inc_reg[0]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \rp_inc_reg[12]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \rp_inc_reg[4]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \rp_inc_reg[8]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \wp_reg[0]_i_2__0\ : label is 35;
  attribute ADDER_THRESHOLD of \wp_reg[12]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \wp_reg[4]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \wp_reg[8]_i_1__0\ : label is 35;
begin
  Q(13 downto 0) <= \^q\(13 downto 0);
  \en_sync_reg[2]\ <= \^en_sync_reg[2]\;
\almost_full_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAAAAAA"
    )
        port map (
      I0 => \^q\(13),
      I1 => \almost_full_i_2__0_n_0\,
      I2 => \^q\(9),
      I3 => \^q\(11),
      I4 => \^q\(5),
      O => \almost_full_i_1__0_n_0\
    );
\almost_full_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(4),
      I2 => \^q\(10),
      I3 => \^q\(12),
      I4 => \^q\(6),
      I5 => \^q\(7),
      O => \almost_full_i_2__0_n_0\
    );
almost_full_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \almost_full_i_1__0_n_0\,
      Q => c1_afull,
      R => \^en_sync_reg[2]\
    );
cap_rst_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \out\(0),
      O => \^en_sync_reg[2]\
    );
count0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count0_carry_n_0,
      CO(2) => count0_carry_n_1,
      CO(1) => count0_carry_n_2,
      CO(0) => count0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => \^q\(2 downto 1),
      DI(1) => \count0_carry_i_1__0_n_0\,
      DI(0) => \count0_carry_i_2__0_n_0\,
      O(3) => count0_carry_n_4,
      O(2) => count0_carry_n_5,
      O(1) => count0_carry_n_6,
      O(0) => count0_carry_n_7,
      S(3) => \count0_carry_i_3__0_n_0\,
      S(2) => \count0_carry_i_4__0_n_0\,
      S(1) => \count0_carry_i_5__0_n_0\,
      S(0) => \count0_carry_i_6__0_n_0\
    );
\count0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count0_carry_n_0,
      CO(3) => \count0_carry__0_n_0\,
      CO(2) => \count0_carry__0_n_1\,
      CO(1) => \count0_carry__0_n_2\,
      CO(0) => \count0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(6 downto 3),
      O(3) => \count0_carry__0_n_4\,
      O(2) => \count0_carry__0_n_5\,
      O(1) => \count0_carry__0_n_6\,
      O(0) => \count0_carry__0_n_7\,
      S(3) => \count0_carry__0_i_1__0_n_0\,
      S(2) => \count0_carry__0_i_2__0_n_0\,
      S(1) => \count0_carry__0_i_3__0_n_0\,
      S(0) => \count0_carry__0_i_4__0_n_0\
    );
\count0_carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(7),
      O => \count0_carry__0_i_1__0_n_0\
    );
\count0_carry__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(6),
      O => \count0_carry__0_i_2__0_n_0\
    );
\count0_carry__0_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      O => \count0_carry__0_i_3__0_n_0\
    );
\count0_carry__0_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      O => \count0_carry__0_i_4__0_n_0\
    );
\count0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__0_n_0\,
      CO(3) => \count0_carry__1_n_0\,
      CO(2) => \count0_carry__1_n_1\,
      CO(1) => \count0_carry__1_n_2\,
      CO(0) => \count0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(10 downto 7),
      O(3) => \count0_carry__1_n_4\,
      O(2) => \count0_carry__1_n_5\,
      O(1) => \count0_carry__1_n_6\,
      O(0) => \count0_carry__1_n_7\,
      S(3) => \count0_carry__1_i_1__0_n_0\,
      S(2) => \count0_carry__1_i_2__0_n_0\,
      S(1) => \count0_carry__1_i_3__0_n_0\,
      S(0) => \count0_carry__1_i_4__0_n_0\
    );
\count0_carry__1_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^q\(11),
      O => \count0_carry__1_i_1__0_n_0\
    );
\count0_carry__1_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(10),
      O => \count0_carry__1_i_2__0_n_0\
    );
\count0_carry__1_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(9),
      O => \count0_carry__1_i_3__0_n_0\
    );
\count0_carry__1_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(8),
      O => \count0_carry__1_i_4__0_n_0\
    );
\count0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__1_n_0\,
      CO(3 downto 1) => \NLW_count0_carry__2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \count0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^q\(11),
      O(3 downto 2) => \NLW_count0_carry__2_O_UNCONNECTED\(3 downto 2),
      O(1) => \count0_carry__2_n_6\,
      O(0) => \count0_carry__2_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \count0_carry__2_i_1__0_n_0\,
      S(0) => \count0_carry__2_i_2__0_n_0\
    );
\count0_carry__2_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(12),
      I1 => \^q\(13),
      O => \count0_carry__2_i_1__0_n_0\
    );
\count0_carry__2_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(11),
      I1 => \^q\(12),
      O => \count0_carry__2_i_2__0_n_0\
    );
\count0_carry_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(13),
      I2 => c1_wr,
      O => \count0_carry_i_1__0_n_0\
    );
\count0_carry_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2D"
    )
        port map (
      I0 => c1_wr,
      I1 => \^q\(13),
      I2 => \^q\(0),
      O => \count0_carry_i_2__0_n_0\
    );
\count0_carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => \count0_carry_i_3__0_n_0\
    );
\count0_carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      O => \count0_carry_i_4__0_n_0\
    );
\count0_carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F20D"
    )
        port map (
      I0 => c1_wr,
      I1 => \^q\(13),
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => \count0_carry_i_5__0_n_0\
    );
\count0_carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"659A"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(13),
      I2 => c1_wr,
      I3 => raw1_rd,
      O => \count0_carry_i_6__0_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => count0_carry_n_7,
      Q => \^q\(0),
      R => \^en_sync_reg[2]\
    );
\count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count0_carry__1_n_5\,
      Q => \^q\(10),
      R => \^en_sync_reg[2]\
    );
\count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count0_carry__1_n_4\,
      Q => \^q\(11),
      R => \^en_sync_reg[2]\
    );
\count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count0_carry__2_n_7\,
      Q => \^q\(12),
      R => \^en_sync_reg[2]\
    );
\count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count0_carry__2_n_6\,
      Q => \^q\(13),
      R => \^en_sync_reg[2]\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => count0_carry_n_6,
      Q => \^q\(1),
      R => \^en_sync_reg[2]\
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => count0_carry_n_5,
      Q => \^q\(2),
      R => \^en_sync_reg[2]\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => count0_carry_n_4,
      Q => \^q\(3),
      R => \^en_sync_reg[2]\
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count0_carry__0_n_7\,
      Q => \^q\(4),
      R => \^en_sync_reg[2]\
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count0_carry__0_n_6\,
      Q => \^q\(5),
      R => \^en_sync_reg[2]\
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count0_carry__0_n_5\,
      Q => \^q\(6),
      R => \^en_sync_reg[2]\
    );
\count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count0_carry__0_n_4\,
      Q => \^q\(7),
      R => \^en_sync_reg[2]\
    );
\count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count0_carry__1_n_7\,
      Q => \^q\(8),
      R => \^en_sync_reg[2]\
    );
\count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count0_carry__1_n_6\,
      Q => \^q\(9),
      R => \^en_sync_reg[2]\
    );
mem_reg_0: unisim.vcomponents.RAMB36E1
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
      READ_WIDTH_A => 4,
      READ_WIDTH_B => 4,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 4,
      WRITE_WIDTH_B => 4
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 2) => wp_reg(12 downto 0),
      ADDRARDADDR(1 downto 0) => B"11",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 2) => raddr(12 downto 0),
      ADDRBWRADDR(1 downto 0) => B"11",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => NLW_mem_reg_0_DBITERR_UNCONNECTED,
      DIADI(31 downto 4) => B"0000000000000000000000000000",
      DIADI(3 downto 0) => din(3 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000001111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_0_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 4) => NLW_mem_reg_0_DOBDO_UNCONNECTED(31 downto 4),
      DOBDO(3 downto 0) => raw1_dout(3 downto 0),
      DOPADOP(3 downto 0) => NLW_mem_reg_0_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_0_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_0_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => c1_wr,
      ENBWREN => '1',
      INJECTDBITERR => NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_0_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_0_SBITERR_UNCONNECTED,
      WEA(3) => \mem_reg_1_i_14__0_n_0\,
      WEA(2) => \mem_reg_1_i_14__0_n_0\,
      WEA(1) => \mem_reg_1_i_14__0_n_0\,
      WEA(0) => \mem_reg_1_i_14__0_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_1: unisim.vcomponents.RAMB36E1
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
      READ_WIDTH_A => 4,
      READ_WIDTH_B => 4,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 4,
      WRITE_WIDTH_B => 4
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 2) => wp_reg(12 downto 0),
      ADDRARDADDR(1 downto 0) => B"11",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 2) => raddr(12 downto 0),
      ADDRBWRADDR(1 downto 0) => B"11",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_1_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_1_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => NLW_mem_reg_1_DBITERR_UNCONNECTED,
      DIADI(31 downto 4) => B"0000000000000000000000000000",
      DIADI(3 downto 0) => din(7 downto 4),
      DIBDI(31 downto 0) => B"00000000000000000000000000001111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_1_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 4) => NLW_mem_reg_1_DOBDO_UNCONNECTED(31 downto 4),
      DOBDO(3 downto 0) => raw1_dout(7 downto 4),
      DOPADOP(3 downto 0) => NLW_mem_reg_1_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_1_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_1_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => c1_wr,
      ENBWREN => '1',
      INJECTDBITERR => NLW_mem_reg_1_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_1_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_1_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_1_SBITERR_UNCONNECTED,
      WEA(3) => \mem_reg_1_i_14__0_n_0\,
      WEA(2) => \mem_reg_1_i_14__0_n_0\,
      WEA(1) => \mem_reg_1_i_14__0_n_0\,
      WEA(0) => \mem_reg_1_i_14__0_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
\mem_reg_1_i_10__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rp_inc_reg(3),
      I1 => raw1_rd,
      I2 => rp(3),
      O => raddr(3)
    );
\mem_reg_1_i_11__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rp_inc_reg(2),
      I1 => raw1_rd,
      I2 => rp(2),
      O => raddr(2)
    );
\mem_reg_1_i_12__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rp_inc_reg(1),
      I1 => raw1_rd,
      I2 => rp(1),
      O => raddr(1)
    );
\mem_reg_1_i_13__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rp_inc_reg(0),
      I1 => raw1_rd,
      I2 => rp(0),
      O => raddr(0)
    );
\mem_reg_1_i_14__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(13),
      O => \mem_reg_1_i_14__0_n_0\
    );
\mem_reg_1_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rp_inc_reg(12),
      I1 => raw1_rd,
      I2 => rp(12),
      O => raddr(12)
    );
\mem_reg_1_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rp_inc_reg(11),
      I1 => raw1_rd,
      I2 => rp(11),
      O => raddr(11)
    );
\mem_reg_1_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rp_inc_reg(10),
      I1 => raw1_rd,
      I2 => rp(10),
      O => raddr(10)
    );
\mem_reg_1_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rp_inc_reg(9),
      I1 => raw1_rd,
      I2 => rp(9),
      O => raddr(9)
    );
\mem_reg_1_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rp_inc_reg(8),
      I1 => raw1_rd,
      I2 => rp(8),
      O => raddr(8)
    );
\mem_reg_1_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rp_inc_reg(7),
      I1 => raw1_rd,
      I2 => rp(7),
      O => raddr(7)
    );
\mem_reg_1_i_7__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rp_inc_reg(6),
      I1 => raw1_rd,
      I2 => rp(6),
      O => raddr(6)
    );
\mem_reg_1_i_8__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rp_inc_reg(5),
      I1 => raw1_rd,
      I2 => rp(5),
      O => raddr(5)
    );
\mem_reg_1_i_9__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rp_inc_reg(4),
      I1 => raw1_rd,
      I2 => rp(4),
      O => raddr(4)
    );
\rp_inc[0]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rp_inc_reg(0),
      O => \rp_inc[0]_i_2__0_n_0\
    );
\rp_inc_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => raw1_rd,
      D => \rp_inc_reg[0]_i_1__0_n_7\,
      Q => rp_inc_reg(0),
      S => \^en_sync_reg[2]\
    );
\rp_inc_reg[0]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rp_inc_reg[0]_i_1__0_n_0\,
      CO(2) => \rp_inc_reg[0]_i_1__0_n_1\,
      CO(1) => \rp_inc_reg[0]_i_1__0_n_2\,
      CO(0) => \rp_inc_reg[0]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \rp_inc_reg[0]_i_1__0_n_4\,
      O(2) => \rp_inc_reg[0]_i_1__0_n_5\,
      O(1) => \rp_inc_reg[0]_i_1__0_n_6\,
      O(0) => \rp_inc_reg[0]_i_1__0_n_7\,
      S(3 downto 1) => rp_inc_reg(3 downto 1),
      S(0) => \rp_inc[0]_i_2__0_n_0\
    );
\rp_inc_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => raw1_rd,
      D => \rp_inc_reg[8]_i_1__0_n_5\,
      Q => rp_inc_reg(10),
      R => \^en_sync_reg[2]\
    );
\rp_inc_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => raw1_rd,
      D => \rp_inc_reg[8]_i_1__0_n_4\,
      Q => rp_inc_reg(11),
      R => \^en_sync_reg[2]\
    );
\rp_inc_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => raw1_rd,
      D => \rp_inc_reg[12]_i_1__0_n_7\,
      Q => rp_inc_reg(12),
      R => \^en_sync_reg[2]\
    );
\rp_inc_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \rp_inc_reg[8]_i_1__0_n_0\,
      CO(3 downto 0) => \NLW_rp_inc_reg[12]_i_1__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_rp_inc_reg[12]_i_1__0_O_UNCONNECTED\(3 downto 1),
      O(0) => \rp_inc_reg[12]_i_1__0_n_7\,
      S(3 downto 1) => B"000",
      S(0) => rp_inc_reg(12)
    );
\rp_inc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => raw1_rd,
      D => \rp_inc_reg[0]_i_1__0_n_6\,
      Q => rp_inc_reg(1),
      R => \^en_sync_reg[2]\
    );
\rp_inc_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => raw1_rd,
      D => \rp_inc_reg[0]_i_1__0_n_5\,
      Q => rp_inc_reg(2),
      R => \^en_sync_reg[2]\
    );
\rp_inc_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => raw1_rd,
      D => \rp_inc_reg[0]_i_1__0_n_4\,
      Q => rp_inc_reg(3),
      R => \^en_sync_reg[2]\
    );
\rp_inc_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => raw1_rd,
      D => \rp_inc_reg[4]_i_1__0_n_7\,
      Q => rp_inc_reg(4),
      R => \^en_sync_reg[2]\
    );
\rp_inc_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \rp_inc_reg[0]_i_1__0_n_0\,
      CO(3) => \rp_inc_reg[4]_i_1__0_n_0\,
      CO(2) => \rp_inc_reg[4]_i_1__0_n_1\,
      CO(1) => \rp_inc_reg[4]_i_1__0_n_2\,
      CO(0) => \rp_inc_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rp_inc_reg[4]_i_1__0_n_4\,
      O(2) => \rp_inc_reg[4]_i_1__0_n_5\,
      O(1) => \rp_inc_reg[4]_i_1__0_n_6\,
      O(0) => \rp_inc_reg[4]_i_1__0_n_7\,
      S(3 downto 0) => rp_inc_reg(7 downto 4)
    );
\rp_inc_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => raw1_rd,
      D => \rp_inc_reg[4]_i_1__0_n_6\,
      Q => rp_inc_reg(5),
      R => \^en_sync_reg[2]\
    );
\rp_inc_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => raw1_rd,
      D => \rp_inc_reg[4]_i_1__0_n_5\,
      Q => rp_inc_reg(6),
      R => \^en_sync_reg[2]\
    );
\rp_inc_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => raw1_rd,
      D => \rp_inc_reg[4]_i_1__0_n_4\,
      Q => rp_inc_reg(7),
      R => \^en_sync_reg[2]\
    );
\rp_inc_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => raw1_rd,
      D => \rp_inc_reg[8]_i_1__0_n_7\,
      Q => rp_inc_reg(8),
      R => \^en_sync_reg[2]\
    );
\rp_inc_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \rp_inc_reg[4]_i_1__0_n_0\,
      CO(3) => \rp_inc_reg[8]_i_1__0_n_0\,
      CO(2) => \rp_inc_reg[8]_i_1__0_n_1\,
      CO(1) => \rp_inc_reg[8]_i_1__0_n_2\,
      CO(0) => \rp_inc_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rp_inc_reg[8]_i_1__0_n_4\,
      O(2) => \rp_inc_reg[8]_i_1__0_n_5\,
      O(1) => \rp_inc_reg[8]_i_1__0_n_6\,
      O(0) => \rp_inc_reg[8]_i_1__0_n_7\,
      S(3 downto 0) => rp_inc_reg(11 downto 8)
    );
\rp_inc_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => raw1_rd,
      D => \rp_inc_reg[8]_i_1__0_n_6\,
      Q => rp_inc_reg(9),
      R => \^en_sync_reg[2]\
    );
\rp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => raw1_rd,
      D => rp_inc_reg(0),
      Q => rp(0),
      R => \^en_sync_reg[2]\
    );
\rp_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => raw1_rd,
      D => rp_inc_reg(10),
      Q => rp(10),
      R => \^en_sync_reg[2]\
    );
\rp_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => raw1_rd,
      D => rp_inc_reg(11),
      Q => rp(11),
      R => \^en_sync_reg[2]\
    );
\rp_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => raw1_rd,
      D => rp_inc_reg(12),
      Q => rp(12),
      R => \^en_sync_reg[2]\
    );
\rp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => raw1_rd,
      D => rp_inc_reg(1),
      Q => rp(1),
      R => \^en_sync_reg[2]\
    );
\rp_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => raw1_rd,
      D => rp_inc_reg(2),
      Q => rp(2),
      R => \^en_sync_reg[2]\
    );
\rp_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => raw1_rd,
      D => rp_inc_reg(3),
      Q => rp(3),
      R => \^en_sync_reg[2]\
    );
\rp_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => raw1_rd,
      D => rp_inc_reg(4),
      Q => rp(4),
      R => \^en_sync_reg[2]\
    );
\rp_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => raw1_rd,
      D => rp_inc_reg(5),
      Q => rp(5),
      R => \^en_sync_reg[2]\
    );
\rp_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => raw1_rd,
      D => rp_inc_reg(6),
      Q => rp(6),
      R => \^en_sync_reg[2]\
    );
\rp_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => raw1_rd,
      D => rp_inc_reg(7),
      Q => rp(7),
      R => \^en_sync_reg[2]\
    );
\rp_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => raw1_rd,
      D => rp_inc_reg(8),
      Q => rp(8),
      R => \^en_sync_reg[2]\
    );
\rp_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => raw1_rd,
      D => rp_inc_reg(9),
      Q => rp(9),
      R => \^en_sync_reg[2]\
    );
\wp[0]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wp_reg(0),
      O => \wp[0]_i_3__0_n_0\
    );
\wp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => do_wr,
      D => \wp_reg[0]_i_2__0_n_7\,
      Q => wp_reg(0),
      R => \^en_sync_reg[2]\
    );
\wp_reg[0]_i_2__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \wp_reg[0]_i_2__0_n_0\,
      CO(2) => \wp_reg[0]_i_2__0_n_1\,
      CO(1) => \wp_reg[0]_i_2__0_n_2\,
      CO(0) => \wp_reg[0]_i_2__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \wp_reg[0]_i_2__0_n_4\,
      O(2) => \wp_reg[0]_i_2__0_n_5\,
      O(1) => \wp_reg[0]_i_2__0_n_6\,
      O(0) => \wp_reg[0]_i_2__0_n_7\,
      S(3 downto 1) => wp_reg(3 downto 1),
      S(0) => \wp[0]_i_3__0_n_0\
    );
\wp_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => do_wr,
      D => \wp_reg[8]_i_1__0_n_5\,
      Q => wp_reg(10),
      R => \^en_sync_reg[2]\
    );
\wp_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => do_wr,
      D => \wp_reg[8]_i_1__0_n_4\,
      Q => wp_reg(11),
      R => \^en_sync_reg[2]\
    );
\wp_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => do_wr,
      D => \wp_reg[12]_i_1__0_n_7\,
      Q => wp_reg(12),
      R => \^en_sync_reg[2]\
    );
\wp_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \wp_reg[8]_i_1__0_n_0\,
      CO(3 downto 0) => \NLW_wp_reg[12]_i_1__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_wp_reg[12]_i_1__0_O_UNCONNECTED\(3 downto 1),
      O(0) => \wp_reg[12]_i_1__0_n_7\,
      S(3 downto 1) => B"000",
      S(0) => wp_reg(12)
    );
\wp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => do_wr,
      D => \wp_reg[0]_i_2__0_n_6\,
      Q => wp_reg(1),
      R => \^en_sync_reg[2]\
    );
\wp_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => do_wr,
      D => \wp_reg[0]_i_2__0_n_5\,
      Q => wp_reg(2),
      R => \^en_sync_reg[2]\
    );
\wp_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => do_wr,
      D => \wp_reg[0]_i_2__0_n_4\,
      Q => wp_reg(3),
      R => \^en_sync_reg[2]\
    );
\wp_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => do_wr,
      D => \wp_reg[4]_i_1__0_n_7\,
      Q => wp_reg(4),
      R => \^en_sync_reg[2]\
    );
\wp_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \wp_reg[0]_i_2__0_n_0\,
      CO(3) => \wp_reg[4]_i_1__0_n_0\,
      CO(2) => \wp_reg[4]_i_1__0_n_1\,
      CO(1) => \wp_reg[4]_i_1__0_n_2\,
      CO(0) => \wp_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wp_reg[4]_i_1__0_n_4\,
      O(2) => \wp_reg[4]_i_1__0_n_5\,
      O(1) => \wp_reg[4]_i_1__0_n_6\,
      O(0) => \wp_reg[4]_i_1__0_n_7\,
      S(3 downto 0) => wp_reg(7 downto 4)
    );
\wp_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => do_wr,
      D => \wp_reg[4]_i_1__0_n_6\,
      Q => wp_reg(5),
      R => \^en_sync_reg[2]\
    );
\wp_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => do_wr,
      D => \wp_reg[4]_i_1__0_n_5\,
      Q => wp_reg(6),
      R => \^en_sync_reg[2]\
    );
\wp_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => do_wr,
      D => \wp_reg[4]_i_1__0_n_4\,
      Q => wp_reg(7),
      R => \^en_sync_reg[2]\
    );
\wp_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => do_wr,
      D => \wp_reg[8]_i_1__0_n_7\,
      Q => wp_reg(8),
      R => \^en_sync_reg[2]\
    );
\wp_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \wp_reg[4]_i_1__0_n_0\,
      CO(3) => \wp_reg[8]_i_1__0_n_0\,
      CO(2) => \wp_reg[8]_i_1__0_n_1\,
      CO(1) => \wp_reg[8]_i_1__0_n_2\,
      CO(0) => \wp_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wp_reg[8]_i_1__0_n_4\,
      O(2) => \wp_reg[8]_i_1__0_n_5\,
      O(1) => \wp_reg[8]_i_1__0_n_6\,
      O(0) => \wp_reg[8]_i_1__0_n_7\,
      S(3 downto 0) => wp_reg(11 downto 8)
    );
\wp_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => do_wr,
      D => \wp_reg[8]_i_1__0_n_6\,
      Q => wp_reg(9),
      R => \^en_sync_reg[2]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_cam_input_0_0_cam_capture is
  port (
    s0_stb : out STD_LOGIC;
    s0_vsync : out STD_LOGIC;
    s0_href : out STD_LOGIC;
    frame_led0 : out STD_LOGIC;
    c0_wr : out STD_LOGIC;
    do_wr : out STD_LOGIC;
    vsync_d_reg : out STD_LOGIC;
    \en_sync_reg[2]\ : out STD_LOGIC;
    href_d : out STD_LOGIC;
    second : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \en_sync_reg[2]_0\ : out STD_LOGIC;
    stb_reg_0 : out STD_LOGIC;
    stb_reg_1 : out STD_LOGIC;
    \d_q_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \start_us_reg[23]_0\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    href_q_reg_0 : out STD_LOGIC;
    vsync_q_reg_0 : out STD_LOGIC;
    \fifo_din_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    cam_d : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    \state_reg[0]_0\ : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    vsync_d : in STD_LOGIC;
    c0_afull : in STD_LOGIC;
    \px_reg[1]\ : in STD_LOGIC;
    href_d_reg : in STD_LOGIC;
    tick : in STD_LOGIC;
    cam_pclk : in STD_LOGIC;
    cam_vsync : in STD_LOGIC;
    cam_href : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \h_tof_mm_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \h_tof_seq_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \h_tof_us_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_cam_input_0_0_cam_capture : entity is "cam_capture";
end system_cam_input_0_0_cam_capture;

architecture STRUCTURE of system_cam_input_0_0_cam_capture is
  signal \^c0_wr\ : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal d_h0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal d_h1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal d_m0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute async_reg : string;
  attribute async_reg of d_m0 : signal is "true";
  signal d_m1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute async_reg of d_m1 : signal is "true";
  signal \^d_q_reg[7]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data14 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data16 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data19 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data20 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data21 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data3 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data5 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data7 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data9 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal fifo_din : STD_LOGIC;
  signal \fifo_din[0]_i_10_n_0\ : STD_LOGIC;
  signal \fifo_din[0]_i_11_n_0\ : STD_LOGIC;
  signal \fifo_din[0]_i_12_n_0\ : STD_LOGIC;
  signal \fifo_din[0]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[0]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_din[0]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_din[0]_i_4_n_0\ : STD_LOGIC;
  signal \fifo_din[0]_i_6_n_0\ : STD_LOGIC;
  signal \fifo_din[0]_i_7_n_0\ : STD_LOGIC;
  signal \fifo_din[0]_i_8_n_0\ : STD_LOGIC;
  signal \fifo_din[0]_i_9_n_0\ : STD_LOGIC;
  signal \fifo_din[1]_i_10_n_0\ : STD_LOGIC;
  signal \fifo_din[1]_i_11_n_0\ : STD_LOGIC;
  signal \fifo_din[1]_i_12_n_0\ : STD_LOGIC;
  signal \fifo_din[1]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[1]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_din[1]_i_4__0_n_0\ : STD_LOGIC;
  signal \fifo_din[1]_i_5_n_0\ : STD_LOGIC;
  signal \fifo_din[1]_i_6_n_0\ : STD_LOGIC;
  signal \fifo_din[1]_i_7_n_0\ : STD_LOGIC;
  signal \fifo_din[1]_i_8_n_0\ : STD_LOGIC;
  signal \fifo_din[1]_i_9_n_0\ : STD_LOGIC;
  signal \fifo_din[2]_i_10__0_n_0\ : STD_LOGIC;
  signal \fifo_din[2]_i_11_n_0\ : STD_LOGIC;
  signal \fifo_din[2]_i_12_n_0\ : STD_LOGIC;
  signal \fifo_din[2]_i_13_n_0\ : STD_LOGIC;
  signal \fifo_din[2]_i_14_n_0\ : STD_LOGIC;
  signal \fifo_din[2]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[2]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_din[2]_i_7_n_0\ : STD_LOGIC;
  signal \fifo_din[2]_i_8_n_0\ : STD_LOGIC;
  signal \fifo_din[2]_i_9_n_0\ : STD_LOGIC;
  signal \fifo_din[3]_i_10_n_0\ : STD_LOGIC;
  signal \fifo_din[3]_i_11_n_0\ : STD_LOGIC;
  signal \fifo_din[3]_i_12_n_0\ : STD_LOGIC;
  signal \fifo_din[3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_din[3]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_din[3]_i_4_n_0\ : STD_LOGIC;
  signal \fifo_din[3]_i_6_n_0\ : STD_LOGIC;
  signal \fifo_din[3]_i_7_n_0\ : STD_LOGIC;
  signal \fifo_din[3]_i_8_n_0\ : STD_LOGIC;
  signal \fifo_din[3]_i_9_n_0\ : STD_LOGIC;
  signal \fifo_din[4]_i_10_n_0\ : STD_LOGIC;
  signal \fifo_din[4]_i_11_n_0\ : STD_LOGIC;
  signal \fifo_din[4]_i_12_n_0\ : STD_LOGIC;
  signal \fifo_din[4]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[4]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_din[4]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_din[4]_i_4_n_0\ : STD_LOGIC;
  signal \fifo_din[4]_i_5_n_0\ : STD_LOGIC;
  signal \fifo_din[4]_i_6_n_0\ : STD_LOGIC;
  signal \fifo_din[4]_i_7_n_0\ : STD_LOGIC;
  signal \fifo_din[4]_i_8_n_0\ : STD_LOGIC;
  signal \fifo_din[4]_i_9_n_0\ : STD_LOGIC;
  signal \fifo_din[5]_i_10_n_0\ : STD_LOGIC;
  signal \fifo_din[5]_i_11_n_0\ : STD_LOGIC;
  signal \fifo_din[5]_i_12_n_0\ : STD_LOGIC;
  signal \fifo_din[5]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[5]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_din[5]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_din[5]_i_5_n_0\ : STD_LOGIC;
  signal \fifo_din[5]_i_6_n_0\ : STD_LOGIC;
  signal \fifo_din[5]_i_7_n_0\ : STD_LOGIC;
  signal \fifo_din[5]_i_8_n_0\ : STD_LOGIC;
  signal \fifo_din[5]_i_9_n_0\ : STD_LOGIC;
  signal \fifo_din[6]_i_10_n_0\ : STD_LOGIC;
  signal \fifo_din[6]_i_11_n_0\ : STD_LOGIC;
  signal \fifo_din[6]_i_12_n_0\ : STD_LOGIC;
  signal \fifo_din[6]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_din[6]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_din[6]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_din[6]_i_4_n_0\ : STD_LOGIC;
  signal \fifo_din[6]_i_6_n_0\ : STD_LOGIC;
  signal \fifo_din[6]_i_7_n_0\ : STD_LOGIC;
  signal \fifo_din[6]_i_8_n_0\ : STD_LOGIC;
  signal \fifo_din[6]_i_9_n_0\ : STD_LOGIC;
  signal \fifo_din[7]_i_10_n_0\ : STD_LOGIC;
  signal \fifo_din[7]_i_11_n_0\ : STD_LOGIC;
  signal \fifo_din[7]_i_12_n_0\ : STD_LOGIC;
  signal \fifo_din[7]_i_13_n_0\ : STD_LOGIC;
  signal \fifo_din[7]_i_14_n_0\ : STD_LOGIC;
  signal \fifo_din[7]_i_15_n_0\ : STD_LOGIC;
  signal \fifo_din[7]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_din[7]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_din[7]_i_4_n_0\ : STD_LOGIC;
  signal \fifo_din[7]_i_5_n_0\ : STD_LOGIC;
  signal \fifo_din[7]_i_6_n_0\ : STD_LOGIC;
  signal \fifo_din[7]_i_7_n_0\ : STD_LOGIC;
  signal \fifo_din[7]_i_9_n_0\ : STD_LOGIC;
  signal \fifo_din_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \fifo_din_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_din_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_din_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \fifo_din_reg[2]_i_5_n_0\ : STD_LOGIC;
  signal \fifo_din_reg[2]_i_6_n_0\ : STD_LOGIC;
  signal \fifo_din_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \fifo_din_reg[5]_i_4_n_0\ : STD_LOGIC;
  signal \fifo_din_reg[6]_i_5_n_0\ : STD_LOGIC;
  signal \fifo_din_reg[7]_i_8_n_0\ : STD_LOGIC;
  signal fifo_wr_en_i_1_n_0 : STD_LOGIC;
  signal \^frame_led0\ : STD_LOGIC;
  signal \frame_no[2]_i_3_n_0\ : STD_LOGIC;
  signal \frame_no_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \frame_no_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \frame_no_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \frame_no_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \frame_no_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \frame_no_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \frame_no_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \frame_no_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \frame_no_reg[2]_i_2_n_1\ : STD_LOGIC;
  signal \frame_no_reg[2]_i_2_n_2\ : STD_LOGIC;
  signal \frame_no_reg[2]_i_2_n_3\ : STD_LOGIC;
  signal \frame_no_reg[2]_i_2_n_4\ : STD_LOGIC;
  signal \frame_no_reg[2]_i_2_n_5\ : STD_LOGIC;
  signal \frame_no_reg[2]_i_2_n_6\ : STD_LOGIC;
  signal \frame_no_reg[2]_i_2_n_7\ : STD_LOGIC;
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
  signal \frame_no_reg_n_0_[3]\ : STD_LOGIC;
  signal \frame_no_reg_n_0_[4]\ : STD_LOGIC;
  signal \frame_no_reg_n_0_[5]\ : STD_LOGIC;
  signal \frame_no_reg_n_0_[6]\ : STD_LOGIC;
  signal \frame_no_reg_n_0_[7]\ : STD_LOGIC;
  signal \h_tof_mm_reg_n_0_[0]\ : STD_LOGIC;
  signal \h_tof_mm_reg_n_0_[1]\ : STD_LOGIC;
  signal \h_tof_mm_reg_n_0_[2]\ : STD_LOGIC;
  signal \h_tof_mm_reg_n_0_[3]\ : STD_LOGIC;
  signal \h_tof_mm_reg_n_0_[4]\ : STD_LOGIC;
  signal \h_tof_mm_reg_n_0_[5]\ : STD_LOGIC;
  signal \h_tof_mm_reg_n_0_[6]\ : STD_LOGIC;
  signal \h_tof_mm_reg_n_0_[7]\ : STD_LOGIC;
  signal h_tof_seq : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \h_tof_us_reg_n_0_[0]\ : STD_LOGIC;
  signal \h_tof_us_reg_n_0_[1]\ : STD_LOGIC;
  signal \h_tof_us_reg_n_0_[2]\ : STD_LOGIC;
  signal \h_tof_us_reg_n_0_[3]\ : STD_LOGIC;
  signal \h_tof_us_reg_n_0_[4]\ : STD_LOGIC;
  signal \h_tof_us_reg_n_0_[5]\ : STD_LOGIC;
  signal \h_tof_us_reg_n_0_[6]\ : STD_LOGIC;
  signal \h_tof_us_reg_n_0_[7]\ : STD_LOGIC;
  signal \^href_d\ : STD_LOGIC;
  signal href_h : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal href_m : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of href_m : signal is "true";
  signal href_qq : STD_LOGIC;
  signal href_qq_i_1_n_0 : STD_LOGIC;
  signal \idx[0]_i_1_n_0\ : STD_LOGIC;
  signal \idx[4]_i_1_n_0\ : STD_LOGIC;
  signal idx_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal last_bpl : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \last_bpl[15]_i_1_n_0\ : STD_LOGIC;
  signal \line_bytes[0]_i_1_n_0\ : STD_LOGIC;
  signal \line_bytes[0]_i_3_n_0\ : STD_LOGIC;
  signal line_bytes_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \line_bytes_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \line_bytes_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \line_bytes_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \line_bytes_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \line_bytes_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \line_bytes_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \line_bytes_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \line_bytes_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \line_bytes_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \line_bytes_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \line_bytes_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \line_bytes_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \line_bytes_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \line_bytes_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \line_bytes_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \line_bytes_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \line_bytes_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \line_bytes_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \line_bytes_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \line_bytes_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \line_bytes_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \line_bytes_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \line_bytes_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \line_bytes_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \line_bytes_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \line_bytes_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \line_bytes_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \line_bytes_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \line_bytes_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \line_bytes_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \line_bytes_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \lines[0]_i_2_n_0\ : STD_LOGIC;
  signal lines_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \lines_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \lines_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \lines_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \lines_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \lines_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \lines_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \lines_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \lines_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \lines_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \lines_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \lines_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \lines_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \lines_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \lines_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \lines_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \lines_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \lines_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \lines_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \lines_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \lines_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \lines_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \lines_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \lines_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \lines_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \lines_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \lines_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \lines_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \lines_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \lines_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \lines_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \lines_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC;
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \pclk_2khz_reg_n_0_[0]\ : STD_LOGIC;
  signal \pclk_2khz_reg_n_0_[1]\ : STD_LOGIC;
  signal \pclk_2khz_reg_n_0_[2]\ : STD_LOGIC;
  signal \pclk_2khz_reg_n_0_[3]\ : STD_LOGIC;
  signal \pclk_2khz_reg_n_0_[4]\ : STD_LOGIC;
  signal \pclk_2khz_reg_n_0_[5]\ : STD_LOGIC;
  signal \pclk_2khz_reg_n_0_[6]\ : STD_LOGIC;
  signal \pclk_2khz_reg_n_0_[7]\ : STD_LOGIC;
  signal pclk_cnt : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal pclk_cnt0 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \pclk_cnt0_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \pclk_cnt0_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \pclk_cnt0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \pclk_cnt0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \pclk_cnt0_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \pclk_cnt0_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \pclk_cnt0_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \pclk_cnt0_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \pclk_cnt0_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \pclk_cnt0_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \pclk_cnt0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \pclk_cnt0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \pclk_cnt0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \pclk_cnt0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \pclk_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \pclk_cnt[15]_i_1_n_0\ : STD_LOGIC;
  signal \pclk_cnt[15]_i_2_n_0\ : STD_LOGIC;
  signal \pclk_cnt[15]_i_3_n_0\ : STD_LOGIC;
  signal \pclk_cnt[15]_i_4_n_0\ : STD_LOGIC;
  signal \pclk_cnt[15]_i_5_n_0\ : STD_LOGIC;
  signal pclk_f : STD_LOGIC;
  signal pclk_f_i_1_n_0 : STD_LOGIC;
  signal pclk_h : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal pclk_m : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of pclk_m : signal is "true";
  signal \prev_bpl_reg_n_0_[0]\ : STD_LOGIC;
  signal \prev_bpl_reg_n_0_[1]\ : STD_LOGIC;
  signal \prev_bpl_reg_n_0_[2]\ : STD_LOGIC;
  signal \prev_bpl_reg_n_0_[3]\ : STD_LOGIC;
  signal \prev_bpl_reg_n_0_[4]\ : STD_LOGIC;
  signal \prev_bpl_reg_n_0_[5]\ : STD_LOGIC;
  signal \prev_bpl_reg_n_0_[6]\ : STD_LOGIC;
  signal \prev_bpl_reg_n_0_[7]\ : STD_LOGIC;
  signal \prev_lines_reg_n_0_[0]\ : STD_LOGIC;
  signal \prev_lines_reg_n_0_[1]\ : STD_LOGIC;
  signal \prev_lines_reg_n_0_[2]\ : STD_LOGIC;
  signal \prev_lines_reg_n_0_[3]\ : STD_LOGIC;
  signal \prev_lines_reg_n_0_[4]\ : STD_LOGIC;
  signal \prev_lines_reg_n_0_[5]\ : STD_LOGIC;
  signal \prev_lines_reg_n_0_[6]\ : STD_LOGIC;
  signal \prev_lines_reg_n_0_[7]\ : STD_LOGIC;
  signal \prev_ticks_reg_n_0_[0]\ : STD_LOGIC;
  signal \prev_ticks_reg_n_0_[1]\ : STD_LOGIC;
  signal \prev_ticks_reg_n_0_[2]\ : STD_LOGIC;
  signal \prev_ticks_reg_n_0_[3]\ : STD_LOGIC;
  signal \prev_ticks_reg_n_0_[4]\ : STD_LOGIC;
  signal \prev_ticks_reg_n_0_[5]\ : STD_LOGIC;
  signal \prev_ticks_reg_n_0_[6]\ : STD_LOGIC;
  signal \prev_ticks_reg_n_0_[7]\ : STD_LOGIC;
  signal prev_trunc : STD_LOGIC;
  signal \^s0_href\ : STD_LOGIC;
  signal \^s0_stb\ : STD_LOGIC;
  signal \^s0_vsync\ : STD_LOGIC;
  signal \^start_us_reg[23]_0\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal state1_in : STD_LOGIC;
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[0]_i_2_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  signal \stb0__0\ : STD_LOGIC;
  signal \ticks[0]_i_1_n_0\ : STD_LOGIC;
  signal \ticks[0]_i_3_n_0\ : STD_LOGIC;
  signal \ticks[0]_i_4_n_0\ : STD_LOGIC;
  signal \ticks[0]_i_5_n_0\ : STD_LOGIC;
  signal \ticks[0]_i_6_n_0\ : STD_LOGIC;
  signal \ticks[0]_i_7_n_0\ : STD_LOGIC;
  signal ticks_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \ticks_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \ticks_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \ticks_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \ticks_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \ticks_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \ticks_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \ticks_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \ticks_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \ticks_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \ticks_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \ticks_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \ticks_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \ticks_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \ticks_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \ticks_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \ticks_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \ticks_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \ticks_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \ticks_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \ticks_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \ticks_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \ticks_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \ticks_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \ticks_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \ticks_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \ticks_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \ticks_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \ticks_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \ticks_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \ticks_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \ticks_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal trunc_i_1_n_0 : STD_LOGIC;
  signal trunc_i_2_n_0 : STD_LOGIC;
  signal trunc_reg_n_0 : STD_LOGIC;
  signal \vsync_h_reg_n_0_[0]\ : STD_LOGIC;
  signal vsync_m : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of vsync_m : signal is "true";
  signal vsync_qq : STD_LOGIC;
  signal vsync_qq_i_1_n_0 : STD_LOGIC;
  signal \NLW_frame_no_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_line_bytes_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_lines_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_pclk_cnt0_inferred__0/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_pclk_cnt0_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_ticks_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \d_m0_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \d_m0_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \d_m0_reg[1]\ : label is std.standard.true;
  attribute KEEP of \d_m0_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \d_m0_reg[2]\ : label is std.standard.true;
  attribute KEEP of \d_m0_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \d_m0_reg[3]\ : label is std.standard.true;
  attribute KEEP of \d_m0_reg[3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \d_m0_reg[4]\ : label is std.standard.true;
  attribute KEEP of \d_m0_reg[4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \d_m0_reg[5]\ : label is std.standard.true;
  attribute KEEP of \d_m0_reg[5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \d_m0_reg[6]\ : label is std.standard.true;
  attribute KEEP of \d_m0_reg[6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \d_m0_reg[7]\ : label is std.standard.true;
  attribute KEEP of \d_m0_reg[7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \d_m1_reg[0]\ : label is std.standard.true;
  attribute KEEP of \d_m1_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \d_m1_reg[1]\ : label is std.standard.true;
  attribute KEEP of \d_m1_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \d_m1_reg[2]\ : label is std.standard.true;
  attribute KEEP of \d_m1_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \d_m1_reg[3]\ : label is std.standard.true;
  attribute KEEP of \d_m1_reg[3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \d_m1_reg[4]\ : label is std.standard.true;
  attribute KEEP of \d_m1_reg[4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \d_m1_reg[5]\ : label is std.standard.true;
  attribute KEEP of \d_m1_reg[5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \d_m1_reg[6]\ : label is std.standard.true;
  attribute KEEP of \d_m1_reg[6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \d_m1_reg[7]\ : label is std.standard.true;
  attribute KEEP of \d_m1_reg[7]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \fifo_din[1]_i_9\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \fifo_din[3]_i_2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \fifo_din[3]_i_4\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \fifo_din[4]_i_4\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \fifo_din[5]_i_3\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \fifo_din[5]_i_5\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \fifo_din[6]_i_2\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \fifo_din[6]_i_4\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \fifo_din[7]_i_3\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \fifo_din[7]_i_5\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of fill_i_2 : label is "soft_lutpair36";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \frame_no_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \frame_no_reg[2]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \frame_no_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \frame_no_reg[8]_i_1\ : label is 35;
  attribute SOFT_HLUTNM of href_d_i_1 : label is "soft_lutpair39";
  attribute ASYNC_REG_boolean of \href_m_reg[0]\ : label is std.standard.true;
  attribute KEEP of \href_m_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \href_m_reg[1]\ : label is std.standard.true;
  attribute KEEP of \href_m_reg[1]\ : label is "yes";
  attribute SOFT_HLUTNM of href_qq_i_1 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \idx[0]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \idx[1]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \idx[2]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \idx[3]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \idx[4]_i_2\ : label is "soft_lutpair31";
  attribute ADDER_THRESHOLD of \line_bytes_reg[0]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \line_bytes_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \line_bytes_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \line_bytes_reg[8]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \lines_reg[0]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \lines_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \lines_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \lines_reg[8]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \pclk_cnt0_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \pclk_cnt0_inferred__0/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \pclk_cnt0_inferred__0/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \pclk_cnt0_inferred__0/i__carry__2\ : label is 35;
  attribute SOFT_HLUTNM of \pclk_cnt[0]_i_1\ : label is "soft_lutpair41";
  attribute ASYNC_REG_boolean of \pclk_m_reg[0]\ : label is std.standard.true;
  attribute KEEP of \pclk_m_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \pclk_m_reg[1]\ : label is std.standard.true;
  attribute KEEP of \pclk_m_reg[1]\ : label is "yes";
  attribute SOFT_HLUTNM of \px[10]_i_10\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \px[1]_i_3\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \row[7]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \row[8]_i_3\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \state[0]_i_2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \state[1]_i_1\ : label is "soft_lutpair37";
  attribute ADDER_THRESHOLD of \ticks_reg[0]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \ticks_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \ticks_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \ticks_reg[8]_i_1\ : label is 35;
  attribute SOFT_HLUTNM of trunc_i_1 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of vsync_d_i_1 : label is "soft_lutpair40";
  attribute ASYNC_REG_boolean of \vsync_m_reg[0]\ : label is std.standard.true;
  attribute KEEP of \vsync_m_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \vsync_m_reg[1]\ : label is std.standard.true;
  attribute KEEP of \vsync_m_reg[1]\ : label is "yes";
  attribute SOFT_HLUTNM of wr_sof_i_1 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \yr[-1111111104]__0_i_4\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \yr[-1111111104]_i_2\ : label is "soft_lutpair41";
begin
  c0_wr <= \^c0_wr\;
  \d_q_reg[7]_0\(7 downto 0) <= \^d_q_reg[7]_0\(7 downto 0);
  frame_led0 <= \^frame_led0\;
  href_d <= \^href_d\;
  s0_href <= \^s0_href\;
  s0_stb <= \^s0_stb\;
  s0_vsync <= \^s0_vsync\;
  \start_us_reg[23]_0\(23 downto 0) <= \^start_us_reg[23]_0\(23 downto 0);
\d_h0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => d_m1(0),
      Q => d_h0(0),
      R => '0'
    );
\d_h0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => d_m1(1),
      Q => d_h0(1),
      R => '0'
    );
\d_h0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => d_m1(2),
      Q => d_h0(2),
      R => '0'
    );
\d_h0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => d_m1(3),
      Q => d_h0(3),
      R => '0'
    );
\d_h0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => d_m1(4),
      Q => d_h0(4),
      R => '0'
    );
\d_h0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => d_m1(5),
      Q => d_h0(5),
      R => '0'
    );
\d_h0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => d_m1(6),
      Q => d_h0(6),
      R => '0'
    );
\d_h0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => d_m1(7),
      Q => d_h0(7),
      R => '0'
    );
\d_h1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => d_h0(0),
      Q => d_h1(0),
      R => '0'
    );
\d_h1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => d_h0(1),
      Q => d_h1(1),
      R => '0'
    );
\d_h1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => d_h0(2),
      Q => d_h1(2),
      R => '0'
    );
\d_h1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => d_h0(3),
      Q => d_h1(3),
      R => '0'
    );
\d_h1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => d_h0(4),
      Q => d_h1(4),
      R => '0'
    );
\d_h1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => d_h0(5),
      Q => d_h1(5),
      R => '0'
    );
\d_h1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => d_h0(6),
      Q => d_h1(6),
      R => '0'
    );
\d_h1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => d_h0(7),
      Q => d_h1(7),
      R => '0'
    );
\d_m0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cam_d(0),
      Q => d_m0(0),
      R => '0'
    );
\d_m0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cam_d(1),
      Q => d_m0(1),
      R => '0'
    );
\d_m0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cam_d(2),
      Q => d_m0(2),
      R => '0'
    );
\d_m0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cam_d(3),
      Q => d_m0(3),
      R => '0'
    );
\d_m0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cam_d(4),
      Q => d_m0(4),
      R => '0'
    );
\d_m0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cam_d(5),
      Q => d_m0(5),
      R => '0'
    );
\d_m0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cam_d(6),
      Q => d_m0(6),
      R => '0'
    );
\d_m0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cam_d(7),
      Q => d_m0(7),
      R => '0'
    );
\d_m1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => d_m0(0),
      Q => d_m1(0),
      R => '0'
    );
\d_m1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => d_m0(1),
      Q => d_m1(1),
      R => '0'
    );
\d_m1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => d_m0(2),
      Q => d_m1(2),
      R => '0'
    );
\d_m1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => d_m0(3),
      Q => d_m1(3),
      R => '0'
    );
\d_m1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => d_m0(4),
      Q => d_m1(4),
      R => '0'
    );
\d_m1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => d_m0(5),
      Q => d_m1(5),
      R => '0'
    );
\d_m1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => d_m0(6),
      Q => d_m1(6),
      R => '0'
    );
\d_m1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => d_m0(7),
      Q => d_m1(7),
      R => '0'
    );
\d_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \stb0__0\,
      D => d_h1(0),
      Q => \^d_q_reg[7]_0\(0),
      R => '0'
    );
\d_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \stb0__0\,
      D => d_h1(1),
      Q => \^d_q_reg[7]_0\(1),
      R => '0'
    );
\d_q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \stb0__0\,
      D => d_h1(2),
      Q => \^d_q_reg[7]_0\(2),
      R => '0'
    );
\d_q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \stb0__0\,
      D => d_h1(3),
      Q => \^d_q_reg[7]_0\(3),
      R => '0'
    );
\d_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \stb0__0\,
      D => d_h1(4),
      Q => \^d_q_reg[7]_0\(4),
      R => '0'
    );
\d_q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \stb0__0\,
      D => d_h1(5),
      Q => \^d_q_reg[7]_0\(5),
      R => '0'
    );
\d_q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \stb0__0\,
      D => d_h1(6),
      Q => \^d_q_reg[7]_0\(6),
      R => '0'
    );
\d_q_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \stb0__0\,
      D => d_h1(7),
      Q => \^d_q_reg[7]_0\(7),
      R => '0'
    );
\fifo_din[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888AAA8A88888888"
    )
        port map (
      I0 => \fifo_din[0]_i_2_n_0\,
      I1 => \fifo_din[0]_i_3_n_0\,
      I2 => \fifo_din[0]_i_4_n_0\,
      I3 => \fifo_din[7]_i_7_n_0\,
      I4 => \fifo_din_reg[0]_i_5_n_0\,
      I5 => \fifo_din[7]_i_5_n_0\,
      O => \fifo_din[0]_i_1_n_0\
    );
\fifo_din[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4C7CFFFF4C7C0000"
    )
        port map (
      I0 => data7(0),
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => \pclk_2khz_reg_n_0_[0]\,
      I4 => idx_reg(1),
      I5 => \fifo_din[0]_i_12_n_0\,
      O => \fifo_din[0]_i_10_n_0\
    );
\fifo_din[0]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4373"
    )
        port map (
      I0 => data1(0),
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => \frame_no_reg_n_0_[0]\,
      O => \fifo_din[0]_i_11_n_0\
    );
\fifo_din[0]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4070"
    )
        port map (
      I0 => data5(0),
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => \prev_lines_reg_n_0_[0]\,
      O => \fifo_din[0]_i_12_n_0\
    );
\fifo_din[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^d_q_reg[7]_0\(0),
      I1 => \state_reg_n_0_[1]\,
      O => \fifo_din[0]_i_2_n_0\
    );
\fifo_din[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAEAEAEAAAAAAA"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => idx_reg(2),
      I2 => idx_reg(4),
      I3 => \fifo_din[0]_i_6_n_0\,
      I4 => idx_reg(1),
      I5 => \fifo_din[0]_i_7_n_0\,
      O => \fifo_din[0]_i_3_n_0\
    );
\fifo_din[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F35555FFF35555"
    )
        port map (
      I0 => \fifo_din[0]_i_8_n_0\,
      I1 => prev_trunc,
      I2 => idx_reg(0),
      I3 => idx_reg(3),
      I4 => idx_reg(1),
      I5 => h_tof_seq(0),
      O => \fifo_din[0]_i_4_n_0\
    );
\fifo_din[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data21(0),
      I1 => data14(0),
      I2 => idx_reg(0),
      I3 => data20(0),
      I4 => idx_reg(3),
      I5 => \^start_us_reg[23]_0\(16),
      O => \fifo_din[0]_i_6_n_0\
    );
\fifo_din[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data19(0),
      I1 => \^start_us_reg[23]_0\(8),
      I2 => idx_reg(0),
      I3 => \h_tof_us_reg_n_0_[0]\,
      I4 => idx_reg(3),
      I5 => \^start_us_reg[23]_0\(0),
      O => \fifo_din[0]_i_7_n_0\
    );
\fifo_din[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data16(0),
      I1 => data9(0),
      I2 => idx_reg(0),
      I3 => \h_tof_mm_reg_n_0_[0]\,
      I4 => idx_reg(3),
      I5 => \prev_ticks_reg_n_0_[0]\,
      O => \fifo_din[0]_i_8_n_0\
    );
\fifo_din[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4373FFFF43730000"
    )
        port map (
      I0 => data3(0),
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => \prev_bpl_reg_n_0_[0]\,
      I4 => idx_reg(1),
      I5 => \fifo_din[0]_i_11_n_0\,
      O => \fifo_din[0]_i_9_n_0\
    );
\fifo_din[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F8F8F8F888F8888"
    )
        port map (
      I0 => \^d_q_reg[7]_0\(1),
      I1 => \state_reg_n_0_[1]\,
      I2 => \fifo_din[1]_i_2_n_0\,
      I3 => \fifo_din_reg[1]_i_3_n_0\,
      I4 => \fifo_din[7]_i_7_n_0\,
      I5 => \fifo_din[1]_i_4__0_n_0\,
      O => \fifo_din[1]_i_1_n_0\
    );
\fifo_din[1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data16(1),
      I1 => data9(1),
      I2 => idx_reg(0),
      I3 => \h_tof_mm_reg_n_0_[1]\,
      I4 => idx_reg(3),
      I5 => \prev_ticks_reg_n_0_[1]\,
      O => \fifo_din[1]_i_10_n_0\
    );
\fifo_din[1]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4C7C"
    )
        port map (
      I0 => data1(1),
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => \frame_no_reg_n_0_[1]\,
      O => \fifo_din[1]_i_11_n_0\
    );
\fifo_din[1]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4C7C"
    )
        port map (
      I0 => data5(1),
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => \prev_lines_reg_n_0_[1]\,
      O => \fifo_din[1]_i_12_n_0\
    );
\fifo_din[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAAAAAABAFAAAAA"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \fifo_din[1]_i_5_n_0\,
      I2 => idx_reg(2),
      I3 => idx_reg(1),
      I4 => idx_reg(4),
      I5 => \fifo_din[1]_i_6_n_0\,
      O => \fifo_din[1]_i_2_n_0\
    );
\fifo_din[1]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000073400000"
    )
        port map (
      I0 => \fifo_din[1]_i_9_n_0\,
      I1 => idx_reg(1),
      I2 => h_tof_seq(1),
      I3 => \fifo_din[1]_i_10_n_0\,
      I4 => idx_reg(4),
      I5 => idx_reg(2),
      O => \fifo_din[1]_i_4__0_n_0\
    );
\fifo_din[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data21(1),
      I1 => data14(1),
      I2 => idx_reg(0),
      I3 => data20(1),
      I4 => idx_reg(3),
      I5 => \^start_us_reg[23]_0\(17),
      O => \fifo_din[1]_i_5_n_0\
    );
\fifo_din[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data19(1),
      I1 => \^start_us_reg[23]_0\(9),
      I2 => idx_reg(0),
      I3 => \h_tof_us_reg_n_0_[1]\,
      I4 => idx_reg(3),
      I5 => \^start_us_reg[23]_0\(1),
      O => \fifo_din[1]_i_6_n_0\
    );
\fifo_din[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4373FFFF43730000"
    )
        port map (
      I0 => data3(1),
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => \prev_bpl_reg_n_0_[1]\,
      I4 => idx_reg(1),
      I5 => \fifo_din[1]_i_11_n_0\,
      O => \fifo_din[1]_i_7_n_0\
    );
\fifo_din[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F7FFFFF4F7F0000"
    )
        port map (
      I0 => data7(1),
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => \pclk_2khz_reg_n_0_[1]\,
      I4 => idx_reg(1),
      I5 => \fifo_din[1]_i_12_n_0\,
      O => \fifo_din[1]_i_8_n_0\
    );
\fifo_din[1]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => idx_reg(0),
      I1 => idx_reg(3),
      O => \fifo_din[1]_i_9_n_0\
    );
\fifo_din[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8B888B8B8B8"
    )
        port map (
      I0 => \^d_q_reg[7]_0\(2),
      I1 => \state_reg_n_0_[1]\,
      I2 => \fifo_din[2]_i_2_n_0\,
      I3 => idx_reg(2),
      I4 => idx_reg(4),
      I5 => \fifo_din_reg[2]_i_3_n_0\,
      O => \fifo_din[2]_i_1_n_0\
    );
\fifo_din[2]_i_10__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B833"
    )
        port map (
      I0 => data7(2),
      I1 => idx_reg(0),
      I2 => \pclk_2khz_reg_n_0_[2]\,
      I3 => idx_reg(3),
      O => \fifo_din[2]_i_10__0_n_0\
    );
\fifo_din[2]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BC8C"
    )
        port map (
      I0 => data1(2),
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => \^frame_led0\,
      O => \fifo_din[2]_i_11_n_0\
    );
\fifo_din[2]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BC8C"
    )
        port map (
      I0 => data3(2),
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => \prev_bpl_reg_n_0_[2]\,
      O => \fifo_din[2]_i_12_n_0\
    );
\fifo_din[2]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data16(2),
      I1 => data9(2),
      I2 => idx_reg(0),
      I3 => \h_tof_mm_reg_n_0_[2]\,
      I4 => idx_reg(3),
      I5 => \prev_ticks_reg_n_0_[2]\,
      O => \fifo_din[2]_i_13_n_0\
    );
\fifo_din[2]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => h_tof_seq(2),
      I1 => idx_reg(3),
      I2 => idx_reg(0),
      O => \fifo_din[2]_i_14_n_0\
    );
\fifo_din[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFACACA000ACAC"
    )
        port map (
      I0 => \fifo_din_reg[2]_i_4_n_0\,
      I1 => \fifo_din_reg[2]_i_5_n_0\,
      I2 => idx_reg(2),
      I3 => idx_reg(1),
      I4 => idx_reg(4),
      I5 => \fifo_din_reg[2]_i_6_n_0\,
      O => \fifo_din[2]_i_2_n_0\
    );
\fifo_din[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data19(2),
      I1 => \^start_us_reg[23]_0\(10),
      I2 => idx_reg(0),
      I3 => \h_tof_us_reg_n_0_[2]\,
      I4 => idx_reg(3),
      I5 => \^start_us_reg[23]_0\(2),
      O => \fifo_din[2]_i_7_n_0\
    );
\fifo_din[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data21(2),
      I1 => data14(2),
      I2 => idx_reg(0),
      I3 => data20(2),
      I4 => idx_reg(3),
      I5 => \^start_us_reg[23]_0\(18),
      O => \fifo_din[2]_i_8_n_0\
    );
\fifo_din[2]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => data5(2),
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => \prev_lines_reg_n_0_[2]\,
      O => \fifo_din[2]_i_9_n_0\
    );
\fifo_din[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888AAA8A88888888"
    )
        port map (
      I0 => \fifo_din[3]_i_2_n_0\,
      I1 => \fifo_din[3]_i_3_n_0\,
      I2 => \fifo_din[3]_i_4_n_0\,
      I3 => \fifo_din[7]_i_7_n_0\,
      I4 => \fifo_din_reg[3]_i_5_n_0\,
      I5 => \fifo_din[7]_i_5_n_0\,
      O => \fifo_din[3]_i_1_n_0\
    );
\fifo_din[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4C7CFFFF4C7C0000"
    )
        port map (
      I0 => data7(3),
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => \pclk_2khz_reg_n_0_[3]\,
      I4 => idx_reg(1),
      I5 => \fifo_din[3]_i_12_n_0\,
      O => \fifo_din[3]_i_10_n_0\
    );
\fifo_din[3]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4C7C"
    )
        port map (
      I0 => data1(3),
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => \frame_no_reg_n_0_[3]\,
      O => \fifo_din[3]_i_11_n_0\
    );
\fifo_din[3]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F7F"
    )
        port map (
      I0 => data5(3),
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => \prev_lines_reg_n_0_[3]\,
      O => \fifo_din[3]_i_12_n_0\
    );
\fifo_din[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^d_q_reg[7]_0\(3),
      I1 => \state_reg_n_0_[1]\,
      O => \fifo_din[3]_i_2_n_0\
    );
\fifo_din[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAEAEAEAAAAAAA"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => idx_reg(2),
      I2 => idx_reg(4),
      I3 => \fifo_din[3]_i_6_n_0\,
      I4 => idx_reg(1),
      I5 => \fifo_din[3]_i_7_n_0\,
      O => \fifo_din[3]_i_3_n_0\
    );
\fifo_din[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C4CCF7FF"
    )
        port map (
      I0 => h_tof_seq(3),
      I1 => idx_reg(1),
      I2 => idx_reg(0),
      I3 => idx_reg(3),
      I4 => \fifo_din[3]_i_8_n_0\,
      O => \fifo_din[3]_i_4_n_0\
    );
\fifo_din[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data21(3),
      I1 => data14(3),
      I2 => idx_reg(0),
      I3 => data20(3),
      I4 => idx_reg(3),
      I5 => \^start_us_reg[23]_0\(19),
      O => \fifo_din[3]_i_6_n_0\
    );
\fifo_din[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data19(3),
      I1 => \^start_us_reg[23]_0\(11),
      I2 => idx_reg(0),
      I3 => \h_tof_us_reg_n_0_[3]\,
      I4 => idx_reg(3),
      I5 => \^start_us_reg[23]_0\(3),
      O => \fifo_din[3]_i_7_n_0\
    );
\fifo_din[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data16(3),
      I1 => data9(3),
      I2 => idx_reg(0),
      I3 => \h_tof_mm_reg_n_0_[3]\,
      I4 => idx_reg(3),
      I5 => \prev_ticks_reg_n_0_[3]\,
      O => \fifo_din[3]_i_8_n_0\
    );
\fifo_din[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4373FFFF43730000"
    )
        port map (
      I0 => data3(3),
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => \prev_bpl_reg_n_0_[3]\,
      I4 => idx_reg(1),
      I5 => \fifo_din[3]_i_11_n_0\,
      O => \fifo_din[3]_i_9_n_0\
    );
\fifo_din[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888B8B8BBB8"
    )
        port map (
      I0 => \^d_q_reg[7]_0\(4),
      I1 => \state_reg_n_0_[1]\,
      I2 => \fifo_din[4]_i_2_n_0\,
      I3 => idx_reg(2),
      I4 => \fifo_din[4]_i_3_n_0\,
      I5 => \fifo_din[4]_i_4_n_0\,
      O => \fifo_din[4]_i_1_n_0\
    );
\fifo_din[4]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFB080C0C0"
    )
        port map (
      I0 => data7(4),
      I1 => idx_reg(0),
      I2 => idx_reg(1),
      I3 => \pclk_2khz_reg_n_0_[4]\,
      I4 => idx_reg(3),
      I5 => idx_reg(4),
      O => \fifo_din[4]_i_10_n_0\
    );
\fifo_din[4]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data19(4),
      I1 => \^start_us_reg[23]_0\(12),
      I2 => idx_reg(0),
      I3 => \h_tof_us_reg_n_0_[4]\,
      I4 => idx_reg(3),
      I5 => \^start_us_reg[23]_0\(4),
      O => \fifo_din[4]_i_11_n_0\
    );
\fifo_din[4]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data21(4),
      I1 => data14(4),
      I2 => idx_reg(0),
      I3 => data20(4),
      I4 => idx_reg(3),
      I5 => \^start_us_reg[23]_0\(20),
      O => \fifo_din[4]_i_12_n_0\
    );
\fifo_din[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F554F4F5F554444"
    )
        port map (
      I0 => \fifo_din[4]_i_5_n_0\,
      I1 => \fifo_din[4]_i_6_n_0\,
      I2 => \fifo_din[4]_i_7_n_0\,
      I3 => \fifo_din[4]_i_8_n_0\,
      I4 => idx_reg(1),
      I5 => \fifo_din[4]_i_9_n_0\,
      O => \fifo_din[4]_i_2_n_0\
    );
\fifo_din[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF1FDF"
    )
        port map (
      I0 => \prev_lines_reg_n_0_[4]\,
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => data5(4),
      I4 => idx_reg(1),
      I5 => \fifo_din[4]_i_10_n_0\,
      O => \fifo_din[4]_i_3_n_0\
    );
\fifo_din[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0400C400"
    )
        port map (
      I0 => \fifo_din[4]_i_11_n_0\,
      I1 => idx_reg(4),
      I2 => idx_reg(1),
      I3 => idx_reg(2),
      I4 => \fifo_din[4]_i_12_n_0\,
      O => \fifo_din[4]_i_4_n_0\
    );
\fifo_din[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFF55555555"
    )
        port map (
      I0 => idx_reg(4),
      I1 => idx_reg(2),
      I2 => h_tof_seq(4),
      I3 => idx_reg(3),
      I4 => idx_reg(0),
      I5 => idx_reg(1),
      O => \fifo_din[4]_i_5_n_0\
    );
\fifo_din[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data16(4),
      I1 => data9(4),
      I2 => idx_reg(0),
      I3 => \h_tof_mm_reg_n_0_[4]\,
      I4 => idx_reg(3),
      I5 => \prev_ticks_reg_n_0_[4]\,
      O => \fifo_din[4]_i_6_n_0\
    );
\fifo_din[4]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => idx_reg(2),
      I1 => idx_reg(4),
      O => \fifo_din[4]_i_7_n_0\
    );
\fifo_din[4]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B833"
    )
        port map (
      I0 => data3(4),
      I1 => idx_reg(0),
      I2 => \prev_bpl_reg_n_0_[4]\,
      I3 => idx_reg(3),
      O => \fifo_din[4]_i_8_n_0\
    );
\fifo_din[4]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BC8C"
    )
        port map (
      I0 => data1(4),
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => \frame_no_reg_n_0_[4]\,
      O => \fifo_din[4]_i_9_n_0\
    );
\fifo_din[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAEEEAE"
    )
        port map (
      I0 => \fifo_din[5]_i_2_n_0\,
      I1 => \fifo_din[7]_i_5_n_0\,
      I2 => \fifo_din[5]_i_3_n_0\,
      I3 => \fifo_din[7]_i_7_n_0\,
      I4 => \fifo_din_reg[5]_i_4_n_0\,
      I5 => \fifo_din[5]_i_5_n_0\,
      O => \fifo_din[5]_i_1_n_0\
    );
\fifo_din[5]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4373FFFF43730000"
    )
        port map (
      I0 => data7(5),
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => \pclk_2khz_reg_n_0_[5]\,
      I4 => idx_reg(1),
      I5 => \fifo_din[5]_i_12_n_0\,
      O => \fifo_din[5]_i_10_n_0\
    );
\fifo_din[5]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4C7C"
    )
        port map (
      I0 => data1(5),
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => \frame_no_reg_n_0_[5]\,
      O => \fifo_din[5]_i_11_n_0\
    );
\fifo_din[5]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F7F"
    )
        port map (
      I0 => data5(5),
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => \prev_lines_reg_n_0_[5]\,
      O => \fifo_din[5]_i_12_n_0\
    );
\fifo_din[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAEAEAEAAAAAAA"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => idx_reg(2),
      I2 => idx_reg(4),
      I3 => \fifo_din[5]_i_6_n_0\,
      I4 => idx_reg(1),
      I5 => \fifo_din[5]_i_7_n_0\,
      O => \fifo_din[5]_i_2_n_0\
    );
\fifo_din[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF3F5555"
    )
        port map (
      I0 => \fifo_din[5]_i_8_n_0\,
      I1 => h_tof_seq(5),
      I2 => idx_reg(3),
      I3 => idx_reg(0),
      I4 => idx_reg(1),
      O => \fifo_din[5]_i_3_n_0\
    );
\fifo_din[5]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \^d_q_reg[7]_0\(5),
      O => \fifo_din[5]_i_5_n_0\
    );
\fifo_din[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data21(5),
      I1 => data14(5),
      I2 => idx_reg(0),
      I3 => data20(5),
      I4 => idx_reg(3),
      I5 => \^start_us_reg[23]_0\(21),
      O => \fifo_din[5]_i_6_n_0\
    );
\fifo_din[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data19(5),
      I1 => \^start_us_reg[23]_0\(13),
      I2 => idx_reg(0),
      I3 => \h_tof_us_reg_n_0_[5]\,
      I4 => idx_reg(3),
      I5 => \^start_us_reg[23]_0\(5),
      O => \fifo_din[5]_i_7_n_0\
    );
\fifo_din[5]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data16(5),
      I1 => data9(5),
      I2 => idx_reg(0),
      I3 => \h_tof_mm_reg_n_0_[5]\,
      I4 => idx_reg(3),
      I5 => \prev_ticks_reg_n_0_[5]\,
      O => \fifo_din[5]_i_8_n_0\
    );
\fifo_din[5]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4C7CFFFF4C7C0000"
    )
        port map (
      I0 => data3(5),
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => \prev_bpl_reg_n_0_[5]\,
      I4 => idx_reg(1),
      I5 => \fifo_din[5]_i_11_n_0\,
      O => \fifo_din[5]_i_9_n_0\
    );
\fifo_din[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888AAA8A88888888"
    )
        port map (
      I0 => \fifo_din[6]_i_2_n_0\,
      I1 => \fifo_din[6]_i_3_n_0\,
      I2 => \fifo_din[6]_i_4_n_0\,
      I3 => \fifo_din[7]_i_7_n_0\,
      I4 => \fifo_din_reg[6]_i_5_n_0\,
      I5 => \fifo_din[7]_i_5_n_0\,
      O => \fifo_din[6]_i_1_n_0\
    );
\fifo_din[6]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4C7CFFFF4C7C0000"
    )
        port map (
      I0 => data7(6),
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => \pclk_2khz_reg_n_0_[6]\,
      I4 => idx_reg(1),
      I5 => \fifo_din[6]_i_12_n_0\,
      O => \fifo_din[6]_i_10_n_0\
    );
\fifo_din[6]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4373"
    )
        port map (
      I0 => data1(6),
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => \frame_no_reg_n_0_[6]\,
      O => \fifo_din[6]_i_11_n_0\
    );
\fifo_din[6]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4070"
    )
        port map (
      I0 => data5(6),
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => \prev_lines_reg_n_0_[6]\,
      O => \fifo_din[6]_i_12_n_0\
    );
\fifo_din[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^d_q_reg[7]_0\(6),
      I1 => \state_reg_n_0_[1]\,
      O => \fifo_din[6]_i_2_n_0\
    );
\fifo_din[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAEAEAEAAAAAAA"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => idx_reg(2),
      I2 => idx_reg(4),
      I3 => \fifo_din[6]_i_6_n_0\,
      I4 => idx_reg(1),
      I5 => \fifo_din[6]_i_7_n_0\,
      O => \fifo_din[6]_i_3_n_0\
    );
\fifo_din[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C4CCF7FF"
    )
        port map (
      I0 => h_tof_seq(6),
      I1 => idx_reg(1),
      I2 => idx_reg(0),
      I3 => idx_reg(3),
      I4 => \fifo_din[6]_i_8_n_0\,
      O => \fifo_din[6]_i_4_n_0\
    );
\fifo_din[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data21(6),
      I1 => data14(6),
      I2 => idx_reg(0),
      I3 => data20(6),
      I4 => idx_reg(3),
      I5 => \^start_us_reg[23]_0\(22),
      O => \fifo_din[6]_i_6_n_0\
    );
\fifo_din[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data19(6),
      I1 => \^start_us_reg[23]_0\(14),
      I2 => idx_reg(0),
      I3 => \h_tof_us_reg_n_0_[6]\,
      I4 => idx_reg(3),
      I5 => \^start_us_reg[23]_0\(6),
      O => \fifo_din[6]_i_7_n_0\
    );
\fifo_din[6]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data16(6),
      I1 => data9(6),
      I2 => idx_reg(0),
      I3 => \h_tof_mm_reg_n_0_[6]\,
      I4 => idx_reg(3),
      I5 => \prev_ticks_reg_n_0_[6]\,
      O => \fifo_din[6]_i_8_n_0\
    );
\fifo_din[6]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4C7CFFFF4C7C0000"
    )
        port map (
      I0 => data3(6),
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => \prev_bpl_reg_n_0_[6]\,
      I4 => idx_reg(1),
      I5 => \fifo_din[6]_i_11_n_0\,
      O => \fifo_din[6]_i_9_n_0\
    );
\fifo_din[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002020000000200"
    )
        port map (
      I0 => \^s0_stb\,
      I1 => c0_afull,
      I2 => trunc_reg_n_0,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[1]\,
      I5 => \^s0_href\,
      O => fifo_din
    );
\fifo_din[7]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data19(7),
      I1 => \^start_us_reg[23]_0\(15),
      I2 => idx_reg(0),
      I3 => \h_tof_us_reg_n_0_[7]\,
      I4 => idx_reg(3),
      I5 => \^start_us_reg[23]_0\(7),
      O => \fifo_din[7]_i_10_n_0\
    );
\fifo_din[7]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data16(7),
      I1 => data9(7),
      I2 => idx_reg(0),
      I3 => \h_tof_mm_reg_n_0_[7]\,
      I4 => idx_reg(3),
      I5 => \prev_ticks_reg_n_0_[7]\,
      O => \fifo_din[7]_i_11_n_0\
    );
\fifo_din[7]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B833FFFFB8330000"
    )
        port map (
      I0 => data3(7),
      I1 => idx_reg(0),
      I2 => \prev_bpl_reg_n_0_[7]\,
      I3 => idx_reg(3),
      I4 => idx_reg(1),
      I5 => \fifo_din[7]_i_14_n_0\,
      O => \fifo_din[7]_i_12_n_0\
    );
\fifo_din[7]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => data7(7),
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => \pclk_2khz_reg_n_0_[7]\,
      I4 => idx_reg(1),
      I5 => \fifo_din[7]_i_15_n_0\,
      O => \fifo_din[7]_i_13_n_0\
    );
\fifo_din[7]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B833"
    )
        port map (
      I0 => data1(7),
      I1 => idx_reg(0),
      I2 => \frame_no_reg_n_0_[7]\,
      I3 => idx_reg(3),
      O => \fifo_din[7]_i_14_n_0\
    );
\fifo_din[7]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => data5(7),
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => \prev_lines_reg_n_0_[7]\,
      O => \fifo_din[7]_i_15_n_0\
    );
\fifo_din[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8888888A888"
    )
        port map (
      I0 => \fifo_din[7]_i_3_n_0\,
      I1 => \fifo_din[7]_i_4_n_0\,
      I2 => \fifo_din[7]_i_5_n_0\,
      I3 => \fifo_din[7]_i_6_n_0\,
      I4 => \fifo_din[7]_i_7_n_0\,
      I5 => \fifo_din_reg[7]_i_8_n_0\,
      O => \fifo_din[7]_i_2_n_0\
    );
\fifo_din[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^d_q_reg[7]_0\(7),
      I1 => \state_reg_n_0_[1]\,
      O => \fifo_din[7]_i_3_n_0\
    );
\fifo_din[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAEAEAEAAAAAAA"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => idx_reg(2),
      I2 => idx_reg(4),
      I3 => \fifo_din[7]_i_9_n_0\,
      I4 => idx_reg(1),
      I5 => \fifo_din[7]_i_10_n_0\,
      O => \fifo_din[7]_i_4_n_0\
    );
\fifo_din[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => idx_reg(2),
      I1 => idx_reg(4),
      O => \fifo_din[7]_i_5_n_0\
    );
\fifo_din[7]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0800"
    )
        port map (
      I0 => h_tof_seq(7),
      I1 => idx_reg(3),
      I2 => idx_reg(0),
      I3 => idx_reg(1),
      I4 => \fifo_din[7]_i_11_n_0\,
      O => \fifo_din[7]_i_6_n_0\
    );
\fifo_din[7]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => idx_reg(2),
      I1 => idx_reg(1),
      I2 => idx_reg(4),
      O => \fifo_din[7]_i_7_n_0\
    );
\fifo_din[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data21(7),
      I1 => data14(7),
      I2 => idx_reg(0),
      I3 => data20(7),
      I4 => idx_reg(3),
      I5 => \^start_us_reg[23]_0\(23),
      O => \fifo_din[7]_i_9_n_0\
    );
\fifo_din_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => fifo_din,
      D => \fifo_din[0]_i_1_n_0\,
      Q => \fifo_din_reg[7]_0\(0),
      R => '0'
    );
\fifo_din_reg[0]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_din[0]_i_9_n_0\,
      I1 => \fifo_din[0]_i_10_n_0\,
      O => \fifo_din_reg[0]_i_5_n_0\,
      S => idx_reg(2)
    );
\fifo_din_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => fifo_din,
      D => \fifo_din[1]_i_1_n_0\,
      Q => \fifo_din_reg[7]_0\(1),
      R => '0'
    );
\fifo_din_reg[1]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_din[1]_i_7_n_0\,
      I1 => \fifo_din[1]_i_8_n_0\,
      O => \fifo_din_reg[1]_i_3_n_0\,
      S => idx_reg(2)
    );
\fifo_din_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => fifo_din,
      D => \fifo_din[2]_i_1_n_0\,
      Q => \fifo_din_reg[7]_0\(2),
      R => '0'
    );
\fifo_din_reg[2]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_din[2]_i_7_n_0\,
      I1 => \fifo_din[2]_i_8_n_0\,
      O => \fifo_din_reg[2]_i_3_n_0\,
      S => \fifo_din[7]_i_7_n_0\
    );
\fifo_din_reg[2]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_din[2]_i_9_n_0\,
      I1 => \fifo_din[2]_i_10__0_n_0\,
      O => \fifo_din_reg[2]_i_4_n_0\,
      S => idx_reg(1)
    );
\fifo_din_reg[2]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_din[2]_i_11_n_0\,
      I1 => \fifo_din[2]_i_12_n_0\,
      O => \fifo_din_reg[2]_i_5_n_0\,
      S => idx_reg(1)
    );
\fifo_din_reg[2]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_din[2]_i_13_n_0\,
      I1 => \fifo_din[2]_i_14_n_0\,
      O => \fifo_din_reg[2]_i_6_n_0\,
      S => idx_reg(1)
    );
\fifo_din_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => fifo_din,
      D => \fifo_din[3]_i_1_n_0\,
      Q => \fifo_din_reg[7]_0\(3),
      R => '0'
    );
\fifo_din_reg[3]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_din[3]_i_9_n_0\,
      I1 => \fifo_din[3]_i_10_n_0\,
      O => \fifo_din_reg[3]_i_5_n_0\,
      S => idx_reg(2)
    );
\fifo_din_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => fifo_din,
      D => \fifo_din[4]_i_1_n_0\,
      Q => \fifo_din_reg[7]_0\(4),
      R => '0'
    );
\fifo_din_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => fifo_din,
      D => \fifo_din[5]_i_1_n_0\,
      Q => \fifo_din_reg[7]_0\(5),
      R => '0'
    );
\fifo_din_reg[5]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_din[5]_i_9_n_0\,
      I1 => \fifo_din[5]_i_10_n_0\,
      O => \fifo_din_reg[5]_i_4_n_0\,
      S => idx_reg(2)
    );
\fifo_din_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => fifo_din,
      D => \fifo_din[6]_i_1_n_0\,
      Q => \fifo_din_reg[7]_0\(6),
      R => '0'
    );
\fifo_din_reg[6]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_din[6]_i_9_n_0\,
      I1 => \fifo_din[6]_i_10_n_0\,
      O => \fifo_din_reg[6]_i_5_n_0\,
      S => idx_reg(2)
    );
\fifo_din_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => fifo_din,
      D => \fifo_din[7]_i_2_n_0\,
      Q => \fifo_din_reg[7]_0\(7),
      R => '0'
    );
\fifo_din_reg[7]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_din[7]_i_12_n_0\,
      I1 => \fifo_din[7]_i_13_n_0\,
      O => \fifo_din_reg[7]_i_8_n_0\,
      S => idx_reg(2)
    );
fifo_wr_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002020000000200"
    )
        port map (
      I0 => \^href_d\,
      I1 => c0_afull,
      I2 => trunc_reg_n_0,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[1]\,
      I5 => \^s0_href\,
      O => fifo_wr_en_i_1_n_0
    );
fifo_wr_en_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => fifo_wr_en_i_1_n_0,
      Q => \^c0_wr\,
      R => '0'
    );
fill_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A2AA"
    )
        port map (
      I0 => \out\(0),
      I1 => \^s0_vsync\,
      I2 => vsync_d,
      I3 => \^s0_stb\,
      O => \en_sync_reg[2]_0\
    );
\frame_no[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s0_vsync\,
      I1 => \^s0_stb\,
      I2 => vsync_qq,
      O => clear
    );
\frame_no[2]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \frame_no_reg_n_0_[0]\,
      O => \frame_no[2]_i_3_n_0\
    );
\frame_no_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \frame_no_reg[2]_i_2_n_7\,
      Q => \frame_no_reg_n_0_[0]\,
      R => '0'
    );
\frame_no_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
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
      CE => clear,
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
      CE => clear,
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
      CE => clear,
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
      CE => clear,
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
      CE => clear,
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
      CE => clear,
      D => \frame_no_reg[2]_i_2_n_6\,
      Q => \frame_no_reg_n_0_[1]\,
      R => '0'
    );
\frame_no_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \frame_no_reg[2]_i_2_n_5\,
      Q => \^frame_led0\,
      R => '0'
    );
\frame_no_reg[2]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \frame_no_reg[2]_i_2_n_0\,
      CO(2) => \frame_no_reg[2]_i_2_n_1\,
      CO(1) => \frame_no_reg[2]_i_2_n_2\,
      CO(0) => \frame_no_reg[2]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \frame_no_reg[2]_i_2_n_4\,
      O(2) => \frame_no_reg[2]_i_2_n_5\,
      O(1) => \frame_no_reg[2]_i_2_n_6\,
      O(0) => \frame_no_reg[2]_i_2_n_7\,
      S(3) => \frame_no_reg_n_0_[3]\,
      S(2) => \^frame_led0\,
      S(1) => \frame_no_reg_n_0_[1]\,
      S(0) => \frame_no[2]_i_3_n_0\
    );
\frame_no_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \frame_no_reg[2]_i_2_n_4\,
      Q => \frame_no_reg_n_0_[3]\,
      R => '0'
    );
\frame_no_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \frame_no_reg[4]_i_1_n_7\,
      Q => \frame_no_reg_n_0_[4]\,
      R => '0'
    );
\frame_no_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \frame_no_reg[2]_i_2_n_0\,
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
      CE => clear,
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
      CE => clear,
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
      CE => clear,
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
      CE => clear,
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
      CE => clear,
      D => \frame_no_reg[8]_i_1_n_6\,
      Q => data1(1),
      R => '0'
    );
\h_tof_mm_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_mm_reg[15]_0\(0),
      Q => \h_tof_mm_reg_n_0_[0]\,
      R => '0'
    );
\h_tof_mm_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_mm_reg[15]_0\(10),
      Q => data16(2),
      R => '0'
    );
\h_tof_mm_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_mm_reg[15]_0\(11),
      Q => data16(3),
      R => '0'
    );
\h_tof_mm_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_mm_reg[15]_0\(12),
      Q => data16(4),
      R => '0'
    );
\h_tof_mm_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_mm_reg[15]_0\(13),
      Q => data16(5),
      R => '0'
    );
\h_tof_mm_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_mm_reg[15]_0\(14),
      Q => data16(6),
      R => '0'
    );
\h_tof_mm_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_mm_reg[15]_0\(15),
      Q => data16(7),
      R => '0'
    );
\h_tof_mm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_mm_reg[15]_0\(1),
      Q => \h_tof_mm_reg_n_0_[1]\,
      R => '0'
    );
\h_tof_mm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_mm_reg[15]_0\(2),
      Q => \h_tof_mm_reg_n_0_[2]\,
      R => '0'
    );
\h_tof_mm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_mm_reg[15]_0\(3),
      Q => \h_tof_mm_reg_n_0_[3]\,
      R => '0'
    );
\h_tof_mm_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_mm_reg[15]_0\(4),
      Q => \h_tof_mm_reg_n_0_[4]\,
      R => '0'
    );
\h_tof_mm_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_mm_reg[15]_0\(5),
      Q => \h_tof_mm_reg_n_0_[5]\,
      R => '0'
    );
\h_tof_mm_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_mm_reg[15]_0\(6),
      Q => \h_tof_mm_reg_n_0_[6]\,
      R => '0'
    );
\h_tof_mm_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_mm_reg[15]_0\(7),
      Q => \h_tof_mm_reg_n_0_[7]\,
      R => '0'
    );
\h_tof_mm_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_mm_reg[15]_0\(8),
      Q => data16(0),
      R => '0'
    );
\h_tof_mm_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_mm_reg[15]_0\(9),
      Q => data16(1),
      R => '0'
    );
\h_tof_seq_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_seq_reg[7]_0\(0),
      Q => h_tof_seq(0),
      R => '0'
    );
\h_tof_seq_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_seq_reg[7]_0\(1),
      Q => h_tof_seq(1),
      R => '0'
    );
\h_tof_seq_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_seq_reg[7]_0\(2),
      Q => h_tof_seq(2),
      R => '0'
    );
\h_tof_seq_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_seq_reg[7]_0\(3),
      Q => h_tof_seq(3),
      R => '0'
    );
\h_tof_seq_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_seq_reg[7]_0\(4),
      Q => h_tof_seq(4),
      R => '0'
    );
\h_tof_seq_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_seq_reg[7]_0\(5),
      Q => h_tof_seq(5),
      R => '0'
    );
\h_tof_seq_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_seq_reg[7]_0\(6),
      Q => h_tof_seq(6),
      R => '0'
    );
\h_tof_seq_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_seq_reg[7]_0\(7),
      Q => h_tof_seq(7),
      R => '0'
    );
\h_tof_us_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_us_reg[31]_0\(0),
      Q => \h_tof_us_reg_n_0_[0]\,
      R => '0'
    );
\h_tof_us_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_us_reg[31]_0\(10),
      Q => data19(2),
      R => '0'
    );
\h_tof_us_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_us_reg[31]_0\(11),
      Q => data19(3),
      R => '0'
    );
\h_tof_us_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_us_reg[31]_0\(12),
      Q => data19(4),
      R => '0'
    );
\h_tof_us_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_us_reg[31]_0\(13),
      Q => data19(5),
      R => '0'
    );
\h_tof_us_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_us_reg[31]_0\(14),
      Q => data19(6),
      R => '0'
    );
\h_tof_us_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_us_reg[31]_0\(15),
      Q => data19(7),
      R => '0'
    );
\h_tof_us_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_us_reg[31]_0\(16),
      Q => data20(0),
      R => '0'
    );
\h_tof_us_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_us_reg[31]_0\(17),
      Q => data20(1),
      R => '0'
    );
\h_tof_us_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_us_reg[31]_0\(18),
      Q => data20(2),
      R => '0'
    );
\h_tof_us_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_us_reg[31]_0\(19),
      Q => data20(3),
      R => '0'
    );
\h_tof_us_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_us_reg[31]_0\(1),
      Q => \h_tof_us_reg_n_0_[1]\,
      R => '0'
    );
\h_tof_us_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_us_reg[31]_0\(20),
      Q => data20(4),
      R => '0'
    );
\h_tof_us_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_us_reg[31]_0\(21),
      Q => data20(5),
      R => '0'
    );
\h_tof_us_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_us_reg[31]_0\(22),
      Q => data20(6),
      R => '0'
    );
\h_tof_us_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_us_reg[31]_0\(23),
      Q => data20(7),
      R => '0'
    );
\h_tof_us_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_us_reg[31]_0\(24),
      Q => data21(0),
      R => '0'
    );
\h_tof_us_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_us_reg[31]_0\(25),
      Q => data21(1),
      R => '0'
    );
\h_tof_us_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_us_reg[31]_0\(26),
      Q => data21(2),
      R => '0'
    );
\h_tof_us_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_us_reg[31]_0\(27),
      Q => data21(3),
      R => '0'
    );
\h_tof_us_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_us_reg[31]_0\(28),
      Q => data21(4),
      R => '0'
    );
\h_tof_us_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_us_reg[31]_0\(29),
      Q => data21(5),
      R => '0'
    );
\h_tof_us_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_us_reg[31]_0\(2),
      Q => \h_tof_us_reg_n_0_[2]\,
      R => '0'
    );
\h_tof_us_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_us_reg[31]_0\(30),
      Q => data21(6),
      R => '0'
    );
\h_tof_us_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_us_reg[31]_0\(31),
      Q => data21(7),
      R => '0'
    );
\h_tof_us_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_us_reg[31]_0\(3),
      Q => \h_tof_us_reg_n_0_[3]\,
      R => '0'
    );
\h_tof_us_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_us_reg[31]_0\(4),
      Q => \h_tof_us_reg_n_0_[4]\,
      R => '0'
    );
\h_tof_us_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_us_reg[31]_0\(5),
      Q => \h_tof_us_reg_n_0_[5]\,
      R => '0'
    );
\h_tof_us_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_us_reg[31]_0\(6),
      Q => \h_tof_us_reg_n_0_[6]\,
      R => '0'
    );
\h_tof_us_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_us_reg[31]_0\(7),
      Q => \h_tof_us_reg_n_0_[7]\,
      R => '0'
    );
\h_tof_us_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_us_reg[31]_0\(8),
      Q => data19(0),
      R => '0'
    );
\h_tof_us_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \h_tof_us_reg[31]_0\(9),
      Q => data19(1),
      R => '0'
    );
href_d_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \^s0_href\,
      I1 => \^s0_stb\,
      I2 => \out\(0),
      I3 => href_d_reg,
      O => href_q_reg_0
    );
\href_h_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => href_m(1),
      Q => href_h(0),
      R => '0'
    );
\href_h_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => href_h(0),
      Q => href_h(1),
      R => '0'
    );
\href_m_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cam_href,
      Q => href_m(0),
      R => '0'
    );
\href_m_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => href_m(0),
      Q => href_m(1),
      R => '0'
    );
href_q_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \stb0__0\,
      D => href_h(1),
      Q => \^s0_href\,
      R => '0'
    );
href_qq_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^s0_href\,
      I1 => \^s0_stb\,
      I2 => href_qq,
      O => href_qq_i_1_n_0
    );
href_qq_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => href_qq_i_1_n_0,
      Q => href_qq,
      R => '0'
    );
\idx[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => idx_reg(0),
      O => \idx[0]_i_1_n_0\
    );
\idx[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => idx_reg(1),
      I1 => idx_reg(0),
      O => \p_0_in__1\(1)
    );
\idx[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => idx_reg(2),
      I1 => idx_reg(0),
      I2 => idx_reg(1),
      O => \p_0_in__1\(2)
    );
\idx[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => idx_reg(3),
      I1 => idx_reg(0),
      I2 => idx_reg(1),
      I3 => idx_reg(2),
      O => \p_0_in__1\(3)
    );
\idx[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s0_stb\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      O => \idx[4]_i_1_n_0\
    );
\idx[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => idx_reg(4),
      I1 => idx_reg(2),
      I2 => idx_reg(1),
      I3 => idx_reg(0),
      I4 => idx_reg(3),
      O => \p_0_in__1\(4)
    );
\idx_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \idx[4]_i_1_n_0\,
      D => \idx[0]_i_1_n_0\,
      Q => idx_reg(0),
      R => clear
    );
\idx_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \idx[4]_i_1_n_0\,
      D => \p_0_in__1\(1),
      Q => idx_reg(1),
      R => clear
    );
\idx_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \idx[4]_i_1_n_0\,
      D => \p_0_in__1\(2),
      Q => idx_reg(2),
      R => clear
    );
\idx_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \idx[4]_i_1_n_0\,
      D => \p_0_in__1\(3),
      Q => idx_reg(3),
      R => clear
    );
\idx_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \idx[4]_i_1_n_0\,
      D => \p_0_in__1\(4),
      Q => idx_reg(4),
      R => clear
    );
\last_bpl[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => href_qq,
      I1 => \^s0_stb\,
      I2 => \^s0_href\,
      O => \last_bpl[15]_i_1_n_0\
    );
\last_bpl_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1_n_0\,
      D => line_bytes_reg(0),
      Q => last_bpl(0),
      R => '0'
    );
\last_bpl_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1_n_0\,
      D => line_bytes_reg(10),
      Q => last_bpl(10),
      R => '0'
    );
\last_bpl_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1_n_0\,
      D => line_bytes_reg(11),
      Q => last_bpl(11),
      R => '0'
    );
\last_bpl_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1_n_0\,
      D => line_bytes_reg(12),
      Q => last_bpl(12),
      R => '0'
    );
\last_bpl_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1_n_0\,
      D => line_bytes_reg(13),
      Q => last_bpl(13),
      R => '0'
    );
\last_bpl_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1_n_0\,
      D => line_bytes_reg(14),
      Q => last_bpl(14),
      R => '0'
    );
\last_bpl_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1_n_0\,
      D => line_bytes_reg(15),
      Q => last_bpl(15),
      R => '0'
    );
\last_bpl_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1_n_0\,
      D => line_bytes_reg(1),
      Q => last_bpl(1),
      R => '0'
    );
\last_bpl_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1_n_0\,
      D => line_bytes_reg(2),
      Q => last_bpl(2),
      R => '0'
    );
\last_bpl_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1_n_0\,
      D => line_bytes_reg(3),
      Q => last_bpl(3),
      R => '0'
    );
\last_bpl_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1_n_0\,
      D => line_bytes_reg(4),
      Q => last_bpl(4),
      R => '0'
    );
\last_bpl_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1_n_0\,
      D => line_bytes_reg(5),
      Q => last_bpl(5),
      R => '0'
    );
\last_bpl_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1_n_0\,
      D => line_bytes_reg(6),
      Q => last_bpl(6),
      R => '0'
    );
\last_bpl_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1_n_0\,
      D => line_bytes_reg(7),
      Q => last_bpl(7),
      R => '0'
    );
\last_bpl_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1_n_0\,
      D => line_bytes_reg(8),
      Q => last_bpl(8),
      R => '0'
    );
\last_bpl_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1_n_0\,
      D => line_bytes_reg(9),
      Q => last_bpl(9),
      R => '0'
    );
\line_bytes[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s0_stb\,
      I1 => \^s0_href\,
      O => \line_bytes[0]_i_1_n_0\
    );
\line_bytes[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_bytes_reg(0),
      O => \line_bytes[0]_i_3_n_0\
    );
\line_bytes_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \line_bytes[0]_i_1_n_0\,
      D => \line_bytes_reg[0]_i_2_n_7\,
      Q => line_bytes_reg(0),
      R => \last_bpl[15]_i_1_n_0\
    );
\line_bytes_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \line_bytes_reg[0]_i_2_n_0\,
      CO(2) => \line_bytes_reg[0]_i_2_n_1\,
      CO(1) => \line_bytes_reg[0]_i_2_n_2\,
      CO(0) => \line_bytes_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \line_bytes_reg[0]_i_2_n_4\,
      O(2) => \line_bytes_reg[0]_i_2_n_5\,
      O(1) => \line_bytes_reg[0]_i_2_n_6\,
      O(0) => \line_bytes_reg[0]_i_2_n_7\,
      S(3 downto 1) => line_bytes_reg(3 downto 1),
      S(0) => \line_bytes[0]_i_3_n_0\
    );
\line_bytes_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \line_bytes[0]_i_1_n_0\,
      D => \line_bytes_reg[8]_i_1_n_5\,
      Q => line_bytes_reg(10),
      R => \last_bpl[15]_i_1_n_0\
    );
\line_bytes_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \line_bytes[0]_i_1_n_0\,
      D => \line_bytes_reg[8]_i_1_n_4\,
      Q => line_bytes_reg(11),
      R => \last_bpl[15]_i_1_n_0\
    );
\line_bytes_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \line_bytes[0]_i_1_n_0\,
      D => \line_bytes_reg[12]_i_1_n_7\,
      Q => line_bytes_reg(12),
      R => \last_bpl[15]_i_1_n_0\
    );
\line_bytes_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \line_bytes_reg[8]_i_1_n_0\,
      CO(3) => \NLW_line_bytes_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \line_bytes_reg[12]_i_1_n_1\,
      CO(1) => \line_bytes_reg[12]_i_1_n_2\,
      CO(0) => \line_bytes_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \line_bytes_reg[12]_i_1_n_4\,
      O(2) => \line_bytes_reg[12]_i_1_n_5\,
      O(1) => \line_bytes_reg[12]_i_1_n_6\,
      O(0) => \line_bytes_reg[12]_i_1_n_7\,
      S(3 downto 0) => line_bytes_reg(15 downto 12)
    );
\line_bytes_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \line_bytes[0]_i_1_n_0\,
      D => \line_bytes_reg[12]_i_1_n_6\,
      Q => line_bytes_reg(13),
      R => \last_bpl[15]_i_1_n_0\
    );
\line_bytes_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \line_bytes[0]_i_1_n_0\,
      D => \line_bytes_reg[12]_i_1_n_5\,
      Q => line_bytes_reg(14),
      R => \last_bpl[15]_i_1_n_0\
    );
\line_bytes_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \line_bytes[0]_i_1_n_0\,
      D => \line_bytes_reg[12]_i_1_n_4\,
      Q => line_bytes_reg(15),
      R => \last_bpl[15]_i_1_n_0\
    );
\line_bytes_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \line_bytes[0]_i_1_n_0\,
      D => \line_bytes_reg[0]_i_2_n_6\,
      Q => line_bytes_reg(1),
      R => \last_bpl[15]_i_1_n_0\
    );
\line_bytes_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \line_bytes[0]_i_1_n_0\,
      D => \line_bytes_reg[0]_i_2_n_5\,
      Q => line_bytes_reg(2),
      R => \last_bpl[15]_i_1_n_0\
    );
\line_bytes_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \line_bytes[0]_i_1_n_0\,
      D => \line_bytes_reg[0]_i_2_n_4\,
      Q => line_bytes_reg(3),
      R => \last_bpl[15]_i_1_n_0\
    );
\line_bytes_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \line_bytes[0]_i_1_n_0\,
      D => \line_bytes_reg[4]_i_1_n_7\,
      Q => line_bytes_reg(4),
      R => \last_bpl[15]_i_1_n_0\
    );
\line_bytes_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \line_bytes_reg[0]_i_2_n_0\,
      CO(3) => \line_bytes_reg[4]_i_1_n_0\,
      CO(2) => \line_bytes_reg[4]_i_1_n_1\,
      CO(1) => \line_bytes_reg[4]_i_1_n_2\,
      CO(0) => \line_bytes_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \line_bytes_reg[4]_i_1_n_4\,
      O(2) => \line_bytes_reg[4]_i_1_n_5\,
      O(1) => \line_bytes_reg[4]_i_1_n_6\,
      O(0) => \line_bytes_reg[4]_i_1_n_7\,
      S(3 downto 0) => line_bytes_reg(7 downto 4)
    );
\line_bytes_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \line_bytes[0]_i_1_n_0\,
      D => \line_bytes_reg[4]_i_1_n_6\,
      Q => line_bytes_reg(5),
      R => \last_bpl[15]_i_1_n_0\
    );
\line_bytes_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \line_bytes[0]_i_1_n_0\,
      D => \line_bytes_reg[4]_i_1_n_5\,
      Q => line_bytes_reg(6),
      R => \last_bpl[15]_i_1_n_0\
    );
\line_bytes_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \line_bytes[0]_i_1_n_0\,
      D => \line_bytes_reg[4]_i_1_n_4\,
      Q => line_bytes_reg(7),
      R => \last_bpl[15]_i_1_n_0\
    );
\line_bytes_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \line_bytes[0]_i_1_n_0\,
      D => \line_bytes_reg[8]_i_1_n_7\,
      Q => line_bytes_reg(8),
      R => \last_bpl[15]_i_1_n_0\
    );
\line_bytes_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \line_bytes_reg[4]_i_1_n_0\,
      CO(3) => \line_bytes_reg[8]_i_1_n_0\,
      CO(2) => \line_bytes_reg[8]_i_1_n_1\,
      CO(1) => \line_bytes_reg[8]_i_1_n_2\,
      CO(0) => \line_bytes_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \line_bytes_reg[8]_i_1_n_4\,
      O(2) => \line_bytes_reg[8]_i_1_n_5\,
      O(1) => \line_bytes_reg[8]_i_1_n_6\,
      O(0) => \line_bytes_reg[8]_i_1_n_7\,
      S(3 downto 0) => line_bytes_reg(11 downto 8)
    );
\line_bytes_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \line_bytes[0]_i_1_n_0\,
      D => \line_bytes_reg[8]_i_1_n_6\,
      Q => line_bytes_reg(9),
      R => \last_bpl[15]_i_1_n_0\
    );
\lines[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => lines_reg(0),
      O => \lines[0]_i_2_n_0\
    );
\lines_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1_n_0\,
      D => \lines_reg[0]_i_1_n_7\,
      Q => lines_reg(0),
      R => clear
    );
\lines_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \lines_reg[0]_i_1_n_0\,
      CO(2) => \lines_reg[0]_i_1_n_1\,
      CO(1) => \lines_reg[0]_i_1_n_2\,
      CO(0) => \lines_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \lines_reg[0]_i_1_n_4\,
      O(2) => \lines_reg[0]_i_1_n_5\,
      O(1) => \lines_reg[0]_i_1_n_6\,
      O(0) => \lines_reg[0]_i_1_n_7\,
      S(3 downto 1) => lines_reg(3 downto 1),
      S(0) => \lines[0]_i_2_n_0\
    );
\lines_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1_n_0\,
      D => \lines_reg[8]_i_1_n_5\,
      Q => lines_reg(10),
      R => clear
    );
\lines_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1_n_0\,
      D => \lines_reg[8]_i_1_n_4\,
      Q => lines_reg(11),
      R => clear
    );
\lines_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1_n_0\,
      D => \lines_reg[12]_i_1_n_7\,
      Q => lines_reg(12),
      R => clear
    );
\lines_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \lines_reg[8]_i_1_n_0\,
      CO(3) => \NLW_lines_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \lines_reg[12]_i_1_n_1\,
      CO(1) => \lines_reg[12]_i_1_n_2\,
      CO(0) => \lines_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \lines_reg[12]_i_1_n_4\,
      O(2) => \lines_reg[12]_i_1_n_5\,
      O(1) => \lines_reg[12]_i_1_n_6\,
      O(0) => \lines_reg[12]_i_1_n_7\,
      S(3 downto 0) => lines_reg(15 downto 12)
    );
\lines_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1_n_0\,
      D => \lines_reg[12]_i_1_n_6\,
      Q => lines_reg(13),
      R => clear
    );
\lines_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1_n_0\,
      D => \lines_reg[12]_i_1_n_5\,
      Q => lines_reg(14),
      R => clear
    );
\lines_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1_n_0\,
      D => \lines_reg[12]_i_1_n_4\,
      Q => lines_reg(15),
      R => clear
    );
\lines_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1_n_0\,
      D => \lines_reg[0]_i_1_n_6\,
      Q => lines_reg(1),
      R => clear
    );
\lines_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1_n_0\,
      D => \lines_reg[0]_i_1_n_5\,
      Q => lines_reg(2),
      R => clear
    );
\lines_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1_n_0\,
      D => \lines_reg[0]_i_1_n_4\,
      Q => lines_reg(3),
      R => clear
    );
\lines_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1_n_0\,
      D => \lines_reg[4]_i_1_n_7\,
      Q => lines_reg(4),
      R => clear
    );
\lines_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \lines_reg[0]_i_1_n_0\,
      CO(3) => \lines_reg[4]_i_1_n_0\,
      CO(2) => \lines_reg[4]_i_1_n_1\,
      CO(1) => \lines_reg[4]_i_1_n_2\,
      CO(0) => \lines_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \lines_reg[4]_i_1_n_4\,
      O(2) => \lines_reg[4]_i_1_n_5\,
      O(1) => \lines_reg[4]_i_1_n_6\,
      O(0) => \lines_reg[4]_i_1_n_7\,
      S(3 downto 0) => lines_reg(7 downto 4)
    );
\lines_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1_n_0\,
      D => \lines_reg[4]_i_1_n_6\,
      Q => lines_reg(5),
      R => clear
    );
\lines_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1_n_0\,
      D => \lines_reg[4]_i_1_n_5\,
      Q => lines_reg(6),
      R => clear
    );
\lines_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1_n_0\,
      D => \lines_reg[4]_i_1_n_4\,
      Q => lines_reg(7),
      R => clear
    );
\lines_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1_n_0\,
      D => \lines_reg[8]_i_1_n_7\,
      Q => lines_reg(8),
      R => clear
    );
\lines_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \lines_reg[4]_i_1_n_0\,
      CO(3) => \lines_reg[8]_i_1_n_0\,
      CO(2) => \lines_reg[8]_i_1_n_1\,
      CO(1) => \lines_reg[8]_i_1_n_2\,
      CO(0) => \lines_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \lines_reg[8]_i_1_n_4\,
      O(2) => \lines_reg[8]_i_1_n_5\,
      O(1) => \lines_reg[8]_i_1_n_6\,
      O(0) => \lines_reg[8]_i_1_n_7\,
      S(3 downto 0) => lines_reg(11 downto 8)
    );
\lines_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1_n_0\,
      D => \lines_reg[8]_i_1_n_6\,
      Q => lines_reg(9),
      R => clear
    );
\pclk_2khz_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tick,
      D => pclk_cnt(0),
      Q => \pclk_2khz_reg_n_0_[0]\,
      R => '0'
    );
\pclk_2khz_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tick,
      D => pclk_cnt(10),
      Q => data7(2),
      R => '0'
    );
\pclk_2khz_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tick,
      D => pclk_cnt(11),
      Q => data7(3),
      R => '0'
    );
\pclk_2khz_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tick,
      D => pclk_cnt(12),
      Q => data7(4),
      R => '0'
    );
\pclk_2khz_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tick,
      D => pclk_cnt(13),
      Q => data7(5),
      R => '0'
    );
\pclk_2khz_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tick,
      D => pclk_cnt(14),
      Q => data7(6),
      R => '0'
    );
\pclk_2khz_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tick,
      D => pclk_cnt(15),
      Q => data7(7),
      R => '0'
    );
\pclk_2khz_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tick,
      D => pclk_cnt(1),
      Q => \pclk_2khz_reg_n_0_[1]\,
      R => '0'
    );
\pclk_2khz_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tick,
      D => pclk_cnt(2),
      Q => \pclk_2khz_reg_n_0_[2]\,
      R => '0'
    );
\pclk_2khz_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tick,
      D => pclk_cnt(3),
      Q => \pclk_2khz_reg_n_0_[3]\,
      R => '0'
    );
\pclk_2khz_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tick,
      D => pclk_cnt(4),
      Q => \pclk_2khz_reg_n_0_[4]\,
      R => '0'
    );
\pclk_2khz_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tick,
      D => pclk_cnt(5),
      Q => \pclk_2khz_reg_n_0_[5]\,
      R => '0'
    );
\pclk_2khz_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tick,
      D => pclk_cnt(6),
      Q => \pclk_2khz_reg_n_0_[6]\,
      R => '0'
    );
\pclk_2khz_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tick,
      D => pclk_cnt(7),
      Q => \pclk_2khz_reg_n_0_[7]\,
      R => '0'
    );
\pclk_2khz_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tick,
      D => pclk_cnt(8),
      Q => data7(0),
      R => '0'
    );
\pclk_2khz_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tick,
      D => pclk_cnt(9),
      Q => data7(1),
      R => '0'
    );
\pclk_cnt0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pclk_cnt0_inferred__0/i__carry_n_0\,
      CO(2) => \pclk_cnt0_inferred__0/i__carry_n_1\,
      CO(1) => \pclk_cnt0_inferred__0/i__carry_n_2\,
      CO(0) => \pclk_cnt0_inferred__0/i__carry_n_3\,
      CYINIT => pclk_cnt(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => pclk_cnt0(4 downto 1),
      S(3 downto 0) => pclk_cnt(4 downto 1)
    );
\pclk_cnt0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \pclk_cnt0_inferred__0/i__carry_n_0\,
      CO(3) => \pclk_cnt0_inferred__0/i__carry__0_n_0\,
      CO(2) => \pclk_cnt0_inferred__0/i__carry__0_n_1\,
      CO(1) => \pclk_cnt0_inferred__0/i__carry__0_n_2\,
      CO(0) => \pclk_cnt0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => pclk_cnt0(8 downto 5),
      S(3 downto 0) => pclk_cnt(8 downto 5)
    );
\pclk_cnt0_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pclk_cnt0_inferred__0/i__carry__0_n_0\,
      CO(3) => \pclk_cnt0_inferred__0/i__carry__1_n_0\,
      CO(2) => \pclk_cnt0_inferred__0/i__carry__1_n_1\,
      CO(1) => \pclk_cnt0_inferred__0/i__carry__1_n_2\,
      CO(0) => \pclk_cnt0_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => pclk_cnt0(12 downto 9),
      S(3 downto 0) => pclk_cnt(12 downto 9)
    );
\pclk_cnt0_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \pclk_cnt0_inferred__0/i__carry__1_n_0\,
      CO(3 downto 2) => \NLW_pclk_cnt0_inferred__0/i__carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \pclk_cnt0_inferred__0/i__carry__2_n_2\,
      CO(0) => \pclk_cnt0_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_pclk_cnt0_inferred__0/i__carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => pclk_cnt0(15 downto 13),
      S(3) => '0',
      S(2 downto 0) => pclk_cnt(15 downto 13)
    );
\pclk_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8FB0"
    )
        port map (
      I0 => \^s0_stb\,
      I1 => tick,
      I2 => \pclk_cnt[15]_i_1_n_0\,
      I3 => pclk_cnt(0),
      O => \pclk_cnt[0]_i_1_n_0\
    );
\pclk_cnt[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEFAAAAAAAA"
    )
        port map (
      I0 => tick,
      I1 => \pclk_cnt[15]_i_2_n_0\,
      I2 => \pclk_cnt[15]_i_3_n_0\,
      I3 => \pclk_cnt[15]_i_4_n_0\,
      I4 => \pclk_cnt[15]_i_5_n_0\,
      I5 => \^s0_stb\,
      O => \pclk_cnt[15]_i_1_n_0\
    );
\pclk_cnt[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => pclk_cnt(13),
      I1 => pclk_cnt(10),
      I2 => pclk_cnt(7),
      I3 => pclk_cnt(1),
      O => \pclk_cnt[15]_i_2_n_0\
    );
\pclk_cnt[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => pclk_cnt(12),
      I1 => pclk_cnt(5),
      I2 => pclk_cnt(6),
      I3 => pclk_cnt(0),
      O => \pclk_cnt[15]_i_3_n_0\
    );
\pclk_cnt[15]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => pclk_cnt(15),
      I1 => pclk_cnt(8),
      I2 => pclk_cnt(14),
      I3 => pclk_cnt(11),
      O => \pclk_cnt[15]_i_4_n_0\
    );
\pclk_cnt[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => pclk_cnt(3),
      I1 => pclk_cnt(2),
      I2 => pclk_cnt(9),
      I3 => pclk_cnt(4),
      O => \pclk_cnt[15]_i_5_n_0\
    );
\pclk_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \pclk_cnt[0]_i_1_n_0\,
      Q => pclk_cnt(0),
      R => '0'
    );
\pclk_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pclk_cnt[15]_i_1_n_0\,
      D => pclk_cnt0(10),
      Q => pclk_cnt(10),
      R => tick
    );
\pclk_cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pclk_cnt[15]_i_1_n_0\,
      D => pclk_cnt0(11),
      Q => pclk_cnt(11),
      R => tick
    );
\pclk_cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pclk_cnt[15]_i_1_n_0\,
      D => pclk_cnt0(12),
      Q => pclk_cnt(12),
      R => tick
    );
\pclk_cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pclk_cnt[15]_i_1_n_0\,
      D => pclk_cnt0(13),
      Q => pclk_cnt(13),
      R => tick
    );
\pclk_cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pclk_cnt[15]_i_1_n_0\,
      D => pclk_cnt0(14),
      Q => pclk_cnt(14),
      R => tick
    );
\pclk_cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pclk_cnt[15]_i_1_n_0\,
      D => pclk_cnt0(15),
      Q => pclk_cnt(15),
      R => tick
    );
\pclk_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pclk_cnt[15]_i_1_n_0\,
      D => pclk_cnt0(1),
      Q => pclk_cnt(1),
      R => tick
    );
\pclk_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pclk_cnt[15]_i_1_n_0\,
      D => pclk_cnt0(2),
      Q => pclk_cnt(2),
      R => tick
    );
\pclk_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pclk_cnt[15]_i_1_n_0\,
      D => pclk_cnt0(3),
      Q => pclk_cnt(3),
      R => tick
    );
\pclk_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pclk_cnt[15]_i_1_n_0\,
      D => pclk_cnt0(4),
      Q => pclk_cnt(4),
      R => tick
    );
\pclk_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pclk_cnt[15]_i_1_n_0\,
      D => pclk_cnt0(5),
      Q => pclk_cnt(5),
      R => tick
    );
\pclk_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pclk_cnt[15]_i_1_n_0\,
      D => pclk_cnt0(6),
      Q => pclk_cnt(6),
      R => tick
    );
\pclk_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pclk_cnt[15]_i_1_n_0\,
      D => pclk_cnt0(7),
      Q => pclk_cnt(7),
      R => tick
    );
\pclk_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pclk_cnt[15]_i_1_n_0\,
      D => pclk_cnt0(8),
      Q => pclk_cnt(8),
      R => tick
    );
\pclk_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pclk_cnt[15]_i_1_n_0\,
      D => pclk_cnt0(9),
      Q => pclk_cnt(9),
      R => tick
    );
pclk_f_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => pclk_f,
      I1 => pclk_h(0),
      I2 => pclk_h(1),
      O => pclk_f_i_1_n_0
    );
pclk_f_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pclk_f_i_1_n_0,
      Q => pclk_f,
      R => '0'
    );
\pclk_h_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pclk_m(1),
      Q => pclk_h(0),
      R => '0'
    );
\pclk_h_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pclk_h(0),
      Q => pclk_h(1),
      R => '0'
    );
\pclk_m_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cam_pclk,
      Q => pclk_m(0),
      R => '0'
    );
\pclk_m_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pclk_m(0),
      Q => pclk_m(1),
      R => '0'
    );
\prev_bpl_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => last_bpl(0),
      Q => \prev_bpl_reg_n_0_[0]\,
      R => '0'
    );
\prev_bpl_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => last_bpl(10),
      Q => data3(2),
      R => '0'
    );
\prev_bpl_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => last_bpl(11),
      Q => data3(3),
      R => '0'
    );
\prev_bpl_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => last_bpl(12),
      Q => data3(4),
      R => '0'
    );
\prev_bpl_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => last_bpl(13),
      Q => data3(5),
      R => '0'
    );
\prev_bpl_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => last_bpl(14),
      Q => data3(6),
      R => '0'
    );
\prev_bpl_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => last_bpl(15),
      Q => data3(7),
      R => '0'
    );
\prev_bpl_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => last_bpl(1),
      Q => \prev_bpl_reg_n_0_[1]\,
      R => '0'
    );
\prev_bpl_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => last_bpl(2),
      Q => \prev_bpl_reg_n_0_[2]\,
      R => '0'
    );
\prev_bpl_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => last_bpl(3),
      Q => \prev_bpl_reg_n_0_[3]\,
      R => '0'
    );
\prev_bpl_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => last_bpl(4),
      Q => \prev_bpl_reg_n_0_[4]\,
      R => '0'
    );
\prev_bpl_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => last_bpl(5),
      Q => \prev_bpl_reg_n_0_[5]\,
      R => '0'
    );
\prev_bpl_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => last_bpl(6),
      Q => \prev_bpl_reg_n_0_[6]\,
      R => '0'
    );
\prev_bpl_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => last_bpl(7),
      Q => \prev_bpl_reg_n_0_[7]\,
      R => '0'
    );
\prev_bpl_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => last_bpl(8),
      Q => data3(0),
      R => '0'
    );
\prev_bpl_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => last_bpl(9),
      Q => data3(1),
      R => '0'
    );
\prev_lines_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => lines_reg(0),
      Q => \prev_lines_reg_n_0_[0]\,
      R => '0'
    );
\prev_lines_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => lines_reg(10),
      Q => data5(2),
      R => '0'
    );
\prev_lines_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => lines_reg(11),
      Q => data5(3),
      R => '0'
    );
\prev_lines_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => lines_reg(12),
      Q => data5(4),
      R => '0'
    );
\prev_lines_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => lines_reg(13),
      Q => data5(5),
      R => '0'
    );
\prev_lines_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => lines_reg(14),
      Q => data5(6),
      R => '0'
    );
\prev_lines_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => lines_reg(15),
      Q => data5(7),
      R => '0'
    );
\prev_lines_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => lines_reg(1),
      Q => \prev_lines_reg_n_0_[1]\,
      R => '0'
    );
\prev_lines_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => lines_reg(2),
      Q => \prev_lines_reg_n_0_[2]\,
      R => '0'
    );
\prev_lines_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => lines_reg(3),
      Q => \prev_lines_reg_n_0_[3]\,
      R => '0'
    );
\prev_lines_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => lines_reg(4),
      Q => \prev_lines_reg_n_0_[4]\,
      R => '0'
    );
\prev_lines_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => lines_reg(5),
      Q => \prev_lines_reg_n_0_[5]\,
      R => '0'
    );
\prev_lines_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => lines_reg(6),
      Q => \prev_lines_reg_n_0_[6]\,
      R => '0'
    );
\prev_lines_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => lines_reg(7),
      Q => \prev_lines_reg_n_0_[7]\,
      R => '0'
    );
\prev_lines_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => lines_reg(8),
      Q => data5(0),
      R => '0'
    );
\prev_lines_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => lines_reg(9),
      Q => data5(1),
      R => '0'
    );
\prev_ticks_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => ticks_reg(0),
      Q => \prev_ticks_reg_n_0_[0]\,
      R => '0'
    );
\prev_ticks_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => ticks_reg(10),
      Q => data9(2),
      R => '0'
    );
\prev_ticks_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => ticks_reg(11),
      Q => data9(3),
      R => '0'
    );
\prev_ticks_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => ticks_reg(12),
      Q => data9(4),
      R => '0'
    );
\prev_ticks_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => ticks_reg(13),
      Q => data9(5),
      R => '0'
    );
\prev_ticks_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => ticks_reg(14),
      Q => data9(6),
      R => '0'
    );
\prev_ticks_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => ticks_reg(15),
      Q => data9(7),
      R => '0'
    );
\prev_ticks_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => ticks_reg(1),
      Q => \prev_ticks_reg_n_0_[1]\,
      R => '0'
    );
\prev_ticks_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => ticks_reg(2),
      Q => \prev_ticks_reg_n_0_[2]\,
      R => '0'
    );
\prev_ticks_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => ticks_reg(3),
      Q => \prev_ticks_reg_n_0_[3]\,
      R => '0'
    );
\prev_ticks_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => ticks_reg(4),
      Q => \prev_ticks_reg_n_0_[4]\,
      R => '0'
    );
\prev_ticks_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => ticks_reg(5),
      Q => \prev_ticks_reg_n_0_[5]\,
      R => '0'
    );
\prev_ticks_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => ticks_reg(6),
      Q => \prev_ticks_reg_n_0_[6]\,
      R => '0'
    );
\prev_ticks_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => ticks_reg(7),
      Q => \prev_ticks_reg_n_0_[7]\,
      R => '0'
    );
\prev_ticks_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => ticks_reg(8),
      Q => data9(0),
      R => '0'
    );
\prev_ticks_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => ticks_reg(9),
      Q => data9(1),
      R => '0'
    );
prev_trunc_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => trunc_reg_n_0,
      Q => prev_trunc,
      R => '0'
    );
\px[10]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \^s0_stb\,
      I1 => \^s0_href\,
      I2 => href_d_reg,
      O => stb_reg_1
    );
\px[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s0_href\,
      I1 => \^s0_stb\,
      I2 => \px_reg[1]\,
      O => second
    );
\row[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20FF"
    )
        port map (
      I0 => \^s0_stb\,
      I1 => vsync_d,
      I2 => \^s0_vsync\,
      I3 => \out\(0),
      O => SR(0)
    );
\row[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \^s0_stb\,
      I1 => vsync_d,
      I2 => \^s0_vsync\,
      O => stb_reg_0
    );
\start_us_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => D(0),
      Q => \^start_us_reg[23]_0\(0),
      R => '0'
    );
\start_us_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => D(10),
      Q => \^start_us_reg[23]_0\(10),
      R => '0'
    );
\start_us_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => D(11),
      Q => \^start_us_reg[23]_0\(11),
      R => '0'
    );
\start_us_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => D(12),
      Q => \^start_us_reg[23]_0\(12),
      R => '0'
    );
\start_us_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => D(13),
      Q => \^start_us_reg[23]_0\(13),
      R => '0'
    );
\start_us_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => D(14),
      Q => \^start_us_reg[23]_0\(14),
      R => '0'
    );
\start_us_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => D(15),
      Q => \^start_us_reg[23]_0\(15),
      R => '0'
    );
\start_us_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => D(16),
      Q => \^start_us_reg[23]_0\(16),
      R => '0'
    );
\start_us_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => D(17),
      Q => \^start_us_reg[23]_0\(17),
      R => '0'
    );
\start_us_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => D(18),
      Q => \^start_us_reg[23]_0\(18),
      R => '0'
    );
\start_us_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => D(19),
      Q => \^start_us_reg[23]_0\(19),
      R => '0'
    );
\start_us_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => D(1),
      Q => \^start_us_reg[23]_0\(1),
      R => '0'
    );
\start_us_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => D(20),
      Q => \^start_us_reg[23]_0\(20),
      R => '0'
    );
\start_us_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => D(21),
      Q => \^start_us_reg[23]_0\(21),
      R => '0'
    );
\start_us_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => D(22),
      Q => \^start_us_reg[23]_0\(22),
      R => '0'
    );
\start_us_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => D(23),
      Q => \^start_us_reg[23]_0\(23),
      R => '0'
    );
\start_us_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => D(24),
      Q => data14(0),
      R => '0'
    );
\start_us_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => D(25),
      Q => data14(1),
      R => '0'
    );
\start_us_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => D(26),
      Q => data14(2),
      R => '0'
    );
\start_us_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => D(27),
      Q => data14(3),
      R => '0'
    );
\start_us_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => D(28),
      Q => data14(4),
      R => '0'
    );
\start_us_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => D(29),
      Q => data14(5),
      R => '0'
    );
\start_us_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => D(2),
      Q => \^start_us_reg[23]_0\(2),
      R => '0'
    );
\start_us_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => D(30),
      Q => data14(6),
      R => '0'
    );
\start_us_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => D(31),
      Q => data14(7),
      R => '0'
    );
\start_us_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => D(3),
      Q => \^start_us_reg[23]_0\(3),
      R => '0'
    );
\start_us_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => D(4),
      Q => \^start_us_reg[23]_0\(4),
      R => '0'
    );
\start_us_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => D(5),
      Q => \^start_us_reg[23]_0\(5),
      R => '0'
    );
\start_us_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => D(6),
      Q => \^start_us_reg[23]_0\(6),
      R => '0'
    );
\start_us_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => D(7),
      Q => \^start_us_reg[23]_0\(7),
      R => '0'
    );
\start_us_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => D(8),
      Q => \^start_us_reg[23]_0\(8),
      R => '0'
    );
\start_us_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => D(9),
      Q => \^start_us_reg[23]_0\(9),
      R => '0'
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF007F00"
    )
        port map (
      I0 => idx_reg(4),
      I1 => \state[0]_i_2_n_0\,
      I2 => \^s0_stb\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[1]\,
      I5 => clear,
      O => \state[0]_i_1_n_0\
    );
\state[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => idx_reg(3),
      I1 => idx_reg(0),
      I2 => idx_reg(1),
      I3 => idx_reg(2),
      O => \state[0]_i_2_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => state1_in,
      I2 => \out\(0),
      I3 => clear,
      O => \state[1]_i_1_n_0\
    );
\state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \idx[4]_i_1_n_0\,
      I1 => idx_reg(3),
      I2 => idx_reg(0),
      I3 => idx_reg(1),
      I4 => idx_reg(2),
      I5 => idx_reg(4),
      O => state1_in
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => \state_reg_n_0_[0]\,
      R => \state_reg[0]_0\
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => \state_reg_n_0_[1]\,
      R => '0'
    );
stb0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => pclk_h(1),
      I1 => pclk_h(0),
      I2 => pclk_f,
      O => \stb0__0\
    );
stb_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \stb0__0\,
      Q => \^s0_stb\,
      R => '0'
    );
\ticks[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => tick,
      I1 => \ticks[0]_i_3_n_0\,
      I2 => \ticks[0]_i_4_n_0\,
      I3 => \ticks[0]_i_5_n_0\,
      I4 => \ticks[0]_i_6_n_0\,
      O => \ticks[0]_i_1_n_0\
    );
\ticks[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => ticks_reg(11),
      I1 => ticks_reg(2),
      I2 => ticks_reg(15),
      I3 => ticks_reg(4),
      O => \ticks[0]_i_3_n_0\
    );
\ticks[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => ticks_reg(14),
      I1 => ticks_reg(0),
      I2 => ticks_reg(12),
      I3 => ticks_reg(3),
      O => \ticks[0]_i_4_n_0\
    );
\ticks[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => ticks_reg(6),
      I1 => ticks_reg(5),
      I2 => ticks_reg(9),
      I3 => ticks_reg(8),
      O => \ticks[0]_i_5_n_0\
    );
\ticks[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => ticks_reg(13),
      I1 => ticks_reg(10),
      I2 => ticks_reg(7),
      I3 => ticks_reg(1),
      O => \ticks[0]_i_6_n_0\
    );
\ticks[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ticks_reg(0),
      O => \ticks[0]_i_7_n_0\
    );
\ticks_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ticks[0]_i_1_n_0\,
      D => \ticks_reg[0]_i_2_n_7\,
      Q => ticks_reg(0),
      R => clear
    );
\ticks_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ticks_reg[0]_i_2_n_0\,
      CO(2) => \ticks_reg[0]_i_2_n_1\,
      CO(1) => \ticks_reg[0]_i_2_n_2\,
      CO(0) => \ticks_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \ticks_reg[0]_i_2_n_4\,
      O(2) => \ticks_reg[0]_i_2_n_5\,
      O(1) => \ticks_reg[0]_i_2_n_6\,
      O(0) => \ticks_reg[0]_i_2_n_7\,
      S(3 downto 1) => ticks_reg(3 downto 1),
      S(0) => \ticks[0]_i_7_n_0\
    );
\ticks_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ticks[0]_i_1_n_0\,
      D => \ticks_reg[8]_i_1_n_5\,
      Q => ticks_reg(10),
      R => clear
    );
\ticks_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ticks[0]_i_1_n_0\,
      D => \ticks_reg[8]_i_1_n_4\,
      Q => ticks_reg(11),
      R => clear
    );
\ticks_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ticks[0]_i_1_n_0\,
      D => \ticks_reg[12]_i_1_n_7\,
      Q => ticks_reg(12),
      R => clear
    );
\ticks_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ticks_reg[8]_i_1_n_0\,
      CO(3) => \NLW_ticks_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \ticks_reg[12]_i_1_n_1\,
      CO(1) => \ticks_reg[12]_i_1_n_2\,
      CO(0) => \ticks_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ticks_reg[12]_i_1_n_4\,
      O(2) => \ticks_reg[12]_i_1_n_5\,
      O(1) => \ticks_reg[12]_i_1_n_6\,
      O(0) => \ticks_reg[12]_i_1_n_7\,
      S(3 downto 0) => ticks_reg(15 downto 12)
    );
\ticks_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ticks[0]_i_1_n_0\,
      D => \ticks_reg[12]_i_1_n_6\,
      Q => ticks_reg(13),
      R => clear
    );
\ticks_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ticks[0]_i_1_n_0\,
      D => \ticks_reg[12]_i_1_n_5\,
      Q => ticks_reg(14),
      R => clear
    );
\ticks_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ticks[0]_i_1_n_0\,
      D => \ticks_reg[12]_i_1_n_4\,
      Q => ticks_reg(15),
      R => clear
    );
\ticks_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ticks[0]_i_1_n_0\,
      D => \ticks_reg[0]_i_2_n_6\,
      Q => ticks_reg(1),
      R => clear
    );
\ticks_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ticks[0]_i_1_n_0\,
      D => \ticks_reg[0]_i_2_n_5\,
      Q => ticks_reg(2),
      R => clear
    );
\ticks_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ticks[0]_i_1_n_0\,
      D => \ticks_reg[0]_i_2_n_4\,
      Q => ticks_reg(3),
      R => clear
    );
\ticks_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ticks[0]_i_1_n_0\,
      D => \ticks_reg[4]_i_1_n_7\,
      Q => ticks_reg(4),
      R => clear
    );
\ticks_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ticks_reg[0]_i_2_n_0\,
      CO(3) => \ticks_reg[4]_i_1_n_0\,
      CO(2) => \ticks_reg[4]_i_1_n_1\,
      CO(1) => \ticks_reg[4]_i_1_n_2\,
      CO(0) => \ticks_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ticks_reg[4]_i_1_n_4\,
      O(2) => \ticks_reg[4]_i_1_n_5\,
      O(1) => \ticks_reg[4]_i_1_n_6\,
      O(0) => \ticks_reg[4]_i_1_n_7\,
      S(3 downto 0) => ticks_reg(7 downto 4)
    );
\ticks_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ticks[0]_i_1_n_0\,
      D => \ticks_reg[4]_i_1_n_6\,
      Q => ticks_reg(5),
      R => clear
    );
\ticks_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ticks[0]_i_1_n_0\,
      D => \ticks_reg[4]_i_1_n_5\,
      Q => ticks_reg(6),
      R => clear
    );
\ticks_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ticks[0]_i_1_n_0\,
      D => \ticks_reg[4]_i_1_n_4\,
      Q => ticks_reg(7),
      R => clear
    );
\ticks_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ticks[0]_i_1_n_0\,
      D => \ticks_reg[8]_i_1_n_7\,
      Q => ticks_reg(8),
      R => clear
    );
\ticks_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ticks_reg[4]_i_1_n_0\,
      CO(3) => \ticks_reg[8]_i_1_n_0\,
      CO(2) => \ticks_reg[8]_i_1_n_1\,
      CO(1) => \ticks_reg[8]_i_1_n_2\,
      CO(0) => \ticks_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ticks_reg[8]_i_1_n_4\,
      O(2) => \ticks_reg[8]_i_1_n_5\,
      O(1) => \ticks_reg[8]_i_1_n_6\,
      O(0) => \ticks_reg[8]_i_1_n_7\,
      S(3 downto 0) => ticks_reg(11 downto 8)
    );
\ticks_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ticks[0]_i_1_n_0\,
      D => \ticks_reg[8]_i_1_n_6\,
      Q => ticks_reg(9),
      R => clear
    );
trunc_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => trunc_i_2_n_0,
      I1 => \out\(0),
      I2 => clear,
      O => trunc_i_1_n_0
    );
trunc_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0A800000"
    )
        port map (
      I0 => \^s0_stb\,
      I1 => \^s0_href\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => c0_afull,
      I5 => trunc_reg_n_0,
      O => trunc_i_2_n_0
    );
trunc_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => trunc_i_1_n_0,
      Q => trunc_reg_n_0,
      R => '0'
    );
vsync_d_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \^s0_vsync\,
      I1 => \^s0_stb\,
      I2 => \out\(0),
      I3 => vsync_d,
      O => vsync_q_reg_0
    );
\vsync_h_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => vsync_m(1),
      Q => \vsync_h_reg_n_0_[0]\,
      R => '0'
    );
\vsync_h_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \vsync_h_reg_n_0_[0]\,
      Q => p_0_in_0,
      R => '0'
    );
\vsync_m_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cam_vsync,
      Q => vsync_m(0),
      R => '0'
    );
\vsync_m_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => vsync_m(0),
      Q => vsync_m(1),
      R => '0'
    );
vsync_q_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \stb0__0\,
      D => p_0_in_0,
      Q => \^s0_vsync\,
      R => '0'
    );
vsync_qq_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^s0_vsync\,
      I1 => \^s0_stb\,
      I2 => vsync_qq,
      O => vsync_qq_i_1_n_0
    );
vsync_qq_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => vsync_qq_i_1_n_0,
      Q => vsync_qq,
      R => '0'
    );
\wp[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^c0_wr\,
      I1 => Q(0),
      O => do_wr
    );
wr_sof_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \out\(0),
      I1 => \^s0_stb\,
      I2 => vsync_d,
      I3 => \^s0_vsync\,
      O => \en_sync_reg[2]\
    );
\yr[-1111111104]__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4FFF"
    )
        port map (
      I0 => vsync_d,
      I1 => \^s0_vsync\,
      I2 => \out\(0),
      I3 => \^s0_stb\,
      O => vsync_d_reg
    );
\yr[-1111111104]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s0_stb\,
      I1 => \out\(0),
      O => \^href_d\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_cam_input_0_0_cam_capture_2 is
  port (
    s1_stb : out STD_LOGIC;
    s1_vsync : out STD_LOGIC;
    s1_href : out STD_LOGIC;
    frame_led1 : out STD_LOGIC;
    c1_wr : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \start_us_reg[19]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \start_us_reg[15]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \start_us_reg[11]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \start_us_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \start_us_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    do_wr : out STD_LOGIC;
    vsync_d_reg : out STD_LOGIC;
    stb_reg_0 : out STD_LOGIC;
    href_d : out STD_LOGIC;
    second : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \en_sync_reg[2]\ : out STD_LOGIC;
    stb_reg_1 : out STD_LOGIC;
    stb_reg_2 : out STD_LOGIC;
    \d_q_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \us1_seen_reg[11]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \start_us_reg[23]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \start_us_reg[31]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    href_q_reg_0 : out STD_LOGIC;
    vsync_q_reg_0 : out STD_LOGIC;
    \fifo_din_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    cam2_d : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    \state_reg[0]_0\ : in STD_LOGIC;
    \gl_phase_reg[23]\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \wp_reg[12]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    vsync_d : in STD_LOGIC;
    c1_afull : in STD_LOGIC;
    \px_reg[1]\ : in STD_LOGIC;
    href_d_reg : in STD_LOGIC;
    tick : in STD_LOGIC;
    \gl_seq_reg[0]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    cam2_pclk : in STD_LOGIC;
    cam2_vsync : in STD_LOGIC;
    cam2_href : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \h_tof_mm_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \h_tof_seq_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \h_tof_us_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_cam_input_0_0_cam_capture_2 : entity is "cam_capture";
end system_cam_input_0_0_cam_capture_2;

architecture STRUCTURE of system_cam_input_0_0_cam_capture_2 is
  signal \^q\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^c1_wr\ : STD_LOGIC;
  signal \d_h0_reg_n_0_[0]\ : STD_LOGIC;
  signal \d_h0_reg_n_0_[1]\ : STD_LOGIC;
  signal \d_h0_reg_n_0_[2]\ : STD_LOGIC;
  signal \d_h0_reg_n_0_[3]\ : STD_LOGIC;
  signal \d_h0_reg_n_0_[4]\ : STD_LOGIC;
  signal \d_h0_reg_n_0_[5]\ : STD_LOGIC;
  signal \d_h0_reg_n_0_[6]\ : STD_LOGIC;
  signal \d_h0_reg_n_0_[7]\ : STD_LOGIC;
  signal \d_h1_reg_n_0_[0]\ : STD_LOGIC;
  signal \d_h1_reg_n_0_[1]\ : STD_LOGIC;
  signal \d_h1_reg_n_0_[2]\ : STD_LOGIC;
  signal \d_h1_reg_n_0_[3]\ : STD_LOGIC;
  signal \d_h1_reg_n_0_[4]\ : STD_LOGIC;
  signal \d_h1_reg_n_0_[5]\ : STD_LOGIC;
  signal \d_h1_reg_n_0_[6]\ : STD_LOGIC;
  signal \d_h1_reg_n_0_[7]\ : STD_LOGIC;
  signal d_m0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute async_reg : string;
  attribute async_reg of d_m0 : signal is "true";
  signal d_m1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute async_reg of d_m1 : signal is "true";
  signal \^d_q_reg[7]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \fifo_din[0]_i_10__0_n_0\ : STD_LOGIC;
  signal \fifo_din[0]_i_11__0_n_0\ : STD_LOGIC;
  signal \fifo_din[0]_i_12__0_n_0\ : STD_LOGIC;
  signal \fifo_din[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \fifo_din[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \fifo_din[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \fifo_din[0]_i_5_n_0\ : STD_LOGIC;
  signal \fifo_din[0]_i_6__0_n_0\ : STD_LOGIC;
  signal \fifo_din[0]_i_7__0_n_0\ : STD_LOGIC;
  signal \fifo_din[0]_i_8__0_n_0\ : STD_LOGIC;
  signal \fifo_din[0]_i_9__0_n_0\ : STD_LOGIC;
  signal \fifo_din[1]_i_10__0_n_0\ : STD_LOGIC;
  signal \fifo_din[1]_i_11__0_n_0\ : STD_LOGIC;
  signal \fifo_din[1]_i_12__0_n_0\ : STD_LOGIC;
  signal \fifo_din[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \fifo_din[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \fifo_din[1]_i_4_n_0\ : STD_LOGIC;
  signal \fifo_din[1]_i_5__0_n_0\ : STD_LOGIC;
  signal \fifo_din[1]_i_6__0_n_0\ : STD_LOGIC;
  signal \fifo_din[1]_i_7__0_n_0\ : STD_LOGIC;
  signal \fifo_din[1]_i_8__0_n_0\ : STD_LOGIC;
  signal \fifo_din[1]_i_9__0_n_0\ : STD_LOGIC;
  signal \fifo_din[2]_i_10_n_0\ : STD_LOGIC;
  signal \fifo_din[2]_i_11__0_n_0\ : STD_LOGIC;
  signal \fifo_din[2]_i_12__0_n_0\ : STD_LOGIC;
  signal \fifo_din[2]_i_13__0_n_0\ : STD_LOGIC;
  signal \fifo_din[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \fifo_din[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \fifo_din[2]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_din[2]_i_4_n_0\ : STD_LOGIC;
  signal \fifo_din[2]_i_5_n_0\ : STD_LOGIC;
  signal \fifo_din[2]_i_6_n_0\ : STD_LOGIC;
  signal \fifo_din[2]_i_7__0_n_0\ : STD_LOGIC;
  signal \fifo_din[2]_i_8__0_n_0\ : STD_LOGIC;
  signal \fifo_din[2]_i_9__0_n_0\ : STD_LOGIC;
  signal \fifo_din[3]_i_10__0_n_0\ : STD_LOGIC;
  signal \fifo_din[3]_i_11__0_n_0\ : STD_LOGIC;
  signal \fifo_din[3]_i_12__0_n_0\ : STD_LOGIC;
  signal \fifo_din[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \fifo_din[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \fifo_din[3]_i_4__0_n_0\ : STD_LOGIC;
  signal \fifo_din[3]_i_5_n_0\ : STD_LOGIC;
  signal \fifo_din[3]_i_6__0_n_0\ : STD_LOGIC;
  signal \fifo_din[3]_i_7__0_n_0\ : STD_LOGIC;
  signal \fifo_din[3]_i_8__0_n_0\ : STD_LOGIC;
  signal \fifo_din[3]_i_9__0_n_0\ : STD_LOGIC;
  signal \fifo_din[4]_i_10__0_n_0\ : STD_LOGIC;
  signal \fifo_din[4]_i_11__0_n_0\ : STD_LOGIC;
  signal \fifo_din[4]_i_12__0_n_0\ : STD_LOGIC;
  signal \fifo_din[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \fifo_din[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \fifo_din[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \fifo_din[4]_i_5__0_n_0\ : STD_LOGIC;
  signal \fifo_din[4]_i_6__0_n_0\ : STD_LOGIC;
  signal \fifo_din[4]_i_7__0_n_0\ : STD_LOGIC;
  signal \fifo_din[4]_i_8__0_n_0\ : STD_LOGIC;
  signal \fifo_din[4]_i_9__0_n_0\ : STD_LOGIC;
  signal \fifo_din[5]_i_10__0_n_0\ : STD_LOGIC;
  signal \fifo_din[5]_i_11__0_n_0\ : STD_LOGIC;
  signal \fifo_din[5]_i_12__0_n_0\ : STD_LOGIC;
  signal \fifo_din[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \fifo_din[5]_i_2__0_n_0\ : STD_LOGIC;
  signal \fifo_din[5]_i_3__0_n_0\ : STD_LOGIC;
  signal \fifo_din[5]_i_5__0_n_0\ : STD_LOGIC;
  signal \fifo_din[5]_i_6__0_n_0\ : STD_LOGIC;
  signal \fifo_din[5]_i_7__0_n_0\ : STD_LOGIC;
  signal \fifo_din[5]_i_8__0_n_0\ : STD_LOGIC;
  signal \fifo_din[5]_i_9__0_n_0\ : STD_LOGIC;
  signal \fifo_din[6]_i_10__0_n_0\ : STD_LOGIC;
  signal \fifo_din[6]_i_11__0_n_0\ : STD_LOGIC;
  signal \fifo_din[6]_i_12__0_n_0\ : STD_LOGIC;
  signal \fifo_din[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \fifo_din[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \fifo_din[6]_i_3__0_n_0\ : STD_LOGIC;
  signal \fifo_din[6]_i_5_n_0\ : STD_LOGIC;
  signal \fifo_din[6]_i_6__0_n_0\ : STD_LOGIC;
  signal \fifo_din[6]_i_7__0_n_0\ : STD_LOGIC;
  signal \fifo_din[6]_i_8__0_n_0\ : STD_LOGIC;
  signal \fifo_din[6]_i_9__0_n_0\ : STD_LOGIC;
  signal \fifo_din[7]_i_10__0_n_0\ : STD_LOGIC;
  signal \fifo_din[7]_i_11__0_n_0\ : STD_LOGIC;
  signal \fifo_din[7]_i_12__0_n_0\ : STD_LOGIC;
  signal \fifo_din[7]_i_13__0_n_0\ : STD_LOGIC;
  signal \fifo_din[7]_i_14__0_n_0\ : STD_LOGIC;
  signal \fifo_din[7]_i_15__0_n_0\ : STD_LOGIC;
  signal \fifo_din[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \fifo_din[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \fifo_din[7]_i_3__0_n_0\ : STD_LOGIC;
  signal \fifo_din[7]_i_4__0_n_0\ : STD_LOGIC;
  signal \fifo_din[7]_i_5__0_n_0\ : STD_LOGIC;
  signal \fifo_din[7]_i_7__0_n_0\ : STD_LOGIC;
  signal \fifo_din[7]_i_8_n_0\ : STD_LOGIC;
  signal \fifo_din[7]_i_9__0_n_0\ : STD_LOGIC;
  signal \fifo_din_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_din_reg[1]_i_3__0_n_0\ : STD_LOGIC;
  signal \fifo_din_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_din_reg[4]_i_4_n_0\ : STD_LOGIC;
  signal \fifo_din_reg[5]_i_4__0_n_0\ : STD_LOGIC;
  signal \fifo_din_reg[6]_i_4_n_0\ : STD_LOGIC;
  signal \fifo_din_reg[7]_i_6_n_0\ : STD_LOGIC;
  signal \fifo_wr_en_i_1__0_n_0\ : STD_LOGIC;
  signal \^frame_led1\ : STD_LOGIC;
  signal \frame_no[2]_i_2_n_0\ : STD_LOGIC;
  signal frame_no_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \frame_no_reg[12]_i_1__0_n_1\ : STD_LOGIC;
  signal \frame_no_reg[12]_i_1__0_n_2\ : STD_LOGIC;
  signal \frame_no_reg[12]_i_1__0_n_3\ : STD_LOGIC;
  signal \frame_no_reg[12]_i_1__0_n_4\ : STD_LOGIC;
  signal \frame_no_reg[12]_i_1__0_n_5\ : STD_LOGIC;
  signal \frame_no_reg[12]_i_1__0_n_6\ : STD_LOGIC;
  signal \frame_no_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \frame_no_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \frame_no_reg[2]_i_1_n_1\ : STD_LOGIC;
  signal \frame_no_reg[2]_i_1_n_2\ : STD_LOGIC;
  signal \frame_no_reg[2]_i_1_n_3\ : STD_LOGIC;
  signal \frame_no_reg[2]_i_1_n_4\ : STD_LOGIC;
  signal \frame_no_reg[2]_i_1_n_5\ : STD_LOGIC;
  signal \frame_no_reg[2]_i_1_n_6\ : STD_LOGIC;
  signal \frame_no_reg[2]_i_1_n_7\ : STD_LOGIC;
  signal \frame_no_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \frame_no_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \frame_no_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \frame_no_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \frame_no_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \frame_no_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \frame_no_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \frame_no_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \frame_no_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \frame_no_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \frame_no_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \frame_no_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \frame_no_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \frame_no_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \frame_no_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \frame_no_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \h_tof_mm_reg_n_0_[0]\ : STD_LOGIC;
  signal \h_tof_mm_reg_n_0_[10]\ : STD_LOGIC;
  signal \h_tof_mm_reg_n_0_[11]\ : STD_LOGIC;
  signal \h_tof_mm_reg_n_0_[12]\ : STD_LOGIC;
  signal \h_tof_mm_reg_n_0_[13]\ : STD_LOGIC;
  signal \h_tof_mm_reg_n_0_[14]\ : STD_LOGIC;
  signal \h_tof_mm_reg_n_0_[15]\ : STD_LOGIC;
  signal \h_tof_mm_reg_n_0_[1]\ : STD_LOGIC;
  signal \h_tof_mm_reg_n_0_[2]\ : STD_LOGIC;
  signal \h_tof_mm_reg_n_0_[3]\ : STD_LOGIC;
  signal \h_tof_mm_reg_n_0_[4]\ : STD_LOGIC;
  signal \h_tof_mm_reg_n_0_[5]\ : STD_LOGIC;
  signal \h_tof_mm_reg_n_0_[6]\ : STD_LOGIC;
  signal \h_tof_mm_reg_n_0_[7]\ : STD_LOGIC;
  signal \h_tof_mm_reg_n_0_[8]\ : STD_LOGIC;
  signal \h_tof_mm_reg_n_0_[9]\ : STD_LOGIC;
  signal \h_tof_seq_reg_n_0_[0]\ : STD_LOGIC;
  signal \h_tof_seq_reg_n_0_[1]\ : STD_LOGIC;
  signal \h_tof_seq_reg_n_0_[2]\ : STD_LOGIC;
  signal \h_tof_seq_reg_n_0_[3]\ : STD_LOGIC;
  signal \h_tof_seq_reg_n_0_[4]\ : STD_LOGIC;
  signal \h_tof_seq_reg_n_0_[5]\ : STD_LOGIC;
  signal \h_tof_seq_reg_n_0_[6]\ : STD_LOGIC;
  signal \h_tof_seq_reg_n_0_[7]\ : STD_LOGIC;
  signal \h_tof_us_reg_n_0_[0]\ : STD_LOGIC;
  signal \h_tof_us_reg_n_0_[10]\ : STD_LOGIC;
  signal \h_tof_us_reg_n_0_[11]\ : STD_LOGIC;
  signal \h_tof_us_reg_n_0_[12]\ : STD_LOGIC;
  signal \h_tof_us_reg_n_0_[13]\ : STD_LOGIC;
  signal \h_tof_us_reg_n_0_[14]\ : STD_LOGIC;
  signal \h_tof_us_reg_n_0_[15]\ : STD_LOGIC;
  signal \h_tof_us_reg_n_0_[16]\ : STD_LOGIC;
  signal \h_tof_us_reg_n_0_[17]\ : STD_LOGIC;
  signal \h_tof_us_reg_n_0_[18]\ : STD_LOGIC;
  signal \h_tof_us_reg_n_0_[19]\ : STD_LOGIC;
  signal \h_tof_us_reg_n_0_[1]\ : STD_LOGIC;
  signal \h_tof_us_reg_n_0_[20]\ : STD_LOGIC;
  signal \h_tof_us_reg_n_0_[21]\ : STD_LOGIC;
  signal \h_tof_us_reg_n_0_[22]\ : STD_LOGIC;
  signal \h_tof_us_reg_n_0_[23]\ : STD_LOGIC;
  signal \h_tof_us_reg_n_0_[24]\ : STD_LOGIC;
  signal \h_tof_us_reg_n_0_[25]\ : STD_LOGIC;
  signal \h_tof_us_reg_n_0_[26]\ : STD_LOGIC;
  signal \h_tof_us_reg_n_0_[27]\ : STD_LOGIC;
  signal \h_tof_us_reg_n_0_[28]\ : STD_LOGIC;
  signal \h_tof_us_reg_n_0_[29]\ : STD_LOGIC;
  signal \h_tof_us_reg_n_0_[2]\ : STD_LOGIC;
  signal \h_tof_us_reg_n_0_[30]\ : STD_LOGIC;
  signal \h_tof_us_reg_n_0_[31]\ : STD_LOGIC;
  signal \h_tof_us_reg_n_0_[3]\ : STD_LOGIC;
  signal \h_tof_us_reg_n_0_[4]\ : STD_LOGIC;
  signal \h_tof_us_reg_n_0_[5]\ : STD_LOGIC;
  signal \h_tof_us_reg_n_0_[6]\ : STD_LOGIC;
  signal \h_tof_us_reg_n_0_[7]\ : STD_LOGIC;
  signal \h_tof_us_reg_n_0_[8]\ : STD_LOGIC;
  signal \h_tof_us_reg_n_0_[9]\ : STD_LOGIC;
  signal \^href_d\ : STD_LOGIC;
  signal \href_h_reg_n_0_[0]\ : STD_LOGIC;
  signal \href_h_reg_n_0_[1]\ : STD_LOGIC;
  signal href_m : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of href_m : signal is "true";
  signal \href_qq_i_1__0_n_0\ : STD_LOGIC;
  signal href_qq_reg_n_0 : STD_LOGIC;
  signal \idx[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \idx[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \idx[4]_i_1__0_n_0\ : STD_LOGIC;
  signal idx_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \last_bpl[15]_i_1__0_n_0\ : STD_LOGIC;
  signal \last_bpl_reg_n_0_[0]\ : STD_LOGIC;
  signal \last_bpl_reg_n_0_[10]\ : STD_LOGIC;
  signal \last_bpl_reg_n_0_[11]\ : STD_LOGIC;
  signal \last_bpl_reg_n_0_[12]\ : STD_LOGIC;
  signal \last_bpl_reg_n_0_[13]\ : STD_LOGIC;
  signal \last_bpl_reg_n_0_[14]\ : STD_LOGIC;
  signal \last_bpl_reg_n_0_[15]\ : STD_LOGIC;
  signal \last_bpl_reg_n_0_[1]\ : STD_LOGIC;
  signal \last_bpl_reg_n_0_[2]\ : STD_LOGIC;
  signal \last_bpl_reg_n_0_[3]\ : STD_LOGIC;
  signal \last_bpl_reg_n_0_[4]\ : STD_LOGIC;
  signal \last_bpl_reg_n_0_[5]\ : STD_LOGIC;
  signal \last_bpl_reg_n_0_[6]\ : STD_LOGIC;
  signal \last_bpl_reg_n_0_[7]\ : STD_LOGIC;
  signal \last_bpl_reg_n_0_[8]\ : STD_LOGIC;
  signal \last_bpl_reg_n_0_[9]\ : STD_LOGIC;
  signal \line_bytes[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \line_bytes[0]_i_3__0_n_0\ : STD_LOGIC;
  signal line_bytes_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \line_bytes_reg[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \line_bytes_reg[0]_i_2__0_n_1\ : STD_LOGIC;
  signal \line_bytes_reg[0]_i_2__0_n_2\ : STD_LOGIC;
  signal \line_bytes_reg[0]_i_2__0_n_3\ : STD_LOGIC;
  signal \line_bytes_reg[0]_i_2__0_n_4\ : STD_LOGIC;
  signal \line_bytes_reg[0]_i_2__0_n_5\ : STD_LOGIC;
  signal \line_bytes_reg[0]_i_2__0_n_6\ : STD_LOGIC;
  signal \line_bytes_reg[0]_i_2__0_n_7\ : STD_LOGIC;
  signal \line_bytes_reg[12]_i_1__0_n_1\ : STD_LOGIC;
  signal \line_bytes_reg[12]_i_1__0_n_2\ : STD_LOGIC;
  signal \line_bytes_reg[12]_i_1__0_n_3\ : STD_LOGIC;
  signal \line_bytes_reg[12]_i_1__0_n_4\ : STD_LOGIC;
  signal \line_bytes_reg[12]_i_1__0_n_5\ : STD_LOGIC;
  signal \line_bytes_reg[12]_i_1__0_n_6\ : STD_LOGIC;
  signal \line_bytes_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \line_bytes_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \line_bytes_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \line_bytes_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \line_bytes_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \line_bytes_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \line_bytes_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \line_bytes_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \line_bytes_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \line_bytes_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \line_bytes_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \line_bytes_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \line_bytes_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \line_bytes_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \line_bytes_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \line_bytes_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \line_bytes_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \lines[0]_i_2__0_n_0\ : STD_LOGIC;
  signal lines_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \lines_reg[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \lines_reg[0]_i_1__0_n_1\ : STD_LOGIC;
  signal \lines_reg[0]_i_1__0_n_2\ : STD_LOGIC;
  signal \lines_reg[0]_i_1__0_n_3\ : STD_LOGIC;
  signal \lines_reg[0]_i_1__0_n_4\ : STD_LOGIC;
  signal \lines_reg[0]_i_1__0_n_5\ : STD_LOGIC;
  signal \lines_reg[0]_i_1__0_n_6\ : STD_LOGIC;
  signal \lines_reg[0]_i_1__0_n_7\ : STD_LOGIC;
  signal \lines_reg[12]_i_1__0_n_1\ : STD_LOGIC;
  signal \lines_reg[12]_i_1__0_n_2\ : STD_LOGIC;
  signal \lines_reg[12]_i_1__0_n_3\ : STD_LOGIC;
  signal \lines_reg[12]_i_1__0_n_4\ : STD_LOGIC;
  signal \lines_reg[12]_i_1__0_n_5\ : STD_LOGIC;
  signal \lines_reg[12]_i_1__0_n_6\ : STD_LOGIC;
  signal \lines_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \lines_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \lines_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \lines_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \lines_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \lines_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \lines_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \lines_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \lines_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \lines_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \lines_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \lines_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \lines_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \lines_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \lines_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \lines_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \lines_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \p_0_in__3\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \pclk_2khz_reg_n_0_[0]\ : STD_LOGIC;
  signal \pclk_2khz_reg_n_0_[10]\ : STD_LOGIC;
  signal \pclk_2khz_reg_n_0_[11]\ : STD_LOGIC;
  signal \pclk_2khz_reg_n_0_[12]\ : STD_LOGIC;
  signal \pclk_2khz_reg_n_0_[13]\ : STD_LOGIC;
  signal \pclk_2khz_reg_n_0_[14]\ : STD_LOGIC;
  signal \pclk_2khz_reg_n_0_[15]\ : STD_LOGIC;
  signal \pclk_2khz_reg_n_0_[1]\ : STD_LOGIC;
  signal \pclk_2khz_reg_n_0_[2]\ : STD_LOGIC;
  signal \pclk_2khz_reg_n_0_[3]\ : STD_LOGIC;
  signal \pclk_2khz_reg_n_0_[4]\ : STD_LOGIC;
  signal \pclk_2khz_reg_n_0_[5]\ : STD_LOGIC;
  signal \pclk_2khz_reg_n_0_[6]\ : STD_LOGIC;
  signal \pclk_2khz_reg_n_0_[7]\ : STD_LOGIC;
  signal \pclk_2khz_reg_n_0_[8]\ : STD_LOGIC;
  signal \pclk_2khz_reg_n_0_[9]\ : STD_LOGIC;
  signal \pclk_cnt0_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \pclk_cnt0_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \pclk_cnt0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \pclk_cnt0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \pclk_cnt0_inferred__0/i__carry__0_n_4\ : STD_LOGIC;
  signal \pclk_cnt0_inferred__0/i__carry__0_n_5\ : STD_LOGIC;
  signal \pclk_cnt0_inferred__0/i__carry__0_n_6\ : STD_LOGIC;
  signal \pclk_cnt0_inferred__0/i__carry__0_n_7\ : STD_LOGIC;
  signal \pclk_cnt0_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \pclk_cnt0_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \pclk_cnt0_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \pclk_cnt0_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \pclk_cnt0_inferred__0/i__carry__1_n_4\ : STD_LOGIC;
  signal \pclk_cnt0_inferred__0/i__carry__1_n_5\ : STD_LOGIC;
  signal \pclk_cnt0_inferred__0/i__carry__1_n_6\ : STD_LOGIC;
  signal \pclk_cnt0_inferred__0/i__carry__1_n_7\ : STD_LOGIC;
  signal \pclk_cnt0_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \pclk_cnt0_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \pclk_cnt0_inferred__0/i__carry__2_n_5\ : STD_LOGIC;
  signal \pclk_cnt0_inferred__0/i__carry__2_n_6\ : STD_LOGIC;
  signal \pclk_cnt0_inferred__0/i__carry__2_n_7\ : STD_LOGIC;
  signal \pclk_cnt0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \pclk_cnt0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \pclk_cnt0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \pclk_cnt0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \pclk_cnt0_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \pclk_cnt0_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \pclk_cnt0_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \pclk_cnt0_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal \pclk_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \pclk_cnt[15]_i_1__0_n_0\ : STD_LOGIC;
  signal \pclk_cnt[15]_i_2__0_n_0\ : STD_LOGIC;
  signal \pclk_cnt[15]_i_3__0_n_0\ : STD_LOGIC;
  signal \pclk_cnt[15]_i_4__0_n_0\ : STD_LOGIC;
  signal \pclk_cnt[15]_i_5__0_n_0\ : STD_LOGIC;
  signal \pclk_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \pclk_cnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \pclk_cnt_reg_n_0_[11]\ : STD_LOGIC;
  signal \pclk_cnt_reg_n_0_[12]\ : STD_LOGIC;
  signal \pclk_cnt_reg_n_0_[13]\ : STD_LOGIC;
  signal \pclk_cnt_reg_n_0_[14]\ : STD_LOGIC;
  signal \pclk_cnt_reg_n_0_[15]\ : STD_LOGIC;
  signal \pclk_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \pclk_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \pclk_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \pclk_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \pclk_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \pclk_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \pclk_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \pclk_cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \pclk_cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal \pclk_f_i_1__0_n_0\ : STD_LOGIC;
  signal pclk_f_reg_n_0 : STD_LOGIC;
  signal \pclk_h_reg_n_0_[0]\ : STD_LOGIC;
  signal \pclk_h_reg_n_0_[1]\ : STD_LOGIC;
  signal pclk_m : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of pclk_m : signal is "true";
  signal \prev_bpl_reg_n_0_[0]\ : STD_LOGIC;
  signal \prev_bpl_reg_n_0_[10]\ : STD_LOGIC;
  signal \prev_bpl_reg_n_0_[11]\ : STD_LOGIC;
  signal \prev_bpl_reg_n_0_[12]\ : STD_LOGIC;
  signal \prev_bpl_reg_n_0_[13]\ : STD_LOGIC;
  signal \prev_bpl_reg_n_0_[14]\ : STD_LOGIC;
  signal \prev_bpl_reg_n_0_[15]\ : STD_LOGIC;
  signal \prev_bpl_reg_n_0_[1]\ : STD_LOGIC;
  signal \prev_bpl_reg_n_0_[2]\ : STD_LOGIC;
  signal \prev_bpl_reg_n_0_[3]\ : STD_LOGIC;
  signal \prev_bpl_reg_n_0_[4]\ : STD_LOGIC;
  signal \prev_bpl_reg_n_0_[5]\ : STD_LOGIC;
  signal \prev_bpl_reg_n_0_[6]\ : STD_LOGIC;
  signal \prev_bpl_reg_n_0_[7]\ : STD_LOGIC;
  signal \prev_bpl_reg_n_0_[8]\ : STD_LOGIC;
  signal \prev_bpl_reg_n_0_[9]\ : STD_LOGIC;
  signal \prev_lines_reg_n_0_[0]\ : STD_LOGIC;
  signal \prev_lines_reg_n_0_[10]\ : STD_LOGIC;
  signal \prev_lines_reg_n_0_[11]\ : STD_LOGIC;
  signal \prev_lines_reg_n_0_[12]\ : STD_LOGIC;
  signal \prev_lines_reg_n_0_[13]\ : STD_LOGIC;
  signal \prev_lines_reg_n_0_[14]\ : STD_LOGIC;
  signal \prev_lines_reg_n_0_[15]\ : STD_LOGIC;
  signal \prev_lines_reg_n_0_[1]\ : STD_LOGIC;
  signal \prev_lines_reg_n_0_[2]\ : STD_LOGIC;
  signal \prev_lines_reg_n_0_[3]\ : STD_LOGIC;
  signal \prev_lines_reg_n_0_[4]\ : STD_LOGIC;
  signal \prev_lines_reg_n_0_[5]\ : STD_LOGIC;
  signal \prev_lines_reg_n_0_[6]\ : STD_LOGIC;
  signal \prev_lines_reg_n_0_[7]\ : STD_LOGIC;
  signal \prev_lines_reg_n_0_[8]\ : STD_LOGIC;
  signal \prev_lines_reg_n_0_[9]\ : STD_LOGIC;
  signal \prev_ticks_reg_n_0_[0]\ : STD_LOGIC;
  signal \prev_ticks_reg_n_0_[10]\ : STD_LOGIC;
  signal \prev_ticks_reg_n_0_[11]\ : STD_LOGIC;
  signal \prev_ticks_reg_n_0_[12]\ : STD_LOGIC;
  signal \prev_ticks_reg_n_0_[13]\ : STD_LOGIC;
  signal \prev_ticks_reg_n_0_[14]\ : STD_LOGIC;
  signal \prev_ticks_reg_n_0_[15]\ : STD_LOGIC;
  signal \prev_ticks_reg_n_0_[1]\ : STD_LOGIC;
  signal \prev_ticks_reg_n_0_[2]\ : STD_LOGIC;
  signal \prev_ticks_reg_n_0_[3]\ : STD_LOGIC;
  signal \prev_ticks_reg_n_0_[4]\ : STD_LOGIC;
  signal \prev_ticks_reg_n_0_[5]\ : STD_LOGIC;
  signal \prev_ticks_reg_n_0_[6]\ : STD_LOGIC;
  signal \prev_ticks_reg_n_0_[7]\ : STD_LOGIC;
  signal \prev_ticks_reg_n_0_[8]\ : STD_LOGIC;
  signal \prev_ticks_reg_n_0_[9]\ : STD_LOGIC;
  signal prev_trunc_reg_n_0 : STD_LOGIC;
  signal \^s1_href\ : STD_LOGIC;
  signal \^s1_stb\ : STD_LOGIC;
  signal \^s1_vsync\ : STD_LOGIC;
  signal \start_us[31]_i_1_n_0\ : STD_LOGIC;
  signal \state[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \state[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \state[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \state[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  signal stb0_n_0 : STD_LOGIC;
  signal \ticks[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \ticks[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \ticks[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \ticks[0]_i_5__0_n_0\ : STD_LOGIC;
  signal \ticks[0]_i_6__0_n_0\ : STD_LOGIC;
  signal \ticks[0]_i_7__0_n_0\ : STD_LOGIC;
  signal ticks_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \ticks_reg[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \ticks_reg[0]_i_2__0_n_1\ : STD_LOGIC;
  signal \ticks_reg[0]_i_2__0_n_2\ : STD_LOGIC;
  signal \ticks_reg[0]_i_2__0_n_3\ : STD_LOGIC;
  signal \ticks_reg[0]_i_2__0_n_4\ : STD_LOGIC;
  signal \ticks_reg[0]_i_2__0_n_5\ : STD_LOGIC;
  signal \ticks_reg[0]_i_2__0_n_6\ : STD_LOGIC;
  signal \ticks_reg[0]_i_2__0_n_7\ : STD_LOGIC;
  signal \ticks_reg[12]_i_1__0_n_1\ : STD_LOGIC;
  signal \ticks_reg[12]_i_1__0_n_2\ : STD_LOGIC;
  signal \ticks_reg[12]_i_1__0_n_3\ : STD_LOGIC;
  signal \ticks_reg[12]_i_1__0_n_4\ : STD_LOGIC;
  signal \ticks_reg[12]_i_1__0_n_5\ : STD_LOGIC;
  signal \ticks_reg[12]_i_1__0_n_6\ : STD_LOGIC;
  signal \ticks_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \ticks_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \ticks_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \ticks_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \ticks_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \ticks_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \ticks_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \ticks_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \ticks_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \ticks_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \ticks_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \ticks_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \ticks_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \ticks_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \ticks_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \ticks_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \ticks_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \trunc_i_1__0_n_0\ : STD_LOGIC;
  signal \trunc_i_2__0_n_0\ : STD_LOGIC;
  signal trunc_reg_n_0 : STD_LOGIC;
  signal \vsync_h_reg_n_0_[0]\ : STD_LOGIC;
  signal \vsync_h_reg_n_0_[1]\ : STD_LOGIC;
  signal vsync_m : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of vsync_m : signal is "true";
  signal \vsync_qq_i_1__0_n_0\ : STD_LOGIC;
  signal vsync_qq_reg_n_0 : STD_LOGIC;
  signal \NLW_frame_no_reg[12]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_line_bytes_reg[12]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_lines_reg[12]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_pclk_cnt0_inferred__0/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_pclk_cnt0_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_ticks_reg[12]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \d_m0_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \d_m0_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \d_m0_reg[1]\ : label is std.standard.true;
  attribute KEEP of \d_m0_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \d_m0_reg[2]\ : label is std.standard.true;
  attribute KEEP of \d_m0_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \d_m0_reg[3]\ : label is std.standard.true;
  attribute KEEP of \d_m0_reg[3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \d_m0_reg[4]\ : label is std.standard.true;
  attribute KEEP of \d_m0_reg[4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \d_m0_reg[5]\ : label is std.standard.true;
  attribute KEEP of \d_m0_reg[5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \d_m0_reg[6]\ : label is std.standard.true;
  attribute KEEP of \d_m0_reg[6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \d_m0_reg[7]\ : label is std.standard.true;
  attribute KEEP of \d_m0_reg[7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \d_m1_reg[0]\ : label is std.standard.true;
  attribute KEEP of \d_m1_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \d_m1_reg[1]\ : label is std.standard.true;
  attribute KEEP of \d_m1_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \d_m1_reg[2]\ : label is std.standard.true;
  attribute KEEP of \d_m1_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \d_m1_reg[3]\ : label is std.standard.true;
  attribute KEEP of \d_m1_reg[3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \d_m1_reg[4]\ : label is std.standard.true;
  attribute KEEP of \d_m1_reg[4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \d_m1_reg[5]\ : label is std.standard.true;
  attribute KEEP of \d_m1_reg[5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \d_m1_reg[6]\ : label is std.standard.true;
  attribute KEEP of \d_m1_reg[6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \d_m1_reg[7]\ : label is std.standard.true;
  attribute KEEP of \d_m1_reg[7]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \fifo_din[0]_i_4__0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \fifo_din[0]_i_9__0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \fifo_din[1]_i_9__0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \fifo_din[2]_i_10\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \fifo_din[2]_i_4\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \fifo_din[2]_i_5\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \fifo_din[3]_i_9__0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \fifo_din[4]_i_2__0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \fifo_din[4]_i_5__0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \fifo_din[5]_i_2__0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \fifo_din[6]_i_2__0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \fifo_din[6]_i_5\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \fifo_din[7]_i_3__0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \fifo_din[7]_i_5__0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \fifo_din[7]_i_7__0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \fifo_din[7]_i_8\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \fill_i_2__0\ : label is "soft_lutpair54";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \frame_no_reg[12]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \frame_no_reg[2]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \frame_no_reg[4]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \frame_no_reg[8]_i_1__0\ : label is 35;
  attribute SOFT_HLUTNM of \href_d_i_1__0\ : label is "soft_lutpair57";
  attribute ASYNC_REG_boolean of \href_m_reg[0]\ : label is std.standard.true;
  attribute KEEP of \href_m_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \href_m_reg[1]\ : label is std.standard.true;
  attribute KEEP of \href_m_reg[1]\ : label is "yes";
  attribute SOFT_HLUTNM of \href_qq_i_1__0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \idx[0]_i_1__0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \idx[1]_i_1__0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \idx[2]_i_1__0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \idx[3]_i_1__0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \idx[4]_i_2__0\ : label is "soft_lutpair47";
  attribute ADDER_THRESHOLD of \line_bytes_reg[0]_i_2__0\ : label is 35;
  attribute ADDER_THRESHOLD of \line_bytes_reg[12]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \line_bytes_reg[4]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \line_bytes_reg[8]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \lines_reg[0]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \lines_reg[12]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \lines_reg[4]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \lines_reg[8]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \pclk_cnt0_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \pclk_cnt0_inferred__0/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \pclk_cnt0_inferred__0/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \pclk_cnt0_inferred__0/i__carry__2\ : label is 35;
  attribute SOFT_HLUTNM of \pclk_cnt[0]_i_1\ : label is "soft_lutpair59";
  attribute ASYNC_REG_boolean of \pclk_m_reg[0]\ : label is std.standard.true;
  attribute KEEP of \pclk_m_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \pclk_m_reg[1]\ : label is std.standard.true;
  attribute KEEP of \pclk_m_reg[1]\ : label is "yes";
  attribute SOFT_HLUTNM of \px[10]_i_10__0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \px[1]_i_3__0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \row[7]_i_1__0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \row[8]_i_3__0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \state[0]_i_2__0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \state[1]_i_1__0\ : label is "soft_lutpair55";
  attribute ADDER_THRESHOLD of \ticks_reg[0]_i_2__0\ : label is 35;
  attribute ADDER_THRESHOLD of \ticks_reg[12]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \ticks_reg[4]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \ticks_reg[8]_i_1__0\ : label is 35;
  attribute SOFT_HLUTNM of \trunc_i_1__0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \vsync_d_i_1__0\ : label is "soft_lutpair58";
  attribute ASYNC_REG_boolean of \vsync_m_reg[0]\ : label is std.standard.true;
  attribute KEEP of \vsync_m_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \vsync_m_reg[1]\ : label is std.standard.true;
  attribute KEEP of \vsync_m_reg[1]\ : label is "yes";
  attribute SOFT_HLUTNM of \wr_sof_i_1__0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \yr[-1111111104]__0_i_4__0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \yr[-1111111104]_i_2__0\ : label is "soft_lutpair59";
begin
  Q(31 downto 0) <= \^q\(31 downto 0);
  c1_wr <= \^c1_wr\;
  \d_q_reg[7]_0\(7 downto 0) <= \^d_q_reg[7]_0\(7 downto 0);
  frame_led1 <= \^frame_led1\;
  href_d <= \^href_d\;
  s1_href <= \^s1_href\;
  s1_stb <= \^s1_stb\;
  s1_vsync <= \^s1_vsync\;
\d_h0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => d_m1(0),
      Q => \d_h0_reg_n_0_[0]\,
      R => '0'
    );
\d_h0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => d_m1(1),
      Q => \d_h0_reg_n_0_[1]\,
      R => '0'
    );
\d_h0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => d_m1(2),
      Q => \d_h0_reg_n_0_[2]\,
      R => '0'
    );
\d_h0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => d_m1(3),
      Q => \d_h0_reg_n_0_[3]\,
      R => '0'
    );
\d_h0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => d_m1(4),
      Q => \d_h0_reg_n_0_[4]\,
      R => '0'
    );
\d_h0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => d_m1(5),
      Q => \d_h0_reg_n_0_[5]\,
      R => '0'
    );
\d_h0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => d_m1(6),
      Q => \d_h0_reg_n_0_[6]\,
      R => '0'
    );
\d_h0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => d_m1(7),
      Q => \d_h0_reg_n_0_[7]\,
      R => '0'
    );
\d_h1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \d_h0_reg_n_0_[0]\,
      Q => \d_h1_reg_n_0_[0]\,
      R => '0'
    );
\d_h1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \d_h0_reg_n_0_[1]\,
      Q => \d_h1_reg_n_0_[1]\,
      R => '0'
    );
\d_h1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \d_h0_reg_n_0_[2]\,
      Q => \d_h1_reg_n_0_[2]\,
      R => '0'
    );
\d_h1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \d_h0_reg_n_0_[3]\,
      Q => \d_h1_reg_n_0_[3]\,
      R => '0'
    );
\d_h1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \d_h0_reg_n_0_[4]\,
      Q => \d_h1_reg_n_0_[4]\,
      R => '0'
    );
\d_h1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \d_h0_reg_n_0_[5]\,
      Q => \d_h1_reg_n_0_[5]\,
      R => '0'
    );
\d_h1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \d_h0_reg_n_0_[6]\,
      Q => \d_h1_reg_n_0_[6]\,
      R => '0'
    );
\d_h1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \d_h0_reg_n_0_[7]\,
      Q => \d_h1_reg_n_0_[7]\,
      R => '0'
    );
\d_m0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cam2_d(0),
      Q => d_m0(0),
      R => '0'
    );
\d_m0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cam2_d(1),
      Q => d_m0(1),
      R => '0'
    );
\d_m0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cam2_d(2),
      Q => d_m0(2),
      R => '0'
    );
\d_m0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cam2_d(3),
      Q => d_m0(3),
      R => '0'
    );
\d_m0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cam2_d(4),
      Q => d_m0(4),
      R => '0'
    );
\d_m0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cam2_d(5),
      Q => d_m0(5),
      R => '0'
    );
\d_m0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cam2_d(6),
      Q => d_m0(6),
      R => '0'
    );
\d_m0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cam2_d(7),
      Q => d_m0(7),
      R => '0'
    );
\d_m1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => d_m0(0),
      Q => d_m1(0),
      R => '0'
    );
\d_m1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => d_m0(1),
      Q => d_m1(1),
      R => '0'
    );
\d_m1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => d_m0(2),
      Q => d_m1(2),
      R => '0'
    );
\d_m1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => d_m0(3),
      Q => d_m1(3),
      R => '0'
    );
\d_m1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => d_m0(4),
      Q => d_m1(4),
      R => '0'
    );
\d_m1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => d_m0(5),
      Q => d_m1(5),
      R => '0'
    );
\d_m1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => d_m0(6),
      Q => d_m1(6),
      R => '0'
    );
\d_m1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => d_m0(7),
      Q => d_m1(7),
      R => '0'
    );
\d_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => stb0_n_0,
      D => \d_h1_reg_n_0_[0]\,
      Q => \^d_q_reg[7]_0\(0),
      R => '0'
    );
\d_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => stb0_n_0,
      D => \d_h1_reg_n_0_[1]\,
      Q => \^d_q_reg[7]_0\(1),
      R => '0'
    );
\d_q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => stb0_n_0,
      D => \d_h1_reg_n_0_[2]\,
      Q => \^d_q_reg[7]_0\(2),
      R => '0'
    );
\d_q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => stb0_n_0,
      D => \d_h1_reg_n_0_[3]\,
      Q => \^d_q_reg[7]_0\(3),
      R => '0'
    );
\d_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => stb0_n_0,
      D => \d_h1_reg_n_0_[4]\,
      Q => \^d_q_reg[7]_0\(4),
      R => '0'
    );
\d_q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => stb0_n_0,
      D => \d_h1_reg_n_0_[5]\,
      Q => \^d_q_reg[7]_0\(5),
      R => '0'
    );
\d_q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => stb0_n_0,
      D => \d_h1_reg_n_0_[6]\,
      Q => \^d_q_reg[7]_0\(6),
      R => '0'
    );
\d_q_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => stb0_n_0,
      D => \d_h1_reg_n_0_[7]\,
      Q => \^d_q_reg[7]_0\(7),
      R => '0'
    );
\fifo_din[0]_i_10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \h_tof_mm_reg_n_0_[8]\,
      I1 => \prev_ticks_reg_n_0_[8]\,
      I2 => idx_reg(0),
      I3 => \h_tof_mm_reg_n_0_[0]\,
      I4 => idx_reg(3),
      I5 => \prev_ticks_reg_n_0_[0]\,
      O => \fifo_din[0]_i_10__0_n_0\
    );
\fifo_din[0]_i_11__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BC8C"
    )
        port map (
      I0 => frame_no_reg(8),
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => frame_no_reg(0),
      O => \fifo_din[0]_i_11__0_n_0\
    );
\fifo_din[0]_i_12__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF2F"
    )
        port map (
      I0 => \prev_lines_reg_n_0_[0]\,
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => \prev_lines_reg_n_0_[8]\,
      O => \fifo_din[0]_i_12__0_n_0\
    );
\fifo_din[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0D0D0D0DDDDDDD0"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \^d_q_reg[7]_0\(0),
      I2 => \fifo_din[0]_i_2__0_n_0\,
      I3 => \fifo_din_reg[0]_i_3_n_0\,
      I4 => \fifo_din[7]_i_7__0_n_0\,
      I5 => \fifo_din[0]_i_4__0_n_0\,
      O => \fifo_din[0]_i_1__0_n_0\
    );
\fifo_din[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEAEAAAAAAAEAAA"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => idx_reg(2),
      I2 => idx_reg(4),
      I3 => \fifo_din[0]_i_5_n_0\,
      I4 => idx_reg(1),
      I5 => \fifo_din[0]_i_6__0_n_0\,
      O => \fifo_din[0]_i_2__0_n_0\
    );
\fifo_din[0]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F400F500"
    )
        port map (
      I0 => \fifo_din[0]_i_9__0_n_0\,
      I1 => idx_reg(1),
      I2 => idx_reg(2),
      I3 => idx_reg(4),
      I4 => \fifo_din[0]_i_10__0_n_0\,
      O => \fifo_din[0]_i_4__0_n_0\
    );
\fifo_din[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \h_tof_us_reg_n_0_[8]\,
      I1 => \^q\(8),
      I2 => idx_reg(0),
      I3 => \h_tof_us_reg_n_0_[0]\,
      I4 => idx_reg(3),
      I5 => \^q\(0),
      O => \fifo_din[0]_i_5_n_0\
    );
\fifo_din[0]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \h_tof_us_reg_n_0_[24]\,
      I1 => \^q\(24),
      I2 => idx_reg(0),
      I3 => \h_tof_us_reg_n_0_[16]\,
      I4 => idx_reg(3),
      I5 => \^q\(16),
      O => \fifo_din[0]_i_6__0_n_0\
    );
\fifo_din[0]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BC8CFFFFBC8C0000"
    )
        port map (
      I0 => \prev_bpl_reg_n_0_[8]\,
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => \prev_bpl_reg_n_0_[0]\,
      I4 => idx_reg(1),
      I5 => \fifo_din[0]_i_11__0_n_0\,
      O => \fifo_din[0]_i_7__0_n_0\
    );
\fifo_din[0]_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B833FFFFB8330000"
    )
        port map (
      I0 => \pclk_2khz_reg_n_0_[8]\,
      I1 => idx_reg(0),
      I2 => \pclk_2khz_reg_n_0_[0]\,
      I3 => idx_reg(3),
      I4 => idx_reg(1),
      I5 => \fifo_din[0]_i_12__0_n_0\,
      O => \fifo_din[0]_i_8__0_n_0\
    );
\fifo_din[0]_i_9__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00B80000"
    )
        port map (
      I0 => \h_tof_seq_reg_n_0_[0]\,
      I1 => idx_reg(3),
      I2 => prev_trunc_reg_n_0,
      I3 => idx_reg(0),
      I4 => idx_reg(1),
      O => \fifo_din[0]_i_9__0_n_0\
    );
\fifo_din[1]_i_10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \h_tof_mm_reg_n_0_[9]\,
      I1 => \prev_ticks_reg_n_0_[9]\,
      I2 => idx_reg(0),
      I3 => \h_tof_mm_reg_n_0_[1]\,
      I4 => idx_reg(3),
      I5 => \prev_ticks_reg_n_0_[1]\,
      O => \fifo_din[1]_i_10__0_n_0\
    );
\fifo_din[1]_i_11__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B833"
    )
        port map (
      I0 => frame_no_reg(9),
      I1 => idx_reg(0),
      I2 => frame_no_reg(1),
      I3 => idx_reg(3),
      O => \fifo_din[1]_i_11__0_n_0\
    );
\fifo_din[1]_i_12__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B833"
    )
        port map (
      I0 => \prev_lines_reg_n_0_[9]\,
      I1 => idx_reg(0),
      I2 => \prev_lines_reg_n_0_[1]\,
      I3 => idx_reg(3),
      O => \fifo_din[1]_i_12__0_n_0\
    );
\fifo_din[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0D0D0D0DDDDDDD0"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \^d_q_reg[7]_0\(1),
      I2 => \fifo_din[1]_i_2__0_n_0\,
      I3 => \fifo_din_reg[1]_i_3__0_n_0\,
      I4 => \fifo_din[7]_i_7__0_n_0\,
      I5 => \fifo_din[1]_i_4_n_0\,
      O => \fifo_din[1]_i_1__0_n_0\
    );
\fifo_din[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEAEAAAAAAAEAAA"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => idx_reg(2),
      I2 => idx_reg(4),
      I3 => \fifo_din[1]_i_5__0_n_0\,
      I4 => idx_reg(1),
      I5 => \fifo_din[1]_i_6__0_n_0\,
      O => \fifo_din[1]_i_2__0_n_0\
    );
\fifo_din[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF00AA00EF00EF00"
    )
        port map (
      I0 => idx_reg(2),
      I1 => \fifo_din[1]_i_9__0_n_0\,
      I2 => \h_tof_seq_reg_n_0_[1]\,
      I3 => idx_reg(4),
      I4 => idx_reg(1),
      I5 => \fifo_din[1]_i_10__0_n_0\,
      O => \fifo_din[1]_i_4_n_0\
    );
\fifo_din[1]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \h_tof_us_reg_n_0_[9]\,
      I1 => \^q\(9),
      I2 => idx_reg(0),
      I3 => \h_tof_us_reg_n_0_[1]\,
      I4 => idx_reg(3),
      I5 => \^q\(1),
      O => \fifo_din[1]_i_5__0_n_0\
    );
\fifo_din[1]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \h_tof_us_reg_n_0_[25]\,
      I1 => \^q\(25),
      I2 => idx_reg(0),
      I3 => \h_tof_us_reg_n_0_[17]\,
      I4 => idx_reg(3),
      I5 => \^q\(17),
      O => \fifo_din[1]_i_6__0_n_0\
    );
\fifo_din[1]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BC8CFFFFBC8C0000"
    )
        port map (
      I0 => \prev_bpl_reg_n_0_[9]\,
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => \prev_bpl_reg_n_0_[1]\,
      I4 => idx_reg(1),
      I5 => \fifo_din[1]_i_11__0_n_0\,
      O => \fifo_din[1]_i_7__0_n_0\
    );
\fifo_din[1]_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8C80FFFF8C800000"
    )
        port map (
      I0 => \pclk_2khz_reg_n_0_[9]\,
      I1 => idx_reg(3),
      I2 => idx_reg(0),
      I3 => \pclk_2khz_reg_n_0_[1]\,
      I4 => idx_reg(1),
      I5 => \fifo_din[1]_i_12__0_n_0\,
      O => \fifo_din[1]_i_8__0_n_0\
    );
\fifo_din[1]_i_9__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => idx_reg(1),
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      O => \fifo_din[1]_i_9__0_n_0\
    );
\fifo_din[2]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDCCDDCC"
    )
        port map (
      I0 => idx_reg(3),
      I1 => idx_reg(2),
      I2 => idx_reg(1),
      I3 => idx_reg(0),
      I4 => \prev_bpl_reg_n_0_[10]\,
      O => \fifo_din[2]_i_10_n_0\
    );
\fifo_din[2]_i_11__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7F3F7FF"
    )
        port map (
      I0 => \prev_bpl_reg_n_0_[2]\,
      I1 => idx_reg(3),
      I2 => idx_reg(0),
      I3 => idx_reg(1),
      I4 => \^frame_led1\,
      O => \fifo_din[2]_i_11__0_n_0\
    );
\fifo_din[2]_i_12__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E020"
    )
        port map (
      I0 => \prev_lines_reg_n_0_[2]\,
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => \prev_lines_reg_n_0_[10]\,
      O => \fifo_din[2]_i_12__0_n_0\
    );
\fifo_din[2]_i_13__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B833"
    )
        port map (
      I0 => \pclk_2khz_reg_n_0_[10]\,
      I1 => idx_reg(0),
      I2 => \pclk_2khz_reg_n_0_[2]\,
      I3 => idx_reg(3),
      O => \fifo_din[2]_i_13__0_n_0\
    );
\fifo_din[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0D0D0D0D0D0D0DD"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \^d_q_reg[7]_0\(2),
      I2 => \fifo_din[2]_i_2__0_n_0\,
      I3 => \fifo_din[2]_i_3_n_0\,
      I4 => \fifo_din[2]_i_4_n_0\,
      I5 => \fifo_din[2]_i_5_n_0\,
      O => \fifo_din[2]_i_1__0_n_0\
    );
\fifo_din[2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEAEAAAAAAAEAAA"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => idx_reg(2),
      I2 => idx_reg(4),
      I3 => \fifo_din[2]_i_6_n_0\,
      I4 => idx_reg(1),
      I5 => \fifo_din[2]_i_7__0_n_0\,
      O => \fifo_din[2]_i_2__0_n_0\
    );
\fifo_din[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2AAF7FF00000000"
    )
        port map (
      I0 => idx_reg(1),
      I1 => idx_reg(3),
      I2 => idx_reg(0),
      I3 => \h_tof_seq_reg_n_0_[2]\,
      I4 => \fifo_din[2]_i_8__0_n_0\,
      I5 => idx_reg(4),
      O => \fifo_din[2]_i_3_n_0\
    );
\fifo_din[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888F8888"
    )
        port map (
      I0 => idx_reg(4),
      I1 => idx_reg(2),
      I2 => \fifo_din[2]_i_9__0_n_0\,
      I3 => \fifo_din[2]_i_10_n_0\,
      I4 => \fifo_din[2]_i_11__0_n_0\,
      O => \fifo_din[2]_i_4_n_0\
    );
\fifo_din[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => idx_reg(2),
      I1 => \fifo_din[2]_i_12__0_n_0\,
      I2 => idx_reg(1),
      I3 => \fifo_din[2]_i_13__0_n_0\,
      O => \fifo_din[2]_i_5_n_0\
    );
\fifo_din[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \h_tof_us_reg_n_0_[10]\,
      I1 => \^q\(10),
      I2 => idx_reg(0),
      I3 => \h_tof_us_reg_n_0_[2]\,
      I4 => idx_reg(3),
      I5 => \^q\(2),
      O => \fifo_din[2]_i_6_n_0\
    );
\fifo_din[2]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \h_tof_us_reg_n_0_[26]\,
      I1 => \^q\(26),
      I2 => idx_reg(0),
      I3 => \h_tof_us_reg_n_0_[18]\,
      I4 => idx_reg(3),
      I5 => \^q\(18),
      O => \fifo_din[2]_i_7__0_n_0\
    );
\fifo_din[2]_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \h_tof_mm_reg_n_0_[10]\,
      I1 => \prev_ticks_reg_n_0_[10]\,
      I2 => idx_reg(0),
      I3 => \h_tof_mm_reg_n_0_[2]\,
      I4 => idx_reg(3),
      I5 => \prev_ticks_reg_n_0_[2]\,
      O => \fifo_din[2]_i_8__0_n_0\
    );
\fifo_din[2]_i_9__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BAAA"
    )
        port map (
      I0 => idx_reg(4),
      I1 => idx_reg(1),
      I2 => idx_reg(0),
      I3 => frame_no_reg(10),
      O => \fifo_din[2]_i_9__0_n_0\
    );
\fifo_din[3]_i_10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \h_tof_mm_reg_n_0_[11]\,
      I1 => \prev_ticks_reg_n_0_[11]\,
      I2 => idx_reg(0),
      I3 => \h_tof_mm_reg_n_0_[3]\,
      I4 => idx_reg(3),
      I5 => \prev_ticks_reg_n_0_[3]\,
      O => \fifo_din[3]_i_10__0_n_0\
    );
\fifo_din[3]_i_11__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4C7C"
    )
        port map (
      I0 => frame_no_reg(11),
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => frame_no_reg(3),
      O => \fifo_din[3]_i_11__0_n_0\
    );
\fifo_din[3]_i_12__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FDF"
    )
        port map (
      I0 => \prev_lines_reg_n_0_[3]\,
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => \prev_lines_reg_n_0_[11]\,
      O => \fifo_din[3]_i_12__0_n_0\
    );
\fifo_din[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F8F8F8F8888888F"
    )
        port map (
      I0 => \^d_q_reg[7]_0\(3),
      I1 => \state_reg_n_0_[1]\,
      I2 => \fifo_din[3]_i_2__0_n_0\,
      I3 => \fifo_din_reg[3]_i_3_n_0\,
      I4 => \fifo_din[7]_i_7__0_n_0\,
      I5 => \fifo_din[3]_i_4__0_n_0\,
      O => \fifo_din[3]_i_1__0_n_0\
    );
\fifo_din[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAFAAABAAA"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \fifo_din[3]_i_5_n_0\,
      I2 => idx_reg(4),
      I3 => idx_reg(2),
      I4 => idx_reg(1),
      I5 => \fifo_din[3]_i_6__0_n_0\,
      O => \fifo_din[3]_i_2__0_n_0\
    );
\fifo_din[3]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8F0000FF800000"
    )
        port map (
      I0 => \h_tof_seq_reg_n_0_[3]\,
      I1 => \fifo_din[3]_i_9__0_n_0\,
      I2 => idx_reg(1),
      I3 => idx_reg(2),
      I4 => idx_reg(4),
      I5 => \fifo_din[3]_i_10__0_n_0\,
      O => \fifo_din[3]_i_4__0_n_0\
    );
\fifo_din[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \h_tof_us_reg_n_0_[11]\,
      I1 => \^q\(11),
      I2 => idx_reg(0),
      I3 => \h_tof_us_reg_n_0_[3]\,
      I4 => idx_reg(3),
      I5 => \^q\(3),
      O => \fifo_din[3]_i_5_n_0\
    );
\fifo_din[3]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \h_tof_us_reg_n_0_[27]\,
      I1 => \^q\(27),
      I2 => idx_reg(0),
      I3 => \h_tof_us_reg_n_0_[19]\,
      I4 => idx_reg(3),
      I5 => \^q\(19),
      O => \fifo_din[3]_i_6__0_n_0\
    );
\fifo_din[3]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4373FFFF43730000"
    )
        port map (
      I0 => \prev_bpl_reg_n_0_[11]\,
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => \prev_bpl_reg_n_0_[3]\,
      I4 => idx_reg(1),
      I5 => \fifo_din[3]_i_11__0_n_0\,
      O => \fifo_din[3]_i_7__0_n_0\
    );
\fifo_din[3]_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4C7CFFFF4C7C0000"
    )
        port map (
      I0 => \pclk_2khz_reg_n_0_[11]\,
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => \pclk_2khz_reg_n_0_[3]\,
      I4 => idx_reg(1),
      I5 => \fifo_din[3]_i_12__0_n_0\,
      O => \fifo_din[3]_i_8__0_n_0\
    );
\fifo_din[3]_i_9__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => idx_reg(3),
      I1 => idx_reg(0),
      O => \fifo_din[3]_i_9__0_n_0\
    );
\fifo_din[4]_i_10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \h_tof_mm_reg_n_0_[12]\,
      I1 => \prev_ticks_reg_n_0_[12]\,
      I2 => idx_reg(0),
      I3 => \h_tof_mm_reg_n_0_[4]\,
      I4 => idx_reg(3),
      I5 => \prev_ticks_reg_n_0_[4]\,
      O => \fifo_din[4]_i_10__0_n_0\
    );
\fifo_din[4]_i_11__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4373"
    )
        port map (
      I0 => frame_no_reg(12),
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => frame_no_reg(4),
      O => \fifo_din[4]_i_11__0_n_0\
    );
\fifo_din[4]_i_12__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F7F"
    )
        port map (
      I0 => \prev_lines_reg_n_0_[12]\,
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => \prev_lines_reg_n_0_[4]\,
      O => \fifo_din[4]_i_12__0_n_0\
    );
\fifo_din[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888A8A8A888A"
    )
        port map (
      I0 => \fifo_din[4]_i_2__0_n_0\,
      I1 => \fifo_din[4]_i_3__0_n_0\,
      I2 => \fifo_din[7]_i_5__0_n_0\,
      I3 => \fifo_din_reg[4]_i_4_n_0\,
      I4 => \fifo_din[7]_i_7__0_n_0\,
      I5 => \fifo_din[4]_i_5__0_n_0\,
      O => \fifo_din[4]_i_1__0_n_0\
    );
\fifo_din[4]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^d_q_reg[7]_0\(4),
      I1 => \state_reg_n_0_[1]\,
      O => \fifo_din[4]_i_2__0_n_0\
    );
\fifo_din[4]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEAEAAAAAAAEAAA"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => idx_reg(2),
      I2 => idx_reg(4),
      I3 => \fifo_din[4]_i_6__0_n_0\,
      I4 => idx_reg(1),
      I5 => \fifo_din[4]_i_7__0_n_0\,
      O => \fifo_din[4]_i_3__0_n_0\
    );
\fifo_din[4]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DF00DFFF"
    )
        port map (
      I0 => \h_tof_seq_reg_n_0_[4]\,
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => idx_reg(1),
      I4 => \fifo_din[4]_i_10__0_n_0\,
      O => \fifo_din[4]_i_5__0_n_0\
    );
\fifo_din[4]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \h_tof_us_reg_n_0_[12]\,
      I1 => \^q\(12),
      I2 => idx_reg(0),
      I3 => \h_tof_us_reg_n_0_[4]\,
      I4 => idx_reg(3),
      I5 => \^q\(4),
      O => \fifo_din[4]_i_6__0_n_0\
    );
\fifo_din[4]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \h_tof_us_reg_n_0_[28]\,
      I1 => \^q\(28),
      I2 => idx_reg(0),
      I3 => \h_tof_us_reg_n_0_[20]\,
      I4 => idx_reg(3),
      I5 => \^q\(20),
      O => \fifo_din[4]_i_7__0_n_0\
    );
\fifo_din[4]_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4C7CFFFF4C7C0000"
    )
        port map (
      I0 => \prev_bpl_reg_n_0_[12]\,
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => \prev_bpl_reg_n_0_[4]\,
      I4 => idx_reg(1),
      I5 => \fifo_din[4]_i_11__0_n_0\,
      O => \fifo_din[4]_i_8__0_n_0\
    );
\fifo_din[4]_i_9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4373FFFF43730000"
    )
        port map (
      I0 => \pclk_2khz_reg_n_0_[12]\,
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => \pclk_2khz_reg_n_0_[4]\,
      I4 => idx_reg(1),
      I5 => \fifo_din[4]_i_12__0_n_0\,
      O => \fifo_din[4]_i_9__0_n_0\
    );
\fifo_din[5]_i_10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \h_tof_mm_reg_n_0_[13]\,
      I1 => \prev_ticks_reg_n_0_[13]\,
      I2 => idx_reg(0),
      I3 => \h_tof_mm_reg_n_0_[5]\,
      I4 => idx_reg(3),
      I5 => \prev_ticks_reg_n_0_[5]\,
      O => \fifo_din[5]_i_10__0_n_0\
    );
\fifo_din[5]_i_11__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4C7C"
    )
        port map (
      I0 => frame_no_reg(13),
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => frame_no_reg(5),
      O => \fifo_din[5]_i_11__0_n_0\
    );
\fifo_din[5]_i_12__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F7F"
    )
        port map (
      I0 => \prev_lines_reg_n_0_[13]\,
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => \prev_lines_reg_n_0_[5]\,
      O => \fifo_din[5]_i_12__0_n_0\
    );
\fifo_din[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABABABBBBBBBABB"
    )
        port map (
      I0 => \fifo_din[5]_i_2__0_n_0\,
      I1 => \fifo_din[5]_i_3__0_n_0\,
      I2 => \fifo_din[7]_i_5__0_n_0\,
      I3 => \fifo_din_reg[5]_i_4__0_n_0\,
      I4 => \fifo_din[7]_i_7__0_n_0\,
      I5 => \fifo_din[5]_i_5__0_n_0\,
      O => \fifo_din[5]_i_1__0_n_0\
    );
\fifo_din[5]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \^d_q_reg[7]_0\(5),
      O => \fifo_din[5]_i_2__0_n_0\
    );
\fifo_din[5]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAFAAABAAA"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \fifo_din[5]_i_6__0_n_0\,
      I2 => idx_reg(4),
      I3 => idx_reg(2),
      I4 => idx_reg(1),
      I5 => \fifo_din[5]_i_7__0_n_0\,
      O => \fifo_din[5]_i_3__0_n_0\
    );
\fifo_din[5]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F3FF5555"
    )
        port map (
      I0 => \fifo_din[5]_i_10__0_n_0\,
      I1 => \h_tof_seq_reg_n_0_[5]\,
      I2 => idx_reg(0),
      I3 => idx_reg(3),
      I4 => idx_reg(1),
      O => \fifo_din[5]_i_5__0_n_0\
    );
\fifo_din[5]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \h_tof_us_reg_n_0_[13]\,
      I1 => \^q\(13),
      I2 => idx_reg(0),
      I3 => \h_tof_us_reg_n_0_[5]\,
      I4 => idx_reg(3),
      I5 => \^q\(5),
      O => \fifo_din[5]_i_6__0_n_0\
    );
\fifo_din[5]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \h_tof_us_reg_n_0_[29]\,
      I1 => \^q\(29),
      I2 => idx_reg(0),
      I3 => \h_tof_us_reg_n_0_[21]\,
      I4 => idx_reg(3),
      I5 => \^q\(21),
      O => \fifo_din[5]_i_7__0_n_0\
    );
\fifo_din[5]_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4C7CFFFF4C7C0000"
    )
        port map (
      I0 => \prev_bpl_reg_n_0_[13]\,
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => \prev_bpl_reg_n_0_[5]\,
      I4 => idx_reg(1),
      I5 => \fifo_din[5]_i_11__0_n_0\,
      O => \fifo_din[5]_i_8__0_n_0\
    );
\fifo_din[5]_i_9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4373FFFF43730000"
    )
        port map (
      I0 => \pclk_2khz_reg_n_0_[13]\,
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => \pclk_2khz_reg_n_0_[5]\,
      I4 => idx_reg(1),
      I5 => \fifo_din[5]_i_12__0_n_0\,
      O => \fifo_din[5]_i_9__0_n_0\
    );
\fifo_din[6]_i_10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \h_tof_mm_reg_n_0_[14]\,
      I1 => \prev_ticks_reg_n_0_[14]\,
      I2 => idx_reg(0),
      I3 => \h_tof_mm_reg_n_0_[6]\,
      I4 => idx_reg(3),
      I5 => \prev_ticks_reg_n_0_[6]\,
      O => \fifo_din[6]_i_10__0_n_0\
    );
\fifo_din[6]_i_11__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4373"
    )
        port map (
      I0 => frame_no_reg(14),
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => frame_no_reg(6),
      O => \fifo_din[6]_i_11__0_n_0\
    );
\fifo_din[6]_i_12__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4070"
    )
        port map (
      I0 => \prev_lines_reg_n_0_[14]\,
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => \prev_lines_reg_n_0_[6]\,
      O => \fifo_din[6]_i_12__0_n_0\
    );
\fifo_din[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888A8A8A888A"
    )
        port map (
      I0 => \fifo_din[6]_i_2__0_n_0\,
      I1 => \fifo_din[6]_i_3__0_n_0\,
      I2 => \fifo_din[7]_i_5__0_n_0\,
      I3 => \fifo_din_reg[6]_i_4_n_0\,
      I4 => \fifo_din[7]_i_7__0_n_0\,
      I5 => \fifo_din[6]_i_5_n_0\,
      O => \fifo_din[6]_i_1__0_n_0\
    );
\fifo_din[6]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^d_q_reg[7]_0\(6),
      I1 => \state_reg_n_0_[1]\,
      O => \fifo_din[6]_i_2__0_n_0\
    );
\fifo_din[6]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAFAAABAAA"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \fifo_din[6]_i_6__0_n_0\,
      I2 => idx_reg(4),
      I3 => idx_reg(2),
      I4 => idx_reg(1),
      I5 => \fifo_din[6]_i_7__0_n_0\,
      O => \fifo_din[6]_i_3__0_n_0\
    );
\fifo_din[6]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DF00DFFF"
    )
        port map (
      I0 => \h_tof_seq_reg_n_0_[6]\,
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => idx_reg(1),
      I4 => \fifo_din[6]_i_10__0_n_0\,
      O => \fifo_din[6]_i_5_n_0\
    );
\fifo_din[6]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"05F5030305F5F3F3"
    )
        port map (
      I0 => \h_tof_us_reg_n_0_[6]\,
      I1 => \^q\(6),
      I2 => idx_reg(0),
      I3 => \h_tof_us_reg_n_0_[14]\,
      I4 => idx_reg(3),
      I5 => \^q\(14),
      O => \fifo_din[6]_i_6__0_n_0\
    );
\fifo_din[6]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"05F5030305F5F3F3"
    )
        port map (
      I0 => \h_tof_us_reg_n_0_[22]\,
      I1 => \^q\(22),
      I2 => idx_reg(0),
      I3 => \h_tof_us_reg_n_0_[30]\,
      I4 => idx_reg(3),
      I5 => \^q\(30),
      O => \fifo_din[6]_i_7__0_n_0\
    );
\fifo_din[6]_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4C7CFFFF4C7C0000"
    )
        port map (
      I0 => \prev_bpl_reg_n_0_[14]\,
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => \prev_bpl_reg_n_0_[6]\,
      I4 => idx_reg(1),
      I5 => \fifo_din[6]_i_11__0_n_0\,
      O => \fifo_din[6]_i_8__0_n_0\
    );
\fifo_din[6]_i_9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4C7CFFFF4C7C0000"
    )
        port map (
      I0 => \pclk_2khz_reg_n_0_[14]\,
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => \pclk_2khz_reg_n_0_[6]\,
      I4 => idx_reg(1),
      I5 => \fifo_din[6]_i_12__0_n_0\,
      O => \fifo_din[6]_i_9__0_n_0\
    );
\fifo_din[7]_i_10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \h_tof_us_reg_n_0_[31]\,
      I1 => \^q\(31),
      I2 => idx_reg(0),
      I3 => \h_tof_us_reg_n_0_[23]\,
      I4 => idx_reg(3),
      I5 => \^q\(23),
      O => \fifo_din[7]_i_10__0_n_0\
    );
\fifo_din[7]_i_11__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4C7CFFFF4C7C0000"
    )
        port map (
      I0 => \prev_bpl_reg_n_0_[15]\,
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => \prev_bpl_reg_n_0_[7]\,
      I4 => idx_reg(1),
      I5 => \fifo_din[7]_i_14__0_n_0\,
      O => \fifo_din[7]_i_11__0_n_0\
    );
\fifo_din[7]_i_12__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F7FFFFF4F7F0000"
    )
        port map (
      I0 => \pclk_2khz_reg_n_0_[15]\,
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => \pclk_2khz_reg_n_0_[7]\,
      I4 => idx_reg(1),
      I5 => \fifo_din[7]_i_15__0_n_0\,
      O => \fifo_din[7]_i_12__0_n_0\
    );
\fifo_din[7]_i_13__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \h_tof_mm_reg_n_0_[15]\,
      I1 => \prev_ticks_reg_n_0_[15]\,
      I2 => idx_reg(0),
      I3 => \h_tof_mm_reg_n_0_[7]\,
      I4 => idx_reg(3),
      I5 => \prev_ticks_reg_n_0_[7]\,
      O => \fifo_din[7]_i_13__0_n_0\
    );
\fifo_din[7]_i_14__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4C7C"
    )
        port map (
      I0 => frame_no_reg(15),
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => frame_no_reg(7),
      O => \fifo_din[7]_i_14__0_n_0\
    );
\fifo_din[7]_i_15__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F7F"
    )
        port map (
      I0 => \prev_lines_reg_n_0_[15]\,
      I1 => idx_reg(0),
      I2 => idx_reg(3),
      I3 => \prev_lines_reg_n_0_[7]\,
      O => \fifo_din[7]_i_15__0_n_0\
    );
\fifo_din[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002020000000200"
    )
        port map (
      I0 => \^s1_stb\,
      I1 => c1_afull,
      I2 => trunc_reg_n_0,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[1]\,
      I5 => \^s1_href\,
      O => \fifo_din[7]_i_1__0_n_0\
    );
\fifo_din[7]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888A8A8A888A"
    )
        port map (
      I0 => \fifo_din[7]_i_3__0_n_0\,
      I1 => \fifo_din[7]_i_4__0_n_0\,
      I2 => \fifo_din[7]_i_5__0_n_0\,
      I3 => \fifo_din_reg[7]_i_6_n_0\,
      I4 => \fifo_din[7]_i_7__0_n_0\,
      I5 => \fifo_din[7]_i_8_n_0\,
      O => \fifo_din[7]_i_2__0_n_0\
    );
\fifo_din[7]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^d_q_reg[7]_0\(7),
      I1 => \state_reg_n_0_[1]\,
      O => \fifo_din[7]_i_3__0_n_0\
    );
\fifo_din[7]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEAEAAAAAAAEAAA"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => idx_reg(2),
      I2 => idx_reg(4),
      I3 => \fifo_din[7]_i_9__0_n_0\,
      I4 => idx_reg(1),
      I5 => \fifo_din[7]_i_10__0_n_0\,
      O => \fifo_din[7]_i_4__0_n_0\
    );
\fifo_din[7]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => idx_reg(2),
      I1 => idx_reg(4),
      O => \fifo_din[7]_i_5__0_n_0\
    );
\fifo_din[7]_i_7__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => idx_reg(4),
      I1 => idx_reg(2),
      I2 => idx_reg(1),
      O => \fifo_din[7]_i_7__0_n_0\
    );
\fifo_din[7]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C5F5F5F5"
    )
        port map (
      I0 => \fifo_din[7]_i_13__0_n_0\,
      I1 => idx_reg(0),
      I2 => idx_reg(1),
      I3 => \h_tof_seq_reg_n_0_[7]\,
      I4 => idx_reg(3),
      O => \fifo_din[7]_i_8_n_0\
    );
\fifo_din[7]_i_9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \h_tof_us_reg_n_0_[15]\,
      I1 => \^q\(15),
      I2 => idx_reg(0),
      I3 => \h_tof_us_reg_n_0_[7]\,
      I4 => idx_reg(3),
      I5 => \^q\(7),
      O => \fifo_din[7]_i_9__0_n_0\
    );
\fifo_din_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \fifo_din[7]_i_1__0_n_0\,
      D => \fifo_din[0]_i_1__0_n_0\,
      Q => \fifo_din_reg[7]_0\(0),
      R => '0'
    );
\fifo_din_reg[0]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_din[0]_i_7__0_n_0\,
      I1 => \fifo_din[0]_i_8__0_n_0\,
      O => \fifo_din_reg[0]_i_3_n_0\,
      S => idx_reg(2)
    );
\fifo_din_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \fifo_din[7]_i_1__0_n_0\,
      D => \fifo_din[1]_i_1__0_n_0\,
      Q => \fifo_din_reg[7]_0\(1),
      R => '0'
    );
\fifo_din_reg[1]_i_3__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_din[1]_i_7__0_n_0\,
      I1 => \fifo_din[1]_i_8__0_n_0\,
      O => \fifo_din_reg[1]_i_3__0_n_0\,
      S => idx_reg(2)
    );
\fifo_din_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \fifo_din[7]_i_1__0_n_0\,
      D => \fifo_din[2]_i_1__0_n_0\,
      Q => \fifo_din_reg[7]_0\(2),
      R => '0'
    );
\fifo_din_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \fifo_din[7]_i_1__0_n_0\,
      D => \fifo_din[3]_i_1__0_n_0\,
      Q => \fifo_din_reg[7]_0\(3),
      R => '0'
    );
\fifo_din_reg[3]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_din[3]_i_7__0_n_0\,
      I1 => \fifo_din[3]_i_8__0_n_0\,
      O => \fifo_din_reg[3]_i_3_n_0\,
      S => idx_reg(2)
    );
\fifo_din_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \fifo_din[7]_i_1__0_n_0\,
      D => \fifo_din[4]_i_1__0_n_0\,
      Q => \fifo_din_reg[7]_0\(4),
      R => '0'
    );
\fifo_din_reg[4]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_din[4]_i_8__0_n_0\,
      I1 => \fifo_din[4]_i_9__0_n_0\,
      O => \fifo_din_reg[4]_i_4_n_0\,
      S => idx_reg(2)
    );
\fifo_din_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \fifo_din[7]_i_1__0_n_0\,
      D => \fifo_din[5]_i_1__0_n_0\,
      Q => \fifo_din_reg[7]_0\(5),
      R => '0'
    );
\fifo_din_reg[5]_i_4__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_din[5]_i_8__0_n_0\,
      I1 => \fifo_din[5]_i_9__0_n_0\,
      O => \fifo_din_reg[5]_i_4__0_n_0\,
      S => idx_reg(2)
    );
\fifo_din_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \fifo_din[7]_i_1__0_n_0\,
      D => \fifo_din[6]_i_1__0_n_0\,
      Q => \fifo_din_reg[7]_0\(6),
      R => '0'
    );
\fifo_din_reg[6]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_din[6]_i_8__0_n_0\,
      I1 => \fifo_din[6]_i_9__0_n_0\,
      O => \fifo_din_reg[6]_i_4_n_0\,
      S => idx_reg(2)
    );
\fifo_din_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \fifo_din[7]_i_1__0_n_0\,
      D => \fifo_din[7]_i_2__0_n_0\,
      Q => \fifo_din_reg[7]_0\(7),
      R => '0'
    );
\fifo_din_reg[7]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_din[7]_i_11__0_n_0\,
      I1 => \fifo_din[7]_i_12__0_n_0\,
      O => \fifo_din_reg[7]_i_6_n_0\,
      S => idx_reg(2)
    );
\fifo_wr_en_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002020000000200"
    )
        port map (
      I0 => \^href_d\,
      I1 => c1_afull,
      I2 => trunc_reg_n_0,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[1]\,
      I5 => \^s1_href\,
      O => \fifo_wr_en_i_1__0_n_0\
    );
fifo_wr_en_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \fifo_wr_en_i_1__0_n_0\,
      Q => \^c1_wr\,
      R => '0'
    );
\fill_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A2AA"
    )
        port map (
      I0 => \out\(0),
      I1 => \^s1_vsync\,
      I2 => vsync_d,
      I3 => \^s1_stb\,
      O => \en_sync_reg[2]\
    );
\frame_no[2]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frame_no_reg(0),
      O => \frame_no[2]_i_2_n_0\
    );
\frame_no_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \frame_no_reg[2]_i_1_n_7\,
      Q => frame_no_reg(0),
      R => '0'
    );
\frame_no_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \frame_no_reg[8]_i_1__0_n_5\,
      Q => frame_no_reg(10),
      R => '0'
    );
\frame_no_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \frame_no_reg[8]_i_1__0_n_4\,
      Q => frame_no_reg(11),
      R => '0'
    );
\frame_no_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \frame_no_reg[12]_i_1__0_n_7\,
      Q => frame_no_reg(12),
      R => '0'
    );
\frame_no_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \frame_no_reg[8]_i_1__0_n_0\,
      CO(3) => \NLW_frame_no_reg[12]_i_1__0_CO_UNCONNECTED\(3),
      CO(2) => \frame_no_reg[12]_i_1__0_n_1\,
      CO(1) => \frame_no_reg[12]_i_1__0_n_2\,
      CO(0) => \frame_no_reg[12]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \frame_no_reg[12]_i_1__0_n_4\,
      O(2) => \frame_no_reg[12]_i_1__0_n_5\,
      O(1) => \frame_no_reg[12]_i_1__0_n_6\,
      O(0) => \frame_no_reg[12]_i_1__0_n_7\,
      S(3 downto 0) => frame_no_reg(15 downto 12)
    );
\frame_no_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \frame_no_reg[12]_i_1__0_n_6\,
      Q => frame_no_reg(13),
      R => '0'
    );
\frame_no_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \frame_no_reg[12]_i_1__0_n_5\,
      Q => frame_no_reg(14),
      R => '0'
    );
\frame_no_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \frame_no_reg[12]_i_1__0_n_4\,
      Q => frame_no_reg(15),
      R => '0'
    );
\frame_no_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \frame_no_reg[2]_i_1_n_6\,
      Q => frame_no_reg(1),
      R => '0'
    );
\frame_no_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \frame_no_reg[2]_i_1_n_5\,
      Q => \^frame_led1\,
      R => '0'
    );
\frame_no_reg[2]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \frame_no_reg[2]_i_1_n_0\,
      CO(2) => \frame_no_reg[2]_i_1_n_1\,
      CO(1) => \frame_no_reg[2]_i_1_n_2\,
      CO(0) => \frame_no_reg[2]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \frame_no_reg[2]_i_1_n_4\,
      O(2) => \frame_no_reg[2]_i_1_n_5\,
      O(1) => \frame_no_reg[2]_i_1_n_6\,
      O(0) => \frame_no_reg[2]_i_1_n_7\,
      S(3) => frame_no_reg(3),
      S(2) => \^frame_led1\,
      S(1) => frame_no_reg(1),
      S(0) => \frame_no[2]_i_2_n_0\
    );
\frame_no_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \frame_no_reg[2]_i_1_n_4\,
      Q => frame_no_reg(3),
      R => '0'
    );
\frame_no_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \frame_no_reg[4]_i_1__0_n_7\,
      Q => frame_no_reg(4),
      R => '0'
    );
\frame_no_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \frame_no_reg[2]_i_1_n_0\,
      CO(3) => \frame_no_reg[4]_i_1__0_n_0\,
      CO(2) => \frame_no_reg[4]_i_1__0_n_1\,
      CO(1) => \frame_no_reg[4]_i_1__0_n_2\,
      CO(0) => \frame_no_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \frame_no_reg[4]_i_1__0_n_4\,
      O(2) => \frame_no_reg[4]_i_1__0_n_5\,
      O(1) => \frame_no_reg[4]_i_1__0_n_6\,
      O(0) => \frame_no_reg[4]_i_1__0_n_7\,
      S(3 downto 0) => frame_no_reg(7 downto 4)
    );
\frame_no_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \frame_no_reg[4]_i_1__0_n_6\,
      Q => frame_no_reg(5),
      R => '0'
    );
\frame_no_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \frame_no_reg[4]_i_1__0_n_5\,
      Q => frame_no_reg(6),
      R => '0'
    );
\frame_no_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \frame_no_reg[4]_i_1__0_n_4\,
      Q => frame_no_reg(7),
      R => '0'
    );
\frame_no_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \frame_no_reg[8]_i_1__0_n_7\,
      Q => frame_no_reg(8),
      R => '0'
    );
\frame_no_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \frame_no_reg[4]_i_1__0_n_0\,
      CO(3) => \frame_no_reg[8]_i_1__0_n_0\,
      CO(2) => \frame_no_reg[8]_i_1__0_n_1\,
      CO(1) => \frame_no_reg[8]_i_1__0_n_2\,
      CO(0) => \frame_no_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \frame_no_reg[8]_i_1__0_n_4\,
      O(2) => \frame_no_reg[8]_i_1__0_n_5\,
      O(1) => \frame_no_reg[8]_i_1__0_n_6\,
      O(0) => \frame_no_reg[8]_i_1__0_n_7\,
      S(3 downto 0) => frame_no_reg(11 downto 8)
    );
\frame_no_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \frame_no_reg[8]_i_1__0_n_6\,
      Q => frame_no_reg(9),
      R => '0'
    );
\gl_phase0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(7),
      I1 => \gl_phase_reg[23]\(7),
      O => \start_us_reg[7]_0\(3)
    );
\gl_phase0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gl_phase_reg[23]\(6),
      O => \start_us_reg[7]_0\(2)
    );
\gl_phase0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \gl_phase_reg[23]\(5),
      O => \start_us_reg[7]_0\(1)
    );
\gl_phase0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \gl_phase_reg[23]\(4),
      O => \start_us_reg[7]_0\(0)
    );
\gl_phase0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(11),
      I1 => \gl_phase_reg[23]\(11),
      O => \start_us_reg[11]_0\(3)
    );
\gl_phase0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(10),
      I1 => \gl_phase_reg[23]\(10),
      O => \start_us_reg[11]_0\(2)
    );
\gl_phase0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(9),
      I1 => \gl_phase_reg[23]\(9),
      O => \start_us_reg[11]_0\(1)
    );
\gl_phase0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(8),
      I1 => \gl_phase_reg[23]\(8),
      O => \start_us_reg[11]_0\(0)
    );
\gl_phase0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(15),
      I1 => \gl_phase_reg[23]\(15),
      O => \start_us_reg[15]_0\(3)
    );
\gl_phase0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(14),
      I1 => \gl_phase_reg[23]\(14),
      O => \start_us_reg[15]_0\(2)
    );
\gl_phase0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(13),
      I1 => \gl_phase_reg[23]\(13),
      O => \start_us_reg[15]_0\(1)
    );
\gl_phase0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(12),
      I1 => \gl_phase_reg[23]\(12),
      O => \start_us_reg[15]_0\(0)
    );
\gl_phase0_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(19),
      I1 => \gl_phase_reg[23]\(19),
      O => \start_us_reg[19]_0\(3)
    );
\gl_phase0_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(18),
      I1 => \gl_phase_reg[23]\(18),
      O => \start_us_reg[19]_0\(2)
    );
\gl_phase0_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(17),
      I1 => \gl_phase_reg[23]\(17),
      O => \start_us_reg[19]_0\(1)
    );
\gl_phase0_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(16),
      I1 => \gl_phase_reg[23]\(16),
      O => \start_us_reg[19]_0\(0)
    );
\gl_phase0_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(23),
      I1 => \gl_phase_reg[23]\(23),
      O => S(3)
    );
\gl_phase0_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(22),
      I1 => \gl_phase_reg[23]\(22),
      O => S(2)
    );
\gl_phase0_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(21),
      I1 => \gl_phase_reg[23]\(21),
      O => S(1)
    );
\gl_phase0_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(20),
      I1 => \gl_phase_reg[23]\(20),
      O => S(0)
    );
gl_phase0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gl_phase_reg[23]\(3),
      O => \start_us_reg[3]_0\(3)
    );
gl_phase0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gl_phase_reg[23]\(2),
      O => \start_us_reg[3]_0\(2)
    );
gl_phase0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gl_phase_reg[23]\(1),
      O => \start_us_reg[3]_0\(1)
    );
gl_phase0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gl_phase_reg[23]\(0),
      O => \start_us_reg[3]_0\(0)
    );
\gl_seq0_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(23),
      I1 => \gl_seq_reg[0]\(23),
      I2 => \gl_seq_reg[0]\(21),
      I3 => \^q\(21),
      I4 => \gl_seq_reg[0]\(22),
      I5 => \^q\(22),
      O => \start_us_reg[23]_0\(3)
    );
\gl_seq0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \gl_seq_reg[0]\(18),
      I1 => \^q\(18),
      I2 => \gl_seq_reg[0]\(19),
      I3 => \^q\(19),
      I4 => \^q\(20),
      I5 => \gl_seq_reg[0]\(20),
      O => \start_us_reg[23]_0\(2)
    );
\gl_seq0_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \gl_seq_reg[0]\(15),
      I1 => \^q\(15),
      I2 => \gl_seq_reg[0]\(16),
      I3 => \^q\(16),
      I4 => \^q\(17),
      I5 => \gl_seq_reg[0]\(17),
      O => \start_us_reg[23]_0\(1)
    );
\gl_seq0_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \gl_seq_reg[0]\(12),
      I1 => \^q\(12),
      I2 => \gl_seq_reg[0]\(13),
      I3 => \^q\(13),
      I4 => \^q\(14),
      I5 => \gl_seq_reg[0]\(14),
      O => \start_us_reg[23]_0\(0)
    );
\gl_seq0_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(31),
      I1 => \gl_seq_reg[0]\(31),
      I2 => \^q\(30),
      I3 => \gl_seq_reg[0]\(30),
      O => \start_us_reg[31]_0\(2)
    );
\gl_seq0_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \gl_seq_reg[0]\(27),
      I1 => \^q\(27),
      I2 => \gl_seq_reg[0]\(28),
      I3 => \^q\(28),
      I4 => \^q\(29),
      I5 => \gl_seq_reg[0]\(29),
      O => \start_us_reg[31]_0\(1)
    );
\gl_seq0_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \gl_seq_reg[0]\(26),
      I1 => \^q\(26),
      I2 => \gl_seq_reg[0]\(24),
      I3 => \^q\(24),
      I4 => \^q\(25),
      I5 => \gl_seq_reg[0]\(25),
      O => \start_us_reg[31]_0\(0)
    );
gl_seq0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \gl_seq_reg[0]\(11),
      I1 => \^q\(11),
      I2 => \gl_seq_reg[0]\(9),
      I3 => \^q\(9),
      I4 => \^q\(10),
      I5 => \gl_seq_reg[0]\(10),
      O => \us1_seen_reg[11]\(3)
    );
gl_seq0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \gl_seq_reg[0]\(7),
      I1 => \^q\(7),
      I2 => \gl_seq_reg[0]\(6),
      I3 => \^q\(6),
      I4 => \^q\(8),
      I5 => \gl_seq_reg[0]\(8),
      O => \us1_seen_reg[11]\(2)
    );
gl_seq0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \gl_seq_reg[0]\(3),
      I1 => \^q\(3),
      I2 => \gl_seq_reg[0]\(4),
      I3 => \^q\(4),
      I4 => \^q\(5),
      I5 => \gl_seq_reg[0]\(5),
      O => \us1_seen_reg[11]\(1)
    );
gl_seq0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \gl_seq_reg[0]\(0),
      I1 => \^q\(0),
      I2 => \gl_seq_reg[0]\(1),
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => \gl_seq_reg[0]\(2),
      O => \us1_seen_reg[11]\(0)
    );
\h_tof_mm_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_mm_reg[15]_0\(0),
      Q => \h_tof_mm_reg_n_0_[0]\,
      R => '0'
    );
\h_tof_mm_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_mm_reg[15]_0\(10),
      Q => \h_tof_mm_reg_n_0_[10]\,
      R => '0'
    );
\h_tof_mm_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_mm_reg[15]_0\(11),
      Q => \h_tof_mm_reg_n_0_[11]\,
      R => '0'
    );
\h_tof_mm_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_mm_reg[15]_0\(12),
      Q => \h_tof_mm_reg_n_0_[12]\,
      R => '0'
    );
\h_tof_mm_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_mm_reg[15]_0\(13),
      Q => \h_tof_mm_reg_n_0_[13]\,
      R => '0'
    );
\h_tof_mm_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_mm_reg[15]_0\(14),
      Q => \h_tof_mm_reg_n_0_[14]\,
      R => '0'
    );
\h_tof_mm_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_mm_reg[15]_0\(15),
      Q => \h_tof_mm_reg_n_0_[15]\,
      R => '0'
    );
\h_tof_mm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_mm_reg[15]_0\(1),
      Q => \h_tof_mm_reg_n_0_[1]\,
      R => '0'
    );
\h_tof_mm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_mm_reg[15]_0\(2),
      Q => \h_tof_mm_reg_n_0_[2]\,
      R => '0'
    );
\h_tof_mm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_mm_reg[15]_0\(3),
      Q => \h_tof_mm_reg_n_0_[3]\,
      R => '0'
    );
\h_tof_mm_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_mm_reg[15]_0\(4),
      Q => \h_tof_mm_reg_n_0_[4]\,
      R => '0'
    );
\h_tof_mm_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_mm_reg[15]_0\(5),
      Q => \h_tof_mm_reg_n_0_[5]\,
      R => '0'
    );
\h_tof_mm_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_mm_reg[15]_0\(6),
      Q => \h_tof_mm_reg_n_0_[6]\,
      R => '0'
    );
\h_tof_mm_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_mm_reg[15]_0\(7),
      Q => \h_tof_mm_reg_n_0_[7]\,
      R => '0'
    );
\h_tof_mm_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_mm_reg[15]_0\(8),
      Q => \h_tof_mm_reg_n_0_[8]\,
      R => '0'
    );
\h_tof_mm_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_mm_reg[15]_0\(9),
      Q => \h_tof_mm_reg_n_0_[9]\,
      R => '0'
    );
\h_tof_seq_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_seq_reg[7]_0\(0),
      Q => \h_tof_seq_reg_n_0_[0]\,
      R => '0'
    );
\h_tof_seq_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_seq_reg[7]_0\(1),
      Q => \h_tof_seq_reg_n_0_[1]\,
      R => '0'
    );
\h_tof_seq_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_seq_reg[7]_0\(2),
      Q => \h_tof_seq_reg_n_0_[2]\,
      R => '0'
    );
\h_tof_seq_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_seq_reg[7]_0\(3),
      Q => \h_tof_seq_reg_n_0_[3]\,
      R => '0'
    );
\h_tof_seq_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_seq_reg[7]_0\(4),
      Q => \h_tof_seq_reg_n_0_[4]\,
      R => '0'
    );
\h_tof_seq_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_seq_reg[7]_0\(5),
      Q => \h_tof_seq_reg_n_0_[5]\,
      R => '0'
    );
\h_tof_seq_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_seq_reg[7]_0\(6),
      Q => \h_tof_seq_reg_n_0_[6]\,
      R => '0'
    );
\h_tof_seq_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_seq_reg[7]_0\(7),
      Q => \h_tof_seq_reg_n_0_[7]\,
      R => '0'
    );
\h_tof_us_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_us_reg[31]_0\(0),
      Q => \h_tof_us_reg_n_0_[0]\,
      R => '0'
    );
\h_tof_us_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_us_reg[31]_0\(10),
      Q => \h_tof_us_reg_n_0_[10]\,
      R => '0'
    );
\h_tof_us_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_us_reg[31]_0\(11),
      Q => \h_tof_us_reg_n_0_[11]\,
      R => '0'
    );
\h_tof_us_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_us_reg[31]_0\(12),
      Q => \h_tof_us_reg_n_0_[12]\,
      R => '0'
    );
\h_tof_us_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_us_reg[31]_0\(13),
      Q => \h_tof_us_reg_n_0_[13]\,
      R => '0'
    );
\h_tof_us_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_us_reg[31]_0\(14),
      Q => \h_tof_us_reg_n_0_[14]\,
      R => '0'
    );
\h_tof_us_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_us_reg[31]_0\(15),
      Q => \h_tof_us_reg_n_0_[15]\,
      R => '0'
    );
\h_tof_us_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_us_reg[31]_0\(16),
      Q => \h_tof_us_reg_n_0_[16]\,
      R => '0'
    );
\h_tof_us_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_us_reg[31]_0\(17),
      Q => \h_tof_us_reg_n_0_[17]\,
      R => '0'
    );
\h_tof_us_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_us_reg[31]_0\(18),
      Q => \h_tof_us_reg_n_0_[18]\,
      R => '0'
    );
\h_tof_us_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_us_reg[31]_0\(19),
      Q => \h_tof_us_reg_n_0_[19]\,
      R => '0'
    );
\h_tof_us_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_us_reg[31]_0\(1),
      Q => \h_tof_us_reg_n_0_[1]\,
      R => '0'
    );
\h_tof_us_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_us_reg[31]_0\(20),
      Q => \h_tof_us_reg_n_0_[20]\,
      R => '0'
    );
\h_tof_us_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_us_reg[31]_0\(21),
      Q => \h_tof_us_reg_n_0_[21]\,
      R => '0'
    );
\h_tof_us_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_us_reg[31]_0\(22),
      Q => \h_tof_us_reg_n_0_[22]\,
      R => '0'
    );
\h_tof_us_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_us_reg[31]_0\(23),
      Q => \h_tof_us_reg_n_0_[23]\,
      R => '0'
    );
\h_tof_us_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_us_reg[31]_0\(24),
      Q => \h_tof_us_reg_n_0_[24]\,
      R => '0'
    );
\h_tof_us_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_us_reg[31]_0\(25),
      Q => \h_tof_us_reg_n_0_[25]\,
      R => '0'
    );
\h_tof_us_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_us_reg[31]_0\(26),
      Q => \h_tof_us_reg_n_0_[26]\,
      R => '0'
    );
\h_tof_us_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_us_reg[31]_0\(27),
      Q => \h_tof_us_reg_n_0_[27]\,
      R => '0'
    );
\h_tof_us_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_us_reg[31]_0\(28),
      Q => \h_tof_us_reg_n_0_[28]\,
      R => '0'
    );
\h_tof_us_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_us_reg[31]_0\(29),
      Q => \h_tof_us_reg_n_0_[29]\,
      R => '0'
    );
\h_tof_us_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_us_reg[31]_0\(2),
      Q => \h_tof_us_reg_n_0_[2]\,
      R => '0'
    );
\h_tof_us_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_us_reg[31]_0\(30),
      Q => \h_tof_us_reg_n_0_[30]\,
      R => '0'
    );
\h_tof_us_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_us_reg[31]_0\(31),
      Q => \h_tof_us_reg_n_0_[31]\,
      R => '0'
    );
\h_tof_us_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_us_reg[31]_0\(3),
      Q => \h_tof_us_reg_n_0_[3]\,
      R => '0'
    );
\h_tof_us_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_us_reg[31]_0\(4),
      Q => \h_tof_us_reg_n_0_[4]\,
      R => '0'
    );
\h_tof_us_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_us_reg[31]_0\(5),
      Q => \h_tof_us_reg_n_0_[5]\,
      R => '0'
    );
\h_tof_us_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_us_reg[31]_0\(6),
      Q => \h_tof_us_reg_n_0_[6]\,
      R => '0'
    );
\h_tof_us_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_us_reg[31]_0\(7),
      Q => \h_tof_us_reg_n_0_[7]\,
      R => '0'
    );
\h_tof_us_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_us_reg[31]_0\(8),
      Q => \h_tof_us_reg_n_0_[8]\,
      R => '0'
    );
\h_tof_us_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \h_tof_us_reg[31]_0\(9),
      Q => \h_tof_us_reg_n_0_[9]\,
      R => '0'
    );
\href_d_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \^s1_href\,
      I1 => \out\(0),
      I2 => \^s1_stb\,
      I3 => href_d_reg,
      O => href_q_reg_0
    );
\href_h_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => href_m(1),
      Q => \href_h_reg_n_0_[0]\,
      R => '0'
    );
\href_h_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \href_h_reg_n_0_[0]\,
      Q => \href_h_reg_n_0_[1]\,
      R => '0'
    );
\href_m_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cam2_href,
      Q => href_m(0),
      R => '0'
    );
\href_m_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => href_m(0),
      Q => href_m(1),
      R => '0'
    );
href_q_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => stb0_n_0,
      D => \href_h_reg_n_0_[1]\,
      Q => \^s1_href\,
      R => '0'
    );
\href_qq_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^s1_href\,
      I1 => \^s1_stb\,
      I2 => href_qq_reg_n_0,
      O => \href_qq_i_1__0_n_0\
    );
href_qq_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \href_qq_i_1__0_n_0\,
      Q => href_qq_reg_n_0,
      R => '0'
    );
\idx[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => idx_reg(0),
      O => \idx[0]_i_1__0_n_0\
    );
\idx[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => idx_reg(1),
      I1 => idx_reg(0),
      O => \p_0_in__3\(1)
    );
\idx[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => idx_reg(2),
      I1 => idx_reg(0),
      I2 => idx_reg(1),
      O => \idx[2]_i_1__0_n_0\
    );
\idx[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => idx_reg(3),
      I1 => idx_reg(1),
      I2 => idx_reg(0),
      I3 => idx_reg(2),
      O => \p_0_in__3\(3)
    );
\idx[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s1_stb\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      O => \idx[4]_i_1__0_n_0\
    );
\idx[4]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => idx_reg(4),
      I1 => idx_reg(3),
      I2 => idx_reg(2),
      I3 => idx_reg(0),
      I4 => idx_reg(1),
      O => \p_0_in__3\(4)
    );
\idx_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \idx[4]_i_1__0_n_0\,
      D => \idx[0]_i_1__0_n_0\,
      Q => idx_reg(0),
      R => \start_us[31]_i_1_n_0\
    );
\idx_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \idx[4]_i_1__0_n_0\,
      D => \p_0_in__3\(1),
      Q => idx_reg(1),
      R => \start_us[31]_i_1_n_0\
    );
\idx_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \idx[4]_i_1__0_n_0\,
      D => \idx[2]_i_1__0_n_0\,
      Q => idx_reg(2),
      R => \start_us[31]_i_1_n_0\
    );
\idx_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \idx[4]_i_1__0_n_0\,
      D => \p_0_in__3\(3),
      Q => idx_reg(3),
      R => \start_us[31]_i_1_n_0\
    );
\idx_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \idx[4]_i_1__0_n_0\,
      D => \p_0_in__3\(4),
      Q => idx_reg(4),
      R => \start_us[31]_i_1_n_0\
    );
\last_bpl[15]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => href_qq_reg_n_0,
      I1 => \^s1_stb\,
      I2 => \^s1_href\,
      O => \last_bpl[15]_i_1__0_n_0\
    );
\last_bpl_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1__0_n_0\,
      D => line_bytes_reg(0),
      Q => \last_bpl_reg_n_0_[0]\,
      R => '0'
    );
\last_bpl_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1__0_n_0\,
      D => line_bytes_reg(10),
      Q => \last_bpl_reg_n_0_[10]\,
      R => '0'
    );
\last_bpl_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1__0_n_0\,
      D => line_bytes_reg(11),
      Q => \last_bpl_reg_n_0_[11]\,
      R => '0'
    );
\last_bpl_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1__0_n_0\,
      D => line_bytes_reg(12),
      Q => \last_bpl_reg_n_0_[12]\,
      R => '0'
    );
\last_bpl_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1__0_n_0\,
      D => line_bytes_reg(13),
      Q => \last_bpl_reg_n_0_[13]\,
      R => '0'
    );
\last_bpl_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1__0_n_0\,
      D => line_bytes_reg(14),
      Q => \last_bpl_reg_n_0_[14]\,
      R => '0'
    );
\last_bpl_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1__0_n_0\,
      D => line_bytes_reg(15),
      Q => \last_bpl_reg_n_0_[15]\,
      R => '0'
    );
\last_bpl_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1__0_n_0\,
      D => line_bytes_reg(1),
      Q => \last_bpl_reg_n_0_[1]\,
      R => '0'
    );
\last_bpl_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1__0_n_0\,
      D => line_bytes_reg(2),
      Q => \last_bpl_reg_n_0_[2]\,
      R => '0'
    );
\last_bpl_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1__0_n_0\,
      D => line_bytes_reg(3),
      Q => \last_bpl_reg_n_0_[3]\,
      R => '0'
    );
\last_bpl_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1__0_n_0\,
      D => line_bytes_reg(4),
      Q => \last_bpl_reg_n_0_[4]\,
      R => '0'
    );
\last_bpl_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1__0_n_0\,
      D => line_bytes_reg(5),
      Q => \last_bpl_reg_n_0_[5]\,
      R => '0'
    );
\last_bpl_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1__0_n_0\,
      D => line_bytes_reg(6),
      Q => \last_bpl_reg_n_0_[6]\,
      R => '0'
    );
\last_bpl_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1__0_n_0\,
      D => line_bytes_reg(7),
      Q => \last_bpl_reg_n_0_[7]\,
      R => '0'
    );
\last_bpl_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1__0_n_0\,
      D => line_bytes_reg(8),
      Q => \last_bpl_reg_n_0_[8]\,
      R => '0'
    );
\last_bpl_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1__0_n_0\,
      D => line_bytes_reg(9),
      Q => \last_bpl_reg_n_0_[9]\,
      R => '0'
    );
\line_bytes[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s1_stb\,
      I1 => \^s1_href\,
      O => \line_bytes[0]_i_1__0_n_0\
    );
\line_bytes[0]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_bytes_reg(0),
      O => \line_bytes[0]_i_3__0_n_0\
    );
\line_bytes_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \line_bytes[0]_i_1__0_n_0\,
      D => \line_bytes_reg[0]_i_2__0_n_7\,
      Q => line_bytes_reg(0),
      R => \last_bpl[15]_i_1__0_n_0\
    );
\line_bytes_reg[0]_i_2__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \line_bytes_reg[0]_i_2__0_n_0\,
      CO(2) => \line_bytes_reg[0]_i_2__0_n_1\,
      CO(1) => \line_bytes_reg[0]_i_2__0_n_2\,
      CO(0) => \line_bytes_reg[0]_i_2__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \line_bytes_reg[0]_i_2__0_n_4\,
      O(2) => \line_bytes_reg[0]_i_2__0_n_5\,
      O(1) => \line_bytes_reg[0]_i_2__0_n_6\,
      O(0) => \line_bytes_reg[0]_i_2__0_n_7\,
      S(3 downto 1) => line_bytes_reg(3 downto 1),
      S(0) => \line_bytes[0]_i_3__0_n_0\
    );
\line_bytes_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \line_bytes[0]_i_1__0_n_0\,
      D => \line_bytes_reg[8]_i_1__0_n_5\,
      Q => line_bytes_reg(10),
      R => \last_bpl[15]_i_1__0_n_0\
    );
\line_bytes_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \line_bytes[0]_i_1__0_n_0\,
      D => \line_bytes_reg[8]_i_1__0_n_4\,
      Q => line_bytes_reg(11),
      R => \last_bpl[15]_i_1__0_n_0\
    );
\line_bytes_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \line_bytes[0]_i_1__0_n_0\,
      D => \line_bytes_reg[12]_i_1__0_n_7\,
      Q => line_bytes_reg(12),
      R => \last_bpl[15]_i_1__0_n_0\
    );
\line_bytes_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \line_bytes_reg[8]_i_1__0_n_0\,
      CO(3) => \NLW_line_bytes_reg[12]_i_1__0_CO_UNCONNECTED\(3),
      CO(2) => \line_bytes_reg[12]_i_1__0_n_1\,
      CO(1) => \line_bytes_reg[12]_i_1__0_n_2\,
      CO(0) => \line_bytes_reg[12]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \line_bytes_reg[12]_i_1__0_n_4\,
      O(2) => \line_bytes_reg[12]_i_1__0_n_5\,
      O(1) => \line_bytes_reg[12]_i_1__0_n_6\,
      O(0) => \line_bytes_reg[12]_i_1__0_n_7\,
      S(3 downto 0) => line_bytes_reg(15 downto 12)
    );
\line_bytes_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \line_bytes[0]_i_1__0_n_0\,
      D => \line_bytes_reg[12]_i_1__0_n_6\,
      Q => line_bytes_reg(13),
      R => \last_bpl[15]_i_1__0_n_0\
    );
\line_bytes_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \line_bytes[0]_i_1__0_n_0\,
      D => \line_bytes_reg[12]_i_1__0_n_5\,
      Q => line_bytes_reg(14),
      R => \last_bpl[15]_i_1__0_n_0\
    );
\line_bytes_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \line_bytes[0]_i_1__0_n_0\,
      D => \line_bytes_reg[12]_i_1__0_n_4\,
      Q => line_bytes_reg(15),
      R => \last_bpl[15]_i_1__0_n_0\
    );
\line_bytes_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \line_bytes[0]_i_1__0_n_0\,
      D => \line_bytes_reg[0]_i_2__0_n_6\,
      Q => line_bytes_reg(1),
      R => \last_bpl[15]_i_1__0_n_0\
    );
\line_bytes_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \line_bytes[0]_i_1__0_n_0\,
      D => \line_bytes_reg[0]_i_2__0_n_5\,
      Q => line_bytes_reg(2),
      R => \last_bpl[15]_i_1__0_n_0\
    );
\line_bytes_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \line_bytes[0]_i_1__0_n_0\,
      D => \line_bytes_reg[0]_i_2__0_n_4\,
      Q => line_bytes_reg(3),
      R => \last_bpl[15]_i_1__0_n_0\
    );
\line_bytes_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \line_bytes[0]_i_1__0_n_0\,
      D => \line_bytes_reg[4]_i_1__0_n_7\,
      Q => line_bytes_reg(4),
      R => \last_bpl[15]_i_1__0_n_0\
    );
\line_bytes_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \line_bytes_reg[0]_i_2__0_n_0\,
      CO(3) => \line_bytes_reg[4]_i_1__0_n_0\,
      CO(2) => \line_bytes_reg[4]_i_1__0_n_1\,
      CO(1) => \line_bytes_reg[4]_i_1__0_n_2\,
      CO(0) => \line_bytes_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \line_bytes_reg[4]_i_1__0_n_4\,
      O(2) => \line_bytes_reg[4]_i_1__0_n_5\,
      O(1) => \line_bytes_reg[4]_i_1__0_n_6\,
      O(0) => \line_bytes_reg[4]_i_1__0_n_7\,
      S(3 downto 0) => line_bytes_reg(7 downto 4)
    );
\line_bytes_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \line_bytes[0]_i_1__0_n_0\,
      D => \line_bytes_reg[4]_i_1__0_n_6\,
      Q => line_bytes_reg(5),
      R => \last_bpl[15]_i_1__0_n_0\
    );
\line_bytes_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \line_bytes[0]_i_1__0_n_0\,
      D => \line_bytes_reg[4]_i_1__0_n_5\,
      Q => line_bytes_reg(6),
      R => \last_bpl[15]_i_1__0_n_0\
    );
\line_bytes_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \line_bytes[0]_i_1__0_n_0\,
      D => \line_bytes_reg[4]_i_1__0_n_4\,
      Q => line_bytes_reg(7),
      R => \last_bpl[15]_i_1__0_n_0\
    );
\line_bytes_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \line_bytes[0]_i_1__0_n_0\,
      D => \line_bytes_reg[8]_i_1__0_n_7\,
      Q => line_bytes_reg(8),
      R => \last_bpl[15]_i_1__0_n_0\
    );
\line_bytes_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \line_bytes_reg[4]_i_1__0_n_0\,
      CO(3) => \line_bytes_reg[8]_i_1__0_n_0\,
      CO(2) => \line_bytes_reg[8]_i_1__0_n_1\,
      CO(1) => \line_bytes_reg[8]_i_1__0_n_2\,
      CO(0) => \line_bytes_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \line_bytes_reg[8]_i_1__0_n_4\,
      O(2) => \line_bytes_reg[8]_i_1__0_n_5\,
      O(1) => \line_bytes_reg[8]_i_1__0_n_6\,
      O(0) => \line_bytes_reg[8]_i_1__0_n_7\,
      S(3 downto 0) => line_bytes_reg(11 downto 8)
    );
\line_bytes_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \line_bytes[0]_i_1__0_n_0\,
      D => \line_bytes_reg[8]_i_1__0_n_6\,
      Q => line_bytes_reg(9),
      R => \last_bpl[15]_i_1__0_n_0\
    );
\lines[0]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => lines_reg(0),
      O => \lines[0]_i_2__0_n_0\
    );
\lines_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1__0_n_0\,
      D => \lines_reg[0]_i_1__0_n_7\,
      Q => lines_reg(0),
      R => \start_us[31]_i_1_n_0\
    );
\lines_reg[0]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \lines_reg[0]_i_1__0_n_0\,
      CO(2) => \lines_reg[0]_i_1__0_n_1\,
      CO(1) => \lines_reg[0]_i_1__0_n_2\,
      CO(0) => \lines_reg[0]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \lines_reg[0]_i_1__0_n_4\,
      O(2) => \lines_reg[0]_i_1__0_n_5\,
      O(1) => \lines_reg[0]_i_1__0_n_6\,
      O(0) => \lines_reg[0]_i_1__0_n_7\,
      S(3 downto 1) => lines_reg(3 downto 1),
      S(0) => \lines[0]_i_2__0_n_0\
    );
\lines_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1__0_n_0\,
      D => \lines_reg[8]_i_1__0_n_5\,
      Q => lines_reg(10),
      R => \start_us[31]_i_1_n_0\
    );
\lines_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1__0_n_0\,
      D => \lines_reg[8]_i_1__0_n_4\,
      Q => lines_reg(11),
      R => \start_us[31]_i_1_n_0\
    );
\lines_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1__0_n_0\,
      D => \lines_reg[12]_i_1__0_n_7\,
      Q => lines_reg(12),
      R => \start_us[31]_i_1_n_0\
    );
\lines_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \lines_reg[8]_i_1__0_n_0\,
      CO(3) => \NLW_lines_reg[12]_i_1__0_CO_UNCONNECTED\(3),
      CO(2) => \lines_reg[12]_i_1__0_n_1\,
      CO(1) => \lines_reg[12]_i_1__0_n_2\,
      CO(0) => \lines_reg[12]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \lines_reg[12]_i_1__0_n_4\,
      O(2) => \lines_reg[12]_i_1__0_n_5\,
      O(1) => \lines_reg[12]_i_1__0_n_6\,
      O(0) => \lines_reg[12]_i_1__0_n_7\,
      S(3 downto 0) => lines_reg(15 downto 12)
    );
\lines_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1__0_n_0\,
      D => \lines_reg[12]_i_1__0_n_6\,
      Q => lines_reg(13),
      R => \start_us[31]_i_1_n_0\
    );
\lines_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1__0_n_0\,
      D => \lines_reg[12]_i_1__0_n_5\,
      Q => lines_reg(14),
      R => \start_us[31]_i_1_n_0\
    );
\lines_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1__0_n_0\,
      D => \lines_reg[12]_i_1__0_n_4\,
      Q => lines_reg(15),
      R => \start_us[31]_i_1_n_0\
    );
\lines_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1__0_n_0\,
      D => \lines_reg[0]_i_1__0_n_6\,
      Q => lines_reg(1),
      R => \start_us[31]_i_1_n_0\
    );
\lines_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1__0_n_0\,
      D => \lines_reg[0]_i_1__0_n_5\,
      Q => lines_reg(2),
      R => \start_us[31]_i_1_n_0\
    );
\lines_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1__0_n_0\,
      D => \lines_reg[0]_i_1__0_n_4\,
      Q => lines_reg(3),
      R => \start_us[31]_i_1_n_0\
    );
\lines_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1__0_n_0\,
      D => \lines_reg[4]_i_1__0_n_7\,
      Q => lines_reg(4),
      R => \start_us[31]_i_1_n_0\
    );
\lines_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \lines_reg[0]_i_1__0_n_0\,
      CO(3) => \lines_reg[4]_i_1__0_n_0\,
      CO(2) => \lines_reg[4]_i_1__0_n_1\,
      CO(1) => \lines_reg[4]_i_1__0_n_2\,
      CO(0) => \lines_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \lines_reg[4]_i_1__0_n_4\,
      O(2) => \lines_reg[4]_i_1__0_n_5\,
      O(1) => \lines_reg[4]_i_1__0_n_6\,
      O(0) => \lines_reg[4]_i_1__0_n_7\,
      S(3 downto 0) => lines_reg(7 downto 4)
    );
\lines_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1__0_n_0\,
      D => \lines_reg[4]_i_1__0_n_6\,
      Q => lines_reg(5),
      R => \start_us[31]_i_1_n_0\
    );
\lines_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1__0_n_0\,
      D => \lines_reg[4]_i_1__0_n_5\,
      Q => lines_reg(6),
      R => \start_us[31]_i_1_n_0\
    );
\lines_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1__0_n_0\,
      D => \lines_reg[4]_i_1__0_n_4\,
      Q => lines_reg(7),
      R => \start_us[31]_i_1_n_0\
    );
\lines_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1__0_n_0\,
      D => \lines_reg[8]_i_1__0_n_7\,
      Q => lines_reg(8),
      R => \start_us[31]_i_1_n_0\
    );
\lines_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \lines_reg[4]_i_1__0_n_0\,
      CO(3) => \lines_reg[8]_i_1__0_n_0\,
      CO(2) => \lines_reg[8]_i_1__0_n_1\,
      CO(1) => \lines_reg[8]_i_1__0_n_2\,
      CO(0) => \lines_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \lines_reg[8]_i_1__0_n_4\,
      O(2) => \lines_reg[8]_i_1__0_n_5\,
      O(1) => \lines_reg[8]_i_1__0_n_6\,
      O(0) => \lines_reg[8]_i_1__0_n_7\,
      S(3 downto 0) => lines_reg(11 downto 8)
    );
\lines_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_bpl[15]_i_1__0_n_0\,
      D => \lines_reg[8]_i_1__0_n_6\,
      Q => lines_reg(9),
      R => \start_us[31]_i_1_n_0\
    );
\pclk_2khz_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tick,
      D => \pclk_cnt_reg_n_0_[0]\,
      Q => \pclk_2khz_reg_n_0_[0]\,
      R => '0'
    );
\pclk_2khz_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tick,
      D => \pclk_cnt_reg_n_0_[10]\,
      Q => \pclk_2khz_reg_n_0_[10]\,
      R => '0'
    );
\pclk_2khz_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tick,
      D => \pclk_cnt_reg_n_0_[11]\,
      Q => \pclk_2khz_reg_n_0_[11]\,
      R => '0'
    );
\pclk_2khz_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tick,
      D => \pclk_cnt_reg_n_0_[12]\,
      Q => \pclk_2khz_reg_n_0_[12]\,
      R => '0'
    );
\pclk_2khz_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tick,
      D => \pclk_cnt_reg_n_0_[13]\,
      Q => \pclk_2khz_reg_n_0_[13]\,
      R => '0'
    );
\pclk_2khz_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tick,
      D => \pclk_cnt_reg_n_0_[14]\,
      Q => \pclk_2khz_reg_n_0_[14]\,
      R => '0'
    );
\pclk_2khz_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tick,
      D => \pclk_cnt_reg_n_0_[15]\,
      Q => \pclk_2khz_reg_n_0_[15]\,
      R => '0'
    );
\pclk_2khz_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tick,
      D => \pclk_cnt_reg_n_0_[1]\,
      Q => \pclk_2khz_reg_n_0_[1]\,
      R => '0'
    );
\pclk_2khz_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tick,
      D => \pclk_cnt_reg_n_0_[2]\,
      Q => \pclk_2khz_reg_n_0_[2]\,
      R => '0'
    );
\pclk_2khz_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tick,
      D => \pclk_cnt_reg_n_0_[3]\,
      Q => \pclk_2khz_reg_n_0_[3]\,
      R => '0'
    );
\pclk_2khz_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tick,
      D => \pclk_cnt_reg_n_0_[4]\,
      Q => \pclk_2khz_reg_n_0_[4]\,
      R => '0'
    );
\pclk_2khz_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tick,
      D => \pclk_cnt_reg_n_0_[5]\,
      Q => \pclk_2khz_reg_n_0_[5]\,
      R => '0'
    );
\pclk_2khz_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tick,
      D => \pclk_cnt_reg_n_0_[6]\,
      Q => \pclk_2khz_reg_n_0_[6]\,
      R => '0'
    );
\pclk_2khz_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tick,
      D => \pclk_cnt_reg_n_0_[7]\,
      Q => \pclk_2khz_reg_n_0_[7]\,
      R => '0'
    );
\pclk_2khz_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tick,
      D => \pclk_cnt_reg_n_0_[8]\,
      Q => \pclk_2khz_reg_n_0_[8]\,
      R => '0'
    );
\pclk_2khz_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tick,
      D => \pclk_cnt_reg_n_0_[9]\,
      Q => \pclk_2khz_reg_n_0_[9]\,
      R => '0'
    );
\pclk_cnt0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pclk_cnt0_inferred__0/i__carry_n_0\,
      CO(2) => \pclk_cnt0_inferred__0/i__carry_n_1\,
      CO(1) => \pclk_cnt0_inferred__0/i__carry_n_2\,
      CO(0) => \pclk_cnt0_inferred__0/i__carry_n_3\,
      CYINIT => \pclk_cnt_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => \pclk_cnt0_inferred__0/i__carry_n_4\,
      O(2) => \pclk_cnt0_inferred__0/i__carry_n_5\,
      O(1) => \pclk_cnt0_inferred__0/i__carry_n_6\,
      O(0) => \pclk_cnt0_inferred__0/i__carry_n_7\,
      S(3) => \pclk_cnt_reg_n_0_[4]\,
      S(2) => \pclk_cnt_reg_n_0_[3]\,
      S(1) => \pclk_cnt_reg_n_0_[2]\,
      S(0) => \pclk_cnt_reg_n_0_[1]\
    );
\pclk_cnt0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \pclk_cnt0_inferred__0/i__carry_n_0\,
      CO(3) => \pclk_cnt0_inferred__0/i__carry__0_n_0\,
      CO(2) => \pclk_cnt0_inferred__0/i__carry__0_n_1\,
      CO(1) => \pclk_cnt0_inferred__0/i__carry__0_n_2\,
      CO(0) => \pclk_cnt0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pclk_cnt0_inferred__0/i__carry__0_n_4\,
      O(2) => \pclk_cnt0_inferred__0/i__carry__0_n_5\,
      O(1) => \pclk_cnt0_inferred__0/i__carry__0_n_6\,
      O(0) => \pclk_cnt0_inferred__0/i__carry__0_n_7\,
      S(3) => \pclk_cnt_reg_n_0_[8]\,
      S(2) => \pclk_cnt_reg_n_0_[7]\,
      S(1) => \pclk_cnt_reg_n_0_[6]\,
      S(0) => \pclk_cnt_reg_n_0_[5]\
    );
\pclk_cnt0_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pclk_cnt0_inferred__0/i__carry__0_n_0\,
      CO(3) => \pclk_cnt0_inferred__0/i__carry__1_n_0\,
      CO(2) => \pclk_cnt0_inferred__0/i__carry__1_n_1\,
      CO(1) => \pclk_cnt0_inferred__0/i__carry__1_n_2\,
      CO(0) => \pclk_cnt0_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pclk_cnt0_inferred__0/i__carry__1_n_4\,
      O(2) => \pclk_cnt0_inferred__0/i__carry__1_n_5\,
      O(1) => \pclk_cnt0_inferred__0/i__carry__1_n_6\,
      O(0) => \pclk_cnt0_inferred__0/i__carry__1_n_7\,
      S(3) => \pclk_cnt_reg_n_0_[12]\,
      S(2) => \pclk_cnt_reg_n_0_[11]\,
      S(1) => \pclk_cnt_reg_n_0_[10]\,
      S(0) => \pclk_cnt_reg_n_0_[9]\
    );
\pclk_cnt0_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \pclk_cnt0_inferred__0/i__carry__1_n_0\,
      CO(3 downto 2) => \NLW_pclk_cnt0_inferred__0/i__carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \pclk_cnt0_inferred__0/i__carry__2_n_2\,
      CO(0) => \pclk_cnt0_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_pclk_cnt0_inferred__0/i__carry__2_O_UNCONNECTED\(3),
      O(2) => \pclk_cnt0_inferred__0/i__carry__2_n_5\,
      O(1) => \pclk_cnt0_inferred__0/i__carry__2_n_6\,
      O(0) => \pclk_cnt0_inferred__0/i__carry__2_n_7\,
      S(3) => '0',
      S(2) => \pclk_cnt_reg_n_0_[15]\,
      S(1) => \pclk_cnt_reg_n_0_[14]\,
      S(0) => \pclk_cnt_reg_n_0_[13]\
    );
\pclk_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8FB0"
    )
        port map (
      I0 => \^s1_stb\,
      I1 => tick,
      I2 => \pclk_cnt[15]_i_1__0_n_0\,
      I3 => \pclk_cnt_reg_n_0_[0]\,
      O => \pclk_cnt[0]_i_1_n_0\
    );
\pclk_cnt[15]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEFAAAAAAAA"
    )
        port map (
      I0 => tick,
      I1 => \pclk_cnt[15]_i_2__0_n_0\,
      I2 => \pclk_cnt[15]_i_3__0_n_0\,
      I3 => \pclk_cnt[15]_i_4__0_n_0\,
      I4 => \pclk_cnt[15]_i_5__0_n_0\,
      I5 => \^s1_stb\,
      O => \pclk_cnt[15]_i_1__0_n_0\
    );
\pclk_cnt[15]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \pclk_cnt_reg_n_0_[13]\,
      I1 => \pclk_cnt_reg_n_0_[10]\,
      I2 => \pclk_cnt_reg_n_0_[7]\,
      I3 => \pclk_cnt_reg_n_0_[1]\,
      O => \pclk_cnt[15]_i_2__0_n_0\
    );
\pclk_cnt[15]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \pclk_cnt_reg_n_0_[12]\,
      I1 => \pclk_cnt_reg_n_0_[5]\,
      I2 => \pclk_cnt_reg_n_0_[6]\,
      I3 => \pclk_cnt_reg_n_0_[0]\,
      O => \pclk_cnt[15]_i_3__0_n_0\
    );
\pclk_cnt[15]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \pclk_cnt_reg_n_0_[15]\,
      I1 => \pclk_cnt_reg_n_0_[8]\,
      I2 => \pclk_cnt_reg_n_0_[14]\,
      I3 => \pclk_cnt_reg_n_0_[11]\,
      O => \pclk_cnt[15]_i_4__0_n_0\
    );
\pclk_cnt[15]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \pclk_cnt_reg_n_0_[3]\,
      I1 => \pclk_cnt_reg_n_0_[2]\,
      I2 => \pclk_cnt_reg_n_0_[9]\,
      I3 => \pclk_cnt_reg_n_0_[4]\,
      O => \pclk_cnt[15]_i_5__0_n_0\
    );
\pclk_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \pclk_cnt[0]_i_1_n_0\,
      Q => \pclk_cnt_reg_n_0_[0]\,
      R => '0'
    );
\pclk_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pclk_cnt[15]_i_1__0_n_0\,
      D => \pclk_cnt0_inferred__0/i__carry__1_n_6\,
      Q => \pclk_cnt_reg_n_0_[10]\,
      R => tick
    );
\pclk_cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pclk_cnt[15]_i_1__0_n_0\,
      D => \pclk_cnt0_inferred__0/i__carry__1_n_5\,
      Q => \pclk_cnt_reg_n_0_[11]\,
      R => tick
    );
\pclk_cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pclk_cnt[15]_i_1__0_n_0\,
      D => \pclk_cnt0_inferred__0/i__carry__1_n_4\,
      Q => \pclk_cnt_reg_n_0_[12]\,
      R => tick
    );
\pclk_cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pclk_cnt[15]_i_1__0_n_0\,
      D => \pclk_cnt0_inferred__0/i__carry__2_n_7\,
      Q => \pclk_cnt_reg_n_0_[13]\,
      R => tick
    );
\pclk_cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pclk_cnt[15]_i_1__0_n_0\,
      D => \pclk_cnt0_inferred__0/i__carry__2_n_6\,
      Q => \pclk_cnt_reg_n_0_[14]\,
      R => tick
    );
\pclk_cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pclk_cnt[15]_i_1__0_n_0\,
      D => \pclk_cnt0_inferred__0/i__carry__2_n_5\,
      Q => \pclk_cnt_reg_n_0_[15]\,
      R => tick
    );
\pclk_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pclk_cnt[15]_i_1__0_n_0\,
      D => \pclk_cnt0_inferred__0/i__carry_n_7\,
      Q => \pclk_cnt_reg_n_0_[1]\,
      R => tick
    );
\pclk_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pclk_cnt[15]_i_1__0_n_0\,
      D => \pclk_cnt0_inferred__0/i__carry_n_6\,
      Q => \pclk_cnt_reg_n_0_[2]\,
      R => tick
    );
\pclk_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pclk_cnt[15]_i_1__0_n_0\,
      D => \pclk_cnt0_inferred__0/i__carry_n_5\,
      Q => \pclk_cnt_reg_n_0_[3]\,
      R => tick
    );
\pclk_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pclk_cnt[15]_i_1__0_n_0\,
      D => \pclk_cnt0_inferred__0/i__carry_n_4\,
      Q => \pclk_cnt_reg_n_0_[4]\,
      R => tick
    );
\pclk_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pclk_cnt[15]_i_1__0_n_0\,
      D => \pclk_cnt0_inferred__0/i__carry__0_n_7\,
      Q => \pclk_cnt_reg_n_0_[5]\,
      R => tick
    );
\pclk_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pclk_cnt[15]_i_1__0_n_0\,
      D => \pclk_cnt0_inferred__0/i__carry__0_n_6\,
      Q => \pclk_cnt_reg_n_0_[6]\,
      R => tick
    );
\pclk_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pclk_cnt[15]_i_1__0_n_0\,
      D => \pclk_cnt0_inferred__0/i__carry__0_n_5\,
      Q => \pclk_cnt_reg_n_0_[7]\,
      R => tick
    );
\pclk_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pclk_cnt[15]_i_1__0_n_0\,
      D => \pclk_cnt0_inferred__0/i__carry__0_n_4\,
      Q => \pclk_cnt_reg_n_0_[8]\,
      R => tick
    );
\pclk_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pclk_cnt[15]_i_1__0_n_0\,
      D => \pclk_cnt0_inferred__0/i__carry__1_n_7\,
      Q => \pclk_cnt_reg_n_0_[9]\,
      R => tick
    );
\pclk_f_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => pclk_f_reg_n_0,
      I1 => \pclk_h_reg_n_0_[0]\,
      I2 => \pclk_h_reg_n_0_[1]\,
      O => \pclk_f_i_1__0_n_0\
    );
pclk_f_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \pclk_f_i_1__0_n_0\,
      Q => pclk_f_reg_n_0,
      R => '0'
    );
\pclk_h_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pclk_m(1),
      Q => \pclk_h_reg_n_0_[0]\,
      R => '0'
    );
\pclk_h_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \pclk_h_reg_n_0_[0]\,
      Q => \pclk_h_reg_n_0_[1]\,
      R => '0'
    );
\pclk_m_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cam2_pclk,
      Q => pclk_m(0),
      R => '0'
    );
\pclk_m_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pclk_m(0),
      Q => pclk_m(1),
      R => '0'
    );
\prev_bpl_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \last_bpl_reg_n_0_[0]\,
      Q => \prev_bpl_reg_n_0_[0]\,
      R => '0'
    );
\prev_bpl_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \last_bpl_reg_n_0_[10]\,
      Q => \prev_bpl_reg_n_0_[10]\,
      R => '0'
    );
\prev_bpl_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \last_bpl_reg_n_0_[11]\,
      Q => \prev_bpl_reg_n_0_[11]\,
      R => '0'
    );
\prev_bpl_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \last_bpl_reg_n_0_[12]\,
      Q => \prev_bpl_reg_n_0_[12]\,
      R => '0'
    );
\prev_bpl_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \last_bpl_reg_n_0_[13]\,
      Q => \prev_bpl_reg_n_0_[13]\,
      R => '0'
    );
\prev_bpl_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \last_bpl_reg_n_0_[14]\,
      Q => \prev_bpl_reg_n_0_[14]\,
      R => '0'
    );
\prev_bpl_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \last_bpl_reg_n_0_[15]\,
      Q => \prev_bpl_reg_n_0_[15]\,
      R => '0'
    );
\prev_bpl_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \last_bpl_reg_n_0_[1]\,
      Q => \prev_bpl_reg_n_0_[1]\,
      R => '0'
    );
\prev_bpl_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \last_bpl_reg_n_0_[2]\,
      Q => \prev_bpl_reg_n_0_[2]\,
      R => '0'
    );
\prev_bpl_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \last_bpl_reg_n_0_[3]\,
      Q => \prev_bpl_reg_n_0_[3]\,
      R => '0'
    );
\prev_bpl_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \last_bpl_reg_n_0_[4]\,
      Q => \prev_bpl_reg_n_0_[4]\,
      R => '0'
    );
\prev_bpl_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \last_bpl_reg_n_0_[5]\,
      Q => \prev_bpl_reg_n_0_[5]\,
      R => '0'
    );
\prev_bpl_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \last_bpl_reg_n_0_[6]\,
      Q => \prev_bpl_reg_n_0_[6]\,
      R => '0'
    );
\prev_bpl_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \last_bpl_reg_n_0_[7]\,
      Q => \prev_bpl_reg_n_0_[7]\,
      R => '0'
    );
\prev_bpl_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \last_bpl_reg_n_0_[8]\,
      Q => \prev_bpl_reg_n_0_[8]\,
      R => '0'
    );
\prev_bpl_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => \last_bpl_reg_n_0_[9]\,
      Q => \prev_bpl_reg_n_0_[9]\,
      R => '0'
    );
\prev_lines_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => lines_reg(0),
      Q => \prev_lines_reg_n_0_[0]\,
      R => '0'
    );
\prev_lines_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => lines_reg(10),
      Q => \prev_lines_reg_n_0_[10]\,
      R => '0'
    );
\prev_lines_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => lines_reg(11),
      Q => \prev_lines_reg_n_0_[11]\,
      R => '0'
    );
\prev_lines_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => lines_reg(12),
      Q => \prev_lines_reg_n_0_[12]\,
      R => '0'
    );
\prev_lines_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => lines_reg(13),
      Q => \prev_lines_reg_n_0_[13]\,
      R => '0'
    );
\prev_lines_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => lines_reg(14),
      Q => \prev_lines_reg_n_0_[14]\,
      R => '0'
    );
\prev_lines_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => lines_reg(15),
      Q => \prev_lines_reg_n_0_[15]\,
      R => '0'
    );
\prev_lines_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => lines_reg(1),
      Q => \prev_lines_reg_n_0_[1]\,
      R => '0'
    );
\prev_lines_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => lines_reg(2),
      Q => \prev_lines_reg_n_0_[2]\,
      R => '0'
    );
\prev_lines_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => lines_reg(3),
      Q => \prev_lines_reg_n_0_[3]\,
      R => '0'
    );
\prev_lines_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => lines_reg(4),
      Q => \prev_lines_reg_n_0_[4]\,
      R => '0'
    );
\prev_lines_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => lines_reg(5),
      Q => \prev_lines_reg_n_0_[5]\,
      R => '0'
    );
\prev_lines_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => lines_reg(6),
      Q => \prev_lines_reg_n_0_[6]\,
      R => '0'
    );
\prev_lines_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => lines_reg(7),
      Q => \prev_lines_reg_n_0_[7]\,
      R => '0'
    );
\prev_lines_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => lines_reg(8),
      Q => \prev_lines_reg_n_0_[8]\,
      R => '0'
    );
\prev_lines_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => lines_reg(9),
      Q => \prev_lines_reg_n_0_[9]\,
      R => '0'
    );
\prev_ticks_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => ticks_reg(0),
      Q => \prev_ticks_reg_n_0_[0]\,
      R => '0'
    );
\prev_ticks_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => ticks_reg(10),
      Q => \prev_ticks_reg_n_0_[10]\,
      R => '0'
    );
\prev_ticks_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => ticks_reg(11),
      Q => \prev_ticks_reg_n_0_[11]\,
      R => '0'
    );
\prev_ticks_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => ticks_reg(12),
      Q => \prev_ticks_reg_n_0_[12]\,
      R => '0'
    );
\prev_ticks_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => ticks_reg(13),
      Q => \prev_ticks_reg_n_0_[13]\,
      R => '0'
    );
\prev_ticks_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => ticks_reg(14),
      Q => \prev_ticks_reg_n_0_[14]\,
      R => '0'
    );
\prev_ticks_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => ticks_reg(15),
      Q => \prev_ticks_reg_n_0_[15]\,
      R => '0'
    );
\prev_ticks_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => ticks_reg(1),
      Q => \prev_ticks_reg_n_0_[1]\,
      R => '0'
    );
\prev_ticks_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => ticks_reg(2),
      Q => \prev_ticks_reg_n_0_[2]\,
      R => '0'
    );
\prev_ticks_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => ticks_reg(3),
      Q => \prev_ticks_reg_n_0_[3]\,
      R => '0'
    );
\prev_ticks_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => ticks_reg(4),
      Q => \prev_ticks_reg_n_0_[4]\,
      R => '0'
    );
\prev_ticks_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => ticks_reg(5),
      Q => \prev_ticks_reg_n_0_[5]\,
      R => '0'
    );
\prev_ticks_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => ticks_reg(6),
      Q => \prev_ticks_reg_n_0_[6]\,
      R => '0'
    );
\prev_ticks_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => ticks_reg(7),
      Q => \prev_ticks_reg_n_0_[7]\,
      R => '0'
    );
\prev_ticks_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => ticks_reg(8),
      Q => \prev_ticks_reg_n_0_[8]\,
      R => '0'
    );
\prev_ticks_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => ticks_reg(9),
      Q => \prev_ticks_reg_n_0_[9]\,
      R => '0'
    );
prev_trunc_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => trunc_reg_n_0,
      Q => prev_trunc_reg_n_0,
      R => '0'
    );
\px[10]_i_10__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \^s1_stb\,
      I1 => \^s1_href\,
      I2 => href_d_reg,
      O => stb_reg_2
    );
\px[1]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s1_href\,
      I1 => \^s1_stb\,
      I2 => \px_reg[1]\,
      O => second
    );
\row[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20FF"
    )
        port map (
      I0 => \^s1_stb\,
      I1 => vsync_d,
      I2 => \^s1_vsync\,
      I3 => \out\(0),
      O => SR(0)
    );
\row[8]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \^s1_stb\,
      I1 => vsync_d,
      I2 => \^s1_vsync\,
      O => stb_reg_1
    );
\start_us[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s1_vsync\,
      I1 => \^s1_stb\,
      I2 => vsync_qq_reg_n_0,
      O => \start_us[31]_i_1_n_0\
    );
\start_us_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => D(0),
      Q => \^q\(0),
      R => '0'
    );
\start_us_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => D(10),
      Q => \^q\(10),
      R => '0'
    );
\start_us_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => D(11),
      Q => \^q\(11),
      R => '0'
    );
\start_us_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => D(12),
      Q => \^q\(12),
      R => '0'
    );
\start_us_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => D(13),
      Q => \^q\(13),
      R => '0'
    );
\start_us_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => D(14),
      Q => \^q\(14),
      R => '0'
    );
\start_us_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => D(15),
      Q => \^q\(15),
      R => '0'
    );
\start_us_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => D(16),
      Q => \^q\(16),
      R => '0'
    );
\start_us_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => D(17),
      Q => \^q\(17),
      R => '0'
    );
\start_us_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => D(18),
      Q => \^q\(18),
      R => '0'
    );
\start_us_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => D(19),
      Q => \^q\(19),
      R => '0'
    );
\start_us_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => D(1),
      Q => \^q\(1),
      R => '0'
    );
\start_us_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => D(20),
      Q => \^q\(20),
      R => '0'
    );
\start_us_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => D(21),
      Q => \^q\(21),
      R => '0'
    );
\start_us_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => D(22),
      Q => \^q\(22),
      R => '0'
    );
\start_us_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => D(23),
      Q => \^q\(23),
      R => '0'
    );
\start_us_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => D(24),
      Q => \^q\(24),
      R => '0'
    );
\start_us_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => D(25),
      Q => \^q\(25),
      R => '0'
    );
\start_us_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => D(26),
      Q => \^q\(26),
      R => '0'
    );
\start_us_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => D(27),
      Q => \^q\(27),
      R => '0'
    );
\start_us_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => D(28),
      Q => \^q\(28),
      R => '0'
    );
\start_us_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => D(29),
      Q => \^q\(29),
      R => '0'
    );
\start_us_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => D(2),
      Q => \^q\(2),
      R => '0'
    );
\start_us_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => D(30),
      Q => \^q\(30),
      R => '0'
    );
\start_us_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => D(31),
      Q => \^q\(31),
      R => '0'
    );
\start_us_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => D(3),
      Q => \^q\(3),
      R => '0'
    );
\start_us_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => D(4),
      Q => \^q\(4),
      R => '0'
    );
\start_us_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => D(5),
      Q => \^q\(5),
      R => '0'
    );
\start_us_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => D(6),
      Q => \^q\(6),
      R => '0'
    );
\start_us_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => D(7),
      Q => \^q\(7),
      R => '0'
    );
\start_us_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => D(8),
      Q => \^q\(8),
      R => '0'
    );
\start_us_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_us[31]_i_1_n_0\,
      D => D(9),
      Q => \^q\(9),
      R => '0'
    );
\state[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF007F00"
    )
        port map (
      I0 => idx_reg(4),
      I1 => \state[0]_i_2__0_n_0\,
      I2 => \^s1_stb\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[1]\,
      I5 => \start_us[31]_i_1_n_0\,
      O => \state[0]_i_1__0_n_0\
    );
\state[0]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => idx_reg(1),
      I1 => idx_reg(0),
      I2 => idx_reg(2),
      I3 => idx_reg(3),
      O => \state[0]_i_2__0_n_0\
    );
\state[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state[1]_i_2__0_n_0\,
      I2 => \out\(0),
      I3 => \start_us[31]_i_1_n_0\,
      O => \state[1]_i_1__0_n_0\
    );
\state[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \idx[4]_i_1__0_n_0\,
      I1 => idx_reg(1),
      I2 => idx_reg(0),
      I3 => idx_reg(2),
      I4 => idx_reg(3),
      I5 => idx_reg(4),
      O => \state[1]_i_2__0_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \state[0]_i_1__0_n_0\,
      Q => \state_reg_n_0_[0]\,
      R => \state_reg[0]_0\
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \state[1]_i_1__0_n_0\,
      Q => \state_reg_n_0_[1]\,
      R => '0'
    );
stb0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \pclk_h_reg_n_0_[1]\,
      I1 => \pclk_h_reg_n_0_[0]\,
      I2 => pclk_f_reg_n_0,
      O => stb0_n_0
    );
stb_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => stb0_n_0,
      Q => \^s1_stb\,
      R => '0'
    );
\ticks[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => tick,
      I1 => \ticks[0]_i_3__0_n_0\,
      I2 => \ticks[0]_i_4__0_n_0\,
      I3 => \ticks[0]_i_5__0_n_0\,
      I4 => \ticks[0]_i_6__0_n_0\,
      O => \ticks[0]_i_1__0_n_0\
    );
\ticks[0]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => ticks_reg(11),
      I1 => ticks_reg(2),
      I2 => ticks_reg(15),
      I3 => ticks_reg(4),
      O => \ticks[0]_i_3__0_n_0\
    );
\ticks[0]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => ticks_reg(14),
      I1 => ticks_reg(0),
      I2 => ticks_reg(12),
      I3 => ticks_reg(3),
      O => \ticks[0]_i_4__0_n_0\
    );
\ticks[0]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => ticks_reg(6),
      I1 => ticks_reg(5),
      I2 => ticks_reg(9),
      I3 => ticks_reg(8),
      O => \ticks[0]_i_5__0_n_0\
    );
\ticks[0]_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => ticks_reg(13),
      I1 => ticks_reg(10),
      I2 => ticks_reg(7),
      I3 => ticks_reg(1),
      O => \ticks[0]_i_6__0_n_0\
    );
\ticks[0]_i_7__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ticks_reg(0),
      O => \ticks[0]_i_7__0_n_0\
    );
\ticks_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ticks[0]_i_1__0_n_0\,
      D => \ticks_reg[0]_i_2__0_n_7\,
      Q => ticks_reg(0),
      R => \start_us[31]_i_1_n_0\
    );
\ticks_reg[0]_i_2__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ticks_reg[0]_i_2__0_n_0\,
      CO(2) => \ticks_reg[0]_i_2__0_n_1\,
      CO(1) => \ticks_reg[0]_i_2__0_n_2\,
      CO(0) => \ticks_reg[0]_i_2__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \ticks_reg[0]_i_2__0_n_4\,
      O(2) => \ticks_reg[0]_i_2__0_n_5\,
      O(1) => \ticks_reg[0]_i_2__0_n_6\,
      O(0) => \ticks_reg[0]_i_2__0_n_7\,
      S(3 downto 1) => ticks_reg(3 downto 1),
      S(0) => \ticks[0]_i_7__0_n_0\
    );
\ticks_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ticks[0]_i_1__0_n_0\,
      D => \ticks_reg[8]_i_1__0_n_5\,
      Q => ticks_reg(10),
      R => \start_us[31]_i_1_n_0\
    );
\ticks_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ticks[0]_i_1__0_n_0\,
      D => \ticks_reg[8]_i_1__0_n_4\,
      Q => ticks_reg(11),
      R => \start_us[31]_i_1_n_0\
    );
\ticks_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ticks[0]_i_1__0_n_0\,
      D => \ticks_reg[12]_i_1__0_n_7\,
      Q => ticks_reg(12),
      R => \start_us[31]_i_1_n_0\
    );
\ticks_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ticks_reg[8]_i_1__0_n_0\,
      CO(3) => \NLW_ticks_reg[12]_i_1__0_CO_UNCONNECTED\(3),
      CO(2) => \ticks_reg[12]_i_1__0_n_1\,
      CO(1) => \ticks_reg[12]_i_1__0_n_2\,
      CO(0) => \ticks_reg[12]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ticks_reg[12]_i_1__0_n_4\,
      O(2) => \ticks_reg[12]_i_1__0_n_5\,
      O(1) => \ticks_reg[12]_i_1__0_n_6\,
      O(0) => \ticks_reg[12]_i_1__0_n_7\,
      S(3 downto 0) => ticks_reg(15 downto 12)
    );
\ticks_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ticks[0]_i_1__0_n_0\,
      D => \ticks_reg[12]_i_1__0_n_6\,
      Q => ticks_reg(13),
      R => \start_us[31]_i_1_n_0\
    );
\ticks_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ticks[0]_i_1__0_n_0\,
      D => \ticks_reg[12]_i_1__0_n_5\,
      Q => ticks_reg(14),
      R => \start_us[31]_i_1_n_0\
    );
\ticks_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ticks[0]_i_1__0_n_0\,
      D => \ticks_reg[12]_i_1__0_n_4\,
      Q => ticks_reg(15),
      R => \start_us[31]_i_1_n_0\
    );
\ticks_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ticks[0]_i_1__0_n_0\,
      D => \ticks_reg[0]_i_2__0_n_6\,
      Q => ticks_reg(1),
      R => \start_us[31]_i_1_n_0\
    );
\ticks_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ticks[0]_i_1__0_n_0\,
      D => \ticks_reg[0]_i_2__0_n_5\,
      Q => ticks_reg(2),
      R => \start_us[31]_i_1_n_0\
    );
\ticks_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ticks[0]_i_1__0_n_0\,
      D => \ticks_reg[0]_i_2__0_n_4\,
      Q => ticks_reg(3),
      R => \start_us[31]_i_1_n_0\
    );
\ticks_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ticks[0]_i_1__0_n_0\,
      D => \ticks_reg[4]_i_1__0_n_7\,
      Q => ticks_reg(4),
      R => \start_us[31]_i_1_n_0\
    );
\ticks_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ticks_reg[0]_i_2__0_n_0\,
      CO(3) => \ticks_reg[4]_i_1__0_n_0\,
      CO(2) => \ticks_reg[4]_i_1__0_n_1\,
      CO(1) => \ticks_reg[4]_i_1__0_n_2\,
      CO(0) => \ticks_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ticks_reg[4]_i_1__0_n_4\,
      O(2) => \ticks_reg[4]_i_1__0_n_5\,
      O(1) => \ticks_reg[4]_i_1__0_n_6\,
      O(0) => \ticks_reg[4]_i_1__0_n_7\,
      S(3 downto 0) => ticks_reg(7 downto 4)
    );
\ticks_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ticks[0]_i_1__0_n_0\,
      D => \ticks_reg[4]_i_1__0_n_6\,
      Q => ticks_reg(5),
      R => \start_us[31]_i_1_n_0\
    );
\ticks_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ticks[0]_i_1__0_n_0\,
      D => \ticks_reg[4]_i_1__0_n_5\,
      Q => ticks_reg(6),
      R => \start_us[31]_i_1_n_0\
    );
\ticks_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ticks[0]_i_1__0_n_0\,
      D => \ticks_reg[4]_i_1__0_n_4\,
      Q => ticks_reg(7),
      R => \start_us[31]_i_1_n_0\
    );
\ticks_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ticks[0]_i_1__0_n_0\,
      D => \ticks_reg[8]_i_1__0_n_7\,
      Q => ticks_reg(8),
      R => \start_us[31]_i_1_n_0\
    );
\ticks_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ticks_reg[4]_i_1__0_n_0\,
      CO(3) => \ticks_reg[8]_i_1__0_n_0\,
      CO(2) => \ticks_reg[8]_i_1__0_n_1\,
      CO(1) => \ticks_reg[8]_i_1__0_n_2\,
      CO(0) => \ticks_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ticks_reg[8]_i_1__0_n_4\,
      O(2) => \ticks_reg[8]_i_1__0_n_5\,
      O(1) => \ticks_reg[8]_i_1__0_n_6\,
      O(0) => \ticks_reg[8]_i_1__0_n_7\,
      S(3 downto 0) => ticks_reg(11 downto 8)
    );
\ticks_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ticks[0]_i_1__0_n_0\,
      D => \ticks_reg[8]_i_1__0_n_6\,
      Q => ticks_reg(9),
      R => \start_us[31]_i_1_n_0\
    );
\trunc_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \trunc_i_2__0_n_0\,
      I1 => \out\(0),
      I2 => \start_us[31]_i_1_n_0\,
      O => \trunc_i_1__0_n_0\
    );
\trunc_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0A800000"
    )
        port map (
      I0 => \^s1_stb\,
      I1 => \^s1_href\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => c1_afull,
      I5 => trunc_reg_n_0,
      O => \trunc_i_2__0_n_0\
    );
trunc_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \trunc_i_1__0_n_0\,
      Q => trunc_reg_n_0,
      R => '0'
    );
\vsync_d_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \^s1_vsync\,
      I1 => \out\(0),
      I2 => \^s1_stb\,
      I3 => vsync_d,
      O => vsync_q_reg_0
    );
\vsync_h_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => vsync_m(1),
      Q => \vsync_h_reg_n_0_[0]\,
      R => '0'
    );
\vsync_h_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \vsync_h_reg_n_0_[0]\,
      Q => \vsync_h_reg_n_0_[1]\,
      R => '0'
    );
\vsync_m_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cam2_vsync,
      Q => vsync_m(0),
      R => '0'
    );
\vsync_m_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => vsync_m(0),
      Q => vsync_m(1),
      R => '0'
    );
vsync_q_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => stb0_n_0,
      D => \vsync_h_reg_n_0_[1]\,
      Q => \^s1_vsync\,
      R => '0'
    );
\vsync_qq_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^s1_vsync\,
      I1 => \^s1_stb\,
      I2 => vsync_qq_reg_n_0,
      O => \vsync_qq_i_1__0_n_0\
    );
vsync_qq_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \vsync_qq_i_1__0_n_0\,
      Q => vsync_qq_reg_n_0,
      R => '0'
    );
\wp[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^c1_wr\,
      I1 => \wp_reg[12]\(0),
      O => do_wr
    );
\wr_sof_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^s1_stb\,
      I1 => \out\(0),
      I2 => vsync_d,
      I3 => \^s1_vsync\,
      O => stb_reg_0
    );
\yr[-1111111104]__0_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4FFF"
    )
        port map (
      I0 => vsync_d,
      I1 => \^s1_vsync\,
      I2 => \^s1_stb\,
      I3 => \out\(0),
      O => vsync_d_reg
    );
\yr[-1111111104]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out\(0),
      I1 => \^s1_stb\,
      O => \^href_d\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_cam_input_0_0_luma_bin2 is
  port (
    l0_sof : out STD_LOGIC;
    out_en_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    out_en_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    out_sof_reg_0 : out STD_LOGIC;
    \out_data_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    t0_sof : in STD_LOGIC;
    clk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    t0_en : in STD_LOGIC;
    sof_toggle0 : in STD_LOGIC;
    \prev_reg[7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \prev_reg[7]_1\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_cam_input_0_0_luma_bin2 : entity is "luma_bin2";
end system_cam_input_0_0_luma_bin2;

architecture STRUCTURE of system_cam_input_0_0_luma_bin2 is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal h : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \h[3]_i_2_n_0\ : STD_LOGIC;
  signal \h[3]_i_3_n_0\ : STD_LOGIC;
  signal \h[3]_i_4_n_0\ : STD_LOGIC;
  signal \h[3]_i_5_n_0\ : STD_LOGIC;
  signal \h[7]_i_2_n_0\ : STD_LOGIC;
  signal \h[7]_i_3_n_0\ : STD_LOGIC;
  signal \h[7]_i_4_n_0\ : STD_LOGIC;
  signal \h[7]_i_5_n_0\ : STD_LOGIC;
  signal \h_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \h_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \h_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \h_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \h_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \h_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \h_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \h_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \h_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \h_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \h_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \h_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \h_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \h_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \h_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \h_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \h_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal idx : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^l0_sof\ : STD_LOGIC;
  signal odd_row_i_1_n_0 : STD_LOGIC;
  signal odd_row_reg_n_0 : STD_LOGIC;
  signal \out_data[1]_i_2_n_0\ : STD_LOGIC;
  signal \out_data[1]_i_3_n_0\ : STD_LOGIC;
  signal \out_data[1]_i_4_n_0\ : STD_LOGIC;
  signal \out_data[1]_i_5_n_0\ : STD_LOGIC;
  signal \out_data[1]_i_6_n_0\ : STD_LOGIC;
  signal \out_data[5]_i_2_n_0\ : STD_LOGIC;
  signal \out_data[5]_i_3_n_0\ : STD_LOGIC;
  signal \out_data[5]_i_4_n_0\ : STD_LOGIC;
  signal \out_data[5]_i_5_n_0\ : STD_LOGIC;
  signal \out_data[5]_i_6_n_0\ : STD_LOGIC;
  signal \out_data[5]_i_7_n_0\ : STD_LOGIC;
  signal \out_data[5]_i_8_n_0\ : STD_LOGIC;
  signal \out_data[5]_i_9_n_0\ : STD_LOGIC;
  signal \out_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \out_data[7]_i_3_n_0\ : STD_LOGIC;
  signal \out_data[7]_i_4_n_0\ : STD_LOGIC;
  signal \out_data[7]_i_5_n_0\ : STD_LOGIC;
  signal \out_data_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \out_data_reg[1]_i_1_n_1\ : STD_LOGIC;
  signal \out_data_reg[1]_i_1_n_2\ : STD_LOGIC;
  signal \out_data_reg[1]_i_1_n_3\ : STD_LOGIC;
  signal \out_data_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \out_data_reg[5]_i_1_n_1\ : STD_LOGIC;
  signal \out_data_reg[5]_i_1_n_2\ : STD_LOGIC;
  signal \out_data_reg[5]_i_1_n_3\ : STD_LOGIC;
  signal \out_data_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal \^out_en_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal pair_sum_reg_i_1_n_0 : STD_LOGIC;
  signal \prev_reg_n_0_[0]\ : STD_LOGIC;
  signal \prev_reg_n_0_[1]\ : STD_LOGIC;
  signal \prev_reg_n_0_[2]\ : STD_LOGIC;
  signal \prev_reg_n_0_[3]\ : STD_LOGIC;
  signal \prev_reg_n_0_[4]\ : STD_LOGIC;
  signal \prev_reg_n_0_[5]\ : STD_LOGIC;
  signal \prev_reg_n_0_[6]\ : STD_LOGIC;
  signal \prev_reg_n_0_[7]\ : STD_LOGIC;
  signal sof1 : STD_LOGIC;
  signal up : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \up0__0_n_0\ : STD_LOGIC;
  signal \up0__1_i_2_n_0\ : STD_LOGIC;
  signal \up0__1_n_0\ : STD_LOGIC;
  signal \up0__2_i_1_n_0\ : STD_LOGIC;
  signal \up0__2_n_0\ : STD_LOGIC;
  signal \up0__3_i_2_n_0\ : STD_LOGIC;
  signal \up0__3_n_0\ : STD_LOGIC;
  signal \up0__4_n_0\ : STD_LOGIC;
  signal \up0__5_n_0\ : STD_LOGIC;
  signal \up0__6_n_0\ : STD_LOGIC;
  signal up0_i_2_n_0 : STD_LOGIC;
  signal up0_i_3_n_0 : STD_LOGIC;
  signal up0_n_0 : STD_LOGIC;
  signal v1 : STD_LOGIC;
  signal v1_odd_reg_n_0 : STD_LOGIC;
  signal x : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal \x__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \x_reg_n_0_[9]\ : STD_LOGIC;
  signal \NLW_h_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_h_reg[8]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_out_data_reg[1]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_out_data_reg[7]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_out_data_reg[7]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_pair_sum_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_pair_sum_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 9 );
  signal NLW_pair_sum_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_pair_sum_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \out_data_reg[1]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \out_data_reg[5]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \out_data_reg[7]_i_2\ : label is 35;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of pair_sum_reg : label is "p0_d9";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of pair_sum_reg : label is "p0_d9";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of pair_sum_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of pair_sum_reg : label is 2304;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of pair_sum_reg : label is "system_cam_input_0_0/inst/g_bin.u_bin0/pair_sum_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of pair_sum_reg : label is "auto";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of pair_sum_reg : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of pair_sum_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of pair_sum_reg : label is 1023;
  attribute ram_offset : integer;
  attribute ram_offset of pair_sum_reg : label is 768;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of pair_sum_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of pair_sum_reg : label is 8;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \up0__0_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \up0__1_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \up0__4_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \up0__5_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \up0__6_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of up0_i_1 : label is "soft_lutpair0";
begin
  Q(0) <= \^q\(0);
  l0_sof <= \^l0_sof\;
  out_en_reg_0(0) <= \^out_en_reg_0\(0);
\g_slice[0].m_reg_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^out_en_reg_0\(0),
      I1 => \^l0_sof\,
      O => out_en_reg_1(0)
    );
\h[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \prev_reg_n_0_[3]\,
      I1 => \prev_reg[7]_1\(3),
      O => \h[3]_i_2_n_0\
    );
\h[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \prev_reg_n_0_[2]\,
      I1 => \prev_reg[7]_1\(2),
      O => \h[3]_i_3_n_0\
    );
\h[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \prev_reg_n_0_[1]\,
      I1 => \prev_reg[7]_1\(1),
      O => \h[3]_i_4_n_0\
    );
\h[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \prev_reg_n_0_[0]\,
      I1 => \prev_reg[7]_1\(0),
      O => \h[3]_i_5_n_0\
    );
\h[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \prev_reg_n_0_[7]\,
      I1 => \prev_reg[7]_1\(7),
      O => \h[7]_i_2_n_0\
    );
\h[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \prev_reg_n_0_[6]\,
      I1 => \prev_reg[7]_1\(6),
      O => \h[7]_i_3_n_0\
    );
\h[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \prev_reg_n_0_[5]\,
      I1 => \prev_reg[7]_1\(5),
      O => \h[7]_i_4_n_0\
    );
\h[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \prev_reg_n_0_[4]\,
      I1 => \prev_reg[7]_1\(4),
      O => \h[7]_i_5_n_0\
    );
\h_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \h_reg[3]_i_1_n_7\,
      Q => h(0),
      R => '0'
    );
\h_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \h_reg[3]_i_1_n_6\,
      Q => h(1),
      R => '0'
    );
\h_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \h_reg[3]_i_1_n_5\,
      Q => h(2),
      R => '0'
    );
\h_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \h_reg[3]_i_1_n_4\,
      Q => h(3),
      R => '0'
    );
\h_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \h_reg[3]_i_1_n_0\,
      CO(2) => \h_reg[3]_i_1_n_1\,
      CO(1) => \h_reg[3]_i_1_n_2\,
      CO(0) => \h_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \prev_reg_n_0_[3]\,
      DI(2) => \prev_reg_n_0_[2]\,
      DI(1) => \prev_reg_n_0_[1]\,
      DI(0) => \prev_reg_n_0_[0]\,
      O(3) => \h_reg[3]_i_1_n_4\,
      O(2) => \h_reg[3]_i_1_n_5\,
      O(1) => \h_reg[3]_i_1_n_6\,
      O(0) => \h_reg[3]_i_1_n_7\,
      S(3) => \h[3]_i_2_n_0\,
      S(2) => \h[3]_i_3_n_0\,
      S(1) => \h[3]_i_4_n_0\,
      S(0) => \h[3]_i_5_n_0\
    );
\h_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \h_reg[7]_i_1_n_7\,
      Q => h(4),
      R => '0'
    );
\h_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \h_reg[7]_i_1_n_6\,
      Q => h(5),
      R => '0'
    );
\h_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \h_reg[7]_i_1_n_5\,
      Q => h(6),
      R => '0'
    );
\h_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \h_reg[7]_i_1_n_4\,
      Q => h(7),
      R => '0'
    );
\h_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \h_reg[3]_i_1_n_0\,
      CO(3) => \h_reg[7]_i_1_n_0\,
      CO(2) => \h_reg[7]_i_1_n_1\,
      CO(1) => \h_reg[7]_i_1_n_2\,
      CO(0) => \h_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \prev_reg_n_0_[7]\,
      DI(2) => \prev_reg_n_0_[6]\,
      DI(1) => \prev_reg_n_0_[5]\,
      DI(0) => \prev_reg_n_0_[4]\,
      O(3) => \h_reg[7]_i_1_n_4\,
      O(2) => \h_reg[7]_i_1_n_5\,
      O(1) => \h_reg[7]_i_1_n_6\,
      O(0) => \h_reg[7]_i_1_n_7\,
      S(3) => \h[7]_i_2_n_0\,
      S(2) => \h[7]_i_3_n_0\,
      S(1) => \h[7]_i_4_n_0\,
      S(0) => \h[7]_i_5_n_0\
    );
\h_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \h_reg[8]_i_1_n_3\,
      Q => h(8),
      R => '0'
    );
\h_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \h_reg[7]_i_1_n_0\,
      CO(3 downto 1) => \NLW_h_reg[8]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \h_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_h_reg[8]_i_1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\idx_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => p_1_in(0),
      Q => idx(0),
      R => '0'
    );
\idx_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => p_1_in(1),
      Q => idx(1),
      R => '0'
    );
\idx_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => p_1_in(2),
      Q => idx(2),
      R => '0'
    );
\idx_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => p_1_in(3),
      Q => idx(3),
      R => '0'
    );
\idx_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => p_1_in(4),
      Q => idx(4),
      R => '0'
    );
\idx_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => p_1_in(5),
      Q => idx(5),
      R => '0'
    );
\idx_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => p_1_in(6),
      Q => idx(6),
      R => '0'
    );
\idx_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => p_1_in(7),
      Q => idx(7),
      R => '0'
    );
odd_row_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => odd_row_reg_n_0,
      I1 => t0_en,
      I2 => up0_i_2_n_0,
      I3 => t0_sof,
      O => odd_row_i_1_n_0
    );
odd_row_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => odd_row_i_1_n_0,
      Q => odd_row_reg_n_0,
      R => '0'
    );
\out_data[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => h(2),
      I1 => up(2),
      O => \out_data[1]_i_2_n_0\
    );
\out_data[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => up(2),
      I1 => h(2),
      I2 => h(3),
      I3 => up(3),
      O => \out_data[1]_i_3_n_0\
    );
\out_data[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => h(1),
      I1 => h(2),
      I2 => up(2),
      O => \out_data[1]_i_4_n_0\
    );
\out_data[1]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => h(1),
      I1 => up(1),
      O => \out_data[1]_i_5_n_0\
    );
\out_data[1]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => up(0),
      I1 => h(0),
      O => \out_data[1]_i_6_n_0\
    );
\out_data[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => h(6),
      I1 => up(6),
      O => \out_data[5]_i_2_n_0\
    );
\out_data[5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => h(5),
      I1 => up(5),
      O => \out_data[5]_i_3_n_0\
    );
\out_data[5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => h(4),
      I1 => up(4),
      O => \out_data[5]_i_4_n_0\
    );
\out_data[5]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => h(3),
      I1 => up(3),
      O => \out_data[5]_i_5_n_0\
    );
\out_data[5]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => up(6),
      I1 => h(6),
      I2 => h(7),
      I3 => up(7),
      O => \out_data[5]_i_6_n_0\
    );
\out_data[5]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => up(5),
      I1 => h(5),
      I2 => h(6),
      I3 => up(6),
      O => \out_data[5]_i_7_n_0\
    );
\out_data[5]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => up(4),
      I1 => h(4),
      I2 => h(5),
      I3 => up(5),
      O => \out_data[5]_i_8_n_0\
    );
\out_data[5]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => up(3),
      I1 => h(3),
      I2 => h(4),
      I3 => up(4),
      O => \out_data[5]_i_9_n_0\
    );
\out_data[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => v1,
      I1 => v1_odd_reg_n_0,
      O => \out_data[7]_i_1_n_0\
    );
\out_data[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => h(7),
      I1 => up(7),
      O => \out_data[7]_i_3_n_0\
    );
\out_data[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => h(8),
      I1 => up(8),
      O => \out_data[7]_i_4_n_0\
    );
\out_data[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => up(7),
      I1 => h(7),
      I2 => h(8),
      I3 => up(8),
      O => \out_data[7]_i_5_n_0\
    );
\out_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \out_data[7]_i_1_n_0\,
      D => \p_0_in__0\(0),
      Q => \out_data_reg[7]_0\(0),
      R => '0'
    );
\out_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \out_data[7]_i_1_n_0\,
      D => \p_0_in__0\(1),
      Q => \out_data_reg[7]_0\(1),
      R => '0'
    );
\out_data_reg[1]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \out_data_reg[1]_i_1_n_0\,
      CO(2) => \out_data_reg[1]_i_1_n_1\,
      CO(1) => \out_data_reg[1]_i_1_n_2\,
      CO(0) => \out_data_reg[1]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \out_data[1]_i_2_n_0\,
      DI(2) => h(1),
      DI(1 downto 0) => up(1 downto 0),
      O(3 downto 2) => \p_0_in__0\(1 downto 0),
      O(1 downto 0) => \NLW_out_data_reg[1]_i_1_O_UNCONNECTED\(1 downto 0),
      S(3) => \out_data[1]_i_3_n_0\,
      S(2) => \out_data[1]_i_4_n_0\,
      S(1) => \out_data[1]_i_5_n_0\,
      S(0) => \out_data[1]_i_6_n_0\
    );
\out_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \out_data[7]_i_1_n_0\,
      D => \p_0_in__0\(2),
      Q => \out_data_reg[7]_0\(2),
      R => '0'
    );
\out_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \out_data[7]_i_1_n_0\,
      D => \p_0_in__0\(3),
      Q => \out_data_reg[7]_0\(3),
      R => '0'
    );
\out_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \out_data[7]_i_1_n_0\,
      D => \p_0_in__0\(4),
      Q => \out_data_reg[7]_0\(4),
      R => '0'
    );
\out_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \out_data[7]_i_1_n_0\,
      D => \p_0_in__0\(5),
      Q => \out_data_reg[7]_0\(5),
      R => '0'
    );
\out_data_reg[5]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_data_reg[1]_i_1_n_0\,
      CO(3) => \out_data_reg[5]_i_1_n_0\,
      CO(2) => \out_data_reg[5]_i_1_n_1\,
      CO(1) => \out_data_reg[5]_i_1_n_2\,
      CO(0) => \out_data_reg[5]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \out_data[5]_i_2_n_0\,
      DI(2) => \out_data[5]_i_3_n_0\,
      DI(1) => \out_data[5]_i_4_n_0\,
      DI(0) => \out_data[5]_i_5_n_0\,
      O(3 downto 0) => \p_0_in__0\(5 downto 2),
      S(3) => \out_data[5]_i_6_n_0\,
      S(2) => \out_data[5]_i_7_n_0\,
      S(1) => \out_data[5]_i_8_n_0\,
      S(0) => \out_data[5]_i_9_n_0\
    );
\out_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \out_data[7]_i_1_n_0\,
      D => \p_0_in__0\(6),
      Q => \out_data_reg[7]_0\(6),
      R => '0'
    );
\out_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \out_data[7]_i_1_n_0\,
      D => \p_0_in__0\(7),
      Q => \out_data_reg[7]_0\(7),
      R => '0'
    );
\out_data_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_data_reg[5]_i_1_n_0\,
      CO(3 downto 1) => \NLW_out_data_reg[7]_i_2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \out_data_reg[7]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \out_data[7]_i_3_n_0\,
      O(3 downto 2) => \NLW_out_data_reg[7]_i_2_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => \p_0_in__0\(7 downto 6),
      S(3 downto 2) => B"00",
      S(1) => \out_data[7]_i_4_n_0\,
      S(0) => \out_data[7]_i_5_n_0\
    );
out_en_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \out_data[7]_i_1_n_0\,
      Q => \^out_en_reg_0\(0),
      R => '0'
    );
out_sof_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => sof1,
      Q => \^l0_sof\,
      R => '0'
    );
pair_sum_reg: unisim.vcomponents.RAMB18E1
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
      ADDRARDADDR(11 downto 4) => idx(7 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13 downto 12) => B"11",
      ADDRBWRADDR(11) => up0_n_0,
      ADDRBWRADDR(10) => \up0__0_n_0\,
      ADDRBWRADDR(9) => \up0__1_n_0\,
      ADDRBWRADDR(8) => \up0__2_n_0\,
      ADDRBWRADDR(7) => \up0__3_n_0\,
      ADDRBWRADDR(6) => \up0__4_n_0\,
      ADDRBWRADDR(5) => \up0__5_n_0\,
      ADDRBWRADDR(4) => \up0__6_n_0\,
      ADDRBWRADDR(3 downto 0) => B"1111",
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DIADI(15 downto 9) => B"0000000",
      DIADI(8 downto 0) => h(8 downto 0),
      DIBDI(15 downto 0) => B"0000000111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => NLW_pair_sum_reg_DOADO_UNCONNECTED(15 downto 0),
      DOBDO(15 downto 9) => NLW_pair_sum_reg_DOBDO_UNCONNECTED(15 downto 9),
      DOBDO(8 downto 0) => up(8 downto 0),
      DOPADOP(1 downto 0) => NLW_pair_sum_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_pair_sum_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => pair_sum_reg_i_1_n_0,
      ENBWREN => E(0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => v1,
      WEA(0) => v1,
      WEBWE(3 downto 0) => B"0000"
    );
pair_sum_reg_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v1_odd_reg_n_0,
      O => pair_sum_reg_i_1_n_0
    );
\prev_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prev_reg[7]_0\(0),
      D => \prev_reg[7]_1\(0),
      Q => \prev_reg_n_0_[0]\,
      R => '0'
    );
\prev_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prev_reg[7]_0\(0),
      D => \prev_reg[7]_1\(1),
      Q => \prev_reg_n_0_[1]\,
      R => '0'
    );
\prev_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prev_reg[7]_0\(0),
      D => \prev_reg[7]_1\(2),
      Q => \prev_reg_n_0_[2]\,
      R => '0'
    );
\prev_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prev_reg[7]_0\(0),
      D => \prev_reg[7]_1\(3),
      Q => \prev_reg_n_0_[3]\,
      R => '0'
    );
\prev_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prev_reg[7]_0\(0),
      D => \prev_reg[7]_1\(4),
      Q => \prev_reg_n_0_[4]\,
      R => '0'
    );
\prev_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prev_reg[7]_0\(0),
      D => \prev_reg[7]_1\(5),
      Q => \prev_reg_n_0_[5]\,
      R => '0'
    );
\prev_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prev_reg[7]_0\(0),
      D => \prev_reg[7]_1\(6),
      Q => \prev_reg_n_0_[6]\,
      R => '0'
    );
\prev_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prev_reg[7]_0\(0),
      D => \prev_reg[7]_1\(7),
      Q => \prev_reg_n_0_[7]\,
      R => '0'
    );
sof1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => t0_sof,
      Q => sof1,
      R => '0'
    );
sof_toggle_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^l0_sof\,
      I1 => sof_toggle0,
      O => out_sof_reg_0
    );
up0: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => t0_en,
      D => x(8),
      Q => up0_n_0,
      R => t0_sof
    );
\up0__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => t0_en,
      D => x(7),
      Q => \up0__0_n_0\,
      R => t0_sof
    );
\up0__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00C6"
    )
        port map (
      I0 => p_1_in(5),
      I1 => p_1_in(6),
      I2 => up0_i_3_n_0,
      I3 => up0_i_2_n_0,
      O => x(7)
    );
\up0__1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => t0_en,
      D => x(6),
      Q => \up0__1_n_0\,
      R => t0_sof
    );
\up0__1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6AAAAAA"
    )
        port map (
      I0 => p_1_in(5),
      I1 => p_1_in(3),
      I2 => \up0__1_i_2_n_0\,
      I3 => p_1_in(2),
      I4 => p_1_in(4),
      O => x(6)
    );
\up0__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => p_1_in(0),
      I1 => \^q\(0),
      I2 => p_1_in(1),
      O => \up0__1_i_2_n_0\
    );
\up0__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => t0_en,
      D => \up0__2_i_1_n_0\,
      Q => \up0__2_n_0\,
      R => t0_sof
    );
\up0__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => p_1_in(4),
      I1 => p_1_in(3),
      I2 => p_1_in(1),
      I3 => \^q\(0),
      I4 => p_1_in(0),
      I5 => p_1_in(2),
      O => \up0__2_i_1_n_0\
    );
\up0__3\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => t0_en,
      D => x(4),
      Q => \up0__3_n_0\,
      R => t0_sof
    );
\up0__3_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \up0__3_i_2_n_0\,
      I1 => p_1_in(1),
      I2 => \^q\(0),
      I3 => p_1_in(0),
      I4 => p_1_in(2),
      I5 => p_1_in(3),
      O => x(4)
    );
\up0__3_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFFFFFFFFF"
    )
        port map (
      I0 => \x_reg_n_0_[9]\,
      I1 => p_1_in(3),
      I2 => p_1_in(4),
      I3 => p_1_in(7),
      I4 => p_1_in(5),
      I5 => p_1_in(6),
      O => \up0__3_i_2_n_0\
    );
\up0__4\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => t0_en,
      D => x(3),
      Q => \up0__4_n_0\,
      R => t0_sof
    );
\up0__4_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => p_1_in(2),
      I1 => p_1_in(0),
      I2 => \^q\(0),
      I3 => p_1_in(1),
      O => x(3)
    );
\up0__5\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => t0_en,
      D => x(2),
      Q => \up0__5_n_0\,
      R => t0_sof
    );
\up0__5_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => p_1_in(1),
      I1 => \^q\(0),
      I2 => p_1_in(0),
      O => x(2)
    );
\up0__6\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => t0_en,
      D => x(1),
      Q => \up0__6_n_0\,
      R => t0_sof
    );
\up0__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => p_1_in(0),
      O => x(1)
    );
up0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44441444"
    )
        port map (
      I0 => up0_i_2_n_0,
      I1 => p_1_in(7),
      I2 => p_1_in(6),
      I3 => p_1_in(5),
      I4 => up0_i_3_n_0,
      O => x(8)
    );
up0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000BA"
    )
        port map (
      I0 => p_1_in(4),
      I1 => p_1_in(3),
      I2 => p_1_in(2),
      I3 => \up0__1_i_2_n_0\,
      I4 => \up0__3_i_2_n_0\,
      O => up0_i_2_n_0
    );
up0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => p_1_in(3),
      I1 => p_1_in(1),
      I2 => \^q\(0),
      I3 => p_1_in(0),
      I4 => p_1_in(2),
      I5 => p_1_in(4),
      O => up0_i_3_n_0
    );
v1_odd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => odd_row_reg_n_0,
      Q => v1_odd_reg_n_0,
      R => '0'
    );
v1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => E(0),
      Q => v1,
      R => '0'
    );
\x[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \x__0\(0)
    );
\x[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA6AAA"
    )
        port map (
      I0 => \x_reg_n_0_[9]\,
      I1 => p_1_in(7),
      I2 => p_1_in(6),
      I3 => p_1_in(5),
      I4 => up0_i_3_n_0,
      O => \x__0\(9)
    );
\x_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => t0_en,
      D => \x__0\(0),
      Q => \^q\(0),
      R => t0_sof
    );
\x_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => t0_en,
      D => x(1),
      Q => p_1_in(0),
      R => t0_sof
    );
\x_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => t0_en,
      D => x(2),
      Q => p_1_in(1),
      R => t0_sof
    );
\x_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => t0_en,
      D => x(3),
      Q => p_1_in(2),
      R => t0_sof
    );
\x_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => t0_en,
      D => x(4),
      Q => p_1_in(3),
      R => t0_sof
    );
\x_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => t0_en,
      D => \up0__2_i_1_n_0\,
      Q => p_1_in(4),
      R => t0_sof
    );
\x_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => t0_en,
      D => x(6),
      Q => p_1_in(5),
      R => t0_sof
    );
\x_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => t0_en,
      D => x(7),
      Q => p_1_in(6),
      R => t0_sof
    );
\x_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => t0_en,
      D => x(8),
      Q => p_1_in(7),
      R => t0_sof
    );
\x_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => t0_en,
      D => \x__0\(9),
      Q => \x_reg_n_0_[9]\,
      R => t0_sof
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_cam_input_0_0_luma_bin2_0 is
  port (
    l1_sof : out STD_LOGIC;
    out_en_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    out_en_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    out_sof_reg_0 : out STD_LOGIC;
    \out_data_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    t1_sof : in STD_LOGIC;
    clk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    t1_en : in STD_LOGIC;
    sof_toggle1 : in STD_LOGIC;
    \prev_reg[7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \prev_reg[7]_1\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_cam_input_0_0_luma_bin2_0 : entity is "luma_bin2";
end system_cam_input_0_0_luma_bin2_0;

architecture STRUCTURE of system_cam_input_0_0_luma_bin2_0 is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal h : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \h[3]_i_2_n_0\ : STD_LOGIC;
  signal \h[3]_i_3_n_0\ : STD_LOGIC;
  signal \h[3]_i_4_n_0\ : STD_LOGIC;
  signal \h[3]_i_5_n_0\ : STD_LOGIC;
  signal \h[7]_i_2_n_0\ : STD_LOGIC;
  signal \h[7]_i_3_n_0\ : STD_LOGIC;
  signal \h[7]_i_4_n_0\ : STD_LOGIC;
  signal \h[7]_i_5_n_0\ : STD_LOGIC;
  signal \h_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \h_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \h_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \h_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \h_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \h_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \h_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \h_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \h_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \h_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \h_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \h_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \h_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \h_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \h_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \h_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \h_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal idx : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^l1_sof\ : STD_LOGIC;
  signal \odd_row_i_1__0_n_0\ : STD_LOGIC;
  signal odd_row_reg_n_0 : STD_LOGIC;
  signal \out_data[1]_i_2_n_0\ : STD_LOGIC;
  signal \out_data[1]_i_3_n_0\ : STD_LOGIC;
  signal \out_data[1]_i_4_n_0\ : STD_LOGIC;
  signal \out_data[1]_i_5__0_n_0\ : STD_LOGIC;
  signal \out_data[1]_i_6_n_0\ : STD_LOGIC;
  signal \out_data[5]_i_2_n_0\ : STD_LOGIC;
  signal \out_data[5]_i_3_n_0\ : STD_LOGIC;
  signal \out_data[5]_i_4_n_0\ : STD_LOGIC;
  signal \out_data[5]_i_5_n_0\ : STD_LOGIC;
  signal \out_data[5]_i_6_n_0\ : STD_LOGIC;
  signal \out_data[5]_i_7_n_0\ : STD_LOGIC;
  signal \out_data[5]_i_8_n_0\ : STD_LOGIC;
  signal \out_data[5]_i_9_n_0\ : STD_LOGIC;
  signal \out_data[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \out_data[7]_i_3_n_0\ : STD_LOGIC;
  signal \out_data[7]_i_4_n_0\ : STD_LOGIC;
  signal \out_data[7]_i_5_n_0\ : STD_LOGIC;
  signal \out_data_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \out_data_reg[1]_i_1_n_1\ : STD_LOGIC;
  signal \out_data_reg[1]_i_1_n_2\ : STD_LOGIC;
  signal \out_data_reg[1]_i_1_n_3\ : STD_LOGIC;
  signal \out_data_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \out_data_reg[5]_i_1_n_1\ : STD_LOGIC;
  signal \out_data_reg[5]_i_1_n_2\ : STD_LOGIC;
  signal \out_data_reg[5]_i_1_n_3\ : STD_LOGIC;
  signal \out_data_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal \^out_en_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \pair_sum_reg_i_1__0_n_0\ : STD_LOGIC;
  signal \prev_reg_n_0_[0]\ : STD_LOGIC;
  signal \prev_reg_n_0_[1]\ : STD_LOGIC;
  signal \prev_reg_n_0_[2]\ : STD_LOGIC;
  signal \prev_reg_n_0_[3]\ : STD_LOGIC;
  signal \prev_reg_n_0_[4]\ : STD_LOGIC;
  signal \prev_reg_n_0_[5]\ : STD_LOGIC;
  signal \prev_reg_n_0_[6]\ : STD_LOGIC;
  signal \prev_reg_n_0_[7]\ : STD_LOGIC;
  signal sof1 : STD_LOGIC;
  signal up : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \up0__0_n_0\ : STD_LOGIC;
  signal \up0__1_i_2__0_n_0\ : STD_LOGIC;
  signal \up0__1_n_0\ : STD_LOGIC;
  signal \up0__2_i_1__0_n_0\ : STD_LOGIC;
  signal \up0__2_n_0\ : STD_LOGIC;
  signal \up0__3_i_2__0_n_0\ : STD_LOGIC;
  signal \up0__3_n_0\ : STD_LOGIC;
  signal \up0__4_n_0\ : STD_LOGIC;
  signal \up0__5_n_0\ : STD_LOGIC;
  signal \up0__6_n_0\ : STD_LOGIC;
  signal \up0_i_2__0_n_0\ : STD_LOGIC;
  signal \up0_i_3__0_n_0\ : STD_LOGIC;
  signal up0_n_0 : STD_LOGIC;
  signal v1 : STD_LOGIC;
  signal v1_odd_reg_n_0 : STD_LOGIC;
  signal x : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal \x__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \x_reg_n_0_[9]\ : STD_LOGIC;
  signal \NLW_h_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_h_reg[8]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_out_data_reg[1]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_out_data_reg[7]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_out_data_reg[7]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_pair_sum_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_pair_sum_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 9 );
  signal NLW_pair_sum_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_pair_sum_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \out_data_reg[1]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \out_data_reg[5]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \out_data_reg[7]_i_2\ : label is 35;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of pair_sum_reg : label is "p0_d9";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of pair_sum_reg : label is "p0_d9";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of pair_sum_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of pair_sum_reg : label is 2304;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of pair_sum_reg : label is "system_cam_input_0_0/inst/g_bin.u_bin1/pair_sum_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of pair_sum_reg : label is "auto";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of pair_sum_reg : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of pair_sum_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of pair_sum_reg : label is 1023;
  attribute ram_offset : integer;
  attribute ram_offset of pair_sum_reg : label is 768;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of pair_sum_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of pair_sum_reg : label is 8;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \up0__0_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \up0__1_i_2__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \up0__4_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \up0__5_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \up0__6_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \up0_i_1__0\ : label is "soft_lutpair3";
begin
  Q(0) <= \^q\(0);
  l1_sof <= \^l1_sof\;
  out_en_reg_0(0) <= \^out_en_reg_0\(0);
\g_slice[0].m_reg_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^out_en_reg_0\(0),
      I1 => \^l1_sof\,
      O => out_en_reg_1(0)
    );
\h[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \prev_reg_n_0_[3]\,
      I1 => \prev_reg[7]_1\(3),
      O => \h[3]_i_2_n_0\
    );
\h[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \prev_reg_n_0_[2]\,
      I1 => \prev_reg[7]_1\(2),
      O => \h[3]_i_3_n_0\
    );
\h[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \prev_reg_n_0_[1]\,
      I1 => \prev_reg[7]_1\(1),
      O => \h[3]_i_4_n_0\
    );
\h[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \prev_reg_n_0_[0]\,
      I1 => \prev_reg[7]_1\(0),
      O => \h[3]_i_5_n_0\
    );
\h[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \prev_reg_n_0_[7]\,
      I1 => \prev_reg[7]_1\(7),
      O => \h[7]_i_2_n_0\
    );
\h[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \prev_reg_n_0_[6]\,
      I1 => \prev_reg[7]_1\(6),
      O => \h[7]_i_3_n_0\
    );
\h[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \prev_reg_n_0_[5]\,
      I1 => \prev_reg[7]_1\(5),
      O => \h[7]_i_4_n_0\
    );
\h[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \prev_reg_n_0_[4]\,
      I1 => \prev_reg[7]_1\(4),
      O => \h[7]_i_5_n_0\
    );
\h_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \h_reg[3]_i_1_n_7\,
      Q => h(0),
      R => '0'
    );
\h_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \h_reg[3]_i_1_n_6\,
      Q => h(1),
      R => '0'
    );
\h_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \h_reg[3]_i_1_n_5\,
      Q => h(2),
      R => '0'
    );
\h_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \h_reg[3]_i_1_n_4\,
      Q => h(3),
      R => '0'
    );
\h_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \h_reg[3]_i_1_n_0\,
      CO(2) => \h_reg[3]_i_1_n_1\,
      CO(1) => \h_reg[3]_i_1_n_2\,
      CO(0) => \h_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \prev_reg_n_0_[3]\,
      DI(2) => \prev_reg_n_0_[2]\,
      DI(1) => \prev_reg_n_0_[1]\,
      DI(0) => \prev_reg_n_0_[0]\,
      O(3) => \h_reg[3]_i_1_n_4\,
      O(2) => \h_reg[3]_i_1_n_5\,
      O(1) => \h_reg[3]_i_1_n_6\,
      O(0) => \h_reg[3]_i_1_n_7\,
      S(3) => \h[3]_i_2_n_0\,
      S(2) => \h[3]_i_3_n_0\,
      S(1) => \h[3]_i_4_n_0\,
      S(0) => \h[3]_i_5_n_0\
    );
\h_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \h_reg[7]_i_1_n_7\,
      Q => h(4),
      R => '0'
    );
\h_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \h_reg[7]_i_1_n_6\,
      Q => h(5),
      R => '0'
    );
\h_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \h_reg[7]_i_1_n_5\,
      Q => h(6),
      R => '0'
    );
\h_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \h_reg[7]_i_1_n_4\,
      Q => h(7),
      R => '0'
    );
\h_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \h_reg[3]_i_1_n_0\,
      CO(3) => \h_reg[7]_i_1_n_0\,
      CO(2) => \h_reg[7]_i_1_n_1\,
      CO(1) => \h_reg[7]_i_1_n_2\,
      CO(0) => \h_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \prev_reg_n_0_[7]\,
      DI(2) => \prev_reg_n_0_[6]\,
      DI(1) => \prev_reg_n_0_[5]\,
      DI(0) => \prev_reg_n_0_[4]\,
      O(3) => \h_reg[7]_i_1_n_4\,
      O(2) => \h_reg[7]_i_1_n_5\,
      O(1) => \h_reg[7]_i_1_n_6\,
      O(0) => \h_reg[7]_i_1_n_7\,
      S(3) => \h[7]_i_2_n_0\,
      S(2) => \h[7]_i_3_n_0\,
      S(1) => \h[7]_i_4_n_0\,
      S(0) => \h[7]_i_5_n_0\
    );
\h_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \h_reg[8]_i_1_n_3\,
      Q => h(8),
      R => '0'
    );
\h_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \h_reg[7]_i_1_n_0\,
      CO(3 downto 1) => \NLW_h_reg[8]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \h_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_h_reg[8]_i_1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\idx_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => p_1_in(0),
      Q => idx(0),
      R => '0'
    );
\idx_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => p_1_in(1),
      Q => idx(1),
      R => '0'
    );
\idx_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => p_1_in(2),
      Q => idx(2),
      R => '0'
    );
\idx_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => p_1_in(3),
      Q => idx(3),
      R => '0'
    );
\idx_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => p_1_in(4),
      Q => idx(4),
      R => '0'
    );
\idx_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => p_1_in(5),
      Q => idx(5),
      R => '0'
    );
\idx_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => p_1_in(6),
      Q => idx(6),
      R => '0'
    );
\idx_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => p_1_in(7),
      Q => idx(7),
      R => '0'
    );
\odd_row_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => odd_row_reg_n_0,
      I1 => t1_en,
      I2 => \up0_i_2__0_n_0\,
      I3 => t1_sof,
      O => \odd_row_i_1__0_n_0\
    );
odd_row_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \odd_row_i_1__0_n_0\,
      Q => odd_row_reg_n_0,
      R => '0'
    );
\out_data[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => h(2),
      I1 => up(2),
      O => \out_data[1]_i_2_n_0\
    );
\out_data[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => up(2),
      I1 => h(2),
      I2 => h(3),
      I3 => up(3),
      O => \out_data[1]_i_3_n_0\
    );
\out_data[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => h(1),
      I1 => h(2),
      I2 => up(2),
      O => \out_data[1]_i_4_n_0\
    );
\out_data[1]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => h(1),
      I1 => up(1),
      O => \out_data[1]_i_5__0_n_0\
    );
\out_data[1]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => up(0),
      I1 => h(0),
      O => \out_data[1]_i_6_n_0\
    );
\out_data[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => h(6),
      I1 => up(6),
      O => \out_data[5]_i_2_n_0\
    );
\out_data[5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => h(5),
      I1 => up(5),
      O => \out_data[5]_i_3_n_0\
    );
\out_data[5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => h(4),
      I1 => up(4),
      O => \out_data[5]_i_4_n_0\
    );
\out_data[5]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => h(3),
      I1 => up(3),
      O => \out_data[5]_i_5_n_0\
    );
\out_data[5]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => up(6),
      I1 => h(6),
      I2 => h(7),
      I3 => up(7),
      O => \out_data[5]_i_6_n_0\
    );
\out_data[5]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => up(5),
      I1 => h(5),
      I2 => h(6),
      I3 => up(6),
      O => \out_data[5]_i_7_n_0\
    );
\out_data[5]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => up(4),
      I1 => h(4),
      I2 => h(5),
      I3 => up(5),
      O => \out_data[5]_i_8_n_0\
    );
\out_data[5]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => up(3),
      I1 => h(3),
      I2 => h(4),
      I3 => up(4),
      O => \out_data[5]_i_9_n_0\
    );
\out_data[7]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => v1,
      I1 => v1_odd_reg_n_0,
      O => \out_data[7]_i_1__0_n_0\
    );
\out_data[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => h(7),
      I1 => up(7),
      O => \out_data[7]_i_3_n_0\
    );
\out_data[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => h(8),
      I1 => up(8),
      O => \out_data[7]_i_4_n_0\
    );
\out_data[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => up(7),
      I1 => h(7),
      I2 => h(8),
      I3 => up(8),
      O => \out_data[7]_i_5_n_0\
    );
\out_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \out_data[7]_i_1__0_n_0\,
      D => \p_0_in__0\(0),
      Q => \out_data_reg[7]_0\(0),
      R => '0'
    );
\out_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \out_data[7]_i_1__0_n_0\,
      D => \p_0_in__0\(1),
      Q => \out_data_reg[7]_0\(1),
      R => '0'
    );
\out_data_reg[1]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \out_data_reg[1]_i_1_n_0\,
      CO(2) => \out_data_reg[1]_i_1_n_1\,
      CO(1) => \out_data_reg[1]_i_1_n_2\,
      CO(0) => \out_data_reg[1]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \out_data[1]_i_2_n_0\,
      DI(2) => h(1),
      DI(1 downto 0) => up(1 downto 0),
      O(3 downto 2) => \p_0_in__0\(1 downto 0),
      O(1 downto 0) => \NLW_out_data_reg[1]_i_1_O_UNCONNECTED\(1 downto 0),
      S(3) => \out_data[1]_i_3_n_0\,
      S(2) => \out_data[1]_i_4_n_0\,
      S(1) => \out_data[1]_i_5__0_n_0\,
      S(0) => \out_data[1]_i_6_n_0\
    );
\out_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \out_data[7]_i_1__0_n_0\,
      D => \p_0_in__0\(2),
      Q => \out_data_reg[7]_0\(2),
      R => '0'
    );
\out_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \out_data[7]_i_1__0_n_0\,
      D => \p_0_in__0\(3),
      Q => \out_data_reg[7]_0\(3),
      R => '0'
    );
\out_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \out_data[7]_i_1__0_n_0\,
      D => \p_0_in__0\(4),
      Q => \out_data_reg[7]_0\(4),
      R => '0'
    );
\out_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \out_data[7]_i_1__0_n_0\,
      D => \p_0_in__0\(5),
      Q => \out_data_reg[7]_0\(5),
      R => '0'
    );
\out_data_reg[5]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_data_reg[1]_i_1_n_0\,
      CO(3) => \out_data_reg[5]_i_1_n_0\,
      CO(2) => \out_data_reg[5]_i_1_n_1\,
      CO(1) => \out_data_reg[5]_i_1_n_2\,
      CO(0) => \out_data_reg[5]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \out_data[5]_i_2_n_0\,
      DI(2) => \out_data[5]_i_3_n_0\,
      DI(1) => \out_data[5]_i_4_n_0\,
      DI(0) => \out_data[5]_i_5_n_0\,
      O(3 downto 0) => \p_0_in__0\(5 downto 2),
      S(3) => \out_data[5]_i_6_n_0\,
      S(2) => \out_data[5]_i_7_n_0\,
      S(1) => \out_data[5]_i_8_n_0\,
      S(0) => \out_data[5]_i_9_n_0\
    );
\out_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \out_data[7]_i_1__0_n_0\,
      D => \p_0_in__0\(6),
      Q => \out_data_reg[7]_0\(6),
      R => '0'
    );
\out_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \out_data[7]_i_1__0_n_0\,
      D => \p_0_in__0\(7),
      Q => \out_data_reg[7]_0\(7),
      R => '0'
    );
\out_data_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_data_reg[5]_i_1_n_0\,
      CO(3 downto 1) => \NLW_out_data_reg[7]_i_2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \out_data_reg[7]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \out_data[7]_i_3_n_0\,
      O(3 downto 2) => \NLW_out_data_reg[7]_i_2_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => \p_0_in__0\(7 downto 6),
      S(3 downto 2) => B"00",
      S(1) => \out_data[7]_i_4_n_0\,
      S(0) => \out_data[7]_i_5_n_0\
    );
out_en_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \out_data[7]_i_1__0_n_0\,
      Q => \^out_en_reg_0\(0),
      R => '0'
    );
out_sof_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => sof1,
      Q => \^l1_sof\,
      R => '0'
    );
pair_sum_reg: unisim.vcomponents.RAMB18E1
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
      ADDRARDADDR(11 downto 4) => idx(7 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13 downto 12) => B"11",
      ADDRBWRADDR(11) => up0_n_0,
      ADDRBWRADDR(10) => \up0__0_n_0\,
      ADDRBWRADDR(9) => \up0__1_n_0\,
      ADDRBWRADDR(8) => \up0__2_n_0\,
      ADDRBWRADDR(7) => \up0__3_n_0\,
      ADDRBWRADDR(6) => \up0__4_n_0\,
      ADDRBWRADDR(5) => \up0__5_n_0\,
      ADDRBWRADDR(4) => \up0__6_n_0\,
      ADDRBWRADDR(3 downto 0) => B"1111",
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DIADI(15 downto 9) => B"0000000",
      DIADI(8 downto 0) => h(8 downto 0),
      DIBDI(15 downto 0) => B"0000000111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => NLW_pair_sum_reg_DOADO_UNCONNECTED(15 downto 0),
      DOBDO(15 downto 9) => NLW_pair_sum_reg_DOBDO_UNCONNECTED(15 downto 9),
      DOBDO(8 downto 0) => up(8 downto 0),
      DOPADOP(1 downto 0) => NLW_pair_sum_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_pair_sum_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => \pair_sum_reg_i_1__0_n_0\,
      ENBWREN => E(0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => v1,
      WEA(0) => v1,
      WEBWE(3 downto 0) => B"0000"
    );
\pair_sum_reg_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v1_odd_reg_n_0,
      O => \pair_sum_reg_i_1__0_n_0\
    );
\prev_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prev_reg[7]_0\(0),
      D => \prev_reg[7]_1\(0),
      Q => \prev_reg_n_0_[0]\,
      R => '0'
    );
\prev_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prev_reg[7]_0\(0),
      D => \prev_reg[7]_1\(1),
      Q => \prev_reg_n_0_[1]\,
      R => '0'
    );
\prev_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prev_reg[7]_0\(0),
      D => \prev_reg[7]_1\(2),
      Q => \prev_reg_n_0_[2]\,
      R => '0'
    );
\prev_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prev_reg[7]_0\(0),
      D => \prev_reg[7]_1\(3),
      Q => \prev_reg_n_0_[3]\,
      R => '0'
    );
\prev_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prev_reg[7]_0\(0),
      D => \prev_reg[7]_1\(4),
      Q => \prev_reg_n_0_[4]\,
      R => '0'
    );
\prev_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prev_reg[7]_0\(0),
      D => \prev_reg[7]_1\(5),
      Q => \prev_reg_n_0_[5]\,
      R => '0'
    );
\prev_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prev_reg[7]_0\(0),
      D => \prev_reg[7]_1\(6),
      Q => \prev_reg_n_0_[6]\,
      R => '0'
    );
\prev_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prev_reg[7]_0\(0),
      D => \prev_reg[7]_1\(7),
      Q => \prev_reg_n_0_[7]\,
      R => '0'
    );
sof1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => t1_sof,
      Q => sof1,
      R => '0'
    );
\sof_toggle_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^l1_sof\,
      I1 => sof_toggle1,
      O => out_sof_reg_0
    );
up0: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => t1_en,
      D => x(8),
      Q => up0_n_0,
      R => t1_sof
    );
\up0__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => t1_en,
      D => x(7),
      Q => \up0__0_n_0\,
      R => t1_sof
    );
\up0__0_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00C6"
    )
        port map (
      I0 => p_1_in(5),
      I1 => p_1_in(6),
      I2 => \up0_i_3__0_n_0\,
      I3 => \up0_i_2__0_n_0\,
      O => x(7)
    );
\up0__1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => t1_en,
      D => x(6),
      Q => \up0__1_n_0\,
      R => t1_sof
    );
\up0__1_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6AAAAAA"
    )
        port map (
      I0 => p_1_in(5),
      I1 => p_1_in(3),
      I2 => \up0__1_i_2__0_n_0\,
      I3 => p_1_in(2),
      I4 => p_1_in(4),
      O => x(6)
    );
\up0__1_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => p_1_in(0),
      I1 => \^q\(0),
      I2 => p_1_in(1),
      O => \up0__1_i_2__0_n_0\
    );
\up0__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => t1_en,
      D => \up0__2_i_1__0_n_0\,
      Q => \up0__2_n_0\,
      R => t1_sof
    );
\up0__2_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => p_1_in(4),
      I1 => p_1_in(3),
      I2 => p_1_in(1),
      I3 => \^q\(0),
      I4 => p_1_in(0),
      I5 => p_1_in(2),
      O => \up0__2_i_1__0_n_0\
    );
\up0__3\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => t1_en,
      D => x(4),
      Q => \up0__3_n_0\,
      R => t1_sof
    );
\up0__3_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \up0__3_i_2__0_n_0\,
      I1 => p_1_in(1),
      I2 => \^q\(0),
      I3 => p_1_in(0),
      I4 => p_1_in(2),
      I5 => p_1_in(3),
      O => x(4)
    );
\up0__3_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFFFFFFFFF"
    )
        port map (
      I0 => \x_reg_n_0_[9]\,
      I1 => p_1_in(3),
      I2 => p_1_in(4),
      I3 => p_1_in(7),
      I4 => p_1_in(5),
      I5 => p_1_in(6),
      O => \up0__3_i_2__0_n_0\
    );
\up0__4\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => t1_en,
      D => x(3),
      Q => \up0__4_n_0\,
      R => t1_sof
    );
\up0__4_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => p_1_in(2),
      I1 => p_1_in(0),
      I2 => \^q\(0),
      I3 => p_1_in(1),
      O => x(3)
    );
\up0__5\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => t1_en,
      D => x(2),
      Q => \up0__5_n_0\,
      R => t1_sof
    );
\up0__5_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => p_1_in(1),
      I1 => \^q\(0),
      I2 => p_1_in(0),
      O => x(2)
    );
\up0__6\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => t1_en,
      D => x(1),
      Q => \up0__6_n_0\,
      R => t1_sof
    );
\up0__6_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => p_1_in(0),
      O => x(1)
    );
\up0_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44441444"
    )
        port map (
      I0 => \up0_i_2__0_n_0\,
      I1 => p_1_in(7),
      I2 => p_1_in(6),
      I3 => p_1_in(5),
      I4 => \up0_i_3__0_n_0\,
      O => x(8)
    );
\up0_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000BA"
    )
        port map (
      I0 => p_1_in(4),
      I1 => p_1_in(3),
      I2 => p_1_in(2),
      I3 => \up0__1_i_2__0_n_0\,
      I4 => \up0__3_i_2__0_n_0\,
      O => \up0_i_2__0_n_0\
    );
\up0_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => p_1_in(3),
      I1 => p_1_in(1),
      I2 => \^q\(0),
      I3 => p_1_in(0),
      I4 => p_1_in(2),
      I5 => p_1_in(4),
      O => \up0_i_3__0_n_0\
    );
v1_odd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => odd_row_reg_n_0,
      Q => v1_odd_reg_n_0,
      R => '0'
    );
v1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => E(0),
      Q => v1,
      R => '0'
    );
\x[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \x__0\(0)
    );
\x[9]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA6AAA"
    )
        port map (
      I0 => \x_reg_n_0_[9]\,
      I1 => p_1_in(7),
      I2 => p_1_in(6),
      I3 => p_1_in(5),
      I4 => \up0_i_3__0_n_0\,
      O => \x__0\(9)
    );
\x_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => t1_en,
      D => \x__0\(0),
      Q => \^q\(0),
      R => t1_sof
    );
\x_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => t1_en,
      D => x(1),
      Q => p_1_in(0),
      R => t1_sof
    );
\x_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => t1_en,
      D => x(2),
      Q => p_1_in(1),
      R => t1_sof
    );
\x_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => t1_en,
      D => x(3),
      Q => p_1_in(2),
      R => t1_sof
    );
\x_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => t1_en,
      D => x(4),
      Q => p_1_in(3),
      R => t1_sof
    );
\x_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => t1_en,
      D => \up0__2_i_1__0_n_0\,
      Q => p_1_in(4),
      R => t1_sof
    );
\x_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => t1_en,
      D => x(6),
      Q => p_1_in(5),
      R => t1_sof
    );
\x_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => t1_en,
      D => x(7),
      Q => p_1_in(6),
      R => t1_sof
    );
\x_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => t1_en,
      D => x(8),
      Q => p_1_in(7),
      R => t1_sof
    );
\x_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => t1_en,
      D => \x__0\(9),
      Q => \x_reg_n_0_[9]\,
      R => t1_sof
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_cam_input_0_0_luma_tap is
  port (
    t0_en : out STD_LOGIC;
    vsync_d : out STD_LOGIC;
    t0_sof : out STD_LOGIC;
    href_d_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \row_reg[8]_0\ : out STD_LOGIC;
    \wr_en_reg__0_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \wr_data_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    \row_reg[8]_1\ : in STD_LOGIC;
    vsync_d_reg_0 : in STD_LOGIC;
    wr_sof_reg_0 : in STD_LOGIC;
    href_d_reg_1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s0_stb : in STD_LOGIC;
    s0_href : in STD_LOGIC;
    fill_reg_0 : in STD_LOGIC;
    s0_vsync : in STD_LOGIC;
    href_d : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ysum[-1111111111]__0_0\ : in STD_LOGIC;
    \px_reg[10]_0\ : in STD_LOGIC;
    second : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \row_reg[8]_2\ : in STD_LOGIC;
    \yr_reg[-1111111104]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_cam_input_0_0_luma_tap : entity is "luma_tap";
end system_cam_input_0_0_luma_tap;

architecture STRUCTURE of system_cam_input_0_0_luma_tap is
  signal C : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal fill_i_1_n_0 : STD_LOGIC;
  signal fill_reg_n_0 : STD_LOGIC;
  signal hi : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \hi_reg_n_0_[0]\ : STD_LOGIC;
  signal \hi_reg_n_0_[1]\ : STD_LOGIC;
  signal \hi_reg_n_0_[2]\ : STD_LOGIC;
  signal \^href_d_reg_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 1 to 1 );
  signal p_2_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_rgb : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_v1_out : STD_LOGIC;
  signal p_v2_out : STD_LOGIC;
  signal p_zero : STD_LOGIC;
  signal p_zero_i_2_n_0 : STD_LOGIC;
  signal p_zero_i_3_n_0 : STD_LOGIC;
  signal \px[0]_i_1_n_0\ : STD_LOGIC;
  signal \px[10]_i_11_n_0\ : STD_LOGIC;
  signal \px[10]_i_12_n_0\ : STD_LOGIC;
  signal \px[10]_i_1_n_0\ : STD_LOGIC;
  signal \px[10]_i_2_n_0\ : STD_LOGIC;
  signal \px[10]_i_3_n_0\ : STD_LOGIC;
  signal \px[10]_i_4_n_0\ : STD_LOGIC;
  signal \px[10]_i_6_n_0\ : STD_LOGIC;
  signal \px[10]_i_7_n_0\ : STD_LOGIC;
  signal \px[10]_i_8_n_0\ : STD_LOGIC;
  signal \px[10]_i_9_n_0\ : STD_LOGIC;
  signal \px[1]_i_1_n_0\ : STD_LOGIC;
  signal \px[2]_i_1_n_0\ : STD_LOGIC;
  signal \px[3]_i_1_n_0\ : STD_LOGIC;
  signal \px[4]_i_1_n_0\ : STD_LOGIC;
  signal \px[5]_i_1_n_0\ : STD_LOGIC;
  signal \px[6]_i_1_n_0\ : STD_LOGIC;
  signal \px[6]_i_2_n_0\ : STD_LOGIC;
  signal \px[7]_i_1_n_0\ : STD_LOGIC;
  signal \px[8]_i_1_n_0\ : STD_LOGIC;
  signal \px[9]_i_1_n_0\ : STD_LOGIC;
  signal \px_reg_n_0_[0]\ : STD_LOGIC;
  signal \px_reg_n_0_[10]\ : STD_LOGIC;
  signal \px_reg_n_0_[1]\ : STD_LOGIC;
  signal \px_reg_n_0_[2]\ : STD_LOGIC;
  signal \px_reg_n_0_[3]\ : STD_LOGIC;
  signal \px_reg_n_0_[4]\ : STD_LOGIC;
  signal \px_reg_n_0_[5]\ : STD_LOGIC;
  signal \px_reg_n_0_[6]\ : STD_LOGIC;
  signal \px_reg_n_0_[7]\ : STD_LOGIC;
  signal \px_reg_n_0_[8]\ : STD_LOGIC;
  signal \px_reg_n_0_[9]\ : STD_LOGIC;
  signal q_v_reg_srl2_n_0 : STD_LOGIC;
  signal q_zero : STD_LOGIC;
  signal row : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \row[3]_i_1_n_0\ : STD_LOGIC;
  signal \row[5]_i_1_n_0\ : STD_LOGIC;
  signal \row[7]_i_4_n_0\ : STD_LOGIC;
  signal \row[7]_i_5_n_0\ : STD_LOGIC;
  signal \row[8]_i_1_n_0\ : STD_LOGIC;
  signal \row[8]_i_2_n_0\ : STD_LOGIC;
  signal \^row_reg[8]_0\ : STD_LOGIC;
  signal \row_reg_n_0_[0]\ : STD_LOGIC;
  signal \row_reg_n_0_[1]\ : STD_LOGIC;
  signal \row_reg_n_0_[2]\ : STD_LOGIC;
  signal \row_reg_n_0_[3]\ : STD_LOGIC;
  signal \row_reg_n_0_[4]\ : STD_LOGIC;
  signal \row_reg_n_0_[5]\ : STD_LOGIC;
  signal \row_reg_n_0_[6]\ : STD_LOGIC;
  signal \row_reg_n_0_[7]\ : STD_LOGIC;
  signal \row_reg_n_0_[8]\ : STD_LOGIC;
  signal second_i_1_n_0 : STD_LOGIC;
  signal second_reg_n_0 : STD_LOGIC;
  signal \^t0_en\ : STD_LOGIC;
  signal \^t0_sof\ : STD_LOGIC;
  signal \^vsync_d\ : STD_LOGIC;
  signal \wr_data[0]_i_10_n_0\ : STD_LOGIC;
  signal \wr_data[0]_i_13_n_0\ : STD_LOGIC;
  signal \wr_data[0]_i_14_n_0\ : STD_LOGIC;
  signal \wr_data[0]_i_15_n_0\ : STD_LOGIC;
  signal \wr_data[0]_i_16_n_0\ : STD_LOGIC;
  signal \wr_data[0]_i_17_n_0\ : STD_LOGIC;
  signal \wr_data[0]_i_18_n_0\ : STD_LOGIC;
  signal \wr_data[0]_i_19_n_0\ : STD_LOGIC;
  signal \wr_data[0]_i_20_n_0\ : STD_LOGIC;
  signal \wr_data[0]_i_3_n_0\ : STD_LOGIC;
  signal \wr_data[0]_i_4_n_0\ : STD_LOGIC;
  signal \wr_data[0]_i_5_n_0\ : STD_LOGIC;
  signal \wr_data[0]_i_6_n_0\ : STD_LOGIC;
  signal \wr_data[0]_i_7_n_0\ : STD_LOGIC;
  signal \wr_data[0]_i_8_n_0\ : STD_LOGIC;
  signal \wr_data[0]_i_9_n_0\ : STD_LOGIC;
  signal \wr_data[4]_i_10_n_0\ : STD_LOGIC;
  signal \wr_data[4]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data[4]_i_3_n_0\ : STD_LOGIC;
  signal \wr_data[4]_i_4_n_0\ : STD_LOGIC;
  signal \wr_data[4]_i_5_n_0\ : STD_LOGIC;
  signal \wr_data[4]_i_7_n_0\ : STD_LOGIC;
  signal \wr_data[4]_i_8_n_0\ : STD_LOGIC;
  signal \wr_data[4]_i_9_n_0\ : STD_LOGIC;
  signal \wr_data[7]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data[7]_i_3_n_0\ : STD_LOGIC;
  signal \wr_data[7]_i_4_n_0\ : STD_LOGIC;
  signal \wr_data[7]_i_6_n_0\ : STD_LOGIC;
  signal \wr_data_reg[0]_i_11_n_0\ : STD_LOGIC;
  signal \wr_data_reg[0]_i_11_n_1\ : STD_LOGIC;
  signal \wr_data_reg[0]_i_11_n_2\ : STD_LOGIC;
  signal \wr_data_reg[0]_i_11_n_3\ : STD_LOGIC;
  signal \wr_data_reg[0]_i_12_n_0\ : STD_LOGIC;
  signal \wr_data_reg[0]_i_12_n_1\ : STD_LOGIC;
  signal \wr_data_reg[0]_i_12_n_2\ : STD_LOGIC;
  signal \wr_data_reg[0]_i_12_n_3\ : STD_LOGIC;
  signal \wr_data_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \wr_data_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \wr_data_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \wr_data_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \wr_data_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \wr_data_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \wr_data_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \wr_data_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \wr_data_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \wr_data_reg[4]_i_6_n_0\ : STD_LOGIC;
  signal \wr_data_reg[4]_i_6_n_1\ : STD_LOGIC;
  signal \wr_data_reg[4]_i_6_n_2\ : STD_LOGIC;
  signal \wr_data_reg[4]_i_6_n_3\ : STD_LOGIC;
  signal \wr_data_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \wr_data_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \wr_data_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \wr_data_reg[7]_i_5_n_2\ : STD_LOGIC;
  signal \wr_data_reg[7]_i_5_n_3\ : STD_LOGIC;
  signal yb : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal yb0 : STD_LOGIC_VECTOR ( 12 downto 1 );
  signal \yb[10]_i_11_n_0\ : STD_LOGIC;
  signal \yb[10]_i_12_n_0\ : STD_LOGIC;
  signal \yb[10]_i_13_n_0\ : STD_LOGIC;
  signal \yb[10]_i_2_n_0\ : STD_LOGIC;
  signal \yb[10]_i_3_n_0\ : STD_LOGIC;
  signal \yb[10]_i_4_n_0\ : STD_LOGIC;
  signal \yb[10]_i_5_n_0\ : STD_LOGIC;
  signal \yb[10]_i_6_n_0\ : STD_LOGIC;
  signal \yb[10]_i_7_n_0\ : STD_LOGIC;
  signal \yb[10]_i_8_n_0\ : STD_LOGIC;
  signal \yb[10]_i_9_n_0\ : STD_LOGIC;
  signal \yb[12]_i_2_n_0\ : STD_LOGIC;
  signal \yb[12]_i_3_n_0\ : STD_LOGIC;
  signal \yb[12]_i_4_n_0\ : STD_LOGIC;
  signal \yb[2]_i_2_n_0\ : STD_LOGIC;
  signal \yb[2]_i_3_n_0\ : STD_LOGIC;
  signal \yb[2]_i_4_n_0\ : STD_LOGIC;
  signal \yb[6]_i_2_n_0\ : STD_LOGIC;
  signal \yb[6]_i_3_n_0\ : STD_LOGIC;
  signal \yb[6]_i_4_n_0\ : STD_LOGIC;
  signal \yb[6]_i_5_n_0\ : STD_LOGIC;
  signal \yb[6]_i_6_n_0\ : STD_LOGIC;
  signal \yb[6]_i_7_n_0\ : STD_LOGIC;
  signal \yb[6]_i_8_n_0\ : STD_LOGIC;
  signal \yb_reg[10]_i_10_n_0\ : STD_LOGIC;
  signal \yb_reg[10]_i_10_n_1\ : STD_LOGIC;
  signal \yb_reg[10]_i_10_n_2\ : STD_LOGIC;
  signal \yb_reg[10]_i_10_n_3\ : STD_LOGIC;
  signal \yb_reg[10]_i_10_n_4\ : STD_LOGIC;
  signal \yb_reg[10]_i_10_n_5\ : STD_LOGIC;
  signal \yb_reg[10]_i_10_n_6\ : STD_LOGIC;
  signal \yb_reg[10]_i_10_n_7\ : STD_LOGIC;
  signal \yb_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \yb_reg[10]_i_1_n_1\ : STD_LOGIC;
  signal \yb_reg[10]_i_1_n_2\ : STD_LOGIC;
  signal \yb_reg[10]_i_1_n_3\ : STD_LOGIC;
  signal \yb_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \yb_reg[12]_i_5_n_2\ : STD_LOGIC;
  signal \yb_reg[12]_i_5_n_7\ : STD_LOGIC;
  signal \yb_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \yb_reg[2]_i_1_n_1\ : STD_LOGIC;
  signal \yb_reg[2]_i_1_n_2\ : STD_LOGIC;
  signal \yb_reg[2]_i_1_n_3\ : STD_LOGIC;
  signal \yb_reg[2]_i_1_n_4\ : STD_LOGIC;
  signal \yb_reg[2]_i_1_n_5\ : STD_LOGIC;
  signal \yb_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \yb_reg[6]_i_1_n_1\ : STD_LOGIC;
  signal \yb_reg[6]_i_1_n_2\ : STD_LOGIC;
  signal \yb_reg[6]_i_1_n_3\ : STD_LOGIC;
  signal yg : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal yg0 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \yg[10]_i_2_n_0\ : STD_LOGIC;
  signal \yg[10]_i_3_n_0\ : STD_LOGIC;
  signal \yg[10]_i_4_n_0\ : STD_LOGIC;
  signal \yg[10]_i_5_n_0\ : STD_LOGIC;
  signal \yg[10]_i_6_n_0\ : STD_LOGIC;
  signal \yg[10]_i_7_n_0\ : STD_LOGIC;
  signal \yg[10]_i_8_n_0\ : STD_LOGIC;
  signal \yg[14]_i_2_n_0\ : STD_LOGIC;
  signal \yg[14]_i_3_n_0\ : STD_LOGIC;
  signal \yg[14]_i_4_n_0\ : STD_LOGIC;
  signal \yg[14]_i_5_n_0\ : STD_LOGIC;
  signal \yg[14]_i_6_n_0\ : STD_LOGIC;
  signal \yg[14]_i_7_n_0\ : STD_LOGIC;
  signal \yg[14]_i_8_n_0\ : STD_LOGIC;
  signal \yg[14]_i_9_n_0\ : STD_LOGIC;
  signal \yg[15]_i_2_n_0\ : STD_LOGIC;
  signal \yg[15]_i_4_n_0\ : STD_LOGIC;
  signal \yg[15]_i_5_n_0\ : STD_LOGIC;
  signal \yg[2]_i_2_n_0\ : STD_LOGIC;
  signal \yg[2]_i_3_n_0\ : STD_LOGIC;
  signal \yg[2]_i_4_n_0\ : STD_LOGIC;
  signal \yg[6]_i_3_n_0\ : STD_LOGIC;
  signal \yg[6]_i_4_n_0\ : STD_LOGIC;
  signal \yg[6]_i_5_n_0\ : STD_LOGIC;
  signal \yg[6]_i_6_n_0\ : STD_LOGIC;
  signal \yg[6]_i_7_n_0\ : STD_LOGIC;
  signal \yg[6]_i_8_n_0\ : STD_LOGIC;
  signal \yg[6]_i_9_n_0\ : STD_LOGIC;
  signal \yg_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \yg_reg[10]_i_1_n_1\ : STD_LOGIC;
  signal \yg_reg[10]_i_1_n_2\ : STD_LOGIC;
  signal \yg_reg[10]_i_1_n_3\ : STD_LOGIC;
  signal \yg_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \yg_reg[14]_i_1_n_1\ : STD_LOGIC;
  signal \yg_reg[14]_i_1_n_2\ : STD_LOGIC;
  signal \yg_reg[14]_i_1_n_3\ : STD_LOGIC;
  signal \yg_reg[15]_i_3_n_1\ : STD_LOGIC;
  signal \yg_reg[15]_i_3_n_3\ : STD_LOGIC;
  signal \yg_reg[15]_i_3_n_6\ : STD_LOGIC;
  signal \yg_reg[15]_i_3_n_7\ : STD_LOGIC;
  signal \yg_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \yg_reg[2]_i_1_n_1\ : STD_LOGIC;
  signal \yg_reg[2]_i_1_n_2\ : STD_LOGIC;
  signal \yg_reg[2]_i_1_n_3\ : STD_LOGIC;
  signal \yg_reg[2]_i_1_n_4\ : STD_LOGIC;
  signal \yg_reg[2]_i_1_n_5\ : STD_LOGIC;
  signal \yg_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \yg_reg[6]_i_1_n_1\ : STD_LOGIC;
  signal \yg_reg[6]_i_1_n_2\ : STD_LOGIC;
  signal \yg_reg[6]_i_1_n_3\ : STD_LOGIC;
  signal \yg_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \yg_reg[6]_i_2_n_1\ : STD_LOGIC;
  signal \yg_reg[6]_i_2_n_2\ : STD_LOGIC;
  signal \yg_reg[6]_i_2_n_3\ : STD_LOGIC;
  signal \yg_reg[6]_i_2_n_4\ : STD_LOGIC;
  signal \yg_reg[6]_i_2_n_5\ : STD_LOGIC;
  signal \yg_reg[6]_i_2_n_6\ : STD_LOGIC;
  signal \yg_reg[6]_i_2_n_7\ : STD_LOGIC;
  signal yr : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal yr0 : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal \yr[-1111111104]__0_i_2_n_0\ : STD_LOGIC;
  signal \yr[-1111111104]__0_i_3_n_0\ : STD_LOGIC;
  signal \yr[13]_i_2_n_0\ : STD_LOGIC;
  signal \yr[13]_i_3_n_0\ : STD_LOGIC;
  signal \yr[13]_i_4_n_0\ : STD_LOGIC;
  signal \yr[1]_i_2_n_0\ : STD_LOGIC;
  signal \yr[1]_i_3_n_0\ : STD_LOGIC;
  signal \yr[1]_i_4_n_0\ : STD_LOGIC;
  signal \yr[5]_i_3_n_0\ : STD_LOGIC;
  signal \yr[5]_i_4_n_0\ : STD_LOGIC;
  signal \yr[5]_i_5_n_0\ : STD_LOGIC;
  signal \yr[5]_i_6_n_0\ : STD_LOGIC;
  signal \yr[5]_i_7_n_0\ : STD_LOGIC;
  signal \yr[5]_i_8_n_0\ : STD_LOGIC;
  signal \yr[9]_i_2_n_0\ : STD_LOGIC;
  signal \yr[9]_i_3_n_0\ : STD_LOGIC;
  signal \yr[9]_i_4_n_0\ : STD_LOGIC;
  signal \yr[9]_i_5_n_0\ : STD_LOGIC;
  signal \yr[9]_i_6_n_0\ : STD_LOGIC;
  signal \yr[9]_i_7_n_0\ : STD_LOGIC;
  signal \yr[9]_i_8_n_0\ : STD_LOGIC;
  signal yr_reg : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \yr_reg[-1111111104]__0_n_0\ : STD_LOGIC;
  signal \yr_reg[-1111111105]__0_n_0\ : STD_LOGIC;
  signal \yr_reg[-1111111106]__0_n_0\ : STD_LOGIC;
  signal \yr_reg[-1111111107]__0_n_0\ : STD_LOGIC;
  signal \yr_reg[-1111111108]__0_n_0\ : STD_LOGIC;
  signal \yr_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \yr_reg[13]_i_1_n_1\ : STD_LOGIC;
  signal \yr_reg[13]_i_1_n_2\ : STD_LOGIC;
  signal \yr_reg[13]_i_1_n_3\ : STD_LOGIC;
  signal \yr_reg[13]_i_5_n_2\ : STD_LOGIC;
  signal \yr_reg[13]_i_5_n_7\ : STD_LOGIC;
  signal \yr_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \yr_reg[1]_i_1_n_1\ : STD_LOGIC;
  signal \yr_reg[1]_i_1_n_2\ : STD_LOGIC;
  signal \yr_reg[1]_i_1_n_3\ : STD_LOGIC;
  signal \yr_reg[1]_i_1_n_4\ : STD_LOGIC;
  signal \yr_reg[1]_i_1_n_5\ : STD_LOGIC;
  signal \yr_reg[1]_i_1_n_6\ : STD_LOGIC;
  signal \yr_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \yr_reg[5]_i_1_n_1\ : STD_LOGIC;
  signal \yr_reg[5]_i_1_n_2\ : STD_LOGIC;
  signal \yr_reg[5]_i_1_n_3\ : STD_LOGIC;
  signal \yr_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \yr_reg[5]_i_2_n_1\ : STD_LOGIC;
  signal \yr_reg[5]_i_2_n_2\ : STD_LOGIC;
  signal \yr_reg[5]_i_2_n_3\ : STD_LOGIC;
  signal \yr_reg[5]_i_2_n_4\ : STD_LOGIC;
  signal \yr_reg[5]_i_2_n_5\ : STD_LOGIC;
  signal \yr_reg[5]_i_2_n_6\ : STD_LOGIC;
  signal \yr_reg[5]_i_2_n_7\ : STD_LOGIC;
  signal \yr_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \yr_reg[9]_i_1_n_1\ : STD_LOGIC;
  signal \yr_reg[9]_i_1_n_2\ : STD_LOGIC;
  signal \yr_reg[9]_i_1_n_3\ : STD_LOGIC;
  signal ysum : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal \ysum[-1111111106]__0_n_0\ : STD_LOGIC;
  signal \ysum[-1111111107]__0_n_0\ : STD_LOGIC;
  signal \ysum[-1111111108]__0_n_0\ : STD_LOGIC;
  signal \ysum[-1111111109]__0_n_0\ : STD_LOGIC;
  signal \ysum[-1111111110]__0_n_0\ : STD_LOGIC;
  signal \ysum[-1111111111]__0_n_0\ : STD_LOGIC;
  signal \ysum[-_n_0_1111111104]\ : STD_LOGIC;
  signal \ysum[-_n_0_1111111105]\ : STD_LOGIC;
  signal \ysum[-_n_0_1111111106]\ : STD_LOGIC;
  signal \ysum[-_n_0_1111111107]\ : STD_LOGIC;
  signal \ysum[-_n_0_1111111108]\ : STD_LOGIC;
  signal \NLW_wr_data_reg[0]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_wr_data_reg[0]_i_12_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_wr_data_reg[0]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_wr_data_reg[7]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_wr_data_reg[7]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_wr_data_reg[7]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_wr_data_reg[7]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_yb_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_yb_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_yb_reg[12]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_yb_reg[12]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_yg_reg[15]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_yg_reg[15]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_yg_reg[15]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_yg_reg[15]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_yr_reg[13]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_yr_reg[13]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_yr_reg[14]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_yr_reg[14]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of p_zero_i_2 : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \px[10]_i_11\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \px[10]_i_12\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \px[10]_i_3\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \px[2]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \px[3]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \px[4]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \px[6]_i_2\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \px[7]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \px[8]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \px[9]_i_1\ : label is "soft_lutpair66";
  attribute srl_name : string;
  attribute srl_name of q_v_reg_srl2 : label is "\inst/u_luma0/q_v_reg_srl2 ";
  attribute SOFT_HLUTNM of \row[1]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \row[2]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \row[4]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \row[6]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \row[7]_i_3\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \row[7]_i_5\ : label is "soft_lutpair67";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \wr_data_reg[0]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \wr_data_reg[0]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \wr_data_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \wr_data_reg[7]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \yb_reg[10]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \yb_reg[10]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x5}}";
  attribute METHODOLOGY_DRC_VIOS of \yb_reg[10]_i_10\ : label is "{SYNTH-9 {cell *THIS*} {string 8x5}}";
  attribute ADDER_THRESHOLD of \yb_reg[12]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \yb_reg[12]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x5}}";
  attribute METHODOLOGY_DRC_VIOS of \yb_reg[12]_i_5\ : label is "{SYNTH-9 {cell *THIS*} {string 8x5}}";
  attribute METHODOLOGY_DRC_VIOS of \yb_reg[2]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x5}}";
  attribute ADDER_THRESHOLD of \yb_reg[6]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \yb_reg[6]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x5}}";
  attribute ADDER_THRESHOLD of \yg_reg[10]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \yg_reg[10]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x8}}";
  attribute ADDER_THRESHOLD of \yg_reg[14]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \yg_reg[14]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x8}}";
  attribute ADDER_THRESHOLD of \yg_reg[15]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \yg_reg[15]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x8}}";
  attribute METHODOLOGY_DRC_VIOS of \yg_reg[15]_i_3\ : label is "{SYNTH-9 {cell *THIS*} {string 8x8}}";
  attribute METHODOLOGY_DRC_VIOS of \yg_reg[2]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x8}}";
  attribute ADDER_THRESHOLD of \yg_reg[6]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \yg_reg[6]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x8}}";
  attribute METHODOLOGY_DRC_VIOS of \yg_reg[6]_i_2\ : label is "{SYNTH-9 {cell *THIS*} {string 8x8}}";
  attribute SOFT_HLUTNM of \yr[-1111111104]__0_i_2\ : label is "soft_lutpair64";
  attribute HLUTNM : string;
  attribute HLUTNM of \yr[13]_i_2\ : label is "lutpair2";
  attribute HLUTNM of \yr[9]_i_2\ : label is "lutpair1";
  attribute HLUTNM of \yr[9]_i_3\ : label is "lutpair0";
  attribute HLUTNM of \yr[9]_i_5\ : label is "lutpair2";
  attribute HLUTNM of \yr[9]_i_6\ : label is "lutpair1";
  attribute HLUTNM of \yr[9]_i_7\ : label is "lutpair0";
  attribute METHODOLOGY_DRC_VIOS of \yr_reg[13]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x7}}";
  attribute METHODOLOGY_DRC_VIOS of \yr_reg[13]_i_5\ : label is "{SYNTH-9 {cell *THIS*} {string 8x7}}";
  attribute METHODOLOGY_DRC_VIOS of \yr_reg[1]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x7}}";
  attribute METHODOLOGY_DRC_VIOS of \yr_reg[5]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x7}}";
  attribute METHODOLOGY_DRC_VIOS of \yr_reg[5]_i_2\ : label is "{SYNTH-9 {cell *THIS*} {string 8x7}}";
  attribute METHODOLOGY_DRC_VIOS of \yr_reg[9]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x7}}";
begin
  href_d_reg_0 <= \^href_d_reg_0\;
  \row_reg[8]_0\ <= \^row_reg[8]_0\;
  t0_en <= \^t0_en\;
  t0_sof <= \^t0_sof\;
  vsync_d <= \^vsync_d\;
fill_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33010000"
    )
        port map (
      I0 => \row[7]_i_4_n_0\,
      I1 => \px[10]_i_7_n_0\,
      I2 => s0_href,
      I3 => fill_reg_n_0,
      I4 => fill_reg_0,
      O => fill_i_1_n_0
    );
fill_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => fill_i_1_n_0,
      Q => fill_reg_n_0,
      R => '0'
    );
\hi_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => hi(0),
      D => \yr_reg[-1111111104]_0\(0),
      Q => \hi_reg_n_0_[0]\,
      R => '0'
    );
\hi_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => hi(0),
      D => \yr_reg[-1111111104]_0\(1),
      Q => \hi_reg_n_0_[1]\,
      R => '0'
    );
\hi_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => hi(0),
      D => \yr_reg[-1111111104]_0\(2),
      Q => \hi_reg_n_0_[2]\,
      R => '0'
    );
href_d_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => href_d_reg_1,
      Q => \^href_d_reg_0\,
      R => '0'
    );
p_zero_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA8AAAAAAAA"
    )
        port map (
      I0 => fill_reg_n_0,
      I1 => p_zero_i_2_n_0,
      I2 => \px_reg_n_0_[5]\,
      I3 => \px_reg_n_0_[6]\,
      I4 => \px_reg_n_0_[3]\,
      I5 => p_zero_i_3_n_0,
      O => p_v2_out
    );
p_zero_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \px_reg_n_0_[7]\,
      I1 => \px_reg_n_0_[8]\,
      O => p_zero_i_2_n_0
    );
p_zero_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \px_reg_n_0_[10]\,
      I1 => \px_reg_n_0_[9]\,
      I2 => \px_reg_n_0_[2]\,
      I3 => \px_reg_n_0_[4]\,
      I4 => \px_reg_n_0_[1]\,
      I5 => \px_reg_n_0_[0]\,
      O => p_zero_i_3_n_0
    );
p_zero_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_v2_out,
      Q => p_zero,
      R => \row_reg[8]_1\
    );
pair_sum_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^t0_sof\,
      I1 => \^t0_en\,
      I2 => Q(0),
      O => E(0)
    );
\prev[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^t0_en\,
      I1 => \^t0_sof\,
      O => \wr_en_reg__0_0\(0)
    );
\px[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \px_reg_n_0_[0]\,
      O => \px[0]_i_1_n_0\
    );
\px[10]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \px[10]_i_4_n_0\,
      O => \px[10]_i_1_n_0\
    );
\px[10]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF7"
    )
        port map (
      I0 => \px_reg_n_0_[8]\,
      I1 => \px_reg_n_0_[7]\,
      I2 => \px_reg_n_0_[5]\,
      I3 => \px_reg_n_0_[6]\,
      I4 => \px_reg_n_0_[3]\,
      O => \px[10]_i_11_n_0\
    );
\px[10]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \px_reg_n_0_[5]\,
      I1 => \px_reg_n_0_[6]\,
      O => \px[10]_i_12_n_0\
    );
\px[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00080008FFFF0008"
    )
        port map (
      I0 => s0_stb,
      I1 => s0_href,
      I2 => \^row_reg[8]_0\,
      I3 => \px[10]_i_6_n_0\,
      I4 => fill_reg_n_0,
      I5 => \px[10]_i_7_n_0\,
      O => \px[10]_i_2_n_0\
    );
\px[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \px_reg_n_0_[10]\,
      I1 => \px_reg_n_0_[9]\,
      I2 => \px[10]_i_8_n_0\,
      I3 => \px_reg_n_0_[8]\,
      I4 => \px_reg_n_0_[7]\,
      O => \px[10]_i_3_n_0\
    );
\px[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888880AAAAAAAA"
    )
        port map (
      I0 => fill_reg_0,
      I1 => \px[10]_i_9_n_0\,
      I2 => \^row_reg[8]_0\,
      I3 => \px_reg[10]_0\,
      I4 => \px[10]_i_11_n_0\,
      I5 => p_zero_i_3_n_0,
      O => \px[10]_i_4_n_0\
    );
\px[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA8A8A8A8A8"
    )
        port map (
      I0 => \row_reg_n_0_[8]\,
      I1 => \row_reg_n_0_[6]\,
      I2 => \row_reg_n_0_[7]\,
      I3 => \row_reg_n_0_[4]\,
      I4 => \row_reg_n_0_[3]\,
      I5 => \row_reg_n_0_[5]\,
      O => \^row_reg[8]_0\
    );
\px[10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF54FF"
    )
        port map (
      I0 => p_zero_i_2_n_0,
      I1 => \px_reg_n_0_[4]\,
      I2 => \px[10]_i_12_n_0\,
      I3 => second_reg_n_0,
      I4 => \px_reg_n_0_[9]\,
      I5 => \px_reg_n_0_[10]\,
      O => \px[10]_i_6_n_0\
    );
\px[10]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => p_zero_i_3_n_0,
      I1 => \px_reg_n_0_[3]\,
      I2 => \px_reg_n_0_[6]\,
      I3 => \px_reg_n_0_[5]\,
      I4 => \px_reg_n_0_[7]\,
      I5 => \px_reg_n_0_[8]\,
      O => \px[10]_i_7_n_0\
    );
\px[10]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \px_reg_n_0_[6]\,
      I1 => \px_reg_n_0_[5]\,
      I2 => \px_reg_n_0_[3]\,
      I3 => \px[6]_i_2_n_0\,
      I4 => \px_reg_n_0_[2]\,
      I5 => \px_reg_n_0_[4]\,
      O => \px[10]_i_8_n_0\
    );
\px[10]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \px_reg_n_0_[6]\,
      I1 => \px_reg_n_0_[5]\,
      I2 => \px_reg_n_0_[3]\,
      I3 => fill_reg_n_0,
      I4 => \px_reg_n_0_[7]\,
      I5 => \px_reg_n_0_[8]\,
      O => \px[10]_i_9_n_0\
    );
\px[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFBAAAAAA08AAAA"
    )
        port map (
      I0 => p_1_in(1),
      I1 => second,
      I2 => \px[10]_i_6_n_0\,
      I3 => p_v2_out,
      I4 => \px[10]_i_4_n_0\,
      I5 => \px_reg_n_0_[1]\,
      O => \px[1]_i_1_n_0\
    );
\px[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000DF00DF000000"
    )
        port map (
      I0 => s0_stb,
      I1 => \^vsync_d\,
      I2 => s0_vsync,
      I3 => \out\(0),
      I4 => \px_reg_n_0_[1]\,
      I5 => \px_reg_n_0_[0]\,
      O => p_1_in(1)
    );
\px[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \px_reg_n_0_[2]\,
      I1 => \px_reg_n_0_[0]\,
      I2 => \px_reg_n_0_[1]\,
      O => \px[2]_i_1_n_0\
    );
\px[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \px_reg_n_0_[3]\,
      I1 => \px_reg_n_0_[2]\,
      I2 => \px_reg_n_0_[1]\,
      I3 => \px_reg_n_0_[0]\,
      O => \px[3]_i_1_n_0\
    );
\px[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \px_reg_n_0_[4]\,
      I1 => \px_reg_n_0_[3]\,
      I2 => \px_reg_n_0_[0]\,
      I3 => \px_reg_n_0_[1]\,
      I4 => \px_reg_n_0_[2]\,
      O => \px[4]_i_1_n_0\
    );
\px[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \px_reg_n_0_[5]\,
      I1 => \px_reg_n_0_[4]\,
      I2 => \px_reg_n_0_[2]\,
      I3 => \px_reg_n_0_[1]\,
      I4 => \px_reg_n_0_[0]\,
      I5 => \px_reg_n_0_[3]\,
      O => \px[5]_i_1_n_0\
    );
\px[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA6AAAAAAAAAAAAA"
    )
        port map (
      I0 => \px_reg_n_0_[6]\,
      I1 => \px_reg_n_0_[5]\,
      I2 => \px_reg_n_0_[3]\,
      I3 => \px[6]_i_2_n_0\,
      I4 => \px_reg_n_0_[2]\,
      I5 => \px_reg_n_0_[4]\,
      O => \px[6]_i_1_n_0\
    );
\px[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \px_reg_n_0_[1]\,
      I1 => \px_reg_n_0_[0]\,
      O => \px[6]_i_2_n_0\
    );
\px[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \px_reg_n_0_[7]\,
      I1 => \px[10]_i_8_n_0\,
      O => \px[7]_i_1_n_0\
    );
\px[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \px_reg_n_0_[8]\,
      I1 => \px[10]_i_8_n_0\,
      I2 => \px_reg_n_0_[7]\,
      O => \px[8]_i_1_n_0\
    );
\px[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \px_reg_n_0_[9]\,
      I1 => \px_reg_n_0_[7]\,
      I2 => \px_reg_n_0_[8]\,
      I3 => \px[10]_i_8_n_0\,
      O => \px[9]_i_1_n_0\
    );
\px_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \px[10]_i_2_n_0\,
      D => \px[0]_i_1_n_0\,
      Q => \px_reg_n_0_[0]\,
      R => \px[10]_i_1_n_0\
    );
\px_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \px[10]_i_2_n_0\,
      D => \px[10]_i_3_n_0\,
      Q => \px_reg_n_0_[10]\,
      R => \px[10]_i_1_n_0\
    );
\px_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \px[1]_i_1_n_0\,
      Q => \px_reg_n_0_[1]\,
      R => '0'
    );
\px_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \px[10]_i_2_n_0\,
      D => \px[2]_i_1_n_0\,
      Q => \px_reg_n_0_[2]\,
      R => \px[10]_i_1_n_0\
    );
\px_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \px[10]_i_2_n_0\,
      D => \px[3]_i_1_n_0\,
      Q => \px_reg_n_0_[3]\,
      R => \px[10]_i_1_n_0\
    );
\px_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \px[10]_i_2_n_0\,
      D => \px[4]_i_1_n_0\,
      Q => \px_reg_n_0_[4]\,
      R => \px[10]_i_1_n_0\
    );
\px_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \px[10]_i_2_n_0\,
      D => \px[5]_i_1_n_0\,
      Q => \px_reg_n_0_[5]\,
      R => \px[10]_i_1_n_0\
    );
\px_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \px[10]_i_2_n_0\,
      D => \px[6]_i_1_n_0\,
      Q => \px_reg_n_0_[6]\,
      R => \px[10]_i_1_n_0\
    );
\px_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \px[10]_i_2_n_0\,
      D => \px[7]_i_1_n_0\,
      Q => \px_reg_n_0_[7]\,
      R => \px[10]_i_1_n_0\
    );
\px_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \px[10]_i_2_n_0\,
      D => \px[8]_i_1_n_0\,
      Q => \px_reg_n_0_[8]\,
      R => \px[10]_i_1_n_0\
    );
\px_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \px[10]_i_2_n_0\,
      D => \px[9]_i_1_n_0\,
      Q => \px_reg_n_0_[9]\,
      R => \px[10]_i_1_n_0\
    );
q_v_reg_srl2: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => p_v1_out,
      Q => q_v_reg_srl2_n_0
    );
q_v_reg_srl2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAEA"
    )
        port map (
      I0 => p_rgb(0),
      I1 => \out\(0),
      I2 => fill_reg_n_0,
      I3 => \px[10]_i_7_n_0\,
      O => p_v1_out
    );
q_zero_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_zero,
      Q => q_zero,
      R => '0'
    );
\row[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \row_reg_n_0_[0]\,
      O => p_2_in(0)
    );
\row[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \row_reg_n_0_[0]\,
      I1 => \row_reg_n_0_[1]\,
      O => p_2_in(1)
    );
\row[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \row_reg_n_0_[2]\,
      I1 => \row_reg_n_0_[0]\,
      I2 => \row_reg_n_0_[1]\,
      O => p_2_in(2)
    );
\row[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF007F00000080"
    )
        port map (
      I0 => \row_reg_n_0_[2]\,
      I1 => \row_reg_n_0_[0]\,
      I2 => \row_reg_n_0_[1]\,
      I3 => \row_reg[8]_2\,
      I4 => \row[7]_i_4_n_0\,
      I5 => \row_reg_n_0_[3]\,
      O => \row[3]_i_1_n_0\
    );
\row[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \row_reg_n_0_[4]\,
      I1 => \row_reg_n_0_[2]\,
      I2 => \row_reg_n_0_[0]\,
      I3 => \row_reg_n_0_[1]\,
      I4 => \row_reg_n_0_[3]\,
      O => p_2_in(4)
    );
\row[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3FFA2AA00005155"
    )
        port map (
      I0 => \row[7]_i_5_n_0\,
      I1 => s0_vsync,
      I2 => \^vsync_d\,
      I3 => s0_stb,
      I4 => \row[7]_i_4_n_0\,
      I5 => \row_reg_n_0_[5]\,
      O => \row[5]_i_1_n_0\
    );
\row[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \row_reg_n_0_[6]\,
      I1 => \row[7]_i_5_n_0\,
      I2 => \row_reg_n_0_[5]\,
      O => p_2_in(6)
    );
\row[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \row[7]_i_4_n_0\,
      O => row(0)
    );
\row[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => \row_reg_n_0_[7]\,
      I1 => \row_reg_n_0_[5]\,
      I2 => \row[7]_i_5_n_0\,
      I3 => \row_reg_n_0_[6]\,
      O => p_2_in(7)
    );
\row[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => \^row_reg[8]_0\,
      I1 => \^href_d_reg_0\,
      I2 => s0_href,
      I3 => s0_stb,
      O => \row[7]_i_4_n_0\
    );
\row[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \row_reg_n_0_[3]\,
      I1 => \row_reg_n_0_[1]\,
      I2 => \row_reg_n_0_[0]\,
      I3 => \row_reg_n_0_[2]\,
      I4 => \row_reg_n_0_[4]\,
      O => \row[7]_i_5_n_0\
    );
\row[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF007F00000080"
    )
        port map (
      I0 => \row_reg_n_0_[7]\,
      I1 => \row[8]_i_2_n_0\,
      I2 => \row_reg_n_0_[6]\,
      I3 => \row_reg[8]_2\,
      I4 => \row[7]_i_4_n_0\,
      I5 => \row_reg_n_0_[8]\,
      O => \row[8]_i_1_n_0\
    );
\row[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \row_reg_n_0_[5]\,
      I1 => \row_reg_n_0_[4]\,
      I2 => \row_reg_n_0_[2]\,
      I3 => \row_reg_n_0_[0]\,
      I4 => \row_reg_n_0_[1]\,
      I5 => \row_reg_n_0_[3]\,
      O => \row[8]_i_2_n_0\
    );
\row_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => row(0),
      D => p_2_in(0),
      Q => \row_reg_n_0_[0]\,
      R => SR(0)
    );
\row_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => row(0),
      D => p_2_in(1),
      Q => \row_reg_n_0_[1]\,
      R => SR(0)
    );
\row_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => row(0),
      D => p_2_in(2),
      Q => \row_reg_n_0_[2]\,
      R => SR(0)
    );
\row_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \row[3]_i_1_n_0\,
      Q => \row_reg_n_0_[3]\,
      S => \row_reg[8]_1\
    );
\row_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => row(0),
      D => p_2_in(4),
      Q => \row_reg_n_0_[4]\,
      R => SR(0)
    );
\row_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \row[5]_i_1_n_0\,
      Q => \row_reg_n_0_[5]\,
      S => \row_reg[8]_1\
    );
\row_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => row(0),
      D => p_2_in(6),
      Q => \row_reg_n_0_[6]\,
      R => SR(0)
    );
\row_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => row(0),
      D => p_2_in(7),
      Q => \row_reg_n_0_[7]\,
      R => SR(0)
    );
\row_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \row[8]_i_1_n_0\,
      Q => \row_reg_n_0_[8]\,
      S => \row_reg[8]_1\
    );
second_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0CCC4CC0C000000"
    )
        port map (
      I0 => \^href_d_reg_0\,
      I1 => fill_reg_0,
      I2 => \^row_reg[8]_0\,
      I3 => s0_stb,
      I4 => s0_href,
      I5 => second_reg_n_0,
      O => second_i_1_n_0
    );
second_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => second_i_1_n_0,
      Q => second_reg_n_0,
      R => '0'
    );
vsync_d_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => vsync_d_reg_0,
      Q => \^vsync_d\,
      R => '0'
    );
\wr_data[0]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yg(1),
      I1 => C(1),
      O => \wr_data[0]_i_10_n_0\
    );
\wr_data[0]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yb(7),
      I1 => yr(7),
      O => \wr_data[0]_i_13_n_0\
    );
\wr_data[0]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yb(6),
      I1 => yr(6),
      O => \wr_data[0]_i_14_n_0\
    );
\wr_data[0]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yb(5),
      I1 => yr(5),
      O => \wr_data[0]_i_15_n_0\
    );
\wr_data[0]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yb(4),
      I1 => yr(4),
      O => \wr_data[0]_i_16_n_0\
    );
\wr_data[0]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yb(3),
      I1 => yr(3),
      O => \wr_data[0]_i_17_n_0\
    );
\wr_data[0]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yb(2),
      I1 => yr(2),
      O => \wr_data[0]_i_18_n_0\
    );
\wr_data[0]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yb(1),
      I1 => yr(1),
      O => \wr_data[0]_i_19_n_0\
    );
\wr_data[0]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yb(0),
      I1 => yr(0),
      O => \wr_data[0]_i_20_n_0\
    );
\wr_data[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yg(8),
      I1 => C(8),
      O => \wr_data[0]_i_3_n_0\
    );
\wr_data[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yg(7),
      I1 => C(7),
      O => \wr_data[0]_i_4_n_0\
    );
\wr_data[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yg(6),
      I1 => C(6),
      O => \wr_data[0]_i_5_n_0\
    );
\wr_data[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yg(5),
      I1 => C(5),
      O => \wr_data[0]_i_6_n_0\
    );
\wr_data[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yg(4),
      I1 => C(4),
      O => \wr_data[0]_i_7_n_0\
    );
\wr_data[0]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yg(3),
      I1 => C(3),
      O => \wr_data[0]_i_8_n_0\
    );
\wr_data[0]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yg(2),
      I1 => C(2),
      O => \wr_data[0]_i_9_n_0\
    );
\wr_data[4]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yb(8),
      I1 => yr(8),
      O => \wr_data[4]_i_10_n_0\
    );
\wr_data[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yg(12),
      I1 => C(12),
      O => \wr_data[4]_i_2_n_0\
    );
\wr_data[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yg(11),
      I1 => C(11),
      O => \wr_data[4]_i_3_n_0\
    );
\wr_data[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yg(10),
      I1 => C(10),
      O => \wr_data[4]_i_4_n_0\
    );
\wr_data[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yg(9),
      I1 => C(9),
      O => \wr_data[4]_i_5_n_0\
    );
\wr_data[4]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yb(11),
      I1 => yr(11),
      O => \wr_data[4]_i_7_n_0\
    );
\wr_data[4]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yb(10),
      I1 => yr(10),
      O => \wr_data[4]_i_8_n_0\
    );
\wr_data[4]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yb(9),
      I1 => yr(9),
      O => \wr_data[4]_i_9_n_0\
    );
\wr_data[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yg(15),
      I1 => \wr_data_reg[7]_i_5_n_0\,
      O => \wr_data[7]_i_2_n_0\
    );
\wr_data[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yg(14),
      I1 => C(14),
      O => \wr_data[7]_i_3_n_0\
    );
\wr_data[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yg(13),
      I1 => C(13),
      O => \wr_data[7]_i_4_n_0\
    );
\wr_data[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yb(12),
      I1 => yr(12),
      O => \wr_data[7]_i_6_n_0\
    );
\wr_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ysum(8),
      Q => \wr_data_reg[7]_0\(0),
      R => q_zero
    );
\wr_data_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wr_data_reg[0]_i_2_n_0\,
      CO(3) => \wr_data_reg[0]_i_1_n_0\,
      CO(2) => \wr_data_reg[0]_i_1_n_1\,
      CO(1) => \wr_data_reg[0]_i_1_n_2\,
      CO(0) => \wr_data_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => yg(8 downto 5),
      O(3) => ysum(8),
      O(2 downto 0) => \NLW_wr_data_reg[0]_i_1_O_UNCONNECTED\(2 downto 0),
      S(3) => \wr_data[0]_i_3_n_0\,
      S(2) => \wr_data[0]_i_4_n_0\,
      S(1) => \wr_data[0]_i_5_n_0\,
      S(0) => \wr_data[0]_i_6_n_0\
    );
\wr_data_reg[0]_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => \wr_data_reg[0]_i_12_n_0\,
      CO(3) => \wr_data_reg[0]_i_11_n_0\,
      CO(2) => \wr_data_reg[0]_i_11_n_1\,
      CO(1) => \wr_data_reg[0]_i_11_n_2\,
      CO(0) => \wr_data_reg[0]_i_11_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => yb(7 downto 4),
      O(3 downto 0) => C(7 downto 4),
      S(3) => \wr_data[0]_i_13_n_0\,
      S(2) => \wr_data[0]_i_14_n_0\,
      S(1) => \wr_data[0]_i_15_n_0\,
      S(0) => \wr_data[0]_i_16_n_0\
    );
\wr_data_reg[0]_i_12\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \wr_data_reg[0]_i_12_n_0\,
      CO(2) => \wr_data_reg[0]_i_12_n_1\,
      CO(1) => \wr_data_reg[0]_i_12_n_2\,
      CO(0) => \wr_data_reg[0]_i_12_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => yb(3 downto 0),
      O(3 downto 1) => C(3 downto 1),
      O(0) => \NLW_wr_data_reg[0]_i_12_O_UNCONNECTED\(0),
      S(3) => \wr_data[0]_i_17_n_0\,
      S(2) => \wr_data[0]_i_18_n_0\,
      S(1) => \wr_data[0]_i_19_n_0\,
      S(0) => \wr_data[0]_i_20_n_0\
    );
\wr_data_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \wr_data_reg[0]_i_2_n_0\,
      CO(2) => \wr_data_reg[0]_i_2_n_1\,
      CO(1) => \wr_data_reg[0]_i_2_n_2\,
      CO(0) => \wr_data_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => yg(4 downto 1),
      O(3 downto 0) => \NLW_wr_data_reg[0]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \wr_data[0]_i_7_n_0\,
      S(2) => \wr_data[0]_i_8_n_0\,
      S(1) => \wr_data[0]_i_9_n_0\,
      S(0) => \wr_data[0]_i_10_n_0\
    );
\wr_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ysum(9),
      Q => \wr_data_reg[7]_0\(1),
      R => q_zero
    );
\wr_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ysum(10),
      Q => \wr_data_reg[7]_0\(2),
      R => q_zero
    );
\wr_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ysum(11),
      Q => \wr_data_reg[7]_0\(3),
      R => q_zero
    );
\wr_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ysum(12),
      Q => \wr_data_reg[7]_0\(4),
      R => q_zero
    );
\wr_data_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wr_data_reg[0]_i_1_n_0\,
      CO(3) => \wr_data_reg[4]_i_1_n_0\,
      CO(2) => \wr_data_reg[4]_i_1_n_1\,
      CO(1) => \wr_data_reg[4]_i_1_n_2\,
      CO(0) => \wr_data_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => yg(12 downto 9),
      O(3 downto 0) => ysum(12 downto 9),
      S(3) => \wr_data[4]_i_2_n_0\,
      S(2) => \wr_data[4]_i_3_n_0\,
      S(1) => \wr_data[4]_i_4_n_0\,
      S(0) => \wr_data[4]_i_5_n_0\
    );
\wr_data_reg[4]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \wr_data_reg[0]_i_11_n_0\,
      CO(3) => \wr_data_reg[4]_i_6_n_0\,
      CO(2) => \wr_data_reg[4]_i_6_n_1\,
      CO(1) => \wr_data_reg[4]_i_6_n_2\,
      CO(0) => \wr_data_reg[4]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => yb(11 downto 8),
      O(3 downto 0) => C(11 downto 8),
      S(3) => \wr_data[4]_i_7_n_0\,
      S(2) => \wr_data[4]_i_8_n_0\,
      S(1) => \wr_data[4]_i_9_n_0\,
      S(0) => \wr_data[4]_i_10_n_0\
    );
\wr_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ysum(13),
      Q => \wr_data_reg[7]_0\(5),
      R => q_zero
    );
\wr_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ysum(14),
      Q => \wr_data_reg[7]_0\(6),
      R => q_zero
    );
\wr_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ysum(15),
      Q => \wr_data_reg[7]_0\(7),
      R => q_zero
    );
\wr_data_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wr_data_reg[4]_i_1_n_0\,
      CO(3 downto 2) => \NLW_wr_data_reg[7]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \wr_data_reg[7]_i_1_n_2\,
      CO(0) => \wr_data_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => yg(14 downto 13),
      O(3) => \NLW_wr_data_reg[7]_i_1_O_UNCONNECTED\(3),
      O(2 downto 0) => ysum(15 downto 13),
      S(3) => '0',
      S(2) => \wr_data[7]_i_2_n_0\,
      S(1) => \wr_data[7]_i_3_n_0\,
      S(0) => \wr_data[7]_i_4_n_0\
    );
\wr_data_reg[7]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \wr_data_reg[4]_i_6_n_0\,
      CO(3) => \wr_data_reg[7]_i_5_n_0\,
      CO(2) => \NLW_wr_data_reg[7]_i_5_CO_UNCONNECTED\(2),
      CO(1) => \wr_data_reg[7]_i_5_n_2\,
      CO(0) => \wr_data_reg[7]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => yb(12),
      O(3) => \NLW_wr_data_reg[7]_i_5_O_UNCONNECTED\(3),
      O(2 downto 0) => C(14 downto 12),
      S(3) => '1',
      S(2 downto 1) => yr(14 downto 13),
      S(0) => \wr_data[7]_i_6_n_0\
    );
\wr_en_reg__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => q_v_reg_srl2_n_0,
      Q => \^t0_en\,
      R => '0'
    );
wr_sof_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => wr_sof_reg_0,
      Q => \^t0_sof\,
      R => '0'
    );
\yb[10]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ysum[-_n_0_1111111104]\,
      I1 => \ysum[-_n_0_1111111106]\,
      O => \yb[10]_i_11_n_0\
    );
\yb[10]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ysum[-_n_0_1111111105]\,
      I1 => \ysum[-_n_0_1111111107]\,
      O => \yb[10]_i_12_n_0\
    );
\yb[10]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ysum[-_n_0_1111111106]\,
      I1 => \ysum[-_n_0_1111111108]\,
      O => \yb[10]_i_13_n_0\
    );
\yb[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \ysum[-_n_0_1111111105]\,
      I1 => \yb_reg[12]_i_5_n_7\,
      I2 => \ysum[-_n_0_1111111107]\,
      O => \yb[10]_i_2_n_0\
    );
\yb[10]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \ysum[-_n_0_1111111106]\,
      I1 => \yb_reg[10]_i_10_n_4\,
      I2 => \ysum[-_n_0_1111111108]\,
      O => \yb[10]_i_3_n_0\
    );
\yb[10]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \ysum[-_n_0_1111111107]\,
      I1 => \yb_reg[10]_i_10_n_5\,
      I2 => \ysum[-_n_0_1111111104]\,
      O => \yb[10]_i_4_n_0\
    );
\yb[10]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \ysum[-_n_0_1111111108]\,
      I1 => \yb_reg[10]_i_10_n_6\,
      I2 => \ysum[-_n_0_1111111105]\,
      O => \yb[10]_i_5_n_0\
    );
\yb[10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \ysum[-_n_0_1111111107]\,
      I1 => \yb_reg[12]_i_5_n_7\,
      I2 => \ysum[-_n_0_1111111105]\,
      I3 => \ysum[-_n_0_1111111104]\,
      I4 => \yb_reg[12]_i_5_n_2\,
      I5 => \ysum[-_n_0_1111111106]\,
      O => \yb[10]_i_6_n_0\
    );
\yb[10]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \ysum[-_n_0_1111111108]\,
      I1 => \yb_reg[10]_i_10_n_4\,
      I2 => \ysum[-_n_0_1111111106]\,
      I3 => \ysum[-_n_0_1111111105]\,
      I4 => \yb_reg[12]_i_5_n_7\,
      I5 => \ysum[-_n_0_1111111107]\,
      O => \yb[10]_i_7_n_0\
    );
\yb[10]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \ysum[-_n_0_1111111104]\,
      I1 => \yb_reg[10]_i_10_n_5\,
      I2 => \ysum[-_n_0_1111111107]\,
      I3 => \ysum[-_n_0_1111111106]\,
      I4 => \yb_reg[10]_i_10_n_4\,
      I5 => \ysum[-_n_0_1111111108]\,
      O => \yb[10]_i_8_n_0\
    );
\yb[10]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \ysum[-_n_0_1111111105]\,
      I1 => \yb_reg[10]_i_10_n_6\,
      I2 => \ysum[-_n_0_1111111108]\,
      I3 => \ysum[-_n_0_1111111107]\,
      I4 => \yb_reg[10]_i_10_n_5\,
      I5 => \ysum[-_n_0_1111111104]\,
      O => \yb[10]_i_9_n_0\
    );
\yb[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \ysum[-_n_0_1111111104]\,
      I1 => \yb_reg[12]_i_5_n_2\,
      I2 => \ysum[-_n_0_1111111106]\,
      O => \yb[12]_i_2_n_0\
    );
\yb[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \ysum[-_n_0_1111111105]\,
      I1 => \ysum[-_n_0_1111111104]\,
      O => \yb[12]_i_3_n_0\
    );
\yb[12]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8E71"
    )
        port map (
      I0 => \ysum[-_n_0_1111111106]\,
      I1 => \yb_reg[12]_i_5_n_2\,
      I2 => \ysum[-_n_0_1111111104]\,
      I3 => \ysum[-_n_0_1111111105]\,
      O => \yb[12]_i_4_n_0\
    );
\yb[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ysum[-_n_0_1111111107]\,
      I1 => \ysum[-_n_0_1111111104]\,
      O => \yb[2]_i_2_n_0\
    );
\yb[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ysum[-_n_0_1111111108]\,
      I1 => \ysum[-_n_0_1111111105]\,
      O => \yb[2]_i_3_n_0\
    );
\yb[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ysum[-_n_0_1111111104]\,
      I1 => \ysum[-_n_0_1111111106]\,
      O => \yb[2]_i_4_n_0\
    );
\yb[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \ysum[-_n_0_1111111104]\,
      I1 => \yb_reg[10]_i_10_n_7\,
      I2 => \ysum[-_n_0_1111111106]\,
      O => \yb[6]_i_2_n_0\
    );
\yb[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \ysum[-_n_0_1111111104]\,
      I1 => \yb_reg[10]_i_10_n_7\,
      I2 => \ysum[-_n_0_1111111106]\,
      O => \yb[6]_i_3_n_0\
    );
\yb[6]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \yb_reg[2]_i_1_n_5\,
      I1 => \ysum[-_n_0_1111111106]\,
      O => \yb[6]_i_4_n_0\
    );
\yb[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \ysum[-_n_0_1111111106]\,
      I1 => \yb_reg[10]_i_10_n_7\,
      I2 => \ysum[-_n_0_1111111104]\,
      I3 => \ysum[-_n_0_1111111108]\,
      I4 => \yb_reg[10]_i_10_n_6\,
      I5 => \ysum[-_n_0_1111111105]\,
      O => \yb[6]_i_5_n_0\
    );
\yb[6]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69966969"
    )
        port map (
      I0 => \ysum[-_n_0_1111111104]\,
      I1 => \yb_reg[10]_i_10_n_7\,
      I2 => \ysum[-_n_0_1111111106]\,
      I3 => \ysum[-_n_0_1111111105]\,
      I4 => \yb_reg[2]_i_1_n_4\,
      O => \yb[6]_i_6_n_0\
    );
\yb[6]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \ysum[-_n_0_1111111106]\,
      I1 => \yb_reg[2]_i_1_n_5\,
      I2 => \yb_reg[2]_i_1_n_4\,
      I3 => \ysum[-_n_0_1111111105]\,
      O => \yb[6]_i_7_n_0\
    );
\yb[6]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ysum[-_n_0_1111111106]\,
      I1 => \yb_reg[2]_i_1_n_5\,
      O => \yb[6]_i_8_n_0\
    );
\yb_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \ysum[-_n_0_1111111106]\,
      Q => yb(0),
      R => '0'
    );
\yb_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yb0(10),
      Q => yb(10),
      R => '0'
    );
\yb_reg[10]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \yb_reg[6]_i_1_n_0\,
      CO(3) => \yb_reg[10]_i_1_n_0\,
      CO(2) => \yb_reg[10]_i_1_n_1\,
      CO(1) => \yb_reg[10]_i_1_n_2\,
      CO(0) => \yb_reg[10]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \yb[10]_i_2_n_0\,
      DI(2) => \yb[10]_i_3_n_0\,
      DI(1) => \yb[10]_i_4_n_0\,
      DI(0) => \yb[10]_i_5_n_0\,
      O(3 downto 0) => yb0(10 downto 7),
      S(3) => \yb[10]_i_6_n_0\,
      S(2) => \yb[10]_i_7_n_0\,
      S(1) => \yb[10]_i_8_n_0\,
      S(0) => \yb[10]_i_9_n_0\
    );
\yb_reg[10]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \yb_reg[2]_i_1_n_0\,
      CO(3) => \yb_reg[10]_i_10_n_0\,
      CO(2) => \yb_reg[10]_i_10_n_1\,
      CO(1) => \yb_reg[10]_i_10_n_2\,
      CO(0) => \yb_reg[10]_i_10_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \ysum[-_n_0_1111111104]\,
      DI(1) => \ysum[-_n_0_1111111105]\,
      DI(0) => \ysum[-_n_0_1111111106]\,
      O(3) => \yb_reg[10]_i_10_n_4\,
      O(2) => \yb_reg[10]_i_10_n_5\,
      O(1) => \yb_reg[10]_i_10_n_6\,
      O(0) => \yb_reg[10]_i_10_n_7\,
      S(3) => \ysum[-_n_0_1111111105]\,
      S(2) => \yb[10]_i_11_n_0\,
      S(1) => \yb[10]_i_12_n_0\,
      S(0) => \yb[10]_i_13_n_0\
    );
\yb_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yb0(11),
      Q => yb(11),
      R => '0'
    );
\yb_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yb0(12),
      Q => yb(12),
      R => '0'
    );
\yb_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \yb_reg[10]_i_1_n_0\,
      CO(3 downto 1) => \NLW_yb_reg[12]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \yb_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \yb[12]_i_2_n_0\,
      O(3 downto 2) => \NLW_yb_reg[12]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => yb0(12 downto 11),
      S(3 downto 2) => B"00",
      S(1) => \yb[12]_i_3_n_0\,
      S(0) => \yb[12]_i_4_n_0\
    );
\yb_reg[12]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \yb_reg[10]_i_10_n_0\,
      CO(3 downto 2) => \NLW_yb_reg[12]_i_5_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \yb_reg[12]_i_5_n_2\,
      CO(0) => \NLW_yb_reg[12]_i_5_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_yb_reg[12]_i_5_O_UNCONNECTED\(3 downto 1),
      O(0) => \yb_reg[12]_i_5_n_7\,
      S(3 downto 1) => B"001",
      S(0) => \ysum[-_n_0_1111111104]\
    );
\yb_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yb0(1),
      Q => yb(1),
      R => '0'
    );
\yb_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yb0(2),
      Q => yb(2),
      R => '0'
    );
\yb_reg[2]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \yb_reg[2]_i_1_n_0\,
      CO(2) => \yb_reg[2]_i_1_n_1\,
      CO(1) => \yb_reg[2]_i_1_n_2\,
      CO(0) => \yb_reg[2]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \ysum[-_n_0_1111111107]\,
      DI(2) => \ysum[-_n_0_1111111108]\,
      DI(1) => \ysum[-_n_0_1111111104]\,
      DI(0) => '0',
      O(3) => \yb_reg[2]_i_1_n_4\,
      O(2) => \yb_reg[2]_i_1_n_5\,
      O(1 downto 0) => yb0(2 downto 1),
      S(3) => \yb[2]_i_2_n_0\,
      S(2) => \yb[2]_i_3_n_0\,
      S(1) => \yb[2]_i_4_n_0\,
      S(0) => \ysum[-_n_0_1111111105]\
    );
\yb_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yb0(3),
      Q => yb(3),
      R => '0'
    );
\yb_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yb0(4),
      Q => yb(4),
      R => '0'
    );
\yb_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yb0(5),
      Q => yb(5),
      R => '0'
    );
\yb_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yb0(6),
      Q => yb(6),
      R => '0'
    );
\yb_reg[6]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \yb_reg[6]_i_1_n_0\,
      CO(2) => \yb_reg[6]_i_1_n_1\,
      CO(1) => \yb_reg[6]_i_1_n_2\,
      CO(0) => \yb_reg[6]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \yb[6]_i_2_n_0\,
      DI(2) => \yb[6]_i_3_n_0\,
      DI(1) => \yb[6]_i_4_n_0\,
      DI(0) => '0',
      O(3 downto 0) => yb0(6 downto 3),
      S(3) => \yb[6]_i_5_n_0\,
      S(2) => \yb[6]_i_6_n_0\,
      S(1) => \yb[6]_i_7_n_0\,
      S(0) => \yb[6]_i_8_n_0\
    );
\yb_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yb0(7),
      Q => yb(7),
      R => '0'
    );
\yb_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yb0(8),
      Q => yb(8),
      R => '0'
    );
\yb_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yb0(9),
      Q => yb(9),
      R => '0'
    );
\yg[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \ysum[-1111111106]__0_n_0\,
      I1 => \yg_reg[15]_i_3_n_7\,
      I2 => \ysum[-1111111109]__0_n_0\,
      O => \yg[10]_i_2_n_0\
    );
\yg[10]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \ysum[-1111111107]__0_n_0\,
      I1 => \yg_reg[6]_i_2_n_4\,
      I2 => \ysum[-1111111110]__0_n_0\,
      O => \yg[10]_i_3_n_0\
    );
\yg[10]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \ysum[-1111111110]__0_n_0\,
      I1 => \ysum[-1111111107]__0_n_0\,
      I2 => \yg_reg[6]_i_2_n_4\,
      O => \yg[10]_i_4_n_0\
    );
\yg[10]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \ysum[-1111111111]__0_n_0\,
      I1 => \yg_reg[15]_i_3_n_6\,
      I2 => \ysum[-1111111108]__0_n_0\,
      I3 => \yg[10]_i_2_n_0\,
      O => \yg[10]_i_5_n_0\
    );
\yg[10]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \ysum[-1111111106]__0_n_0\,
      I1 => \yg_reg[15]_i_3_n_7\,
      I2 => \ysum[-1111111109]__0_n_0\,
      I3 => \yg[10]_i_3_n_0\,
      O => \yg[10]_i_6_n_0\
    );
\yg[10]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => \ysum[-1111111107]__0_n_0\,
      I1 => \yg_reg[6]_i_2_n_4\,
      I2 => \ysum[-1111111110]__0_n_0\,
      I3 => \yg_reg[6]_i_2_n_5\,
      I4 => \ysum[-1111111108]__0_n_0\,
      O => \yg[10]_i_7_n_0\
    );
\yg[10]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \ysum[-1111111108]__0_n_0\,
      I1 => \yg_reg[6]_i_2_n_5\,
      I2 => \ysum[-1111111111]__0_n_0\,
      O => \yg[10]_i_8_n_0\
    );
\yg[14]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ysum[-1111111111]__0_n_0\,
      I1 => \yg_reg[15]_i_3_n_1\,
      O => \yg[14]_i_2_n_0\
    );
\yg[14]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ysum[-1111111106]__0_n_0\,
      I1 => \yg_reg[15]_i_3_n_1\,
      O => \yg[14]_i_3_n_0\
    );
\yg[14]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \yg_reg[15]_i_3_n_1\,
      I1 => \ysum[-1111111110]__0_n_0\,
      I2 => \ysum[-1111111107]__0_n_0\,
      O => \yg[14]_i_4_n_0\
    );
\yg[14]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \ysum[-1111111111]__0_n_0\,
      I1 => \yg_reg[15]_i_3_n_6\,
      I2 => \ysum[-1111111108]__0_n_0\,
      O => \yg[14]_i_5_n_0\
    );
\yg[14]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \ysum[-1111111111]__0_n_0\,
      I1 => \yg_reg[15]_i_3_n_1\,
      I2 => \ysum[-1111111110]__0_n_0\,
      O => \yg[14]_i_6_n_0\
    );
\yg[14]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \ysum[-1111111106]__0_n_0\,
      I1 => \yg_reg[15]_i_3_n_1\,
      I2 => \ysum[-1111111111]__0_n_0\,
      O => \yg[14]_i_7_n_0\
    );
\yg[14]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7E81"
    )
        port map (
      I0 => \ysum[-1111111107]__0_n_0\,
      I1 => \ysum[-1111111110]__0_n_0\,
      I2 => \yg_reg[15]_i_3_n_1\,
      I3 => \ysum[-1111111106]__0_n_0\,
      O => \yg[14]_i_8_n_0\
    );
\yg[14]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \yg[14]_i_5_n_0\,
      I1 => \yg_reg[15]_i_3_n_1\,
      I2 => \ysum[-1111111110]__0_n_0\,
      I3 => \ysum[-1111111107]__0_n_0\,
      O => \yg[14]_i_9_n_0\
    );
\yg[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \ysum[-1111111110]__0_n_0\,
      I1 => \yg_reg[15]_i_3_n_1\,
      O => \yg[15]_i_2_n_0\
    );
\yg[15]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \ysum[-1111111110]__0_n_0\,
      O => \yg[15]_i_4_n_0\
    );
\yg[15]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \ysum[-1111111111]__0_n_0\,
      O => \yg[15]_i_5_n_0\
    );
\yg[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \ysum[-1111111110]__0_n_0\,
      I1 => \ysum[-1111111108]__0_n_0\,
      O => \yg[2]_i_2_n_0\
    );
\yg[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \ysum[-1111111111]__0_n_0\,
      I1 => \ysum[-1111111109]__0_n_0\,
      O => \yg[2]_i_3_n_0\
    );
\yg[2]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \ysum[-1111111110]__0_n_0\,
      O => \yg[2]_i_4_n_0\
    );
\yg[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \yg_reg[6]_i_2_n_6\,
      I1 => \ysum[-1111111109]__0_n_0\,
      O => \yg[6]_i_3_n_0\
    );
\yg[6]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \yg_reg[6]_i_2_n_7\,
      I1 => \ysum[-1111111110]__0_n_0\,
      O => \yg[6]_i_4_n_0\
    );
\yg[6]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \yg_reg[2]_i_1_n_4\,
      I1 => \ysum[-1111111111]__0_n_0\,
      O => \yg[6]_i_5_n_0\
    );
\yg[6]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \ysum[-1111111106]__0_n_0\,
      I1 => \ysum[-1111111110]__0_n_0\,
      O => \yg[6]_i_6_n_0\
    );
\yg[6]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \ysum[-1111111107]__0_n_0\,
      I1 => \ysum[-1111111111]__0_n_0\,
      O => \yg[6]_i_7_n_0\
    );
\yg[6]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \ysum[-1111111108]__0_n_0\,
      I1 => \ysum[-1111111106]__0_n_0\,
      O => \yg[6]_i_8_n_0\
    );
\yg[6]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \ysum[-1111111109]__0_n_0\,
      I1 => \ysum[-1111111107]__0_n_0\,
      O => \yg[6]_i_9_n_0\
    );
\yg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yg0(10),
      Q => yg(10),
      R => '0'
    );
\yg_reg[10]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \yg_reg[6]_i_1_n_0\,
      CO(3) => \yg_reg[10]_i_1_n_0\,
      CO(2) => \yg_reg[10]_i_1_n_1\,
      CO(1) => \yg_reg[10]_i_1_n_2\,
      CO(0) => \yg_reg[10]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \yg[10]_i_2_n_0\,
      DI(2) => \yg[10]_i_3_n_0\,
      DI(1) => \yg[10]_i_4_n_0\,
      DI(0) => \ysum[-1111111111]__0_n_0\,
      O(3 downto 0) => yg0(10 downto 7),
      S(3) => \yg[10]_i_5_n_0\,
      S(2) => \yg[10]_i_6_n_0\,
      S(1) => \yg[10]_i_7_n_0\,
      S(0) => \yg[10]_i_8_n_0\
    );
\yg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yg0(11),
      Q => yg(11),
      R => '0'
    );
\yg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yg0(12),
      Q => yg(12),
      R => '0'
    );
\yg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yg0(13),
      Q => yg(13),
      R => '0'
    );
\yg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yg0(14),
      Q => yg(14),
      R => '0'
    );
\yg_reg[14]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \yg_reg[10]_i_1_n_0\,
      CO(3) => \yg_reg[14]_i_1_n_0\,
      CO(2) => \yg_reg[14]_i_1_n_1\,
      CO(1) => \yg_reg[14]_i_1_n_2\,
      CO(0) => \yg_reg[14]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \yg[14]_i_2_n_0\,
      DI(2) => \yg[14]_i_3_n_0\,
      DI(1) => \yg[14]_i_4_n_0\,
      DI(0) => \yg[14]_i_5_n_0\,
      O(3 downto 0) => yg0(14 downto 11),
      S(3) => \yg[14]_i_6_n_0\,
      S(2) => \yg[14]_i_7_n_0\,
      S(1) => \yg[14]_i_8_n_0\,
      S(0) => \yg[14]_i_9_n_0\
    );
\yg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yg0(15),
      Q => yg(15),
      R => '0'
    );
\yg_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \yg_reg[14]_i_1_n_0\,
      CO(3 downto 0) => \NLW_yg_reg[15]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_yg_reg[15]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => yg0(15),
      S(3 downto 1) => B"000",
      S(0) => \yg[15]_i_2_n_0\
    );
\yg_reg[15]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \yg_reg[6]_i_2_n_0\,
      CO(3) => \NLW_yg_reg[15]_i_3_CO_UNCONNECTED\(3),
      CO(2) => \yg_reg[15]_i_3_n_1\,
      CO(1) => \NLW_yg_reg[15]_i_3_CO_UNCONNECTED\(1),
      CO(0) => \yg_reg[15]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \ysum[-1111111110]__0_n_0\,
      DI(0) => \ysum[-1111111111]__0_n_0\,
      O(3 downto 2) => \NLW_yg_reg[15]_i_3_O_UNCONNECTED\(3 downto 2),
      O(1) => \yg_reg[15]_i_3_n_6\,
      O(0) => \yg_reg[15]_i_3_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \yg[15]_i_4_n_0\,
      S(0) => \yg[15]_i_5_n_0\
    );
\yg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yg0(1),
      Q => yg(1),
      R => '0'
    );
\yg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yg0(2),
      Q => yg(2),
      R => '0'
    );
\yg_reg[2]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \yg_reg[2]_i_1_n_0\,
      CO(2) => \yg_reg[2]_i_1_n_1\,
      CO(1) => \yg_reg[2]_i_1_n_2\,
      CO(0) => \yg_reg[2]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \ysum[-1111111110]__0_n_0\,
      DI(2) => \ysum[-1111111111]__0_n_0\,
      DI(1 downto 0) => B"01",
      O(3) => \yg_reg[2]_i_1_n_4\,
      O(2) => \yg_reg[2]_i_1_n_5\,
      O(1 downto 0) => yg0(2 downto 1),
      S(3) => \yg[2]_i_2_n_0\,
      S(2) => \yg[2]_i_3_n_0\,
      S(1) => \yg[2]_i_4_n_0\,
      S(0) => \ysum[-1111111111]__0_n_0\
    );
\yg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yg0(3),
      Q => yg(3),
      R => '0'
    );
\yg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yg0(4),
      Q => yg(4),
      R => '0'
    );
\yg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yg0(5),
      Q => yg(5),
      R => '0'
    );
\yg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yg0(6),
      Q => yg(6),
      R => '0'
    );
\yg_reg[6]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \yg_reg[6]_i_1_n_0\,
      CO(2) => \yg_reg[6]_i_1_n_1\,
      CO(1) => \yg_reg[6]_i_1_n_2\,
      CO(0) => \yg_reg[6]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \yg_reg[6]_i_2_n_6\,
      DI(2) => \yg_reg[6]_i_2_n_7\,
      DI(1) => \yg_reg[2]_i_1_n_4\,
      DI(0) => '0',
      O(3 downto 0) => yg0(6 downto 3),
      S(3) => \yg[6]_i_3_n_0\,
      S(2) => \yg[6]_i_4_n_0\,
      S(1) => \yg[6]_i_5_n_0\,
      S(0) => \yg_reg[2]_i_1_n_5\
    );
\yg_reg[6]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \yg_reg[2]_i_1_n_0\,
      CO(3) => \yg_reg[6]_i_2_n_0\,
      CO(2) => \yg_reg[6]_i_2_n_1\,
      CO(1) => \yg_reg[6]_i_2_n_2\,
      CO(0) => \yg_reg[6]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \ysum[-1111111106]__0_n_0\,
      DI(2) => \ysum[-1111111107]__0_n_0\,
      DI(1) => \ysum[-1111111108]__0_n_0\,
      DI(0) => \ysum[-1111111109]__0_n_0\,
      O(3) => \yg_reg[6]_i_2_n_4\,
      O(2) => \yg_reg[6]_i_2_n_5\,
      O(1) => \yg_reg[6]_i_2_n_6\,
      O(0) => \yg_reg[6]_i_2_n_7\,
      S(3) => \yg[6]_i_6_n_0\,
      S(2) => \yg[6]_i_7_n_0\,
      S(1) => \yg[6]_i_8_n_0\,
      S(0) => \yg[6]_i_9_n_0\
    );
\yg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yg0(7),
      Q => yg(7),
      R => '0'
    );
\yg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yg0(8),
      Q => yg(8),
      R => '0'
    );
\yg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yg0(9),
      Q => yg(9),
      R => '0'
    );
\yr[-1111111104]__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000400"
    )
        port map (
      I0 => \^row_reg[8]_0\,
      I1 => s0_href,
      I2 => \yr[-1111111104]__0_i_2_n_0\,
      I3 => second_reg_n_0,
      I4 => \yr[-1111111104]__0_i_3_n_0\,
      I5 => \ysum[-1111111111]__0_0\,
      O => p_rgb(0)
    );
\yr[-1111111104]__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000000"
    )
        port map (
      I0 => \px_reg_n_0_[5]\,
      I1 => \px_reg_n_0_[6]\,
      I2 => \px_reg_n_0_[4]\,
      I3 => \px_reg_n_0_[8]\,
      I4 => \px_reg_n_0_[7]\,
      O => \yr[-1111111104]__0_i_2_n_0\
    );
\yr[-1111111104]__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \px_reg_n_0_[9]\,
      I1 => \px_reg_n_0_[10]\,
      O => \yr[-1111111104]__0_i_3_n_0\
    );
\yr[-1111111104]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040440000"
    )
        port map (
      I0 => \^row_reg[8]_0\,
      I1 => s0_href,
      I2 => \^vsync_d\,
      I3 => s0_vsync,
      I4 => href_d,
      I5 => second_reg_n_0,
      O => hi(0)
    );
\yr[13]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \yr_reg[-1111111105]__0_n_0\,
      I1 => \yr_reg[13]_i_5_n_7\,
      I2 => \yr_reg[-1111111108]__0_n_0\,
      O => \yr[13]_i_2_n_0\
    );
\yr[13]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"17E8"
    )
        port map (
      I0 => \yr_reg[-1111111107]__0_n_0\,
      I1 => \yr_reg[13]_i_5_n_2\,
      I2 => \yr_reg[-1111111104]__0_n_0\,
      I3 => \yr_reg[-1111111106]__0_n_0\,
      O => \yr[13]_i_3_n_0\
    );
\yr[13]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \yr[13]_i_2_n_0\,
      I1 => \yr_reg[13]_i_5_n_2\,
      I2 => \yr_reg[-1111111104]__0_n_0\,
      I3 => \yr_reg[-1111111107]__0_n_0\,
      O => \yr[13]_i_4_n_0\
    );
\yr[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \yr_reg[-1111111107]__0_n_0\,
      I1 => \yr_reg[-1111111104]__0_n_0\,
      O => \yr[1]_i_2_n_0\
    );
\yr[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \yr_reg[-1111111108]__0_n_0\,
      I1 => \yr_reg[-1111111105]__0_n_0\,
      O => \yr[1]_i_3_n_0\
    );
\yr[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \yr_reg[-1111111104]__0_n_0\,
      I1 => \yr_reg[-1111111106]__0_n_0\,
      O => \yr[1]_i_4_n_0\
    );
\yr[5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \yr_reg[5]_i_2_n_7\,
      I1 => \yr_reg[-1111111104]__0_n_0\,
      O => \yr[5]_i_3_n_0\
    );
\yr[5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \yr_reg[1]_i_1_n_4\,
      I1 => \yr_reg[-1111111105]__0_n_0\,
      O => \yr[5]_i_4_n_0\
    );
\yr[5]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \yr_reg[1]_i_1_n_5\,
      I1 => \yr_reg[-1111111106]__0_n_0\,
      O => \yr[5]_i_5_n_0\
    );
\yr[5]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \yr_reg[-1111111104]__0_n_0\,
      I1 => \yr_reg[-1111111106]__0_n_0\,
      O => \yr[5]_i_6_n_0\
    );
\yr[5]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \yr_reg[-1111111105]__0_n_0\,
      I1 => \yr_reg[-1111111107]__0_n_0\,
      O => \yr[5]_i_7_n_0\
    );
\yr[5]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \yr_reg[-1111111106]__0_n_0\,
      I1 => \yr_reg[-1111111108]__0_n_0\,
      O => \yr[5]_i_8_n_0\
    );
\yr[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \yr_reg[-1111111106]__0_n_0\,
      I1 => \yr_reg[5]_i_2_n_4\,
      I2 => \yr_reg[-1111111104]__0_n_0\,
      O => \yr[9]_i_2_n_0\
    );
\yr[9]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \yr_reg[-1111111107]__0_n_0\,
      I1 => \yr_reg[5]_i_2_n_5\,
      I2 => \yr_reg[-1111111105]__0_n_0\,
      O => \yr[9]_i_3_n_0\
    );
\yr[9]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \yr_reg[-1111111105]__0_n_0\,
      I1 => \yr_reg[-1111111107]__0_n_0\,
      I2 => \yr_reg[5]_i_2_n_5\,
      O => \yr[9]_i_4_n_0\
    );
\yr[9]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \yr_reg[-1111111105]__0_n_0\,
      I1 => \yr_reg[13]_i_5_n_7\,
      I2 => \yr_reg[-1111111108]__0_n_0\,
      I3 => \yr[9]_i_2_n_0\,
      O => \yr[9]_i_5_n_0\
    );
\yr[9]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \yr_reg[-1111111106]__0_n_0\,
      I1 => \yr_reg[5]_i_2_n_4\,
      I2 => \yr_reg[-1111111104]__0_n_0\,
      I3 => \yr[9]_i_3_n_0\,
      O => \yr[9]_i_6_n_0\
    );
\yr[9]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => \yr_reg[-1111111107]__0_n_0\,
      I1 => \yr_reg[5]_i_2_n_5\,
      I2 => \yr_reg[-1111111105]__0_n_0\,
      I3 => \yr_reg[5]_i_2_n_6\,
      I4 => \yr_reg[-1111111108]__0_n_0\,
      O => \yr[9]_i_7_n_0\
    );
\yr[9]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \yr_reg[-1111111108]__0_n_0\,
      I1 => \yr_reg[5]_i_2_n_6\,
      I2 => \yr_reg[-1111111106]__0_n_0\,
      O => \yr[9]_i_8_n_0\
    );
\yr_reg[-1111111104]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => hi(0),
      D => \yr_reg[-1111111104]_0\(7),
      Q => yr_reg(7),
      R => '0'
    );
\yr_reg[-1111111104]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_rgb(0),
      D => yr_reg(7),
      Q => \yr_reg[-1111111104]__0_n_0\,
      R => '0'
    );
\yr_reg[-1111111105]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => hi(0),
      D => \yr_reg[-1111111104]_0\(6),
      Q => yr_reg(6),
      R => '0'
    );
\yr_reg[-1111111105]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_rgb(0),
      D => yr_reg(6),
      Q => \yr_reg[-1111111105]__0_n_0\,
      R => '0'
    );
\yr_reg[-1111111106]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => hi(0),
      D => \yr_reg[-1111111104]_0\(5),
      Q => yr_reg(5),
      R => '0'
    );
\yr_reg[-1111111106]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_rgb(0),
      D => yr_reg(5),
      Q => \yr_reg[-1111111106]__0_n_0\,
      R => '0'
    );
\yr_reg[-1111111107]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => hi(0),
      D => \yr_reg[-1111111104]_0\(4),
      Q => yr_reg(4),
      R => '0'
    );
\yr_reg[-1111111107]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_rgb(0),
      D => yr_reg(4),
      Q => \yr_reg[-1111111107]__0_n_0\,
      R => '0'
    );
\yr_reg[-1111111108]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => hi(0),
      D => \yr_reg[-1111111104]_0\(3),
      Q => yr_reg(3),
      R => '0'
    );
\yr_reg[-1111111108]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_rgb(0),
      D => yr_reg(3),
      Q => \yr_reg[-1111111108]__0_n_0\,
      R => '0'
    );
\yr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \yr_reg[-1111111106]__0_n_0\,
      Q => yr(0),
      R => '0'
    );
\yr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yr0(10),
      Q => yr(10),
      R => '0'
    );
\yr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yr0(11),
      Q => yr(11),
      R => '0'
    );
\yr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yr0(12),
      Q => yr(12),
      R => '0'
    );
\yr_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yr0(13),
      Q => yr(13),
      R => '0'
    );
\yr_reg[13]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \yr_reg[9]_i_1_n_0\,
      CO(3) => \yr_reg[13]_i_1_n_0\,
      CO(2) => \yr_reg[13]_i_1_n_1\,
      CO(1) => \yr_reg[13]_i_1_n_2\,
      CO(0) => \yr_reg[13]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \yr_reg[-1111111106]__0_n_0\,
      DI(0) => \yr[13]_i_2_n_0\,
      O(3 downto 0) => yr0(13 downto 10),
      S(3) => \yr_reg[-1111111104]__0_n_0\,
      S(2) => \yr_reg[-1111111105]__0_n_0\,
      S(1) => \yr[13]_i_3_n_0\,
      S(0) => \yr[13]_i_4_n_0\
    );
\yr_reg[13]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \yr_reg[5]_i_2_n_0\,
      CO(3 downto 2) => \NLW_yr_reg[13]_i_5_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \yr_reg[13]_i_5_n_2\,
      CO(0) => \NLW_yr_reg[13]_i_5_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_yr_reg[13]_i_5_O_UNCONNECTED\(3 downto 1),
      O(0) => \yr_reg[13]_i_5_n_7\,
      S(3 downto 1) => B"001",
      S(0) => \yr_reg[-1111111104]__0_n_0\
    );
\yr_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yr0(14),
      Q => yr(14),
      R => '0'
    );
\yr_reg[14]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \yr_reg[13]_i_1_n_0\,
      CO(3 downto 1) => \NLW_yr_reg[14]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => yr0(14),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_yr_reg[14]_i_1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\yr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yr0(1),
      Q => yr(1),
      R => '0'
    );
\yr_reg[1]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \yr_reg[1]_i_1_n_0\,
      CO(2) => \yr_reg[1]_i_1_n_1\,
      CO(1) => \yr_reg[1]_i_1_n_2\,
      CO(0) => \yr_reg[1]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \yr_reg[-1111111107]__0_n_0\,
      DI(2) => \yr_reg[-1111111108]__0_n_0\,
      DI(1) => \yr_reg[-1111111104]__0_n_0\,
      DI(0) => '0',
      O(3) => \yr_reg[1]_i_1_n_4\,
      O(2) => \yr_reg[1]_i_1_n_5\,
      O(1) => \yr_reg[1]_i_1_n_6\,
      O(0) => yr0(1),
      S(3) => \yr[1]_i_2_n_0\,
      S(2) => \yr[1]_i_3_n_0\,
      S(1) => \yr[1]_i_4_n_0\,
      S(0) => \yr_reg[-1111111105]__0_n_0\
    );
\yr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yr0(2),
      Q => yr(2),
      R => '0'
    );
\yr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yr0(3),
      Q => yr(3),
      R => '0'
    );
\yr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yr0(4),
      Q => yr(4),
      R => '0'
    );
\yr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yr0(5),
      Q => yr(5),
      R => '0'
    );
\yr_reg[5]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \yr_reg[5]_i_1_n_0\,
      CO(2) => \yr_reg[5]_i_1_n_1\,
      CO(1) => \yr_reg[5]_i_1_n_2\,
      CO(0) => \yr_reg[5]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \yr_reg[5]_i_2_n_7\,
      DI(2) => \yr_reg[1]_i_1_n_4\,
      DI(1) => \yr_reg[1]_i_1_n_5\,
      DI(0) => '0',
      O(3 downto 0) => yr0(5 downto 2),
      S(3) => \yr[5]_i_3_n_0\,
      S(2) => \yr[5]_i_4_n_0\,
      S(1) => \yr[5]_i_5_n_0\,
      S(0) => \yr_reg[1]_i_1_n_6\
    );
\yr_reg[5]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \yr_reg[1]_i_1_n_0\,
      CO(3) => \yr_reg[5]_i_2_n_0\,
      CO(2) => \yr_reg[5]_i_2_n_1\,
      CO(1) => \yr_reg[5]_i_2_n_2\,
      CO(0) => \yr_reg[5]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \yr_reg[-1111111104]__0_n_0\,
      DI(1) => \yr_reg[-1111111105]__0_n_0\,
      DI(0) => \yr_reg[-1111111106]__0_n_0\,
      O(3) => \yr_reg[5]_i_2_n_4\,
      O(2) => \yr_reg[5]_i_2_n_5\,
      O(1) => \yr_reg[5]_i_2_n_6\,
      O(0) => \yr_reg[5]_i_2_n_7\,
      S(3) => \yr_reg[-1111111105]__0_n_0\,
      S(2) => \yr[5]_i_6_n_0\,
      S(1) => \yr[5]_i_7_n_0\,
      S(0) => \yr[5]_i_8_n_0\
    );
\yr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yr0(6),
      Q => yr(6),
      R => '0'
    );
\yr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yr0(7),
      Q => yr(7),
      R => '0'
    );
\yr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yr0(8),
      Q => yr(8),
      R => '0'
    );
\yr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yr0(9),
      Q => yr(9),
      R => '0'
    );
\yr_reg[9]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \yr_reg[5]_i_1_n_0\,
      CO(3) => \yr_reg[9]_i_1_n_0\,
      CO(2) => \yr_reg[9]_i_1_n_1\,
      CO(1) => \yr_reg[9]_i_1_n_2\,
      CO(0) => \yr_reg[9]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \yr[9]_i_2_n_0\,
      DI(2) => \yr[9]_i_3_n_0\,
      DI(1) => \yr[9]_i_4_n_0\,
      DI(0) => \yr_reg[-1111111106]__0_n_0\,
      O(3 downto 0) => yr0(9 downto 6),
      S(3) => \yr[9]_i_5_n_0\,
      S(2) => \yr[9]_i_6_n_0\,
      S(1) => \yr[9]_i_7_n_0\,
      S(0) => \yr[9]_i_8_n_0\
    );
\ysum[-1111111104]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_rgb(0),
      D => \yr_reg[-1111111104]_0\(4),
      Q => \ysum[-_n_0_1111111104]\,
      R => '0'
    );
\ysum[-1111111105]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_rgb(0),
      D => \yr_reg[-1111111104]_0\(3),
      Q => \ysum[-_n_0_1111111105]\,
      R => '0'
    );
\ysum[-1111111106]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_rgb(0),
      D => \yr_reg[-1111111104]_0\(2),
      Q => \ysum[-_n_0_1111111106]\,
      R => '0'
    );
\ysum[-1111111106]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_rgb(0),
      D => \hi_reg_n_0_[0]\,
      Q => \ysum[-1111111106]__0_n_0\,
      R => '0'
    );
\ysum[-1111111107]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_rgb(0),
      D => \yr_reg[-1111111104]_0\(1),
      Q => \ysum[-_n_0_1111111107]\,
      R => '0'
    );
\ysum[-1111111107]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_rgb(0),
      D => \yr_reg[-1111111104]_0\(7),
      Q => \ysum[-1111111107]__0_n_0\,
      R => '0'
    );
\ysum[-1111111108]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_rgb(0),
      D => \yr_reg[-1111111104]_0\(0),
      Q => \ysum[-_n_0_1111111108]\,
      R => '0'
    );
\ysum[-1111111108]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_rgb(0),
      D => \yr_reg[-1111111104]_0\(6),
      Q => \ysum[-1111111108]__0_n_0\,
      R => '0'
    );
\ysum[-1111111109]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_rgb(0),
      D => \yr_reg[-1111111104]_0\(5),
      Q => \ysum[-1111111109]__0_n_0\,
      R => '0'
    );
\ysum[-1111111110]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_rgb(0),
      D => \hi_reg_n_0_[2]\,
      Q => \ysum[-1111111110]__0_n_0\,
      R => '0'
    );
\ysum[-1111111111]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_rgb(0),
      D => \hi_reg_n_0_[1]\,
      Q => \ysum[-1111111111]__0_n_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_cam_input_0_0_luma_tap_4 is
  port (
    t1_en : out STD_LOGIC;
    vsync_d : out STD_LOGIC;
    t1_sof : out STD_LOGIC;
    href_d_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \row_reg[8]_0\ : out STD_LOGIC;
    \wr_en_reg__0_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \wr_data_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    p_zero_reg_0 : in STD_LOGIC;
    vsync_d_reg_0 : in STD_LOGIC;
    wr_sof_reg_0 : in STD_LOGIC;
    href_d_reg_1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s1_stb : in STD_LOGIC;
    s1_href : in STD_LOGIC;
    fill_reg_0 : in STD_LOGIC;
    s1_vsync : in STD_LOGIC;
    href_d : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ysum[-1111111111]__0_0\ : in STD_LOGIC;
    \px_reg[10]_0\ : in STD_LOGIC;
    second : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \row_reg[8]_1\ : in STD_LOGIC;
    \yr_reg[-1111111104]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_cam_input_0_0_luma_tap_4 : entity is "luma_tap";
end system_cam_input_0_0_luma_tap_4;

architecture STRUCTURE of system_cam_input_0_0_luma_tap_4 is
  signal \C__0\ : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal \fill_i_1__0_n_0\ : STD_LOGIC;
  signal fill_reg_n_0 : STD_LOGIC;
  signal hi : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \hi_reg_n_0_[0]\ : STD_LOGIC;
  signal \hi_reg_n_0_[1]\ : STD_LOGIC;
  signal \hi_reg_n_0_[2]\ : STD_LOGIC;
  signal \^href_d_reg_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 1 to 1 );
  signal p_2_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_rgb : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_v1_out : STD_LOGIC;
  signal p_v2_out : STD_LOGIC;
  signal p_zero : STD_LOGIC;
  signal \p_zero_i_2__0_n_0\ : STD_LOGIC;
  signal \p_zero_i_3__0_n_0\ : STD_LOGIC;
  signal \px[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \px[10]_i_11__0_n_0\ : STD_LOGIC;
  signal \px[10]_i_12__0_n_0\ : STD_LOGIC;
  signal \px[10]_i_1__0_n_0\ : STD_LOGIC;
  signal \px[10]_i_2__0_n_0\ : STD_LOGIC;
  signal \px[10]_i_3__0_n_0\ : STD_LOGIC;
  signal \px[10]_i_4__0_n_0\ : STD_LOGIC;
  signal \px[10]_i_6__0_n_0\ : STD_LOGIC;
  signal \px[10]_i_7__0_n_0\ : STD_LOGIC;
  signal \px[10]_i_8__0_n_0\ : STD_LOGIC;
  signal \px[10]_i_9__0_n_0\ : STD_LOGIC;
  signal \px[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \px[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \px[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \px[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \px[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \px[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \px[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \px[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \px[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \px[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \px_reg_n_0_[0]\ : STD_LOGIC;
  signal \px_reg_n_0_[10]\ : STD_LOGIC;
  signal \px_reg_n_0_[1]\ : STD_LOGIC;
  signal \px_reg_n_0_[2]\ : STD_LOGIC;
  signal \px_reg_n_0_[3]\ : STD_LOGIC;
  signal \px_reg_n_0_[4]\ : STD_LOGIC;
  signal \px_reg_n_0_[5]\ : STD_LOGIC;
  signal \px_reg_n_0_[6]\ : STD_LOGIC;
  signal \px_reg_n_0_[7]\ : STD_LOGIC;
  signal \px_reg_n_0_[8]\ : STD_LOGIC;
  signal \px_reg_n_0_[9]\ : STD_LOGIC;
  signal q_v_reg_srl2_n_0 : STD_LOGIC;
  signal q_zero : STD_LOGIC;
  signal row : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \row[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \row[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \row[7]_i_4__0_n_0\ : STD_LOGIC;
  signal \row[7]_i_5__0_n_0\ : STD_LOGIC;
  signal \row[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \row[8]_i_2__0_n_0\ : STD_LOGIC;
  signal \^row_reg[8]_0\ : STD_LOGIC;
  signal \row_reg_n_0_[0]\ : STD_LOGIC;
  signal \row_reg_n_0_[1]\ : STD_LOGIC;
  signal \row_reg_n_0_[2]\ : STD_LOGIC;
  signal \row_reg_n_0_[3]\ : STD_LOGIC;
  signal \row_reg_n_0_[4]\ : STD_LOGIC;
  signal \row_reg_n_0_[5]\ : STD_LOGIC;
  signal \row_reg_n_0_[6]\ : STD_LOGIC;
  signal \row_reg_n_0_[7]\ : STD_LOGIC;
  signal \row_reg_n_0_[8]\ : STD_LOGIC;
  signal \second_i_1__0_n_0\ : STD_LOGIC;
  signal second_reg_n_0 : STD_LOGIC;
  signal \^t1_en\ : STD_LOGIC;
  signal \^t1_sof\ : STD_LOGIC;
  signal \^vsync_d\ : STD_LOGIC;
  signal \wr_data[0]_i_10_n_0\ : STD_LOGIC;
  signal \wr_data[0]_i_13_n_0\ : STD_LOGIC;
  signal \wr_data[0]_i_14_n_0\ : STD_LOGIC;
  signal \wr_data[0]_i_15_n_0\ : STD_LOGIC;
  signal \wr_data[0]_i_16_n_0\ : STD_LOGIC;
  signal \wr_data[0]_i_17_n_0\ : STD_LOGIC;
  signal \wr_data[0]_i_18_n_0\ : STD_LOGIC;
  signal \wr_data[0]_i_19_n_0\ : STD_LOGIC;
  signal \wr_data[0]_i_20_n_0\ : STD_LOGIC;
  signal \wr_data[0]_i_3_n_0\ : STD_LOGIC;
  signal \wr_data[0]_i_4_n_0\ : STD_LOGIC;
  signal \wr_data[0]_i_5_n_0\ : STD_LOGIC;
  signal \wr_data[0]_i_6_n_0\ : STD_LOGIC;
  signal \wr_data[0]_i_7_n_0\ : STD_LOGIC;
  signal \wr_data[0]_i_8_n_0\ : STD_LOGIC;
  signal \wr_data[0]_i_9_n_0\ : STD_LOGIC;
  signal \wr_data[4]_i_10_n_0\ : STD_LOGIC;
  signal \wr_data[4]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data[4]_i_3_n_0\ : STD_LOGIC;
  signal \wr_data[4]_i_4_n_0\ : STD_LOGIC;
  signal \wr_data[4]_i_5_n_0\ : STD_LOGIC;
  signal \wr_data[4]_i_7_n_0\ : STD_LOGIC;
  signal \wr_data[4]_i_8_n_0\ : STD_LOGIC;
  signal \wr_data[4]_i_9_n_0\ : STD_LOGIC;
  signal \wr_data[7]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data[7]_i_3_n_0\ : STD_LOGIC;
  signal \wr_data[7]_i_4_n_0\ : STD_LOGIC;
  signal \wr_data[7]_i_6_n_0\ : STD_LOGIC;
  signal \wr_data_reg[0]_i_11_n_0\ : STD_LOGIC;
  signal \wr_data_reg[0]_i_11_n_1\ : STD_LOGIC;
  signal \wr_data_reg[0]_i_11_n_2\ : STD_LOGIC;
  signal \wr_data_reg[0]_i_11_n_3\ : STD_LOGIC;
  signal \wr_data_reg[0]_i_12_n_0\ : STD_LOGIC;
  signal \wr_data_reg[0]_i_12_n_1\ : STD_LOGIC;
  signal \wr_data_reg[0]_i_12_n_2\ : STD_LOGIC;
  signal \wr_data_reg[0]_i_12_n_3\ : STD_LOGIC;
  signal \wr_data_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \wr_data_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \wr_data_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \wr_data_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \wr_data_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \wr_data_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \wr_data_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \wr_data_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \wr_data_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \wr_data_reg[4]_i_6_n_0\ : STD_LOGIC;
  signal \wr_data_reg[4]_i_6_n_1\ : STD_LOGIC;
  signal \wr_data_reg[4]_i_6_n_2\ : STD_LOGIC;
  signal \wr_data_reg[4]_i_6_n_3\ : STD_LOGIC;
  signal \wr_data_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \wr_data_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \wr_data_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \wr_data_reg[7]_i_5_n_2\ : STD_LOGIC;
  signal \wr_data_reg[7]_i_5_n_3\ : STD_LOGIC;
  signal yb : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal yb0 : STD_LOGIC_VECTOR ( 12 downto 1 );
  signal \yb[10]_i_11_n_0\ : STD_LOGIC;
  signal \yb[10]_i_12_n_0\ : STD_LOGIC;
  signal \yb[10]_i_13_n_0\ : STD_LOGIC;
  signal \yb[10]_i_2_n_0\ : STD_LOGIC;
  signal \yb[10]_i_3_n_0\ : STD_LOGIC;
  signal \yb[10]_i_4_n_0\ : STD_LOGIC;
  signal \yb[10]_i_5_n_0\ : STD_LOGIC;
  signal \yb[10]_i_6__0_n_0\ : STD_LOGIC;
  signal \yb[10]_i_7__0_n_0\ : STD_LOGIC;
  signal \yb[10]_i_8__0_n_0\ : STD_LOGIC;
  signal \yb[10]_i_9__0_n_0\ : STD_LOGIC;
  signal \yb[12]_i_2_n_0\ : STD_LOGIC;
  signal \yb[12]_i_3__0_n_0\ : STD_LOGIC;
  signal \yb[12]_i_4__0_n_0\ : STD_LOGIC;
  signal \yb[2]_i_2_n_0\ : STD_LOGIC;
  signal \yb[2]_i_3_n_0\ : STD_LOGIC;
  signal \yb[2]_i_4_n_0\ : STD_LOGIC;
  signal \yb[6]_i_2_n_0\ : STD_LOGIC;
  signal \yb[6]_i_3_n_0\ : STD_LOGIC;
  signal \yb[6]_i_4__0_n_0\ : STD_LOGIC;
  signal \yb[6]_i_5__0_n_0\ : STD_LOGIC;
  signal \yb[6]_i_6__0_n_0\ : STD_LOGIC;
  signal \yb[6]_i_7__0_n_0\ : STD_LOGIC;
  signal \yb[6]_i_8_n_0\ : STD_LOGIC;
  signal \yb_reg[10]_i_10_n_0\ : STD_LOGIC;
  signal \yb_reg[10]_i_10_n_1\ : STD_LOGIC;
  signal \yb_reg[10]_i_10_n_2\ : STD_LOGIC;
  signal \yb_reg[10]_i_10_n_3\ : STD_LOGIC;
  signal \yb_reg[10]_i_10_n_4\ : STD_LOGIC;
  signal \yb_reg[10]_i_10_n_5\ : STD_LOGIC;
  signal \yb_reg[10]_i_10_n_6\ : STD_LOGIC;
  signal \yb_reg[10]_i_10_n_7\ : STD_LOGIC;
  signal \yb_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \yb_reg[10]_i_1_n_1\ : STD_LOGIC;
  signal \yb_reg[10]_i_1_n_2\ : STD_LOGIC;
  signal \yb_reg[10]_i_1_n_3\ : STD_LOGIC;
  signal \yb_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \yb_reg[12]_i_5_n_2\ : STD_LOGIC;
  signal \yb_reg[12]_i_5_n_7\ : STD_LOGIC;
  signal \yb_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \yb_reg[2]_i_1_n_1\ : STD_LOGIC;
  signal \yb_reg[2]_i_1_n_2\ : STD_LOGIC;
  signal \yb_reg[2]_i_1_n_3\ : STD_LOGIC;
  signal \yb_reg[2]_i_1_n_4\ : STD_LOGIC;
  signal \yb_reg[2]_i_1_n_5\ : STD_LOGIC;
  signal \yb_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \yb_reg[6]_i_1_n_1\ : STD_LOGIC;
  signal \yb_reg[6]_i_1_n_2\ : STD_LOGIC;
  signal \yb_reg[6]_i_1_n_3\ : STD_LOGIC;
  signal yg : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal yg0 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \yg[10]_i_2_n_0\ : STD_LOGIC;
  signal \yg[10]_i_3_n_0\ : STD_LOGIC;
  signal \yg[10]_i_4_n_0\ : STD_LOGIC;
  signal \yg[10]_i_5_n_0\ : STD_LOGIC;
  signal \yg[10]_i_6_n_0\ : STD_LOGIC;
  signal \yg[10]_i_7_n_0\ : STD_LOGIC;
  signal \yg[10]_i_8_n_0\ : STD_LOGIC;
  signal \yg[14]_i_2__0_n_0\ : STD_LOGIC;
  signal \yg[14]_i_3__0_n_0\ : STD_LOGIC;
  signal \yg[14]_i_4_n_0\ : STD_LOGIC;
  signal \yg[14]_i_5_n_0\ : STD_LOGIC;
  signal \yg[14]_i_6_n_0\ : STD_LOGIC;
  signal \yg[14]_i_7_n_0\ : STD_LOGIC;
  signal \yg[14]_i_8_n_0\ : STD_LOGIC;
  signal \yg[14]_i_9_n_0\ : STD_LOGIC;
  signal \yg[15]_i_2__0_n_0\ : STD_LOGIC;
  signal \yg[15]_i_4_n_0\ : STD_LOGIC;
  signal \yg[15]_i_5_n_0\ : STD_LOGIC;
  signal \yg[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \yg[2]_i_3__0_n_0\ : STD_LOGIC;
  signal \yg[2]_i_4_n_0\ : STD_LOGIC;
  signal \yg[6]_i_3_n_0\ : STD_LOGIC;
  signal \yg[6]_i_4_n_0\ : STD_LOGIC;
  signal \yg[6]_i_5_n_0\ : STD_LOGIC;
  signal \yg[6]_i_6__0_n_0\ : STD_LOGIC;
  signal \yg[6]_i_7__0_n_0\ : STD_LOGIC;
  signal \yg[6]_i_8__0_n_0\ : STD_LOGIC;
  signal \yg[6]_i_9__0_n_0\ : STD_LOGIC;
  signal \yg_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \yg_reg[10]_i_1_n_1\ : STD_LOGIC;
  signal \yg_reg[10]_i_1_n_2\ : STD_LOGIC;
  signal \yg_reg[10]_i_1_n_3\ : STD_LOGIC;
  signal \yg_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \yg_reg[14]_i_1_n_1\ : STD_LOGIC;
  signal \yg_reg[14]_i_1_n_2\ : STD_LOGIC;
  signal \yg_reg[14]_i_1_n_3\ : STD_LOGIC;
  signal \yg_reg[15]_i_3_n_1\ : STD_LOGIC;
  signal \yg_reg[15]_i_3_n_3\ : STD_LOGIC;
  signal \yg_reg[15]_i_3_n_6\ : STD_LOGIC;
  signal \yg_reg[15]_i_3_n_7\ : STD_LOGIC;
  signal \yg_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \yg_reg[2]_i_1_n_1\ : STD_LOGIC;
  signal \yg_reg[2]_i_1_n_2\ : STD_LOGIC;
  signal \yg_reg[2]_i_1_n_3\ : STD_LOGIC;
  signal \yg_reg[2]_i_1_n_4\ : STD_LOGIC;
  signal \yg_reg[2]_i_1_n_5\ : STD_LOGIC;
  signal \yg_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \yg_reg[6]_i_1_n_1\ : STD_LOGIC;
  signal \yg_reg[6]_i_1_n_2\ : STD_LOGIC;
  signal \yg_reg[6]_i_1_n_3\ : STD_LOGIC;
  signal \yg_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \yg_reg[6]_i_2_n_1\ : STD_LOGIC;
  signal \yg_reg[6]_i_2_n_2\ : STD_LOGIC;
  signal \yg_reg[6]_i_2_n_3\ : STD_LOGIC;
  signal \yg_reg[6]_i_2_n_4\ : STD_LOGIC;
  signal \yg_reg[6]_i_2_n_5\ : STD_LOGIC;
  signal \yg_reg[6]_i_2_n_6\ : STD_LOGIC;
  signal \yg_reg[6]_i_2_n_7\ : STD_LOGIC;
  signal yr : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal yr0 : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal \yr[-1111111104]__0_i_2__0_n_0\ : STD_LOGIC;
  signal \yr[-1111111104]__0_i_3__0_n_0\ : STD_LOGIC;
  signal \yr[13]_i_2_n_0\ : STD_LOGIC;
  signal \yr[13]_i_3_n_0\ : STD_LOGIC;
  signal \yr[13]_i_4_n_0\ : STD_LOGIC;
  signal \yr[1]_i_2_n_0\ : STD_LOGIC;
  signal \yr[1]_i_3_n_0\ : STD_LOGIC;
  signal \yr[1]_i_4_n_0\ : STD_LOGIC;
  signal \yr[5]_i_3_n_0\ : STD_LOGIC;
  signal \yr[5]_i_4_n_0\ : STD_LOGIC;
  signal \yr[5]_i_5_n_0\ : STD_LOGIC;
  signal \yr[5]_i_6_n_0\ : STD_LOGIC;
  signal \yr[5]_i_7_n_0\ : STD_LOGIC;
  signal \yr[5]_i_8_n_0\ : STD_LOGIC;
  signal \yr[9]_i_2_n_0\ : STD_LOGIC;
  signal \yr[9]_i_3_n_0\ : STD_LOGIC;
  signal \yr[9]_i_4_n_0\ : STD_LOGIC;
  signal \yr[9]_i_5_n_0\ : STD_LOGIC;
  signal \yr[9]_i_6_n_0\ : STD_LOGIC;
  signal \yr[9]_i_7_n_0\ : STD_LOGIC;
  signal \yr[9]_i_8_n_0\ : STD_LOGIC;
  signal yr_reg : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \yr_reg[-1111111104]__0_n_0\ : STD_LOGIC;
  signal \yr_reg[-1111111105]__0_n_0\ : STD_LOGIC;
  signal \yr_reg[-1111111106]__0_n_0\ : STD_LOGIC;
  signal \yr_reg[-1111111107]__0_n_0\ : STD_LOGIC;
  signal \yr_reg[-1111111108]__0_n_0\ : STD_LOGIC;
  signal \yr_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \yr_reg[13]_i_1_n_1\ : STD_LOGIC;
  signal \yr_reg[13]_i_1_n_2\ : STD_LOGIC;
  signal \yr_reg[13]_i_1_n_3\ : STD_LOGIC;
  signal \yr_reg[13]_i_5_n_2\ : STD_LOGIC;
  signal \yr_reg[13]_i_5_n_7\ : STD_LOGIC;
  signal \yr_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \yr_reg[1]_i_1_n_1\ : STD_LOGIC;
  signal \yr_reg[1]_i_1_n_2\ : STD_LOGIC;
  signal \yr_reg[1]_i_1_n_3\ : STD_LOGIC;
  signal \yr_reg[1]_i_1_n_4\ : STD_LOGIC;
  signal \yr_reg[1]_i_1_n_5\ : STD_LOGIC;
  signal \yr_reg[1]_i_1_n_6\ : STD_LOGIC;
  signal \yr_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \yr_reg[5]_i_1_n_1\ : STD_LOGIC;
  signal \yr_reg[5]_i_1_n_2\ : STD_LOGIC;
  signal \yr_reg[5]_i_1_n_3\ : STD_LOGIC;
  signal \yr_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \yr_reg[5]_i_2_n_1\ : STD_LOGIC;
  signal \yr_reg[5]_i_2_n_2\ : STD_LOGIC;
  signal \yr_reg[5]_i_2_n_3\ : STD_LOGIC;
  signal \yr_reg[5]_i_2_n_4\ : STD_LOGIC;
  signal \yr_reg[5]_i_2_n_5\ : STD_LOGIC;
  signal \yr_reg[5]_i_2_n_6\ : STD_LOGIC;
  signal \yr_reg[5]_i_2_n_7\ : STD_LOGIC;
  signal \yr_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \yr_reg[9]_i_1_n_1\ : STD_LOGIC;
  signal \yr_reg[9]_i_1_n_2\ : STD_LOGIC;
  signal \yr_reg[9]_i_1_n_3\ : STD_LOGIC;
  signal ysum : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal \ysum[-1111111106]__0_n_0\ : STD_LOGIC;
  signal \ysum[-1111111107]__0_n_0\ : STD_LOGIC;
  signal \ysum[-1111111108]__0_n_0\ : STD_LOGIC;
  signal \ysum[-1111111109]__0_n_0\ : STD_LOGIC;
  signal \ysum[-1111111110]__0_n_0\ : STD_LOGIC;
  signal \ysum[-1111111111]__0_n_0\ : STD_LOGIC;
  signal \ysum[-_n_0_1111111104]\ : STD_LOGIC;
  signal \ysum[-_n_0_1111111105]\ : STD_LOGIC;
  signal \ysum[-_n_0_1111111106]\ : STD_LOGIC;
  signal \ysum[-_n_0_1111111107]\ : STD_LOGIC;
  signal \ysum[-_n_0_1111111108]\ : STD_LOGIC;
  signal \NLW_wr_data_reg[0]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_wr_data_reg[0]_i_12_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_wr_data_reg[0]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_wr_data_reg[7]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_wr_data_reg[7]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_wr_data_reg[7]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_wr_data_reg[7]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_yb_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_yb_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_yb_reg[12]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_yb_reg[12]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_yg_reg[15]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_yg_reg[15]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_yg_reg[15]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_yg_reg[15]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_yr_reg[13]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_yr_reg[13]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_yr_reg[14]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_yr_reg[14]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \p_zero_i_2__0\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \px[10]_i_11__0\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \px[10]_i_12__0\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \px[10]_i_3__0\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \px[2]_i_1__0\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \px[3]_i_1__0\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \px[4]_i_1__0\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \px[6]_i_2__0\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \px[7]_i_1__0\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \px[8]_i_1__0\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \px[9]_i_1__0\ : label is "soft_lutpair75";
  attribute srl_name : string;
  attribute srl_name of q_v_reg_srl2 : label is "\inst/u_luma1/q_v_reg_srl2 ";
  attribute SOFT_HLUTNM of \row[1]_i_1__0\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \row[2]_i_1__0\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \row[4]_i_1__0\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \row[6]_i_1__0\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \row[7]_i_3__0\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \row[7]_i_5__0\ : label is "soft_lutpair76";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \wr_data_reg[0]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \wr_data_reg[0]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \wr_data_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \wr_data_reg[7]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \yb_reg[10]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \yb_reg[10]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x5}}";
  attribute METHODOLOGY_DRC_VIOS of \yb_reg[10]_i_10\ : label is "{SYNTH-9 {cell *THIS*} {string 8x5}}";
  attribute ADDER_THRESHOLD of \yb_reg[12]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \yb_reg[12]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x5}}";
  attribute METHODOLOGY_DRC_VIOS of \yb_reg[12]_i_5\ : label is "{SYNTH-9 {cell *THIS*} {string 8x5}}";
  attribute METHODOLOGY_DRC_VIOS of \yb_reg[2]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x5}}";
  attribute ADDER_THRESHOLD of \yb_reg[6]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \yb_reg[6]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x5}}";
  attribute ADDER_THRESHOLD of \yg_reg[10]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \yg_reg[10]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x8}}";
  attribute ADDER_THRESHOLD of \yg_reg[14]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \yg_reg[14]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x8}}";
  attribute ADDER_THRESHOLD of \yg_reg[15]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \yg_reg[15]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x8}}";
  attribute METHODOLOGY_DRC_VIOS of \yg_reg[15]_i_3\ : label is "{SYNTH-9 {cell *THIS*} {string 8x8}}";
  attribute METHODOLOGY_DRC_VIOS of \yg_reg[2]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x8}}";
  attribute ADDER_THRESHOLD of \yg_reg[6]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \yg_reg[6]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x8}}";
  attribute METHODOLOGY_DRC_VIOS of \yg_reg[6]_i_2\ : label is "{SYNTH-9 {cell *THIS*} {string 8x8}}";
  attribute SOFT_HLUTNM of \yr[-1111111104]__0_i_2__0\ : label is "soft_lutpair74";
  attribute HLUTNM : string;
  attribute HLUTNM of \yr[13]_i_2\ : label is "lutpair5";
  attribute HLUTNM of \yr[9]_i_2\ : label is "lutpair4";
  attribute HLUTNM of \yr[9]_i_3\ : label is "lutpair3";
  attribute HLUTNM of \yr[9]_i_5\ : label is "lutpair5";
  attribute HLUTNM of \yr[9]_i_6\ : label is "lutpair4";
  attribute HLUTNM of \yr[9]_i_7\ : label is "lutpair3";
  attribute METHODOLOGY_DRC_VIOS of \yr_reg[13]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x7}}";
  attribute METHODOLOGY_DRC_VIOS of \yr_reg[13]_i_5\ : label is "{SYNTH-9 {cell *THIS*} {string 8x7}}";
  attribute METHODOLOGY_DRC_VIOS of \yr_reg[1]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x7}}";
  attribute METHODOLOGY_DRC_VIOS of \yr_reg[5]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x7}}";
  attribute METHODOLOGY_DRC_VIOS of \yr_reg[5]_i_2\ : label is "{SYNTH-9 {cell *THIS*} {string 8x7}}";
  attribute METHODOLOGY_DRC_VIOS of \yr_reg[9]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x7}}";
begin
  href_d_reg_0 <= \^href_d_reg_0\;
  \row_reg[8]_0\ <= \^row_reg[8]_0\;
  t1_en <= \^t1_en\;
  t1_sof <= \^t1_sof\;
  vsync_d <= \^vsync_d\;
\fill_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33010000"
    )
        port map (
      I0 => \row[7]_i_4__0_n_0\,
      I1 => \px[10]_i_7__0_n_0\,
      I2 => s1_href,
      I3 => fill_reg_n_0,
      I4 => fill_reg_0,
      O => \fill_i_1__0_n_0\
    );
fill_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \fill_i_1__0_n_0\,
      Q => fill_reg_n_0,
      R => '0'
    );
\hi_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => hi(0),
      D => \yr_reg[-1111111104]_0\(0),
      Q => \hi_reg_n_0_[0]\,
      R => '0'
    );
\hi_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => hi(0),
      D => \yr_reg[-1111111104]_0\(1),
      Q => \hi_reg_n_0_[1]\,
      R => '0'
    );
\hi_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => hi(0),
      D => \yr_reg[-1111111104]_0\(2),
      Q => \hi_reg_n_0_[2]\,
      R => '0'
    );
href_d_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => href_d_reg_1,
      Q => \^href_d_reg_0\,
      R => '0'
    );
\p_zero_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8AAAAAAAAAAAA"
    )
        port map (
      I0 => fill_reg_n_0,
      I1 => \px_reg_n_0_[5]\,
      I2 => \px_reg_n_0_[6]\,
      I3 => \px_reg_n_0_[3]\,
      I4 => \p_zero_i_2__0_n_0\,
      I5 => \p_zero_i_3__0_n_0\,
      O => p_v2_out
    );
\p_zero_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \px_reg_n_0_[7]\,
      I1 => \px_reg_n_0_[8]\,
      O => \p_zero_i_2__0_n_0\
    );
\p_zero_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \px_reg_n_0_[10]\,
      I1 => \px_reg_n_0_[9]\,
      I2 => \px_reg_n_0_[2]\,
      I3 => \px_reg_n_0_[4]\,
      I4 => \px_reg_n_0_[1]\,
      I5 => \px_reg_n_0_[0]\,
      O => \p_zero_i_3__0_n_0\
    );
p_zero_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_v2_out,
      Q => p_zero,
      R => p_zero_reg_0
    );
\pair_sum_reg_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^t1_sof\,
      I1 => \^t1_en\,
      I2 => Q(0),
      O => E(0)
    );
\prev[7]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^t1_en\,
      I1 => \^t1_sof\,
      O => \wr_en_reg__0_0\(0)
    );
\px[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \px_reg_n_0_[0]\,
      O => \px[0]_i_1__0_n_0\
    );
\px[10]_i_11__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFFFF"
    )
        port map (
      I0 => \px_reg_n_0_[5]\,
      I1 => \px_reg_n_0_[6]\,
      I2 => \px_reg_n_0_[3]\,
      I3 => \px_reg_n_0_[8]\,
      I4 => \px_reg_n_0_[7]\,
      O => \px[10]_i_11__0_n_0\
    );
\px[10]_i_12__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \px_reg_n_0_[5]\,
      I1 => \px_reg_n_0_[6]\,
      O => \px[10]_i_12__0_n_0\
    );
\px[10]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \px[10]_i_4__0_n_0\,
      O => \px[10]_i_1__0_n_0\
    );
\px[10]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00080008FFFF0008"
    )
        port map (
      I0 => s1_stb,
      I1 => s1_href,
      I2 => \^row_reg[8]_0\,
      I3 => \px[10]_i_6__0_n_0\,
      I4 => fill_reg_n_0,
      I5 => \px[10]_i_7__0_n_0\,
      O => \px[10]_i_2__0_n_0\
    );
\px[10]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA6AAA"
    )
        port map (
      I0 => \px_reg_n_0_[10]\,
      I1 => \px_reg_n_0_[9]\,
      I2 => \px_reg_n_0_[8]\,
      I3 => \px_reg_n_0_[7]\,
      I4 => \px[10]_i_8__0_n_0\,
      O => \px[10]_i_3__0_n_0\
    );
\px[10]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888880AAAAAAAA"
    )
        port map (
      I0 => fill_reg_0,
      I1 => \px[10]_i_9__0_n_0\,
      I2 => \^row_reg[8]_0\,
      I3 => \px_reg[10]_0\,
      I4 => \px[10]_i_11__0_n_0\,
      I5 => \p_zero_i_3__0_n_0\,
      O => \px[10]_i_4__0_n_0\
    );
\px[10]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA8A8A8A8A8"
    )
        port map (
      I0 => \row_reg_n_0_[8]\,
      I1 => \row_reg_n_0_[6]\,
      I2 => \row_reg_n_0_[7]\,
      I3 => \row_reg_n_0_[4]\,
      I4 => \row_reg_n_0_[3]\,
      I5 => \row_reg_n_0_[5]\,
      O => \^row_reg[8]_0\
    );
\px[10]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFE0FF"
    )
        port map (
      I0 => \px_reg_n_0_[4]\,
      I1 => \px[10]_i_12__0_n_0\,
      I2 => \p_zero_i_2__0_n_0\,
      I3 => second_reg_n_0,
      I4 => \px_reg_n_0_[9]\,
      I5 => \px_reg_n_0_[10]\,
      O => \px[10]_i_6__0_n_0\
    );
\px[10]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => \p_zero_i_3__0_n_0\,
      I1 => \px_reg_n_0_[7]\,
      I2 => \px_reg_n_0_[8]\,
      I3 => \px_reg_n_0_[3]\,
      I4 => \px_reg_n_0_[6]\,
      I5 => \px_reg_n_0_[5]\,
      O => \px[10]_i_7__0_n_0\
    );
\px[10]_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFF"
    )
        port map (
      I0 => \px_reg_n_0_[5]\,
      I1 => \px_reg_n_0_[3]\,
      I2 => \px[6]_i_2__0_n_0\,
      I3 => \px_reg_n_0_[2]\,
      I4 => \px_reg_n_0_[4]\,
      I5 => \px_reg_n_0_[6]\,
      O => \px[10]_i_8__0_n_0\
    );
\px[10]_i_9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFFFFFFFFFF"
    )
        port map (
      I0 => \px_reg_n_0_[6]\,
      I1 => \px_reg_n_0_[5]\,
      I2 => fill_reg_n_0,
      I3 => \px_reg_n_0_[3]\,
      I4 => \px_reg_n_0_[7]\,
      I5 => \px_reg_n_0_[8]\,
      O => \px[10]_i_9__0_n_0\
    );
\px[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFBAAAAAA08AAAA"
    )
        port map (
      I0 => p_1_in(1),
      I1 => second,
      I2 => \px[10]_i_6__0_n_0\,
      I3 => p_v2_out,
      I4 => \px[10]_i_4__0_n_0\,
      I5 => \px_reg_n_0_[1]\,
      O => \px[1]_i_1__0_n_0\
    );
\px[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000DF00DF000000"
    )
        port map (
      I0 => s1_stb,
      I1 => \^vsync_d\,
      I2 => s1_vsync,
      I3 => \out\(0),
      I4 => \px_reg_n_0_[1]\,
      I5 => \px_reg_n_0_[0]\,
      O => p_1_in(1)
    );
\px[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \px_reg_n_0_[2]\,
      I1 => \px_reg_n_0_[0]\,
      I2 => \px_reg_n_0_[1]\,
      O => \px[2]_i_1__0_n_0\
    );
\px[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \px_reg_n_0_[3]\,
      I1 => \px_reg_n_0_[2]\,
      I2 => \px_reg_n_0_[1]\,
      I3 => \px_reg_n_0_[0]\,
      O => \px[3]_i_1__0_n_0\
    );
\px[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \px_reg_n_0_[4]\,
      I1 => \px_reg_n_0_[3]\,
      I2 => \px_reg_n_0_[0]\,
      I3 => \px_reg_n_0_[1]\,
      I4 => \px_reg_n_0_[2]\,
      O => \px[4]_i_1__0_n_0\
    );
\px[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \px_reg_n_0_[5]\,
      I1 => \px_reg_n_0_[4]\,
      I2 => \px_reg_n_0_[2]\,
      I3 => \px_reg_n_0_[1]\,
      I4 => \px_reg_n_0_[0]\,
      I5 => \px_reg_n_0_[3]\,
      O => \px[5]_i_1__0_n_0\
    );
\px[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA6AAAAAAAAAAAAA"
    )
        port map (
      I0 => \px_reg_n_0_[6]\,
      I1 => \px_reg_n_0_[5]\,
      I2 => \px_reg_n_0_[3]\,
      I3 => \px[6]_i_2__0_n_0\,
      I4 => \px_reg_n_0_[2]\,
      I5 => \px_reg_n_0_[4]\,
      O => \px[6]_i_1__0_n_0\
    );
\px[6]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \px_reg_n_0_[1]\,
      I1 => \px_reg_n_0_[0]\,
      O => \px[6]_i_2__0_n_0\
    );
\px[7]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \px_reg_n_0_[7]\,
      I1 => \px[10]_i_8__0_n_0\,
      O => \px[7]_i_1__0_n_0\
    );
\px[8]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A6"
    )
        port map (
      I0 => \px_reg_n_0_[8]\,
      I1 => \px_reg_n_0_[7]\,
      I2 => \px[10]_i_8__0_n_0\,
      O => \px[8]_i_1__0_n_0\
    );
\px[9]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9AAA"
    )
        port map (
      I0 => \px_reg_n_0_[9]\,
      I1 => \px[10]_i_8__0_n_0\,
      I2 => \px_reg_n_0_[7]\,
      I3 => \px_reg_n_0_[8]\,
      O => \px[9]_i_1__0_n_0\
    );
\px_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \px[10]_i_2__0_n_0\,
      D => \px[0]_i_1__0_n_0\,
      Q => \px_reg_n_0_[0]\,
      R => \px[10]_i_1__0_n_0\
    );
\px_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \px[10]_i_2__0_n_0\,
      D => \px[10]_i_3__0_n_0\,
      Q => \px_reg_n_0_[10]\,
      R => \px[10]_i_1__0_n_0\
    );
\px_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \px[1]_i_1__0_n_0\,
      Q => \px_reg_n_0_[1]\,
      R => '0'
    );
\px_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \px[10]_i_2__0_n_0\,
      D => \px[2]_i_1__0_n_0\,
      Q => \px_reg_n_0_[2]\,
      R => \px[10]_i_1__0_n_0\
    );
\px_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \px[10]_i_2__0_n_0\,
      D => \px[3]_i_1__0_n_0\,
      Q => \px_reg_n_0_[3]\,
      R => \px[10]_i_1__0_n_0\
    );
\px_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \px[10]_i_2__0_n_0\,
      D => \px[4]_i_1__0_n_0\,
      Q => \px_reg_n_0_[4]\,
      R => \px[10]_i_1__0_n_0\
    );
\px_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \px[10]_i_2__0_n_0\,
      D => \px[5]_i_1__0_n_0\,
      Q => \px_reg_n_0_[5]\,
      R => \px[10]_i_1__0_n_0\
    );
\px_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \px[10]_i_2__0_n_0\,
      D => \px[6]_i_1__0_n_0\,
      Q => \px_reg_n_0_[6]\,
      R => \px[10]_i_1__0_n_0\
    );
\px_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \px[10]_i_2__0_n_0\,
      D => \px[7]_i_1__0_n_0\,
      Q => \px_reg_n_0_[7]\,
      R => \px[10]_i_1__0_n_0\
    );
\px_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \px[10]_i_2__0_n_0\,
      D => \px[8]_i_1__0_n_0\,
      Q => \px_reg_n_0_[8]\,
      R => \px[10]_i_1__0_n_0\
    );
\px_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \px[10]_i_2__0_n_0\,
      D => \px[9]_i_1__0_n_0\,
      Q => \px_reg_n_0_[9]\,
      R => \px[10]_i_1__0_n_0\
    );
q_v_reg_srl2: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => p_v1_out,
      Q => q_v_reg_srl2_n_0
    );
\q_v_reg_srl2_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAEA"
    )
        port map (
      I0 => p_rgb(0),
      I1 => \out\(0),
      I2 => fill_reg_n_0,
      I3 => \px[10]_i_7__0_n_0\,
      O => p_v1_out
    );
q_zero_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_zero,
      Q => q_zero,
      R => '0'
    );
\row[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \row_reg_n_0_[0]\,
      O => p_2_in(0)
    );
\row[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \row_reg_n_0_[0]\,
      I1 => \row_reg_n_0_[1]\,
      O => p_2_in(1)
    );
\row[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \row_reg_n_0_[2]\,
      I1 => \row_reg_n_0_[0]\,
      I2 => \row_reg_n_0_[1]\,
      O => p_2_in(2)
    );
\row[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF007F00000080"
    )
        port map (
      I0 => \row_reg_n_0_[2]\,
      I1 => \row_reg_n_0_[0]\,
      I2 => \row_reg_n_0_[1]\,
      I3 => \row_reg[8]_1\,
      I4 => \row[7]_i_4__0_n_0\,
      I5 => \row_reg_n_0_[3]\,
      O => \row[3]_i_1__0_n_0\
    );
\row[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \row_reg_n_0_[4]\,
      I1 => \row_reg_n_0_[2]\,
      I2 => \row_reg_n_0_[0]\,
      I3 => \row_reg_n_0_[1]\,
      I4 => \row_reg_n_0_[3]\,
      O => p_2_in(4)
    );
\row[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3FFA2AA00005155"
    )
        port map (
      I0 => \row[7]_i_5__0_n_0\,
      I1 => s1_vsync,
      I2 => \^vsync_d\,
      I3 => s1_stb,
      I4 => \row[7]_i_4__0_n_0\,
      I5 => \row_reg_n_0_[5]\,
      O => \row[5]_i_1__0_n_0\
    );
\row[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \row_reg_n_0_[6]\,
      I1 => \row[7]_i_5__0_n_0\,
      I2 => \row_reg_n_0_[5]\,
      O => p_2_in(6)
    );
\row[7]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \row[7]_i_4__0_n_0\,
      O => row(0)
    );
\row[7]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => \row_reg_n_0_[7]\,
      I1 => \row_reg_n_0_[5]\,
      I2 => \row[7]_i_5__0_n_0\,
      I3 => \row_reg_n_0_[6]\,
      O => p_2_in(7)
    );
\row[7]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => \^row_reg[8]_0\,
      I1 => \^href_d_reg_0\,
      I2 => s1_href,
      I3 => s1_stb,
      O => \row[7]_i_4__0_n_0\
    );
\row[7]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \row_reg_n_0_[3]\,
      I1 => \row_reg_n_0_[1]\,
      I2 => \row_reg_n_0_[0]\,
      I3 => \row_reg_n_0_[2]\,
      I4 => \row_reg_n_0_[4]\,
      O => \row[7]_i_5__0_n_0\
    );
\row[8]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF007F00000080"
    )
        port map (
      I0 => \row_reg_n_0_[7]\,
      I1 => \row[8]_i_2__0_n_0\,
      I2 => \row_reg_n_0_[6]\,
      I3 => \row_reg[8]_1\,
      I4 => \row[7]_i_4__0_n_0\,
      I5 => \row_reg_n_0_[8]\,
      O => \row[8]_i_1__0_n_0\
    );
\row[8]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \row_reg_n_0_[5]\,
      I1 => \row_reg_n_0_[4]\,
      I2 => \row_reg_n_0_[2]\,
      I3 => \row_reg_n_0_[0]\,
      I4 => \row_reg_n_0_[1]\,
      I5 => \row_reg_n_0_[3]\,
      O => \row[8]_i_2__0_n_0\
    );
\row_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => row(0),
      D => p_2_in(0),
      Q => \row_reg_n_0_[0]\,
      R => SR(0)
    );
\row_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => row(0),
      D => p_2_in(1),
      Q => \row_reg_n_0_[1]\,
      R => SR(0)
    );
\row_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => row(0),
      D => p_2_in(2),
      Q => \row_reg_n_0_[2]\,
      R => SR(0)
    );
\row_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \row[3]_i_1__0_n_0\,
      Q => \row_reg_n_0_[3]\,
      S => p_zero_reg_0
    );
\row_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => row(0),
      D => p_2_in(4),
      Q => \row_reg_n_0_[4]\,
      R => SR(0)
    );
\row_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \row[5]_i_1__0_n_0\,
      Q => \row_reg_n_0_[5]\,
      S => p_zero_reg_0
    );
\row_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => row(0),
      D => p_2_in(6),
      Q => \row_reg_n_0_[6]\,
      R => SR(0)
    );
\row_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => row(0),
      D => p_2_in(7),
      Q => \row_reg_n_0_[7]\,
      R => SR(0)
    );
\row_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \row[8]_i_1__0_n_0\,
      Q => \row_reg_n_0_[8]\,
      S => p_zero_reg_0
    );
\second_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0CCC4CC0C000000"
    )
        port map (
      I0 => \^href_d_reg_0\,
      I1 => fill_reg_0,
      I2 => \^row_reg[8]_0\,
      I3 => s1_stb,
      I4 => s1_href,
      I5 => second_reg_n_0,
      O => \second_i_1__0_n_0\
    );
second_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \second_i_1__0_n_0\,
      Q => second_reg_n_0,
      R => '0'
    );
vsync_d_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => vsync_d_reg_0,
      Q => \^vsync_d\,
      R => '0'
    );
\wr_data[0]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yg(1),
      I1 => \C__0\(1),
      O => \wr_data[0]_i_10_n_0\
    );
\wr_data[0]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yb(7),
      I1 => yr(7),
      O => \wr_data[0]_i_13_n_0\
    );
\wr_data[0]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yb(6),
      I1 => yr(6),
      O => \wr_data[0]_i_14_n_0\
    );
\wr_data[0]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yb(5),
      I1 => yr(5),
      O => \wr_data[0]_i_15_n_0\
    );
\wr_data[0]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yb(4),
      I1 => yr(4),
      O => \wr_data[0]_i_16_n_0\
    );
\wr_data[0]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yb(3),
      I1 => yr(3),
      O => \wr_data[0]_i_17_n_0\
    );
\wr_data[0]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yb(2),
      I1 => yr(2),
      O => \wr_data[0]_i_18_n_0\
    );
\wr_data[0]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yb(1),
      I1 => yr(1),
      O => \wr_data[0]_i_19_n_0\
    );
\wr_data[0]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yb(0),
      I1 => yr(0),
      O => \wr_data[0]_i_20_n_0\
    );
\wr_data[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yg(8),
      I1 => \C__0\(8),
      O => \wr_data[0]_i_3_n_0\
    );
\wr_data[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yg(7),
      I1 => \C__0\(7),
      O => \wr_data[0]_i_4_n_0\
    );
\wr_data[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yg(6),
      I1 => \C__0\(6),
      O => \wr_data[0]_i_5_n_0\
    );
\wr_data[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yg(5),
      I1 => \C__0\(5),
      O => \wr_data[0]_i_6_n_0\
    );
\wr_data[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yg(4),
      I1 => \C__0\(4),
      O => \wr_data[0]_i_7_n_0\
    );
\wr_data[0]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yg(3),
      I1 => \C__0\(3),
      O => \wr_data[0]_i_8_n_0\
    );
\wr_data[0]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yg(2),
      I1 => \C__0\(2),
      O => \wr_data[0]_i_9_n_0\
    );
\wr_data[4]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yb(8),
      I1 => yr(8),
      O => \wr_data[4]_i_10_n_0\
    );
\wr_data[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yg(12),
      I1 => \C__0\(12),
      O => \wr_data[4]_i_2_n_0\
    );
\wr_data[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yg(11),
      I1 => \C__0\(11),
      O => \wr_data[4]_i_3_n_0\
    );
\wr_data[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yg(10),
      I1 => \C__0\(10),
      O => \wr_data[4]_i_4_n_0\
    );
\wr_data[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yg(9),
      I1 => \C__0\(9),
      O => \wr_data[4]_i_5_n_0\
    );
\wr_data[4]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yb(11),
      I1 => yr(11),
      O => \wr_data[4]_i_7_n_0\
    );
\wr_data[4]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yb(10),
      I1 => yr(10),
      O => \wr_data[4]_i_8_n_0\
    );
\wr_data[4]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yb(9),
      I1 => yr(9),
      O => \wr_data[4]_i_9_n_0\
    );
\wr_data[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yg(15),
      I1 => \wr_data_reg[7]_i_5_n_0\,
      O => \wr_data[7]_i_2_n_0\
    );
\wr_data[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yg(14),
      I1 => \C__0\(14),
      O => \wr_data[7]_i_3_n_0\
    );
\wr_data[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yg(13),
      I1 => \C__0\(13),
      O => \wr_data[7]_i_4_n_0\
    );
\wr_data[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => yb(12),
      I1 => yr(12),
      O => \wr_data[7]_i_6_n_0\
    );
\wr_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ysum(8),
      Q => \wr_data_reg[7]_0\(0),
      R => q_zero
    );
\wr_data_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wr_data_reg[0]_i_2_n_0\,
      CO(3) => \wr_data_reg[0]_i_1_n_0\,
      CO(2) => \wr_data_reg[0]_i_1_n_1\,
      CO(1) => \wr_data_reg[0]_i_1_n_2\,
      CO(0) => \wr_data_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => yg(8 downto 5),
      O(3) => ysum(8),
      O(2 downto 0) => \NLW_wr_data_reg[0]_i_1_O_UNCONNECTED\(2 downto 0),
      S(3) => \wr_data[0]_i_3_n_0\,
      S(2) => \wr_data[0]_i_4_n_0\,
      S(1) => \wr_data[0]_i_5_n_0\,
      S(0) => \wr_data[0]_i_6_n_0\
    );
\wr_data_reg[0]_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => \wr_data_reg[0]_i_12_n_0\,
      CO(3) => \wr_data_reg[0]_i_11_n_0\,
      CO(2) => \wr_data_reg[0]_i_11_n_1\,
      CO(1) => \wr_data_reg[0]_i_11_n_2\,
      CO(0) => \wr_data_reg[0]_i_11_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => yb(7 downto 4),
      O(3 downto 0) => \C__0\(7 downto 4),
      S(3) => \wr_data[0]_i_13_n_0\,
      S(2) => \wr_data[0]_i_14_n_0\,
      S(1) => \wr_data[0]_i_15_n_0\,
      S(0) => \wr_data[0]_i_16_n_0\
    );
\wr_data_reg[0]_i_12\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \wr_data_reg[0]_i_12_n_0\,
      CO(2) => \wr_data_reg[0]_i_12_n_1\,
      CO(1) => \wr_data_reg[0]_i_12_n_2\,
      CO(0) => \wr_data_reg[0]_i_12_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => yb(3 downto 0),
      O(3 downto 1) => \C__0\(3 downto 1),
      O(0) => \NLW_wr_data_reg[0]_i_12_O_UNCONNECTED\(0),
      S(3) => \wr_data[0]_i_17_n_0\,
      S(2) => \wr_data[0]_i_18_n_0\,
      S(1) => \wr_data[0]_i_19_n_0\,
      S(0) => \wr_data[0]_i_20_n_0\
    );
\wr_data_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \wr_data_reg[0]_i_2_n_0\,
      CO(2) => \wr_data_reg[0]_i_2_n_1\,
      CO(1) => \wr_data_reg[0]_i_2_n_2\,
      CO(0) => \wr_data_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => yg(4 downto 1),
      O(3 downto 0) => \NLW_wr_data_reg[0]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \wr_data[0]_i_7_n_0\,
      S(2) => \wr_data[0]_i_8_n_0\,
      S(1) => \wr_data[0]_i_9_n_0\,
      S(0) => \wr_data[0]_i_10_n_0\
    );
\wr_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ysum(9),
      Q => \wr_data_reg[7]_0\(1),
      R => q_zero
    );
\wr_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ysum(10),
      Q => \wr_data_reg[7]_0\(2),
      R => q_zero
    );
\wr_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ysum(11),
      Q => \wr_data_reg[7]_0\(3),
      R => q_zero
    );
\wr_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ysum(12),
      Q => \wr_data_reg[7]_0\(4),
      R => q_zero
    );
\wr_data_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wr_data_reg[0]_i_1_n_0\,
      CO(3) => \wr_data_reg[4]_i_1_n_0\,
      CO(2) => \wr_data_reg[4]_i_1_n_1\,
      CO(1) => \wr_data_reg[4]_i_1_n_2\,
      CO(0) => \wr_data_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => yg(12 downto 9),
      O(3 downto 0) => ysum(12 downto 9),
      S(3) => \wr_data[4]_i_2_n_0\,
      S(2) => \wr_data[4]_i_3_n_0\,
      S(1) => \wr_data[4]_i_4_n_0\,
      S(0) => \wr_data[4]_i_5_n_0\
    );
\wr_data_reg[4]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \wr_data_reg[0]_i_11_n_0\,
      CO(3) => \wr_data_reg[4]_i_6_n_0\,
      CO(2) => \wr_data_reg[4]_i_6_n_1\,
      CO(1) => \wr_data_reg[4]_i_6_n_2\,
      CO(0) => \wr_data_reg[4]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => yb(11 downto 8),
      O(3 downto 0) => \C__0\(11 downto 8),
      S(3) => \wr_data[4]_i_7_n_0\,
      S(2) => \wr_data[4]_i_8_n_0\,
      S(1) => \wr_data[4]_i_9_n_0\,
      S(0) => \wr_data[4]_i_10_n_0\
    );
\wr_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ysum(13),
      Q => \wr_data_reg[7]_0\(5),
      R => q_zero
    );
\wr_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ysum(14),
      Q => \wr_data_reg[7]_0\(6),
      R => q_zero
    );
\wr_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ysum(15),
      Q => \wr_data_reg[7]_0\(7),
      R => q_zero
    );
\wr_data_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wr_data_reg[4]_i_1_n_0\,
      CO(3 downto 2) => \NLW_wr_data_reg[7]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \wr_data_reg[7]_i_1_n_2\,
      CO(0) => \wr_data_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => yg(14 downto 13),
      O(3) => \NLW_wr_data_reg[7]_i_1_O_UNCONNECTED\(3),
      O(2 downto 0) => ysum(15 downto 13),
      S(3) => '0',
      S(2) => \wr_data[7]_i_2_n_0\,
      S(1) => \wr_data[7]_i_3_n_0\,
      S(0) => \wr_data[7]_i_4_n_0\
    );
\wr_data_reg[7]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \wr_data_reg[4]_i_6_n_0\,
      CO(3) => \wr_data_reg[7]_i_5_n_0\,
      CO(2) => \NLW_wr_data_reg[7]_i_5_CO_UNCONNECTED\(2),
      CO(1) => \wr_data_reg[7]_i_5_n_2\,
      CO(0) => \wr_data_reg[7]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => yb(12),
      O(3) => \NLW_wr_data_reg[7]_i_5_O_UNCONNECTED\(3),
      O(2 downto 0) => \C__0\(14 downto 12),
      S(3) => '1',
      S(2 downto 1) => yr(14 downto 13),
      S(0) => \wr_data[7]_i_6_n_0\
    );
\wr_en_reg__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => q_v_reg_srl2_n_0,
      Q => \^t1_en\,
      R => '0'
    );
wr_sof_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => wr_sof_reg_0,
      Q => \^t1_sof\,
      R => '0'
    );
\yb[10]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ysum[-_n_0_1111111104]\,
      I1 => \ysum[-_n_0_1111111106]\,
      O => \yb[10]_i_11_n_0\
    );
\yb[10]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ysum[-_n_0_1111111105]\,
      I1 => \ysum[-_n_0_1111111107]\,
      O => \yb[10]_i_12_n_0\
    );
\yb[10]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ysum[-_n_0_1111111106]\,
      I1 => \ysum[-_n_0_1111111108]\,
      O => \yb[10]_i_13_n_0\
    );
\yb[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \ysum[-_n_0_1111111105]\,
      I1 => \yb_reg[12]_i_5_n_7\,
      I2 => \ysum[-_n_0_1111111107]\,
      O => \yb[10]_i_2_n_0\
    );
\yb[10]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \ysum[-_n_0_1111111106]\,
      I1 => \yb_reg[10]_i_10_n_4\,
      I2 => \ysum[-_n_0_1111111108]\,
      O => \yb[10]_i_3_n_0\
    );
\yb[10]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \ysum[-_n_0_1111111107]\,
      I1 => \yb_reg[10]_i_10_n_5\,
      I2 => \ysum[-_n_0_1111111104]\,
      O => \yb[10]_i_4_n_0\
    );
\yb[10]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \ysum[-_n_0_1111111108]\,
      I1 => \yb_reg[10]_i_10_n_6\,
      I2 => \ysum[-_n_0_1111111105]\,
      O => \yb[10]_i_5_n_0\
    );
\yb[10]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \ysum[-_n_0_1111111107]\,
      I1 => \yb_reg[12]_i_5_n_7\,
      I2 => \ysum[-_n_0_1111111105]\,
      I3 => \ysum[-_n_0_1111111104]\,
      I4 => \yb_reg[12]_i_5_n_2\,
      I5 => \ysum[-_n_0_1111111106]\,
      O => \yb[10]_i_6__0_n_0\
    );
\yb[10]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \ysum[-_n_0_1111111108]\,
      I1 => \yb_reg[10]_i_10_n_4\,
      I2 => \ysum[-_n_0_1111111106]\,
      I3 => \ysum[-_n_0_1111111105]\,
      I4 => \yb_reg[12]_i_5_n_7\,
      I5 => \ysum[-_n_0_1111111107]\,
      O => \yb[10]_i_7__0_n_0\
    );
\yb[10]_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \ysum[-_n_0_1111111104]\,
      I1 => \yb_reg[10]_i_10_n_5\,
      I2 => \ysum[-_n_0_1111111107]\,
      I3 => \ysum[-_n_0_1111111106]\,
      I4 => \yb_reg[10]_i_10_n_4\,
      I5 => \ysum[-_n_0_1111111108]\,
      O => \yb[10]_i_8__0_n_0\
    );
\yb[10]_i_9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \ysum[-_n_0_1111111105]\,
      I1 => \yb_reg[10]_i_10_n_6\,
      I2 => \ysum[-_n_0_1111111108]\,
      I3 => \ysum[-_n_0_1111111107]\,
      I4 => \yb_reg[10]_i_10_n_5\,
      I5 => \ysum[-_n_0_1111111104]\,
      O => \yb[10]_i_9__0_n_0\
    );
\yb[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \ysum[-_n_0_1111111104]\,
      I1 => \yb_reg[12]_i_5_n_2\,
      I2 => \ysum[-_n_0_1111111106]\,
      O => \yb[12]_i_2_n_0\
    );
\yb[12]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \ysum[-_n_0_1111111105]\,
      I1 => \ysum[-_n_0_1111111104]\,
      O => \yb[12]_i_3__0_n_0\
    );
\yb[12]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8E71"
    )
        port map (
      I0 => \ysum[-_n_0_1111111106]\,
      I1 => \yb_reg[12]_i_5_n_2\,
      I2 => \ysum[-_n_0_1111111104]\,
      I3 => \ysum[-_n_0_1111111105]\,
      O => \yb[12]_i_4__0_n_0\
    );
\yb[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ysum[-_n_0_1111111107]\,
      I1 => \ysum[-_n_0_1111111104]\,
      O => \yb[2]_i_2_n_0\
    );
\yb[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ysum[-_n_0_1111111108]\,
      I1 => \ysum[-_n_0_1111111105]\,
      O => \yb[2]_i_3_n_0\
    );
\yb[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ysum[-_n_0_1111111104]\,
      I1 => \ysum[-_n_0_1111111106]\,
      O => \yb[2]_i_4_n_0\
    );
\yb[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \ysum[-_n_0_1111111104]\,
      I1 => \yb_reg[10]_i_10_n_7\,
      I2 => \ysum[-_n_0_1111111106]\,
      O => \yb[6]_i_2_n_0\
    );
\yb[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \ysum[-_n_0_1111111104]\,
      I1 => \yb_reg[10]_i_10_n_7\,
      I2 => \ysum[-_n_0_1111111106]\,
      O => \yb[6]_i_3_n_0\
    );
\yb[6]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \yb_reg[2]_i_1_n_5\,
      I1 => \ysum[-_n_0_1111111106]\,
      O => \yb[6]_i_4__0_n_0\
    );
\yb[6]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \ysum[-_n_0_1111111106]\,
      I1 => \yb_reg[10]_i_10_n_7\,
      I2 => \ysum[-_n_0_1111111104]\,
      I3 => \ysum[-_n_0_1111111108]\,
      I4 => \yb_reg[10]_i_10_n_6\,
      I5 => \ysum[-_n_0_1111111105]\,
      O => \yb[6]_i_5__0_n_0\
    );
\yb[6]_i_6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69966969"
    )
        port map (
      I0 => \ysum[-_n_0_1111111104]\,
      I1 => \yb_reg[10]_i_10_n_7\,
      I2 => \ysum[-_n_0_1111111106]\,
      I3 => \ysum[-_n_0_1111111105]\,
      I4 => \yb_reg[2]_i_1_n_4\,
      O => \yb[6]_i_6__0_n_0\
    );
\yb[6]_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \ysum[-_n_0_1111111106]\,
      I1 => \yb_reg[2]_i_1_n_5\,
      I2 => \yb_reg[2]_i_1_n_4\,
      I3 => \ysum[-_n_0_1111111105]\,
      O => \yb[6]_i_7__0_n_0\
    );
\yb[6]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ysum[-_n_0_1111111106]\,
      I1 => \yb_reg[2]_i_1_n_5\,
      O => \yb[6]_i_8_n_0\
    );
\yb_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \ysum[-_n_0_1111111106]\,
      Q => yb(0),
      R => '0'
    );
\yb_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yb0(10),
      Q => yb(10),
      R => '0'
    );
\yb_reg[10]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \yb_reg[6]_i_1_n_0\,
      CO(3) => \yb_reg[10]_i_1_n_0\,
      CO(2) => \yb_reg[10]_i_1_n_1\,
      CO(1) => \yb_reg[10]_i_1_n_2\,
      CO(0) => \yb_reg[10]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \yb[10]_i_2_n_0\,
      DI(2) => \yb[10]_i_3_n_0\,
      DI(1) => \yb[10]_i_4_n_0\,
      DI(0) => \yb[10]_i_5_n_0\,
      O(3 downto 0) => yb0(10 downto 7),
      S(3) => \yb[10]_i_6__0_n_0\,
      S(2) => \yb[10]_i_7__0_n_0\,
      S(1) => \yb[10]_i_8__0_n_0\,
      S(0) => \yb[10]_i_9__0_n_0\
    );
\yb_reg[10]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \yb_reg[2]_i_1_n_0\,
      CO(3) => \yb_reg[10]_i_10_n_0\,
      CO(2) => \yb_reg[10]_i_10_n_1\,
      CO(1) => \yb_reg[10]_i_10_n_2\,
      CO(0) => \yb_reg[10]_i_10_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \ysum[-_n_0_1111111104]\,
      DI(1) => \ysum[-_n_0_1111111105]\,
      DI(0) => \ysum[-_n_0_1111111106]\,
      O(3) => \yb_reg[10]_i_10_n_4\,
      O(2) => \yb_reg[10]_i_10_n_5\,
      O(1) => \yb_reg[10]_i_10_n_6\,
      O(0) => \yb_reg[10]_i_10_n_7\,
      S(3) => \ysum[-_n_0_1111111105]\,
      S(2) => \yb[10]_i_11_n_0\,
      S(1) => \yb[10]_i_12_n_0\,
      S(0) => \yb[10]_i_13_n_0\
    );
\yb_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yb0(11),
      Q => yb(11),
      R => '0'
    );
\yb_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yb0(12),
      Q => yb(12),
      R => '0'
    );
\yb_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \yb_reg[10]_i_1_n_0\,
      CO(3 downto 1) => \NLW_yb_reg[12]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \yb_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \yb[12]_i_2_n_0\,
      O(3 downto 2) => \NLW_yb_reg[12]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => yb0(12 downto 11),
      S(3 downto 2) => B"00",
      S(1) => \yb[12]_i_3__0_n_0\,
      S(0) => \yb[12]_i_4__0_n_0\
    );
\yb_reg[12]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \yb_reg[10]_i_10_n_0\,
      CO(3 downto 2) => \NLW_yb_reg[12]_i_5_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \yb_reg[12]_i_5_n_2\,
      CO(0) => \NLW_yb_reg[12]_i_5_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_yb_reg[12]_i_5_O_UNCONNECTED\(3 downto 1),
      O(0) => \yb_reg[12]_i_5_n_7\,
      S(3 downto 1) => B"001",
      S(0) => \ysum[-_n_0_1111111104]\
    );
\yb_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yb0(1),
      Q => yb(1),
      R => '0'
    );
\yb_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yb0(2),
      Q => yb(2),
      R => '0'
    );
\yb_reg[2]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \yb_reg[2]_i_1_n_0\,
      CO(2) => \yb_reg[2]_i_1_n_1\,
      CO(1) => \yb_reg[2]_i_1_n_2\,
      CO(0) => \yb_reg[2]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \ysum[-_n_0_1111111107]\,
      DI(2) => \ysum[-_n_0_1111111108]\,
      DI(1) => \ysum[-_n_0_1111111104]\,
      DI(0) => '0',
      O(3) => \yb_reg[2]_i_1_n_4\,
      O(2) => \yb_reg[2]_i_1_n_5\,
      O(1 downto 0) => yb0(2 downto 1),
      S(3) => \yb[2]_i_2_n_0\,
      S(2) => \yb[2]_i_3_n_0\,
      S(1) => \yb[2]_i_4_n_0\,
      S(0) => \ysum[-_n_0_1111111105]\
    );
\yb_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yb0(3),
      Q => yb(3),
      R => '0'
    );
\yb_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yb0(4),
      Q => yb(4),
      R => '0'
    );
\yb_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yb0(5),
      Q => yb(5),
      R => '0'
    );
\yb_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yb0(6),
      Q => yb(6),
      R => '0'
    );
\yb_reg[6]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \yb_reg[6]_i_1_n_0\,
      CO(2) => \yb_reg[6]_i_1_n_1\,
      CO(1) => \yb_reg[6]_i_1_n_2\,
      CO(0) => \yb_reg[6]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \yb[6]_i_2_n_0\,
      DI(2) => \yb[6]_i_3_n_0\,
      DI(1) => \yb[6]_i_4__0_n_0\,
      DI(0) => '0',
      O(3 downto 0) => yb0(6 downto 3),
      S(3) => \yb[6]_i_5__0_n_0\,
      S(2) => \yb[6]_i_6__0_n_0\,
      S(1) => \yb[6]_i_7__0_n_0\,
      S(0) => \yb[6]_i_8_n_0\
    );
\yb_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yb0(7),
      Q => yb(7),
      R => '0'
    );
\yb_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yb0(8),
      Q => yb(8),
      R => '0'
    );
\yb_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yb0(9),
      Q => yb(9),
      R => '0'
    );
\yg[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \ysum[-1111111106]__0_n_0\,
      I1 => \yg_reg[15]_i_3_n_7\,
      I2 => \ysum[-1111111109]__0_n_0\,
      O => \yg[10]_i_2_n_0\
    );
\yg[10]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \ysum[-1111111107]__0_n_0\,
      I1 => \yg_reg[6]_i_2_n_4\,
      I2 => \ysum[-1111111110]__0_n_0\,
      O => \yg[10]_i_3_n_0\
    );
\yg[10]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \ysum[-1111111110]__0_n_0\,
      I1 => \ysum[-1111111107]__0_n_0\,
      I2 => \yg_reg[6]_i_2_n_4\,
      O => \yg[10]_i_4_n_0\
    );
\yg[10]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \ysum[-1111111111]__0_n_0\,
      I1 => \yg_reg[15]_i_3_n_6\,
      I2 => \ysum[-1111111108]__0_n_0\,
      I3 => \yg[10]_i_2_n_0\,
      O => \yg[10]_i_5_n_0\
    );
\yg[10]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \ysum[-1111111106]__0_n_0\,
      I1 => \yg_reg[15]_i_3_n_7\,
      I2 => \ysum[-1111111109]__0_n_0\,
      I3 => \yg[10]_i_3_n_0\,
      O => \yg[10]_i_6_n_0\
    );
\yg[10]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => \ysum[-1111111107]__0_n_0\,
      I1 => \yg_reg[6]_i_2_n_4\,
      I2 => \ysum[-1111111110]__0_n_0\,
      I3 => \yg_reg[6]_i_2_n_5\,
      I4 => \ysum[-1111111108]__0_n_0\,
      O => \yg[10]_i_7_n_0\
    );
\yg[10]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \ysum[-1111111108]__0_n_0\,
      I1 => \yg_reg[6]_i_2_n_5\,
      I2 => \ysum[-1111111111]__0_n_0\,
      O => \yg[10]_i_8_n_0\
    );
\yg[14]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ysum[-1111111111]__0_n_0\,
      I1 => \yg_reg[15]_i_3_n_1\,
      O => \yg[14]_i_2__0_n_0\
    );
\yg[14]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ysum[-1111111106]__0_n_0\,
      I1 => \yg_reg[15]_i_3_n_1\,
      O => \yg[14]_i_3__0_n_0\
    );
\yg[14]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \yg_reg[15]_i_3_n_1\,
      I1 => \ysum[-1111111110]__0_n_0\,
      I2 => \ysum[-1111111107]__0_n_0\,
      O => \yg[14]_i_4_n_0\
    );
\yg[14]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \ysum[-1111111111]__0_n_0\,
      I1 => \yg_reg[15]_i_3_n_6\,
      I2 => \ysum[-1111111108]__0_n_0\,
      O => \yg[14]_i_5_n_0\
    );
\yg[14]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \ysum[-1111111111]__0_n_0\,
      I1 => \yg_reg[15]_i_3_n_1\,
      I2 => \ysum[-1111111110]__0_n_0\,
      O => \yg[14]_i_6_n_0\
    );
\yg[14]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \ysum[-1111111106]__0_n_0\,
      I1 => \yg_reg[15]_i_3_n_1\,
      I2 => \ysum[-1111111111]__0_n_0\,
      O => \yg[14]_i_7_n_0\
    );
\yg[14]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7E81"
    )
        port map (
      I0 => \ysum[-1111111107]__0_n_0\,
      I1 => \ysum[-1111111110]__0_n_0\,
      I2 => \yg_reg[15]_i_3_n_1\,
      I3 => \ysum[-1111111106]__0_n_0\,
      O => \yg[14]_i_8_n_0\
    );
\yg[14]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \yg[14]_i_5_n_0\,
      I1 => \yg_reg[15]_i_3_n_1\,
      I2 => \ysum[-1111111110]__0_n_0\,
      I3 => \ysum[-1111111107]__0_n_0\,
      O => \yg[14]_i_9_n_0\
    );
\yg[15]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \ysum[-1111111110]__0_n_0\,
      I1 => \yg_reg[15]_i_3_n_1\,
      O => \yg[15]_i_2__0_n_0\
    );
\yg[15]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \ysum[-1111111110]__0_n_0\,
      O => \yg[15]_i_4_n_0\
    );
\yg[15]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \ysum[-1111111111]__0_n_0\,
      O => \yg[15]_i_5_n_0\
    );
\yg[2]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \ysum[-1111111110]__0_n_0\,
      I1 => \ysum[-1111111108]__0_n_0\,
      O => \yg[2]_i_2__0_n_0\
    );
\yg[2]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \ysum[-1111111111]__0_n_0\,
      I1 => \ysum[-1111111109]__0_n_0\,
      O => \yg[2]_i_3__0_n_0\
    );
\yg[2]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \ysum[-1111111110]__0_n_0\,
      O => \yg[2]_i_4_n_0\
    );
\yg[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \yg_reg[6]_i_2_n_6\,
      I1 => \ysum[-1111111109]__0_n_0\,
      O => \yg[6]_i_3_n_0\
    );
\yg[6]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \yg_reg[6]_i_2_n_7\,
      I1 => \ysum[-1111111110]__0_n_0\,
      O => \yg[6]_i_4_n_0\
    );
\yg[6]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \yg_reg[2]_i_1_n_4\,
      I1 => \ysum[-1111111111]__0_n_0\,
      O => \yg[6]_i_5_n_0\
    );
\yg[6]_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \ysum[-1111111106]__0_n_0\,
      I1 => \ysum[-1111111110]__0_n_0\,
      O => \yg[6]_i_6__0_n_0\
    );
\yg[6]_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \ysum[-1111111107]__0_n_0\,
      I1 => \ysum[-1111111111]__0_n_0\,
      O => \yg[6]_i_7__0_n_0\
    );
\yg[6]_i_8__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \ysum[-1111111108]__0_n_0\,
      I1 => \ysum[-1111111106]__0_n_0\,
      O => \yg[6]_i_8__0_n_0\
    );
\yg[6]_i_9__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \ysum[-1111111109]__0_n_0\,
      I1 => \ysum[-1111111107]__0_n_0\,
      O => \yg[6]_i_9__0_n_0\
    );
\yg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yg0(10),
      Q => yg(10),
      R => '0'
    );
\yg_reg[10]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \yg_reg[6]_i_1_n_0\,
      CO(3) => \yg_reg[10]_i_1_n_0\,
      CO(2) => \yg_reg[10]_i_1_n_1\,
      CO(1) => \yg_reg[10]_i_1_n_2\,
      CO(0) => \yg_reg[10]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \yg[10]_i_2_n_0\,
      DI(2) => \yg[10]_i_3_n_0\,
      DI(1) => \yg[10]_i_4_n_0\,
      DI(0) => \ysum[-1111111111]__0_n_0\,
      O(3 downto 0) => yg0(10 downto 7),
      S(3) => \yg[10]_i_5_n_0\,
      S(2) => \yg[10]_i_6_n_0\,
      S(1) => \yg[10]_i_7_n_0\,
      S(0) => \yg[10]_i_8_n_0\
    );
\yg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yg0(11),
      Q => yg(11),
      R => '0'
    );
\yg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yg0(12),
      Q => yg(12),
      R => '0'
    );
\yg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yg0(13),
      Q => yg(13),
      R => '0'
    );
\yg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yg0(14),
      Q => yg(14),
      R => '0'
    );
\yg_reg[14]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \yg_reg[10]_i_1_n_0\,
      CO(3) => \yg_reg[14]_i_1_n_0\,
      CO(2) => \yg_reg[14]_i_1_n_1\,
      CO(1) => \yg_reg[14]_i_1_n_2\,
      CO(0) => \yg_reg[14]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \yg[14]_i_2__0_n_0\,
      DI(2) => \yg[14]_i_3__0_n_0\,
      DI(1) => \yg[14]_i_4_n_0\,
      DI(0) => \yg[14]_i_5_n_0\,
      O(3 downto 0) => yg0(14 downto 11),
      S(3) => \yg[14]_i_6_n_0\,
      S(2) => \yg[14]_i_7_n_0\,
      S(1) => \yg[14]_i_8_n_0\,
      S(0) => \yg[14]_i_9_n_0\
    );
\yg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yg0(15),
      Q => yg(15),
      R => '0'
    );
\yg_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \yg_reg[14]_i_1_n_0\,
      CO(3 downto 0) => \NLW_yg_reg[15]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_yg_reg[15]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => yg0(15),
      S(3 downto 1) => B"000",
      S(0) => \yg[15]_i_2__0_n_0\
    );
\yg_reg[15]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \yg_reg[6]_i_2_n_0\,
      CO(3) => \NLW_yg_reg[15]_i_3_CO_UNCONNECTED\(3),
      CO(2) => \yg_reg[15]_i_3_n_1\,
      CO(1) => \NLW_yg_reg[15]_i_3_CO_UNCONNECTED\(1),
      CO(0) => \yg_reg[15]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \ysum[-1111111110]__0_n_0\,
      DI(0) => \ysum[-1111111111]__0_n_0\,
      O(3 downto 2) => \NLW_yg_reg[15]_i_3_O_UNCONNECTED\(3 downto 2),
      O(1) => \yg_reg[15]_i_3_n_6\,
      O(0) => \yg_reg[15]_i_3_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \yg[15]_i_4_n_0\,
      S(0) => \yg[15]_i_5_n_0\
    );
\yg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yg0(1),
      Q => yg(1),
      R => '0'
    );
\yg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yg0(2),
      Q => yg(2),
      R => '0'
    );
\yg_reg[2]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \yg_reg[2]_i_1_n_0\,
      CO(2) => \yg_reg[2]_i_1_n_1\,
      CO(1) => \yg_reg[2]_i_1_n_2\,
      CO(0) => \yg_reg[2]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \ysum[-1111111110]__0_n_0\,
      DI(2) => \ysum[-1111111111]__0_n_0\,
      DI(1 downto 0) => B"01",
      O(3) => \yg_reg[2]_i_1_n_4\,
      O(2) => \yg_reg[2]_i_1_n_5\,
      O(1 downto 0) => yg0(2 downto 1),
      S(3) => \yg[2]_i_2__0_n_0\,
      S(2) => \yg[2]_i_3__0_n_0\,
      S(1) => \yg[2]_i_4_n_0\,
      S(0) => \ysum[-1111111111]__0_n_0\
    );
\yg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yg0(3),
      Q => yg(3),
      R => '0'
    );
\yg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yg0(4),
      Q => yg(4),
      R => '0'
    );
\yg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yg0(5),
      Q => yg(5),
      R => '0'
    );
\yg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yg0(6),
      Q => yg(6),
      R => '0'
    );
\yg_reg[6]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \yg_reg[6]_i_1_n_0\,
      CO(2) => \yg_reg[6]_i_1_n_1\,
      CO(1) => \yg_reg[6]_i_1_n_2\,
      CO(0) => \yg_reg[6]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \yg_reg[6]_i_2_n_6\,
      DI(2) => \yg_reg[6]_i_2_n_7\,
      DI(1) => \yg_reg[2]_i_1_n_4\,
      DI(0) => '0',
      O(3 downto 0) => yg0(6 downto 3),
      S(3) => \yg[6]_i_3_n_0\,
      S(2) => \yg[6]_i_4_n_0\,
      S(1) => \yg[6]_i_5_n_0\,
      S(0) => \yg_reg[2]_i_1_n_5\
    );
\yg_reg[6]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \yg_reg[2]_i_1_n_0\,
      CO(3) => \yg_reg[6]_i_2_n_0\,
      CO(2) => \yg_reg[6]_i_2_n_1\,
      CO(1) => \yg_reg[6]_i_2_n_2\,
      CO(0) => \yg_reg[6]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \ysum[-1111111106]__0_n_0\,
      DI(2) => \ysum[-1111111107]__0_n_0\,
      DI(1) => \ysum[-1111111108]__0_n_0\,
      DI(0) => \ysum[-1111111109]__0_n_0\,
      O(3) => \yg_reg[6]_i_2_n_4\,
      O(2) => \yg_reg[6]_i_2_n_5\,
      O(1) => \yg_reg[6]_i_2_n_6\,
      O(0) => \yg_reg[6]_i_2_n_7\,
      S(3) => \yg[6]_i_6__0_n_0\,
      S(2) => \yg[6]_i_7__0_n_0\,
      S(1) => \yg[6]_i_8__0_n_0\,
      S(0) => \yg[6]_i_9__0_n_0\
    );
\yg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yg0(7),
      Q => yg(7),
      R => '0'
    );
\yg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yg0(8),
      Q => yg(8),
      R => '0'
    );
\yg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yg0(9),
      Q => yg(9),
      R => '0'
    );
\yr[-1111111104]__0_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000400"
    )
        port map (
      I0 => \^row_reg[8]_0\,
      I1 => s1_href,
      I2 => \yr[-1111111104]__0_i_2__0_n_0\,
      I3 => second_reg_n_0,
      I4 => \yr[-1111111104]__0_i_3__0_n_0\,
      I5 => \ysum[-1111111111]__0_0\,
      O => p_rgb(0)
    );
\yr[-1111111104]__0_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888880"
    )
        port map (
      I0 => \px_reg_n_0_[8]\,
      I1 => \px_reg_n_0_[7]\,
      I2 => \px_reg_n_0_[5]\,
      I3 => \px_reg_n_0_[6]\,
      I4 => \px_reg_n_0_[4]\,
      O => \yr[-1111111104]__0_i_2__0_n_0\
    );
\yr[-1111111104]__0_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \px_reg_n_0_[9]\,
      I1 => \px_reg_n_0_[10]\,
      O => \yr[-1111111104]__0_i_3__0_n_0\
    );
\yr[-1111111104]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040440000"
    )
        port map (
      I0 => \^row_reg[8]_0\,
      I1 => s1_href,
      I2 => \^vsync_d\,
      I3 => s1_vsync,
      I4 => href_d,
      I5 => second_reg_n_0,
      O => hi(0)
    );
\yr[13]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \yr_reg[-1111111105]__0_n_0\,
      I1 => \yr_reg[13]_i_5_n_7\,
      I2 => \yr_reg[-1111111108]__0_n_0\,
      O => \yr[13]_i_2_n_0\
    );
\yr[13]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"17E8"
    )
        port map (
      I0 => \yr_reg[-1111111107]__0_n_0\,
      I1 => \yr_reg[13]_i_5_n_2\,
      I2 => \yr_reg[-1111111104]__0_n_0\,
      I3 => \yr_reg[-1111111106]__0_n_0\,
      O => \yr[13]_i_3_n_0\
    );
\yr[13]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \yr[13]_i_2_n_0\,
      I1 => \yr_reg[13]_i_5_n_2\,
      I2 => \yr_reg[-1111111104]__0_n_0\,
      I3 => \yr_reg[-1111111107]__0_n_0\,
      O => \yr[13]_i_4_n_0\
    );
\yr[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \yr_reg[-1111111107]__0_n_0\,
      I1 => \yr_reg[-1111111104]__0_n_0\,
      O => \yr[1]_i_2_n_0\
    );
\yr[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \yr_reg[-1111111108]__0_n_0\,
      I1 => \yr_reg[-1111111105]__0_n_0\,
      O => \yr[1]_i_3_n_0\
    );
\yr[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \yr_reg[-1111111104]__0_n_0\,
      I1 => \yr_reg[-1111111106]__0_n_0\,
      O => \yr[1]_i_4_n_0\
    );
\yr[5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \yr_reg[5]_i_2_n_7\,
      I1 => \yr_reg[-1111111104]__0_n_0\,
      O => \yr[5]_i_3_n_0\
    );
\yr[5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \yr_reg[1]_i_1_n_4\,
      I1 => \yr_reg[-1111111105]__0_n_0\,
      O => \yr[5]_i_4_n_0\
    );
\yr[5]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \yr_reg[1]_i_1_n_5\,
      I1 => \yr_reg[-1111111106]__0_n_0\,
      O => \yr[5]_i_5_n_0\
    );
\yr[5]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \yr_reg[-1111111104]__0_n_0\,
      I1 => \yr_reg[-1111111106]__0_n_0\,
      O => \yr[5]_i_6_n_0\
    );
\yr[5]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \yr_reg[-1111111105]__0_n_0\,
      I1 => \yr_reg[-1111111107]__0_n_0\,
      O => \yr[5]_i_7_n_0\
    );
\yr[5]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \yr_reg[-1111111106]__0_n_0\,
      I1 => \yr_reg[-1111111108]__0_n_0\,
      O => \yr[5]_i_8_n_0\
    );
\yr[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \yr_reg[-1111111106]__0_n_0\,
      I1 => \yr_reg[5]_i_2_n_4\,
      I2 => \yr_reg[-1111111104]__0_n_0\,
      O => \yr[9]_i_2_n_0\
    );
\yr[9]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \yr_reg[-1111111107]__0_n_0\,
      I1 => \yr_reg[5]_i_2_n_5\,
      I2 => \yr_reg[-1111111105]__0_n_0\,
      O => \yr[9]_i_3_n_0\
    );
\yr[9]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \yr_reg[-1111111105]__0_n_0\,
      I1 => \yr_reg[-1111111107]__0_n_0\,
      I2 => \yr_reg[5]_i_2_n_5\,
      O => \yr[9]_i_4_n_0\
    );
\yr[9]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \yr_reg[-1111111105]__0_n_0\,
      I1 => \yr_reg[13]_i_5_n_7\,
      I2 => \yr_reg[-1111111108]__0_n_0\,
      I3 => \yr[9]_i_2_n_0\,
      O => \yr[9]_i_5_n_0\
    );
\yr[9]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \yr_reg[-1111111106]__0_n_0\,
      I1 => \yr_reg[5]_i_2_n_4\,
      I2 => \yr_reg[-1111111104]__0_n_0\,
      I3 => \yr[9]_i_3_n_0\,
      O => \yr[9]_i_6_n_0\
    );
\yr[9]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => \yr_reg[-1111111107]__0_n_0\,
      I1 => \yr_reg[5]_i_2_n_5\,
      I2 => \yr_reg[-1111111105]__0_n_0\,
      I3 => \yr_reg[5]_i_2_n_6\,
      I4 => \yr_reg[-1111111108]__0_n_0\,
      O => \yr[9]_i_7_n_0\
    );
\yr[9]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \yr_reg[-1111111108]__0_n_0\,
      I1 => \yr_reg[5]_i_2_n_6\,
      I2 => \yr_reg[-1111111106]__0_n_0\,
      O => \yr[9]_i_8_n_0\
    );
\yr_reg[-1111111104]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => hi(0),
      D => \yr_reg[-1111111104]_0\(7),
      Q => yr_reg(7),
      R => '0'
    );
\yr_reg[-1111111104]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_rgb(0),
      D => yr_reg(7),
      Q => \yr_reg[-1111111104]__0_n_0\,
      R => '0'
    );
\yr_reg[-1111111105]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => hi(0),
      D => \yr_reg[-1111111104]_0\(6),
      Q => yr_reg(6),
      R => '0'
    );
\yr_reg[-1111111105]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_rgb(0),
      D => yr_reg(6),
      Q => \yr_reg[-1111111105]__0_n_0\,
      R => '0'
    );
\yr_reg[-1111111106]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => hi(0),
      D => \yr_reg[-1111111104]_0\(5),
      Q => yr_reg(5),
      R => '0'
    );
\yr_reg[-1111111106]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_rgb(0),
      D => yr_reg(5),
      Q => \yr_reg[-1111111106]__0_n_0\,
      R => '0'
    );
\yr_reg[-1111111107]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => hi(0),
      D => \yr_reg[-1111111104]_0\(4),
      Q => yr_reg(4),
      R => '0'
    );
\yr_reg[-1111111107]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_rgb(0),
      D => yr_reg(4),
      Q => \yr_reg[-1111111107]__0_n_0\,
      R => '0'
    );
\yr_reg[-1111111108]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => hi(0),
      D => \yr_reg[-1111111104]_0\(3),
      Q => yr_reg(3),
      R => '0'
    );
\yr_reg[-1111111108]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_rgb(0),
      D => yr_reg(3),
      Q => \yr_reg[-1111111108]__0_n_0\,
      R => '0'
    );
\yr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \yr_reg[-1111111106]__0_n_0\,
      Q => yr(0),
      R => '0'
    );
\yr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yr0(10),
      Q => yr(10),
      R => '0'
    );
\yr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yr0(11),
      Q => yr(11),
      R => '0'
    );
\yr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yr0(12),
      Q => yr(12),
      R => '0'
    );
\yr_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yr0(13),
      Q => yr(13),
      R => '0'
    );
\yr_reg[13]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \yr_reg[9]_i_1_n_0\,
      CO(3) => \yr_reg[13]_i_1_n_0\,
      CO(2) => \yr_reg[13]_i_1_n_1\,
      CO(1) => \yr_reg[13]_i_1_n_2\,
      CO(0) => \yr_reg[13]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \yr_reg[-1111111106]__0_n_0\,
      DI(0) => \yr[13]_i_2_n_0\,
      O(3 downto 0) => yr0(13 downto 10),
      S(3) => \yr_reg[-1111111104]__0_n_0\,
      S(2) => \yr_reg[-1111111105]__0_n_0\,
      S(1) => \yr[13]_i_3_n_0\,
      S(0) => \yr[13]_i_4_n_0\
    );
\yr_reg[13]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \yr_reg[5]_i_2_n_0\,
      CO(3 downto 2) => \NLW_yr_reg[13]_i_5_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \yr_reg[13]_i_5_n_2\,
      CO(0) => \NLW_yr_reg[13]_i_5_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_yr_reg[13]_i_5_O_UNCONNECTED\(3 downto 1),
      O(0) => \yr_reg[13]_i_5_n_7\,
      S(3 downto 1) => B"001",
      S(0) => \yr_reg[-1111111104]__0_n_0\
    );
\yr_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yr0(14),
      Q => yr(14),
      R => '0'
    );
\yr_reg[14]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \yr_reg[13]_i_1_n_0\,
      CO(3 downto 1) => \NLW_yr_reg[14]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => yr0(14),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_yr_reg[14]_i_1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\yr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yr0(1),
      Q => yr(1),
      R => '0'
    );
\yr_reg[1]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \yr_reg[1]_i_1_n_0\,
      CO(2) => \yr_reg[1]_i_1_n_1\,
      CO(1) => \yr_reg[1]_i_1_n_2\,
      CO(0) => \yr_reg[1]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \yr_reg[-1111111107]__0_n_0\,
      DI(2) => \yr_reg[-1111111108]__0_n_0\,
      DI(1) => \yr_reg[-1111111104]__0_n_0\,
      DI(0) => '0',
      O(3) => \yr_reg[1]_i_1_n_4\,
      O(2) => \yr_reg[1]_i_1_n_5\,
      O(1) => \yr_reg[1]_i_1_n_6\,
      O(0) => yr0(1),
      S(3) => \yr[1]_i_2_n_0\,
      S(2) => \yr[1]_i_3_n_0\,
      S(1) => \yr[1]_i_4_n_0\,
      S(0) => \yr_reg[-1111111105]__0_n_0\
    );
\yr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yr0(2),
      Q => yr(2),
      R => '0'
    );
\yr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yr0(3),
      Q => yr(3),
      R => '0'
    );
\yr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yr0(4),
      Q => yr(4),
      R => '0'
    );
\yr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yr0(5),
      Q => yr(5),
      R => '0'
    );
\yr_reg[5]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \yr_reg[5]_i_1_n_0\,
      CO(2) => \yr_reg[5]_i_1_n_1\,
      CO(1) => \yr_reg[5]_i_1_n_2\,
      CO(0) => \yr_reg[5]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \yr_reg[5]_i_2_n_7\,
      DI(2) => \yr_reg[1]_i_1_n_4\,
      DI(1) => \yr_reg[1]_i_1_n_5\,
      DI(0) => '0',
      O(3 downto 0) => yr0(5 downto 2),
      S(3) => \yr[5]_i_3_n_0\,
      S(2) => \yr[5]_i_4_n_0\,
      S(1) => \yr[5]_i_5_n_0\,
      S(0) => \yr_reg[1]_i_1_n_6\
    );
\yr_reg[5]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \yr_reg[1]_i_1_n_0\,
      CO(3) => \yr_reg[5]_i_2_n_0\,
      CO(2) => \yr_reg[5]_i_2_n_1\,
      CO(1) => \yr_reg[5]_i_2_n_2\,
      CO(0) => \yr_reg[5]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \yr_reg[-1111111104]__0_n_0\,
      DI(1) => \yr_reg[-1111111105]__0_n_0\,
      DI(0) => \yr_reg[-1111111106]__0_n_0\,
      O(3) => \yr_reg[5]_i_2_n_4\,
      O(2) => \yr_reg[5]_i_2_n_5\,
      O(1) => \yr_reg[5]_i_2_n_6\,
      O(0) => \yr_reg[5]_i_2_n_7\,
      S(3) => \yr_reg[-1111111105]__0_n_0\,
      S(2) => \yr[5]_i_6_n_0\,
      S(1) => \yr[5]_i_7_n_0\,
      S(0) => \yr[5]_i_8_n_0\
    );
\yr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yr0(6),
      Q => yr(6),
      R => '0'
    );
\yr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yr0(7),
      Q => yr(7),
      R => '0'
    );
\yr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yr0(8),
      Q => yr(8),
      R => '0'
    );
\yr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => yr0(9),
      Q => yr(9),
      R => '0'
    );
\yr_reg[9]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \yr_reg[5]_i_1_n_0\,
      CO(3) => \yr_reg[9]_i_1_n_0\,
      CO(2) => \yr_reg[9]_i_1_n_1\,
      CO(1) => \yr_reg[9]_i_1_n_2\,
      CO(0) => \yr_reg[9]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \yr[9]_i_2_n_0\,
      DI(2) => \yr[9]_i_3_n_0\,
      DI(1) => \yr[9]_i_4_n_0\,
      DI(0) => \yr_reg[-1111111106]__0_n_0\,
      O(3 downto 0) => yr0(9 downto 6),
      S(3) => \yr[9]_i_5_n_0\,
      S(2) => \yr[9]_i_6_n_0\,
      S(1) => \yr[9]_i_7_n_0\,
      S(0) => \yr[9]_i_8_n_0\
    );
\ysum[-1111111104]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_rgb(0),
      D => \yr_reg[-1111111104]_0\(4),
      Q => \ysum[-_n_0_1111111104]\,
      R => '0'
    );
\ysum[-1111111105]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_rgb(0),
      D => \yr_reg[-1111111104]_0\(3),
      Q => \ysum[-_n_0_1111111105]\,
      R => '0'
    );
\ysum[-1111111106]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_rgb(0),
      D => \yr_reg[-1111111104]_0\(2),
      Q => \ysum[-_n_0_1111111106]\,
      R => '0'
    );
\ysum[-1111111106]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_rgb(0),
      D => \hi_reg_n_0_[0]\,
      Q => \ysum[-1111111106]__0_n_0\,
      R => '0'
    );
\ysum[-1111111107]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_rgb(0),
      D => \yr_reg[-1111111104]_0\(1),
      Q => \ysum[-_n_0_1111111107]\,
      R => '0'
    );
\ysum[-1111111107]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_rgb(0),
      D => \yr_reg[-1111111104]_0\(7),
      Q => \ysum[-1111111107]__0_n_0\,
      R => '0'
    );
\ysum[-1111111108]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_rgb(0),
      D => \yr_reg[-1111111104]_0\(0),
      Q => \ysum[-_n_0_1111111108]\,
      R => '0'
    );
\ysum[-1111111108]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_rgb(0),
      D => \yr_reg[-1111111104]_0\(6),
      Q => \ysum[-1111111108]__0_n_0\,
      R => '0'
    );
\ysum[-1111111109]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_rgb(0),
      D => \yr_reg[-1111111104]_0\(5),
      Q => \ysum[-1111111109]__0_n_0\,
      R => '0'
    );
\ysum[-1111111110]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_rgb(0),
      D => \hi_reg_n_0_[2]\,
      Q => \ysum[-1111111110]__0_n_0\,
      R => '0'
    );
\ysum[-1111111111]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_rgb(0),
      D => \hi_reg_n_0_[1]\,
      Q => \ysum[-1111111111]__0_n_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_cam_input_0_0_rect_linebuf is
  port (
    rd_data0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sof_toggle0 : out STD_LOGIC;
    frame_base0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rows_gray0 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    clk : in STD_LOGIC;
    pclk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_addr0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \g_slice[0].m_reg_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sof_toggle_reg_0 : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \wx_reg[9]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_cam_input_0_0_rect_linebuf : entity is "rect_linebuf";
end system_cam_input_0_0_rect_linebuf;

architecture STRUCTURE of system_cam_input_0_0_rect_linebuf is
  signal data0 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \frame_base[15]_i_1_n_0\ : STD_LOGIC;
  signal \frame_base[15]_i_2_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_1_in : STD_LOGIC;
  signal \rows_done[9]_i_1_n_0\ : STD_LOGIC;
  signal \rows_done[9]_i_3_n_0\ : STD_LOGIC;
  signal \rows_done[9]_i_4_n_0\ : STD_LOGIC;
  signal \rows_done_reg_n_0_[0]\ : STD_LOGIC;
  signal \rows_done_reg_n_0_[1]\ : STD_LOGIC;
  signal \rows_done_reg_n_0_[2]\ : STD_LOGIC;
  signal \rows_done_reg_n_0_[3]\ : STD_LOGIC;
  signal \rows_done_reg_n_0_[4]\ : STD_LOGIC;
  signal \rows_done_reg_n_0_[5]\ : STD_LOGIC;
  signal \rows_done_reg_n_0_[6]\ : STD_LOGIC;
  signal \rows_done_reg_n_0_[7]\ : STD_LOGIC;
  signal \rows_done_reg_n_0_[8]\ : STD_LOGIC;
  signal \rows_done_reg_n_0_[9]\ : STD_LOGIC;
  signal \rows_gray[0]_i_1_n_0\ : STD_LOGIC;
  signal \rows_gray[1]_i_1_n_0\ : STD_LOGIC;
  signal \rows_gray[2]_i_1_n_0\ : STD_LOGIC;
  signal \rows_gray[3]_i_1_n_0\ : STD_LOGIC;
  signal \rows_gray[4]_i_1_n_0\ : STD_LOGIC;
  signal \rows_gray[5]_i_1_n_0\ : STD_LOGIC;
  signal \rows_gray[6]_i_1_n_0\ : STD_LOGIC;
  signal \rows_gray[7]_i_1_n_0\ : STD_LOGIC;
  signal \rows_gray[8]_i_1_n_0\ : STD_LOGIC;
  signal \waddr1_carry__0_n_0\ : STD_LOGIC;
  signal \waddr1_carry__0_n_1\ : STD_LOGIC;
  signal \waddr1_carry__0_n_2\ : STD_LOGIC;
  signal \waddr1_carry__0_n_3\ : STD_LOGIC;
  signal \waddr1_carry__1_n_0\ : STD_LOGIC;
  signal \waddr1_carry__1_n_1\ : STD_LOGIC;
  signal \waddr1_carry__1_n_2\ : STD_LOGIC;
  signal \waddr1_carry__1_n_3\ : STD_LOGIC;
  signal \waddr1_carry__2_n_2\ : STD_LOGIC;
  signal \waddr1_carry__2_n_3\ : STD_LOGIC;
  signal waddr1_carry_n_0 : STD_LOGIC;
  signal waddr1_carry_n_1 : STD_LOGIC;
  signal waddr1_carry_n_2 : STD_LOGIC;
  signal waddr1_carry_n_3 : STD_LOGIC;
  signal \waddr[0]_i_1_n_0\ : STD_LOGIC;
  signal \waddr[10]_i_1_n_0\ : STD_LOGIC;
  signal \waddr[11]_i_1_n_0\ : STD_LOGIC;
  signal \waddr[12]_i_1_n_0\ : STD_LOGIC;
  signal \waddr[13]_i_1_n_0\ : STD_LOGIC;
  signal \waddr[14]_i_1_n_0\ : STD_LOGIC;
  signal \waddr[15]_i_1_n_0\ : STD_LOGIC;
  signal \waddr[15]_i_2_n_0\ : STD_LOGIC;
  signal \waddr[15]_i_3_n_0\ : STD_LOGIC;
  signal \waddr[15]_i_4_n_0\ : STD_LOGIC;
  signal \waddr[15]_i_5_n_0\ : STD_LOGIC;
  signal \waddr[1]_i_1_n_0\ : STD_LOGIC;
  signal \waddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \waddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \waddr[4]_i_1_n_0\ : STD_LOGIC;
  signal \waddr[5]_i_1_n_0\ : STD_LOGIC;
  signal \waddr[6]_i_1_n_0\ : STD_LOGIC;
  signal \waddr[7]_i_1_n_0\ : STD_LOGIC;
  signal \waddr[8]_i_1_n_0\ : STD_LOGIC;
  signal \waddr[9]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_reg_n_0_[0]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[10]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[11]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[1]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[3]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[4]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[5]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[6]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[7]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[8]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[9]\ : STD_LOGIC;
  signal wx : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \wx[3]_i_2_n_0\ : STD_LOGIC;
  signal \wx[5]_i_1_n_0\ : STD_LOGIC;
  signal \wx[6]_i_2_n_0\ : STD_LOGIC;
  signal \wx[7]_i_2_n_0\ : STD_LOGIC;
  signal \wx[7]_i_3_n_0\ : STD_LOGIC;
  signal \wx[9]_i_2_n_0\ : STD_LOGIC;
  signal \wx_reg_n_0_[0]\ : STD_LOGIC;
  signal \wx_reg_n_0_[1]\ : STD_LOGIC;
  signal \wx_reg_n_0_[2]\ : STD_LOGIC;
  signal \wx_reg_n_0_[3]\ : STD_LOGIC;
  signal \wx_reg_n_0_[4]\ : STD_LOGIC;
  signal \wx_reg_n_0_[5]\ : STD_LOGIC;
  signal \wx_reg_n_0_[6]\ : STD_LOGIC;
  signal \wx_reg_n_0_[7]\ : STD_LOGIC;
  signal \wx_reg_n_0_[8]\ : STD_LOGIC;
  signal \wx_reg_n_0_[9]\ : STD_LOGIC;
  signal \NLW_g_slice[0].m_reg_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_g_slice[0].m_reg_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_g_slice[0].m_reg_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_g_slice[0].m_reg_INJECTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_g_slice[0].m_reg_INJECTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_g_slice[0].m_reg_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_g_slice[0].m_reg_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_g_slice[0].m_reg_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_g_slice[0].m_reg_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_g_slice[0].m_reg_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_g_slice[0].m_reg_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_g_slice[0].m_reg_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_waddr1_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_waddr1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \g_slice[0].m_reg\ : label is "p0_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \g_slice[0].m_reg\ : label is "p0_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \g_slice[0].m_reg\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \g_slice[0].m_reg\ : label is 32768;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \g_slice[0].m_reg\ : label is "system_cam_input_0_0/inst/u_buf0/g_slice[0].m_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of \g_slice[0].m_reg\ : label is "block";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of \g_slice[0].m_reg\ : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \g_slice[0].m_reg\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \g_slice[0].m_reg\ : label is 4095;
  attribute ram_offset : integer;
  attribute ram_offset of \g_slice[0].m_reg\ : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \g_slice[0].m_reg\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \g_slice[0].m_reg\ : label is 7;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \rows_done[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rows_done[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rows_done[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rows_done[6]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \rows_done[7]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \rows_done[8]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rows_done[9]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rows_done[9]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rows_gray[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rows_gray[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \rows_gray[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \rows_gray[3]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \rows_gray[4]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \rows_gray[5]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \rows_gray[6]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \rows_gray[7]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \rows_gray[8]_i_1\ : label is "soft_lutpair14";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of waddr1_carry : label is 35;
  attribute ADDER_THRESHOLD of \waddr1_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \waddr1_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \waddr1_carry__2\ : label is 35;
  attribute SOFT_HLUTNM of \wx[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \wx[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \wx[3]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \wx[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \wx[6]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \wx[7]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \wx[9]_i_2\ : label is "soft_lutpair8";
begin
\frame_base[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => SR(0),
      I1 => \frame_base[15]_i_2_n_0\,
      I2 => \wx_reg_n_0_[2]\,
      I3 => \wx_reg_n_0_[3]\,
      I4 => \wx_reg_n_0_[6]\,
      I5 => \wx_reg_n_0_[7]\,
      O => \frame_base[15]_i_1_n_0\
    );
\frame_base[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \wx_reg_n_0_[9]\,
      I1 => \wx_reg_n_0_[8]\,
      I2 => \wx_reg_n_0_[1]\,
      I3 => \wx_reg_n_0_[0]\,
      I4 => \wx_reg_n_0_[4]\,
      I5 => \wx_reg_n_0_[5]\,
      O => \frame_base[15]_i_2_n_0\
    );
\frame_base_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => SR(0),
      D => \waddr_reg_n_0_[0]\,
      Q => frame_base0(0),
      R => \frame_base[15]_i_1_n_0\
    );
\frame_base_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => SR(0),
      D => \waddr_reg_n_0_[10]\,
      Q => frame_base0(10),
      R => \frame_base[15]_i_1_n_0\
    );
\frame_base_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => SR(0),
      D => \waddr_reg_n_0_[11]\,
      Q => frame_base0(11),
      R => \frame_base[15]_i_1_n_0\
    );
\frame_base_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => SR(0),
      D => p_0_in_0(0),
      Q => frame_base0(12),
      R => \frame_base[15]_i_1_n_0\
    );
\frame_base_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => SR(0),
      D => p_0_in_0(1),
      Q => frame_base0(13),
      R => \frame_base[15]_i_1_n_0\
    );
\frame_base_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => SR(0),
      D => p_0_in_0(2),
      Q => frame_base0(14),
      R => \frame_base[15]_i_1_n_0\
    );
\frame_base_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => SR(0),
      D => p_0_in_0(3),
      Q => frame_base0(15),
      R => \frame_base[15]_i_1_n_0\
    );
\frame_base_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => SR(0),
      D => \waddr_reg_n_0_[1]\,
      Q => frame_base0(1),
      R => \frame_base[15]_i_1_n_0\
    );
\frame_base_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => SR(0),
      D => \waddr_reg_n_0_[2]\,
      Q => frame_base0(2),
      R => \frame_base[15]_i_1_n_0\
    );
\frame_base_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => SR(0),
      D => \waddr_reg_n_0_[3]\,
      Q => frame_base0(3),
      S => \frame_base[15]_i_1_n_0\
    );
\frame_base_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => SR(0),
      D => \waddr_reg_n_0_[4]\,
      Q => frame_base0(4),
      R => \frame_base[15]_i_1_n_0\
    );
\frame_base_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => SR(0),
      D => \waddr_reg_n_0_[5]\,
      Q => frame_base0(5),
      R => \frame_base[15]_i_1_n_0\
    );
\frame_base_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => SR(0),
      D => \waddr_reg_n_0_[6]\,
      Q => frame_base0(6),
      S => \frame_base[15]_i_1_n_0\
    );
\frame_base_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => SR(0),
      D => \waddr_reg_n_0_[7]\,
      Q => frame_base0(7),
      S => \frame_base[15]_i_1_n_0\
    );
\frame_base_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => SR(0),
      D => \waddr_reg_n_0_[8]\,
      Q => frame_base0(8),
      R => \frame_base[15]_i_1_n_0\
    );
\frame_base_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => SR(0),
      D => \waddr_reg_n_0_[9]\,
      Q => frame_base0(9),
      R => \frame_base[15]_i_1_n_0\
    );
\g_slice[0].m_reg\: unisim.vcomponents.RAMB36E1
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
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14) => \waddr_reg_n_0_[11]\,
      ADDRARDADDR(13) => \waddr_reg_n_0_[10]\,
      ADDRARDADDR(12) => \waddr_reg_n_0_[9]\,
      ADDRARDADDR(11) => \waddr_reg_n_0_[8]\,
      ADDRARDADDR(10) => \waddr_reg_n_0_[7]\,
      ADDRARDADDR(9) => \waddr_reg_n_0_[6]\,
      ADDRARDADDR(8) => \waddr_reg_n_0_[5]\,
      ADDRARDADDR(7) => \waddr_reg_n_0_[4]\,
      ADDRARDADDR(6) => \waddr_reg_n_0_[3]\,
      ADDRARDADDR(5) => \waddr_reg_n_0_[2]\,
      ADDRARDADDR(4) => \waddr_reg_n_0_[1]\,
      ADDRARDADDR(3) => \waddr_reg_n_0_[0]\,
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => rd_addr0(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => \NLW_g_slice[0].m_reg_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_g_slice[0].m_reg_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clk,
      CLKBWRCLK => pclk,
      DBITERR => \NLW_g_slice[0].m_reg_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => \g_slice[0].m_reg_0\(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000011111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_g_slice[0].m_reg_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_g_slice[0].m_reg_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => rd_data0(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_g_slice[0].m_reg_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_g_slice[0].m_reg_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_g_slice[0].m_reg_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => E(0),
      ENBWREN => '1',
      INJECTDBITERR => \NLW_g_slice[0].m_reg_INJECTDBITERR_UNCONNECTED\,
      INJECTSBITERR => \NLW_g_slice[0].m_reg_INJECTSBITERR_UNCONNECTED\,
      RDADDRECC(8 downto 0) => \NLW_g_slice[0].m_reg_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_g_slice[0].m_reg_SBITERR_UNCONNECTED\,
      WEA(3) => p_1_in,
      WEA(2) => p_1_in,
      WEA(1) => p_1_in,
      WEA(0) => p_1_in,
      WEBWE(7 downto 0) => B"00000000"
    );
\g_slice[0].m_reg_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => p_0_in_0(2),
      I1 => p_0_in_0(3),
      I2 => p_0_in_0(1),
      I3 => p_0_in_0(0),
      O => p_1_in
    );
\rows_done[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rows_done_reg_n_0_[0]\,
      O => p_0_in(0)
    );
\rows_done[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \rows_done_reg_n_0_[0]\,
      I1 => \rows_done_reg_n_0_[1]\,
      I2 => \rows_done_reg_n_0_[2]\,
      O => p_0_in(2)
    );
\rows_done[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \rows_done_reg_n_0_[3]\,
      I1 => \rows_done_reg_n_0_[0]\,
      I2 => \rows_done_reg_n_0_[1]\,
      I3 => \rows_done_reg_n_0_[2]\,
      O => p_0_in(3)
    );
\rows_done[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \rows_done_reg_n_0_[4]\,
      I1 => \rows_done_reg_n_0_[3]\,
      I2 => \rows_done_reg_n_0_[0]\,
      I3 => \rows_done_reg_n_0_[1]\,
      I4 => \rows_done_reg_n_0_[2]\,
      O => p_0_in(4)
    );
\rows_done[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \rows_done_reg_n_0_[5]\,
      I1 => \rows_done_reg_n_0_[2]\,
      I2 => \rows_done_reg_n_0_[1]\,
      I3 => \rows_done_reg_n_0_[0]\,
      I4 => \rows_done_reg_n_0_[3]\,
      I5 => \rows_done_reg_n_0_[4]\,
      O => p_0_in(5)
    );
\rows_done[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \rows_done_reg_n_0_[6]\,
      I1 => \rows_done[9]_i_4_n_0\,
      O => p_0_in(6)
    );
\rows_done[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \rows_done_reg_n_0_[7]\,
      I1 => \rows_done[9]_i_4_n_0\,
      I2 => \rows_done_reg_n_0_[6]\,
      O => p_0_in(7)
    );
\rows_done[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => \rows_done_reg_n_0_[8]\,
      I1 => \rows_done_reg_n_0_[6]\,
      I2 => \rows_done[9]_i_4_n_0\,
      I3 => \rows_done_reg_n_0_[7]\,
      O => p_0_in(8)
    );
\rows_done[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \rows_done[9]_i_3_n_0\,
      I1 => \wx_reg_n_0_[3]\,
      I2 => \wx_reg_n_0_[9]\,
      I3 => \wx_reg[9]_0\(0),
      I4 => \wx[3]_i_2_n_0\,
      O => \rows_done[9]_i_1_n_0\
    );
\rows_done[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6AAAAAA"
    )
        port map (
      I0 => \rows_done_reg_n_0_[9]\,
      I1 => \rows_done_reg_n_0_[7]\,
      I2 => \rows_done[9]_i_4_n_0\,
      I3 => \rows_done_reg_n_0_[6]\,
      I4 => \rows_done_reg_n_0_[8]\,
      O => p_0_in(9)
    );
\rows_done[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFFFFF"
    )
        port map (
      I0 => \wx_reg_n_0_[5]\,
      I1 => \wx_reg_n_0_[4]\,
      I2 => \wx_reg_n_0_[2]\,
      I3 => \wx_reg_n_0_[1]\,
      I4 => \wx_reg_n_0_[0]\,
      O => \rows_done[9]_i_3_n_0\
    );
\rows_done[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \rows_done_reg_n_0_[4]\,
      I1 => \rows_done_reg_n_0_[3]\,
      I2 => \rows_done_reg_n_0_[0]\,
      I3 => \rows_done_reg_n_0_[1]\,
      I4 => \rows_done_reg_n_0_[2]\,
      I5 => \rows_done_reg_n_0_[5]\,
      O => \rows_done[9]_i_4_n_0\
    );
\rows_done_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rows_done[9]_i_1_n_0\,
      D => p_0_in(0),
      Q => \rows_done_reg_n_0_[0]\,
      R => SR(0)
    );
\rows_done_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rows_done[9]_i_1_n_0\,
      D => \rows_gray[0]_i_1_n_0\,
      Q => \rows_done_reg_n_0_[1]\,
      R => SR(0)
    );
\rows_done_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rows_done[9]_i_1_n_0\,
      D => p_0_in(2),
      Q => \rows_done_reg_n_0_[2]\,
      R => SR(0)
    );
\rows_done_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rows_done[9]_i_1_n_0\,
      D => p_0_in(3),
      Q => \rows_done_reg_n_0_[3]\,
      R => SR(0)
    );
\rows_done_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rows_done[9]_i_1_n_0\,
      D => p_0_in(4),
      Q => \rows_done_reg_n_0_[4]\,
      R => SR(0)
    );
\rows_done_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rows_done[9]_i_1_n_0\,
      D => p_0_in(5),
      Q => \rows_done_reg_n_0_[5]\,
      R => SR(0)
    );
\rows_done_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rows_done[9]_i_1_n_0\,
      D => p_0_in(6),
      Q => \rows_done_reg_n_0_[6]\,
      R => SR(0)
    );
\rows_done_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rows_done[9]_i_1_n_0\,
      D => p_0_in(7),
      Q => \rows_done_reg_n_0_[7]\,
      R => SR(0)
    );
\rows_done_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rows_done[9]_i_1_n_0\,
      D => p_0_in(8),
      Q => \rows_done_reg_n_0_[8]\,
      R => SR(0)
    );
\rows_done_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rows_done[9]_i_1_n_0\,
      D => p_0_in(9),
      Q => \rows_done_reg_n_0_[9]\,
      R => SR(0)
    );
\rows_gray[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rows_done_reg_n_0_[0]\,
      I1 => \rows_done_reg_n_0_[1]\,
      O => \rows_gray[0]_i_1_n_0\
    );
\rows_gray[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rows_done_reg_n_0_[1]\,
      I1 => \rows_done_reg_n_0_[2]\,
      O => \rows_gray[1]_i_1_n_0\
    );
\rows_gray[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rows_done_reg_n_0_[2]\,
      I1 => \rows_done_reg_n_0_[3]\,
      O => \rows_gray[2]_i_1_n_0\
    );
\rows_gray[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rows_done_reg_n_0_[3]\,
      I1 => \rows_done_reg_n_0_[4]\,
      O => \rows_gray[3]_i_1_n_0\
    );
\rows_gray[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rows_done_reg_n_0_[4]\,
      I1 => \rows_done_reg_n_0_[5]\,
      O => \rows_gray[4]_i_1_n_0\
    );
\rows_gray[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rows_done_reg_n_0_[5]\,
      I1 => \rows_done_reg_n_0_[6]\,
      O => \rows_gray[5]_i_1_n_0\
    );
\rows_gray[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rows_done_reg_n_0_[6]\,
      I1 => \rows_done_reg_n_0_[7]\,
      O => \rows_gray[6]_i_1_n_0\
    );
\rows_gray[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rows_done_reg_n_0_[7]\,
      I1 => \rows_done_reg_n_0_[8]\,
      O => \rows_gray[7]_i_1_n_0\
    );
\rows_gray[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rows_done_reg_n_0_[8]\,
      I1 => \rows_done_reg_n_0_[9]\,
      O => \rows_gray[8]_i_1_n_0\
    );
\rows_gray_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rows_gray[0]_i_1_n_0\,
      Q => rows_gray0(0),
      R => '0'
    );
\rows_gray_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rows_gray[1]_i_1_n_0\,
      Q => rows_gray0(1),
      R => '0'
    );
\rows_gray_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rows_gray[2]_i_1_n_0\,
      Q => rows_gray0(2),
      R => '0'
    );
\rows_gray_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rows_gray[3]_i_1_n_0\,
      Q => rows_gray0(3),
      R => '0'
    );
\rows_gray_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rows_gray[4]_i_1_n_0\,
      Q => rows_gray0(4),
      R => '0'
    );
\rows_gray_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rows_gray[5]_i_1_n_0\,
      Q => rows_gray0(5),
      R => '0'
    );
\rows_gray_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rows_gray[6]_i_1_n_0\,
      Q => rows_gray0(6),
      R => '0'
    );
\rows_gray_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rows_gray[7]_i_1_n_0\,
      Q => rows_gray0(7),
      R => '0'
    );
\rows_gray_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rows_gray[8]_i_1_n_0\,
      Q => rows_gray0(8),
      R => '0'
    );
\rows_gray_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rows_done_reg_n_0_[9]\,
      Q => rows_gray0(9),
      R => '0'
    );
sof_toggle_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => sof_toggle_reg_0,
      Q => sof_toggle0,
      R => '0'
    );
waddr1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => waddr1_carry_n_0,
      CO(2) => waddr1_carry_n_1,
      CO(1) => waddr1_carry_n_2,
      CO(0) => waddr1_carry_n_3,
      CYINIT => \waddr_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3) => \waddr_reg_n_0_[4]\,
      S(2) => \waddr_reg_n_0_[3]\,
      S(1) => \waddr_reg_n_0_[2]\,
      S(0) => \waddr_reg_n_0_[1]\
    );
\waddr1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => waddr1_carry_n_0,
      CO(3) => \waddr1_carry__0_n_0\,
      CO(2) => \waddr1_carry__0_n_1\,
      CO(1) => \waddr1_carry__0_n_2\,
      CO(0) => \waddr1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \waddr_reg_n_0_[8]\,
      S(2) => \waddr_reg_n_0_[7]\,
      S(1) => \waddr_reg_n_0_[6]\,
      S(0) => \waddr_reg_n_0_[5]\
    );
\waddr1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \waddr1_carry__0_n_0\,
      CO(3) => \waddr1_carry__1_n_0\,
      CO(2) => \waddr1_carry__1_n_1\,
      CO(1) => \waddr1_carry__1_n_2\,
      CO(0) => \waddr1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3) => p_0_in_0(0),
      S(2) => \waddr_reg_n_0_[11]\,
      S(1) => \waddr_reg_n_0_[10]\,
      S(0) => \waddr_reg_n_0_[9]\
    );
\waddr1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \waddr1_carry__1_n_0\,
      CO(3 downto 2) => \NLW_waddr1_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \waddr1_carry__2_n_2\,
      CO(0) => \waddr1_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_waddr1_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(15 downto 13),
      S(3) => '0',
      S(2 downto 0) => p_0_in_0(3 downto 1)
    );
\waddr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => \waddr[15]_i_2_n_0\,
      I1 => \waddr[15]_i_3_n_0\,
      I2 => \waddr[15]_i_4_n_0\,
      I3 => \waddr[15]_i_5_n_0\,
      I4 => \waddr_reg_n_0_[0]\,
      O => \waddr[0]_i_1_n_0\
    );
\waddr[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \waddr[15]_i_2_n_0\,
      I1 => \waddr[15]_i_3_n_0\,
      I2 => \waddr[15]_i_4_n_0\,
      I3 => \waddr[15]_i_5_n_0\,
      I4 => data0(10),
      O => \waddr[10]_i_1_n_0\
    );
\waddr[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \waddr[15]_i_2_n_0\,
      I1 => \waddr[15]_i_3_n_0\,
      I2 => \waddr[15]_i_4_n_0\,
      I3 => \waddr[15]_i_5_n_0\,
      I4 => data0(11),
      O => \waddr[11]_i_1_n_0\
    );
\waddr[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \waddr[15]_i_2_n_0\,
      I1 => \waddr[15]_i_3_n_0\,
      I2 => \waddr[15]_i_4_n_0\,
      I3 => \waddr[15]_i_5_n_0\,
      I4 => data0(12),
      O => \waddr[12]_i_1_n_0\
    );
\waddr[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \waddr[15]_i_2_n_0\,
      I1 => \waddr[15]_i_3_n_0\,
      I2 => \waddr[15]_i_4_n_0\,
      I3 => \waddr[15]_i_5_n_0\,
      I4 => data0(13),
      O => \waddr[13]_i_1_n_0\
    );
\waddr[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \waddr[15]_i_2_n_0\,
      I1 => \waddr[15]_i_3_n_0\,
      I2 => \waddr[15]_i_4_n_0\,
      I3 => \waddr[15]_i_5_n_0\,
      I4 => data0(14),
      O => \waddr[14]_i_1_n_0\
    );
\waddr[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \waddr[15]_i_2_n_0\,
      I1 => \waddr[15]_i_3_n_0\,
      I2 => \waddr[15]_i_4_n_0\,
      I3 => \waddr[15]_i_5_n_0\,
      I4 => data0(15),
      O => \waddr[15]_i_1_n_0\
    );
\waddr[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \waddr_reg_n_0_[10]\,
      I1 => \waddr_reg_n_0_[11]\,
      I2 => \waddr_reg_n_0_[4]\,
      I3 => \waddr_reg_n_0_[3]\,
      O => \waddr[15]_i_2_n_0\
    );
\waddr[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \waddr_reg_n_0_[0]\,
      I1 => \waddr_reg_n_0_[6]\,
      I2 => \waddr_reg_n_0_[2]\,
      I3 => \waddr_reg_n_0_[1]\,
      O => \waddr[15]_i_3_n_0\
    );
\waddr[15]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_0_in_0(0),
      I1 => \waddr_reg_n_0_[9]\,
      I2 => p_0_in_0(3),
      I3 => p_0_in_0(1),
      O => \waddr[15]_i_4_n_0\
    );
\waddr[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \waddr_reg_n_0_[5]\,
      I1 => p_0_in_0(2),
      I2 => \waddr_reg_n_0_[8]\,
      I3 => \waddr_reg_n_0_[7]\,
      O => \waddr[15]_i_5_n_0\
    );
\waddr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \waddr[15]_i_2_n_0\,
      I1 => \waddr[15]_i_3_n_0\,
      I2 => \waddr[15]_i_4_n_0\,
      I3 => \waddr[15]_i_5_n_0\,
      I4 => data0(1),
      O => \waddr[1]_i_1_n_0\
    );
\waddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \waddr[15]_i_2_n_0\,
      I1 => \waddr[15]_i_3_n_0\,
      I2 => \waddr[15]_i_4_n_0\,
      I3 => \waddr[15]_i_5_n_0\,
      I4 => data0(2),
      O => \waddr[2]_i_1_n_0\
    );
\waddr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \waddr[15]_i_2_n_0\,
      I1 => \waddr[15]_i_3_n_0\,
      I2 => \waddr[15]_i_4_n_0\,
      I3 => \waddr[15]_i_5_n_0\,
      I4 => data0(3),
      O => \waddr[3]_i_1_n_0\
    );
\waddr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \waddr[15]_i_2_n_0\,
      I1 => \waddr[15]_i_3_n_0\,
      I2 => \waddr[15]_i_4_n_0\,
      I3 => \waddr[15]_i_5_n_0\,
      I4 => data0(4),
      O => \waddr[4]_i_1_n_0\
    );
\waddr[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \waddr[15]_i_2_n_0\,
      I1 => \waddr[15]_i_3_n_0\,
      I2 => \waddr[15]_i_4_n_0\,
      I3 => \waddr[15]_i_5_n_0\,
      I4 => data0(5),
      O => \waddr[5]_i_1_n_0\
    );
\waddr[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \waddr[15]_i_2_n_0\,
      I1 => \waddr[15]_i_3_n_0\,
      I2 => \waddr[15]_i_4_n_0\,
      I3 => \waddr[15]_i_5_n_0\,
      I4 => data0(6),
      O => \waddr[6]_i_1_n_0\
    );
\waddr[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \waddr[15]_i_2_n_0\,
      I1 => \waddr[15]_i_3_n_0\,
      I2 => \waddr[15]_i_4_n_0\,
      I3 => \waddr[15]_i_5_n_0\,
      I4 => data0(7),
      O => \waddr[7]_i_1_n_0\
    );
\waddr[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \waddr[15]_i_2_n_0\,
      I1 => \waddr[15]_i_3_n_0\,
      I2 => \waddr[15]_i_4_n_0\,
      I3 => \waddr[15]_i_5_n_0\,
      I4 => data0(8),
      O => \waddr[8]_i_1_n_0\
    );
\waddr[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \waddr[15]_i_2_n_0\,
      I1 => \waddr[15]_i_3_n_0\,
      I2 => \waddr[15]_i_4_n_0\,
      I3 => \waddr[15]_i_5_n_0\,
      I4 => data0(9),
      O => \waddr[9]_i_1_n_0\
    );
\waddr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \waddr[0]_i_1_n_0\,
      Q => \waddr_reg_n_0_[0]\,
      R => \frame_base[15]_i_1_n_0\
    );
\waddr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \waddr[10]_i_1_n_0\,
      Q => \waddr_reg_n_0_[10]\,
      R => \frame_base[15]_i_1_n_0\
    );
\waddr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \waddr[11]_i_1_n_0\,
      Q => \waddr_reg_n_0_[11]\,
      R => \frame_base[15]_i_1_n_0\
    );
\waddr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \waddr[12]_i_1_n_0\,
      Q => p_0_in_0(0),
      R => \frame_base[15]_i_1_n_0\
    );
\waddr_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \waddr[13]_i_1_n_0\,
      Q => p_0_in_0(1),
      R => \frame_base[15]_i_1_n_0\
    );
\waddr_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \waddr[14]_i_1_n_0\,
      Q => p_0_in_0(2),
      R => \frame_base[15]_i_1_n_0\
    );
\waddr_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \waddr[15]_i_1_n_0\,
      Q => p_0_in_0(3),
      R => \frame_base[15]_i_1_n_0\
    );
\waddr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \waddr[1]_i_1_n_0\,
      Q => \waddr_reg_n_0_[1]\,
      R => \frame_base[15]_i_1_n_0\
    );
\waddr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \waddr[2]_i_1_n_0\,
      Q => \waddr_reg_n_0_[2]\,
      R => \frame_base[15]_i_1_n_0\
    );
\waddr_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \waddr[3]_i_1_n_0\,
      Q => \waddr_reg_n_0_[3]\,
      S => \frame_base[15]_i_1_n_0\
    );
\waddr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \waddr[4]_i_1_n_0\,
      Q => \waddr_reg_n_0_[4]\,
      R => \frame_base[15]_i_1_n_0\
    );
\waddr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \waddr[5]_i_1_n_0\,
      Q => \waddr_reg_n_0_[5]\,
      R => \frame_base[15]_i_1_n_0\
    );
\waddr_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \waddr[6]_i_1_n_0\,
      Q => \waddr_reg_n_0_[6]\,
      S => \frame_base[15]_i_1_n_0\
    );
\waddr_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \waddr[7]_i_1_n_0\,
      Q => \waddr_reg_n_0_[7]\,
      S => \frame_base[15]_i_1_n_0\
    );
\waddr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \waddr[8]_i_1_n_0\,
      Q => \waddr_reg_n_0_[8]\,
      R => \frame_base[15]_i_1_n_0\
    );
\waddr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \waddr[9]_i_1_n_0\,
      Q => \waddr_reg_n_0_[9]\,
      R => \frame_base[15]_i_1_n_0\
    );
\wx[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wx_reg_n_0_[0]\,
      O => wx(0)
    );
\wx[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wx_reg_n_0_[1]\,
      I1 => \wx_reg_n_0_[0]\,
      O => wx(1)
    );
\wx[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \wx_reg_n_0_[2]\,
      I1 => \wx_reg_n_0_[1]\,
      I2 => \wx_reg_n_0_[0]\,
      O => wx(2)
    );
\wx[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00000000FFFE"
    )
        port map (
      I0 => \wx_reg_n_0_[9]\,
      I1 => \wx[3]_i_2_n_0\,
      I2 => \wx_reg_n_0_[5]\,
      I3 => \wx_reg_n_0_[4]\,
      I4 => \wx[6]_i_2_n_0\,
      I5 => \wx_reg_n_0_[3]\,
      O => wx(3)
    );
\wx[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \wx_reg_n_0_[7]\,
      I1 => \wx_reg_n_0_[8]\,
      I2 => \wx_reg_n_0_[6]\,
      O => \wx[3]_i_2_n_0\
    );
\wx[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \wx_reg_n_0_[4]\,
      I1 => \wx_reg_n_0_[2]\,
      I2 => \wx_reg_n_0_[1]\,
      I3 => \wx_reg_n_0_[0]\,
      I4 => \wx_reg_n_0_[3]\,
      O => wx(4)
    );
\wx[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \wx_reg_n_0_[5]\,
      I1 => \wx_reg_n_0_[4]\,
      I2 => \wx_reg_n_0_[2]\,
      I3 => \wx_reg_n_0_[1]\,
      I4 => \wx_reg_n_0_[0]\,
      I5 => \wx_reg_n_0_[3]\,
      O => \wx[5]_i_1_n_0\
    );
\wx[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FF0800A2EE0800"
    )
        port map (
      I0 => \wx_reg_n_0_[5]\,
      I1 => \wx_reg_n_0_[3]\,
      I2 => \wx[6]_i_2_n_0\,
      I3 => \wx_reg_n_0_[4]\,
      I4 => \wx_reg_n_0_[6]\,
      I5 => \wx[7]_i_2_n_0\,
      O => wx(6)
    );
\wx[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \wx_reg_n_0_[0]\,
      I1 => \wx_reg_n_0_[1]\,
      I2 => \wx_reg_n_0_[2]\,
      O => \wx[6]_i_2_n_0\
    );
\wx[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF200000000FFF2"
    )
        port map (
      I0 => \wx_reg_n_0_[3]\,
      I1 => \wx_reg_n_0_[4]\,
      I2 => \wx_reg_n_0_[5]\,
      I3 => \wx[7]_i_2_n_0\,
      I4 => \wx[7]_i_3_n_0\,
      I5 => \wx_reg_n_0_[7]\,
      O => wx(7)
    );
\wx[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
        port map (
      I0 => \rows_done[9]_i_3_n_0\,
      I1 => \wx_reg_n_0_[7]\,
      I2 => \wx_reg_n_0_[8]\,
      I3 => \wx_reg_n_0_[6]\,
      I4 => \wx_reg_n_0_[9]\,
      O => \wx[7]_i_2_n_0\
    );
\wx[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FFFFFF"
    )
        port map (
      I0 => \wx_reg_n_0_[5]\,
      I1 => \wx_reg_n_0_[3]\,
      I2 => \wx[6]_i_2_n_0\,
      I3 => \wx_reg_n_0_[4]\,
      I4 => \wx_reg_n_0_[6]\,
      O => \wx[7]_i_3_n_0\
    );
\wx[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6AAAAAA"
    )
        port map (
      I0 => \wx_reg_n_0_[8]\,
      I1 => \wx_reg_n_0_[6]\,
      I2 => \wx[9]_i_2_n_0\,
      I3 => \wx_reg_n_0_[5]\,
      I4 => \wx_reg_n_0_[7]\,
      O => wx(8)
    );
\wx[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6AAAAAAAAAAAAAA"
    )
        port map (
      I0 => \wx_reg_n_0_[9]\,
      I1 => \wx_reg_n_0_[6]\,
      I2 => \wx[9]_i_2_n_0\,
      I3 => \wx_reg_n_0_[5]\,
      I4 => \wx_reg_n_0_[7]\,
      I5 => \wx_reg_n_0_[8]\,
      O => wx(9)
    );
\wx[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \wx_reg_n_0_[3]\,
      I1 => \wx_reg_n_0_[0]\,
      I2 => \wx_reg_n_0_[1]\,
      I3 => \wx_reg_n_0_[2]\,
      I4 => \wx_reg_n_0_[4]\,
      O => \wx[9]_i_2_n_0\
    );
\wx_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wx_reg[9]_0\(0),
      D => wx(0),
      Q => \wx_reg_n_0_[0]\,
      R => SR(0)
    );
\wx_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wx_reg[9]_0\(0),
      D => wx(1),
      Q => \wx_reg_n_0_[1]\,
      R => SR(0)
    );
\wx_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wx_reg[9]_0\(0),
      D => wx(2),
      Q => \wx_reg_n_0_[2]\,
      R => SR(0)
    );
\wx_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wx_reg[9]_0\(0),
      D => wx(3),
      Q => \wx_reg_n_0_[3]\,
      R => SR(0)
    );
\wx_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wx_reg[9]_0\(0),
      D => wx(4),
      Q => \wx_reg_n_0_[4]\,
      R => SR(0)
    );
\wx_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wx_reg[9]_0\(0),
      D => \wx[5]_i_1_n_0\,
      Q => \wx_reg_n_0_[5]\,
      R => SR(0)
    );
\wx_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wx_reg[9]_0\(0),
      D => wx(6),
      Q => \wx_reg_n_0_[6]\,
      R => SR(0)
    );
\wx_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wx_reg[9]_0\(0),
      D => wx(7),
      Q => \wx_reg_n_0_[7]\,
      R => SR(0)
    );
\wx_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wx_reg[9]_0\(0),
      D => wx(8),
      Q => \wx_reg_n_0_[8]\,
      R => SR(0)
    );
\wx_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wx_reg[9]_0\(0),
      D => wx(9),
      Q => \wx_reg_n_0_[9]\,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_cam_input_0_0_rect_linebuf_1 is
  port (
    rd_data1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sof_toggle1 : out STD_LOGIC;
    frame_base1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rows_gray1 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    clk : in STD_LOGIC;
    pclk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_addr1 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \g_slice[0].m_reg_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sof_toggle_reg_0 : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \wx_reg[9]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_cam_input_0_0_rect_linebuf_1 : entity is "rect_linebuf";
end system_cam_input_0_0_rect_linebuf_1;

architecture STRUCTURE of system_cam_input_0_0_rect_linebuf_1 is
  signal data0 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \frame_base[15]_i_1__0_n_0\ : STD_LOGIC;
  signal \frame_base[15]_i_2__0_n_0\ : STD_LOGIC;
  signal \frame_base[15]_i_3_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal p_1_in : STD_LOGIC;
  signal \rows_done[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \rows_done[9]_i_3__0_n_0\ : STD_LOGIC;
  signal \rows_done[9]_i_4__0_n_0\ : STD_LOGIC;
  signal \rows_done_reg_n_0_[0]\ : STD_LOGIC;
  signal \rows_done_reg_n_0_[1]\ : STD_LOGIC;
  signal \rows_done_reg_n_0_[2]\ : STD_LOGIC;
  signal \rows_done_reg_n_0_[3]\ : STD_LOGIC;
  signal \rows_done_reg_n_0_[4]\ : STD_LOGIC;
  signal \rows_done_reg_n_0_[5]\ : STD_LOGIC;
  signal \rows_done_reg_n_0_[6]\ : STD_LOGIC;
  signal \rows_done_reg_n_0_[7]\ : STD_LOGIC;
  signal \rows_done_reg_n_0_[8]\ : STD_LOGIC;
  signal \rows_done_reg_n_0_[9]\ : STD_LOGIC;
  signal \rows_gray[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \rows_gray[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \rows_gray[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \rows_gray[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \rows_gray[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \rows_gray[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \rows_gray[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \rows_gray[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \rows_gray[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \waddr1_carry__0_n_0\ : STD_LOGIC;
  signal \waddr1_carry__0_n_1\ : STD_LOGIC;
  signal \waddr1_carry__0_n_2\ : STD_LOGIC;
  signal \waddr1_carry__0_n_3\ : STD_LOGIC;
  signal \waddr1_carry__1_n_0\ : STD_LOGIC;
  signal \waddr1_carry__1_n_1\ : STD_LOGIC;
  signal \waddr1_carry__1_n_2\ : STD_LOGIC;
  signal \waddr1_carry__1_n_3\ : STD_LOGIC;
  signal \waddr1_carry__2_n_2\ : STD_LOGIC;
  signal \waddr1_carry__2_n_3\ : STD_LOGIC;
  signal waddr1_carry_n_0 : STD_LOGIC;
  signal waddr1_carry_n_1 : STD_LOGIC;
  signal waddr1_carry_n_2 : STD_LOGIC;
  signal waddr1_carry_n_3 : STD_LOGIC;
  signal \waddr[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \waddr[10]_i_1__0_n_0\ : STD_LOGIC;
  signal \waddr[11]_i_1__0_n_0\ : STD_LOGIC;
  signal \waddr[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \waddr[13]_i_1__0_n_0\ : STD_LOGIC;
  signal \waddr[14]_i_1__0_n_0\ : STD_LOGIC;
  signal \waddr[15]_i_1__0_n_0\ : STD_LOGIC;
  signal \waddr[15]_i_2__0_n_0\ : STD_LOGIC;
  signal \waddr[15]_i_3__0_n_0\ : STD_LOGIC;
  signal \waddr[15]_i_4__0_n_0\ : STD_LOGIC;
  signal \waddr[15]_i_5__0_n_0\ : STD_LOGIC;
  signal \waddr[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \waddr[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \waddr[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \waddr[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \waddr[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \waddr[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \waddr[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \waddr[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \waddr[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \waddr_reg_n_0_[0]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[10]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[11]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[1]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[3]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[4]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[5]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[6]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[7]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[8]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[9]\ : STD_LOGIC;
  signal wx : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \wx[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \wx[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \wx[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \wx[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \wx[9]_i_2__0_n_0\ : STD_LOGIC;
  signal \wx_reg_n_0_[0]\ : STD_LOGIC;
  signal \wx_reg_n_0_[1]\ : STD_LOGIC;
  signal \wx_reg_n_0_[2]\ : STD_LOGIC;
  signal \wx_reg_n_0_[3]\ : STD_LOGIC;
  signal \wx_reg_n_0_[4]\ : STD_LOGIC;
  signal \wx_reg_n_0_[5]\ : STD_LOGIC;
  signal \wx_reg_n_0_[6]\ : STD_LOGIC;
  signal \wx_reg_n_0_[7]\ : STD_LOGIC;
  signal \wx_reg_n_0_[8]\ : STD_LOGIC;
  signal \wx_reg_n_0_[9]\ : STD_LOGIC;
  signal \NLW_g_slice[0].m_reg_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_g_slice[0].m_reg_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_g_slice[0].m_reg_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_g_slice[0].m_reg_INJECTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_g_slice[0].m_reg_INJECTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_g_slice[0].m_reg_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_g_slice[0].m_reg_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_g_slice[0].m_reg_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_g_slice[0].m_reg_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_g_slice[0].m_reg_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_g_slice[0].m_reg_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_g_slice[0].m_reg_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_waddr1_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_waddr1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \g_slice[0].m_reg\ : label is "p0_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \g_slice[0].m_reg\ : label is "p0_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \g_slice[0].m_reg\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \g_slice[0].m_reg\ : label is 32768;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \g_slice[0].m_reg\ : label is "system_cam_input_0_0/inst/u_buf1/g_slice[0].m_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of \g_slice[0].m_reg\ : label is "block";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of \g_slice[0].m_reg\ : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \g_slice[0].m_reg\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \g_slice[0].m_reg\ : label is 4095;
  attribute ram_offset : integer;
  attribute ram_offset of \g_slice[0].m_reg\ : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \g_slice[0].m_reg\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \g_slice[0].m_reg\ : label is 7;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \rows_done[2]_i_1__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \rows_done[3]_i_1__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \rows_done[4]_i_1__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \rows_done[6]_i_1__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \rows_done[7]_i_1__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \rows_done[8]_i_1__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \rows_done[9]_i_2__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \rows_gray[0]_i_1__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \rows_gray[1]_i_1__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \rows_gray[2]_i_1__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \rows_gray[3]_i_1__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \rows_gray[4]_i_1__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \rows_gray[5]_i_1__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \rows_gray[6]_i_1__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \rows_gray[7]_i_1__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \rows_gray[8]_i_1__0\ : label is "soft_lutpair25";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of waddr1_carry : label is 35;
  attribute ADDER_THRESHOLD of \waddr1_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \waddr1_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \waddr1_carry__2\ : label is 35;
  attribute SOFT_HLUTNM of \wx[0]_i_1__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \wx[1]_i_1__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \wx[2]_i_1__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \wx[3]_i_2__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \wx[4]_i_1__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \wx[6]_i_2__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \wx[8]_i_1__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \wx[9]_i_2__0\ : label is "soft_lutpair19";
begin
\frame_base[15]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA8AAAAAAAA"
    )
        port map (
      I0 => SR(0),
      I1 => \wx_reg_n_0_[1]\,
      I2 => \wx_reg_n_0_[0]\,
      I3 => \wx_reg_n_0_[2]\,
      I4 => \frame_base[15]_i_2__0_n_0\,
      I5 => \frame_base[15]_i_3_n_0\,
      O => \frame_base[15]_i_1__0_n_0\
    );
\frame_base[15]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \wx_reg_n_0_[9]\,
      I1 => \wx_reg_n_0_[8]\,
      I2 => \wx_reg_n_0_[6]\,
      I3 => \wx_reg_n_0_[7]\,
      O => \frame_base[15]_i_2__0_n_0\
    );
\frame_base[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \wx_reg_n_0_[3]\,
      I1 => \wx_reg_n_0_[5]\,
      I2 => \wx_reg_n_0_[4]\,
      O => \frame_base[15]_i_3_n_0\
    );
\frame_base_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => SR(0),
      D => \waddr_reg_n_0_[0]\,
      Q => frame_base1(0),
      R => \frame_base[15]_i_1__0_n_0\
    );
\frame_base_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => SR(0),
      D => \waddr_reg_n_0_[10]\,
      Q => frame_base1(10),
      R => \frame_base[15]_i_1__0_n_0\
    );
\frame_base_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => SR(0),
      D => \waddr_reg_n_0_[11]\,
      Q => frame_base1(11),
      R => \frame_base[15]_i_1__0_n_0\
    );
\frame_base_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => SR(0),
      D => p_0_in(0),
      Q => frame_base1(12),
      R => \frame_base[15]_i_1__0_n_0\
    );
\frame_base_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => SR(0),
      D => p_0_in(1),
      Q => frame_base1(13),
      R => \frame_base[15]_i_1__0_n_0\
    );
\frame_base_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => SR(0),
      D => p_0_in(2),
      Q => frame_base1(14),
      R => \frame_base[15]_i_1__0_n_0\
    );
\frame_base_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => SR(0),
      D => p_0_in(3),
      Q => frame_base1(15),
      R => \frame_base[15]_i_1__0_n_0\
    );
\frame_base_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => SR(0),
      D => \waddr_reg_n_0_[1]\,
      Q => frame_base1(1),
      R => \frame_base[15]_i_1__0_n_0\
    );
\frame_base_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => SR(0),
      D => \waddr_reg_n_0_[2]\,
      Q => frame_base1(2),
      R => \frame_base[15]_i_1__0_n_0\
    );
\frame_base_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => SR(0),
      D => \waddr_reg_n_0_[3]\,
      Q => frame_base1(3),
      S => \frame_base[15]_i_1__0_n_0\
    );
\frame_base_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => SR(0),
      D => \waddr_reg_n_0_[4]\,
      Q => frame_base1(4),
      R => \frame_base[15]_i_1__0_n_0\
    );
\frame_base_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => SR(0),
      D => \waddr_reg_n_0_[5]\,
      Q => frame_base1(5),
      R => \frame_base[15]_i_1__0_n_0\
    );
\frame_base_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => SR(0),
      D => \waddr_reg_n_0_[6]\,
      Q => frame_base1(6),
      S => \frame_base[15]_i_1__0_n_0\
    );
\frame_base_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => SR(0),
      D => \waddr_reg_n_0_[7]\,
      Q => frame_base1(7),
      S => \frame_base[15]_i_1__0_n_0\
    );
\frame_base_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => SR(0),
      D => \waddr_reg_n_0_[8]\,
      Q => frame_base1(8),
      R => \frame_base[15]_i_1__0_n_0\
    );
\frame_base_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => SR(0),
      D => \waddr_reg_n_0_[9]\,
      Q => frame_base1(9),
      R => \frame_base[15]_i_1__0_n_0\
    );
\g_slice[0].m_reg\: unisim.vcomponents.RAMB36E1
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
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14) => \waddr_reg_n_0_[11]\,
      ADDRARDADDR(13) => \waddr_reg_n_0_[10]\,
      ADDRARDADDR(12) => \waddr_reg_n_0_[9]\,
      ADDRARDADDR(11) => \waddr_reg_n_0_[8]\,
      ADDRARDADDR(10) => \waddr_reg_n_0_[7]\,
      ADDRARDADDR(9) => \waddr_reg_n_0_[6]\,
      ADDRARDADDR(8) => \waddr_reg_n_0_[5]\,
      ADDRARDADDR(7) => \waddr_reg_n_0_[4]\,
      ADDRARDADDR(6) => \waddr_reg_n_0_[3]\,
      ADDRARDADDR(5) => \waddr_reg_n_0_[2]\,
      ADDRARDADDR(4) => \waddr_reg_n_0_[1]\,
      ADDRARDADDR(3) => \waddr_reg_n_0_[0]\,
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => rd_addr1(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => \NLW_g_slice[0].m_reg_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_g_slice[0].m_reg_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clk,
      CLKBWRCLK => pclk,
      DBITERR => \NLW_g_slice[0].m_reg_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => \g_slice[0].m_reg_0\(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000011111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_g_slice[0].m_reg_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_g_slice[0].m_reg_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => rd_data1(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_g_slice[0].m_reg_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_g_slice[0].m_reg_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_g_slice[0].m_reg_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => E(0),
      ENBWREN => '1',
      INJECTDBITERR => \NLW_g_slice[0].m_reg_INJECTDBITERR_UNCONNECTED\,
      INJECTSBITERR => \NLW_g_slice[0].m_reg_INJECTSBITERR_UNCONNECTED\,
      RDADDRECC(8 downto 0) => \NLW_g_slice[0].m_reg_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_g_slice[0].m_reg_SBITERR_UNCONNECTED\,
      WEA(3) => p_1_in,
      WEA(2) => p_1_in,
      WEA(1) => p_1_in,
      WEA(0) => p_1_in,
      WEBWE(7 downto 0) => B"00000000"
    );
\g_slice[0].m_reg_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(3),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      O => p_1_in
    );
\rows_done[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rows_done_reg_n_0_[0]\,
      O => \p_0_in__0\(0)
    );
\rows_done[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \rows_done_reg_n_0_[0]\,
      I1 => \rows_done_reg_n_0_[1]\,
      I2 => \rows_done_reg_n_0_[2]\,
      O => \p_0_in__0\(2)
    );
\rows_done[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \rows_done_reg_n_0_[3]\,
      I1 => \rows_done_reg_n_0_[0]\,
      I2 => \rows_done_reg_n_0_[1]\,
      I3 => \rows_done_reg_n_0_[2]\,
      O => \p_0_in__0\(3)
    );
\rows_done[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \rows_done_reg_n_0_[4]\,
      I1 => \rows_done_reg_n_0_[3]\,
      I2 => \rows_done_reg_n_0_[0]\,
      I3 => \rows_done_reg_n_0_[1]\,
      I4 => \rows_done_reg_n_0_[2]\,
      O => \p_0_in__0\(4)
    );
\rows_done[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \rows_done_reg_n_0_[5]\,
      I1 => \rows_done_reg_n_0_[2]\,
      I2 => \rows_done_reg_n_0_[1]\,
      I3 => \rows_done_reg_n_0_[0]\,
      I4 => \rows_done_reg_n_0_[3]\,
      I5 => \rows_done_reg_n_0_[4]\,
      O => \p_0_in__0\(5)
    );
\rows_done[6]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \rows_done_reg_n_0_[6]\,
      I1 => \rows_done[9]_i_4__0_n_0\,
      O => \p_0_in__0\(6)
    );
\rows_done[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \rows_done_reg_n_0_[7]\,
      I1 => \rows_done[9]_i_4__0_n_0\,
      I2 => \rows_done_reg_n_0_[6]\,
      O => \p_0_in__0\(7)
    );
\rows_done[8]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => \rows_done_reg_n_0_[8]\,
      I1 => \rows_done_reg_n_0_[6]\,
      I2 => \rows_done[9]_i_4__0_n_0\,
      I3 => \rows_done_reg_n_0_[7]\,
      O => \p_0_in__0\(8)
    );
\rows_done[9]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000000000"
    )
        port map (
      I0 => \rows_done[9]_i_3__0_n_0\,
      I1 => \wx_reg_n_0_[9]\,
      I2 => \wx_reg[9]_0\(0),
      I3 => \wx_reg_n_0_[7]\,
      I4 => \wx_reg_n_0_[8]\,
      I5 => \wx_reg_n_0_[6]\,
      O => \rows_done[9]_i_1__0_n_0\
    );
\rows_done[9]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6AAAAAA"
    )
        port map (
      I0 => \rows_done_reg_n_0_[9]\,
      I1 => \rows_done_reg_n_0_[7]\,
      I2 => \rows_done[9]_i_4__0_n_0\,
      I3 => \rows_done_reg_n_0_[6]\,
      I4 => \rows_done_reg_n_0_[8]\,
      O => \p_0_in__0\(9)
    );
\rows_done[9]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \wx_reg_n_0_[4]\,
      I1 => \wx_reg_n_0_[5]\,
      I2 => \wx_reg_n_0_[3]\,
      I3 => \wx_reg_n_0_[2]\,
      I4 => \wx_reg_n_0_[1]\,
      I5 => \wx_reg_n_0_[0]\,
      O => \rows_done[9]_i_3__0_n_0\
    );
\rows_done[9]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \rows_done_reg_n_0_[4]\,
      I1 => \rows_done_reg_n_0_[3]\,
      I2 => \rows_done_reg_n_0_[0]\,
      I3 => \rows_done_reg_n_0_[1]\,
      I4 => \rows_done_reg_n_0_[2]\,
      I5 => \rows_done_reg_n_0_[5]\,
      O => \rows_done[9]_i_4__0_n_0\
    );
\rows_done_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rows_done[9]_i_1__0_n_0\,
      D => \p_0_in__0\(0),
      Q => \rows_done_reg_n_0_[0]\,
      R => SR(0)
    );
\rows_done_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rows_done[9]_i_1__0_n_0\,
      D => \rows_gray[0]_i_1__0_n_0\,
      Q => \rows_done_reg_n_0_[1]\,
      R => SR(0)
    );
\rows_done_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rows_done[9]_i_1__0_n_0\,
      D => \p_0_in__0\(2),
      Q => \rows_done_reg_n_0_[2]\,
      R => SR(0)
    );
\rows_done_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rows_done[9]_i_1__0_n_0\,
      D => \p_0_in__0\(3),
      Q => \rows_done_reg_n_0_[3]\,
      R => SR(0)
    );
\rows_done_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rows_done[9]_i_1__0_n_0\,
      D => \p_0_in__0\(4),
      Q => \rows_done_reg_n_0_[4]\,
      R => SR(0)
    );
\rows_done_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rows_done[9]_i_1__0_n_0\,
      D => \p_0_in__0\(5),
      Q => \rows_done_reg_n_0_[5]\,
      R => SR(0)
    );
\rows_done_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rows_done[9]_i_1__0_n_0\,
      D => \p_0_in__0\(6),
      Q => \rows_done_reg_n_0_[6]\,
      R => SR(0)
    );
\rows_done_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rows_done[9]_i_1__0_n_0\,
      D => \p_0_in__0\(7),
      Q => \rows_done_reg_n_0_[7]\,
      R => SR(0)
    );
\rows_done_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rows_done[9]_i_1__0_n_0\,
      D => \p_0_in__0\(8),
      Q => \rows_done_reg_n_0_[8]\,
      R => SR(0)
    );
\rows_done_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rows_done[9]_i_1__0_n_0\,
      D => \p_0_in__0\(9),
      Q => \rows_done_reg_n_0_[9]\,
      R => SR(0)
    );
\rows_gray[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rows_done_reg_n_0_[0]\,
      I1 => \rows_done_reg_n_0_[1]\,
      O => \rows_gray[0]_i_1__0_n_0\
    );
\rows_gray[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rows_done_reg_n_0_[1]\,
      I1 => \rows_done_reg_n_0_[2]\,
      O => \rows_gray[1]_i_1__0_n_0\
    );
\rows_gray[2]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rows_done_reg_n_0_[2]\,
      I1 => \rows_done_reg_n_0_[3]\,
      O => \rows_gray[2]_i_1__0_n_0\
    );
\rows_gray[3]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rows_done_reg_n_0_[3]\,
      I1 => \rows_done_reg_n_0_[4]\,
      O => \rows_gray[3]_i_1__0_n_0\
    );
\rows_gray[4]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rows_done_reg_n_0_[4]\,
      I1 => \rows_done_reg_n_0_[5]\,
      O => \rows_gray[4]_i_1__0_n_0\
    );
\rows_gray[5]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rows_done_reg_n_0_[5]\,
      I1 => \rows_done_reg_n_0_[6]\,
      O => \rows_gray[5]_i_1__0_n_0\
    );
\rows_gray[6]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rows_done_reg_n_0_[6]\,
      I1 => \rows_done_reg_n_0_[7]\,
      O => \rows_gray[6]_i_1__0_n_0\
    );
\rows_gray[7]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rows_done_reg_n_0_[7]\,
      I1 => \rows_done_reg_n_0_[8]\,
      O => \rows_gray[7]_i_1__0_n_0\
    );
\rows_gray[8]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rows_done_reg_n_0_[8]\,
      I1 => \rows_done_reg_n_0_[9]\,
      O => \rows_gray[8]_i_1__0_n_0\
    );
\rows_gray_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rows_gray[0]_i_1__0_n_0\,
      Q => rows_gray1(0),
      R => '0'
    );
\rows_gray_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rows_gray[1]_i_1__0_n_0\,
      Q => rows_gray1(1),
      R => '0'
    );
\rows_gray_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rows_gray[2]_i_1__0_n_0\,
      Q => rows_gray1(2),
      R => '0'
    );
\rows_gray_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rows_gray[3]_i_1__0_n_0\,
      Q => rows_gray1(3),
      R => '0'
    );
\rows_gray_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rows_gray[4]_i_1__0_n_0\,
      Q => rows_gray1(4),
      R => '0'
    );
\rows_gray_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rows_gray[5]_i_1__0_n_0\,
      Q => rows_gray1(5),
      R => '0'
    );
\rows_gray_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rows_gray[6]_i_1__0_n_0\,
      Q => rows_gray1(6),
      R => '0'
    );
\rows_gray_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rows_gray[7]_i_1__0_n_0\,
      Q => rows_gray1(7),
      R => '0'
    );
\rows_gray_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rows_gray[8]_i_1__0_n_0\,
      Q => rows_gray1(8),
      R => '0'
    );
\rows_gray_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rows_done_reg_n_0_[9]\,
      Q => rows_gray1(9),
      R => '0'
    );
sof_toggle_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => sof_toggle_reg_0,
      Q => sof_toggle1,
      R => '0'
    );
waddr1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => waddr1_carry_n_0,
      CO(2) => waddr1_carry_n_1,
      CO(1) => waddr1_carry_n_2,
      CO(0) => waddr1_carry_n_3,
      CYINIT => \waddr_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3) => \waddr_reg_n_0_[4]\,
      S(2) => \waddr_reg_n_0_[3]\,
      S(1) => \waddr_reg_n_0_[2]\,
      S(0) => \waddr_reg_n_0_[1]\
    );
\waddr1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => waddr1_carry_n_0,
      CO(3) => \waddr1_carry__0_n_0\,
      CO(2) => \waddr1_carry__0_n_1\,
      CO(1) => \waddr1_carry__0_n_2\,
      CO(0) => \waddr1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \waddr_reg_n_0_[8]\,
      S(2) => \waddr_reg_n_0_[7]\,
      S(1) => \waddr_reg_n_0_[6]\,
      S(0) => \waddr_reg_n_0_[5]\
    );
\waddr1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \waddr1_carry__0_n_0\,
      CO(3) => \waddr1_carry__1_n_0\,
      CO(2) => \waddr1_carry__1_n_1\,
      CO(1) => \waddr1_carry__1_n_2\,
      CO(0) => \waddr1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3) => p_0_in(0),
      S(2) => \waddr_reg_n_0_[11]\,
      S(1) => \waddr_reg_n_0_[10]\,
      S(0) => \waddr_reg_n_0_[9]\
    );
\waddr1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \waddr1_carry__1_n_0\,
      CO(3 downto 2) => \NLW_waddr1_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \waddr1_carry__2_n_2\,
      CO(0) => \waddr1_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_waddr1_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(15 downto 13),
      S(3) => '0',
      S(2 downto 0) => p_0_in(3 downto 1)
    );
\waddr[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => \waddr[15]_i_2__0_n_0\,
      I1 => \waddr[15]_i_3__0_n_0\,
      I2 => \waddr[15]_i_4__0_n_0\,
      I3 => \waddr[15]_i_5__0_n_0\,
      I4 => \waddr_reg_n_0_[0]\,
      O => \waddr[0]_i_1__0_n_0\
    );
\waddr[10]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \waddr[15]_i_2__0_n_0\,
      I1 => \waddr[15]_i_3__0_n_0\,
      I2 => \waddr[15]_i_4__0_n_0\,
      I3 => \waddr[15]_i_5__0_n_0\,
      I4 => data0(10),
      O => \waddr[10]_i_1__0_n_0\
    );
\waddr[11]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \waddr[15]_i_2__0_n_0\,
      I1 => \waddr[15]_i_3__0_n_0\,
      I2 => \waddr[15]_i_4__0_n_0\,
      I3 => \waddr[15]_i_5__0_n_0\,
      I4 => data0(11),
      O => \waddr[11]_i_1__0_n_0\
    );
\waddr[12]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \waddr[15]_i_2__0_n_0\,
      I1 => \waddr[15]_i_3__0_n_0\,
      I2 => \waddr[15]_i_4__0_n_0\,
      I3 => \waddr[15]_i_5__0_n_0\,
      I4 => data0(12),
      O => \waddr[12]_i_1__0_n_0\
    );
\waddr[13]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \waddr[15]_i_2__0_n_0\,
      I1 => \waddr[15]_i_3__0_n_0\,
      I2 => \waddr[15]_i_4__0_n_0\,
      I3 => \waddr[15]_i_5__0_n_0\,
      I4 => data0(13),
      O => \waddr[13]_i_1__0_n_0\
    );
\waddr[14]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \waddr[15]_i_2__0_n_0\,
      I1 => \waddr[15]_i_3__0_n_0\,
      I2 => \waddr[15]_i_4__0_n_0\,
      I3 => \waddr[15]_i_5__0_n_0\,
      I4 => data0(14),
      O => \waddr[14]_i_1__0_n_0\
    );
\waddr[15]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \waddr[15]_i_2__0_n_0\,
      I1 => \waddr[15]_i_3__0_n_0\,
      I2 => \waddr[15]_i_4__0_n_0\,
      I3 => \waddr[15]_i_5__0_n_0\,
      I4 => data0(15),
      O => \waddr[15]_i_1__0_n_0\
    );
\waddr[15]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \waddr_reg_n_0_[10]\,
      I1 => \waddr_reg_n_0_[11]\,
      I2 => \waddr_reg_n_0_[4]\,
      I3 => \waddr_reg_n_0_[3]\,
      O => \waddr[15]_i_2__0_n_0\
    );
\waddr[15]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \waddr_reg_n_0_[0]\,
      I1 => \waddr_reg_n_0_[6]\,
      I2 => \waddr_reg_n_0_[2]\,
      I3 => \waddr_reg_n_0_[1]\,
      O => \waddr[15]_i_3__0_n_0\
    );
\waddr[15]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_0_in(0),
      I1 => \waddr_reg_n_0_[9]\,
      I2 => p_0_in(3),
      I3 => p_0_in(1),
      O => \waddr[15]_i_4__0_n_0\
    );
\waddr[15]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \waddr_reg_n_0_[5]\,
      I1 => p_0_in(2),
      I2 => \waddr_reg_n_0_[8]\,
      I3 => \waddr_reg_n_0_[7]\,
      O => \waddr[15]_i_5__0_n_0\
    );
\waddr[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \waddr[15]_i_2__0_n_0\,
      I1 => \waddr[15]_i_3__0_n_0\,
      I2 => \waddr[15]_i_4__0_n_0\,
      I3 => \waddr[15]_i_5__0_n_0\,
      I4 => data0(1),
      O => \waddr[1]_i_1__0_n_0\
    );
\waddr[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \waddr[15]_i_2__0_n_0\,
      I1 => \waddr[15]_i_3__0_n_0\,
      I2 => \waddr[15]_i_4__0_n_0\,
      I3 => \waddr[15]_i_5__0_n_0\,
      I4 => data0(2),
      O => \waddr[2]_i_1__0_n_0\
    );
\waddr[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \waddr[15]_i_2__0_n_0\,
      I1 => \waddr[15]_i_3__0_n_0\,
      I2 => \waddr[15]_i_4__0_n_0\,
      I3 => \waddr[15]_i_5__0_n_0\,
      I4 => data0(3),
      O => \waddr[3]_i_1__0_n_0\
    );
\waddr[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \waddr[15]_i_2__0_n_0\,
      I1 => \waddr[15]_i_3__0_n_0\,
      I2 => \waddr[15]_i_4__0_n_0\,
      I3 => \waddr[15]_i_5__0_n_0\,
      I4 => data0(4),
      O => \waddr[4]_i_1__0_n_0\
    );
\waddr[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \waddr[15]_i_2__0_n_0\,
      I1 => \waddr[15]_i_3__0_n_0\,
      I2 => \waddr[15]_i_4__0_n_0\,
      I3 => \waddr[15]_i_5__0_n_0\,
      I4 => data0(5),
      O => \waddr[5]_i_1__0_n_0\
    );
\waddr[6]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \waddr[15]_i_2__0_n_0\,
      I1 => \waddr[15]_i_3__0_n_0\,
      I2 => \waddr[15]_i_4__0_n_0\,
      I3 => \waddr[15]_i_5__0_n_0\,
      I4 => data0(6),
      O => \waddr[6]_i_1__0_n_0\
    );
\waddr[7]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \waddr[15]_i_2__0_n_0\,
      I1 => \waddr[15]_i_3__0_n_0\,
      I2 => \waddr[15]_i_4__0_n_0\,
      I3 => \waddr[15]_i_5__0_n_0\,
      I4 => data0(7),
      O => \waddr[7]_i_1__0_n_0\
    );
\waddr[8]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \waddr[15]_i_2__0_n_0\,
      I1 => \waddr[15]_i_3__0_n_0\,
      I2 => \waddr[15]_i_4__0_n_0\,
      I3 => \waddr[15]_i_5__0_n_0\,
      I4 => data0(8),
      O => \waddr[8]_i_1__0_n_0\
    );
\waddr[9]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \waddr[15]_i_2__0_n_0\,
      I1 => \waddr[15]_i_3__0_n_0\,
      I2 => \waddr[15]_i_4__0_n_0\,
      I3 => \waddr[15]_i_5__0_n_0\,
      I4 => data0(9),
      O => \waddr[9]_i_1__0_n_0\
    );
\waddr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \waddr[0]_i_1__0_n_0\,
      Q => \waddr_reg_n_0_[0]\,
      R => \frame_base[15]_i_1__0_n_0\
    );
\waddr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \waddr[10]_i_1__0_n_0\,
      Q => \waddr_reg_n_0_[10]\,
      R => \frame_base[15]_i_1__0_n_0\
    );
\waddr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \waddr[11]_i_1__0_n_0\,
      Q => \waddr_reg_n_0_[11]\,
      R => \frame_base[15]_i_1__0_n_0\
    );
\waddr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \waddr[12]_i_1__0_n_0\,
      Q => p_0_in(0),
      R => \frame_base[15]_i_1__0_n_0\
    );
\waddr_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \waddr[13]_i_1__0_n_0\,
      Q => p_0_in(1),
      R => \frame_base[15]_i_1__0_n_0\
    );
\waddr_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \waddr[14]_i_1__0_n_0\,
      Q => p_0_in(2),
      R => \frame_base[15]_i_1__0_n_0\
    );
\waddr_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \waddr[15]_i_1__0_n_0\,
      Q => p_0_in(3),
      R => \frame_base[15]_i_1__0_n_0\
    );
\waddr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \waddr[1]_i_1__0_n_0\,
      Q => \waddr_reg_n_0_[1]\,
      R => \frame_base[15]_i_1__0_n_0\
    );
\waddr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \waddr[2]_i_1__0_n_0\,
      Q => \waddr_reg_n_0_[2]\,
      R => \frame_base[15]_i_1__0_n_0\
    );
\waddr_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \waddr[3]_i_1__0_n_0\,
      Q => \waddr_reg_n_0_[3]\,
      S => \frame_base[15]_i_1__0_n_0\
    );
\waddr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \waddr[4]_i_1__0_n_0\,
      Q => \waddr_reg_n_0_[4]\,
      R => \frame_base[15]_i_1__0_n_0\
    );
\waddr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \waddr[5]_i_1__0_n_0\,
      Q => \waddr_reg_n_0_[5]\,
      R => \frame_base[15]_i_1__0_n_0\
    );
\waddr_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \waddr[6]_i_1__0_n_0\,
      Q => \waddr_reg_n_0_[6]\,
      S => \frame_base[15]_i_1__0_n_0\
    );
\waddr_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \waddr[7]_i_1__0_n_0\,
      Q => \waddr_reg_n_0_[7]\,
      S => \frame_base[15]_i_1__0_n_0\
    );
\waddr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \waddr[8]_i_1__0_n_0\,
      Q => \waddr_reg_n_0_[8]\,
      R => \frame_base[15]_i_1__0_n_0\
    );
\waddr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \waddr[9]_i_1__0_n_0\,
      Q => \waddr_reg_n_0_[9]\,
      R => \frame_base[15]_i_1__0_n_0\
    );
\wx[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wx_reg_n_0_[0]\,
      O => wx(0)
    );
\wx[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wx_reg_n_0_[1]\,
      I1 => \wx_reg_n_0_[0]\,
      O => wx(1)
    );
\wx[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \wx_reg_n_0_[2]\,
      I1 => \wx_reg_n_0_[1]\,
      I2 => \wx_reg_n_0_[0]\,
      O => wx(2)
    );
\wx[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00000000FFFE"
    )
        port map (
      I0 => \wx[3]_i_2__0_n_0\,
      I1 => \wx_reg_n_0_[4]\,
      I2 => \wx_reg_n_0_[5]\,
      I3 => \wx_reg_n_0_[9]\,
      I4 => \wx[6]_i_2__0_n_0\,
      I5 => \wx_reg_n_0_[3]\,
      O => wx(3)
    );
\wx[3]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \wx_reg_n_0_[7]\,
      I1 => \wx_reg_n_0_[8]\,
      I2 => \wx_reg_n_0_[6]\,
      O => \wx[3]_i_2__0_n_0\
    );
\wx[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \wx_reg_n_0_[4]\,
      I1 => \wx_reg_n_0_[2]\,
      I2 => \wx_reg_n_0_[1]\,
      I3 => \wx_reg_n_0_[0]\,
      I4 => \wx_reg_n_0_[3]\,
      O => wx(4)
    );
\wx[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \wx_reg_n_0_[5]\,
      I1 => \wx_reg_n_0_[4]\,
      I2 => \wx_reg_n_0_[2]\,
      I3 => \wx_reg_n_0_[1]\,
      I4 => \wx_reg_n_0_[0]\,
      I5 => \wx_reg_n_0_[3]\,
      O => \wx[5]_i_1__0_n_0\
    );
\wx[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F7FF0800"
    )
        port map (
      I0 => \wx_reg_n_0_[5]\,
      I1 => \wx_reg_n_0_[3]\,
      I2 => \wx[6]_i_2__0_n_0\,
      I3 => \wx_reg_n_0_[4]\,
      I4 => \wx_reg_n_0_[6]\,
      I5 => \wx[7]_i_2__0_n_0\,
      O => wx(6)
    );
\wx[6]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \wx_reg_n_0_[0]\,
      I1 => \wx_reg_n_0_[1]\,
      I2 => \wx_reg_n_0_[2]\,
      O => \wx[6]_i_2__0_n_0\
    );
\wx[7]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44144444"
    )
        port map (
      I0 => \wx[7]_i_2__0_n_0\,
      I1 => \wx_reg_n_0_[7]\,
      I2 => \wx_reg_n_0_[6]\,
      I3 => \wx[9]_i_2__0_n_0\,
      I4 => \wx_reg_n_0_[5]\,
      O => wx(7)
    );
\wx[7]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \wx_reg_n_0_[3]\,
      I1 => \wx[3]_i_2__0_n_0\,
      I2 => \wx_reg_n_0_[4]\,
      I3 => \wx_reg_n_0_[5]\,
      I4 => \wx_reg_n_0_[9]\,
      I5 => \wx[6]_i_2__0_n_0\,
      O => \wx[7]_i_2__0_n_0\
    );
\wx[8]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6AAAAAA"
    )
        port map (
      I0 => \wx_reg_n_0_[8]\,
      I1 => \wx_reg_n_0_[5]\,
      I2 => \wx[9]_i_2__0_n_0\,
      I3 => \wx_reg_n_0_[6]\,
      I4 => \wx_reg_n_0_[7]\,
      O => wx(8)
    );
\wx[9]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA6AAAAAAAAAAAAA"
    )
        port map (
      I0 => \wx_reg_n_0_[9]\,
      I1 => \wx_reg_n_0_[7]\,
      I2 => \wx_reg_n_0_[6]\,
      I3 => \wx[9]_i_2__0_n_0\,
      I4 => \wx_reg_n_0_[5]\,
      I5 => \wx_reg_n_0_[8]\,
      O => wx(9)
    );
\wx[9]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \wx_reg_n_0_[3]\,
      I1 => \wx_reg_n_0_[0]\,
      I2 => \wx_reg_n_0_[1]\,
      I3 => \wx_reg_n_0_[2]\,
      I4 => \wx_reg_n_0_[4]\,
      O => \wx[9]_i_2__0_n_0\
    );
\wx_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wx_reg[9]_0\(0),
      D => wx(0),
      Q => \wx_reg_n_0_[0]\,
      R => SR(0)
    );
\wx_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wx_reg[9]_0\(0),
      D => wx(1),
      Q => \wx_reg_n_0_[1]\,
      R => SR(0)
    );
\wx_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wx_reg[9]_0\(0),
      D => wx(2),
      Q => \wx_reg_n_0_[2]\,
      R => SR(0)
    );
\wx_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wx_reg[9]_0\(0),
      D => wx(3),
      Q => \wx_reg_n_0_[3]\,
      R => SR(0)
    );
\wx_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wx_reg[9]_0\(0),
      D => wx(4),
      Q => \wx_reg_n_0_[4]\,
      R => SR(0)
    );
\wx_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wx_reg[9]_0\(0),
      D => \wx[5]_i_1__0_n_0\,
      Q => \wx_reg_n_0_[5]\,
      R => SR(0)
    );
\wx_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wx_reg[9]_0\(0),
      D => wx(6),
      Q => \wx_reg_n_0_[6]\,
      R => SR(0)
    );
\wx_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wx_reg[9]_0\(0),
      D => wx(7),
      Q => \wx_reg_n_0_[7]\,
      R => SR(0)
    );
\wx_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wx_reg[9]_0\(0),
      D => wx(8),
      Q => \wx_reg_n_0_[8]\,
      R => SR(0)
    );
\wx_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wx_reg[9]_0\(0),
      D => wx(9),
      Q => \wx_reg_n_0_[9]\,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_cam_input_0_0_cam_input is
  port (
    Q : out STD_LOGIC_VECTOR ( 13 downto 0 );
    \count_reg[13]\ : out STD_LOGIC_VECTOR ( 13 downto 0 );
    \start_us_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    raw0_dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \en_sync_reg[2]_0\ : out STD_LOGIC;
    raw1_dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rd_data0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    frame_base0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rows_gray0 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    rd_data1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    frame_base1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rows_gray1 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    prst : out STD_LOGIC;
    genlock : out STD_LOGIC_VECTOR ( 31 downto 0 );
    frame_led0 : out STD_LOGIC;
    frame_led1 : out STD_LOGIC;
    sof_toggle0 : out STD_LOGIC;
    sof_toggle1 : out STD_LOGIC;
    clk : in STD_LOGIC;
    raw0_rd : in STD_LOGIC;
    raw1_rd : in STD_LOGIC;
    cam_d : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cam2_d : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pclk : in STD_LOGIC;
    rd_addr0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    rd_addr1 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    cam_pclk : in STD_LOGIC;
    cam_vsync : in STD_LOGIC;
    cam_href : in STD_LOGIC;
    cam2_pclk : in STD_LOGIC;
    cam2_vsync : in STD_LOGIC;
    cam2_href : in STD_LOGIC;
    gpio_o : in STD_LOGIC_VECTOR ( 17 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_cam_input_0_0_cam_input : entity is "cam_input";
end system_cam_input_0_0_cam_input;

architecture STRUCTURE of system_cam_input_0_0_cam_input is
  signal \^q\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal c0_afull : STD_LOGIC;
  signal c0_din : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal c0_wr : STD_LOGIC;
  signal c1_afull : STD_LOGIC;
  signal c1_din : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal c1_wr : STD_LOGIC;
  signal \^count_reg[13]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal data12 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data13 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal do_wr : STD_LOGIC;
  signal do_wr_4 : STD_LOGIC;
  signal en_sync : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg : string;
  attribute async_reg of en_sync : signal is "true";
  signal \^en_sync_reg[2]_0\ : STD_LOGIC;
  signal \g_bin.u_bin0_n_4\ : STD_LOGIC;
  signal \g_bin.u_bin1_n_4\ : STD_LOGIC;
  signal \^genlock\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal gl_phase0 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \gl_phase0_carry__0_n_0\ : STD_LOGIC;
  signal \gl_phase0_carry__0_n_1\ : STD_LOGIC;
  signal \gl_phase0_carry__0_n_2\ : STD_LOGIC;
  signal \gl_phase0_carry__0_n_3\ : STD_LOGIC;
  signal \gl_phase0_carry__1_n_0\ : STD_LOGIC;
  signal \gl_phase0_carry__1_n_1\ : STD_LOGIC;
  signal \gl_phase0_carry__1_n_2\ : STD_LOGIC;
  signal \gl_phase0_carry__1_n_3\ : STD_LOGIC;
  signal \gl_phase0_carry__2_n_0\ : STD_LOGIC;
  signal \gl_phase0_carry__2_n_1\ : STD_LOGIC;
  signal \gl_phase0_carry__2_n_2\ : STD_LOGIC;
  signal \gl_phase0_carry__2_n_3\ : STD_LOGIC;
  signal \gl_phase0_carry__3_n_0\ : STD_LOGIC;
  signal \gl_phase0_carry__3_n_1\ : STD_LOGIC;
  signal \gl_phase0_carry__3_n_2\ : STD_LOGIC;
  signal \gl_phase0_carry__3_n_3\ : STD_LOGIC;
  signal \gl_phase0_carry__4_n_1\ : STD_LOGIC;
  signal \gl_phase0_carry__4_n_2\ : STD_LOGIC;
  signal \gl_phase0_carry__4_n_3\ : STD_LOGIC;
  signal gl_phase0_carry_n_0 : STD_LOGIC;
  signal gl_phase0_carry_n_1 : STD_LOGIC;
  signal gl_phase0_carry_n_2 : STD_LOGIC;
  signal gl_phase0_carry_n_3 : STD_LOGIC;
  signal \gl_seq0_carry__0_n_0\ : STD_LOGIC;
  signal \gl_seq0_carry__0_n_1\ : STD_LOGIC;
  signal \gl_seq0_carry__0_n_2\ : STD_LOGIC;
  signal \gl_seq0_carry__0_n_3\ : STD_LOGIC;
  signal \gl_seq0_carry__1_n_2\ : STD_LOGIC;
  signal \gl_seq0_carry__1_n_3\ : STD_LOGIC;
  signal gl_seq0_carry_n_0 : STD_LOGIC;
  signal gl_seq0_carry_n_1 : STD_LOGIC;
  signal gl_seq0_carry_n_2 : STD_LOGIC;
  signal gl_seq0_carry_n_3 : STD_LOGIC;
  signal \gl_seq[7]_i_2_n_0\ : STD_LOGIC;
  signal half_ms : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \half_ms1_carry__0_n_0\ : STD_LOGIC;
  signal \half_ms1_carry__0_n_1\ : STD_LOGIC;
  signal \half_ms1_carry__0_n_2\ : STD_LOGIC;
  signal \half_ms1_carry__0_n_3\ : STD_LOGIC;
  signal \half_ms1_carry__0_n_4\ : STD_LOGIC;
  signal \half_ms1_carry__0_n_5\ : STD_LOGIC;
  signal \half_ms1_carry__0_n_6\ : STD_LOGIC;
  signal \half_ms1_carry__0_n_7\ : STD_LOGIC;
  signal \half_ms1_carry__1_n_0\ : STD_LOGIC;
  signal \half_ms1_carry__1_n_1\ : STD_LOGIC;
  signal \half_ms1_carry__1_n_2\ : STD_LOGIC;
  signal \half_ms1_carry__1_n_3\ : STD_LOGIC;
  signal \half_ms1_carry__1_n_4\ : STD_LOGIC;
  signal \half_ms1_carry__1_n_5\ : STD_LOGIC;
  signal \half_ms1_carry__1_n_6\ : STD_LOGIC;
  signal \half_ms1_carry__1_n_7\ : STD_LOGIC;
  signal \half_ms1_carry__2_n_1\ : STD_LOGIC;
  signal \half_ms1_carry__2_n_2\ : STD_LOGIC;
  signal \half_ms1_carry__2_n_3\ : STD_LOGIC;
  signal \half_ms1_carry__2_n_4\ : STD_LOGIC;
  signal \half_ms1_carry__2_n_5\ : STD_LOGIC;
  signal \half_ms1_carry__2_n_6\ : STD_LOGIC;
  signal \half_ms1_carry__2_n_7\ : STD_LOGIC;
  signal half_ms1_carry_n_0 : STD_LOGIC;
  signal half_ms1_carry_n_1 : STD_LOGIC;
  signal half_ms1_carry_n_2 : STD_LOGIC;
  signal half_ms1_carry_n_3 : STD_LOGIC;
  signal half_ms1_carry_n_4 : STD_LOGIC;
  signal half_ms1_carry_n_5 : STD_LOGIC;
  signal half_ms1_carry_n_6 : STD_LOGIC;
  signal half_ms1_carry_n_7 : STD_LOGIC;
  signal \half_ms[0]_i_1_n_0\ : STD_LOGIC;
  signal \half_ms[16]_i_1_n_0\ : STD_LOGIC;
  signal \half_ms[16]_i_2_n_0\ : STD_LOGIC;
  signal \half_ms[16]_i_3_n_0\ : STD_LOGIC;
  signal \half_ms[16]_i_4_n_0\ : STD_LOGIC;
  signal href_d : STD_LOGIC;
  signal href_d_3 : STD_LOGIC;
  signal l0_d : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal l0_en : STD_LOGIC;
  signal l0_sof : STD_LOGIC;
  signal l1_d : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal l1_en : STD_LOGIC;
  signal l1_sof : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in_1 : STD_LOGIC;
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \p_0_in__4\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_2_in : STD_LOGIC;
  signal p_2_in_0 : STD_LOGIC;
  signal prev : STD_LOGIC_VECTOR ( 0 to 0 );
  signal prev_5 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal prst_sync : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg of prst_sync : signal is "true";
  signal s0_d : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s0_href : STD_LOGIC;
  signal s0_stb : STD_LOGIC;
  signal s0_vsync : STD_LOGIC;
  signal s1_d : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s1_href : STD_LOGIC;
  signal s1_stb : STD_LOGIC;
  signal s1_vsync : STD_LOGIC;
  signal second : STD_LOGIC;
  signal second_2 : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal \^sof_toggle0\ : STD_LOGIC;
  signal \^sof_toggle1\ : STD_LOGIC;
  signal \^start_us_reg[31]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal t0_d : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal t0_en : STD_LOGIC;
  signal t0_sof : STD_LOGIC;
  signal t1_d : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal t1_en : STD_LOGIC;
  signal t1_sof : STD_LOGIC;
  signal \t_us[0]_i_2_n_0\ : STD_LOGIC;
  signal t_us_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \t_us_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \t_us_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \t_us_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \t_us_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \t_us_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \t_us_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \t_us_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \t_us_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \t_us_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \t_us_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \t_us_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \t_us_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \t_us_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \t_us_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \t_us_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \t_us_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \t_us_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \t_us_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \t_us_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \t_us_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \t_us_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \t_us_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \t_us_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \t_us_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \t_us_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \t_us_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \t_us_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \t_us_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \t_us_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \t_us_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \t_us_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \t_us_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \t_us_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \t_us_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \t_us_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \t_us_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \t_us_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \t_us_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \t_us_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \t_us_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \t_us_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \t_us_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \t_us_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \t_us_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \t_us_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \t_us_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \t_us_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \t_us_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \t_us_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \t_us_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \t_us_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \t_us_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \t_us_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \t_us_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \t_us_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \t_us_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \t_us_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \t_us_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \t_us_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \t_us_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \t_us_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \t_us_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \t_us_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal tick : STD_LOGIC;
  signal tof_m0 : STD_LOGIC_VECTOR ( 16 downto 0 );
  attribute async_reg of tof_m0 : signal is "true";
  signal tof_m1 : STD_LOGIC_VECTOR ( 16 downto 0 );
  attribute async_reg of tof_m1 : signal is "true";
  signal \tof_m2_reg_n_0_[0]\ : STD_LOGIC;
  signal \tof_m2_reg_n_0_[10]\ : STD_LOGIC;
  signal \tof_m2_reg_n_0_[11]\ : STD_LOGIC;
  signal \tof_m2_reg_n_0_[12]\ : STD_LOGIC;
  signal \tof_m2_reg_n_0_[13]\ : STD_LOGIC;
  signal \tof_m2_reg_n_0_[14]\ : STD_LOGIC;
  signal \tof_m2_reg_n_0_[15]\ : STD_LOGIC;
  signal \tof_m2_reg_n_0_[16]\ : STD_LOGIC;
  signal \tof_m2_reg_n_0_[1]\ : STD_LOGIC;
  signal \tof_m2_reg_n_0_[2]\ : STD_LOGIC;
  signal \tof_m2_reg_n_0_[3]\ : STD_LOGIC;
  signal \tof_m2_reg_n_0_[4]\ : STD_LOGIC;
  signal \tof_m2_reg_n_0_[5]\ : STD_LOGIC;
  signal \tof_m2_reg_n_0_[6]\ : STD_LOGIC;
  signal \tof_m2_reg_n_0_[7]\ : STD_LOGIC;
  signal \tof_m2_reg_n_0_[8]\ : STD_LOGIC;
  signal \tof_m2_reg_n_0_[9]\ : STD_LOGIC;
  signal tof_mm : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal tof_new : STD_LOGIC;
  signal tof_new_i_1_n_0 : STD_LOGIC;
  signal \tof_seq[7]_i_2_n_0\ : STD_LOGIC;
  signal tof_seq_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal tof_us : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal u_cap2_n_41 : STD_LOGIC;
  signal u_cap2_n_42 : STD_LOGIC;
  signal u_cap2_n_43 : STD_LOGIC;
  signal u_cap2_n_44 : STD_LOGIC;
  signal u_cap2_n_45 : STD_LOGIC;
  signal u_cap2_n_46 : STD_LOGIC;
  signal u_cap2_n_47 : STD_LOGIC;
  signal u_cap2_n_48 : STD_LOGIC;
  signal u_cap2_n_49 : STD_LOGIC;
  signal u_cap2_n_5 : STD_LOGIC;
  signal u_cap2_n_50 : STD_LOGIC;
  signal u_cap2_n_51 : STD_LOGIC;
  signal u_cap2_n_52 : STD_LOGIC;
  signal u_cap2_n_53 : STD_LOGIC;
  signal u_cap2_n_54 : STD_LOGIC;
  signal u_cap2_n_55 : STD_LOGIC;
  signal u_cap2_n_56 : STD_LOGIC;
  signal u_cap2_n_57 : STD_LOGIC;
  signal u_cap2_n_58 : STD_LOGIC;
  signal u_cap2_n_59 : STD_LOGIC;
  signal u_cap2_n_6 : STD_LOGIC;
  signal u_cap2_n_60 : STD_LOGIC;
  signal u_cap2_n_62 : STD_LOGIC;
  signal u_cap2_n_63 : STD_LOGIC;
  signal u_cap2_n_66 : STD_LOGIC;
  signal u_cap2_n_67 : STD_LOGIC;
  signal u_cap2_n_68 : STD_LOGIC;
  signal u_cap2_n_69 : STD_LOGIC;
  signal u_cap2_n_7 : STD_LOGIC;
  signal u_cap2_n_78 : STD_LOGIC;
  signal u_cap2_n_79 : STD_LOGIC;
  signal u_cap2_n_8 : STD_LOGIC;
  signal u_cap2_n_80 : STD_LOGIC;
  signal u_cap2_n_81 : STD_LOGIC;
  signal u_cap2_n_82 : STD_LOGIC;
  signal u_cap2_n_83 : STD_LOGIC;
  signal u_cap2_n_84 : STD_LOGIC;
  signal u_cap2_n_85 : STD_LOGIC;
  signal u_cap2_n_86 : STD_LOGIC;
  signal u_cap2_n_87 : STD_LOGIC;
  signal u_cap2_n_88 : STD_LOGIC;
  signal u_cap2_n_89 : STD_LOGIC;
  signal u_cap2_n_90 : STD_LOGIC;
  signal u_cap_n_10 : STD_LOGIC;
  signal u_cap_n_11 : STD_LOGIC;
  signal u_cap_n_12 : STD_LOGIC;
  signal u_cap_n_13 : STD_LOGIC;
  signal u_cap_n_38 : STD_LOGIC;
  signal u_cap_n_39 : STD_LOGIC;
  signal u_cap_n_40 : STD_LOGIC;
  signal u_cap_n_41 : STD_LOGIC;
  signal u_cap_n_42 : STD_LOGIC;
  signal u_cap_n_43 : STD_LOGIC;
  signal u_cap_n_44 : STD_LOGIC;
  signal u_cap_n_45 : STD_LOGIC;
  signal u_cap_n_46 : STD_LOGIC;
  signal u_cap_n_47 : STD_LOGIC;
  signal u_cap_n_6 : STD_LOGIC;
  signal u_cap_n_7 : STD_LOGIC;
  signal u_luma0_n_3 : STD_LOGIC;
  signal u_luma0_n_4 : STD_LOGIC;
  signal u_luma0_n_5 : STD_LOGIC;
  signal u_luma1_n_3 : STD_LOGIC;
  signal u_luma1_n_4 : STD_LOGIC;
  signal u_luma1_n_5 : STD_LOGIC;
  signal us1_seen : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal us_cnt : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \us_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \us_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \us_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \us_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \us_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \us_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \us_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \us_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \us_cnt[7]_i_2_n_0\ : STD_LOGIC;
  signal \us_cnt[7]_i_3_n_0\ : STD_LOGIC;
  signal us_tick : STD_LOGIC;
  signal vsync_d : STD_LOGIC;
  signal vsync_d_6 : STD_LOGIC;
  signal \NLW_gl_phase0_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_gl_seq0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gl_seq0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gl_seq0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_gl_seq0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_ms1_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_t_us_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \en_sync_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \en_sync_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \en_sync_reg[1]\ : label is std.standard.true;
  attribute KEEP of \en_sync_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \en_sync_reg[2]\ : label is std.standard.true;
  attribute KEEP of \en_sync_reg[2]\ : label is "yes";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of gl_phase0_carry : label is 35;
  attribute ADDER_THRESHOLD of \gl_phase0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \gl_phase0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \gl_phase0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \gl_phase0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \gl_phase0_carry__4\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gl_seq[1]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \gl_seq[2]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \gl_seq[3]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \gl_seq[4]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \gl_seq[6]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \gl_seq[7]_i_1\ : label is "soft_lutpair88";
  attribute ADDER_THRESHOLD of half_ms1_carry : label is 35;
  attribute ADDER_THRESHOLD of \half_ms1_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \half_ms1_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \half_ms1_carry__2\ : label is 35;
  attribute SOFT_HLUTNM of \half_ms[0]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \half_ms[16]_i_3\ : label is "soft_lutpair83";
  attribute ASYNC_REG_boolean of \prst_sync_reg[0]\ : label is std.standard.true;
  attribute KEEP of \prst_sync_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \prst_sync_reg[1]\ : label is std.standard.true;
  attribute KEEP of \prst_sync_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \prst_sync_reg[2]\ : label is std.standard.true;
  attribute KEEP of \prst_sync_reg[2]\ : label is "yes";
  attribute ADDER_THRESHOLD of \t_us_reg[0]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \t_us_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \t_us_reg[16]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \t_us_reg[20]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \t_us_reg[24]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \t_us_reg[28]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \t_us_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \t_us_reg[8]_i_1\ : label is 35;
  attribute ASYNC_REG_boolean of \tof_m0_reg[0]\ : label is std.standard.true;
  attribute KEEP of \tof_m0_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tof_m0_reg[10]\ : label is std.standard.true;
  attribute KEEP of \tof_m0_reg[10]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tof_m0_reg[11]\ : label is std.standard.true;
  attribute KEEP of \tof_m0_reg[11]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tof_m0_reg[12]\ : label is std.standard.true;
  attribute KEEP of \tof_m0_reg[12]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tof_m0_reg[13]\ : label is std.standard.true;
  attribute KEEP of \tof_m0_reg[13]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tof_m0_reg[14]\ : label is std.standard.true;
  attribute KEEP of \tof_m0_reg[14]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tof_m0_reg[15]\ : label is std.standard.true;
  attribute KEEP of \tof_m0_reg[15]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tof_m0_reg[16]\ : label is std.standard.true;
  attribute KEEP of \tof_m0_reg[16]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tof_m0_reg[1]\ : label is std.standard.true;
  attribute KEEP of \tof_m0_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tof_m0_reg[2]\ : label is std.standard.true;
  attribute KEEP of \tof_m0_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tof_m0_reg[3]\ : label is std.standard.true;
  attribute KEEP of \tof_m0_reg[3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tof_m0_reg[4]\ : label is std.standard.true;
  attribute KEEP of \tof_m0_reg[4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tof_m0_reg[5]\ : label is std.standard.true;
  attribute KEEP of \tof_m0_reg[5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tof_m0_reg[6]\ : label is std.standard.true;
  attribute KEEP of \tof_m0_reg[6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tof_m0_reg[7]\ : label is std.standard.true;
  attribute KEEP of \tof_m0_reg[7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tof_m0_reg[8]\ : label is std.standard.true;
  attribute KEEP of \tof_m0_reg[8]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tof_m0_reg[9]\ : label is std.standard.true;
  attribute KEEP of \tof_m0_reg[9]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tof_m1_reg[0]\ : label is std.standard.true;
  attribute KEEP of \tof_m1_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tof_m1_reg[10]\ : label is std.standard.true;
  attribute KEEP of \tof_m1_reg[10]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tof_m1_reg[11]\ : label is std.standard.true;
  attribute KEEP of \tof_m1_reg[11]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tof_m1_reg[12]\ : label is std.standard.true;
  attribute KEEP of \tof_m1_reg[12]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tof_m1_reg[13]\ : label is std.standard.true;
  attribute KEEP of \tof_m1_reg[13]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tof_m1_reg[14]\ : label is std.standard.true;
  attribute KEEP of \tof_m1_reg[14]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tof_m1_reg[15]\ : label is std.standard.true;
  attribute KEEP of \tof_m1_reg[15]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tof_m1_reg[16]\ : label is std.standard.true;
  attribute KEEP of \tof_m1_reg[16]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tof_m1_reg[1]\ : label is std.standard.true;
  attribute KEEP of \tof_m1_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tof_m1_reg[2]\ : label is std.standard.true;
  attribute KEEP of \tof_m1_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tof_m1_reg[3]\ : label is std.standard.true;
  attribute KEEP of \tof_m1_reg[3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tof_m1_reg[4]\ : label is std.standard.true;
  attribute KEEP of \tof_m1_reg[4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tof_m1_reg[5]\ : label is std.standard.true;
  attribute KEEP of \tof_m1_reg[5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tof_m1_reg[6]\ : label is std.standard.true;
  attribute KEEP of \tof_m1_reg[6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tof_m1_reg[7]\ : label is std.standard.true;
  attribute KEEP of \tof_m1_reg[7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tof_m1_reg[8]\ : label is std.standard.true;
  attribute KEEP of \tof_m1_reg[8]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tof_m1_reg[9]\ : label is std.standard.true;
  attribute KEEP of \tof_m1_reg[9]\ : label is "yes";
  attribute SOFT_HLUTNM of \tof_seq[1]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \tof_seq[2]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \tof_seq[3]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \tof_seq[4]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \tof_seq[6]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \tof_seq[7]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \us_cnt[0]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \us_cnt[1]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \us_cnt[2]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \us_cnt[3]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \us_cnt[4]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \us_cnt[7]_i_3\ : label is "soft_lutpair89";
begin
  Q(13 downto 0) <= \^q\(13 downto 0);
  \count_reg[13]\(13 downto 0) <= \^count_reg[13]\(13 downto 0);
  \en_sync_reg[2]_0\ <= \^en_sync_reg[2]_0\;
  genlock(31 downto 0) <= \^genlock\(31 downto 0);
  prst <= prst_sync(2);
  sof_toggle0 <= \^sof_toggle0\;
  sof_toggle1 <= \^sof_toggle1\;
  \start_us_reg[31]\(31 downto 0) <= \^start_us_reg[31]\(31 downto 0);
\en_sync_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => gpio_o(0),
      Q => en_sync(0),
      R => '0'
    );
\en_sync_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => en_sync(0),
      Q => en_sync(1),
      R => '0'
    );
\en_sync_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => en_sync(1),
      Q => en_sync(2),
      R => '0'
    );
\g_bin.u_bin0\: entity work.system_cam_input_0_0_luma_bin2
     port map (
      E(0) => u_luma0_n_4,
      Q(0) => p_0_in,
      clk => clk,
      l0_sof => l0_sof,
      \out_data_reg[7]_0\(7 downto 0) => l0_d(7 downto 0),
      out_en_reg_0(0) => l0_en,
      out_en_reg_1(0) => p_2_in,
      out_sof_reg_0 => \g_bin.u_bin0_n_4\,
      \prev_reg[7]_0\(0) => prev(0),
      \prev_reg[7]_1\(7 downto 0) => t0_d(7 downto 0),
      sof_toggle0 => \^sof_toggle0\,
      t0_en => t0_en,
      t0_sof => t0_sof
    );
\g_bin.u_bin1\: entity work.system_cam_input_0_0_luma_bin2_0
     port map (
      E(0) => u_luma1_n_4,
      Q(0) => p_0_in_1,
      clk => clk,
      l1_sof => l1_sof,
      \out_data_reg[7]_0\(7 downto 0) => l1_d(7 downto 0),
      out_en_reg_0(0) => l1_en,
      out_en_reg_1(0) => p_2_in_0,
      out_sof_reg_0 => \g_bin.u_bin1_n_4\,
      \prev_reg[7]_0\(0) => prev_5(0),
      \prev_reg[7]_1\(7 downto 0) => t1_d(7 downto 0),
      sof_toggle1 => \^sof_toggle1\,
      t1_en => t1_en,
      t1_sof => t1_sof
    );
gl_phase0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => gl_phase0_carry_n_0,
      CO(2) => gl_phase0_carry_n_1,
      CO(1) => gl_phase0_carry_n_2,
      CO(0) => gl_phase0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => \^start_us_reg[31]\(3 downto 0),
      O(3 downto 0) => gl_phase0(3 downto 0),
      S(3) => u_cap2_n_57,
      S(2) => u_cap2_n_58,
      S(1) => u_cap2_n_59,
      S(0) => u_cap2_n_60
    );
\gl_phase0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => gl_phase0_carry_n_0,
      CO(3) => \gl_phase0_carry__0_n_0\,
      CO(2) => \gl_phase0_carry__0_n_1\,
      CO(1) => \gl_phase0_carry__0_n_2\,
      CO(0) => \gl_phase0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^start_us_reg[31]\(7 downto 4),
      O(3 downto 0) => gl_phase0(7 downto 4),
      S(3) => u_cap2_n_53,
      S(2) => u_cap2_n_54,
      S(1) => u_cap2_n_55,
      S(0) => u_cap2_n_56
    );
\gl_phase0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gl_phase0_carry__0_n_0\,
      CO(3) => \gl_phase0_carry__1_n_0\,
      CO(2) => \gl_phase0_carry__1_n_1\,
      CO(1) => \gl_phase0_carry__1_n_2\,
      CO(0) => \gl_phase0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^start_us_reg[31]\(11 downto 8),
      O(3 downto 0) => gl_phase0(11 downto 8),
      S(3) => u_cap2_n_49,
      S(2) => u_cap2_n_50,
      S(1) => u_cap2_n_51,
      S(0) => u_cap2_n_52
    );
\gl_phase0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \gl_phase0_carry__1_n_0\,
      CO(3) => \gl_phase0_carry__2_n_0\,
      CO(2) => \gl_phase0_carry__2_n_1\,
      CO(1) => \gl_phase0_carry__2_n_2\,
      CO(0) => \gl_phase0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^start_us_reg[31]\(15 downto 12),
      O(3 downto 0) => gl_phase0(15 downto 12),
      S(3) => u_cap2_n_45,
      S(2) => u_cap2_n_46,
      S(1) => u_cap2_n_47,
      S(0) => u_cap2_n_48
    );
\gl_phase0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \gl_phase0_carry__2_n_0\,
      CO(3) => \gl_phase0_carry__3_n_0\,
      CO(2) => \gl_phase0_carry__3_n_1\,
      CO(1) => \gl_phase0_carry__3_n_2\,
      CO(0) => \gl_phase0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^start_us_reg[31]\(19 downto 16),
      O(3 downto 0) => gl_phase0(19 downto 16),
      S(3) => u_cap2_n_41,
      S(2) => u_cap2_n_42,
      S(1) => u_cap2_n_43,
      S(0) => u_cap2_n_44
    );
\gl_phase0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \gl_phase0_carry__3_n_0\,
      CO(3) => \NLW_gl_phase0_carry__4_CO_UNCONNECTED\(3),
      CO(2) => \gl_phase0_carry__4_n_1\,
      CO(1) => \gl_phase0_carry__4_n_2\,
      CO(0) => \gl_phase0_carry__4_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \^start_us_reg[31]\(22 downto 20),
      O(3 downto 0) => gl_phase0(23 downto 20),
      S(3) => u_cap2_n_5,
      S(2) => u_cap2_n_6,
      S(1) => u_cap2_n_7,
      S(0) => u_cap2_n_8
    );
\gl_phase_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => gl_phase0(0),
      Q => \^genlock\(0),
      R => '0'
    );
\gl_phase_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => gl_phase0(10),
      Q => \^genlock\(10),
      R => '0'
    );
\gl_phase_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => gl_phase0(11),
      Q => \^genlock\(11),
      R => '0'
    );
\gl_phase_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => gl_phase0(12),
      Q => \^genlock\(12),
      R => '0'
    );
\gl_phase_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => gl_phase0(13),
      Q => \^genlock\(13),
      R => '0'
    );
\gl_phase_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => gl_phase0(14),
      Q => \^genlock\(14),
      R => '0'
    );
\gl_phase_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => gl_phase0(15),
      Q => \^genlock\(15),
      R => '0'
    );
\gl_phase_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => gl_phase0(16),
      Q => \^genlock\(16),
      R => '0'
    );
\gl_phase_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => gl_phase0(17),
      Q => \^genlock\(17),
      R => '0'
    );
\gl_phase_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => gl_phase0(18),
      Q => \^genlock\(18),
      R => '0'
    );
\gl_phase_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => gl_phase0(19),
      Q => \^genlock\(19),
      R => '0'
    );
\gl_phase_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => gl_phase0(1),
      Q => \^genlock\(1),
      R => '0'
    );
\gl_phase_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => gl_phase0(20),
      Q => \^genlock\(20),
      R => '0'
    );
\gl_phase_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => gl_phase0(21),
      Q => \^genlock\(21),
      R => '0'
    );
\gl_phase_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => gl_phase0(22),
      Q => \^genlock\(22),
      R => '0'
    );
\gl_phase_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => gl_phase0(23),
      Q => \^genlock\(23),
      R => '0'
    );
\gl_phase_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => gl_phase0(2),
      Q => \^genlock\(2),
      R => '0'
    );
\gl_phase_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => gl_phase0(3),
      Q => \^genlock\(3),
      R => '0'
    );
\gl_phase_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => gl_phase0(4),
      Q => \^genlock\(4),
      R => '0'
    );
\gl_phase_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => gl_phase0(5),
      Q => \^genlock\(5),
      R => '0'
    );
\gl_phase_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => gl_phase0(6),
      Q => \^genlock\(6),
      R => '0'
    );
\gl_phase_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => gl_phase0(7),
      Q => \^genlock\(7),
      R => '0'
    );
\gl_phase_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => gl_phase0(8),
      Q => \^genlock\(8),
      R => '0'
    );
\gl_phase_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => gl_phase0(9),
      Q => \^genlock\(9),
      R => '0'
    );
gl_seq0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => gl_seq0_carry_n_0,
      CO(2) => gl_seq0_carry_n_1,
      CO(1) => gl_seq0_carry_n_2,
      CO(0) => gl_seq0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => NLW_gl_seq0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => u_cap2_n_78,
      S(2) => u_cap2_n_79,
      S(1) => u_cap2_n_80,
      S(0) => u_cap2_n_81
    );
\gl_seq0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => gl_seq0_carry_n_0,
      CO(3) => \gl_seq0_carry__0_n_0\,
      CO(2) => \gl_seq0_carry__0_n_1\,
      CO(1) => \gl_seq0_carry__0_n_2\,
      CO(0) => \gl_seq0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_gl_seq0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => u_cap2_n_82,
      S(2) => u_cap2_n_83,
      S(1) => u_cap2_n_84,
      S(0) => u_cap2_n_85
    );
\gl_seq0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gl_seq0_carry__0_n_0\,
      CO(3) => \NLW_gl_seq0_carry__1_CO_UNCONNECTED\(3),
      CO(2) => sel,
      CO(1) => \gl_seq0_carry__1_n_2\,
      CO(0) => \gl_seq0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3 downto 0) => \NLW_gl_seq0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => u_cap2_n_86,
      S(1) => u_cap2_n_87,
      S(0) => u_cap2_n_88
    );
\gl_seq[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^genlock\(24),
      O => \p_0_in__4\(0)
    );
\gl_seq[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^genlock\(24),
      I1 => \^genlock\(25),
      O => \p_0_in__4\(1)
    );
\gl_seq[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^genlock\(26),
      I1 => \^genlock\(24),
      I2 => \^genlock\(25),
      O => \p_0_in__4\(2)
    );
\gl_seq[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^genlock\(27),
      I1 => \^genlock\(25),
      I2 => \^genlock\(24),
      I3 => \^genlock\(26),
      O => \p_0_in__4\(3)
    );
\gl_seq[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^genlock\(28),
      I1 => \^genlock\(26),
      I2 => \^genlock\(24),
      I3 => \^genlock\(25),
      I4 => \^genlock\(27),
      O => \p_0_in__4\(4)
    );
\gl_seq[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^genlock\(27),
      I1 => \^genlock\(25),
      I2 => \^genlock\(24),
      I3 => \^genlock\(26),
      I4 => \^genlock\(28),
      I5 => \^genlock\(29),
      O => \p_0_in__4\(5)
    );
\gl_seq[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^genlock\(30),
      I1 => \gl_seq[7]_i_2_n_0\,
      O => \p_0_in__4\(6)
    );
\gl_seq[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^genlock\(31),
      I1 => \gl_seq[7]_i_2_n_0\,
      I2 => \^genlock\(30),
      O => \p_0_in__4\(7)
    );
\gl_seq[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^genlock\(29),
      I1 => \^genlock\(28),
      I2 => \^genlock\(26),
      I3 => \^genlock\(24),
      I4 => \^genlock\(25),
      I5 => \^genlock\(27),
      O => \gl_seq[7]_i_2_n_0\
    );
\gl_seq_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \p_0_in__4\(0),
      Q => \^genlock\(24),
      R => '0'
    );
\gl_seq_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \p_0_in__4\(1),
      Q => \^genlock\(25),
      R => '0'
    );
\gl_seq_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \p_0_in__4\(2),
      Q => \^genlock\(26),
      R => '0'
    );
\gl_seq_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \p_0_in__4\(3),
      Q => \^genlock\(27),
      R => '0'
    );
\gl_seq_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \p_0_in__4\(4),
      Q => \^genlock\(28),
      R => '0'
    );
\gl_seq_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \p_0_in__4\(5),
      Q => \^genlock\(29),
      R => '0'
    );
\gl_seq_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \p_0_in__4\(6),
      Q => \^genlock\(30),
      R => '0'
    );
\gl_seq_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \p_0_in__4\(7),
      Q => \^genlock\(31),
      R => '0'
    );
half_ms1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => half_ms1_carry_n_0,
      CO(2) => half_ms1_carry_n_1,
      CO(1) => half_ms1_carry_n_2,
      CO(0) => half_ms1_carry_n_3,
      CYINIT => half_ms(0),
      DI(3 downto 0) => B"0000",
      O(3) => half_ms1_carry_n_4,
      O(2) => half_ms1_carry_n_5,
      O(1) => half_ms1_carry_n_6,
      O(0) => half_ms1_carry_n_7,
      S(3 downto 0) => half_ms(4 downto 1)
    );
\half_ms1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => half_ms1_carry_n_0,
      CO(3) => \half_ms1_carry__0_n_0\,
      CO(2) => \half_ms1_carry__0_n_1\,
      CO(1) => \half_ms1_carry__0_n_2\,
      CO(0) => \half_ms1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \half_ms1_carry__0_n_4\,
      O(2) => \half_ms1_carry__0_n_5\,
      O(1) => \half_ms1_carry__0_n_6\,
      O(0) => \half_ms1_carry__0_n_7\,
      S(3 downto 0) => half_ms(8 downto 5)
    );
\half_ms1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_ms1_carry__0_n_0\,
      CO(3) => \half_ms1_carry__1_n_0\,
      CO(2) => \half_ms1_carry__1_n_1\,
      CO(1) => \half_ms1_carry__1_n_2\,
      CO(0) => \half_ms1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \half_ms1_carry__1_n_4\,
      O(2) => \half_ms1_carry__1_n_5\,
      O(1) => \half_ms1_carry__1_n_6\,
      O(0) => \half_ms1_carry__1_n_7\,
      S(3 downto 0) => half_ms(12 downto 9)
    );
\half_ms1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_ms1_carry__1_n_0\,
      CO(3) => \NLW_half_ms1_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \half_ms1_carry__2_n_1\,
      CO(1) => \half_ms1_carry__2_n_2\,
      CO(0) => \half_ms1_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \half_ms1_carry__2_n_4\,
      O(2) => \half_ms1_carry__2_n_5\,
      O(1) => \half_ms1_carry__2_n_6\,
      O(0) => \half_ms1_carry__2_n_7\,
      S(3 downto 0) => half_ms(16 downto 13)
    );
\half_ms[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_ms(0),
      O => \half_ms[0]_i_1_n_0\
    );
\half_ms[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \half_ms[16]_i_2_n_0\,
      I1 => \half_ms[16]_i_3_n_0\,
      I2 => \half_ms[16]_i_4_n_0\,
      O => \half_ms[16]_i_1_n_0\
    );
\half_ms[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => half_ms(7),
      I1 => half_ms(8),
      I2 => half_ms(5),
      I3 => half_ms(6),
      I4 => half_ms(10),
      I5 => half_ms(9),
      O => \half_ms[16]_i_2_n_0\
    );
\half_ms[16]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => half_ms(0),
      I1 => half_ms(1),
      I2 => half_ms(2),
      I3 => half_ms(4),
      I4 => half_ms(3),
      O => \half_ms[16]_i_3_n_0\
    );
\half_ms[16]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => half_ms(13),
      I1 => half_ms(14),
      I2 => half_ms(11),
      I3 => half_ms(12),
      I4 => half_ms(16),
      I5 => half_ms(15),
      O => \half_ms[16]_i_4_n_0\
    );
\half_ms_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \half_ms[0]_i_1_n_0\,
      Q => half_ms(0),
      R => \half_ms[16]_i_1_n_0\
    );
\half_ms_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \half_ms1_carry__1_n_6\,
      Q => half_ms(10),
      R => \half_ms[16]_i_1_n_0\
    );
\half_ms_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \half_ms1_carry__1_n_5\,
      Q => half_ms(11),
      R => \half_ms[16]_i_1_n_0\
    );
\half_ms_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \half_ms1_carry__1_n_4\,
      Q => half_ms(12),
      R => \half_ms[16]_i_1_n_0\
    );
\half_ms_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \half_ms1_carry__2_n_7\,
      Q => half_ms(13),
      R => \half_ms[16]_i_1_n_0\
    );
\half_ms_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \half_ms1_carry__2_n_6\,
      Q => half_ms(14),
      R => \half_ms[16]_i_1_n_0\
    );
\half_ms_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \half_ms1_carry__2_n_5\,
      Q => half_ms(15),
      R => \half_ms[16]_i_1_n_0\
    );
\half_ms_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \half_ms1_carry__2_n_4\,
      Q => half_ms(16),
      R => \half_ms[16]_i_1_n_0\
    );
\half_ms_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => half_ms1_carry_n_7,
      Q => half_ms(1),
      R => \half_ms[16]_i_1_n_0\
    );
\half_ms_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => half_ms1_carry_n_6,
      Q => half_ms(2),
      R => \half_ms[16]_i_1_n_0\
    );
\half_ms_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => half_ms1_carry_n_5,
      Q => half_ms(3),
      R => \half_ms[16]_i_1_n_0\
    );
\half_ms_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => half_ms1_carry_n_4,
      Q => half_ms(4),
      R => \half_ms[16]_i_1_n_0\
    );
\half_ms_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \half_ms1_carry__0_n_7\,
      Q => half_ms(5),
      R => \half_ms[16]_i_1_n_0\
    );
\half_ms_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \half_ms1_carry__0_n_6\,
      Q => half_ms(6),
      R => \half_ms[16]_i_1_n_0\
    );
\half_ms_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \half_ms1_carry__0_n_5\,
      Q => half_ms(7),
      R => \half_ms[16]_i_1_n_0\
    );
\half_ms_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \half_ms1_carry__0_n_4\,
      Q => half_ms(8),
      R => \half_ms[16]_i_1_n_0\
    );
\half_ms_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \half_ms1_carry__1_n_7\,
      Q => half_ms(9),
      R => \half_ms[16]_i_1_n_0\
    );
\prst_sync[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => gpio_o(0),
      O => p_1_out(0)
    );
\prst_sync_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => pclk,
      CE => '1',
      D => p_1_out(0),
      Q => prst_sync(0),
      R => '0'
    );
\prst_sync_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => pclk,
      CE => '1',
      D => prst_sync(0),
      Q => prst_sync(1),
      R => '0'
    );
\prst_sync_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => pclk,
      CE => '1',
      D => prst_sync(1),
      Q => prst_sync(2),
      R => '0'
    );
\t_us[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => t_us_reg(0),
      O => \t_us[0]_i_2_n_0\
    );
\t_us_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => us_tick,
      D => \t_us_reg[0]_i_1_n_7\,
      Q => t_us_reg(0),
      R => '0'
    );
\t_us_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \t_us_reg[0]_i_1_n_0\,
      CO(2) => \t_us_reg[0]_i_1_n_1\,
      CO(1) => \t_us_reg[0]_i_1_n_2\,
      CO(0) => \t_us_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \t_us_reg[0]_i_1_n_4\,
      O(2) => \t_us_reg[0]_i_1_n_5\,
      O(1) => \t_us_reg[0]_i_1_n_6\,
      O(0) => \t_us_reg[0]_i_1_n_7\,
      S(3 downto 1) => t_us_reg(3 downto 1),
      S(0) => \t_us[0]_i_2_n_0\
    );
\t_us_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => us_tick,
      D => \t_us_reg[8]_i_1_n_5\,
      Q => t_us_reg(10),
      R => '0'
    );
\t_us_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => us_tick,
      D => \t_us_reg[8]_i_1_n_4\,
      Q => t_us_reg(11),
      R => '0'
    );
\t_us_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => us_tick,
      D => \t_us_reg[12]_i_1_n_7\,
      Q => t_us_reg(12),
      R => '0'
    );
\t_us_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \t_us_reg[8]_i_1_n_0\,
      CO(3) => \t_us_reg[12]_i_1_n_0\,
      CO(2) => \t_us_reg[12]_i_1_n_1\,
      CO(1) => \t_us_reg[12]_i_1_n_2\,
      CO(0) => \t_us_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \t_us_reg[12]_i_1_n_4\,
      O(2) => \t_us_reg[12]_i_1_n_5\,
      O(1) => \t_us_reg[12]_i_1_n_6\,
      O(0) => \t_us_reg[12]_i_1_n_7\,
      S(3 downto 0) => t_us_reg(15 downto 12)
    );
\t_us_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => us_tick,
      D => \t_us_reg[12]_i_1_n_6\,
      Q => t_us_reg(13),
      R => '0'
    );
\t_us_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => us_tick,
      D => \t_us_reg[12]_i_1_n_5\,
      Q => t_us_reg(14),
      R => '0'
    );
\t_us_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => us_tick,
      D => \t_us_reg[12]_i_1_n_4\,
      Q => t_us_reg(15),
      R => '0'
    );
\t_us_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => us_tick,
      D => \t_us_reg[16]_i_1_n_7\,
      Q => t_us_reg(16),
      R => '0'
    );
\t_us_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \t_us_reg[12]_i_1_n_0\,
      CO(3) => \t_us_reg[16]_i_1_n_0\,
      CO(2) => \t_us_reg[16]_i_1_n_1\,
      CO(1) => \t_us_reg[16]_i_1_n_2\,
      CO(0) => \t_us_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \t_us_reg[16]_i_1_n_4\,
      O(2) => \t_us_reg[16]_i_1_n_5\,
      O(1) => \t_us_reg[16]_i_1_n_6\,
      O(0) => \t_us_reg[16]_i_1_n_7\,
      S(3 downto 0) => t_us_reg(19 downto 16)
    );
\t_us_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => us_tick,
      D => \t_us_reg[16]_i_1_n_6\,
      Q => t_us_reg(17),
      R => '0'
    );
\t_us_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => us_tick,
      D => \t_us_reg[16]_i_1_n_5\,
      Q => t_us_reg(18),
      R => '0'
    );
\t_us_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => us_tick,
      D => \t_us_reg[16]_i_1_n_4\,
      Q => t_us_reg(19),
      R => '0'
    );
\t_us_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => us_tick,
      D => \t_us_reg[0]_i_1_n_6\,
      Q => t_us_reg(1),
      R => '0'
    );
\t_us_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => us_tick,
      D => \t_us_reg[20]_i_1_n_7\,
      Q => t_us_reg(20),
      R => '0'
    );
\t_us_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \t_us_reg[16]_i_1_n_0\,
      CO(3) => \t_us_reg[20]_i_1_n_0\,
      CO(2) => \t_us_reg[20]_i_1_n_1\,
      CO(1) => \t_us_reg[20]_i_1_n_2\,
      CO(0) => \t_us_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \t_us_reg[20]_i_1_n_4\,
      O(2) => \t_us_reg[20]_i_1_n_5\,
      O(1) => \t_us_reg[20]_i_1_n_6\,
      O(0) => \t_us_reg[20]_i_1_n_7\,
      S(3 downto 0) => t_us_reg(23 downto 20)
    );
\t_us_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => us_tick,
      D => \t_us_reg[20]_i_1_n_6\,
      Q => t_us_reg(21),
      R => '0'
    );
\t_us_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => us_tick,
      D => \t_us_reg[20]_i_1_n_5\,
      Q => t_us_reg(22),
      R => '0'
    );
\t_us_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => us_tick,
      D => \t_us_reg[20]_i_1_n_4\,
      Q => t_us_reg(23),
      R => '0'
    );
\t_us_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => us_tick,
      D => \t_us_reg[24]_i_1_n_7\,
      Q => t_us_reg(24),
      R => '0'
    );
\t_us_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \t_us_reg[20]_i_1_n_0\,
      CO(3) => \t_us_reg[24]_i_1_n_0\,
      CO(2) => \t_us_reg[24]_i_1_n_1\,
      CO(1) => \t_us_reg[24]_i_1_n_2\,
      CO(0) => \t_us_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \t_us_reg[24]_i_1_n_4\,
      O(2) => \t_us_reg[24]_i_1_n_5\,
      O(1) => \t_us_reg[24]_i_1_n_6\,
      O(0) => \t_us_reg[24]_i_1_n_7\,
      S(3 downto 0) => t_us_reg(27 downto 24)
    );
\t_us_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => us_tick,
      D => \t_us_reg[24]_i_1_n_6\,
      Q => t_us_reg(25),
      R => '0'
    );
\t_us_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => us_tick,
      D => \t_us_reg[24]_i_1_n_5\,
      Q => t_us_reg(26),
      R => '0'
    );
\t_us_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => us_tick,
      D => \t_us_reg[24]_i_1_n_4\,
      Q => t_us_reg(27),
      R => '0'
    );
\t_us_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => us_tick,
      D => \t_us_reg[28]_i_1_n_7\,
      Q => t_us_reg(28),
      R => '0'
    );
\t_us_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \t_us_reg[24]_i_1_n_0\,
      CO(3) => \NLW_t_us_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \t_us_reg[28]_i_1_n_1\,
      CO(1) => \t_us_reg[28]_i_1_n_2\,
      CO(0) => \t_us_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \t_us_reg[28]_i_1_n_4\,
      O(2) => \t_us_reg[28]_i_1_n_5\,
      O(1) => \t_us_reg[28]_i_1_n_6\,
      O(0) => \t_us_reg[28]_i_1_n_7\,
      S(3 downto 0) => t_us_reg(31 downto 28)
    );
\t_us_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => us_tick,
      D => \t_us_reg[28]_i_1_n_6\,
      Q => t_us_reg(29),
      R => '0'
    );
\t_us_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => us_tick,
      D => \t_us_reg[0]_i_1_n_5\,
      Q => t_us_reg(2),
      R => '0'
    );
\t_us_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => us_tick,
      D => \t_us_reg[28]_i_1_n_5\,
      Q => t_us_reg(30),
      R => '0'
    );
\t_us_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => us_tick,
      D => \t_us_reg[28]_i_1_n_4\,
      Q => t_us_reg(31),
      R => '0'
    );
\t_us_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => us_tick,
      D => \t_us_reg[0]_i_1_n_4\,
      Q => t_us_reg(3),
      R => '0'
    );
\t_us_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => us_tick,
      D => \t_us_reg[4]_i_1_n_7\,
      Q => t_us_reg(4),
      R => '0'
    );
\t_us_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \t_us_reg[0]_i_1_n_0\,
      CO(3) => \t_us_reg[4]_i_1_n_0\,
      CO(2) => \t_us_reg[4]_i_1_n_1\,
      CO(1) => \t_us_reg[4]_i_1_n_2\,
      CO(0) => \t_us_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \t_us_reg[4]_i_1_n_4\,
      O(2) => \t_us_reg[4]_i_1_n_5\,
      O(1) => \t_us_reg[4]_i_1_n_6\,
      O(0) => \t_us_reg[4]_i_1_n_7\,
      S(3 downto 0) => t_us_reg(7 downto 4)
    );
\t_us_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => us_tick,
      D => \t_us_reg[4]_i_1_n_6\,
      Q => t_us_reg(5),
      R => '0'
    );
\t_us_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => us_tick,
      D => \t_us_reg[4]_i_1_n_5\,
      Q => t_us_reg(6),
      R => '0'
    );
\t_us_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => us_tick,
      D => \t_us_reg[4]_i_1_n_4\,
      Q => t_us_reg(7),
      R => '0'
    );
\t_us_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => us_tick,
      D => \t_us_reg[8]_i_1_n_7\,
      Q => t_us_reg(8),
      R => '0'
    );
\t_us_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \t_us_reg[4]_i_1_n_0\,
      CO(3) => \t_us_reg[8]_i_1_n_0\,
      CO(2) => \t_us_reg[8]_i_1_n_1\,
      CO(1) => \t_us_reg[8]_i_1_n_2\,
      CO(0) => \t_us_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \t_us_reg[8]_i_1_n_4\,
      O(2) => \t_us_reg[8]_i_1_n_5\,
      O(1) => \t_us_reg[8]_i_1_n_6\,
      O(0) => \t_us_reg[8]_i_1_n_7\,
      S(3 downto 0) => t_us_reg(11 downto 8)
    );
\t_us_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => us_tick,
      D => \t_us_reg[8]_i_1_n_6\,
      Q => t_us_reg(9),
      R => '0'
    );
tick_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \half_ms[16]_i_1_n_0\,
      Q => tick,
      R => '0'
    );
\tof_m0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => gpio_o(1),
      Q => tof_m0(0),
      R => '0'
    );
\tof_m0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => gpio_o(11),
      Q => tof_m0(10),
      R => '0'
    );
\tof_m0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => gpio_o(12),
      Q => tof_m0(11),
      R => '0'
    );
\tof_m0_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => gpio_o(13),
      Q => tof_m0(12),
      R => '0'
    );
\tof_m0_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => gpio_o(14),
      Q => tof_m0(13),
      R => '0'
    );
\tof_m0_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => gpio_o(15),
      Q => tof_m0(14),
      R => '0'
    );
\tof_m0_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => gpio_o(16),
      Q => tof_m0(15),
      R => '0'
    );
\tof_m0_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => gpio_o(17),
      Q => tof_m0(16),
      R => '0'
    );
\tof_m0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => gpio_o(2),
      Q => tof_m0(1),
      R => '0'
    );
\tof_m0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => gpio_o(3),
      Q => tof_m0(2),
      R => '0'
    );
\tof_m0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => gpio_o(4),
      Q => tof_m0(3),
      R => '0'
    );
\tof_m0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => gpio_o(5),
      Q => tof_m0(4),
      R => '0'
    );
\tof_m0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => gpio_o(6),
      Q => tof_m0(5),
      R => '0'
    );
\tof_m0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => gpio_o(7),
      Q => tof_m0(6),
      R => '0'
    );
\tof_m0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => gpio_o(8),
      Q => tof_m0(7),
      R => '0'
    );
\tof_m0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => gpio_o(9),
      Q => tof_m0(8),
      R => '0'
    );
\tof_m0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => gpio_o(10),
      Q => tof_m0(9),
      R => '0'
    );
\tof_m1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tof_m0(0),
      Q => tof_m1(0),
      R => '0'
    );
\tof_m1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tof_m0(10),
      Q => tof_m1(10),
      R => '0'
    );
\tof_m1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tof_m0(11),
      Q => tof_m1(11),
      R => '0'
    );
\tof_m1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tof_m0(12),
      Q => tof_m1(12),
      R => '0'
    );
\tof_m1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tof_m0(13),
      Q => tof_m1(13),
      R => '0'
    );
\tof_m1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tof_m0(14),
      Q => tof_m1(14),
      R => '0'
    );
\tof_m1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tof_m0(15),
      Q => tof_m1(15),
      R => '0'
    );
\tof_m1_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tof_m0(16),
      Q => tof_m1(16),
      R => '0'
    );
\tof_m1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tof_m0(1),
      Q => tof_m1(1),
      R => '0'
    );
\tof_m1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tof_m0(2),
      Q => tof_m1(2),
      R => '0'
    );
\tof_m1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tof_m0(3),
      Q => tof_m1(3),
      R => '0'
    );
\tof_m1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tof_m0(4),
      Q => tof_m1(4),
      R => '0'
    );
\tof_m1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tof_m0(5),
      Q => tof_m1(5),
      R => '0'
    );
\tof_m1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tof_m0(6),
      Q => tof_m1(6),
      R => '0'
    );
\tof_m1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tof_m0(7),
      Q => tof_m1(7),
      R => '0'
    );
\tof_m1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tof_m0(8),
      Q => tof_m1(8),
      R => '0'
    );
\tof_m1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tof_m0(9),
      Q => tof_m1(9),
      R => '0'
    );
\tof_m2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tof_m1(0),
      Q => \tof_m2_reg_n_0_[0]\,
      R => '0'
    );
\tof_m2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tof_m1(10),
      Q => \tof_m2_reg_n_0_[10]\,
      R => '0'
    );
\tof_m2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tof_m1(11),
      Q => \tof_m2_reg_n_0_[11]\,
      R => '0'
    );
\tof_m2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tof_m1(12),
      Q => \tof_m2_reg_n_0_[12]\,
      R => '0'
    );
\tof_m2_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tof_m1(13),
      Q => \tof_m2_reg_n_0_[13]\,
      R => '0'
    );
\tof_m2_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tof_m1(14),
      Q => \tof_m2_reg_n_0_[14]\,
      R => '0'
    );
\tof_m2_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tof_m1(15),
      Q => \tof_m2_reg_n_0_[15]\,
      R => '0'
    );
\tof_m2_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tof_m1(16),
      Q => \tof_m2_reg_n_0_[16]\,
      R => '0'
    );
\tof_m2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tof_m1(1),
      Q => \tof_m2_reg_n_0_[1]\,
      R => '0'
    );
\tof_m2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tof_m1(2),
      Q => \tof_m2_reg_n_0_[2]\,
      R => '0'
    );
\tof_m2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tof_m1(3),
      Q => \tof_m2_reg_n_0_[3]\,
      R => '0'
    );
\tof_m2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tof_m1(4),
      Q => \tof_m2_reg_n_0_[4]\,
      R => '0'
    );
\tof_m2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tof_m1(5),
      Q => \tof_m2_reg_n_0_[5]\,
      R => '0'
    );
\tof_m2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tof_m1(6),
      Q => \tof_m2_reg_n_0_[6]\,
      R => '0'
    );
\tof_m2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tof_m1(7),
      Q => \tof_m2_reg_n_0_[7]\,
      R => '0'
    );
\tof_m2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tof_m1(8),
      Q => \tof_m2_reg_n_0_[8]\,
      R => '0'
    );
\tof_m2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tof_m1(9),
      Q => \tof_m2_reg_n_0_[9]\,
      R => '0'
    );
\tof_mm_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => \tof_m2_reg_n_0_[0]\,
      Q => tof_mm(0),
      R => '0'
    );
\tof_mm_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => \tof_m2_reg_n_0_[10]\,
      Q => tof_mm(10),
      R => '0'
    );
\tof_mm_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => \tof_m2_reg_n_0_[11]\,
      Q => tof_mm(11),
      R => '0'
    );
\tof_mm_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => \tof_m2_reg_n_0_[12]\,
      Q => tof_mm(12),
      R => '0'
    );
\tof_mm_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => \tof_m2_reg_n_0_[13]\,
      Q => tof_mm(13),
      R => '0'
    );
\tof_mm_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => \tof_m2_reg_n_0_[14]\,
      Q => tof_mm(14),
      R => '0'
    );
\tof_mm_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => \tof_m2_reg_n_0_[15]\,
      Q => tof_mm(15),
      R => '0'
    );
\tof_mm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => \tof_m2_reg_n_0_[1]\,
      Q => tof_mm(1),
      R => '0'
    );
\tof_mm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => \tof_m2_reg_n_0_[2]\,
      Q => tof_mm(2),
      R => '0'
    );
\tof_mm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => \tof_m2_reg_n_0_[3]\,
      Q => tof_mm(3),
      R => '0'
    );
\tof_mm_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => \tof_m2_reg_n_0_[4]\,
      Q => tof_mm(4),
      R => '0'
    );
\tof_mm_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => \tof_m2_reg_n_0_[5]\,
      Q => tof_mm(5),
      R => '0'
    );
\tof_mm_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => \tof_m2_reg_n_0_[6]\,
      Q => tof_mm(6),
      R => '0'
    );
\tof_mm_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => \tof_m2_reg_n_0_[7]\,
      Q => tof_mm(7),
      R => '0'
    );
\tof_mm_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => \tof_m2_reg_n_0_[8]\,
      Q => tof_mm(8),
      R => '0'
    );
\tof_mm_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => \tof_m2_reg_n_0_[9]\,
      Q => tof_mm(9),
      R => '0'
    );
tof_new_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tof_m2_reg_n_0_[16]\,
      I1 => tof_m1(16),
      O => tof_new_i_1_n_0
    );
tof_new_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tof_new_i_1_n_0,
      Q => tof_new,
      R => '0'
    );
\tof_seq[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tof_seq_reg(0),
      O => \p_0_in__2\(0)
    );
\tof_seq[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tof_seq_reg(0),
      I1 => tof_seq_reg(1),
      O => \p_0_in__2\(1)
    );
\tof_seq[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => tof_seq_reg(2),
      I1 => tof_seq_reg(0),
      I2 => tof_seq_reg(1),
      O => \p_0_in__2\(2)
    );
\tof_seq[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => tof_seq_reg(3),
      I1 => tof_seq_reg(1),
      I2 => tof_seq_reg(0),
      I3 => tof_seq_reg(2),
      O => \p_0_in__2\(3)
    );
\tof_seq[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => tof_seq_reg(4),
      I1 => tof_seq_reg(2),
      I2 => tof_seq_reg(0),
      I3 => tof_seq_reg(1),
      I4 => tof_seq_reg(3),
      O => \p_0_in__2\(4)
    );
\tof_seq[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => tof_seq_reg(3),
      I1 => tof_seq_reg(1),
      I2 => tof_seq_reg(0),
      I3 => tof_seq_reg(2),
      I4 => tof_seq_reg(4),
      I5 => tof_seq_reg(5),
      O => \p_0_in__2\(5)
    );
\tof_seq[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tof_seq_reg(6),
      I1 => \tof_seq[7]_i_2_n_0\,
      O => \p_0_in__2\(6)
    );
\tof_seq[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => tof_seq_reg(7),
      I1 => \tof_seq[7]_i_2_n_0\,
      I2 => tof_seq_reg(6),
      O => \p_0_in__2\(7)
    );
\tof_seq[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => tof_seq_reg(5),
      I1 => tof_seq_reg(4),
      I2 => tof_seq_reg(2),
      I3 => tof_seq_reg(0),
      I4 => tof_seq_reg(1),
      I5 => tof_seq_reg(3),
      O => \tof_seq[7]_i_2_n_0\
    );
\tof_seq_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => \p_0_in__2\(0),
      Q => tof_seq_reg(0),
      R => '0'
    );
\tof_seq_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => \p_0_in__2\(1),
      Q => tof_seq_reg(1),
      R => '0'
    );
\tof_seq_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => \p_0_in__2\(2),
      Q => tof_seq_reg(2),
      R => '0'
    );
\tof_seq_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => \p_0_in__2\(3),
      Q => tof_seq_reg(3),
      R => '0'
    );
\tof_seq_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => \p_0_in__2\(4),
      Q => tof_seq_reg(4),
      R => '0'
    );
\tof_seq_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => \p_0_in__2\(5),
      Q => tof_seq_reg(5),
      R => '0'
    );
\tof_seq_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => \p_0_in__2\(6),
      Q => tof_seq_reg(6),
      R => '0'
    );
\tof_seq_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => \p_0_in__2\(7),
      Q => tof_seq_reg(7),
      R => '0'
    );
\tof_us_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => t_us_reg(0),
      Q => tof_us(0),
      R => '0'
    );
\tof_us_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => t_us_reg(10),
      Q => tof_us(10),
      R => '0'
    );
\tof_us_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => t_us_reg(11),
      Q => tof_us(11),
      R => '0'
    );
\tof_us_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => t_us_reg(12),
      Q => tof_us(12),
      R => '0'
    );
\tof_us_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => t_us_reg(13),
      Q => tof_us(13),
      R => '0'
    );
\tof_us_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => t_us_reg(14),
      Q => tof_us(14),
      R => '0'
    );
\tof_us_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => t_us_reg(15),
      Q => tof_us(15),
      R => '0'
    );
\tof_us_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => t_us_reg(16),
      Q => tof_us(16),
      R => '0'
    );
\tof_us_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => t_us_reg(17),
      Q => tof_us(17),
      R => '0'
    );
\tof_us_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => t_us_reg(18),
      Q => tof_us(18),
      R => '0'
    );
\tof_us_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => t_us_reg(19),
      Q => tof_us(19),
      R => '0'
    );
\tof_us_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => t_us_reg(1),
      Q => tof_us(1),
      R => '0'
    );
\tof_us_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => t_us_reg(20),
      Q => tof_us(20),
      R => '0'
    );
\tof_us_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => t_us_reg(21),
      Q => tof_us(21),
      R => '0'
    );
\tof_us_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => t_us_reg(22),
      Q => tof_us(22),
      R => '0'
    );
\tof_us_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => t_us_reg(23),
      Q => tof_us(23),
      R => '0'
    );
\tof_us_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => t_us_reg(24),
      Q => tof_us(24),
      R => '0'
    );
\tof_us_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => t_us_reg(25),
      Q => tof_us(25),
      R => '0'
    );
\tof_us_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => t_us_reg(26),
      Q => tof_us(26),
      R => '0'
    );
\tof_us_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => t_us_reg(27),
      Q => tof_us(27),
      R => '0'
    );
\tof_us_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => t_us_reg(28),
      Q => tof_us(28),
      R => '0'
    );
\tof_us_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => t_us_reg(29),
      Q => tof_us(29),
      R => '0'
    );
\tof_us_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => t_us_reg(2),
      Q => tof_us(2),
      R => '0'
    );
\tof_us_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => t_us_reg(30),
      Q => tof_us(30),
      R => '0'
    );
\tof_us_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => t_us_reg(31),
      Q => tof_us(31),
      R => '0'
    );
\tof_us_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => t_us_reg(3),
      Q => tof_us(3),
      R => '0'
    );
\tof_us_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => t_us_reg(4),
      Q => tof_us(4),
      R => '0'
    );
\tof_us_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => t_us_reg(5),
      Q => tof_us(5),
      R => '0'
    );
\tof_us_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => t_us_reg(6),
      Q => tof_us(6),
      R => '0'
    );
\tof_us_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => t_us_reg(7),
      Q => tof_us(7),
      R => '0'
    );
\tof_us_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => t_us_reg(8),
      Q => tof_us(8),
      R => '0'
    );
\tof_us_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tof_new,
      D => t_us_reg(9),
      Q => tof_us(9),
      R => '0'
    );
u_buf0: entity work.system_cam_input_0_0_rect_linebuf
     port map (
      E(0) => p_2_in,
      SR(0) => l0_sof,
      clk => clk,
      frame_base0(15 downto 0) => frame_base0(15 downto 0),
      \g_slice[0].m_reg_0\(7 downto 0) => l0_d(7 downto 0),
      pclk => pclk,
      rd_addr0(11 downto 0) => rd_addr0(11 downto 0),
      rd_data0(7 downto 0) => rd_data0(7 downto 0),
      rows_gray0(9 downto 0) => rows_gray0(9 downto 0),
      sof_toggle0 => \^sof_toggle0\,
      sof_toggle_reg_0 => \g_bin.u_bin0_n_4\,
      \wx_reg[9]_0\(0) => l0_en
    );
u_buf1: entity work.system_cam_input_0_0_rect_linebuf_1
     port map (
      E(0) => p_2_in_0,
      SR(0) => l1_sof,
      clk => clk,
      frame_base1(15 downto 0) => frame_base1(15 downto 0),
      \g_slice[0].m_reg_0\(7 downto 0) => l1_d(7 downto 0),
      pclk => pclk,
      rd_addr1(11 downto 0) => rd_addr1(11 downto 0),
      rd_data1(7 downto 0) => rd_data1(7 downto 0),
      rows_gray1(9 downto 0) => rows_gray1(9 downto 0),
      sof_toggle1 => \^sof_toggle1\,
      sof_toggle_reg_0 => \g_bin.u_bin1_n_4\,
      \wx_reg[9]_0\(0) => l1_en
    );
u_cap: entity work.system_cam_input_0_0_cam_capture
     port map (
      D(31 downto 0) => t_us_reg(31 downto 0),
      Q(0) => \^q\(13),
      SR(0) => u_cap_n_10,
      c0_afull => c0_afull,
      c0_wr => c0_wr,
      cam_d(7 downto 0) => cam_d(7 downto 0),
      cam_href => cam_href,
      cam_pclk => cam_pclk,
      cam_vsync => cam_vsync,
      clk => clk,
      \d_q_reg[7]_0\(7 downto 0) => s0_d(7 downto 0),
      do_wr => do_wr,
      \en_sync_reg[2]\ => u_cap_n_7,
      \en_sync_reg[2]_0\ => u_cap_n_11,
      \fifo_din_reg[7]_0\(7 downto 0) => c0_din(7 downto 0),
      frame_led0 => frame_led0,
      \h_tof_mm_reg[15]_0\(15 downto 0) => tof_mm(15 downto 0),
      \h_tof_seq_reg[7]_0\(7 downto 0) => tof_seq_reg(7 downto 0),
      \h_tof_us_reg[31]_0\(31 downto 0) => tof_us(31 downto 0),
      href_d => href_d,
      href_d_reg => u_luma0_n_3,
      href_q_reg_0 => u_cap_n_46,
      \out\(0) => en_sync(2),
      \px_reg[1]\ => u_luma0_n_5,
      s0_href => s0_href,
      s0_stb => s0_stb,
      s0_vsync => s0_vsync,
      second => second,
      \start_us_reg[23]_0\(23 downto 16) => data13(7 downto 0),
      \start_us_reg[23]_0\(15 downto 8) => data12(7 downto 0),
      \start_us_reg[23]_0\(7) => u_cap_n_38,
      \start_us_reg[23]_0\(6) => u_cap_n_39,
      \start_us_reg[23]_0\(5) => u_cap_n_40,
      \start_us_reg[23]_0\(4) => u_cap_n_41,
      \start_us_reg[23]_0\(3) => u_cap_n_42,
      \start_us_reg[23]_0\(2) => u_cap_n_43,
      \start_us_reg[23]_0\(1) => u_cap_n_44,
      \start_us_reg[23]_0\(0) => u_cap_n_45,
      \state_reg[0]_0\ => \^en_sync_reg[2]_0\,
      stb_reg_0 => u_cap_n_12,
      stb_reg_1 => u_cap_n_13,
      tick => tick,
      vsync_d => vsync_d,
      vsync_d_reg => u_cap_n_6,
      vsync_q_reg_0 => u_cap_n_47
    );
u_cap2: entity work.system_cam_input_0_0_cam_capture_2
     port map (
      D(31 downto 0) => t_us_reg(31 downto 0),
      Q(31 downto 0) => \^start_us_reg[31]\(31 downto 0),
      S(3) => u_cap2_n_5,
      S(2) => u_cap2_n_6,
      S(1) => u_cap2_n_7,
      S(0) => u_cap2_n_8,
      SR(0) => u_cap2_n_66,
      c1_afull => c1_afull,
      c1_wr => c1_wr,
      cam2_d(7 downto 0) => cam2_d(7 downto 0),
      cam2_href => cam2_href,
      cam2_pclk => cam2_pclk,
      cam2_vsync => cam2_vsync,
      clk => clk,
      \d_q_reg[7]_0\(7 downto 0) => s1_d(7 downto 0),
      do_wr => do_wr_4,
      \en_sync_reg[2]\ => u_cap2_n_67,
      \fifo_din_reg[7]_0\(7 downto 0) => c1_din(7 downto 0),
      frame_led1 => frame_led1,
      \gl_phase_reg[23]\(23 downto 16) => data13(7 downto 0),
      \gl_phase_reg[23]\(15 downto 8) => data12(7 downto 0),
      \gl_phase_reg[23]\(7) => u_cap_n_38,
      \gl_phase_reg[23]\(6) => u_cap_n_39,
      \gl_phase_reg[23]\(5) => u_cap_n_40,
      \gl_phase_reg[23]\(4) => u_cap_n_41,
      \gl_phase_reg[23]\(3) => u_cap_n_42,
      \gl_phase_reg[23]\(2) => u_cap_n_43,
      \gl_phase_reg[23]\(1) => u_cap_n_44,
      \gl_phase_reg[23]\(0) => u_cap_n_45,
      \gl_seq_reg[0]\(31 downto 0) => us1_seen(31 downto 0),
      \h_tof_mm_reg[15]_0\(15 downto 0) => tof_mm(15 downto 0),
      \h_tof_seq_reg[7]_0\(7 downto 0) => tof_seq_reg(7 downto 0),
      \h_tof_us_reg[31]_0\(31 downto 0) => tof_us(31 downto 0),
      href_d => href_d_3,
      href_d_reg => u_luma1_n_3,
      href_q_reg_0 => u_cap2_n_89,
      \out\(0) => en_sync(2),
      \px_reg[1]\ => u_luma1_n_5,
      s1_href => s1_href,
      s1_stb => s1_stb,
      s1_vsync => s1_vsync,
      second => second_2,
      \start_us_reg[11]_0\(3) => u_cap2_n_49,
      \start_us_reg[11]_0\(2) => u_cap2_n_50,
      \start_us_reg[11]_0\(1) => u_cap2_n_51,
      \start_us_reg[11]_0\(0) => u_cap2_n_52,
      \start_us_reg[15]_0\(3) => u_cap2_n_45,
      \start_us_reg[15]_0\(2) => u_cap2_n_46,
      \start_us_reg[15]_0\(1) => u_cap2_n_47,
      \start_us_reg[15]_0\(0) => u_cap2_n_48,
      \start_us_reg[19]_0\(3) => u_cap2_n_41,
      \start_us_reg[19]_0\(2) => u_cap2_n_42,
      \start_us_reg[19]_0\(1) => u_cap2_n_43,
      \start_us_reg[19]_0\(0) => u_cap2_n_44,
      \start_us_reg[23]_0\(3) => u_cap2_n_82,
      \start_us_reg[23]_0\(2) => u_cap2_n_83,
      \start_us_reg[23]_0\(1) => u_cap2_n_84,
      \start_us_reg[23]_0\(0) => u_cap2_n_85,
      \start_us_reg[31]_0\(2) => u_cap2_n_86,
      \start_us_reg[31]_0\(1) => u_cap2_n_87,
      \start_us_reg[31]_0\(0) => u_cap2_n_88,
      \start_us_reg[3]_0\(3) => u_cap2_n_57,
      \start_us_reg[3]_0\(2) => u_cap2_n_58,
      \start_us_reg[3]_0\(1) => u_cap2_n_59,
      \start_us_reg[3]_0\(0) => u_cap2_n_60,
      \start_us_reg[7]_0\(3) => u_cap2_n_53,
      \start_us_reg[7]_0\(2) => u_cap2_n_54,
      \start_us_reg[7]_0\(1) => u_cap2_n_55,
      \start_us_reg[7]_0\(0) => u_cap2_n_56,
      \state_reg[0]_0\ => \^en_sync_reg[2]_0\,
      stb_reg_0 => u_cap2_n_63,
      stb_reg_1 => u_cap2_n_68,
      stb_reg_2 => u_cap2_n_69,
      tick => tick,
      \us1_seen_reg[11]\(3) => u_cap2_n_78,
      \us1_seen_reg[11]\(2) => u_cap2_n_79,
      \us1_seen_reg[11]\(1) => u_cap2_n_80,
      \us1_seen_reg[11]\(0) => u_cap2_n_81,
      vsync_d => vsync_d_6,
      vsync_d_reg => u_cap2_n_62,
      vsync_q_reg_0 => u_cap2_n_90,
      \wp_reg[12]\(0) => \^count_reg[13]\(13)
    );
u_cfifo0: entity work.system_cam_input_0_0_byte_fifo
     port map (
      Q(13 downto 0) => \^q\(13 downto 0),
      c0_afull => c0_afull,
      c0_wr => c0_wr,
      clk => clk,
      din(7 downto 0) => c0_din(7 downto 0),
      do_wr => do_wr,
      raw0_dout(7 downto 0) => raw0_dout(7 downto 0),
      raw0_rd => raw0_rd,
      \rp_reg[0]_0\ => \^en_sync_reg[2]_0\
    );
u_cfifo1: entity work.system_cam_input_0_0_byte_fifo_3
     port map (
      Q(13 downto 0) => \^count_reg[13]\(13 downto 0),
      c1_afull => c1_afull,
      c1_wr => c1_wr,
      clk => clk,
      din(7 downto 0) => c1_din(7 downto 0),
      do_wr => do_wr_4,
      \en_sync_reg[2]\ => \^en_sync_reg[2]_0\,
      \out\(0) => en_sync(2),
      raw1_dout(7 downto 0) => raw1_dout(7 downto 0),
      raw1_rd => raw1_rd
    );
u_luma0: entity work.system_cam_input_0_0_luma_tap
     port map (
      E(0) => u_luma0_n_4,
      Q(0) => p_0_in,
      SR(0) => u_cap_n_10,
      clk => clk,
      fill_reg_0 => u_cap_n_11,
      href_d => href_d,
      href_d_reg_0 => u_luma0_n_3,
      href_d_reg_1 => u_cap_n_46,
      \out\(0) => en_sync(2),
      \px_reg[10]_0\ => u_cap_n_13,
      \row_reg[8]_0\ => u_luma0_n_5,
      \row_reg[8]_1\ => \^en_sync_reg[2]_0\,
      \row_reg[8]_2\ => u_cap_n_12,
      s0_href => s0_href,
      s0_stb => s0_stb,
      s0_vsync => s0_vsync,
      second => second,
      t0_en => t0_en,
      t0_sof => t0_sof,
      vsync_d => vsync_d,
      vsync_d_reg_0 => u_cap_n_47,
      \wr_data_reg[7]_0\(7 downto 0) => t0_d(7 downto 0),
      \wr_en_reg__0_0\(0) => prev(0),
      wr_sof_reg_0 => u_cap_n_7,
      \yr_reg[-1111111104]_0\(7 downto 0) => s0_d(7 downto 0),
      \ysum[-1111111111]__0_0\ => u_cap_n_6
    );
u_luma1: entity work.system_cam_input_0_0_luma_tap_4
     port map (
      E(0) => u_luma1_n_4,
      Q(0) => p_0_in_1,
      SR(0) => u_cap2_n_66,
      clk => clk,
      fill_reg_0 => u_cap2_n_67,
      href_d => href_d_3,
      href_d_reg_0 => u_luma1_n_3,
      href_d_reg_1 => u_cap2_n_89,
      \out\(0) => en_sync(2),
      p_zero_reg_0 => \^en_sync_reg[2]_0\,
      \px_reg[10]_0\ => u_cap2_n_69,
      \row_reg[8]_0\ => u_luma1_n_5,
      \row_reg[8]_1\ => u_cap2_n_68,
      s1_href => s1_href,
      s1_stb => s1_stb,
      s1_vsync => s1_vsync,
      second => second_2,
      t1_en => t1_en,
      t1_sof => t1_sof,
      vsync_d => vsync_d_6,
      vsync_d_reg_0 => u_cap2_n_90,
      \wr_data_reg[7]_0\(7 downto 0) => t1_d(7 downto 0),
      \wr_en_reg__0_0\(0) => prev_5(0),
      wr_sof_reg_0 => u_cap2_n_63,
      \yr_reg[-1111111104]_0\(7 downto 0) => s1_d(7 downto 0),
      \ysum[-1111111111]__0_0\ => u_cap2_n_62
    );
\us1_seen_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^start_us_reg[31]\(0),
      Q => us1_seen(0),
      R => '0'
    );
\us1_seen_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^start_us_reg[31]\(10),
      Q => us1_seen(10),
      R => '0'
    );
\us1_seen_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^start_us_reg[31]\(11),
      Q => us1_seen(11),
      R => '0'
    );
\us1_seen_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^start_us_reg[31]\(12),
      Q => us1_seen(12),
      R => '0'
    );
\us1_seen_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^start_us_reg[31]\(13),
      Q => us1_seen(13),
      R => '0'
    );
\us1_seen_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^start_us_reg[31]\(14),
      Q => us1_seen(14),
      R => '0'
    );
\us1_seen_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^start_us_reg[31]\(15),
      Q => us1_seen(15),
      R => '0'
    );
\us1_seen_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^start_us_reg[31]\(16),
      Q => us1_seen(16),
      R => '0'
    );
\us1_seen_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^start_us_reg[31]\(17),
      Q => us1_seen(17),
      R => '0'
    );
\us1_seen_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^start_us_reg[31]\(18),
      Q => us1_seen(18),
      R => '0'
    );
\us1_seen_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^start_us_reg[31]\(19),
      Q => us1_seen(19),
      R => '0'
    );
\us1_seen_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^start_us_reg[31]\(1),
      Q => us1_seen(1),
      R => '0'
    );
\us1_seen_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^start_us_reg[31]\(20),
      Q => us1_seen(20),
      R => '0'
    );
\us1_seen_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^start_us_reg[31]\(21),
      Q => us1_seen(21),
      R => '0'
    );
\us1_seen_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^start_us_reg[31]\(22),
      Q => us1_seen(22),
      R => '0'
    );
\us1_seen_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^start_us_reg[31]\(23),
      Q => us1_seen(23),
      R => '0'
    );
\us1_seen_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^start_us_reg[31]\(24),
      Q => us1_seen(24),
      R => '0'
    );
\us1_seen_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^start_us_reg[31]\(25),
      Q => us1_seen(25),
      R => '0'
    );
\us1_seen_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^start_us_reg[31]\(26),
      Q => us1_seen(26),
      R => '0'
    );
\us1_seen_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^start_us_reg[31]\(27),
      Q => us1_seen(27),
      R => '0'
    );
\us1_seen_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^start_us_reg[31]\(28),
      Q => us1_seen(28),
      R => '0'
    );
\us1_seen_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^start_us_reg[31]\(29),
      Q => us1_seen(29),
      R => '0'
    );
\us1_seen_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^start_us_reg[31]\(2),
      Q => us1_seen(2),
      R => '0'
    );
\us1_seen_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^start_us_reg[31]\(30),
      Q => us1_seen(30),
      R => '0'
    );
\us1_seen_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^start_us_reg[31]\(31),
      Q => us1_seen(31),
      R => '0'
    );
\us1_seen_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^start_us_reg[31]\(3),
      Q => us1_seen(3),
      R => '0'
    );
\us1_seen_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^start_us_reg[31]\(4),
      Q => us1_seen(4),
      R => '0'
    );
\us1_seen_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^start_us_reg[31]\(5),
      Q => us1_seen(5),
      R => '0'
    );
\us1_seen_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^start_us_reg[31]\(6),
      Q => us1_seen(6),
      R => '0'
    );
\us1_seen_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^start_us_reg[31]\(7),
      Q => us1_seen(7),
      R => '0'
    );
\us1_seen_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^start_us_reg[31]\(8),
      Q => us1_seen(8),
      R => '0'
    );
\us1_seen_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^start_us_reg[31]\(9),
      Q => us1_seen(9),
      R => '0'
    );
\us_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => us_cnt(0),
      O => \us_cnt[0]_i_1_n_0\
    );
\us_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => us_cnt(0),
      I1 => us_cnt(1),
      O => \us_cnt[1]_i_1_n_0\
    );
\us_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => us_cnt(1),
      I1 => us_cnt(0),
      I2 => us_cnt(2),
      O => \us_cnt[2]_i_1_n_0\
    );
\us_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => us_cnt(2),
      I1 => us_cnt(0),
      I2 => us_cnt(1),
      I3 => us_cnt(3),
      O => \us_cnt[3]_i_1_n_0\
    );
\us_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => us_cnt(3),
      I1 => us_cnt(1),
      I2 => us_cnt(0),
      I3 => us_cnt(2),
      I4 => us_cnt(4),
      O => \us_cnt[4]_i_1_n_0\
    );
\us_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => us_cnt(4),
      I1 => us_cnt(2),
      I2 => us_cnt(0),
      I3 => us_cnt(1),
      I4 => us_cnt(3),
      I5 => us_cnt(5),
      O => \us_cnt[5]_i_1_n_0\
    );
\us_cnt[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => us_cnt(5),
      I1 => us_cnt(3),
      I2 => \us_cnt[7]_i_3_n_0\,
      I3 => us_cnt(4),
      I4 => us_cnt(6),
      O => \us_cnt[6]_i_1_n_0\
    );
\us_cnt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => us_cnt(6),
      I1 => us_cnt(7),
      I2 => us_cnt(5),
      I3 => us_cnt(4),
      I4 => us_cnt(3),
      I5 => \us_cnt[7]_i_3_n_0\,
      O => \us_cnt[7]_i_1_n_0\
    );
\us_cnt[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => us_cnt(6),
      I1 => us_cnt(4),
      I2 => \us_cnt[7]_i_3_n_0\,
      I3 => us_cnt(3),
      I4 => us_cnt(5),
      I5 => us_cnt(7),
      O => \us_cnt[7]_i_2_n_0\
    );
\us_cnt[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => us_cnt(1),
      I1 => us_cnt(0),
      I2 => us_cnt(2),
      O => \us_cnt[7]_i_3_n_0\
    );
\us_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \us_cnt[0]_i_1_n_0\,
      Q => us_cnt(0),
      R => \us_cnt[7]_i_1_n_0\
    );
\us_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \us_cnt[1]_i_1_n_0\,
      Q => us_cnt(1),
      R => \us_cnt[7]_i_1_n_0\
    );
\us_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \us_cnt[2]_i_1_n_0\,
      Q => us_cnt(2),
      R => \us_cnt[7]_i_1_n_0\
    );
\us_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \us_cnt[3]_i_1_n_0\,
      Q => us_cnt(3),
      R => \us_cnt[7]_i_1_n_0\
    );
\us_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \us_cnt[4]_i_1_n_0\,
      Q => us_cnt(4),
      R => \us_cnt[7]_i_1_n_0\
    );
\us_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \us_cnt[5]_i_1_n_0\,
      Q => us_cnt(5),
      R => \us_cnt[7]_i_1_n_0\
    );
\us_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \us_cnt[6]_i_1_n_0\,
      Q => us_cnt(6),
      R => \us_cnt[7]_i_1_n_0\
    );
\us_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \us_cnt[7]_i_2_n_0\,
      Q => us_cnt(7),
      R => \us_cnt[7]_i_1_n_0\
    );
us_tick_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \us_cnt[7]_i_1_n_0\,
      Q => us_tick,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_cam_input_0_0 is
  port (
    clk : in STD_LOGIC;
    pclk : in STD_LOGIC;
    gpio_o : in STD_LOGIC_VECTOR ( 63 downto 0 );
    cam_d : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cam_pclk : in STD_LOGIC;
    cam_vsync : in STD_LOGIC;
    cam_href : in STD_LOGIC;
    cam_pwdn : out STD_LOGIC;
    cam2_d : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cam2_pclk : in STD_LOGIC;
    cam2_vsync : in STD_LOGIC;
    cam2_href : in STD_LOGIC;
    cam2_pwdn : out STD_LOGIC;
    cap_rst : out STD_LOGIC;
    prst : out STD_LOGIC;
    raw0_rd : in STD_LOGIC;
    raw0_dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    raw0_count : out STD_LOGIC_VECTOR ( 13 downto 0 );
    raw1_rd : in STD_LOGIC;
    raw1_dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    raw1_count : out STD_LOGIC_VECTOR ( 13 downto 0 );
    rows_gray0 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    rows_gray1 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    sof_toggle0 : out STD_LOGIC;
    sof_toggle1 : out STD_LOGIC;
    frame_base0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    frame_base1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rd_addr0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rd_addr1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rd_data0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rd_data1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    start_us1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    genlock : out STD_LOGIC_VECTOR ( 31 downto 0 );
    frame_led0 : out STD_LOGIC;
    frame_led1 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_cam_input_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_cam_input_0_0 : entity is "system_cam_input_0_0,cam_input,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_cam_input_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of system_cam_input_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_cam_input_0_0 : entity is "cam_input,Vivado 2025.2";
end system_cam_input_0_0;

architecture STRUCTURE of system_cam_input_0_0 is
  signal \^gpio_o\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of cap_rst : signal is "xilinx.com:signal:reset:1.0 cap_rst RST";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of cap_rst : signal is "master";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of cap_rst : signal is "XIL_INTERFACENAME cap_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
begin
  \^gpio_o\(19 downto 0) <= gpio_o(19 downto 0);
  cam2_pwdn <= \^gpio_o\(2);
  cam_pwdn <= \^gpio_o\(0);
inst: entity work.system_cam_input_0_0_cam_input
     port map (
      Q(13 downto 0) => raw0_count(13 downto 0),
      cam2_d(7 downto 0) => cam2_d(7 downto 0),
      cam2_href => cam2_href,
      cam2_pclk => cam2_pclk,
      cam2_vsync => cam2_vsync,
      cam_d(7 downto 0) => cam_d(7 downto 0),
      cam_href => cam_href,
      cam_pclk => cam_pclk,
      cam_vsync => cam_vsync,
      clk => clk,
      \count_reg[13]\(13 downto 0) => raw1_count(13 downto 0),
      \en_sync_reg[2]_0\ => cap_rst,
      frame_base0(15 downto 0) => frame_base0(15 downto 0),
      frame_base1(15 downto 0) => frame_base1(15 downto 0),
      frame_led0 => frame_led0,
      frame_led1 => frame_led1,
      genlock(31 downto 0) => genlock(31 downto 0),
      gpio_o(17 downto 1) => \^gpio_o\(19 downto 3),
      gpio_o(0) => \^gpio_o\(1),
      pclk => pclk,
      prst => prst,
      raw0_dout(7 downto 0) => raw0_dout(7 downto 0),
      raw0_rd => raw0_rd,
      raw1_dout(7 downto 0) => raw1_dout(7 downto 0),
      raw1_rd => raw1_rd,
      rd_addr0(11 downto 0) => rd_addr0(11 downto 0),
      rd_addr1(11 downto 0) => rd_addr1(11 downto 0),
      rd_data0(7 downto 0) => rd_data0(7 downto 0),
      rd_data1(7 downto 0) => rd_data1(7 downto 0),
      rows_gray0(9 downto 0) => rows_gray0(9 downto 0),
      rows_gray1(9 downto 0) => rows_gray1(9 downto 0),
      sof_toggle0 => sof_toggle0,
      sof_toggle1 => sof_toggle1,
      \start_us_reg[31]\(31 downto 0) => start_us1(31 downto 0)
    );
end STRUCTURE;
