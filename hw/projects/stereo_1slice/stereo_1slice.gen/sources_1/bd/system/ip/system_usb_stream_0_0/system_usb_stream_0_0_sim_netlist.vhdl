-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Wed Oct 14 08:43:52 2026
-- Host        : LAPTOP-THBQET7J running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/stereo-depth-cam/hw/projects/stereo_1slice/stereo_1slice.gen/sources_1/bd/system/ip/system_usb_stream_0_0/system_usb_stream_0_0_sim_netlist.vhdl
-- Design      : system_usb_stream_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_usb_stream_0_0_byte_fifo is
  port (
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    rd_en : out STD_LOGIC;
    s2_wr0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    cap_rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    c2_rd : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    s2_wr : in STD_LOGIC;
    wr_rst_busy : in STD_LOGIC;
    prog_full : in STD_LOGIC;
    \count_value_i_reg[0]\ : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s2_wr_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    empty : in STD_LOGIC;
    rd_rst_busy : in STD_LOGIC;
    mem_reg_1_0 : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_usb_stream_0_0_byte_fifo : entity is "byte_fifo";
end system_usb_stream_0_0_byte_fifo;

architecture STRUCTURE of system_usb_stream_0_0_byte_fifo is
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal almost_full_i_1_n_0 : STD_LOGIC;
  signal almost_full_i_2_n_0 : STD_LOGIC;
  signal c2_afull : STD_LOGIC;
  signal c2_count : STD_LOGIC_VECTOR ( 13 downto 9 );
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
  signal do_wr : STD_LOGIC;
  signal \full[2]_i_2_n_0\ : STD_LOGIC;
  signal \full[2]_i_3_n_0\ : STD_LOGIC;
  signal mem_reg_0_i_14_n_0 : STD_LOGIC;
  signal \nz[2]_i_2_n_0\ : STD_LOGIC;
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
  attribute RTL_RAM_NAME of mem_reg_0 : label is "system_usb_stream_0_0/inst/u_cfifo2/mem_reg";
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
  attribute RTL_RAM_NAME of mem_reg_1 : label is "system_usb_stream_0_0/inst/u_cfifo2/mem_reg";
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
  Q(8 downto 0) <= \^q\(8 downto 0);
almost_full_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => almost_full_i_2_n_0,
      I1 => \^q\(6),
      I2 => \^q\(5),
      I3 => \^q\(4),
      I4 => c2_count(13),
      O => almost_full_i_1_n_0
    );
almost_full_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => c2_count(9),
      I1 => c2_count(10),
      I2 => \^q\(7),
      I3 => \^q\(8),
      I4 => c2_count(12),
      I5 => c2_count(11),
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
      Q => c2_afull,
      R => cap_rst
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
      DI(0) => p_0_in(0),
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
      DI(3 downto 2) => c2_count(10 downto 9),
      DI(1 downto 0) => \^q\(8 downto 7),
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
      I0 => c2_count(10),
      I1 => c2_count(11),
      O => \count0_carry__1_i_1_n_0\
    );
\count0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => c2_count(9),
      I1 => c2_count(10),
      O => \count0_carry__1_i_2_n_0\
    );
\count0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(8),
      I1 => c2_count(9),
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
      DI(0) => c2_count(11),
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
      I0 => c2_count(12),
      I1 => c2_count(13),
      O => \count0_carry__2_i_1_n_0\
    );
\count0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => c2_count(11),
      I1 => c2_count(12),
      O => \count0_carry__2_i_2_n_0\
    );
count0_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => c2_count(13),
      I1 => \^q\(0),
      I2 => s2_wr,
      O => count0_carry_i_1_n_0
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
      INIT => X"CE31"
    )
        port map (
      I0 => s2_wr,
      I1 => \^q\(0),
      I2 => c2_count(13),
      I3 => \^q\(1),
      O => count0_carry_i_5_n_0
    );
count0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A659"
    )
        port map (
      I0 => \^q\(0),
      I1 => s2_wr,
      I2 => c2_count(13),
      I3 => p_0_in(0),
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
      R => cap_rst
    );
\count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count0_carry__1_n_5\,
      Q => c2_count(10),
      R => cap_rst
    );
\count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count0_carry__1_n_4\,
      Q => c2_count(11),
      R => cap_rst
    );
\count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count0_carry__2_n_7\,
      Q => c2_count(12),
      R => cap_rst
    );
\count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count0_carry__2_n_6\,
      Q => c2_count(13),
      R => cap_rst
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
      R => cap_rst
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
      R => cap_rst
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
      R => cap_rst
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
      R => cap_rst
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
      R => cap_rst
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
      R => cap_rst
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
      R => cap_rst
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
      R => cap_rst
    );
\count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count0_carry__1_n_6\,
      Q => c2_count(9),
      R => cap_rst
    );
\full[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEEEEEEEEEEEEE"
    )
        port map (
      I0 => \full[2]_i_2_n_0\,
      I1 => c2_count(13),
      I2 => \full[2]_i_3_n_0\,
      I3 => \^q\(2),
      I4 => \^q\(3),
      I5 => \^q\(4),
      O => D(0)
    );
\full[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => c2_count(10),
      I1 => c2_count(9),
      I2 => c2_count(12),
      I3 => c2_count(11),
      O => \full[2]_i_2_n_0\
    );
\full[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(7),
      I2 => \^q\(6),
      I3 => \^q\(5),
      O => \full[2]_i_3_n_0\
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
      DIADI(3 downto 0) => mem_reg_1_0(3 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000001111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_0_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 4) => NLW_mem_reg_0_DOBDO_UNCONNECTED(31 downto 4),
      DOBDO(3 downto 0) => dout(3 downto 0),
      DOPADOP(3 downto 0) => NLW_mem_reg_0_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_0_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_0_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => s2_wr,
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
      WEA(3) => mem_reg_0_i_14_n_0,
      WEA(2) => mem_reg_0_i_14_n_0,
      WEA(1) => mem_reg_0_i_14_n_0,
      WEA(0) => mem_reg_0_i_14_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rp(12),
      I1 => p_0_in(0),
      I2 => rp_inc_reg(12),
      O => raddr(12)
    );
mem_reg_0_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rp(3),
      I1 => p_0_in(0),
      I2 => rp_inc_reg(3),
      O => raddr(3)
    );
mem_reg_0_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rp(2),
      I1 => p_0_in(0),
      I2 => rp_inc_reg(2),
      O => raddr(2)
    );
mem_reg_0_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rp(1),
      I1 => p_0_in(0),
      I2 => rp_inc_reg(1),
      O => raddr(1)
    );
mem_reg_0_i_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rp(0),
      I1 => p_0_in(0),
      I2 => rp_inc_reg(0),
      O => raddr(0)
    );
mem_reg_0_i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => c2_count(13),
      O => mem_reg_0_i_14_n_0
    );
mem_reg_0_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rp(11),
      I1 => p_0_in(0),
      I2 => rp_inc_reg(11),
      O => raddr(11)
    );
mem_reg_0_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rp(10),
      I1 => p_0_in(0),
      I2 => rp_inc_reg(10),
      O => raddr(10)
    );
mem_reg_0_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rp(9),
      I1 => p_0_in(0),
      I2 => rp_inc_reg(9),
      O => raddr(9)
    );
mem_reg_0_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rp(8),
      I1 => p_0_in(0),
      I2 => rp_inc_reg(8),
      O => raddr(8)
    );
mem_reg_0_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rp(7),
      I1 => p_0_in(0),
      I2 => rp_inc_reg(7),
      O => raddr(7)
    );
mem_reg_0_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rp(6),
      I1 => p_0_in(0),
      I2 => rp_inc_reg(6),
      O => raddr(6)
    );
mem_reg_0_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rp(5),
      I1 => p_0_in(0),
      I2 => rp_inc_reg(5),
      O => raddr(5)
    );
mem_reg_0_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rp(4),
      I1 => p_0_in(0),
      I2 => rp_inc_reg(4),
      O => raddr(4)
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
      DIADI(3 downto 0) => mem_reg_1_0(7 downto 4),
      DIBDI(31 downto 0) => B"00000000000000000000000000001111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_1_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 4) => NLW_mem_reg_1_DOBDO_UNCONNECTED(31 downto 4),
      DOBDO(3 downto 0) => dout(7 downto 4),
      DOPADOP(3 downto 0) => NLW_mem_reg_1_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_1_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_1_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => s2_wr,
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
      WEA(3) => mem_reg_0_i_14_n_0,
      WEA(2) => mem_reg_0_i_14_n_0,
      WEA(1) => mem_reg_0_i_14_n_0,
      WEA(0) => mem_reg_0_i_14_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
\nz[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \nz[2]_i_2_n_0\,
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \^q\(3),
      I5 => \^q\(4),
      O => \count_reg[1]_0\(0)
    );
\nz[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^q\(8),
      I1 => c2_count(13),
      I2 => \^q\(5),
      I3 => \^q\(6),
      I4 => \full[2]_i_2_n_0\,
      I5 => \^q\(7),
      O => \nz[2]_i_2_n_0\
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
      CE => c2_rd,
      D => \rp_inc_reg[0]_i_1_n_7\,
      Q => rp_inc_reg(0),
      S => cap_rst
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
      CE => c2_rd,
      D => \rp_inc_reg[8]_i_1_n_5\,
      Q => rp_inc_reg(10),
      R => cap_rst
    );
\rp_inc_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => c2_rd,
      D => \rp_inc_reg[8]_i_1_n_4\,
      Q => rp_inc_reg(11),
      R => cap_rst
    );
\rp_inc_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => c2_rd,
      D => \rp_inc_reg[12]_i_1_n_7\,
      Q => rp_inc_reg(12),
      R => cap_rst
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
      CE => c2_rd,
      D => \rp_inc_reg[0]_i_1_n_6\,
      Q => rp_inc_reg(1),
      R => cap_rst
    );
\rp_inc_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => c2_rd,
      D => \rp_inc_reg[0]_i_1_n_5\,
      Q => rp_inc_reg(2),
      R => cap_rst
    );
\rp_inc_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => c2_rd,
      D => \rp_inc_reg[0]_i_1_n_4\,
      Q => rp_inc_reg(3),
      R => cap_rst
    );
\rp_inc_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => c2_rd,
      D => \rp_inc_reg[4]_i_1_n_7\,
      Q => rp_inc_reg(4),
      R => cap_rst
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
      CE => c2_rd,
      D => \rp_inc_reg[4]_i_1_n_6\,
      Q => rp_inc_reg(5),
      R => cap_rst
    );
\rp_inc_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => c2_rd,
      D => \rp_inc_reg[4]_i_1_n_5\,
      Q => rp_inc_reg(6),
      R => cap_rst
    );
\rp_inc_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => c2_rd,
      D => \rp_inc_reg[4]_i_1_n_4\,
      Q => rp_inc_reg(7),
      R => cap_rst
    );
\rp_inc_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => c2_rd,
      D => \rp_inc_reg[8]_i_1_n_7\,
      Q => rp_inc_reg(8),
      R => cap_rst
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
      CE => c2_rd,
      D => \rp_inc_reg[8]_i_1_n_6\,
      Q => rp_inc_reg(9),
      R => cap_rst
    );
\rp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => c2_rd,
      D => rp_inc_reg(0),
      Q => rp(0),
      R => cap_rst
    );
\rp_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => c2_rd,
      D => rp_inc_reg(10),
      Q => rp(10),
      R => cap_rst
    );
\rp_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => c2_rd,
      D => rp_inc_reg(11),
      Q => rp(11),
      R => cap_rst
    );
\rp_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => c2_rd,
      D => rp_inc_reg(12),
      Q => rp(12),
      R => cap_rst
    );
\rp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => c2_rd,
      D => rp_inc_reg(1),
      Q => rp(1),
      R => cap_rst
    );
\rp_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => c2_rd,
      D => rp_inc_reg(2),
      Q => rp(2),
      R => cap_rst
    );
\rp_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => c2_rd,
      D => rp_inc_reg(3),
      Q => rp(3),
      R => cap_rst
    );
\rp_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => c2_rd,
      D => rp_inc_reg(4),
      Q => rp(4),
      R => cap_rst
    );
\rp_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => c2_rd,
      D => rp_inc_reg(5),
      Q => rp(5),
      R => cap_rst
    );
\rp_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => c2_rd,
      D => rp_inc_reg(6),
      Q => rp(6),
      R => cap_rst
    );
\rp_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => c2_rd,
      D => rp_inc_reg(7),
      Q => rp(7),
      R => cap_rst
    );
\rp_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => c2_rd,
      D => rp_inc_reg(8),
      Q => rp(8),
      R => cap_rst
    );
\rp_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => c2_rd,
      D => rp_inc_reg(9),
      Q => rp(9),
      R => cap_rst
    );
s2_wr_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => s2_wr_reg(0),
      I1 => \out\(0),
      I2 => c2_afull,
      I3 => empty,
      I4 => rd_rst_busy,
      O => s2_wr0
    );
u_xfifo_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010101000F0F0F0"
    )
        port map (
      I0 => wr_rst_busy,
      I1 => prog_full,
      I2 => \count_value_i_reg[0]\,
      I3 => c2_afull,
      I4 => \out\(0),
      I5 => s2_wr_reg(0),
      O => rd_en
    );
\wp[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s2_wr,
      I1 => c2_count(13),
      O => do_wr
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
      R => cap_rst
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
      R => cap_rst
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
      R => cap_rst
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
      R => cap_rst
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
      R => cap_rst
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
      R => cap_rst
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
      R => cap_rst
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
      R => cap_rst
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
      R => cap_rst
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
      R => cap_rst
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
      R => cap_rst
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
      R => cap_rst
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
      R => cap_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_usb_stream_0_0_fx2_writer is
  port (
    fx2_slwr_n : out STD_LOGIC;
    fx2_pktend_n : out STD_LOGIC;
    rd_en : out STD_LOGIC;
    fx2_pktend_n_reg_0 : out STD_LOGIC;
    fx2_fd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fx2_flagb_n : in STD_LOGIC;
    ifclk : in STD_LOGIC;
    status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dout : in STD_LOGIC_VECTOR ( 8 downto 0 );
    rd_rst_busy : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_usb_stream_0_0_fx2_writer : entity is "fx2_writer";
end system_usb_stream_0_0_fx2_writer;

architecture STRUCTURE of system_usb_stream_0_0_fx2_writer is
  signal end_now_i_1_n_0 : STD_LOGIC;
  signal end_now_reg_n_0 : STD_LOGIC;
  signal \fd_dbg_reg_n_0_[0]\ : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of \fd_dbg_reg_n_0_[0]\ : signal is std.standard.true;
  signal \fd_dbg_reg_n_0_[1]\ : STD_LOGIC;
  attribute DONT_TOUCH of \fd_dbg_reg_n_0_[1]\ : signal is std.standard.true;
  signal \fd_dbg_reg_n_0_[2]\ : STD_LOGIC;
  attribute DONT_TOUCH of \fd_dbg_reg_n_0_[2]\ : signal is std.standard.true;
  signal \fd_dbg_reg_n_0_[3]\ : STD_LOGIC;
  attribute DONT_TOUCH of \fd_dbg_reg_n_0_[3]\ : signal is std.standard.true;
  signal \fd_dbg_reg_n_0_[4]\ : STD_LOGIC;
  attribute DONT_TOUCH of \fd_dbg_reg_n_0_[4]\ : signal is std.standard.true;
  signal \fd_dbg_reg_n_0_[5]\ : STD_LOGIC;
  attribute DONT_TOUCH of \fd_dbg_reg_n_0_[5]\ : signal is std.standard.true;
  signal \fd_dbg_reg_n_0_[6]\ : STD_LOGIC;
  attribute DONT_TOUCH of \fd_dbg_reg_n_0_[6]\ : signal is std.standard.true;
  signal \fd_dbg_reg_n_0_[7]\ : STD_LOGIC;
  attribute DONT_TOUCH of \fd_dbg_reg_n_0_[7]\ : signal is std.standard.true;
  signal flag_q0 : STD_LOGIC;
  signal flag_q1_reg_n_0 : STD_LOGIC;
  signal \^fx2_pktend_n\ : STD_LOGIC;
  signal fx2_pktend_n_i_1_n_0 : STD_LOGIC;
  signal fx2_pktend_n_i_2_n_0 : STD_LOGIC;
  signal fx2_pktend_n_i_3_n_0 : STD_LOGIC;
  signal fx2_pktend_n_i_4_n_0 : STD_LOGIC;
  signal fx2_pktend_n_i_5_n_0 : STD_LOGIC;
  signal fx2_pktend_n_i_6_n_0 : STD_LOGIC;
  signal fx2_pktend_n_i_7_n_0 : STD_LOGIC;
  signal gap : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \gap[0]_i_1_n_0\ : STD_LOGIC;
  signal \gap[1]_i_1_n_0\ : STD_LOGIC;
  signal \gap[2]_i_1_n_0\ : STD_LOGIC;
  signal \gap[2]_i_2_n_0\ : STD_LOGIC;
  signal \gap[2]_i_3_n_0\ : STD_LOGIC;
  signal hold_i_1_n_0 : STD_LOGIC;
  signal hold_i_2_n_0 : STD_LOGIC;
  signal hold_reg_n_0 : STD_LOGIC;
  signal \idle[0]_i_1_n_0\ : STD_LOGIC;
  signal \idle[0]_i_2_n_0\ : STD_LOGIC;
  signal \idle[0]_i_4_n_0\ : STD_LOGIC;
  signal idle_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \idle_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \idle_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \idle_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \idle_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \idle_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \idle_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \idle_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \idle_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \idle_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \idle_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \idle_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \idle_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \idle_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \idle_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \idle_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \idle_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \idle_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \idle_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \idle_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \idle_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \idle_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \idle_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \idle_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \idle_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \idle_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \idle_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \idle_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \idle_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \idle_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \idle_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \idle_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_3_in : STD_LOGIC;
  signal partial_i_1_n_0 : STD_LOGIC;
  signal partial_reg_n_0 : STD_LOGIC;
  signal \pkt_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \pkt_cnt[8]_i_3_n_0\ : STD_LOGIC;
  signal \pkt_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \pkt_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \pkt_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \pkt_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \pkt_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \pkt_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \pkt_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \pkt_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \pkt_cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal pktend_dbg_reg_n_0 : STD_LOGIC;
  attribute DONT_TOUCH of pktend_dbg_reg_n_0 : signal is std.standard.true;
  signal \^rd_en\ : STD_LOGIC;
  signal slwr_dbg_reg_n_0 : STD_LOGIC;
  attribute DONT_TOUCH of slwr_dbg_reg_n_0 : signal is std.standard.true;
  signal \NLW_idle_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute DONT_TOUCH of \fd_dbg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \fd_dbg_reg[0]\ : label is "yes";
  attribute DONT_TOUCH of \fd_dbg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \fd_dbg_reg[1]\ : label is "yes";
  attribute DONT_TOUCH of \fd_dbg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \fd_dbg_reg[2]\ : label is "yes";
  attribute DONT_TOUCH of \fd_dbg_reg[3]\ : label is std.standard.true;
  attribute KEEP of \fd_dbg_reg[3]\ : label is "yes";
  attribute DONT_TOUCH of \fd_dbg_reg[4]\ : label is std.standard.true;
  attribute KEEP of \fd_dbg_reg[4]\ : label is "yes";
  attribute DONT_TOUCH of \fd_dbg_reg[5]\ : label is std.standard.true;
  attribute KEEP of \fd_dbg_reg[5]\ : label is "yes";
  attribute DONT_TOUCH of \fd_dbg_reg[6]\ : label is std.standard.true;
  attribute KEEP of \fd_dbg_reg[6]\ : label is "yes";
  attribute DONT_TOUCH of \fd_dbg_reg[7]\ : label is std.standard.true;
  attribute KEEP of \fd_dbg_reg[7]\ : label is "yes";
  attribute IOB : string;
  attribute IOB of flag_q0_reg : label is "TRUE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of fx2_pktend_n_i_3 : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \gap[0]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \gap[1]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \gap[2]_i_1\ : label is "soft_lutpair54";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \idle_reg[0]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \idle_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \idle_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \idle_reg[8]_i_1\ : label is 35;
  attribute SOFT_HLUTNM of \pkt_cnt[0]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \pkt_cnt[1]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \pkt_cnt[2]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \pkt_cnt[3]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \pkt_cnt[4]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \pkt_cnt[6]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \pkt_cnt[7]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \pkt_cnt[8]_i_3\ : label is "soft_lutpair55";
  attribute DONT_TOUCH of pktend_dbg_reg : label is std.standard.true;
  attribute KEEP of pktend_dbg_reg : label is "yes";
  attribute DONT_TOUCH of slwr_dbg_reg : label is std.standard.true;
  attribute KEEP of slwr_dbg_reg : label is "yes";
begin
  fx2_pktend_n <= \^fx2_pktend_n\;
  rd_en <= \^rd_en\;
end_now_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0E0FFE0F0E0F0E0"
    )
        port map (
      I0 => fx2_pktend_n_i_3_n_0,
      I1 => \gap[2]_i_2_n_0\,
      I2 => end_now_reg_n_0,
      I3 => \^rd_en\,
      I4 => hold_i_2_n_0,
      I5 => dout(8),
      O => end_now_i_1_n_0
    );
end_now_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => '1',
      D => end_now_i_1_n_0,
      Q => end_now_reg_n_0,
      R => '0'
    );
\fd_dbg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => \^rd_en\,
      D => dout(0),
      Q => \fd_dbg_reg_n_0_[0]\,
      R => '0'
    );
\fd_dbg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => \^rd_en\,
      D => dout(1),
      Q => \fd_dbg_reg_n_0_[1]\,
      R => '0'
    );
\fd_dbg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => \^rd_en\,
      D => dout(2),
      Q => \fd_dbg_reg_n_0_[2]\,
      R => '0'
    );
\fd_dbg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => \^rd_en\,
      D => dout(3),
      Q => \fd_dbg_reg_n_0_[3]\,
      R => '0'
    );
\fd_dbg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => \^rd_en\,
      D => dout(4),
      Q => \fd_dbg_reg_n_0_[4]\,
      R => '0'
    );
\fd_dbg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => \^rd_en\,
      D => dout(5),
      Q => \fd_dbg_reg_n_0_[5]\,
      R => '0'
    );
\fd_dbg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => \^rd_en\,
      D => dout(6),
      Q => \fd_dbg_reg_n_0_[6]\,
      R => '0'
    );
\fd_dbg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => \^rd_en\,
      D => dout(7),
      Q => \fd_dbg_reg_n_0_[7]\,
      R => '0'
    );
flag_q0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => '1',
      D => fx2_flagb_n,
      Q => flag_q0,
      R => '0'
    );
flag_q1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => '1',
      D => flag_q0,
      Q => flag_q1_reg_n_0,
      R => '0'
    );
\fx2_fd[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => status(1),
      I1 => hold_reg_n_0,
      I2 => rd_rst_busy,
      I3 => end_now_reg_n_0,
      O => \^rd_en\
    );
\fx2_fd_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => \^rd_en\,
      D => dout(0),
      Q => fx2_fd(0),
      R => '0'
    );
\fx2_fd_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => \^rd_en\,
      D => dout(1),
      Q => fx2_fd(1),
      R => '0'
    );
\fx2_fd_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => \^rd_en\,
      D => dout(2),
      Q => fx2_fd(2),
      R => '0'
    );
\fx2_fd_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => \^rd_en\,
      D => dout(3),
      Q => fx2_fd(3),
      R => '0'
    );
\fx2_fd_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => \^rd_en\,
      D => dout(4),
      Q => fx2_fd(4),
      R => '0'
    );
\fx2_fd_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => \^rd_en\,
      D => dout(5),
      Q => fx2_fd(5),
      R => '0'
    );
\fx2_fd_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => \^rd_en\,
      D => dout(6),
      Q => fx2_fd(6),
      R => '0'
    );
\fx2_fd_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => \^rd_en\,
      D => dout(7),
      Q => fx2_fd(7),
      R => '0'
    );
fx2_pktend_n_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEFFFFF"
    )
        port map (
      I0 => \^rd_en\,
      I1 => fx2_pktend_n_i_2_n_0,
      I2 => flag_q1_reg_n_0,
      I3 => hold_reg_n_0,
      I4 => partial_reg_n_0,
      I5 => fx2_pktend_n_i_3_n_0,
      O => fx2_pktend_n_i_1_n_0
    );
fx2_pktend_n_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFD"
    )
        port map (
      I0 => fx2_pktend_n_i_4_n_0,
      I1 => fx2_pktend_n_i_5_n_0,
      I2 => fx2_pktend_n_i_6_n_0,
      I3 => fx2_pktend_n_i_7_n_0,
      I4 => end_now_reg_n_0,
      O => fx2_pktend_n_i_2_n_0
    );
fx2_pktend_n_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => gap(1),
      I1 => gap(0),
      I2 => gap(2),
      O => fx2_pktend_n_i_3_n_0
    );
fx2_pktend_n_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => idle_reg(6),
      I1 => idle_reg(5),
      I2 => idle_reg(9),
      I3 => idle_reg(14),
      O => fx2_pktend_n_i_4_n_0
    );
fx2_pktend_n_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => idle_reg(13),
      I1 => idle_reg(12),
      I2 => idle_reg(10),
      I3 => idle_reg(1),
      O => fx2_pktend_n_i_5_n_0
    );
fx2_pktend_n_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => idle_reg(7),
      I1 => idle_reg(2),
      I2 => idle_reg(8),
      I3 => idle_reg(4),
      O => fx2_pktend_n_i_6_n_0
    );
fx2_pktend_n_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => idle_reg(15),
      I1 => idle_reg(0),
      I2 => idle_reg(11),
      I3 => idle_reg(3),
      O => fx2_pktend_n_i_7_n_0
    );
fx2_pktend_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ifclk,
      CE => '1',
      D => fx2_pktend_n_i_1_n_0,
      Q => \^fx2_pktend_n\,
      R => '0'
    );
fx2_slwr_n_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => end_now_reg_n_0,
      I1 => rd_rst_busy,
      I2 => hold_reg_n_0,
      I3 => status(1),
      O => p_3_in
    );
fx2_slwr_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ifclk,
      CE => '1',
      D => p_3_in,
      Q => fx2_slwr_n,
      R => '0'
    );
\gap[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0023"
    )
        port map (
      I0 => gap(1),
      I1 => gap(0),
      I2 => gap(2),
      I3 => \^rd_en\,
      O => \gap[0]_i_1_n_0\
    );
\gap[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => gap(1),
      I1 => gap(0),
      I2 => \^rd_en\,
      O => \gap[1]_i_1_n_0\
    );
\gap[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00780068"
    )
        port map (
      I0 => gap(1),
      I1 => gap(0),
      I2 => gap(2),
      I3 => \^rd_en\,
      I4 => \gap[2]_i_2_n_0\,
      O => \gap[2]_i_1_n_0\
    );
\gap[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55545555"
    )
        port map (
      I0 => end_now_reg_n_0,
      I1 => fx2_pktend_n_i_7_n_0,
      I2 => fx2_pktend_n_i_6_n_0,
      I3 => fx2_pktend_n_i_5_n_0,
      I4 => fx2_pktend_n_i_4_n_0,
      I5 => \gap[2]_i_3_n_0\,
      O => \gap[2]_i_2_n_0\
    );
\gap[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => partial_reg_n_0,
      I1 => hold_reg_n_0,
      I2 => flag_q1_reg_n_0,
      O => \gap[2]_i_3_n_0\
    );
\gap_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => '1',
      D => \gap[0]_i_1_n_0\,
      Q => gap(0),
      R => '0'
    );
\gap_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => '1',
      D => \gap[1]_i_1_n_0\,
      Q => gap(1),
      R => '0'
    );
\gap_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => '1',
      D => \gap[2]_i_1_n_0\,
      Q => gap(2),
      R => '0'
    );
hold_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA2A2A2A4A2A4"
    )
        port map (
      I0 => hold_reg_n_0,
      I1 => flag_q1_reg_n_0,
      I2 => fx2_pktend_n_i_3_n_0,
      I3 => \gap[2]_i_2_n_0\,
      I4 => hold_i_2_n_0,
      I5 => \^rd_en\,
      O => hold_i_1_n_0
    );
hold_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \pkt_cnt_reg_n_0_[7]\,
      I1 => \pkt_cnt_reg_n_0_[5]\,
      I2 => \pkt_cnt_reg_n_0_[4]\,
      I3 => \pkt_cnt_reg_n_0_[8]\,
      I4 => \pkt_cnt_reg_n_0_[6]\,
      I5 => \pkt_cnt[8]_i_3_n_0\,
      O => hold_i_2_n_0
    );
hold_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ifclk,
      CE => '1',
      D => hold_i_1_n_0,
      Q => hold_reg_n_0,
      R => '0'
    );
\idle[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAABAAAAA"
    )
        port map (
      I0 => \^rd_en\,
      I1 => fx2_pktend_n_i_2_n_0,
      I2 => flag_q1_reg_n_0,
      I3 => hold_reg_n_0,
      I4 => partial_reg_n_0,
      I5 => fx2_pktend_n_i_3_n_0,
      O => \idle[0]_i_1_n_0\
    );
\idle[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => fx2_pktend_n_i_2_n_0,
      I1 => partial_reg_n_0,
      I2 => hold_reg_n_0,
      O => \idle[0]_i_2_n_0\
    );
\idle[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => idle_reg(0),
      O => \idle[0]_i_4_n_0\
    );
\idle_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => \idle[0]_i_2_n_0\,
      D => \idle_reg[0]_i_3_n_7\,
      Q => idle_reg(0),
      R => \idle[0]_i_1_n_0\
    );
\idle_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \idle_reg[0]_i_3_n_0\,
      CO(2) => \idle_reg[0]_i_3_n_1\,
      CO(1) => \idle_reg[0]_i_3_n_2\,
      CO(0) => \idle_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \idle_reg[0]_i_3_n_4\,
      O(2) => \idle_reg[0]_i_3_n_5\,
      O(1) => \idle_reg[0]_i_3_n_6\,
      O(0) => \idle_reg[0]_i_3_n_7\,
      S(3 downto 1) => idle_reg(3 downto 1),
      S(0) => \idle[0]_i_4_n_0\
    );
\idle_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => \idle[0]_i_2_n_0\,
      D => \idle_reg[8]_i_1_n_5\,
      Q => idle_reg(10),
      R => \idle[0]_i_1_n_0\
    );
\idle_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => \idle[0]_i_2_n_0\,
      D => \idle_reg[8]_i_1_n_4\,
      Q => idle_reg(11),
      R => \idle[0]_i_1_n_0\
    );
\idle_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => \idle[0]_i_2_n_0\,
      D => \idle_reg[12]_i_1_n_7\,
      Q => idle_reg(12),
      R => \idle[0]_i_1_n_0\
    );
\idle_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \idle_reg[8]_i_1_n_0\,
      CO(3) => \NLW_idle_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \idle_reg[12]_i_1_n_1\,
      CO(1) => \idle_reg[12]_i_1_n_2\,
      CO(0) => \idle_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \idle_reg[12]_i_1_n_4\,
      O(2) => \idle_reg[12]_i_1_n_5\,
      O(1) => \idle_reg[12]_i_1_n_6\,
      O(0) => \idle_reg[12]_i_1_n_7\,
      S(3 downto 0) => idle_reg(15 downto 12)
    );
\idle_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => \idle[0]_i_2_n_0\,
      D => \idle_reg[12]_i_1_n_6\,
      Q => idle_reg(13),
      R => \idle[0]_i_1_n_0\
    );
\idle_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => \idle[0]_i_2_n_0\,
      D => \idle_reg[12]_i_1_n_5\,
      Q => idle_reg(14),
      R => \idle[0]_i_1_n_0\
    );
\idle_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => \idle[0]_i_2_n_0\,
      D => \idle_reg[12]_i_1_n_4\,
      Q => idle_reg(15),
      R => \idle[0]_i_1_n_0\
    );
\idle_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => \idle[0]_i_2_n_0\,
      D => \idle_reg[0]_i_3_n_6\,
      Q => idle_reg(1),
      R => \idle[0]_i_1_n_0\
    );
\idle_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => \idle[0]_i_2_n_0\,
      D => \idle_reg[0]_i_3_n_5\,
      Q => idle_reg(2),
      R => \idle[0]_i_1_n_0\
    );
\idle_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => \idle[0]_i_2_n_0\,
      D => \idle_reg[0]_i_3_n_4\,
      Q => idle_reg(3),
      R => \idle[0]_i_1_n_0\
    );
\idle_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => \idle[0]_i_2_n_0\,
      D => \idle_reg[4]_i_1_n_7\,
      Q => idle_reg(4),
      R => \idle[0]_i_1_n_0\
    );
\idle_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \idle_reg[0]_i_3_n_0\,
      CO(3) => \idle_reg[4]_i_1_n_0\,
      CO(2) => \idle_reg[4]_i_1_n_1\,
      CO(1) => \idle_reg[4]_i_1_n_2\,
      CO(0) => \idle_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \idle_reg[4]_i_1_n_4\,
      O(2) => \idle_reg[4]_i_1_n_5\,
      O(1) => \idle_reg[4]_i_1_n_6\,
      O(0) => \idle_reg[4]_i_1_n_7\,
      S(3 downto 0) => idle_reg(7 downto 4)
    );
\idle_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => \idle[0]_i_2_n_0\,
      D => \idle_reg[4]_i_1_n_6\,
      Q => idle_reg(5),
      R => \idle[0]_i_1_n_0\
    );
\idle_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => \idle[0]_i_2_n_0\,
      D => \idle_reg[4]_i_1_n_5\,
      Q => idle_reg(6),
      R => \idle[0]_i_1_n_0\
    );
\idle_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => \idle[0]_i_2_n_0\,
      D => \idle_reg[4]_i_1_n_4\,
      Q => idle_reg(7),
      R => \idle[0]_i_1_n_0\
    );
\idle_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => \idle[0]_i_2_n_0\,
      D => \idle_reg[8]_i_1_n_7\,
      Q => idle_reg(8),
      R => \idle[0]_i_1_n_0\
    );
\idle_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \idle_reg[4]_i_1_n_0\,
      CO(3) => \idle_reg[8]_i_1_n_0\,
      CO(2) => \idle_reg[8]_i_1_n_1\,
      CO(1) => \idle_reg[8]_i_1_n_2\,
      CO(0) => \idle_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \idle_reg[8]_i_1_n_4\,
      O(2) => \idle_reg[8]_i_1_n_5\,
      O(1) => \idle_reg[8]_i_1_n_6\,
      O(0) => \idle_reg[8]_i_1_n_7\,
      S(3 downto 0) => idle_reg(11 downto 8)
    );
\idle_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => \idle[0]_i_2_n_0\,
      D => \idle_reg[8]_i_1_n_6\,
      Q => idle_reg(9),
      R => \idle[0]_i_1_n_0\
    );
partial_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77744444"
    )
        port map (
      I0 => hold_i_2_n_0,
      I1 => \^rd_en\,
      I2 => \gap[2]_i_2_n_0\,
      I3 => fx2_pktend_n_i_3_n_0,
      I4 => partial_reg_n_0,
      O => partial_i_1_n_0
    );
partial_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => '1',
      D => partial_i_1_n_0,
      Q => partial_reg_n_0,
      R => '0'
    );
\pkt_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pkt_cnt_reg_n_0_[0]\,
      O => p_0_in(0)
    );
\pkt_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \pkt_cnt_reg_n_0_[0]\,
      I1 => \pkt_cnt_reg_n_0_[1]\,
      O => p_0_in(1)
    );
\pkt_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \pkt_cnt_reg_n_0_[2]\,
      I1 => \pkt_cnt_reg_n_0_[0]\,
      I2 => \pkt_cnt_reg_n_0_[1]\,
      O => p_0_in(2)
    );
\pkt_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \pkt_cnt_reg_n_0_[3]\,
      I1 => \pkt_cnt_reg_n_0_[1]\,
      I2 => \pkt_cnt_reg_n_0_[0]\,
      I3 => \pkt_cnt_reg_n_0_[2]\,
      O => p_0_in(3)
    );
\pkt_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \pkt_cnt_reg_n_0_[4]\,
      I1 => \pkt_cnt_reg_n_0_[2]\,
      I2 => \pkt_cnt_reg_n_0_[0]\,
      I3 => \pkt_cnt_reg_n_0_[1]\,
      I4 => \pkt_cnt_reg_n_0_[3]\,
      O => p_0_in(4)
    );
\pkt_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \pkt_cnt_reg_n_0_[5]\,
      I1 => \pkt_cnt_reg_n_0_[2]\,
      I2 => \pkt_cnt_reg_n_0_[0]\,
      I3 => \pkt_cnt_reg_n_0_[1]\,
      I4 => \pkt_cnt_reg_n_0_[3]\,
      I5 => \pkt_cnt_reg_n_0_[4]\,
      O => p_0_in(5)
    );
\pkt_cnt[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => \pkt_cnt_reg_n_0_[6]\,
      I1 => \pkt_cnt_reg_n_0_[4]\,
      I2 => \pkt_cnt[8]_i_3_n_0\,
      I3 => \pkt_cnt_reg_n_0_[5]\,
      O => p_0_in(6)
    );
\pkt_cnt[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6AAAAAA"
    )
        port map (
      I0 => \pkt_cnt_reg_n_0_[7]\,
      I1 => \pkt_cnt_reg_n_0_[5]\,
      I2 => \pkt_cnt[8]_i_3_n_0\,
      I3 => \pkt_cnt_reg_n_0_[4]\,
      I4 => \pkt_cnt_reg_n_0_[6]\,
      O => p_0_in(7)
    );
\pkt_cnt[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000400"
    )
        port map (
      I0 => fx2_pktend_n_i_3_n_0,
      I1 => partial_reg_n_0,
      I2 => hold_reg_n_0,
      I3 => flag_q1_reg_n_0,
      I4 => fx2_pktend_n_i_2_n_0,
      I5 => \^rd_en\,
      O => \pkt_cnt[8]_i_1_n_0\
    );
\pkt_cnt[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA6AAAAAAAAAAAAA"
    )
        port map (
      I0 => \pkt_cnt_reg_n_0_[8]\,
      I1 => \pkt_cnt_reg_n_0_[6]\,
      I2 => \pkt_cnt_reg_n_0_[4]\,
      I3 => \pkt_cnt[8]_i_3_n_0\,
      I4 => \pkt_cnt_reg_n_0_[5]\,
      I5 => \pkt_cnt_reg_n_0_[7]\,
      O => p_0_in(8)
    );
\pkt_cnt[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \pkt_cnt_reg_n_0_[2]\,
      I1 => \pkt_cnt_reg_n_0_[0]\,
      I2 => \pkt_cnt_reg_n_0_[1]\,
      I3 => \pkt_cnt_reg_n_0_[3]\,
      O => \pkt_cnt[8]_i_3_n_0\
    );
\pkt_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => \^rd_en\,
      D => p_0_in(0),
      Q => \pkt_cnt_reg_n_0_[0]\,
      R => \pkt_cnt[8]_i_1_n_0\
    );
\pkt_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => \^rd_en\,
      D => p_0_in(1),
      Q => \pkt_cnt_reg_n_0_[1]\,
      R => \pkt_cnt[8]_i_1_n_0\
    );
\pkt_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => \^rd_en\,
      D => p_0_in(2),
      Q => \pkt_cnt_reg_n_0_[2]\,
      R => \pkt_cnt[8]_i_1_n_0\
    );
\pkt_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => \^rd_en\,
      D => p_0_in(3),
      Q => \pkt_cnt_reg_n_0_[3]\,
      R => \pkt_cnt[8]_i_1_n_0\
    );
\pkt_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => \^rd_en\,
      D => p_0_in(4),
      Q => \pkt_cnt_reg_n_0_[4]\,
      R => \pkt_cnt[8]_i_1_n_0\
    );
\pkt_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => \^rd_en\,
      D => p_0_in(5),
      Q => \pkt_cnt_reg_n_0_[5]\,
      R => \pkt_cnt[8]_i_1_n_0\
    );
\pkt_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => \^rd_en\,
      D => p_0_in(6),
      Q => \pkt_cnt_reg_n_0_[6]\,
      R => \pkt_cnt[8]_i_1_n_0\
    );
\pkt_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => \^rd_en\,
      D => p_0_in(7),
      Q => \pkt_cnt_reg_n_0_[7]\,
      R => \pkt_cnt[8]_i_1_n_0\
    );
\pkt_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => \^rd_en\,
      D => p_0_in(8),
      Q => \pkt_cnt_reg_n_0_[8]\,
      R => \pkt_cnt[8]_i_1_n_0\
    );
pktend_dbg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ifclk,
      CE => '1',
      D => fx2_pktend_n_i_1_n_0,
      Q => pktend_dbg_reg_n_0,
      R => '0'
    );
slwr_dbg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ifclk,
      CE => '1',
      D => p_3_in,
      Q => slwr_dbg_reg_n_0,
      R => '0'
    );
st_end_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^fx2_pktend_n\,
      I1 => status(0),
      O => fx2_pktend_n_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_usb_stream_0_0_stream_mux is
  port (
    wr_en : out STD_LOGIC;
    raw1_rd : out STD_LOGIC;
    raw0_rd : out STD_LOGIC;
    c2_rd : out STD_LOGIC;
    p_0_in : out STD_LOGIC_VECTOR ( 0 to 0 );
    din : out STD_LOGIC_VECTOR ( 7 downto 0 );
    cap_rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    rd_rst_busy : in STD_LOGIC;
    empty : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_rst_busy : in STD_LOGIC;
    prog_full : in STD_LOGIC;
    dout : in STD_LOGIC_VECTOR ( 7 downto 0 );
    raw1_dout : in STD_LOGIC_VECTOR ( 7 downto 0 );
    raw0_dout : in STD_LOGIC_VECTOR ( 7 downto 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    raw1_count : in STD_LOGIC_VECTOR ( 13 downto 0 );
    raw0_count : in STD_LOGIC_VECTOR ( 13 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \gen_wr_a.gen_word_narrow.mem_reg_3\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \nz_reg[2]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_usb_stream_0_0_stream_mux : entity is "stream_mux";
end system_usb_stream_0_0_stream_mux;

architecture STRUCTURE of system_usb_stream_0_0_stream_mux is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_9_n_0\ : STD_LOGIC;
  signal cnt_sel : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \cnt_sel[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sel[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sel[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sel[3]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sel[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sel[5]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sel[6]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sel[7]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sel[8]_i_1_n_0\ : STD_LOGIC;
  signal full : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal full0 : STD_LOGIC;
  signal full01_in : STD_LOGIC;
  signal \full[0]_i_2_n_0\ : STD_LOGIC;
  signal \full[0]_i_3_n_0\ : STD_LOGIC;
  signal \full[1]_i_2_n_0\ : STD_LOGIC;
  signal \full[1]_i_3_n_0\ : STD_LOGIC;
  signal \hidx[0]_i_1_n_0\ : STD_LOGIC;
  signal \hidx[0]_i_3_n_0\ : STD_LOGIC;
  signal \hidx[1]_i_1_n_0\ : STD_LOGIC;
  signal \hidx[1]_i_2_n_0\ : STD_LOGIC;
  signal \hidx[1]_i_3_n_0\ : STD_LOGIC;
  signal \hidx_reg_n_0_[0]\ : STD_LOGIC;
  signal \hidx_reg_n_0_[1]\ : STD_LOGIC;
  signal last : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \last[1]_i_1_n_0\ : STD_LOGIC;
  signal left : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \left[3]_i_2_n_0\ : STD_LOGIC;
  signal \left[4]_i_2_n_0\ : STD_LOGIC;
  signal \left[5]_i_2_n_0\ : STD_LOGIC;
  signal \left[6]_i_2_n_0\ : STD_LOGIC;
  signal \left[8]_i_1_n_0\ : STD_LOGIC;
  signal \left[8]_i_3_n_0\ : STD_LOGIC;
  signal \left[8]_i_4_n_0\ : STD_LOGIC;
  signal \left_reg_n_0_[0]\ : STD_LOGIC;
  signal \left_reg_n_0_[1]\ : STD_LOGIC;
  signal \left_reg_n_0_[2]\ : STD_LOGIC;
  signal \left_reg_n_0_[3]\ : STD_LOGIC;
  signal \left_reg_n_0_[4]\ : STD_LOGIC;
  signal \left_reg_n_0_[5]\ : STD_LOGIC;
  signal \left_reg_n_0_[6]\ : STD_LOGIC;
  signal \left_reg_n_0_[7]\ : STD_LOGIC;
  signal \left_reg_n_0_[8]\ : STD_LOGIC;
  signal m_din : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m_wr : STD_LOGIC;
  signal n : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \n[0]_i_1_n_0\ : STD_LOGIC;
  signal \n[1]_i_1_n_0\ : STD_LOGIC;
  signal \n[1]_i_2_n_0\ : STD_LOGIC;
  signal \n[1]_i_3_n_0\ : STD_LOGIC;
  signal \n[1]_i_4_n_0\ : STD_LOGIC;
  signal \n[8]_i_1_n_0\ : STD_LOGIC;
  signal \n_reg_n_0_[0]\ : STD_LOGIC;
  signal \n_reg_n_0_[1]\ : STD_LOGIC;
  signal \n_reg_n_0_[2]\ : STD_LOGIC;
  signal \n_reg_n_0_[3]\ : STD_LOGIC;
  signal \n_reg_n_0_[4]\ : STD_LOGIC;
  signal \n_reg_n_0_[5]\ : STD_LOGIC;
  signal \n_reg_n_0_[6]\ : STD_LOGIC;
  signal \n_reg_n_0_[7]\ : STD_LOGIC;
  signal \n_reg_n_0_[8]\ : STD_LOGIC;
  signal \nz[0]_i_1_n_0\ : STD_LOGIC;
  signal \nz[0]_i_2_n_0\ : STD_LOGIC;
  signal \nz[1]_i_1_n_0\ : STD_LOGIC;
  signal \nz[1]_i_2_n_0\ : STD_LOGIC;
  signal \nz_reg_n_0_[0]\ : STD_LOGIC;
  signal out_din0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \out_din[0]_i_2_n_0\ : STD_LOGIC;
  signal \out_din[0]_i_3_n_0\ : STD_LOGIC;
  signal \out_din[1]_i_2_n_0\ : STD_LOGIC;
  signal \out_din[1]_i_3_n_0\ : STD_LOGIC;
  signal \out_din[2]_i_2_n_0\ : STD_LOGIC;
  signal \out_din[3]_i_2_n_0\ : STD_LOGIC;
  signal \out_din[4]_i_2_n_0\ : STD_LOGIC;
  signal \out_din[5]_i_2_n_0\ : STD_LOGIC;
  signal \out_din[6]_i_2_n_0\ : STD_LOGIC;
  signal \out_din[6]_i_3_n_0\ : STD_LOGIC;
  signal \out_din[7]_i_2_n_0\ : STD_LOGIC;
  signal \out_din[7]_i_3_n_0\ : STD_LOGIC;
  signal \out_din[7]_i_4_n_0\ : STD_LOGIC;
  signal \out_din[7]_i_5_n_0\ : STD_LOGIC;
  signal \out_din[7]_i_6_n_0\ : STD_LOGIC;
  signal out_wr_i_1_n_0 : STD_LOGIC;
  signal \^p_0_in\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_0_in_0 : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal p_7_in : STD_LOGIC;
  signal p_9_out : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal pad : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \pad[2]_i_2_n_0\ : STD_LOGIC;
  signal \pad[3]_i_2_n_0\ : STD_LOGIC;
  signal \pad[4]_i_2_n_0\ : STD_LOGIC;
  signal \pad[4]_i_3_n_0\ : STD_LOGIC;
  signal \pad[5]_i_2_n_0\ : STD_LOGIC;
  signal \pad[5]_i_3_n_0\ : STD_LOGIC;
  signal \pad[6]_i_2_n_0\ : STD_LOGIC;
  signal \pad[6]_i_3_n_0\ : STD_LOGIC;
  signal \pad[7]_i_2_n_0\ : STD_LOGIC;
  signal \pad[8]_i_1_n_0\ : STD_LOGIC;
  signal \pad[8]_i_3_n_0\ : STD_LOGIC;
  signal \pad[8]_i_4_n_0\ : STD_LOGIC;
  signal \pad_reg_n_0_[0]\ : STD_LOGIC;
  signal \pad_reg_n_0_[1]\ : STD_LOGIC;
  signal \pad_reg_n_0_[2]\ : STD_LOGIC;
  signal \pad_reg_n_0_[3]\ : STD_LOGIC;
  signal \pad_reg_n_0_[4]\ : STD_LOGIC;
  signal \pad_reg_n_0_[5]\ : STD_LOGIC;
  signal \pad_reg_n_0_[6]\ : STD_LOGIC;
  signal \pad_reg_n_0_[7]\ : STD_LOGIC;
  signal \pad_reg_n_0_[8]\ : STD_LOGIC;
  signal pick : STD_LOGIC_VECTOR ( 1 to 1 );
  signal raw0_rd_INST_0_i_1_n_0 : STD_LOGIC;
  signal rdy : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal sel : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \sel[0]_i_1_n_0\ : STD_LOGIC;
  signal \sel[1]_i_1_n_0\ : STD_LOGIC;
  signal \sel_reg_n_0_[0]\ : STD_LOGIC;
  signal \sel_reg_n_0_[1]\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal wait00 : STD_LOGIC_VECTOR ( 20 downto 1 );
  signal \wait00_carry__0_n_0\ : STD_LOGIC;
  signal \wait00_carry__0_n_1\ : STD_LOGIC;
  signal \wait00_carry__0_n_2\ : STD_LOGIC;
  signal \wait00_carry__0_n_3\ : STD_LOGIC;
  signal \wait00_carry__1_n_0\ : STD_LOGIC;
  signal \wait00_carry__1_n_1\ : STD_LOGIC;
  signal \wait00_carry__1_n_2\ : STD_LOGIC;
  signal \wait00_carry__1_n_3\ : STD_LOGIC;
  signal \wait00_carry__2_n_0\ : STD_LOGIC;
  signal \wait00_carry__2_n_1\ : STD_LOGIC;
  signal \wait00_carry__2_n_2\ : STD_LOGIC;
  signal \wait00_carry__2_n_3\ : STD_LOGIC;
  signal \wait00_carry__3_n_1\ : STD_LOGIC;
  signal \wait00_carry__3_n_2\ : STD_LOGIC;
  signal \wait00_carry__3_n_3\ : STD_LOGIC;
  signal wait00_carry_n_0 : STD_LOGIC;
  signal wait00_carry_n_1 : STD_LOGIC;
  signal wait00_carry_n_2 : STD_LOGIC;
  signal wait00_carry_n_3 : STD_LOGIC;
  signal \wait0[0]_i_1_n_0\ : STD_LOGIC;
  signal \wait0[10]_i_1_n_0\ : STD_LOGIC;
  signal \wait0[13]_i_1_n_0\ : STD_LOGIC;
  signal \wait0[14]_i_1_n_0\ : STD_LOGIC;
  signal \wait0[15]_i_1_n_0\ : STD_LOGIC;
  signal \wait0[16]_i_1_n_0\ : STD_LOGIC;
  signal \wait0[19]_i_1_n_0\ : STD_LOGIC;
  signal \wait0[19]_i_2_n_0\ : STD_LOGIC;
  signal \wait0[20]_i_1_n_0\ : STD_LOGIC;
  signal \wait0[20]_i_2_n_0\ : STD_LOGIC;
  signal \wait0[20]_i_3_n_0\ : STD_LOGIC;
  signal \wait0[20]_i_4_n_0\ : STD_LOGIC;
  signal \wait0[7]_i_1_n_0\ : STD_LOGIC;
  signal \wait0[8]_i_1_n_0\ : STD_LOGIC;
  signal \wait0_reg_n_0_[0]\ : STD_LOGIC;
  signal \wait0_reg_n_0_[10]\ : STD_LOGIC;
  signal \wait0_reg_n_0_[11]\ : STD_LOGIC;
  signal \wait0_reg_n_0_[12]\ : STD_LOGIC;
  signal \wait0_reg_n_0_[13]\ : STD_LOGIC;
  signal \wait0_reg_n_0_[14]\ : STD_LOGIC;
  signal \wait0_reg_n_0_[15]\ : STD_LOGIC;
  signal \wait0_reg_n_0_[16]\ : STD_LOGIC;
  signal \wait0_reg_n_0_[17]\ : STD_LOGIC;
  signal \wait0_reg_n_0_[18]\ : STD_LOGIC;
  signal \wait0_reg_n_0_[19]\ : STD_LOGIC;
  signal \wait0_reg_n_0_[1]\ : STD_LOGIC;
  signal \wait0_reg_n_0_[2]\ : STD_LOGIC;
  signal \wait0_reg_n_0_[3]\ : STD_LOGIC;
  signal \wait0_reg_n_0_[4]\ : STD_LOGIC;
  signal \wait0_reg_n_0_[5]\ : STD_LOGIC;
  signal \wait0_reg_n_0_[6]\ : STD_LOGIC;
  signal \wait0_reg_n_0_[7]\ : STD_LOGIC;
  signal \wait0_reg_n_0_[8]\ : STD_LOGIC;
  signal \wait0_reg_n_0_[9]\ : STD_LOGIC;
  signal wait10 : STD_LOGIC_VECTOR ( 20 downto 1 );
  signal \wait10_carry__0_n_0\ : STD_LOGIC;
  signal \wait10_carry__0_n_1\ : STD_LOGIC;
  signal \wait10_carry__0_n_2\ : STD_LOGIC;
  signal \wait10_carry__0_n_3\ : STD_LOGIC;
  signal \wait10_carry__1_n_0\ : STD_LOGIC;
  signal \wait10_carry__1_n_1\ : STD_LOGIC;
  signal \wait10_carry__1_n_2\ : STD_LOGIC;
  signal \wait10_carry__1_n_3\ : STD_LOGIC;
  signal \wait10_carry__2_n_0\ : STD_LOGIC;
  signal \wait10_carry__2_n_1\ : STD_LOGIC;
  signal \wait10_carry__2_n_2\ : STD_LOGIC;
  signal \wait10_carry__2_n_3\ : STD_LOGIC;
  signal \wait10_carry__3_n_1\ : STD_LOGIC;
  signal \wait10_carry__3_n_2\ : STD_LOGIC;
  signal \wait10_carry__3_n_3\ : STD_LOGIC;
  signal wait10_carry_n_0 : STD_LOGIC;
  signal wait10_carry_n_1 : STD_LOGIC;
  signal wait10_carry_n_2 : STD_LOGIC;
  signal wait10_carry_n_3 : STD_LOGIC;
  signal \wait1[0]_i_1_n_0\ : STD_LOGIC;
  signal \wait1[10]_i_1_n_0\ : STD_LOGIC;
  signal \wait1[13]_i_1_n_0\ : STD_LOGIC;
  signal \wait1[14]_i_1_n_0\ : STD_LOGIC;
  signal \wait1[15]_i_1_n_0\ : STD_LOGIC;
  signal \wait1[16]_i_1_n_0\ : STD_LOGIC;
  signal \wait1[19]_i_1_n_0\ : STD_LOGIC;
  signal \wait1[19]_i_2_n_0\ : STD_LOGIC;
  signal \wait1[20]_i_1_n_0\ : STD_LOGIC;
  signal \wait1[20]_i_2_n_0\ : STD_LOGIC;
  signal \wait1[20]_i_3_n_0\ : STD_LOGIC;
  signal \wait1[7]_i_1_n_0\ : STD_LOGIC;
  signal \wait1[8]_i_1_n_0\ : STD_LOGIC;
  signal \wait1_reg_n_0_[0]\ : STD_LOGIC;
  signal \wait1_reg_n_0_[10]\ : STD_LOGIC;
  signal \wait1_reg_n_0_[11]\ : STD_LOGIC;
  signal \wait1_reg_n_0_[12]\ : STD_LOGIC;
  signal \wait1_reg_n_0_[13]\ : STD_LOGIC;
  signal \wait1_reg_n_0_[14]\ : STD_LOGIC;
  signal \wait1_reg_n_0_[15]\ : STD_LOGIC;
  signal \wait1_reg_n_0_[16]\ : STD_LOGIC;
  signal \wait1_reg_n_0_[17]\ : STD_LOGIC;
  signal \wait1_reg_n_0_[18]\ : STD_LOGIC;
  signal \wait1_reg_n_0_[19]\ : STD_LOGIC;
  signal \wait1_reg_n_0_[1]\ : STD_LOGIC;
  signal \wait1_reg_n_0_[2]\ : STD_LOGIC;
  signal \wait1_reg_n_0_[3]\ : STD_LOGIC;
  signal \wait1_reg_n_0_[4]\ : STD_LOGIC;
  signal \wait1_reg_n_0_[5]\ : STD_LOGIC;
  signal \wait1_reg_n_0_[6]\ : STD_LOGIC;
  signal \wait1_reg_n_0_[7]\ : STD_LOGIC;
  signal \wait1_reg_n_0_[8]\ : STD_LOGIC;
  signal \wait1_reg_n_0_[9]\ : STD_LOGIC;
  signal wait20 : STD_LOGIC_VECTOR ( 20 downto 1 );
  signal \wait20_carry__0_n_0\ : STD_LOGIC;
  signal \wait20_carry__0_n_1\ : STD_LOGIC;
  signal \wait20_carry__0_n_2\ : STD_LOGIC;
  signal \wait20_carry__0_n_3\ : STD_LOGIC;
  signal \wait20_carry__1_n_0\ : STD_LOGIC;
  signal \wait20_carry__1_n_1\ : STD_LOGIC;
  signal \wait20_carry__1_n_2\ : STD_LOGIC;
  signal \wait20_carry__1_n_3\ : STD_LOGIC;
  signal \wait20_carry__2_n_0\ : STD_LOGIC;
  signal \wait20_carry__2_n_1\ : STD_LOGIC;
  signal \wait20_carry__2_n_2\ : STD_LOGIC;
  signal \wait20_carry__2_n_3\ : STD_LOGIC;
  signal \wait20_carry__3_n_1\ : STD_LOGIC;
  signal \wait20_carry__3_n_2\ : STD_LOGIC;
  signal \wait20_carry__3_n_3\ : STD_LOGIC;
  signal wait20_carry_n_0 : STD_LOGIC;
  signal wait20_carry_n_1 : STD_LOGIC;
  signal wait20_carry_n_2 : STD_LOGIC;
  signal wait20_carry_n_3 : STD_LOGIC;
  signal \wait2[0]_i_1_n_0\ : STD_LOGIC;
  signal \wait2[10]_i_1_n_0\ : STD_LOGIC;
  signal \wait2[13]_i_1_n_0\ : STD_LOGIC;
  signal \wait2[14]_i_1_n_0\ : STD_LOGIC;
  signal \wait2[15]_i_1_n_0\ : STD_LOGIC;
  signal \wait2[16]_i_1_n_0\ : STD_LOGIC;
  signal \wait2[19]_i_1_n_0\ : STD_LOGIC;
  signal \wait2[19]_i_2_n_0\ : STD_LOGIC;
  signal \wait2[20]_i_1_n_0\ : STD_LOGIC;
  signal \wait2[20]_i_2_n_0\ : STD_LOGIC;
  signal \wait2[7]_i_1_n_0\ : STD_LOGIC;
  signal \wait2[8]_i_1_n_0\ : STD_LOGIC;
  signal \wait2_reg_n_0_[0]\ : STD_LOGIC;
  signal \wait2_reg_n_0_[10]\ : STD_LOGIC;
  signal \wait2_reg_n_0_[11]\ : STD_LOGIC;
  signal \wait2_reg_n_0_[12]\ : STD_LOGIC;
  signal \wait2_reg_n_0_[13]\ : STD_LOGIC;
  signal \wait2_reg_n_0_[14]\ : STD_LOGIC;
  signal \wait2_reg_n_0_[15]\ : STD_LOGIC;
  signal \wait2_reg_n_0_[16]\ : STD_LOGIC;
  signal \wait2_reg_n_0_[17]\ : STD_LOGIC;
  signal \wait2_reg_n_0_[18]\ : STD_LOGIC;
  signal \wait2_reg_n_0_[19]\ : STD_LOGIC;
  signal \wait2_reg_n_0_[1]\ : STD_LOGIC;
  signal \wait2_reg_n_0_[2]\ : STD_LOGIC;
  signal \wait2_reg_n_0_[3]\ : STD_LOGIC;
  signal \wait2_reg_n_0_[4]\ : STD_LOGIC;
  signal \wait2_reg_n_0_[5]\ : STD_LOGIC;
  signal \wait2_reg_n_0_[6]\ : STD_LOGIC;
  signal \wait2_reg_n_0_[7]\ : STD_LOGIC;
  signal \wait2_reg_n_0_[8]\ : STD_LOGIC;
  signal \wait2_reg_n_0_[9]\ : STD_LOGIC;
  signal \NLW_wait00_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_wait10_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_wait20_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_6\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_7\ : label is "soft_lutpair69";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "S_SETTLE2:001,S_PICK:010,S_HDR:011,S_DATA:100,S_PAD:101,S_SETTLE:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "S_SETTLE2:001,S_PICK:010,S_HDR:011,S_DATA:100,S_PAD:101,S_SETTLE:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "S_SETTLE2:001,S_PICK:010,S_HDR:011,S_DATA:100,S_PAD:101,S_SETTLE:000";
  attribute SOFT_HLUTNM of \cnt_sel[0]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \cnt_sel[1]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \hidx[0]_i_3\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \hidx[1]_i_3\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \left[0]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \left[3]_i_2\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \left[4]_i_2\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \left[5]_i_2\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \left[6]_i_2\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \left[8]_i_4\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \out_din[6]_i_2\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \out_din[7]_i_2\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \out_din[7]_i_3\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \out_din[7]_i_4\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \out_din[7]_i_6\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \pad[0]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \pad[3]_i_2\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \pad[4]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \pad[4]_i_3\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \pad[7]_i_2\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \pad[8]_i_4\ : label is "soft_lutpair64";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of wait00_carry : label is 35;
  attribute ADDER_THRESHOLD of \wait00_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \wait00_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \wait00_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \wait00_carry__3\ : label is 35;
  attribute SOFT_HLUTNM of \wait0[10]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \wait0[13]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \wait0[14]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \wait0[15]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \wait0[16]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \wait0[19]_i_2\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \wait0[20]_i_3\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \wait0[20]_i_4\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \wait0[7]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \wait0[8]_i_1\ : label is "soft_lutpair78";
  attribute ADDER_THRESHOLD of wait10_carry : label is 35;
  attribute ADDER_THRESHOLD of \wait10_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \wait10_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \wait10_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \wait10_carry__3\ : label is 35;
  attribute SOFT_HLUTNM of \wait1[10]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \wait1[13]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \wait1[14]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \wait1[15]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \wait1[16]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \wait1[19]_i_2\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \wait1[20]_i_3\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \wait1[7]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \wait1[8]_i_1\ : label is "soft_lutpair74";
  attribute ADDER_THRESHOLD of wait20_carry : label is 35;
  attribute ADDER_THRESHOLD of \wait20_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \wait20_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \wait20_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \wait20_carry__3\ : label is 35;
  attribute SOFT_HLUTNM of \wait2[10]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \wait2[13]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \wait2[14]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \wait2[15]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \wait2[16]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \wait2[19]_i_2\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \wait2[7]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \wait2[8]_i_1\ : label is "soft_lutpair70";
begin
  p_0_in(0) <= \^p_0_in\(0);
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABAAA8A8FCFF"
    )
        port map (
      I0 => \FSM_sequential_state[0]_i_2_n_0\,
      I1 => \FSM_sequential_state[0]_i_3_n_0\,
      I2 => \FSM_sequential_state[2]_i_4_n_0\,
      I3 => \FSM_sequential_state[2]_i_5_n_0\,
      I4 => state(2),
      I5 => state(0),
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FFFE"
    )
        port map (
      I0 => \pad_reg_n_0_[0]\,
      I1 => \pad_reg_n_0_[7]\,
      I2 => \pad[8]_i_3_n_0\,
      I3 => \pad_reg_n_0_[8]\,
      I4 => state(1),
      I5 => state(0),
      O => \FSM_sequential_state[0]_i_2_n_0\
    );
\FSM_sequential_state[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"040004FF"
    )
        port map (
      I0 => raw0_rd_INST_0_i_1_n_0,
      I1 => \FSM_sequential_state[0]_i_4_n_0\,
      I2 => \left[8]_i_3_n_0\,
      I3 => state(2),
      I4 => state(1),
      O => \FSM_sequential_state[0]_i_3_n_0\
    );
\FSM_sequential_state[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \left_reg_n_0_[7]\,
      I1 => \left_reg_n_0_[0]\,
      I2 => state(0),
      I3 => \left_reg_n_0_[8]\,
      O => \FSM_sequential_state[0]_i_4_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000C000C66EE6666"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => \FSM_sequential_state[2]_i_3_n_0\,
      I3 => \FSM_sequential_state[2]_i_4_n_0\,
      I4 => \FSM_sequential_state[2]_i_5_n_0\,
      I5 => state(2),
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAFAAAFAA22AAAA"
    )
        port map (
      I0 => \state__0\(2),
      I1 => state(1),
      I2 => \FSM_sequential_state[2]_i_3_n_0\,
      I3 => \FSM_sequential_state[2]_i_4_n_0\,
      I4 => \FSM_sequential_state[2]_i_5_n_0\,
      I5 => state(2),
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55555554"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_6_n_0\,
      I1 => \pad_reg_n_0_[8]\,
      I2 => \pad[8]_i_3_n_0\,
      I3 => \pad_reg_n_0_[7]\,
      I4 => \pad_reg_n_0_[0]\,
      I5 => \FSM_sequential_state[2]_i_7_n_0\,
      O => \state__0\(2)
    );
\FSM_sequential_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => raw0_rd_INST_0_i_1_n_0,
      I1 => \left_reg_n_0_[7]\,
      I2 => \left_reg_n_0_[0]\,
      I3 => state(0),
      I4 => \left_reg_n_0_[8]\,
      I5 => \left[8]_i_3_n_0\,
      O => \FSM_sequential_state[2]_i_3_n_0\
    );
\FSM_sequential_state[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAAA"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_8_n_0\,
      I1 => \pad_reg_n_0_[7]\,
      I2 => \pad[8]_i_3_n_0\,
      I3 => \pad_reg_n_0_[8]\,
      I4 => \FSM_sequential_state[2]_i_9_n_0\,
      O => \FSM_sequential_state[2]_i_4_n_0\
    );
\FSM_sequential_state[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF7F"
    )
        port map (
      I0 => \hidx_reg_n_0_[1]\,
      I1 => \hidx_reg_n_0_[0]\,
      I2 => state(0),
      I3 => wr_rst_busy,
      I4 => prog_full,
      I5 => \out\(0),
      O => \FSM_sequential_state[2]_i_5_n_0\
    );
\FSM_sequential_state[2]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(2),
      O => \FSM_sequential_state[2]_i_6_n_0\
    );
\FSM_sequential_state[2]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(0),
      O => \FSM_sequential_state[2]_i_7_n_0\
    );
\FSM_sequential_state[2]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11111110"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => rdy(1),
      I3 => rdy(0),
      I4 => rdy(2),
      O => \FSM_sequential_state[2]_i_8_n_0\
    );
\FSM_sequential_state[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => \pad_reg_n_0_[0]\,
      I1 => state(2),
      I2 => state(0),
      I3 => wr_rst_busy,
      I4 => prog_full,
      I5 => \out\(0),
      O => \FSM_sequential_state[2]_i_9_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => state(0),
      R => cap_rst
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => state(1),
      R => cap_rst
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => state(2),
      R => cap_rst
    );
\cnt_sel[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAF0CC"
    )
        port map (
      I0 => Q(0),
      I1 => raw0_count(0),
      I2 => raw1_count(0),
      I3 => \sel_reg_n_0_[0]\,
      I4 => \sel_reg_n_0_[1]\,
      O => \cnt_sel[0]_i_1_n_0\
    );
\cnt_sel[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAF0CC"
    )
        port map (
      I0 => Q(1),
      I1 => raw0_count(1),
      I2 => raw1_count(1),
      I3 => \sel_reg_n_0_[0]\,
      I4 => \sel_reg_n_0_[1]\,
      O => \cnt_sel[1]_i_1_n_0\
    );
\cnt_sel[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAF0CC"
    )
        port map (
      I0 => Q(2),
      I1 => raw0_count(2),
      I2 => raw1_count(2),
      I3 => \sel_reg_n_0_[0]\,
      I4 => \sel_reg_n_0_[1]\,
      O => \cnt_sel[2]_i_1_n_0\
    );
\cnt_sel[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAF0CC"
    )
        port map (
      I0 => Q(3),
      I1 => raw0_count(3),
      I2 => raw1_count(3),
      I3 => \sel_reg_n_0_[0]\,
      I4 => \sel_reg_n_0_[1]\,
      O => \cnt_sel[3]_i_1_n_0\
    );
\cnt_sel[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAF0CC"
    )
        port map (
      I0 => Q(4),
      I1 => raw0_count(4),
      I2 => raw1_count(4),
      I3 => \sel_reg_n_0_[0]\,
      I4 => \sel_reg_n_0_[1]\,
      O => \cnt_sel[4]_i_1_n_0\
    );
\cnt_sel[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAF0CC"
    )
        port map (
      I0 => Q(5),
      I1 => raw0_count(5),
      I2 => raw1_count(5),
      I3 => \sel_reg_n_0_[0]\,
      I4 => \sel_reg_n_0_[1]\,
      O => \cnt_sel[5]_i_1_n_0\
    );
\cnt_sel[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAF0CC"
    )
        port map (
      I0 => Q(6),
      I1 => raw0_count(6),
      I2 => raw1_count(6),
      I3 => \sel_reg_n_0_[0]\,
      I4 => \sel_reg_n_0_[1]\,
      O => \cnt_sel[6]_i_1_n_0\
    );
\cnt_sel[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAF0CC"
    )
        port map (
      I0 => Q(7),
      I1 => raw0_count(7),
      I2 => raw1_count(7),
      I3 => \sel_reg_n_0_[0]\,
      I4 => \sel_reg_n_0_[1]\,
      O => \cnt_sel[7]_i_1_n_0\
    );
\cnt_sel[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAF0CC"
    )
        port map (
      I0 => Q(8),
      I1 => raw0_count(8),
      I2 => raw1_count(8),
      I3 => \sel_reg_n_0_[0]\,
      I4 => \sel_reg_n_0_[1]\,
      O => \cnt_sel[8]_i_1_n_0\
    );
\cnt_sel_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt_sel[0]_i_1_n_0\,
      Q => cnt_sel(0),
      R => '0'
    );
\cnt_sel_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt_sel[1]_i_1_n_0\,
      Q => cnt_sel(1),
      R => '0'
    );
\cnt_sel_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt_sel[2]_i_1_n_0\,
      Q => cnt_sel(2),
      R => '0'
    );
\cnt_sel_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt_sel[3]_i_1_n_0\,
      Q => cnt_sel(3),
      R => '0'
    );
\cnt_sel_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt_sel[4]_i_1_n_0\,
      Q => cnt_sel(4),
      R => '0'
    );
\cnt_sel_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt_sel[5]_i_1_n_0\,
      Q => cnt_sel(5),
      R => '0'
    );
\cnt_sel_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt_sel[6]_i_1_n_0\,
      Q => cnt_sel(6),
      R => '0'
    );
\cnt_sel_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt_sel[7]_i_1_n_0\,
      Q => cnt_sel(7),
      R => '0'
    );
\cnt_sel_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt_sel[8]_i_1_n_0\,
      Q => cnt_sel(8),
      R => '0'
    );
count0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFBFFFFFFFF"
    )
        port map (
      I0 => \sel_reg_n_0_[0]\,
      I1 => state(2),
      I2 => state(0),
      I3 => state(1),
      I4 => raw0_rd_INST_0_i_1_n_0,
      I5 => \sel_reg_n_0_[1]\,
      O => \^p_0_in\(0)
    );
\full[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEEEEEEEEEEEEE"
    )
        port map (
      I0 => \full[0]_i_2_n_0\,
      I1 => raw0_count(13),
      I2 => \full[0]_i_3_n_0\,
      I3 => raw0_count(2),
      I4 => raw0_count(3),
      I5 => raw0_count(4),
      O => full0
    );
\full[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => raw0_count(10),
      I1 => raw0_count(9),
      I2 => raw0_count(12),
      I3 => raw0_count(11),
      O => \full[0]_i_2_n_0\
    );
\full[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => raw0_count(8),
      I1 => raw0_count(7),
      I2 => raw0_count(6),
      I3 => raw0_count(5),
      O => \full[0]_i_3_n_0\
    );
\full[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEEEEEEEEEEEEE"
    )
        port map (
      I0 => \full[1]_i_2_n_0\,
      I1 => raw1_count(13),
      I2 => \full[1]_i_3_n_0\,
      I3 => raw1_count(2),
      I4 => raw1_count(3),
      I5 => raw1_count(4),
      O => full01_in
    );
\full[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => raw1_count(10),
      I1 => raw1_count(9),
      I2 => raw1_count(12),
      I3 => raw1_count(11),
      O => \full[1]_i_2_n_0\
    );
\full[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => raw1_count(8),
      I1 => raw1_count(7),
      I2 => raw1_count(6),
      I3 => raw1_count(5),
      O => \full[1]_i_3_n_0\
    );
\full_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => full0,
      Q => full(0),
      R => '0'
    );
\full_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => full01_in,
      Q => full(1),
      R => '0'
    );
\full_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => D(0),
      Q => full(2),
      R => '0'
    );
\hidx[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333303300008A88"
    )
        port map (
      I0 => state(0),
      I1 => sel(0),
      I2 => \hidx[0]_i_3_n_0\,
      I3 => state(1),
      I4 => state(2),
      I5 => \hidx_reg_n_0_[0]\,
      O => \hidx[0]_i_1_n_0\
    );
\hidx[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404040404040400"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(2),
      I3 => rdy(1),
      I4 => rdy(0),
      I5 => rdy(2),
      O => sel(0)
    );
\hidx[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \out\(0),
      I1 => prog_full,
      I2 => wr_rst_busy,
      I3 => state(0),
      O => \hidx[0]_i_3_n_0\
    );
\hidx[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF4000"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => \hidx_reg_n_0_[0]\,
      I3 => \hidx[1]_i_2_n_0\,
      I4 => \hidx_reg_n_0_[1]\,
      O => \hidx[1]_i_1_n_0\
    );
\hidx[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FEFFFF00000000"
    )
        port map (
      I0 => rdy(2),
      I1 => rdy(0),
      I2 => rdy(1),
      I3 => state(0),
      I4 => \hidx[0]_i_3_n_0\,
      I5 => \hidx[1]_i_3_n_0\,
      O => \hidx[1]_i_2_n_0\
    );
\hidx[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      O => \hidx[1]_i_3_n_0\
    );
\hidx_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \hidx[0]_i_1_n_0\,
      Q => \hidx_reg_n_0_[0]\,
      R => '0'
    );
\hidx_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \hidx[1]_i_1_n_0\,
      Q => \hidx_reg_n_0_[1]\,
      R => '0'
    );
\last[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000FFFFF8A8A0000"
    )
        port map (
      I0 => rdy(2),
      I1 => \sel_reg_n_0_[0]\,
      I2 => rdy(1),
      I3 => rdy(0),
      I4 => sel(0),
      I5 => last(1),
      O => \last[1]_i_1_n_0\
    );
\last_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \last[1]_i_1_n_0\,
      Q => last(1),
      R => '0'
    );
\left[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F11"
    )
        port map (
      I0 => state(1),
      I1 => \left_reg_n_0_[0]\,
      I2 => state(2),
      I3 => \n_reg_n_0_[0]\,
      O => left(0)
    );
\left[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"41FF4141"
    )
        port map (
      I0 => state(1),
      I1 => \left_reg_n_0_[0]\,
      I2 => \left_reg_n_0_[1]\,
      I3 => state(2),
      I4 => \n_reg_n_0_[1]\,
      O => left(1)
    );
\left[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5401FFFF54015401"
    )
        port map (
      I0 => state(1),
      I1 => \left_reg_n_0_[0]\,
      I2 => \left_reg_n_0_[1]\,
      I3 => \left_reg_n_0_[2]\,
      I4 => state(2),
      I5 => \n_reg_n_0_[2]\,
      O => left(2)
    );
\left[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5401FFFF54015401"
    )
        port map (
      I0 => state(1),
      I1 => \left_reg_n_0_[0]\,
      I2 => \left[3]_i_2_n_0\,
      I3 => \left_reg_n_0_[3]\,
      I4 => state(2),
      I5 => \n_reg_n_0_[3]\,
      O => left(3)
    );
\left[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \left_reg_n_0_[1]\,
      I1 => \left_reg_n_0_[2]\,
      O => \left[3]_i_2_n_0\
    );
\left[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5401FFFF54015401"
    )
        port map (
      I0 => state(1),
      I1 => \left_reg_n_0_[0]\,
      I2 => \left[4]_i_2_n_0\,
      I3 => \left_reg_n_0_[4]\,
      I4 => state(2),
      I5 => \n_reg_n_0_[4]\,
      O => left(4)
    );
\left[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \left_reg_n_0_[2]\,
      I1 => \left_reg_n_0_[1]\,
      I2 => \left_reg_n_0_[3]\,
      O => \left[4]_i_2_n_0\
    );
\left[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5401FFFF54015401"
    )
        port map (
      I0 => state(1),
      I1 => \left_reg_n_0_[0]\,
      I2 => \left[5]_i_2_n_0\,
      I3 => \left_reg_n_0_[5]\,
      I4 => state(2),
      I5 => \n_reg_n_0_[5]\,
      O => left(5)
    );
\left[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \left_reg_n_0_[3]\,
      I1 => \left_reg_n_0_[1]\,
      I2 => \left_reg_n_0_[2]\,
      I3 => \left_reg_n_0_[4]\,
      O => \left[5]_i_2_n_0\
    );
\left[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5401FFFF54015401"
    )
        port map (
      I0 => state(1),
      I1 => \left_reg_n_0_[0]\,
      I2 => \left[6]_i_2_n_0\,
      I3 => \left_reg_n_0_[6]\,
      I4 => state(2),
      I5 => \n_reg_n_0_[6]\,
      O => left(6)
    );
\left[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \left_reg_n_0_[4]\,
      I1 => \left_reg_n_0_[2]\,
      I2 => \left_reg_n_0_[1]\,
      I3 => \left_reg_n_0_[3]\,
      I4 => \left_reg_n_0_[5]\,
      O => \left[6]_i_2_n_0\
    );
\left[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5401FFFF54015401"
    )
        port map (
      I0 => state(1),
      I1 => \left_reg_n_0_[0]\,
      I2 => \left[8]_i_3_n_0\,
      I3 => \left_reg_n_0_[7]\,
      I4 => state(2),
      I5 => \n_reg_n_0_[7]\,
      O => left(7)
    );
\left[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000F08000000"
    )
        port map (
      I0 => \hidx_reg_n_0_[1]\,
      I1 => \hidx_reg_n_0_[0]\,
      I2 => raw0_rd_INST_0_i_1_n_0,
      I3 => state(1),
      I4 => state(0),
      I5 => state(2),
      O => \left[8]_i_1_n_0\
    );
\left[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55540001"
    )
        port map (
      I0 => state(1),
      I1 => \left[8]_i_3_n_0\,
      I2 => \left_reg_n_0_[0]\,
      I3 => \left_reg_n_0_[7]\,
      I4 => \left_reg_n_0_[8]\,
      I5 => \left[8]_i_4_n_0\,
      O => left(8)
    );
\left[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \left_reg_n_0_[5]\,
      I1 => \left_reg_n_0_[3]\,
      I2 => \left_reg_n_0_[1]\,
      I3 => \left_reg_n_0_[2]\,
      I4 => \left_reg_n_0_[4]\,
      I5 => \left_reg_n_0_[6]\,
      O => \left[8]_i_3_n_0\
    );
\left[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \n_reg_n_0_[8]\,
      I1 => state(2),
      O => \left[8]_i_4_n_0\
    );
\left_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \left[8]_i_1_n_0\,
      D => left(0),
      Q => \left_reg_n_0_[0]\,
      R => '0'
    );
\left_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \left[8]_i_1_n_0\,
      D => left(1),
      Q => \left_reg_n_0_[1]\,
      R => '0'
    );
\left_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \left[8]_i_1_n_0\,
      D => left(2),
      Q => \left_reg_n_0_[2]\,
      R => '0'
    );
\left_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \left[8]_i_1_n_0\,
      D => left(3),
      Q => \left_reg_n_0_[3]\,
      R => '0'
    );
\left_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \left[8]_i_1_n_0\,
      D => left(4),
      Q => \left_reg_n_0_[4]\,
      R => '0'
    );
\left_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \left[8]_i_1_n_0\,
      D => left(5),
      Q => \left_reg_n_0_[5]\,
      R => '0'
    );
\left_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \left[8]_i_1_n_0\,
      D => left(6),
      Q => \left_reg_n_0_[6]\,
      R => '0'
    );
\left_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \left[8]_i_1_n_0\,
      D => left(7),
      Q => \left_reg_n_0_[7]\,
      R => '0'
    );
\left_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \left[8]_i_1_n_0\,
      D => left(8),
      Q => \left_reg_n_0_[8]\,
      R => '0'
    );
\n[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20FF2000"
    )
        port map (
      I0 => \n[1]_i_2_n_0\,
      I1 => \n[1]_i_3_n_0\,
      I2 => cnt_sel(0),
      I3 => n(0),
      I4 => \n_reg_n_0_[0]\,
      O => \n[0]_i_1_n_0\
    );
\n[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20FF2000"
    )
        port map (
      I0 => \n[1]_i_2_n_0\,
      I1 => \n[1]_i_3_n_0\,
      I2 => cnt_sel(1),
      I3 => n(0),
      I4 => \n_reg_n_0_[1]\,
      O => \n[1]_i_1_n_0\
    );
\n[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFFF"
    )
        port map (
      I0 => \n[1]_i_4_n_0\,
      I1 => cnt_sel(2),
      I2 => cnt_sel(7),
      I3 => cnt_sel(8),
      O => \n[1]_i_2_n_0\
    );
\n[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => full(2),
      I1 => \sel_reg_n_0_[1]\,
      I2 => full(1),
      I3 => \sel_reg_n_0_[0]\,
      I4 => full(0),
      O => \n[1]_i_3_n_0\
    );
\n[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => cnt_sel(4),
      I1 => cnt_sel(3),
      I2 => cnt_sel(6),
      I3 => cnt_sel(5),
      O => \n[1]_i_4_n_0\
    );
\n[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => full(0),
      I1 => \sel_reg_n_0_[0]\,
      I2 => full(1),
      I3 => \sel_reg_n_0_[1]\,
      I4 => full(2),
      I5 => n(0),
      O => \n[8]_i_1_n_0\
    );
\n[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => \hidx_reg_n_0_[0]\,
      I3 => \hidx_reg_n_0_[1]\,
      I4 => \hidx[0]_i_3_n_0\,
      O => n(0)
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
      CE => '1',
      D => \n[1]_i_1_n_0\,
      Q => \n_reg_n_0_[1]\,
      R => '0'
    );
\n_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => n(0),
      D => cnt_sel(2),
      Q => \n_reg_n_0_[2]\,
      S => \n[8]_i_1_n_0\
    );
\n_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => n(0),
      D => cnt_sel(3),
      Q => \n_reg_n_0_[3]\,
      S => \n[8]_i_1_n_0\
    );
\n_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => n(0),
      D => cnt_sel(4),
      Q => \n_reg_n_0_[4]\,
      S => \n[8]_i_1_n_0\
    );
\n_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => n(0),
      D => cnt_sel(5),
      Q => \n_reg_n_0_[5]\,
      S => \n[8]_i_1_n_0\
    );
\n_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => n(0),
      D => cnt_sel(6),
      Q => \n_reg_n_0_[6]\,
      S => \n[8]_i_1_n_0\
    );
\n_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => n(0),
      D => cnt_sel(7),
      Q => \n_reg_n_0_[7]\,
      S => \n[8]_i_1_n_0\
    );
\n_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => n(0),
      D => cnt_sel(8),
      Q => \n_reg_n_0_[8]\,
      S => \n[8]_i_1_n_0\
    );
\nz[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \nz[0]_i_2_n_0\,
      I1 => raw0_count(1),
      I2 => raw0_count(2),
      I3 => raw0_count(0),
      I4 => raw0_count(3),
      I5 => raw0_count(4),
      O => \nz[0]_i_1_n_0\
    );
\nz[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => raw0_count(8),
      I1 => raw0_count(13),
      I2 => raw0_count(5),
      I3 => raw0_count(6),
      I4 => \full[0]_i_2_n_0\,
      I5 => raw0_count(7),
      O => \nz[0]_i_2_n_0\
    );
\nz[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \nz[1]_i_2_n_0\,
      I1 => raw1_count(1),
      I2 => raw1_count(2),
      I3 => raw1_count(0),
      I4 => raw1_count(3),
      I5 => raw1_count(4),
      O => \nz[1]_i_1_n_0\
    );
\nz[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => raw1_count(8),
      I1 => raw1_count(13),
      I2 => raw1_count(5),
      I3 => raw1_count(6),
      I4 => \full[1]_i_2_n_0\,
      I5 => raw1_count(7),
      O => \nz[1]_i_2_n_0\
    );
\nz_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \nz[0]_i_1_n_0\,
      Q => \nz_reg_n_0_[0]\,
      R => '0'
    );
\nz_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \nz[1]_i_1_n_0\,
      Q => p_4_in,
      R => '0'
    );
\nz_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \nz_reg[2]_0\(0),
      Q => p_7_in,
      R => '0'
    );
\out_din[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \out_din[0]_i_2_n_0\,
      I1 => \out_din[0]_i_3_n_0\,
      I2 => raw1_dout(0),
      I3 => \out_din[7]_i_4_n_0\,
      I4 => dout(0),
      I5 => \out_din[7]_i_3_n_0\,
      O => out_din0_in(0)
    );
\out_din[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAAAEAEAAAAAFAFA"
    )
        port map (
      I0 => \out_din[6]_i_2_n_0\,
      I1 => \sel_reg_n_0_[0]\,
      I2 => \hidx[1]_i_3_n_0\,
      I3 => \n_reg_n_0_[8]\,
      I4 => \hidx_reg_n_0_[1]\,
      I5 => \hidx_reg_n_0_[0]\,
      O => \out_din[0]_i_2_n_0\
    );
\out_din[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888F88888"
    )
        port map (
      I0 => raw0_dout(0),
      I1 => \out_din[7]_i_6_n_0\,
      I2 => \n_reg_n_0_[0]\,
      I3 => state(2),
      I4 => state(1),
      I5 => \hidx_reg_n_0_[0]\,
      O => \out_din[0]_i_3_n_0\
    );
\out_din[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFABAAAAAA"
    )
        port map (
      I0 => \out_din[1]_i_2_n_0\,
      I1 => state(0),
      I2 => state(1),
      I3 => \sel_reg_n_0_[1]\,
      I4 => dout(1),
      I5 => \out_din[1]_i_3_n_0\,
      O => out_din0_in(1)
    );
\out_din[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF38000800"
    )
        port map (
      I0 => \sel_reg_n_0_[1]\,
      I1 => \hidx_reg_n_0_[0]\,
      I2 => \hidx_reg_n_0_[1]\,
      I3 => \hidx[1]_i_3_n_0\,
      I4 => \n_reg_n_0_[1]\,
      I5 => \out_din[6]_i_2_n_0\,
      O => \out_din[1]_i_2_n_0\
    );
\out_din[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000A0C"
    )
        port map (
      I0 => raw1_dout(1),
      I1 => raw0_dout(1),
      I2 => \sel_reg_n_0_[1]\,
      I3 => \sel_reg_n_0_[0]\,
      I4 => state(1),
      I5 => state(0),
      O => \out_din[1]_i_3_n_0\
    );
\out_din[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \out_din[7]_i_2_n_0\,
      I1 => \out_din[7]_i_3_n_0\,
      I2 => dout(2),
      I3 => \out_din[7]_i_4_n_0\,
      I4 => raw1_dout(2),
      I5 => \out_din[2]_i_2_n_0\,
      O => out_din0_in(2)
    );
\out_din[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888F88888"
    )
        port map (
      I0 => raw0_dout(2),
      I1 => \out_din[7]_i_6_n_0\,
      I2 => \n_reg_n_0_[2]\,
      I3 => state(2),
      I4 => state(1),
      I5 => \hidx_reg_n_0_[0]\,
      O => \out_din[2]_i_2_n_0\
    );
\out_din[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \out_din[6]_i_2_n_0\,
      I1 => \out_din[7]_i_3_n_0\,
      I2 => dout(3),
      I3 => \out_din[7]_i_4_n_0\,
      I4 => raw1_dout(3),
      I5 => \out_din[3]_i_2_n_0\,
      O => out_din0_in(3)
    );
\out_din[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8888888888888"
    )
        port map (
      I0 => raw0_dout(3),
      I1 => \out_din[7]_i_6_n_0\,
      I2 => \n_reg_n_0_[3]\,
      I3 => \hidx_reg_n_0_[0]\,
      I4 => \hidx[1]_i_3_n_0\,
      I5 => \hidx_reg_n_0_[1]\,
      O => \out_din[3]_i_2_n_0\
    );
\out_din[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \out_din[6]_i_2_n_0\,
      I1 => \out_din[7]_i_3_n_0\,
      I2 => dout(4),
      I3 => \out_din[7]_i_4_n_0\,
      I4 => raw1_dout(4),
      I5 => \out_din[4]_i_2_n_0\,
      O => out_din0_in(4)
    );
\out_din[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8888888888888"
    )
        port map (
      I0 => raw0_dout(4),
      I1 => \out_din[7]_i_6_n_0\,
      I2 => \n_reg_n_0_[4]\,
      I3 => \hidx_reg_n_0_[0]\,
      I4 => \hidx[1]_i_3_n_0\,
      I5 => \hidx_reg_n_0_[1]\,
      O => \out_din[4]_i_2_n_0\
    );
\out_din[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \out_din[7]_i_2_n_0\,
      I1 => \out_din[7]_i_3_n_0\,
      I2 => dout(5),
      I3 => \out_din[7]_i_4_n_0\,
      I4 => raw1_dout(5),
      I5 => \out_din[5]_i_2_n_0\,
      O => out_din0_in(5)
    );
\out_din[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888F88888"
    )
        port map (
      I0 => raw0_dout(5),
      I1 => \out_din[7]_i_6_n_0\,
      I2 => \n_reg_n_0_[5]\,
      I3 => state(2),
      I4 => state(1),
      I5 => \hidx_reg_n_0_[0]\,
      O => \out_din[5]_i_2_n_0\
    );
\out_din[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \out_din[6]_i_2_n_0\,
      I1 => \out_din[7]_i_3_n_0\,
      I2 => dout(6),
      I3 => \out_din[7]_i_4_n_0\,
      I4 => raw1_dout(6),
      I5 => \out_din[6]_i_3_n_0\,
      O => out_din0_in(6)
    );
\out_din[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44444440"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => \out\(0),
      I3 => prog_full,
      I4 => wr_rst_busy,
      O => \out_din[6]_i_2_n_0\
    );
\out_din[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8888888888888"
    )
        port map (
      I0 => raw0_dout(6),
      I1 => \out_din[7]_i_6_n_0\,
      I2 => \n_reg_n_0_[6]\,
      I3 => \hidx_reg_n_0_[0]\,
      I4 => \hidx[1]_i_3_n_0\,
      I5 => \hidx_reg_n_0_[1]\,
      O => \out_din[6]_i_3_n_0\
    );
\out_din[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \out_din[7]_i_2_n_0\,
      I1 => \out_din[7]_i_3_n_0\,
      I2 => dout(7),
      I3 => \out_din[7]_i_4_n_0\,
      I4 => raw1_dout(7),
      I5 => \out_din[7]_i_5_n_0\,
      O => out_din0_in(7)
    );
\out_din[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAE"
    )
        port map (
      I0 => \out_din[6]_i_2_n_0\,
      I1 => state(1),
      I2 => state(2),
      I3 => \hidx_reg_n_0_[0]\,
      I4 => \hidx_reg_n_0_[1]\,
      O => \out_din[7]_i_2_n_0\
    );
\out_din[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \sel_reg_n_0_[1]\,
      I1 => state(1),
      I2 => state(0),
      O => \out_din[7]_i_3_n_0\
    );
\out_din[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \sel_reg_n_0_[1]\,
      I1 => \sel_reg_n_0_[0]\,
      I2 => state(1),
      I3 => state(0),
      O => \out_din[7]_i_4_n_0\
    );
\out_din[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888F88888"
    )
        port map (
      I0 => raw0_dout(7),
      I1 => \out_din[7]_i_6_n_0\,
      I2 => \n_reg_n_0_[7]\,
      I3 => state(2),
      I4 => state(1),
      I5 => \hidx_reg_n_0_[0]\,
      O => \out_din[7]_i_5_n_0\
    );
\out_din[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \sel_reg_n_0_[1]\,
      I1 => \sel_reg_n_0_[0]\,
      I2 => state(1),
      I3 => state(0),
      O => \out_din[7]_i_6_n_0\
    );
\out_din_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_wr_i_1_n_0,
      D => out_din0_in(0),
      Q => m_din(0),
      R => '0'
    );
\out_din_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_wr_i_1_n_0,
      D => out_din0_in(1),
      Q => m_din(1),
      R => '0'
    );
\out_din_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_wr_i_1_n_0,
      D => out_din0_in(2),
      Q => m_din(2),
      R => '0'
    );
\out_din_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_wr_i_1_n_0,
      D => out_din0_in(3),
      Q => m_din(3),
      R => '0'
    );
\out_din_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_wr_i_1_n_0,
      D => out_din0_in(4),
      Q => m_din(4),
      R => '0'
    );
\out_din_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_wr_i_1_n_0,
      D => out_din0_in(5),
      Q => m_din(5),
      R => '0'
    );
\out_din_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_wr_i_1_n_0,
      D => out_din0_in(6),
      Q => m_din(6),
      R => '0'
    );
\out_din_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_wr_i_1_n_0,
      D => out_din0_in(7),
      Q => m_din(7),
      R => '0'
    );
out_wr_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010101000000"
    )
        port map (
      I0 => \out\(0),
      I1 => prog_full,
      I2 => wr_rst_busy,
      I3 => state(0),
      I4 => state(1),
      I5 => state(2),
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
      Q => m_wr,
      R => cap_rst
    );
\pad[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F11"
    )
        port map (
      I0 => state(1),
      I1 => \pad_reg_n_0_[0]\,
      I2 => state(2),
      I3 => \n_reg_n_0_[0]\,
      O => pad(0)
    );
\pad[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"414141FF41FF4141"
    )
        port map (
      I0 => state(1),
      I1 => \pad_reg_n_0_[0]\,
      I2 => \pad_reg_n_0_[1]\,
      I3 => state(2),
      I4 => \n_reg_n_0_[0]\,
      I5 => \n_reg_n_0_[1]\,
      O => pad(1)
    );
\pad[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF5401"
    )
        port map (
      I0 => state(1),
      I1 => \pad_reg_n_0_[0]\,
      I2 => \pad_reg_n_0_[1]\,
      I3 => \pad_reg_n_0_[2]\,
      I4 => \pad[2]_i_2_n_0\,
      O => pad(2)
    );
\pad[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A9"
    )
        port map (
      I0 => \n_reg_n_0_[2]\,
      I1 => \n_reg_n_0_[0]\,
      I2 => \n_reg_n_0_[1]\,
      I3 => state(2),
      O => \pad[2]_i_2_n_0\
    );
\pad[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55540001"
    )
        port map (
      I0 => state(1),
      I1 => \pad_reg_n_0_[0]\,
      I2 => \pad_reg_n_0_[1]\,
      I3 => \pad_reg_n_0_[2]\,
      I4 => \pad_reg_n_0_[3]\,
      I5 => \pad[3]_i_2_n_0\,
      O => pad(3)
    );
\pad[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A955"
    )
        port map (
      I0 => \n_reg_n_0_[3]\,
      I1 => \n_reg_n_0_[1]\,
      I2 => \n_reg_n_0_[0]\,
      I3 => \n_reg_n_0_[2]\,
      I4 => state(2),
      O => \pad[3]_i_2_n_0\
    );
\pad[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABBA"
    )
        port map (
      I0 => \pad[4]_i_2_n_0\,
      I1 => state(2),
      I2 => \pad[4]_i_3_n_0\,
      I3 => \n_reg_n_0_[4]\,
      O => pad(4)
    );
\pad[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAAAA9"
    )
        port map (
      I0 => \pad_reg_n_0_[4]\,
      I1 => \pad_reg_n_0_[3]\,
      I2 => \pad_reg_n_0_[1]\,
      I3 => \pad_reg_n_0_[2]\,
      I4 => \pad_reg_n_0_[0]\,
      I5 => state(1),
      O => \pad[4]_i_2_n_0\
    );
\pad[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57FF"
    )
        port map (
      I0 => \n_reg_n_0_[2]\,
      I1 => \n_reg_n_0_[0]\,
      I2 => \n_reg_n_0_[1]\,
      I3 => \n_reg_n_0_[3]\,
      O => \pad[4]_i_3_n_0\
    );
\pad[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"111F1F11"
    )
        port map (
      I0 => state(1),
      I1 => \pad[5]_i_2_n_0\,
      I2 => state(2),
      I3 => \pad[5]_i_3_n_0\,
      I4 => \n_reg_n_0_[5]\,
      O => pad(5)
    );
\pad[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFE"
    )
        port map (
      I0 => \pad_reg_n_0_[0]\,
      I1 => \pad_reg_n_0_[3]\,
      I2 => \pad_reg_n_0_[1]\,
      I3 => \pad_reg_n_0_[2]\,
      I4 => \pad_reg_n_0_[4]\,
      I5 => \pad_reg_n_0_[5]\,
      O => \pad[5]_i_2_n_0\
    );
\pad[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"57FFFFFF"
    )
        port map (
      I0 => \n_reg_n_0_[3]\,
      I1 => \n_reg_n_0_[1]\,
      I2 => \n_reg_n_0_[0]\,
      I3 => \n_reg_n_0_[2]\,
      I4 => \n_reg_n_0_[4]\,
      O => \pad[5]_i_3_n_0\
    );
\pad[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"414141FF41FF4141"
    )
        port map (
      I0 => state(1),
      I1 => \pad[6]_i_2_n_0\,
      I2 => \pad_reg_n_0_[6]\,
      I3 => state(2),
      I4 => \pad[6]_i_3_n_0\,
      I5 => \n_reg_n_0_[6]\,
      O => pad(6)
    );
\pad[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \pad_reg_n_0_[5]\,
      I1 => \pad_reg_n_0_[3]\,
      I2 => \pad_reg_n_0_[1]\,
      I3 => \pad_reg_n_0_[2]\,
      I4 => \pad_reg_n_0_[4]\,
      I5 => \pad_reg_n_0_[0]\,
      O => \pad[6]_i_2_n_0\
    );
\pad[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"777FFFFFFFFFFFFF"
    )
        port map (
      I0 => \n_reg_n_0_[4]\,
      I1 => \n_reg_n_0_[2]\,
      I2 => \n_reg_n_0_[0]\,
      I3 => \n_reg_n_0_[1]\,
      I4 => \n_reg_n_0_[3]\,
      I5 => \n_reg_n_0_[5]\,
      O => \pad[6]_i_3_n_0\
    );
\pad[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF5401"
    )
        port map (
      I0 => state(1),
      I1 => \pad_reg_n_0_[0]\,
      I2 => \pad[8]_i_3_n_0\,
      I3 => \pad_reg_n_0_[7]\,
      I4 => \pad[7]_i_2_n_0\,
      O => pad(7)
    );
\pad[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0065"
    )
        port map (
      I0 => \n_reg_n_0_[7]\,
      I1 => \pad[6]_i_3_n_0\,
      I2 => \n_reg_n_0_[6]\,
      I3 => state(2),
      O => \pad[7]_i_2_n_0\
    );
\pad[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000F0800"
    )
        port map (
      I0 => \hidx_reg_n_0_[1]\,
      I1 => \hidx_reg_n_0_[0]\,
      I2 => \hidx[0]_i_3_n_0\,
      I3 => state(1),
      I4 => state(2),
      O => \pad[8]_i_1_n_0\
    );
\pad[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55540001"
    )
        port map (
      I0 => state(1),
      I1 => \pad_reg_n_0_[0]\,
      I2 => \pad[8]_i_3_n_0\,
      I3 => \pad_reg_n_0_[7]\,
      I4 => \pad_reg_n_0_[8]\,
      I5 => \pad[8]_i_4_n_0\,
      O => pad(8)
    );
\pad[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \pad_reg_n_0_[5]\,
      I1 => \pad_reg_n_0_[3]\,
      I2 => \pad_reg_n_0_[1]\,
      I3 => \pad_reg_n_0_[2]\,
      I4 => \pad_reg_n_0_[4]\,
      I5 => \pad_reg_n_0_[6]\,
      O => \pad[8]_i_3_n_0\
    );
\pad[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005595"
    )
        port map (
      I0 => \n_reg_n_0_[8]\,
      I1 => \n_reg_n_0_[7]\,
      I2 => \n_reg_n_0_[6]\,
      I3 => \pad[6]_i_3_n_0\,
      I4 => state(2),
      O => \pad[8]_i_4_n_0\
    );
\pad_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pad[8]_i_1_n_0\,
      D => pad(0),
      Q => \pad_reg_n_0_[0]\,
      R => '0'
    );
\pad_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pad[8]_i_1_n_0\,
      D => pad(1),
      Q => \pad_reg_n_0_[1]\,
      R => '0'
    );
\pad_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pad[8]_i_1_n_0\,
      D => pad(2),
      Q => \pad_reg_n_0_[2]\,
      R => '0'
    );
\pad_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pad[8]_i_1_n_0\,
      D => pad(3),
      Q => \pad_reg_n_0_[3]\,
      R => '0'
    );
\pad_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pad[8]_i_1_n_0\,
      D => pad(4),
      Q => \pad_reg_n_0_[4]\,
      R => '0'
    );
\pad_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pad[8]_i_1_n_0\,
      D => pad(5),
      Q => \pad_reg_n_0_[5]\,
      R => '0'
    );
\pad_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pad[8]_i_1_n_0\,
      D => pad(6),
      Q => \pad_reg_n_0_[6]\,
      R => '0'
    );
\pad_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pad[8]_i_1_n_0\,
      D => pad(7),
      Q => \pad_reg_n_0_[7]\,
      R => '0'
    );
\pad_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pad[8]_i_1_n_0\,
      D => pad(8),
      Q => \pad_reg_n_0_[8]\,
      R => '0'
    );
raw0_rd_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \sel_reg_n_0_[0]\,
      I1 => state(2),
      I2 => state(0),
      I3 => state(1),
      I4 => raw0_rd_INST_0_i_1_n_0,
      I5 => \sel_reg_n_0_[1]\,
      O => raw0_rd
    );
raw0_rd_INST_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => wr_rst_busy,
      I1 => prog_full,
      I2 => \out\(0),
      O => raw0_rd_INST_0_i_1_n_0
    );
raw1_rd_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => \sel_reg_n_0_[1]\,
      I1 => \sel_reg_n_0_[0]\,
      I2 => raw0_rd_INST_0_i_1_n_0,
      I3 => state(1),
      I4 => state(0),
      I5 => state(2),
      O => raw1_rd
    );
\rdy[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => full0,
      I1 => p_0_in_0,
      I2 => \nz_reg_n_0_[0]\,
      O => p_9_out(0)
    );
\rdy[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => full01_in,
      I1 => p_3_in,
      I2 => p_4_in,
      O => p_9_out(1)
    );
\rdy[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => D(0),
      I1 => p_6_in,
      I2 => p_7_in,
      O => p_9_out(2)
    );
\rdy_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_9_out(0),
      Q => rdy(0),
      R => '0'
    );
\rdy_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_9_out(1),
      Q => rdy(1),
      R => '0'
    );
\rdy_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_9_out(2),
      Q => rdy(2),
      R => '0'
    );
\rp[12]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^p_0_in\(0),
      O => c2_rd
    );
\sel[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5511FFFF50F00000"
    )
        port map (
      I0 => rdy(0),
      I1 => rdy(2),
      I2 => rdy(1),
      I3 => last(1),
      I4 => sel(0),
      I5 => \sel_reg_n_0_[0]\,
      O => \sel[0]_i_1_n_0\
    );
\sel[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pick(1),
      I1 => sel(0),
      I2 => \sel_reg_n_0_[1]\,
      O => \sel[1]_i_1_n_0\
    );
\sel[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"202220EE"
    )
        port map (
      I0 => rdy(2),
      I1 => last(1),
      I2 => \sel_reg_n_0_[0]\,
      I3 => rdy(1),
      I4 => rdy(0),
      O => pick(1)
    );
\sel_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \sel[0]_i_1_n_0\,
      Q => \sel_reg_n_0_[0]\,
      R => '0'
    );
\sel_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \sel[1]_i_1_n_0\,
      Q => \sel_reg_n_0_[1]\,
      R => '0'
    );
u_fifo_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA00AA00AA03AA"
    )
        port map (
      I0 => m_wr,
      I1 => rd_rst_busy,
      I2 => empty,
      I3 => \out\(0),
      I4 => wr_rst_busy,
      I5 => prog_full,
      O => wr_en
    );
u_fifo_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_wr_a.gen_word_narrow.mem_reg_3\(0),
      I1 => \out\(0),
      I2 => m_din(0),
      O => din(0)
    );
u_fifo_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_wr_a.gen_word_narrow.mem_reg_3\(7),
      I1 => \out\(0),
      I2 => m_din(7),
      O => din(7)
    );
u_fifo_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_wr_a.gen_word_narrow.mem_reg_3\(6),
      I1 => \out\(0),
      I2 => m_din(6),
      O => din(6)
    );
u_fifo_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_wr_a.gen_word_narrow.mem_reg_3\(5),
      I1 => \out\(0),
      I2 => m_din(5),
      O => din(5)
    );
u_fifo_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_wr_a.gen_word_narrow.mem_reg_3\(4),
      I1 => \out\(0),
      I2 => m_din(4),
      O => din(4)
    );
u_fifo_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_wr_a.gen_word_narrow.mem_reg_3\(3),
      I1 => \out\(0),
      I2 => m_din(3),
      O => din(3)
    );
u_fifo_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_wr_a.gen_word_narrow.mem_reg_3\(2),
      I1 => \out\(0),
      I2 => m_din(2),
      O => din(2)
    );
u_fifo_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_wr_a.gen_word_narrow.mem_reg_3\(1),
      I1 => \out\(0),
      I2 => m_din(1),
      O => din(1)
    );
wait00_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => wait00_carry_n_0,
      CO(2) => wait00_carry_n_1,
      CO(1) => wait00_carry_n_2,
      CO(0) => wait00_carry_n_3,
      CYINIT => \wait0_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => wait00(4 downto 1),
      S(3) => \wait0_reg_n_0_[4]\,
      S(2) => \wait0_reg_n_0_[3]\,
      S(1) => \wait0_reg_n_0_[2]\,
      S(0) => \wait0_reg_n_0_[1]\
    );
\wait00_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => wait00_carry_n_0,
      CO(3) => \wait00_carry__0_n_0\,
      CO(2) => \wait00_carry__0_n_1\,
      CO(1) => \wait00_carry__0_n_2\,
      CO(0) => \wait00_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => wait00(8 downto 5),
      S(3) => \wait0_reg_n_0_[8]\,
      S(2) => \wait0_reg_n_0_[7]\,
      S(1) => \wait0_reg_n_0_[6]\,
      S(0) => \wait0_reg_n_0_[5]\
    );
\wait00_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait00_carry__0_n_0\,
      CO(3) => \wait00_carry__1_n_0\,
      CO(2) => \wait00_carry__1_n_1\,
      CO(1) => \wait00_carry__1_n_2\,
      CO(0) => \wait00_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => wait00(12 downto 9),
      S(3) => \wait0_reg_n_0_[12]\,
      S(2) => \wait0_reg_n_0_[11]\,
      S(1) => \wait0_reg_n_0_[10]\,
      S(0) => \wait0_reg_n_0_[9]\
    );
\wait00_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait00_carry__1_n_0\,
      CO(3) => \wait00_carry__2_n_0\,
      CO(2) => \wait00_carry__2_n_1\,
      CO(1) => \wait00_carry__2_n_2\,
      CO(0) => \wait00_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => wait00(16 downto 13),
      S(3) => \wait0_reg_n_0_[16]\,
      S(2) => \wait0_reg_n_0_[15]\,
      S(1) => \wait0_reg_n_0_[14]\,
      S(0) => \wait0_reg_n_0_[13]\
    );
\wait00_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait00_carry__2_n_0\,
      CO(3) => \NLW_wait00_carry__3_CO_UNCONNECTED\(3),
      CO(2) => \wait00_carry__3_n_1\,
      CO(1) => \wait00_carry__3_n_2\,
      CO(0) => \wait00_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => wait00(20 downto 17),
      S(3) => p_0_in_0,
      S(2) => \wait0_reg_n_0_[19]\,
      S(1) => \wait0_reg_n_0_[18]\,
      S(0) => \wait0_reg_n_0_[17]\
    );
\wait0[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AA20"
    )
        port map (
      I0 => \nz_reg_n_0_[0]\,
      I1 => state(2),
      I2 => \sel_reg_n_0_[0]\,
      I3 => \wait0[20]_i_3_n_0\,
      I4 => \wait0_reg_n_0_[0]\,
      O => \wait0[0]_i_1_n_0\
    );
\wait0[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => wait00(10),
      O => \wait0[10]_i_1_n_0\
    );
\wait0[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => wait00(13),
      O => \wait0[13]_i_1_n_0\
    );
\wait0[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => wait00(14),
      O => \wait0[14]_i_1_n_0\
    );
\wait0[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => wait00(15),
      O => \wait0[15]_i_1_n_0\
    );
\wait0[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => wait00(16),
      O => \wait0[16]_i_1_n_0\
    );
\wait0[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000F4F0F"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_5_n_0\,
      I1 => \wait0[20]_i_4_n_0\,
      I2 => \nz_reg_n_0_[0]\,
      I3 => state(1),
      I4 => state(2),
      O => \wait0[19]_i_1_n_0\
    );
\wait0[19]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => wait00(19),
      O => \wait0[19]_i_2_n_0\
    );
\wait0[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2222A2AA"
    )
        port map (
      I0 => \wait0[20]_i_2_n_0\,
      I1 => \nz_reg_n_0_[0]\,
      I2 => state(2),
      I3 => \sel_reg_n_0_[0]\,
      I4 => \wait0[20]_i_3_n_0\,
      O => \wait0[20]_i_1_n_0\
    );
\wait0[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"153F153F353F153F"
    )
        port map (
      I0 => p_0_in_0,
      I1 => state(2),
      I2 => state(1),
      I3 => \nz_reg_n_0_[0]\,
      I4 => \wait0[20]_i_4_n_0\,
      I5 => \FSM_sequential_state[2]_i_5_n_0\,
      O => \wait0[20]_i_2_n_0\
    );
\wait0[20]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"33FB"
    )
        port map (
      I0 => \sel_reg_n_0_[1]\,
      I1 => state(1),
      I2 => \FSM_sequential_state[2]_i_5_n_0\,
      I3 => state(2),
      O => \wait0[20]_i_3_n_0\
    );
\wait0[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sel_reg_n_0_[0]\,
      I1 => \sel_reg_n_0_[1]\,
      O => \wait0[20]_i_4_n_0\
    );
\wait0[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => wait00(7),
      O => \wait0[7]_i_1_n_0\
    );
\wait0[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => wait00(8),
      O => \wait0[8]_i_1_n_0\
    );
\wait0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait0[20]_i_2_n_0\,
      D => \wait0[0]_i_1_n_0\,
      Q => \wait0_reg_n_0_[0]\,
      R => '0'
    );
\wait0_reg[10]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \wait0[20]_i_2_n_0\,
      D => \wait0[10]_i_1_n_0\,
      Q => \wait0_reg_n_0_[10]\,
      S => \wait0[19]_i_1_n_0\
    );
\wait0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait0[20]_i_2_n_0\,
      D => wait00(11),
      Q => \wait0_reg_n_0_[11]\,
      R => \wait0[20]_i_1_n_0\
    );
\wait0_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait0[20]_i_2_n_0\,
      D => wait00(12),
      Q => \wait0_reg_n_0_[12]\,
      R => \wait0[20]_i_1_n_0\
    );
\wait0_reg[13]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \wait0[20]_i_2_n_0\,
      D => \wait0[13]_i_1_n_0\,
      Q => \wait0_reg_n_0_[13]\,
      S => \wait0[19]_i_1_n_0\
    );
\wait0_reg[14]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \wait0[20]_i_2_n_0\,
      D => \wait0[14]_i_1_n_0\,
      Q => \wait0_reg_n_0_[14]\,
      S => \wait0[19]_i_1_n_0\
    );
\wait0_reg[15]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \wait0[20]_i_2_n_0\,
      D => \wait0[15]_i_1_n_0\,
      Q => \wait0_reg_n_0_[15]\,
      S => \wait0[19]_i_1_n_0\
    );
\wait0_reg[16]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \wait0[20]_i_2_n_0\,
      D => \wait0[16]_i_1_n_0\,
      Q => \wait0_reg_n_0_[16]\,
      S => \wait0[19]_i_1_n_0\
    );
\wait0_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait0[20]_i_2_n_0\,
      D => wait00(17),
      Q => \wait0_reg_n_0_[17]\,
      R => \wait0[20]_i_1_n_0\
    );
\wait0_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait0[20]_i_2_n_0\,
      D => wait00(18),
      Q => \wait0_reg_n_0_[18]\,
      R => \wait0[20]_i_1_n_0\
    );
\wait0_reg[19]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \wait0[20]_i_2_n_0\,
      D => \wait0[19]_i_2_n_0\,
      Q => \wait0_reg_n_0_[19]\,
      S => \wait0[19]_i_1_n_0\
    );
\wait0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait0[20]_i_2_n_0\,
      D => wait00(1),
      Q => \wait0_reg_n_0_[1]\,
      R => \wait0[20]_i_1_n_0\
    );
\wait0_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait0[20]_i_2_n_0\,
      D => wait00(20),
      Q => p_0_in_0,
      R => \wait0[20]_i_1_n_0\
    );
\wait0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait0[20]_i_2_n_0\,
      D => wait00(2),
      Q => \wait0_reg_n_0_[2]\,
      R => \wait0[20]_i_1_n_0\
    );
\wait0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait0[20]_i_2_n_0\,
      D => wait00(3),
      Q => \wait0_reg_n_0_[3]\,
      R => \wait0[20]_i_1_n_0\
    );
\wait0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait0[20]_i_2_n_0\,
      D => wait00(4),
      Q => \wait0_reg_n_0_[4]\,
      R => \wait0[20]_i_1_n_0\
    );
\wait0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait0[20]_i_2_n_0\,
      D => wait00(5),
      Q => \wait0_reg_n_0_[5]\,
      R => \wait0[20]_i_1_n_0\
    );
\wait0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait0[20]_i_2_n_0\,
      D => wait00(6),
      Q => \wait0_reg_n_0_[6]\,
      R => \wait0[20]_i_1_n_0\
    );
\wait0_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \wait0[20]_i_2_n_0\,
      D => \wait0[7]_i_1_n_0\,
      Q => \wait0_reg_n_0_[7]\,
      S => \wait0[19]_i_1_n_0\
    );
\wait0_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \wait0[20]_i_2_n_0\,
      D => \wait0[8]_i_1_n_0\,
      Q => \wait0_reg_n_0_[8]\,
      S => \wait0[19]_i_1_n_0\
    );
\wait0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait0[20]_i_2_n_0\,
      D => wait00(9),
      Q => \wait0_reg_n_0_[9]\,
      R => \wait0[20]_i_1_n_0\
    );
wait10_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => wait10_carry_n_0,
      CO(2) => wait10_carry_n_1,
      CO(1) => wait10_carry_n_2,
      CO(0) => wait10_carry_n_3,
      CYINIT => \wait1_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => wait10(4 downto 1),
      S(3) => \wait1_reg_n_0_[4]\,
      S(2) => \wait1_reg_n_0_[3]\,
      S(1) => \wait1_reg_n_0_[2]\,
      S(0) => \wait1_reg_n_0_[1]\
    );
\wait10_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => wait10_carry_n_0,
      CO(3) => \wait10_carry__0_n_0\,
      CO(2) => \wait10_carry__0_n_1\,
      CO(1) => \wait10_carry__0_n_2\,
      CO(0) => \wait10_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => wait10(8 downto 5),
      S(3) => \wait1_reg_n_0_[8]\,
      S(2) => \wait1_reg_n_0_[7]\,
      S(1) => \wait1_reg_n_0_[6]\,
      S(0) => \wait1_reg_n_0_[5]\
    );
\wait10_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait10_carry__0_n_0\,
      CO(3) => \wait10_carry__1_n_0\,
      CO(2) => \wait10_carry__1_n_1\,
      CO(1) => \wait10_carry__1_n_2\,
      CO(0) => \wait10_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => wait10(12 downto 9),
      S(3) => \wait1_reg_n_0_[12]\,
      S(2) => \wait1_reg_n_0_[11]\,
      S(1) => \wait1_reg_n_0_[10]\,
      S(0) => \wait1_reg_n_0_[9]\
    );
\wait10_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait10_carry__1_n_0\,
      CO(3) => \wait10_carry__2_n_0\,
      CO(2) => \wait10_carry__2_n_1\,
      CO(1) => \wait10_carry__2_n_2\,
      CO(0) => \wait10_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => wait10(16 downto 13),
      S(3) => \wait1_reg_n_0_[16]\,
      S(2) => \wait1_reg_n_0_[15]\,
      S(1) => \wait1_reg_n_0_[14]\,
      S(0) => \wait1_reg_n_0_[13]\
    );
\wait10_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait10_carry__2_n_0\,
      CO(3) => \NLW_wait10_carry__3_CO_UNCONNECTED\(3),
      CO(2) => \wait10_carry__3_n_1\,
      CO(1) => \wait10_carry__3_n_2\,
      CO(0) => \wait10_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => wait10(20 downto 17),
      S(3) => p_3_in,
      S(2) => \wait1_reg_n_0_[19]\,
      S(1) => \wait1_reg_n_0_[18]\,
      S(0) => \wait1_reg_n_0_[17]\
    );
\wait1[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AA02"
    )
        port map (
      I0 => p_4_in,
      I1 => state(2),
      I2 => \sel_reg_n_0_[0]\,
      I3 => \wait0[20]_i_3_n_0\,
      I4 => \wait1_reg_n_0_[0]\,
      O => \wait1[0]_i_1_n_0\
    );
\wait1[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => wait10(10),
      O => \wait1[10]_i_1_n_0\
    );
\wait1[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => wait10(13),
      O => \wait1[13]_i_1_n_0\
    );
\wait1[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => wait10(14),
      O => \wait1[14]_i_1_n_0\
    );
\wait1[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => wait10(15),
      O => \wait1[15]_i_1_n_0\
    );
\wait1[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => wait10(16),
      O => \wait1[16]_i_1_n_0\
    );
\wait1[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000F4F0F"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_5_n_0\,
      I1 => \wait1[20]_i_3_n_0\,
      I2 => p_4_in,
      I3 => state(1),
      I4 => state(2),
      O => \wait1[19]_i_1_n_0\
    );
\wait1[19]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => wait10(19),
      O => \wait1[19]_i_2_n_0\
    );
\wait1[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2222AAA2"
    )
        port map (
      I0 => \wait1[20]_i_2_n_0\,
      I1 => p_4_in,
      I2 => state(2),
      I3 => \sel_reg_n_0_[0]\,
      I4 => \wait0[20]_i_3_n_0\,
      O => \wait1[20]_i_1_n_0\
    );
\wait1[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"153F153F353F153F"
    )
        port map (
      I0 => p_3_in,
      I1 => state(2),
      I2 => state(1),
      I3 => p_4_in,
      I4 => \wait1[20]_i_3_n_0\,
      I5 => \FSM_sequential_state[2]_i_5_n_0\,
      O => \wait1[20]_i_2_n_0\
    );
\wait1[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sel_reg_n_0_[0]\,
      I1 => \sel_reg_n_0_[1]\,
      O => \wait1[20]_i_3_n_0\
    );
\wait1[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => wait10(7),
      O => \wait1[7]_i_1_n_0\
    );
\wait1[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => wait10(8),
      O => \wait1[8]_i_1_n_0\
    );
\wait1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait1[20]_i_2_n_0\,
      D => \wait1[0]_i_1_n_0\,
      Q => \wait1_reg_n_0_[0]\,
      R => '0'
    );
\wait1_reg[10]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \wait1[20]_i_2_n_0\,
      D => \wait1[10]_i_1_n_0\,
      Q => \wait1_reg_n_0_[10]\,
      S => \wait1[19]_i_1_n_0\
    );
\wait1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait1[20]_i_2_n_0\,
      D => wait10(11),
      Q => \wait1_reg_n_0_[11]\,
      R => \wait1[20]_i_1_n_0\
    );
\wait1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait1[20]_i_2_n_0\,
      D => wait10(12),
      Q => \wait1_reg_n_0_[12]\,
      R => \wait1[20]_i_1_n_0\
    );
\wait1_reg[13]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \wait1[20]_i_2_n_0\,
      D => \wait1[13]_i_1_n_0\,
      Q => \wait1_reg_n_0_[13]\,
      S => \wait1[19]_i_1_n_0\
    );
\wait1_reg[14]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \wait1[20]_i_2_n_0\,
      D => \wait1[14]_i_1_n_0\,
      Q => \wait1_reg_n_0_[14]\,
      S => \wait1[19]_i_1_n_0\
    );
\wait1_reg[15]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \wait1[20]_i_2_n_0\,
      D => \wait1[15]_i_1_n_0\,
      Q => \wait1_reg_n_0_[15]\,
      S => \wait1[19]_i_1_n_0\
    );
\wait1_reg[16]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \wait1[20]_i_2_n_0\,
      D => \wait1[16]_i_1_n_0\,
      Q => \wait1_reg_n_0_[16]\,
      S => \wait1[19]_i_1_n_0\
    );
\wait1_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait1[20]_i_2_n_0\,
      D => wait10(17),
      Q => \wait1_reg_n_0_[17]\,
      R => \wait1[20]_i_1_n_0\
    );
\wait1_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait1[20]_i_2_n_0\,
      D => wait10(18),
      Q => \wait1_reg_n_0_[18]\,
      R => \wait1[20]_i_1_n_0\
    );
\wait1_reg[19]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \wait1[20]_i_2_n_0\,
      D => \wait1[19]_i_2_n_0\,
      Q => \wait1_reg_n_0_[19]\,
      S => \wait1[19]_i_1_n_0\
    );
\wait1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait1[20]_i_2_n_0\,
      D => wait10(1),
      Q => \wait1_reg_n_0_[1]\,
      R => \wait1[20]_i_1_n_0\
    );
\wait1_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait1[20]_i_2_n_0\,
      D => wait10(20),
      Q => p_3_in,
      R => \wait1[20]_i_1_n_0\
    );
\wait1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait1[20]_i_2_n_0\,
      D => wait10(2),
      Q => \wait1_reg_n_0_[2]\,
      R => \wait1[20]_i_1_n_0\
    );
\wait1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait1[20]_i_2_n_0\,
      D => wait10(3),
      Q => \wait1_reg_n_0_[3]\,
      R => \wait1[20]_i_1_n_0\
    );
\wait1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait1[20]_i_2_n_0\,
      D => wait10(4),
      Q => \wait1_reg_n_0_[4]\,
      R => \wait1[20]_i_1_n_0\
    );
\wait1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait1[20]_i_2_n_0\,
      D => wait10(5),
      Q => \wait1_reg_n_0_[5]\,
      R => \wait1[20]_i_1_n_0\
    );
\wait1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait1[20]_i_2_n_0\,
      D => wait10(6),
      Q => \wait1_reg_n_0_[6]\,
      R => \wait1[20]_i_1_n_0\
    );
\wait1_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \wait1[20]_i_2_n_0\,
      D => \wait1[7]_i_1_n_0\,
      Q => \wait1_reg_n_0_[7]\,
      S => \wait1[19]_i_1_n_0\
    );
\wait1_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \wait1[20]_i_2_n_0\,
      D => \wait1[8]_i_1_n_0\,
      Q => \wait1_reg_n_0_[8]\,
      S => \wait1[19]_i_1_n_0\
    );
\wait1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait1[20]_i_2_n_0\,
      D => wait10(9),
      Q => \wait1_reg_n_0_[9]\,
      R => \wait1[20]_i_1_n_0\
    );
wait20_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => wait20_carry_n_0,
      CO(2) => wait20_carry_n_1,
      CO(1) => wait20_carry_n_2,
      CO(0) => wait20_carry_n_3,
      CYINIT => \wait2_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => wait20(4 downto 1),
      S(3) => \wait2_reg_n_0_[4]\,
      S(2) => \wait2_reg_n_0_[3]\,
      S(1) => \wait2_reg_n_0_[2]\,
      S(0) => \wait2_reg_n_0_[1]\
    );
\wait20_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => wait20_carry_n_0,
      CO(3) => \wait20_carry__0_n_0\,
      CO(2) => \wait20_carry__0_n_1\,
      CO(1) => \wait20_carry__0_n_2\,
      CO(0) => \wait20_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => wait20(8 downto 5),
      S(3) => \wait2_reg_n_0_[8]\,
      S(2) => \wait2_reg_n_0_[7]\,
      S(1) => \wait2_reg_n_0_[6]\,
      S(0) => \wait2_reg_n_0_[5]\
    );
\wait20_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait20_carry__0_n_0\,
      CO(3) => \wait20_carry__1_n_0\,
      CO(2) => \wait20_carry__1_n_1\,
      CO(1) => \wait20_carry__1_n_2\,
      CO(0) => \wait20_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => wait20(12 downto 9),
      S(3) => \wait2_reg_n_0_[12]\,
      S(2) => \wait2_reg_n_0_[11]\,
      S(1) => \wait2_reg_n_0_[10]\,
      S(0) => \wait2_reg_n_0_[9]\
    );
\wait20_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait20_carry__1_n_0\,
      CO(3) => \wait20_carry__2_n_0\,
      CO(2) => \wait20_carry__2_n_1\,
      CO(1) => \wait20_carry__2_n_2\,
      CO(0) => \wait20_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => wait20(16 downto 13),
      S(3) => \wait2_reg_n_0_[16]\,
      S(2) => \wait2_reg_n_0_[15]\,
      S(1) => \wait2_reg_n_0_[14]\,
      S(0) => \wait2_reg_n_0_[13]\
    );
\wait20_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait20_carry__2_n_0\,
      CO(3) => \NLW_wait20_carry__3_CO_UNCONNECTED\(3),
      CO(2) => \wait20_carry__3_n_1\,
      CO(1) => \wait20_carry__3_n_2\,
      CO(0) => \wait20_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => wait20(20 downto 17),
      S(3) => p_6_in,
      S(2) => \wait2_reg_n_0_[19]\,
      S(1) => \wait2_reg_n_0_[18]\,
      S(0) => \wait2_reg_n_0_[17]\
    );
\wait2[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wait2_reg_n_0_[0]\,
      O => \wait2[0]_i_1_n_0\
    );
\wait2[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => wait20(10),
      O => \wait2[10]_i_1_n_0\
    );
\wait2[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => wait20(13),
      O => \wait2[13]_i_1_n_0\
    );
\wait2[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => wait20(14),
      O => \wait2[14]_i_1_n_0\
    );
\wait2[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => wait20(15),
      O => \wait2[15]_i_1_n_0\
    );
\wait2[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => wait20(16),
      O => \wait2[16]_i_1_n_0\
    );
\wait2[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000F4F0F"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_5_n_0\,
      I1 => \sel_reg_n_0_[1]\,
      I2 => p_7_in,
      I3 => state(1),
      I4 => state(2),
      O => \wait2[19]_i_1_n_0\
    );
\wait2[19]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => wait20(19),
      O => \wait2[19]_i_2_n_0\
    );
\wait2[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"050555D5"
    )
        port map (
      I0 => p_7_in,
      I1 => \sel_reg_n_0_[1]\,
      I2 => state(1),
      I3 => \FSM_sequential_state[2]_i_5_n_0\,
      I4 => state(2),
      O => \wait2[20]_i_1_n_0\
    );
\wait2[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"153F153F353F153F"
    )
        port map (
      I0 => p_6_in,
      I1 => state(2),
      I2 => state(1),
      I3 => p_7_in,
      I4 => \sel_reg_n_0_[1]\,
      I5 => \FSM_sequential_state[2]_i_5_n_0\,
      O => \wait2[20]_i_2_n_0\
    );
\wait2[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => wait20(7),
      O => \wait2[7]_i_1_n_0\
    );
\wait2[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => wait20(8),
      O => \wait2[8]_i_1_n_0\
    );
\wait2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait2[20]_i_2_n_0\,
      D => \wait2[0]_i_1_n_0\,
      Q => \wait2_reg_n_0_[0]\,
      R => \wait2[20]_i_1_n_0\
    );
\wait2_reg[10]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \wait2[20]_i_2_n_0\,
      D => \wait2[10]_i_1_n_0\,
      Q => \wait2_reg_n_0_[10]\,
      S => \wait2[19]_i_1_n_0\
    );
\wait2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait2[20]_i_2_n_0\,
      D => wait20(11),
      Q => \wait2_reg_n_0_[11]\,
      R => \wait2[20]_i_1_n_0\
    );
\wait2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait2[20]_i_2_n_0\,
      D => wait20(12),
      Q => \wait2_reg_n_0_[12]\,
      R => \wait2[20]_i_1_n_0\
    );
\wait2_reg[13]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \wait2[20]_i_2_n_0\,
      D => \wait2[13]_i_1_n_0\,
      Q => \wait2_reg_n_0_[13]\,
      S => \wait2[19]_i_1_n_0\
    );
\wait2_reg[14]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \wait2[20]_i_2_n_0\,
      D => \wait2[14]_i_1_n_0\,
      Q => \wait2_reg_n_0_[14]\,
      S => \wait2[19]_i_1_n_0\
    );
\wait2_reg[15]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \wait2[20]_i_2_n_0\,
      D => \wait2[15]_i_1_n_0\,
      Q => \wait2_reg_n_0_[15]\,
      S => \wait2[19]_i_1_n_0\
    );
\wait2_reg[16]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \wait2[20]_i_2_n_0\,
      D => \wait2[16]_i_1_n_0\,
      Q => \wait2_reg_n_0_[16]\,
      S => \wait2[19]_i_1_n_0\
    );
\wait2_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait2[20]_i_2_n_0\,
      D => wait20(17),
      Q => \wait2_reg_n_0_[17]\,
      R => \wait2[20]_i_1_n_0\
    );
\wait2_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait2[20]_i_2_n_0\,
      D => wait20(18),
      Q => \wait2_reg_n_0_[18]\,
      R => \wait2[20]_i_1_n_0\
    );
\wait2_reg[19]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \wait2[20]_i_2_n_0\,
      D => \wait2[19]_i_2_n_0\,
      Q => \wait2_reg_n_0_[19]\,
      S => \wait2[19]_i_1_n_0\
    );
\wait2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait2[20]_i_2_n_0\,
      D => wait20(1),
      Q => \wait2_reg_n_0_[1]\,
      R => \wait2[20]_i_1_n_0\
    );
\wait2_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait2[20]_i_2_n_0\,
      D => wait20(20),
      Q => p_6_in,
      R => \wait2[20]_i_1_n_0\
    );
\wait2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait2[20]_i_2_n_0\,
      D => wait20(2),
      Q => \wait2_reg_n_0_[2]\,
      R => \wait2[20]_i_1_n_0\
    );
\wait2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait2[20]_i_2_n_0\,
      D => wait20(3),
      Q => \wait2_reg_n_0_[3]\,
      R => \wait2[20]_i_1_n_0\
    );
\wait2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait2[20]_i_2_n_0\,
      D => wait20(4),
      Q => \wait2_reg_n_0_[4]\,
      R => \wait2[20]_i_1_n_0\
    );
\wait2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait2[20]_i_2_n_0\,
      D => wait20(5),
      Q => \wait2_reg_n_0_[5]\,
      R => \wait2[20]_i_1_n_0\
    );
\wait2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait2[20]_i_2_n_0\,
      D => wait20(6),
      Q => \wait2_reg_n_0_[6]\,
      R => \wait2[20]_i_1_n_0\
    );
\wait2_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \wait2[20]_i_2_n_0\,
      D => \wait2[7]_i_1_n_0\,
      Q => \wait2_reg_n_0_[7]\,
      S => \wait2[19]_i_1_n_0\
    );
\wait2_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \wait2[20]_i_2_n_0\,
      D => \wait2[8]_i_1_n_0\,
      Q => \wait2_reg_n_0_[8]\,
      S => \wait2[19]_i_1_n_0\
    );
\wait2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait2[20]_i_2_n_0\,
      D => wait20(9),
      Q => \wait2_reg_n_0_[9]\,
      R => \wait2[20]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_usb_stream_0_0_xpm_cdc_gray is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of system_usb_stream_0_0_xpm_cdc_gray : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of system_usb_stream_0_0_xpm_cdc_gray : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_usb_stream_0_0_xpm_cdc_gray : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of system_usb_stream_0_0_xpm_cdc_gray : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of system_usb_stream_0_0_xpm_cdc_gray : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of system_usb_stream_0_0_xpm_cdc_gray : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of system_usb_stream_0_0_xpm_cdc_gray : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of system_usb_stream_0_0_xpm_cdc_gray : entity is 12;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of system_usb_stream_0_0_xpm_cdc_gray : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of system_usb_stream_0_0_xpm_cdc_gray : entity is "soft";
  attribute xpm_cdc : string;
  attribute xpm_cdc of system_usb_stream_0_0_xpm_cdc_gray : entity is "GRAY";
end system_usb_stream_0_0_xpm_cdc_gray;

architecture STRUCTURE of system_usb_stream_0_0_xpm_cdc_gray is
  signal async_path : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 10 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][10]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][10]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][10]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][11]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][11]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][11]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][9]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][9]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][9]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][10]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][10]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][10]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][11]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][11]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][11]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][9]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][9]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][9]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \src_gray_ff[6]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \src_gray_ff[7]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \src_gray_ff[8]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \src_gray_ff[9]_i_1\ : label is "soft_lutpair15";
begin
  dest_out_bin(11) <= \dest_graysync_ff[1]\(11);
  dest_out_bin(10 downto 0) <= \^dest_out_bin\(10 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(10),
      Q => \dest_graysync_ff[0]\(10),
      R => '0'
    );
\dest_graysync_ff_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(11),
      Q => \dest_graysync_ff[0]\(11),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(7),
      Q => \dest_graysync_ff[0]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(8),
      Q => \dest_graysync_ff[0]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(9),
      Q => \dest_graysync_ff[0]\(9),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(10),
      Q => \dest_graysync_ff[1]\(10),
      R => '0'
    );
\dest_graysync_ff_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(11),
      Q => \dest_graysync_ff[1]\(11),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(7),
      Q => \dest_graysync_ff[1]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(8),
      Q => \dest_graysync_ff[1]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(9),
      Q => \dest_graysync_ff[1]\(9),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \^dest_out_bin\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(10),
      I1 => \dest_graysync_ff[1]\(11),
      O => \^dest_out_bin\(10)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(5),
      I3 => \^dest_out_bin\(6),
      I4 => \dest_graysync_ff[1]\(4),
      I5 => \dest_graysync_ff[1]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(4),
      I2 => \^dest_out_bin\(6),
      I3 => \dest_graysync_ff[1]\(5),
      I4 => \dest_graysync_ff[1]\(3),
      O => \^dest_out_bin\(2)
    );
\dest_out_bin[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(5),
      I2 => \^dest_out_bin\(6),
      I3 => \dest_graysync_ff[1]\(4),
      O => \^dest_out_bin\(3)
    );
\dest_out_bin[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \^dest_out_bin\(6),
      I2 => \dest_graysync_ff[1]\(5),
      O => \^dest_out_bin\(4)
    );
\dest_out_bin[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(5),
      I1 => \^dest_out_bin\(6),
      O => \^dest_out_bin\(5)
    );
\dest_out_bin[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(6),
      I1 => \dest_graysync_ff[1]\(8),
      I2 => \dest_graysync_ff[1]\(10),
      I3 => \dest_graysync_ff[1]\(11),
      I4 => \dest_graysync_ff[1]\(9),
      I5 => \dest_graysync_ff[1]\(7),
      O => \^dest_out_bin\(6)
    );
\dest_out_bin[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(7),
      I1 => \dest_graysync_ff[1]\(9),
      I2 => \dest_graysync_ff[1]\(11),
      I3 => \dest_graysync_ff[1]\(10),
      I4 => \dest_graysync_ff[1]\(8),
      O => \^dest_out_bin\(7)
    );
\dest_out_bin[8]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(8),
      I1 => \dest_graysync_ff[1]\(10),
      I2 => \dest_graysync_ff[1]\(11),
      I3 => \dest_graysync_ff[1]\(9),
      O => \^dest_out_bin\(8)
    );
\dest_out_bin[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(9),
      I1 => \dest_graysync_ff[1]\(11),
      I2 => \dest_graysync_ff[1]\(10),
      O => \^dest_out_bin\(9)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(11),
      I1 => src_in_bin(10),
      O => gray_enc(10)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(4),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(5),
      O => gray_enc(5)
    );
\src_gray_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(7),
      I1 => src_in_bin(6),
      O => gray_enc(6)
    );
\src_gray_ff[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(8),
      I1 => src_in_bin(7),
      O => gray_enc(7)
    );
\src_gray_ff[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(9),
      I1 => src_in_bin(8),
      O => gray_enc(8)
    );
\src_gray_ff[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(10),
      I1 => src_in_bin(9),
      O => gray_enc(9)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(10),
      Q => async_path(10),
      R => '0'
    );
\src_gray_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(11),
      Q => async_path(11),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(6),
      Q => async_path(6),
      R => '0'
    );
\src_gray_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(7),
      Q => async_path(7),
      R => '0'
    );
\src_gray_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(8),
      Q => async_path(8),
      R => '0'
    );
\src_gray_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(9),
      Q => async_path(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_usb_stream_0_0_xpm_cdc_gray__1\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \system_usb_stream_0_0_xpm_cdc_gray__1\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \system_usb_stream_0_0_xpm_cdc_gray__1\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_usb_stream_0_0_xpm_cdc_gray__1\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \system_usb_stream_0_0_xpm_cdc_gray__1\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \system_usb_stream_0_0_xpm_cdc_gray__1\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \system_usb_stream_0_0_xpm_cdc_gray__1\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \system_usb_stream_0_0_xpm_cdc_gray__1\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \system_usb_stream_0_0_xpm_cdc_gray__1\ : entity is 12;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \system_usb_stream_0_0_xpm_cdc_gray__1\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \system_usb_stream_0_0_xpm_cdc_gray__1\ : entity is "soft";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \system_usb_stream_0_0_xpm_cdc_gray__1\ : entity is "GRAY";
end \system_usb_stream_0_0_xpm_cdc_gray__1\;

architecture STRUCTURE of \system_usb_stream_0_0_xpm_cdc_gray__1\ is
  signal async_path : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 10 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][10]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][10]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][10]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][11]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][11]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][11]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][9]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][9]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][9]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][10]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][10]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][10]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][11]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][11]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][11]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][9]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][9]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][9]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \src_gray_ff[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \src_gray_ff[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \src_gray_ff[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \src_gray_ff[9]_i_1\ : label is "soft_lutpair4";
begin
  dest_out_bin(11) <= \dest_graysync_ff[1]\(11);
  dest_out_bin(10 downto 0) <= \^dest_out_bin\(10 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(10),
      Q => \dest_graysync_ff[0]\(10),
      R => '0'
    );
\dest_graysync_ff_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(11),
      Q => \dest_graysync_ff[0]\(11),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(7),
      Q => \dest_graysync_ff[0]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(8),
      Q => \dest_graysync_ff[0]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(9),
      Q => \dest_graysync_ff[0]\(9),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(10),
      Q => \dest_graysync_ff[1]\(10),
      R => '0'
    );
\dest_graysync_ff_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(11),
      Q => \dest_graysync_ff[1]\(11),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(7),
      Q => \dest_graysync_ff[1]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(8),
      Q => \dest_graysync_ff[1]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(9),
      Q => \dest_graysync_ff[1]\(9),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \^dest_out_bin\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(10),
      I1 => \dest_graysync_ff[1]\(11),
      O => \^dest_out_bin\(10)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(5),
      I3 => \^dest_out_bin\(6),
      I4 => \dest_graysync_ff[1]\(4),
      I5 => \dest_graysync_ff[1]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(4),
      I2 => \^dest_out_bin\(6),
      I3 => \dest_graysync_ff[1]\(5),
      I4 => \dest_graysync_ff[1]\(3),
      O => \^dest_out_bin\(2)
    );
\dest_out_bin[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(5),
      I2 => \^dest_out_bin\(6),
      I3 => \dest_graysync_ff[1]\(4),
      O => \^dest_out_bin\(3)
    );
\dest_out_bin[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \^dest_out_bin\(6),
      I2 => \dest_graysync_ff[1]\(5),
      O => \^dest_out_bin\(4)
    );
\dest_out_bin[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(5),
      I1 => \^dest_out_bin\(6),
      O => \^dest_out_bin\(5)
    );
\dest_out_bin[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(6),
      I1 => \dest_graysync_ff[1]\(8),
      I2 => \dest_graysync_ff[1]\(10),
      I3 => \dest_graysync_ff[1]\(11),
      I4 => \dest_graysync_ff[1]\(9),
      I5 => \dest_graysync_ff[1]\(7),
      O => \^dest_out_bin\(6)
    );
\dest_out_bin[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(7),
      I1 => \dest_graysync_ff[1]\(9),
      I2 => \dest_graysync_ff[1]\(11),
      I3 => \dest_graysync_ff[1]\(10),
      I4 => \dest_graysync_ff[1]\(8),
      O => \^dest_out_bin\(7)
    );
\dest_out_bin[8]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(8),
      I1 => \dest_graysync_ff[1]\(10),
      I2 => \dest_graysync_ff[1]\(11),
      I3 => \dest_graysync_ff[1]\(9),
      O => \^dest_out_bin\(8)
    );
\dest_out_bin[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(9),
      I1 => \dest_graysync_ff[1]\(11),
      I2 => \dest_graysync_ff[1]\(10),
      O => \^dest_out_bin\(9)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(11),
      I1 => src_in_bin(10),
      O => gray_enc(10)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(4),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(5),
      O => gray_enc(5)
    );
\src_gray_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(7),
      I1 => src_in_bin(6),
      O => gray_enc(6)
    );
\src_gray_ff[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(8),
      I1 => src_in_bin(7),
      O => gray_enc(7)
    );
\src_gray_ff[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(9),
      I1 => src_in_bin(8),
      O => gray_enc(8)
    );
\src_gray_ff[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(10),
      I1 => src_in_bin(9),
      O => gray_enc(9)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(10),
      Q => async_path(10),
      R => '0'
    );
\src_gray_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(11),
      Q => async_path(11),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(6),
      Q => async_path(6),
      R => '0'
    );
\src_gray_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(7),
      Q => async_path(7),
      R => '0'
    );
\src_gray_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(8),
      Q => async_path(8),
      R => '0'
    );
\src_gray_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(9),
      Q => async_path(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_usb_stream_0_0_xpm_cdc_gray__parameterized0\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 12 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 12 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \system_usb_stream_0_0_xpm_cdc_gray__parameterized0\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \system_usb_stream_0_0_xpm_cdc_gray__parameterized0\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_usb_stream_0_0_xpm_cdc_gray__parameterized0\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \system_usb_stream_0_0_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \system_usb_stream_0_0_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \system_usb_stream_0_0_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \system_usb_stream_0_0_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \system_usb_stream_0_0_xpm_cdc_gray__parameterized0\ : entity is 13;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \system_usb_stream_0_0_xpm_cdc_gray__parameterized0\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \system_usb_stream_0_0_xpm_cdc_gray__parameterized0\ : entity is "soft";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \system_usb_stream_0_0_xpm_cdc_gray__parameterized0\ : entity is "GRAY";
end \system_usb_stream_0_0_xpm_cdc_gray__parameterized0\;

architecture STRUCTURE of \system_usb_stream_0_0_xpm_cdc_gray__parameterized0\ is
  signal \<const0>\ : STD_LOGIC;
  signal async_path : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \dest_graysync_ff[2]\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[2]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[2]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[2]\ : signal is "GRAY";
  signal \dest_graysync_ff[3]\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[3]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[3]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[3]\ : signal is "GRAY";
  signal gray_enc : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][10]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][10]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][10]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][11]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][11]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][11]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][12]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][12]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][12]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][9]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][9]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][9]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][10]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][10]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][10]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][11]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][11]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][11]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][12]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][12]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][12]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][9]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][9]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][9]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][10]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][10]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][10]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][11]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][11]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][11]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][12]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][12]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][12]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][9]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][9]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][9]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][10]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][10]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][10]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][11]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][11]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][11]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][12]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][12]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][12]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][9]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][9]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][9]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \src_gray_ff[10]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \src_gray_ff[11]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \src_gray_ff[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \src_gray_ff[7]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \src_gray_ff[8]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \src_gray_ff[9]_i_1\ : label is "soft_lutpair9";
begin
  dest_out_bin(12) <= \dest_graysync_ff[3]\(12);
  dest_out_bin(11) <= \<const0>\;
  dest_out_bin(10) <= \<const0>\;
  dest_out_bin(9) <= \<const0>\;
  dest_out_bin(8) <= \<const0>\;
  dest_out_bin(7) <= \<const0>\;
  dest_out_bin(6) <= \<const0>\;
  dest_out_bin(5) <= \<const0>\;
  dest_out_bin(4) <= \<const0>\;
  dest_out_bin(3) <= \<const0>\;
  dest_out_bin(2) <= \<const0>\;
  dest_out_bin(1) <= \<const0>\;
  dest_out_bin(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(10),
      Q => \dest_graysync_ff[0]\(10),
      R => '0'
    );
\dest_graysync_ff_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(11),
      Q => \dest_graysync_ff[0]\(11),
      R => '0'
    );
\dest_graysync_ff_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(12),
      Q => \dest_graysync_ff[0]\(12),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(7),
      Q => \dest_graysync_ff[0]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(8),
      Q => \dest_graysync_ff[0]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(9),
      Q => \dest_graysync_ff[0]\(9),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(10),
      Q => \dest_graysync_ff[1]\(10),
      R => '0'
    );
\dest_graysync_ff_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(11),
      Q => \dest_graysync_ff[1]\(11),
      R => '0'
    );
\dest_graysync_ff_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(12),
      Q => \dest_graysync_ff[1]\(12),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(7),
      Q => \dest_graysync_ff[1]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(8),
      Q => \dest_graysync_ff[1]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(9),
      Q => \dest_graysync_ff[1]\(9),
      R => '0'
    );
\dest_graysync_ff_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(0),
      Q => \dest_graysync_ff[2]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[2][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(10),
      Q => \dest_graysync_ff[2]\(10),
      R => '0'
    );
\dest_graysync_ff_reg[2][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(11),
      Q => \dest_graysync_ff[2]\(11),
      R => '0'
    );
\dest_graysync_ff_reg[2][12]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(12),
      Q => \dest_graysync_ff[2]\(12),
      R => '0'
    );
\dest_graysync_ff_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(1),
      Q => \dest_graysync_ff[2]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(2),
      Q => \dest_graysync_ff[2]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(3),
      Q => \dest_graysync_ff[2]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(4),
      Q => \dest_graysync_ff[2]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(5),
      Q => \dest_graysync_ff[2]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(6),
      Q => \dest_graysync_ff[2]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(7),
      Q => \dest_graysync_ff[2]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[2][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(8),
      Q => \dest_graysync_ff[2]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[2][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(9),
      Q => \dest_graysync_ff[2]\(9),
      R => '0'
    );
\dest_graysync_ff_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(0),
      Q => \dest_graysync_ff[3]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[3][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(10),
      Q => \dest_graysync_ff[3]\(10),
      R => '0'
    );
\dest_graysync_ff_reg[3][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(11),
      Q => \dest_graysync_ff[3]\(11),
      R => '0'
    );
\dest_graysync_ff_reg[3][12]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(12),
      Q => \dest_graysync_ff[3]\(12),
      R => '0'
    );
\dest_graysync_ff_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(1),
      Q => \dest_graysync_ff[3]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(2),
      Q => \dest_graysync_ff[3]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(3),
      Q => \dest_graysync_ff[3]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(4),
      Q => \dest_graysync_ff[3]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(5),
      Q => \dest_graysync_ff[3]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(6),
      Q => \dest_graysync_ff[3]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[3][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(7),
      Q => \dest_graysync_ff[3]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[3][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(8),
      Q => \dest_graysync_ff[3]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[3][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(9),
      Q => \dest_graysync_ff[3]\(9),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(11),
      I1 => src_in_bin(10),
      O => gray_enc(10)
    );
\src_gray_ff[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(12),
      I1 => src_in_bin(11),
      O => gray_enc(11)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(4),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(5),
      O => gray_enc(5)
    );
\src_gray_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(7),
      I1 => src_in_bin(6),
      O => gray_enc(6)
    );
\src_gray_ff[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(8),
      I1 => src_in_bin(7),
      O => gray_enc(7)
    );
\src_gray_ff[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(9),
      I1 => src_in_bin(8),
      O => gray_enc(8)
    );
\src_gray_ff[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(10),
      I1 => src_in_bin(9),
      O => gray_enc(9)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(10),
      Q => async_path(10),
      R => '0'
    );
\src_gray_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(11),
      Q => async_path(11),
      R => '0'
    );
\src_gray_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(12),
      Q => async_path(12),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(6),
      Q => async_path(6),
      R => '0'
    );
\src_gray_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(7),
      Q => async_path(7),
      R => '0'
    );
\src_gray_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(8),
      Q => async_path(8),
      R => '0'
    );
\src_gray_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(9),
      Q => async_path(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_usb_stream_0_0_xpm_cdc_gray__parameterized1\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 12 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 12 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \system_usb_stream_0_0_xpm_cdc_gray__parameterized1\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \system_usb_stream_0_0_xpm_cdc_gray__parameterized1\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_usb_stream_0_0_xpm_cdc_gray__parameterized1\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \system_usb_stream_0_0_xpm_cdc_gray__parameterized1\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \system_usb_stream_0_0_xpm_cdc_gray__parameterized1\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \system_usb_stream_0_0_xpm_cdc_gray__parameterized1\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \system_usb_stream_0_0_xpm_cdc_gray__parameterized1\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \system_usb_stream_0_0_xpm_cdc_gray__parameterized1\ : entity is 13;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \system_usb_stream_0_0_xpm_cdc_gray__parameterized1\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \system_usb_stream_0_0_xpm_cdc_gray__parameterized1\ : entity is "soft";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \system_usb_stream_0_0_xpm_cdc_gray__parameterized1\ : entity is "GRAY";
end \system_usb_stream_0_0_xpm_cdc_gray__parameterized1\;

architecture STRUCTURE of \system_usb_stream_0_0_xpm_cdc_gray__parameterized1\ is
  signal \<const0>\ : STD_LOGIC;
  signal async_path : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal gray_enc : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][10]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][10]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][10]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][11]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][11]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][11]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][12]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][12]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][12]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][9]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][9]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][9]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][10]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][10]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][10]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][11]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][11]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][11]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][12]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][12]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][12]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][9]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][9]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][9]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \src_gray_ff[10]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \src_gray_ff[11]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \src_gray_ff[6]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \src_gray_ff[7]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \src_gray_ff[8]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \src_gray_ff[9]_i_1\ : label is "soft_lutpair20";
begin
  dest_out_bin(12) <= \dest_graysync_ff[1]\(12);
  dest_out_bin(11) <= \<const0>\;
  dest_out_bin(10) <= \<const0>\;
  dest_out_bin(9) <= \<const0>\;
  dest_out_bin(8) <= \<const0>\;
  dest_out_bin(7) <= \<const0>\;
  dest_out_bin(6) <= \<const0>\;
  dest_out_bin(5) <= \<const0>\;
  dest_out_bin(4) <= \<const0>\;
  dest_out_bin(3) <= \<const0>\;
  dest_out_bin(2) <= \<const0>\;
  dest_out_bin(1) <= \<const0>\;
  dest_out_bin(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(10),
      Q => \dest_graysync_ff[0]\(10),
      R => '0'
    );
\dest_graysync_ff_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(11),
      Q => \dest_graysync_ff[0]\(11),
      R => '0'
    );
\dest_graysync_ff_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(12),
      Q => \dest_graysync_ff[0]\(12),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(7),
      Q => \dest_graysync_ff[0]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(8),
      Q => \dest_graysync_ff[0]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(9),
      Q => \dest_graysync_ff[0]\(9),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(10),
      Q => \dest_graysync_ff[1]\(10),
      R => '0'
    );
\dest_graysync_ff_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(11),
      Q => \dest_graysync_ff[1]\(11),
      R => '0'
    );
\dest_graysync_ff_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(12),
      Q => \dest_graysync_ff[1]\(12),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(7),
      Q => \dest_graysync_ff[1]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(8),
      Q => \dest_graysync_ff[1]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(9),
      Q => \dest_graysync_ff[1]\(9),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(11),
      I1 => src_in_bin(10),
      O => gray_enc(10)
    );
\src_gray_ff[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(12),
      I1 => src_in_bin(11),
      O => gray_enc(11)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(4),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(5),
      O => gray_enc(5)
    );
\src_gray_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(7),
      I1 => src_in_bin(6),
      O => gray_enc(6)
    );
\src_gray_ff[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(8),
      I1 => src_in_bin(7),
      O => gray_enc(7)
    );
\src_gray_ff[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(9),
      I1 => src_in_bin(8),
      O => gray_enc(8)
    );
\src_gray_ff[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(10),
      I1 => src_in_bin(9),
      O => gray_enc(9)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(10),
      Q => async_path(10),
      R => '0'
    );
\src_gray_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(11),
      Q => async_path(11),
      R => '0'
    );
\src_gray_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(12),
      Q => async_path(12),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(6),
      Q => async_path(6),
      R => '0'
    );
\src_gray_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(7),
      Q => async_path(7),
      R => '0'
    );
\src_gray_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(8),
      Q => async_path(8),
      R => '0'
    );
\src_gray_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(9),
      Q => async_path(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_usb_stream_0_0_xpm_cdc_gray__parameterized2\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 13 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \system_usb_stream_0_0_xpm_cdc_gray__parameterized2\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \system_usb_stream_0_0_xpm_cdc_gray__parameterized2\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_usb_stream_0_0_xpm_cdc_gray__parameterized2\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \system_usb_stream_0_0_xpm_cdc_gray__parameterized2\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \system_usb_stream_0_0_xpm_cdc_gray__parameterized2\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \system_usb_stream_0_0_xpm_cdc_gray__parameterized2\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \system_usb_stream_0_0_xpm_cdc_gray__parameterized2\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \system_usb_stream_0_0_xpm_cdc_gray__parameterized2\ : entity is 14;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \system_usb_stream_0_0_xpm_cdc_gray__parameterized2\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \system_usb_stream_0_0_xpm_cdc_gray__parameterized2\ : entity is "soft";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \system_usb_stream_0_0_xpm_cdc_gray__parameterized2\ : entity is "GRAY";
end \system_usb_stream_0_0_xpm_cdc_gray__parameterized2\;

architecture STRUCTURE of \system_usb_stream_0_0_xpm_cdc_gray__parameterized2\ is
  signal async_path : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 12 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][10]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][10]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][10]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][11]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][11]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][11]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][12]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][12]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][12]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][13]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][13]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][13]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][9]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][9]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][9]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][10]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][10]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][10]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][11]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][11]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][11]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][12]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][12]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][12]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][13]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][13]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][13]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][9]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][9]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][9]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \src_gray_ff[10]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \src_gray_ff[11]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \src_gray_ff[6]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \src_gray_ff[7]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \src_gray_ff[8]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \src_gray_ff[9]_i_1\ : label is "soft_lutpair41";
begin
  dest_out_bin(13) <= \dest_graysync_ff[1]\(13);
  dest_out_bin(12 downto 0) <= \^dest_out_bin\(12 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(10),
      Q => \dest_graysync_ff[0]\(10),
      R => '0'
    );
\dest_graysync_ff_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(11),
      Q => \dest_graysync_ff[0]\(11),
      R => '0'
    );
\dest_graysync_ff_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(12),
      Q => \dest_graysync_ff[0]\(12),
      R => '0'
    );
\dest_graysync_ff_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(13),
      Q => \dest_graysync_ff[0]\(13),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(7),
      Q => \dest_graysync_ff[0]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(8),
      Q => \dest_graysync_ff[0]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(9),
      Q => \dest_graysync_ff[0]\(9),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(10),
      Q => \dest_graysync_ff[1]\(10),
      R => '0'
    );
\dest_graysync_ff_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(11),
      Q => \dest_graysync_ff[1]\(11),
      R => '0'
    );
\dest_graysync_ff_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(12),
      Q => \dest_graysync_ff[1]\(12),
      R => '0'
    );
\dest_graysync_ff_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(13),
      Q => \dest_graysync_ff[1]\(13),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(7),
      Q => \dest_graysync_ff[1]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(8),
      Q => \dest_graysync_ff[1]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(9),
      Q => \dest_graysync_ff[1]\(9),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \dest_graysync_ff[1]\(2),
      I2 => \^dest_out_bin\(3),
      I3 => \dest_graysync_ff[1]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[10]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(10),
      I1 => \dest_graysync_ff[1]\(12),
      I2 => \dest_graysync_ff[1]\(13),
      I3 => \dest_graysync_ff[1]\(11),
      O => \^dest_out_bin\(10)
    );
\dest_out_bin[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(11),
      I1 => \dest_graysync_ff[1]\(13),
      I2 => \dest_graysync_ff[1]\(12),
      O => \^dest_out_bin\(11)
    );
\dest_out_bin[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(12),
      I1 => \dest_graysync_ff[1]\(13),
      O => \^dest_out_bin\(12)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \^dest_out_bin\(3),
      I2 => \dest_graysync_ff[1]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \^dest_out_bin\(3),
      O => \^dest_out_bin\(2)
    );
\dest_out_bin[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(5),
      I2 => \dest_graysync_ff[1]\(7),
      I3 => \^dest_out_bin\(8),
      I4 => \dest_graysync_ff[1]\(6),
      I5 => \dest_graysync_ff[1]\(4),
      O => \^dest_out_bin\(3)
    );
\dest_out_bin[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(6),
      I2 => \^dest_out_bin\(8),
      I3 => \dest_graysync_ff[1]\(7),
      I4 => \dest_graysync_ff[1]\(5),
      O => \^dest_out_bin\(4)
    );
\dest_out_bin[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(5),
      I1 => \dest_graysync_ff[1]\(7),
      I2 => \^dest_out_bin\(8),
      I3 => \dest_graysync_ff[1]\(6),
      O => \^dest_out_bin\(5)
    );
\dest_out_bin[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(6),
      I1 => \^dest_out_bin\(8),
      I2 => \dest_graysync_ff[1]\(7),
      O => \^dest_out_bin\(6)
    );
\dest_out_bin[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(7),
      I1 => \^dest_out_bin\(8),
      O => \^dest_out_bin\(7)
    );
\dest_out_bin[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(8),
      I1 => \dest_graysync_ff[1]\(10),
      I2 => \dest_graysync_ff[1]\(12),
      I3 => \dest_graysync_ff[1]\(13),
      I4 => \dest_graysync_ff[1]\(11),
      I5 => \dest_graysync_ff[1]\(9),
      O => \^dest_out_bin\(8)
    );
\dest_out_bin[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(9),
      I1 => \dest_graysync_ff[1]\(11),
      I2 => \dest_graysync_ff[1]\(13),
      I3 => \dest_graysync_ff[1]\(12),
      I4 => \dest_graysync_ff[1]\(10),
      O => \^dest_out_bin\(9)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(11),
      I1 => src_in_bin(10),
      O => gray_enc(10)
    );
\src_gray_ff[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(12),
      I1 => src_in_bin(11),
      O => gray_enc(11)
    );
\src_gray_ff[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(13),
      I1 => src_in_bin(12),
      O => gray_enc(12)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(4),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(5),
      O => gray_enc(5)
    );
\src_gray_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(7),
      I1 => src_in_bin(6),
      O => gray_enc(6)
    );
\src_gray_ff[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(8),
      I1 => src_in_bin(7),
      O => gray_enc(7)
    );
\src_gray_ff[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(9),
      I1 => src_in_bin(8),
      O => gray_enc(8)
    );
\src_gray_ff[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(10),
      I1 => src_in_bin(9),
      O => gray_enc(9)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(10),
      Q => async_path(10),
      R => '0'
    );
\src_gray_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(11),
      Q => async_path(11),
      R => '0'
    );
\src_gray_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(12),
      Q => async_path(12),
      R => '0'
    );
\src_gray_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(13),
      Q => async_path(13),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(6),
      Q => async_path(6),
      R => '0'
    );
\src_gray_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(7),
      Q => async_path(7),
      R => '0'
    );
\src_gray_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(8),
      Q => async_path(8),
      R => '0'
    );
\src_gray_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(9),
      Q => async_path(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_usb_stream_0_0_xpm_cdc_gray__parameterized2__1\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 13 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \system_usb_stream_0_0_xpm_cdc_gray__parameterized2__1\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \system_usb_stream_0_0_xpm_cdc_gray__parameterized2__1\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_usb_stream_0_0_xpm_cdc_gray__parameterized2__1\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \system_usb_stream_0_0_xpm_cdc_gray__parameterized2__1\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \system_usb_stream_0_0_xpm_cdc_gray__parameterized2__1\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \system_usb_stream_0_0_xpm_cdc_gray__parameterized2__1\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \system_usb_stream_0_0_xpm_cdc_gray__parameterized2__1\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \system_usb_stream_0_0_xpm_cdc_gray__parameterized2__1\ : entity is 14;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \system_usb_stream_0_0_xpm_cdc_gray__parameterized2__1\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \system_usb_stream_0_0_xpm_cdc_gray__parameterized2__1\ : entity is "soft";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \system_usb_stream_0_0_xpm_cdc_gray__parameterized2__1\ : entity is "GRAY";
end \system_usb_stream_0_0_xpm_cdc_gray__parameterized2__1\;

architecture STRUCTURE of \system_usb_stream_0_0_xpm_cdc_gray__parameterized2__1\ is
  signal async_path : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 12 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][10]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][10]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][10]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][11]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][11]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][11]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][12]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][12]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][12]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][13]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][13]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][13]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][9]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][9]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][9]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][10]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][10]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][10]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][11]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][11]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][11]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][12]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][12]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][12]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][13]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][13]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][13]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][9]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][9]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][9]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \src_gray_ff[10]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \src_gray_ff[11]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \src_gray_ff[6]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \src_gray_ff[7]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \src_gray_ff[8]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \src_gray_ff[9]_i_1\ : label is "soft_lutpair28";
begin
  dest_out_bin(13) <= \dest_graysync_ff[1]\(13);
  dest_out_bin(12 downto 0) <= \^dest_out_bin\(12 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(10),
      Q => \dest_graysync_ff[0]\(10),
      R => '0'
    );
\dest_graysync_ff_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(11),
      Q => \dest_graysync_ff[0]\(11),
      R => '0'
    );
\dest_graysync_ff_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(12),
      Q => \dest_graysync_ff[0]\(12),
      R => '0'
    );
\dest_graysync_ff_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(13),
      Q => \dest_graysync_ff[0]\(13),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(7),
      Q => \dest_graysync_ff[0]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(8),
      Q => \dest_graysync_ff[0]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(9),
      Q => \dest_graysync_ff[0]\(9),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(10),
      Q => \dest_graysync_ff[1]\(10),
      R => '0'
    );
\dest_graysync_ff_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(11),
      Q => \dest_graysync_ff[1]\(11),
      R => '0'
    );
\dest_graysync_ff_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(12),
      Q => \dest_graysync_ff[1]\(12),
      R => '0'
    );
\dest_graysync_ff_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(13),
      Q => \dest_graysync_ff[1]\(13),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(7),
      Q => \dest_graysync_ff[1]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(8),
      Q => \dest_graysync_ff[1]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(9),
      Q => \dest_graysync_ff[1]\(9),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \dest_graysync_ff[1]\(2),
      I2 => \^dest_out_bin\(3),
      I3 => \dest_graysync_ff[1]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[10]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(10),
      I1 => \dest_graysync_ff[1]\(12),
      I2 => \dest_graysync_ff[1]\(13),
      I3 => \dest_graysync_ff[1]\(11),
      O => \^dest_out_bin\(10)
    );
\dest_out_bin[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(11),
      I1 => \dest_graysync_ff[1]\(13),
      I2 => \dest_graysync_ff[1]\(12),
      O => \^dest_out_bin\(11)
    );
\dest_out_bin[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(12),
      I1 => \dest_graysync_ff[1]\(13),
      O => \^dest_out_bin\(12)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \^dest_out_bin\(3),
      I2 => \dest_graysync_ff[1]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \^dest_out_bin\(3),
      O => \^dest_out_bin\(2)
    );
\dest_out_bin[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(5),
      I2 => \dest_graysync_ff[1]\(7),
      I3 => \^dest_out_bin\(8),
      I4 => \dest_graysync_ff[1]\(6),
      I5 => \dest_graysync_ff[1]\(4),
      O => \^dest_out_bin\(3)
    );
\dest_out_bin[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(6),
      I2 => \^dest_out_bin\(8),
      I3 => \dest_graysync_ff[1]\(7),
      I4 => \dest_graysync_ff[1]\(5),
      O => \^dest_out_bin\(4)
    );
\dest_out_bin[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(5),
      I1 => \dest_graysync_ff[1]\(7),
      I2 => \^dest_out_bin\(8),
      I3 => \dest_graysync_ff[1]\(6),
      O => \^dest_out_bin\(5)
    );
\dest_out_bin[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(6),
      I1 => \^dest_out_bin\(8),
      I2 => \dest_graysync_ff[1]\(7),
      O => \^dest_out_bin\(6)
    );
\dest_out_bin[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(7),
      I1 => \^dest_out_bin\(8),
      O => \^dest_out_bin\(7)
    );
\dest_out_bin[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(8),
      I1 => \dest_graysync_ff[1]\(10),
      I2 => \dest_graysync_ff[1]\(12),
      I3 => \dest_graysync_ff[1]\(13),
      I4 => \dest_graysync_ff[1]\(11),
      I5 => \dest_graysync_ff[1]\(9),
      O => \^dest_out_bin\(8)
    );
\dest_out_bin[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(9),
      I1 => \dest_graysync_ff[1]\(11),
      I2 => \dest_graysync_ff[1]\(13),
      I3 => \dest_graysync_ff[1]\(12),
      I4 => \dest_graysync_ff[1]\(10),
      O => \^dest_out_bin\(9)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(11),
      I1 => src_in_bin(10),
      O => gray_enc(10)
    );
\src_gray_ff[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(12),
      I1 => src_in_bin(11),
      O => gray_enc(11)
    );
\src_gray_ff[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(13),
      I1 => src_in_bin(12),
      O => gray_enc(12)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(4),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(5),
      O => gray_enc(5)
    );
\src_gray_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(7),
      I1 => src_in_bin(6),
      O => gray_enc(6)
    );
\src_gray_ff[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(8),
      I1 => src_in_bin(7),
      O => gray_enc(7)
    );
\src_gray_ff[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(9),
      I1 => src_in_bin(8),
      O => gray_enc(8)
    );
\src_gray_ff[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(10),
      I1 => src_in_bin(9),
      O => gray_enc(9)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(10),
      Q => async_path(10),
      R => '0'
    );
\src_gray_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(11),
      Q => async_path(11),
      R => '0'
    );
\src_gray_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(12),
      Q => async_path(12),
      R => '0'
    );
\src_gray_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(13),
      Q => async_path(13),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(6),
      Q => async_path(6),
      R => '0'
    );
\src_gray_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(7),
      Q => async_path(7),
      R => '0'
    );
\src_gray_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(8),
      Q => async_path(8),
      R => '0'
    );
\src_gray_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(9),
      Q => async_path(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_usb_stream_0_0_xpm_cdc_gray__parameterized3\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 14 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \system_usb_stream_0_0_xpm_cdc_gray__parameterized3\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \system_usb_stream_0_0_xpm_cdc_gray__parameterized3\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_usb_stream_0_0_xpm_cdc_gray__parameterized3\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \system_usb_stream_0_0_xpm_cdc_gray__parameterized3\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \system_usb_stream_0_0_xpm_cdc_gray__parameterized3\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \system_usb_stream_0_0_xpm_cdc_gray__parameterized3\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \system_usb_stream_0_0_xpm_cdc_gray__parameterized3\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \system_usb_stream_0_0_xpm_cdc_gray__parameterized3\ : entity is 15;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \system_usb_stream_0_0_xpm_cdc_gray__parameterized3\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \system_usb_stream_0_0_xpm_cdc_gray__parameterized3\ : entity is "soft";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \system_usb_stream_0_0_xpm_cdc_gray__parameterized3\ : entity is "GRAY";
end \system_usb_stream_0_0_xpm_cdc_gray__parameterized3\;

architecture STRUCTURE of \system_usb_stream_0_0_xpm_cdc_gray__parameterized3\ is
  signal \<const0>\ : STD_LOGIC;
  signal async_path : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \dest_graysync_ff[2]\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[2]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[2]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[2]\ : signal is "GRAY";
  signal \dest_graysync_ff[3]\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[3]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[3]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[3]\ : signal is "GRAY";
  signal gray_enc : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][10]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][10]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][10]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][11]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][11]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][11]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][12]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][12]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][12]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][13]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][13]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][13]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][14]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][14]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][14]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][9]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][9]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][9]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][10]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][10]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][10]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][11]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][11]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][11]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][12]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][12]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][12]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][13]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][13]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][13]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][14]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][14]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][14]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][9]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][9]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][9]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][10]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][10]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][10]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][11]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][11]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][11]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][12]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][12]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][12]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][13]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][13]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][13]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][14]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][14]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][14]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][9]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][9]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][9]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][10]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][10]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][10]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][11]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][11]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][11]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][12]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][12]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][12]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][13]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][13]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][13]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][14]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][14]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][14]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][9]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][9]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][9]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \src_gray_ff[10]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \src_gray_ff[11]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \src_gray_ff[12]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \src_gray_ff[13]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \src_gray_ff[6]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \src_gray_ff[7]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \src_gray_ff[8]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \src_gray_ff[9]_i_1\ : label is "soft_lutpair34";
begin
  dest_out_bin(14) <= \dest_graysync_ff[3]\(14);
  dest_out_bin(13) <= \<const0>\;
  dest_out_bin(12) <= \<const0>\;
  dest_out_bin(11) <= \<const0>\;
  dest_out_bin(10) <= \<const0>\;
  dest_out_bin(9) <= \<const0>\;
  dest_out_bin(8) <= \<const0>\;
  dest_out_bin(7) <= \<const0>\;
  dest_out_bin(6) <= \<const0>\;
  dest_out_bin(5) <= \<const0>\;
  dest_out_bin(4) <= \<const0>\;
  dest_out_bin(3) <= \<const0>\;
  dest_out_bin(2) <= \<const0>\;
  dest_out_bin(1) <= \<const0>\;
  dest_out_bin(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(10),
      Q => \dest_graysync_ff[0]\(10),
      R => '0'
    );
\dest_graysync_ff_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(11),
      Q => \dest_graysync_ff[0]\(11),
      R => '0'
    );
\dest_graysync_ff_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(12),
      Q => \dest_graysync_ff[0]\(12),
      R => '0'
    );
\dest_graysync_ff_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(13),
      Q => \dest_graysync_ff[0]\(13),
      R => '0'
    );
\dest_graysync_ff_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(14),
      Q => \dest_graysync_ff[0]\(14),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(7),
      Q => \dest_graysync_ff[0]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(8),
      Q => \dest_graysync_ff[0]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(9),
      Q => \dest_graysync_ff[0]\(9),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(10),
      Q => \dest_graysync_ff[1]\(10),
      R => '0'
    );
\dest_graysync_ff_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(11),
      Q => \dest_graysync_ff[1]\(11),
      R => '0'
    );
\dest_graysync_ff_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(12),
      Q => \dest_graysync_ff[1]\(12),
      R => '0'
    );
\dest_graysync_ff_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(13),
      Q => \dest_graysync_ff[1]\(13),
      R => '0'
    );
\dest_graysync_ff_reg[1][14]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(14),
      Q => \dest_graysync_ff[1]\(14),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(7),
      Q => \dest_graysync_ff[1]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(8),
      Q => \dest_graysync_ff[1]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(9),
      Q => \dest_graysync_ff[1]\(9),
      R => '0'
    );
\dest_graysync_ff_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(0),
      Q => \dest_graysync_ff[2]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[2][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(10),
      Q => \dest_graysync_ff[2]\(10),
      R => '0'
    );
\dest_graysync_ff_reg[2][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(11),
      Q => \dest_graysync_ff[2]\(11),
      R => '0'
    );
\dest_graysync_ff_reg[2][12]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(12),
      Q => \dest_graysync_ff[2]\(12),
      R => '0'
    );
\dest_graysync_ff_reg[2][13]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(13),
      Q => \dest_graysync_ff[2]\(13),
      R => '0'
    );
\dest_graysync_ff_reg[2][14]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(14),
      Q => \dest_graysync_ff[2]\(14),
      R => '0'
    );
\dest_graysync_ff_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(1),
      Q => \dest_graysync_ff[2]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(2),
      Q => \dest_graysync_ff[2]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(3),
      Q => \dest_graysync_ff[2]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(4),
      Q => \dest_graysync_ff[2]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(5),
      Q => \dest_graysync_ff[2]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(6),
      Q => \dest_graysync_ff[2]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(7),
      Q => \dest_graysync_ff[2]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[2][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(8),
      Q => \dest_graysync_ff[2]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[2][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(9),
      Q => \dest_graysync_ff[2]\(9),
      R => '0'
    );
\dest_graysync_ff_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(0),
      Q => \dest_graysync_ff[3]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[3][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(10),
      Q => \dest_graysync_ff[3]\(10),
      R => '0'
    );
\dest_graysync_ff_reg[3][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(11),
      Q => \dest_graysync_ff[3]\(11),
      R => '0'
    );
\dest_graysync_ff_reg[3][12]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(12),
      Q => \dest_graysync_ff[3]\(12),
      R => '0'
    );
\dest_graysync_ff_reg[3][13]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(13),
      Q => \dest_graysync_ff[3]\(13),
      R => '0'
    );
\dest_graysync_ff_reg[3][14]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(14),
      Q => \dest_graysync_ff[3]\(14),
      R => '0'
    );
\dest_graysync_ff_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(1),
      Q => \dest_graysync_ff[3]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(2),
      Q => \dest_graysync_ff[3]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(3),
      Q => \dest_graysync_ff[3]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(4),
      Q => \dest_graysync_ff[3]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(5),
      Q => \dest_graysync_ff[3]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(6),
      Q => \dest_graysync_ff[3]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[3][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(7),
      Q => \dest_graysync_ff[3]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[3][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(8),
      Q => \dest_graysync_ff[3]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[3][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(9),
      Q => \dest_graysync_ff[3]\(9),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(11),
      I1 => src_in_bin(10),
      O => gray_enc(10)
    );
\src_gray_ff[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(12),
      I1 => src_in_bin(11),
      O => gray_enc(11)
    );
\src_gray_ff[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(13),
      I1 => src_in_bin(12),
      O => gray_enc(12)
    );
\src_gray_ff[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(14),
      I1 => src_in_bin(13),
      O => gray_enc(13)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(4),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(5),
      O => gray_enc(5)
    );
\src_gray_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(7),
      I1 => src_in_bin(6),
      O => gray_enc(6)
    );
\src_gray_ff[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(8),
      I1 => src_in_bin(7),
      O => gray_enc(7)
    );
\src_gray_ff[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(9),
      I1 => src_in_bin(8),
      O => gray_enc(8)
    );
\src_gray_ff[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(10),
      I1 => src_in_bin(9),
      O => gray_enc(9)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(10),
      Q => async_path(10),
      R => '0'
    );
\src_gray_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(11),
      Q => async_path(11),
      R => '0'
    );
\src_gray_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(12),
      Q => async_path(12),
      R => '0'
    );
\src_gray_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(13),
      Q => async_path(13),
      R => '0'
    );
\src_gray_ff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(14),
      Q => async_path(14),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(6),
      Q => async_path(6),
      R => '0'
    );
\src_gray_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(7),
      Q => async_path(7),
      R => '0'
    );
\src_gray_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(8),
      Q => async_path(8),
      R => '0'
    );
\src_gray_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(9),
      Q => async_path(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_usb_stream_0_0_xpm_cdc_gray__parameterized4\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 14 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \system_usb_stream_0_0_xpm_cdc_gray__parameterized4\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \system_usb_stream_0_0_xpm_cdc_gray__parameterized4\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_usb_stream_0_0_xpm_cdc_gray__parameterized4\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \system_usb_stream_0_0_xpm_cdc_gray__parameterized4\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \system_usb_stream_0_0_xpm_cdc_gray__parameterized4\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \system_usb_stream_0_0_xpm_cdc_gray__parameterized4\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \system_usb_stream_0_0_xpm_cdc_gray__parameterized4\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \system_usb_stream_0_0_xpm_cdc_gray__parameterized4\ : entity is 15;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \system_usb_stream_0_0_xpm_cdc_gray__parameterized4\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \system_usb_stream_0_0_xpm_cdc_gray__parameterized4\ : entity is "soft";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \system_usb_stream_0_0_xpm_cdc_gray__parameterized4\ : entity is "GRAY";
end \system_usb_stream_0_0_xpm_cdc_gray__parameterized4\;

architecture STRUCTURE of \system_usb_stream_0_0_xpm_cdc_gray__parameterized4\ is
  signal \<const0>\ : STD_LOGIC;
  signal async_path : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal gray_enc : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][10]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][10]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][10]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][11]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][11]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][11]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][12]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][12]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][12]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][13]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][13]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][13]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][14]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][14]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][14]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][9]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][9]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][9]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][10]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][10]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][10]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][11]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][11]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][11]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][12]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][12]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][12]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][13]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][13]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][13]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][14]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][14]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][14]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][9]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][9]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][9]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \src_gray_ff[10]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \src_gray_ff[11]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \src_gray_ff[12]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \src_gray_ff[13]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \src_gray_ff[6]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \src_gray_ff[7]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \src_gray_ff[8]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \src_gray_ff[9]_i_1\ : label is "soft_lutpair47";
begin
  dest_out_bin(14) <= \dest_graysync_ff[1]\(14);
  dest_out_bin(13) <= \<const0>\;
  dest_out_bin(12) <= \<const0>\;
  dest_out_bin(11) <= \<const0>\;
  dest_out_bin(10) <= \<const0>\;
  dest_out_bin(9) <= \<const0>\;
  dest_out_bin(8) <= \<const0>\;
  dest_out_bin(7) <= \<const0>\;
  dest_out_bin(6) <= \<const0>\;
  dest_out_bin(5) <= \<const0>\;
  dest_out_bin(4) <= \<const0>\;
  dest_out_bin(3) <= \<const0>\;
  dest_out_bin(2) <= \<const0>\;
  dest_out_bin(1) <= \<const0>\;
  dest_out_bin(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(10),
      Q => \dest_graysync_ff[0]\(10),
      R => '0'
    );
\dest_graysync_ff_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(11),
      Q => \dest_graysync_ff[0]\(11),
      R => '0'
    );
\dest_graysync_ff_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(12),
      Q => \dest_graysync_ff[0]\(12),
      R => '0'
    );
\dest_graysync_ff_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(13),
      Q => \dest_graysync_ff[0]\(13),
      R => '0'
    );
\dest_graysync_ff_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(14),
      Q => \dest_graysync_ff[0]\(14),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(7),
      Q => \dest_graysync_ff[0]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(8),
      Q => \dest_graysync_ff[0]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(9),
      Q => \dest_graysync_ff[0]\(9),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(10),
      Q => \dest_graysync_ff[1]\(10),
      R => '0'
    );
\dest_graysync_ff_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(11),
      Q => \dest_graysync_ff[1]\(11),
      R => '0'
    );
\dest_graysync_ff_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(12),
      Q => \dest_graysync_ff[1]\(12),
      R => '0'
    );
\dest_graysync_ff_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(13),
      Q => \dest_graysync_ff[1]\(13),
      R => '0'
    );
\dest_graysync_ff_reg[1][14]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(14),
      Q => \dest_graysync_ff[1]\(14),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(7),
      Q => \dest_graysync_ff[1]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(8),
      Q => \dest_graysync_ff[1]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(9),
      Q => \dest_graysync_ff[1]\(9),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(11),
      I1 => src_in_bin(10),
      O => gray_enc(10)
    );
\src_gray_ff[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(12),
      I1 => src_in_bin(11),
      O => gray_enc(11)
    );
\src_gray_ff[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(13),
      I1 => src_in_bin(12),
      O => gray_enc(12)
    );
\src_gray_ff[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(14),
      I1 => src_in_bin(13),
      O => gray_enc(13)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(4),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(5),
      O => gray_enc(5)
    );
\src_gray_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(7),
      I1 => src_in_bin(6),
      O => gray_enc(6)
    );
\src_gray_ff[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(8),
      I1 => src_in_bin(7),
      O => gray_enc(7)
    );
\src_gray_ff[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(9),
      I1 => src_in_bin(8),
      O => gray_enc(8)
    );
\src_gray_ff[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(10),
      I1 => src_in_bin(9),
      O => gray_enc(9)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(10),
      Q => async_path(10),
      R => '0'
    );
\src_gray_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(11),
      Q => async_path(11),
      R => '0'
    );
\src_gray_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(12),
      Q => async_path(12),
      R => '0'
    );
\src_gray_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(13),
      Q => async_path(13),
      R => '0'
    );
\src_gray_ff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(14),
      Q => async_path(14),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(6),
      Q => async_path(6),
      R => '0'
    );
\src_gray_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(7),
      Q => async_path(7),
      R => '0'
    );
\src_gray_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(8),
      Q => async_path(8),
      R => '0'
    );
\src_gray_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(9),
      Q => async_path(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_usb_stream_0_0_xpm_cdc_sync_rst is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of system_usb_stream_0_0_xpm_cdc_sync_rst : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of system_usb_stream_0_0_xpm_cdc_sync_rst : entity is 2;
  attribute INIT : string;
  attribute INIT of system_usb_stream_0_0_xpm_cdc_sync_rst : entity is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of system_usb_stream_0_0_xpm_cdc_sync_rst : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_usb_stream_0_0_xpm_cdc_sync_rst : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of system_usb_stream_0_0_xpm_cdc_sync_rst : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of system_usb_stream_0_0_xpm_cdc_sync_rst : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of system_usb_stream_0_0_xpm_cdc_sync_rst : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of system_usb_stream_0_0_xpm_cdc_sync_rst : entity is "soft";
  attribute xpm_cdc : string;
  attribute xpm_cdc of system_usb_stream_0_0_xpm_cdc_sync_rst : entity is "SYNC_RST";
end system_usb_stream_0_0_xpm_cdc_sync_rst;

architecture STRUCTURE of system_usb_stream_0_0_xpm_cdc_sync_rst is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(1);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_usb_stream_0_0_xpm_cdc_sync_rst__1\ is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \system_usb_stream_0_0_xpm_cdc_sync_rst__1\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \system_usb_stream_0_0_xpm_cdc_sync_rst__1\ : entity is 2;
  attribute INIT : string;
  attribute INIT of \system_usb_stream_0_0_xpm_cdc_sync_rst__1\ : entity is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \system_usb_stream_0_0_xpm_cdc_sync_rst__1\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_usb_stream_0_0_xpm_cdc_sync_rst__1\ : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \system_usb_stream_0_0_xpm_cdc_sync_rst__1\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \system_usb_stream_0_0_xpm_cdc_sync_rst__1\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \system_usb_stream_0_0_xpm_cdc_sync_rst__1\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \system_usb_stream_0_0_xpm_cdc_sync_rst__1\ : entity is "soft";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \system_usb_stream_0_0_xpm_cdc_sync_rst__1\ : entity is "SYNC_RST";
end \system_usb_stream_0_0_xpm_cdc_sync_rst__1\;

architecture STRUCTURE of \system_usb_stream_0_0_xpm_cdc_sync_rst__1\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(1);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_usb_stream_0_0_xpm_cdc_sync_rst__2\ is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \system_usb_stream_0_0_xpm_cdc_sync_rst__2\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \system_usb_stream_0_0_xpm_cdc_sync_rst__2\ : entity is 2;
  attribute INIT : string;
  attribute INIT of \system_usb_stream_0_0_xpm_cdc_sync_rst__2\ : entity is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \system_usb_stream_0_0_xpm_cdc_sync_rst__2\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_usb_stream_0_0_xpm_cdc_sync_rst__2\ : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \system_usb_stream_0_0_xpm_cdc_sync_rst__2\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \system_usb_stream_0_0_xpm_cdc_sync_rst__2\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \system_usb_stream_0_0_xpm_cdc_sync_rst__2\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \system_usb_stream_0_0_xpm_cdc_sync_rst__2\ : entity is "soft";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \system_usb_stream_0_0_xpm_cdc_sync_rst__2\ : entity is "SYNC_RST";
end \system_usb_stream_0_0_xpm_cdc_sync_rst__2\;

architecture STRUCTURE of \system_usb_stream_0_0_xpm_cdc_sync_rst__2\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(1);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_usb_stream_0_0_xpm_cdc_sync_rst__3\ is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \system_usb_stream_0_0_xpm_cdc_sync_rst__3\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \system_usb_stream_0_0_xpm_cdc_sync_rst__3\ : entity is 2;
  attribute INIT : string;
  attribute INIT of \system_usb_stream_0_0_xpm_cdc_sync_rst__3\ : entity is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \system_usb_stream_0_0_xpm_cdc_sync_rst__3\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_usb_stream_0_0_xpm_cdc_sync_rst__3\ : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \system_usb_stream_0_0_xpm_cdc_sync_rst__3\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \system_usb_stream_0_0_xpm_cdc_sync_rst__3\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \system_usb_stream_0_0_xpm_cdc_sync_rst__3\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \system_usb_stream_0_0_xpm_cdc_sync_rst__3\ : entity is "soft";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \system_usb_stream_0_0_xpm_cdc_sync_rst__3\ : entity is "SYNC_RST";
end \system_usb_stream_0_0_xpm_cdc_sync_rst__3\;

architecture STRUCTURE of \system_usb_stream_0_0_xpm_cdc_sync_rst__3\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(1);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_usb_stream_0_0_xpm_counter_updn is
  port (
    S : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \count_value_i_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_value_i_reg[11]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_value_i_reg[14]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 13 downto 0 );
    \count_value_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \count_value_i_reg[1]_1\ : in STD_LOGIC;
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_usb_stream_0_0_xpm_counter_updn : entity is "xpm_counter_updn";
end system_usb_stream_0_0_xpm_counter_updn;

architecture STRUCTURE of system_usb_stream_0_0_xpm_counter_updn is
  signal count_value_i : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \count_value_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_2_n_0\ : STD_LOGIC;
  signal \^count_value_i_reg[0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  \count_value_i_reg[0]_0\(0) <= \^count_value_i_reg[0]_0\(0);
\count_value_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005A88A655"
    )
        port map (
      I0 => \^count_value_i_reg[0]_0\(0),
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => rd_en,
      I3 => \count_value_i_reg[1]_0\(1),
      I4 => ram_empty_i,
      I5 => \count_value_i_reg[1]_1\,
      O => \count_value_i[0]_i_1_n_0\
    );
\count_value_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AA88AAAA"
    )
        port map (
      I0 => \count_value_i[1]_i_2_n_0\,
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => rd_en,
      I3 => \count_value_i_reg[1]_0\(1),
      I4 => ram_empty_i,
      I5 => \count_value_i_reg[1]_1\,
      O => \count_value_i[1]_i_1_n_0\
    );
\count_value_i[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFF755500008AA"
    )
        port map (
      I0 => \^count_value_i_reg[0]_0\(0),
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => rd_en,
      I3 => \count_value_i_reg[1]_0\(1),
      I4 => ram_empty_i,
      I5 => count_value_i(1),
      O => \count_value_i[1]_i_2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \count_value_i[0]_i_1_n_0\,
      Q => \^count_value_i_reg[0]_0\(0),
      R => '0'
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \count_value_i[1]_i_1_n_0\,
      Q => count_value_i(1),
      R => '0'
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => Q(8),
      I1 => \^count_value_i_reg[0]_0\(0),
      I2 => count_value_i(1),
      O => \count_value_i_reg[11]\(1)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => Q(7),
      I1 => \^count_value_i_reg[0]_0\(0),
      I2 => count_value_i(1),
      O => \count_value_i_reg[11]\(0)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => Q(6),
      I1 => \^count_value_i_reg[0]_0\(0),
      I2 => count_value_i(1),
      O => \count_value_i_reg[7]\(3)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => Q(5),
      I1 => \^count_value_i_reg[0]_0\(0),
      I2 => count_value_i(1),
      O => \count_value_i_reg[7]\(2)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => Q(4),
      I1 => \^count_value_i_reg[0]_0\(0),
      I2 => count_value_i(1),
      O => \count_value_i_reg[7]\(1)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => Q(3),
      I1 => \^count_value_i_reg[0]_0\(0),
      I2 => count_value_i(1),
      O => \count_value_i_reg[7]\(0)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => Q(2),
      I1 => \^count_value_i_reg[0]_0\(0),
      I2 => count_value_i(1),
      O => S(2)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => Q(1),
      I1 => \^count_value_i_reg[0]_0\(0),
      I2 => count_value_i(1),
      O => S(1)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Q(0),
      I1 => count_value_i(1),
      I2 => \^count_value_i_reg[0]_0\(0),
      O => S(0)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => Q(13),
      I1 => \^count_value_i_reg[0]_0\(0),
      I2 => count_value_i(1),
      O => \count_value_i_reg[14]\(2)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => Q(12),
      I1 => \^count_value_i_reg[0]_0\(0),
      I2 => count_value_i(1),
      O => \count_value_i_reg[14]\(1)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => Q(11),
      I1 => \^count_value_i_reg[0]_0\(0),
      I2 => count_value_i(1),
      O => \count_value_i_reg[14]\(0)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => Q(10),
      I1 => \^count_value_i_reg[0]_0\(0),
      I2 => count_value_i(1),
      O => \count_value_i_reg[11]\(3)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => Q(9),
      I1 => \^count_value_i_reg[0]_0\(0),
      I2 => count_value_i(1),
      O => \count_value_i_reg[11]\(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_usb_stream_0_0_xpm_counter_updn_4 is
  port (
    S : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \count_value_i_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_value_i_reg[11]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_value_i_reg[12]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \count_value_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \count_value_i_reg[1]_1\ : in STD_LOGIC;
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_usb_stream_0_0_xpm_counter_updn_4 : entity is "xpm_counter_updn";
end system_usb_stream_0_0_xpm_counter_updn_4;

architecture STRUCTURE of system_usb_stream_0_0_xpm_counter_updn_4 is
  signal count_value_i : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \count_value_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_2_n_0\ : STD_LOGIC;
  signal \^count_value_i_reg[0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  \count_value_i_reg[0]_0\(0) <= \^count_value_i_reg[0]_0\(0);
\count_value_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005A88A655"
    )
        port map (
      I0 => \^count_value_i_reg[0]_0\(0),
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => rd_en,
      I3 => \count_value_i_reg[1]_0\(1),
      I4 => ram_empty_i,
      I5 => \count_value_i_reg[1]_1\,
      O => \count_value_i[0]_i_1_n_0\
    );
\count_value_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AA88AAAA"
    )
        port map (
      I0 => \count_value_i[1]_i_2_n_0\,
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => rd_en,
      I3 => \count_value_i_reg[1]_0\(1),
      I4 => ram_empty_i,
      I5 => \count_value_i_reg[1]_1\,
      O => \count_value_i[1]_i_1_n_0\
    );
\count_value_i[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFF755500008AA"
    )
        port map (
      I0 => \^count_value_i_reg[0]_0\(0),
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => rd_en,
      I3 => \count_value_i_reg[1]_0\(1),
      I4 => ram_empty_i,
      I5 => count_value_i(1),
      O => \count_value_i[1]_i_2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \count_value_i[0]_i_1_n_0\,
      Q => \^count_value_i_reg[0]_0\(0),
      R => '0'
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \count_value_i[1]_i_1_n_0\,
      Q => count_value_i(1),
      R => '0'
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => Q(6),
      I1 => \^count_value_i_reg[0]_0\(0),
      I2 => count_value_i(1),
      O => \count_value_i_reg[7]\(3)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => Q(5),
      I1 => \^count_value_i_reg[0]_0\(0),
      I2 => count_value_i(1),
      O => \count_value_i_reg[7]\(2)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => Q(4),
      I1 => \^count_value_i_reg[0]_0\(0),
      I2 => count_value_i(1),
      O => \count_value_i_reg[7]\(1)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => Q(3),
      I1 => \^count_value_i_reg[0]_0\(0),
      I2 => count_value_i(1),
      O => \count_value_i_reg[7]\(0)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => Q(2),
      I1 => \^count_value_i_reg[0]_0\(0),
      I2 => count_value_i(1),
      O => S(2)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => Q(1),
      I1 => \^count_value_i_reg[0]_0\(0),
      I2 => count_value_i(1),
      O => S(1)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Q(0),
      I1 => count_value_i(1),
      I2 => \^count_value_i_reg[0]_0\(0),
      O => S(0)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => Q(11),
      I1 => \^count_value_i_reg[0]_0\(0),
      I2 => count_value_i(1),
      O => \count_value_i_reg[12]\(0)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => Q(10),
      I1 => \^count_value_i_reg[0]_0\(0),
      I2 => count_value_i(1),
      O => \count_value_i_reg[11]\(3)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => Q(9),
      I1 => \^count_value_i_reg[0]_0\(0),
      I2 => count_value_i(1),
      O => \count_value_i_reg[11]\(2)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => Q(8),
      I1 => \^count_value_i_reg[0]_0\(0),
      I2 => count_value_i(1),
      O => \count_value_i_reg[11]\(1)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => Q(7),
      I1 => \^count_value_i_reg[0]_0\(0),
      I2 => count_value_i(1),
      O => \count_value_i_reg[11]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_usb_stream_0_0_xpm_counter_updn__parameterized0\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 12 downto 0 );
    src_in_bin : out STD_LOGIC_VECTOR ( 12 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \src_gray_ff_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \src_gray_ff_reg[12]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \src_gray_ff_reg[12]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_i : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    \count_value_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[0]_1\ : in STD_LOGIC;
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_usb_stream_0_0_xpm_counter_updn__parameterized0\ : entity is "xpm_counter_updn";
end \system_usb_stream_0_0_xpm_counter_updn__parameterized0\;

architecture STRUCTURE of \system_usb_stream_0_0_xpm_counter_updn__parameterized0\ is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \count_value_i[3]_i_2__3_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__3_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__3_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__3_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__3_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__3_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__3_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__3_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__3_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__3_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__3_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__3_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__3_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__3_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__3_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__3_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__3_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__3_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__3_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__3_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__3_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__3_n_7\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_17_n_0\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_0\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_1\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_2\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_3\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_0\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_1\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_2\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_3\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4_n_0\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4_n_1\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4_n_2\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4_n_3\ : STD_LOGIC;
  signal \NLW_count_value_i_reg[12]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_value_i_reg[12]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_value_i_reg[11]_i_1__3\ : label is 35;
  attribute ADDER_THRESHOLD of \count_value_i_reg[12]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \count_value_i_reg[3]_i_1__3\ : label is 35;
  attribute ADDER_THRESHOLD of \count_value_i_reg[7]_i_1__3\ : label is 35;
  attribute ADDER_THRESHOLD of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4\ : label is 35;
begin
  E(0) <= \^e\(0);
  Q(12 downto 0) <= \^q\(12 downto 0);
\count_value_i[3]_i_2__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAA5455"
    )
        port map (
      I0 => ram_empty_i,
      I1 => rd_en,
      I2 => \count_value_i_reg[0]_0\(0),
      I3 => \count_value_i_reg[0]_0\(1),
      I4 => \^q\(0),
      O => \count_value_i[3]_i_2__3_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i_reg[3]_i_1__3_n_7\,
      Q => \^q\(0),
      R => \count_value_i_reg[0]_1\
    );
\count_value_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i_reg[11]_i_1__3_n_5\,
      Q => \^q\(10),
      R => \count_value_i_reg[0]_1\
    );
\count_value_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i_reg[11]_i_1__3_n_4\,
      Q => \^q\(11),
      R => \count_value_i_reg[0]_1\
    );
\count_value_i_reg[11]_i_1__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[7]_i_1__3_n_0\,
      CO(3) => \count_value_i_reg[11]_i_1__3_n_0\,
      CO(2) => \count_value_i_reg[11]_i_1__3_n_1\,
      CO(1) => \count_value_i_reg[11]_i_1__3_n_2\,
      CO(0) => \count_value_i_reg[11]_i_1__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_value_i_reg[11]_i_1__3_n_4\,
      O(2) => \count_value_i_reg[11]_i_1__3_n_5\,
      O(1) => \count_value_i_reg[11]_i_1__3_n_6\,
      O(0) => \count_value_i_reg[11]_i_1__3_n_7\,
      S(3 downto 0) => \^q\(11 downto 8)
    );
\count_value_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i_reg[12]_i_1__0_n_7\,
      Q => \^q\(12),
      R => \count_value_i_reg[0]_1\
    );
\count_value_i_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[11]_i_1__3_n_0\,
      CO(3 downto 0) => \NLW_count_value_i_reg[12]_i_1__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_count_value_i_reg[12]_i_1__0_O_UNCONNECTED\(3 downto 1),
      O(0) => \count_value_i_reg[12]_i_1__0_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \^q\(12)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i_reg[3]_i_1__3_n_6\,
      Q => \^q\(1),
      R => \count_value_i_reg[0]_1\
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i_reg[3]_i_1__3_n_5\,
      Q => \^q\(2),
      R => \count_value_i_reg[0]_1\
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i_reg[3]_i_1__3_n_4\,
      Q => \^q\(3),
      R => \count_value_i_reg[0]_1\
    );
\count_value_i_reg[3]_i_1__3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_value_i_reg[3]_i_1__3_n_0\,
      CO(2) => \count_value_i_reg[3]_i_1__3_n_1\,
      CO(1) => \count_value_i_reg[3]_i_1__3_n_2\,
      CO(0) => \count_value_i_reg[3]_i_1__3_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^q\(0),
      O(3) => \count_value_i_reg[3]_i_1__3_n_4\,
      O(2) => \count_value_i_reg[3]_i_1__3_n_5\,
      O(1) => \count_value_i_reg[3]_i_1__3_n_6\,
      O(0) => \count_value_i_reg[3]_i_1__3_n_7\,
      S(3 downto 1) => \^q\(3 downto 1),
      S(0) => \count_value_i[3]_i_2__3_n_0\
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i_reg[7]_i_1__3_n_7\,
      Q => \^q\(4),
      R => \count_value_i_reg[0]_1\
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i_reg[7]_i_1__3_n_6\,
      Q => \^q\(5),
      R => \count_value_i_reg[0]_1\
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i_reg[7]_i_1__3_n_5\,
      Q => \^q\(6),
      R => \count_value_i_reg[0]_1\
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i_reg[7]_i_1__3_n_4\,
      Q => \^q\(7),
      R => \count_value_i_reg[0]_1\
    );
\count_value_i_reg[7]_i_1__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[3]_i_1__3_n_0\,
      CO(3) => \count_value_i_reg[7]_i_1__3_n_0\,
      CO(2) => \count_value_i_reg[7]_i_1__3_n_1\,
      CO(1) => \count_value_i_reg[7]_i_1__3_n_2\,
      CO(0) => \count_value_i_reg[7]_i_1__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_value_i_reg[7]_i_1__3_n_4\,
      O(2) => \count_value_i_reg[7]_i_1__3_n_5\,
      O(1) => \count_value_i_reg[7]_i_1__3_n_6\,
      O(0) => \count_value_i_reg[7]_i_1__3_n_7\,
      S(3 downto 0) => \^q\(7 downto 4)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i_reg[11]_i_1__3_n_7\,
      Q => \^q\(8),
      R => \count_value_i_reg[0]_1\
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i_reg[11]_i_1__3_n_6\,
      Q => \^q\(9),
      R => \count_value_i_reg[0]_1\
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_0\,
      CO(3 downto 0) => \NLW_gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => src_in_bin(12),
      S(3 downto 1) => B"000",
      S(0) => \src_gray_ff_reg[12]_0\(0)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4_0\(0),
      O => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_17_n_0\
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_0\,
      CO(3) => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_0\,
      CO(2) => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_1\,
      CO(1) => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_2\,
      CO(0) => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(11 downto 8),
      O(3 downto 0) => src_in_bin(11 downto 8),
      S(3 downto 0) => \src_gray_ff_reg[12]\(3 downto 0)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4_n_0\,
      CO(3) => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_0\,
      CO(2) => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_1\,
      CO(1) => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_2\,
      CO(0) => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(7 downto 4),
      O(3 downto 0) => src_in_bin(7 downto 4),
      S(3 downto 0) => \src_gray_ff_reg[7]\(3 downto 0)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4_n_0\,
      CO(2) => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4_n_1\,
      CO(1) => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4_n_2\,
      CO(0) => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(3 downto 0),
      O(3 downto 0) => src_in_bin(3 downto 0),
      S(3 downto 1) => S(2 downto 0),
      S(0) => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_17_n_0\
    );
\gen_sdpram.xpm_memory_base_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FD"
    )
        port map (
      I0 => \count_value_i_reg[0]_0\(1),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => rd_en,
      I3 => ram_empty_i,
      O => \^e\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_usb_stream_0_0_xpm_counter_updn__parameterized0_6\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 12 downto 0 );
    \count_value_i_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    wrst_busy : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_usb_stream_0_0_xpm_counter_updn__parameterized0_6\ : entity is "xpm_counter_updn";
end \system_usb_stream_0_0_xpm_counter_updn__parameterized0_6\;

architecture STRUCTURE of \system_usb_stream_0_0_xpm_counter_updn__parameterized0_6\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \count_value_i_reg[11]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__1_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__1_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__1_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__1_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__1_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__1_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__1_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__1_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__1_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__1_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__1_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__1_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__1_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__1_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__1_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__1_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__1_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__1_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__1_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__1_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__1_n_7\ : STD_LOGIC;
  signal \NLW_count_value_i_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_value_i_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_value_i_reg[11]_i_1__1\ : label is 35;
  attribute ADDER_THRESHOLD of \count_value_i_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \count_value_i_reg[3]_i_1__1\ : label is 35;
  attribute ADDER_THRESHOLD of \count_value_i_reg[7]_i_1__1\ : label is 35;
begin
  Q(12 downto 0) <= \^q\(12 downto 0);
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1__1_n_7\,
      Q => \^q\(0),
      R => wrst_busy
    );
\count_value_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[11]_i_1__1_n_5\,
      Q => \^q\(10),
      R => wrst_busy
    );
\count_value_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[11]_i_1__1_n_4\,
      Q => \^q\(11),
      R => wrst_busy
    );
\count_value_i_reg[11]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[7]_i_1__1_n_0\,
      CO(3) => \count_value_i_reg[11]_i_1__1_n_0\,
      CO(2) => \count_value_i_reg[11]_i_1__1_n_1\,
      CO(1) => \count_value_i_reg[11]_i_1__1_n_2\,
      CO(0) => \count_value_i_reg[11]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_value_i_reg[11]_i_1__1_n_4\,
      O(2) => \count_value_i_reg[11]_i_1__1_n_5\,
      O(1) => \count_value_i_reg[11]_i_1__1_n_6\,
      O(0) => \count_value_i_reg[11]_i_1__1_n_7\,
      S(3 downto 0) => \^q\(11 downto 8)
    );
\count_value_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[12]_i_1_n_7\,
      Q => \^q\(12),
      R => wrst_busy
    );
\count_value_i_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[11]_i_1__1_n_0\,
      CO(3 downto 0) => \NLW_count_value_i_reg[12]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_count_value_i_reg[12]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \count_value_i_reg[12]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \^q\(12)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1__1_n_6\,
      Q => \^q\(1),
      R => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1__1_n_5\,
      Q => \^q\(2),
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1__1_n_4\,
      Q => \^q\(3),
      R => wrst_busy
    );
\count_value_i_reg[3]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_value_i_reg[3]_i_1__1_n_0\,
      CO(2) => \count_value_i_reg[3]_i_1__1_n_1\,
      CO(1) => \count_value_i_reg[3]_i_1__1_n_2\,
      CO(0) => \count_value_i_reg[3]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^q\(0),
      O(3) => \count_value_i_reg[3]_i_1__1_n_4\,
      O(2) => \count_value_i_reg[3]_i_1__1_n_5\,
      O(1) => \count_value_i_reg[3]_i_1__1_n_6\,
      O(0) => \count_value_i_reg[3]_i_1__1_n_7\,
      S(3 downto 1) => \^q\(3 downto 1),
      S(0) => \count_value_i_reg[3]_0\(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1__1_n_7\,
      Q => \^q\(4),
      R => wrst_busy
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1__1_n_6\,
      Q => \^q\(5),
      R => wrst_busy
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1__1_n_5\,
      Q => \^q\(6),
      R => wrst_busy
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1__1_n_4\,
      Q => \^q\(7),
      R => wrst_busy
    );
\count_value_i_reg[7]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[3]_i_1__1_n_0\,
      CO(3) => \count_value_i_reg[7]_i_1__1_n_0\,
      CO(2) => \count_value_i_reg[7]_i_1__1_n_1\,
      CO(1) => \count_value_i_reg[7]_i_1__1_n_2\,
      CO(0) => \count_value_i_reg[7]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_value_i_reg[7]_i_1__1_n_4\,
      O(2) => \count_value_i_reg[7]_i_1__1_n_5\,
      O(1) => \count_value_i_reg[7]_i_1__1_n_6\,
      O(0) => \count_value_i_reg[7]_i_1__1_n_7\,
      S(3 downto 0) => \^q\(7 downto 4)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[11]_i_1__1_n_7\,
      Q => \^q\(8),
      R => wrst_busy
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[11]_i_1__1_n_6\,
      Q => \^q\(9),
      R => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_usb_stream_0_0_xpm_counter_updn__parameterized1\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 11 downto 0 );
    ram_empty_i : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    \count_value_i_reg[3]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_value_i_reg[1]_0\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_usb_stream_0_0_xpm_counter_updn__parameterized1\ : entity is "xpm_counter_updn";
end \system_usb_stream_0_0_xpm_counter_updn__parameterized1\;

architecture STRUCTURE of \system_usb_stream_0_0_xpm_counter_updn__parameterized1\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \count_value_i[3]_i_2__2_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__2_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__2_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__2_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__2_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__2_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__2_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__2_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__2_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__2_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__2_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__2_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__2_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__2_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__2_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__2_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__2_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__2_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__2_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__2_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__2_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__2_n_7\ : STD_LOGIC;
  signal \NLW_count_value_i_reg[11]_i_1__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_value_i_reg[11]_i_1__2\ : label is 35;
  attribute ADDER_THRESHOLD of \count_value_i_reg[3]_i_1__2\ : label is 35;
  attribute ADDER_THRESHOLD of \count_value_i_reg[7]_i_1__2\ : label is 35;
begin
  Q(11 downto 0) <= \^q\(11 downto 0);
\count_value_i[3]_i_2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAA5455"
    )
        port map (
      I0 => ram_empty_i,
      I1 => rd_en,
      I2 => \count_value_i_reg[3]_0\(0),
      I3 => \count_value_i_reg[3]_0\(1),
      I4 => \^q\(0),
      O => \count_value_i[3]_i_2__2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1__2_n_7\,
      Q => \^q\(0),
      S => \count_value_i_reg[1]_0\
    );
\count_value_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i_reg[11]_i_1__2_n_5\,
      Q => \^q\(10),
      R => \count_value_i_reg[1]_0\
    );
\count_value_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i_reg[11]_i_1__2_n_4\,
      Q => \^q\(11),
      R => \count_value_i_reg[1]_0\
    );
\count_value_i_reg[11]_i_1__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[7]_i_1__2_n_0\,
      CO(3) => \NLW_count_value_i_reg[11]_i_1__2_CO_UNCONNECTED\(3),
      CO(2) => \count_value_i_reg[11]_i_1__2_n_1\,
      CO(1) => \count_value_i_reg[11]_i_1__2_n_2\,
      CO(0) => \count_value_i_reg[11]_i_1__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_value_i_reg[11]_i_1__2_n_4\,
      O(2) => \count_value_i_reg[11]_i_1__2_n_5\,
      O(1) => \count_value_i_reg[11]_i_1__2_n_6\,
      O(0) => \count_value_i_reg[11]_i_1__2_n_7\,
      S(3 downto 0) => \^q\(11 downto 8)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1__2_n_6\,
      Q => \^q\(1),
      R => \count_value_i_reg[1]_0\
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1__2_n_5\,
      Q => \^q\(2),
      R => \count_value_i_reg[1]_0\
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1__2_n_4\,
      Q => \^q\(3),
      R => \count_value_i_reg[1]_0\
    );
\count_value_i_reg[3]_i_1__2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_value_i_reg[3]_i_1__2_n_0\,
      CO(2) => \count_value_i_reg[3]_i_1__2_n_1\,
      CO(1) => \count_value_i_reg[3]_i_1__2_n_2\,
      CO(0) => \count_value_i_reg[3]_i_1__2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^q\(0),
      O(3) => \count_value_i_reg[3]_i_1__2_n_4\,
      O(2) => \count_value_i_reg[3]_i_1__2_n_5\,
      O(1) => \count_value_i_reg[3]_i_1__2_n_6\,
      O(0) => \count_value_i_reg[3]_i_1__2_n_7\,
      S(3 downto 1) => \^q\(3 downto 1),
      S(0) => \count_value_i[3]_i_2__2_n_0\
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1__2_n_7\,
      Q => \^q\(4),
      R => \count_value_i_reg[1]_0\
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1__2_n_6\,
      Q => \^q\(5),
      R => \count_value_i_reg[1]_0\
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1__2_n_5\,
      Q => \^q\(6),
      R => \count_value_i_reg[1]_0\
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1__2_n_4\,
      Q => \^q\(7),
      R => \count_value_i_reg[1]_0\
    );
\count_value_i_reg[7]_i_1__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[3]_i_1__2_n_0\,
      CO(3) => \count_value_i_reg[7]_i_1__2_n_0\,
      CO(2) => \count_value_i_reg[7]_i_1__2_n_1\,
      CO(1) => \count_value_i_reg[7]_i_1__2_n_2\,
      CO(0) => \count_value_i_reg[7]_i_1__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_value_i_reg[7]_i_1__2_n_4\,
      O(2) => \count_value_i_reg[7]_i_1__2_n_5\,
      O(1) => \count_value_i_reg[7]_i_1__2_n_6\,
      O(0) => \count_value_i_reg[7]_i_1__2_n_7\,
      S(3 downto 0) => \^q\(7 downto 4)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i_reg[11]_i_1__2_n_7\,
      Q => \^q\(8),
      R => \count_value_i_reg[1]_0\
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i_reg[11]_i_1__2_n_6\,
      Q => \^q\(9),
      R => \count_value_i_reg[1]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_usb_stream_0_0_xpm_counter_updn__parameterized1_7\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 11 downto 0 );
    D : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \count_value_i_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[12]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    wrst_busy : in STD_LOGIC;
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_usb_stream_0_0_xpm_counter_updn__parameterized1_7\ : entity is "xpm_counter_updn";
end \system_usb_stream_0_0_xpm_counter_updn__parameterized1_7\;

architecture STRUCTURE of \system_usb_stream_0_0_xpm_counter_updn__parameterized1_7\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \count_value_i_reg[11]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__0_n_7\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[12]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[12]_i_3_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[12]_i_4_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[12]_i_5_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_3_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_4_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_5_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_3_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_4_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_5_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \NLW_count_value_i_reg[11]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_value_i_reg[11]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \count_value_i_reg[3]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \count_value_i_reg[7]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1\ : label is 35;
begin
  Q(11 downto 0) <= \^q\(11 downto 0);
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1__0_n_7\,
      Q => \^q\(0),
      S => wrst_busy
    );
\count_value_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[11]_i_1__0_n_5\,
      Q => \^q\(10),
      R => wrst_busy
    );
\count_value_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[11]_i_1__0_n_4\,
      Q => \^q\(11),
      R => wrst_busy
    );
\count_value_i_reg[11]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[7]_i_1__0_n_0\,
      CO(3) => \NLW_count_value_i_reg[11]_i_1__0_CO_UNCONNECTED\(3),
      CO(2) => \count_value_i_reg[11]_i_1__0_n_1\,
      CO(1) => \count_value_i_reg[11]_i_1__0_n_2\,
      CO(0) => \count_value_i_reg[11]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_value_i_reg[11]_i_1__0_n_4\,
      O(2) => \count_value_i_reg[11]_i_1__0_n_5\,
      O(1) => \count_value_i_reg[11]_i_1__0_n_6\,
      O(0) => \count_value_i_reg[11]_i_1__0_n_7\,
      S(3 downto 0) => \^q\(11 downto 8)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1__0_n_6\,
      Q => \^q\(1),
      R => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1__0_n_5\,
      Q => \^q\(2),
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1__0_n_4\,
      Q => \^q\(3),
      R => wrst_busy
    );
\count_value_i_reg[3]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_value_i_reg[3]_i_1__0_n_0\,
      CO(2) => \count_value_i_reg[3]_i_1__0_n_1\,
      CO(1) => \count_value_i_reg[3]_i_1__0_n_2\,
      CO(0) => \count_value_i_reg[3]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^q\(0),
      O(3) => \count_value_i_reg[3]_i_1__0_n_4\,
      O(2) => \count_value_i_reg[3]_i_1__0_n_5\,
      O(1) => \count_value_i_reg[3]_i_1__0_n_6\,
      O(0) => \count_value_i_reg[3]_i_1__0_n_7\,
      S(3 downto 1) => \^q\(3 downto 1),
      S(0) => \count_value_i_reg[3]_0\(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1__0_n_7\,
      Q => \^q\(4),
      R => wrst_busy
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1__0_n_6\,
      Q => \^q\(5),
      R => wrst_busy
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1__0_n_5\,
      Q => \^q\(6),
      R => wrst_busy
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1__0_n_4\,
      Q => \^q\(7),
      R => wrst_busy
    );
\count_value_i_reg[7]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[3]_i_1__0_n_0\,
      CO(3) => \count_value_i_reg[7]_i_1__0_n_0\,
      CO(2) => \count_value_i_reg[7]_i_1__0_n_1\,
      CO(1) => \count_value_i_reg[7]_i_1__0_n_2\,
      CO(0) => \count_value_i_reg[7]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_value_i_reg[7]_i_1__0_n_4\,
      O(2) => \count_value_i_reg[7]_i_1__0_n_5\,
      O(1) => \count_value_i_reg[7]_i_1__0_n_6\,
      O(0) => \count_value_i_reg[7]_i_1__0_n_7\,
      S(3 downto 0) => \^q\(7 downto 4)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[11]_i_1__0_n_7\,
      Q => \^q\(8),
      R => wrst_busy
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[11]_i_1__0_n_6\,
      Q => \^q\(9),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(11),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[12]\(11),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[12]_i_2_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(10),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[12]\(10),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[12]_i_3_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(9),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[12]\(9),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[12]_i_4_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(8),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[12]\(8),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[12]_i_5_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[12]\(3),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[12]\(2),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_3_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[12]\(1),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_4_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[12]\(0),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_5_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(7),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[12]\(7),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_2_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[12]\(6),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_3_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[12]\(5),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_4_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[12]\(4),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_5_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_0\,
      CO(3) => \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[12]_i_1_n_1\,
      CO(1) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[12]_i_1_n_2\,
      CO(0) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \^q\(10 downto 8),
      O(3 downto 0) => D(10 downto 7),
      S(3) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[12]_i_2_n_0\,
      S(2) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[12]_i_3_n_0\,
      S(1) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[12]_i_4_n_0\,
      S(0) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[12]_i_5_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_0\,
      CO(2) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_1\,
      CO(1) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_2\,
      CO(0) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_3\,
      CYINIT => E(0),
      DI(3 downto 0) => \^q\(3 downto 0),
      O(3 downto 1) => D(2 downto 0),
      O(0) => \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_O_UNCONNECTED\(0),
      S(3) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0\,
      S(2) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_3_n_0\,
      S(1) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_4_n_0\,
      S(0) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_5_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_0\,
      CO(3) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_0\,
      CO(2) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_1\,
      CO(1) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_2\,
      CO(0) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(7 downto 4),
      O(3 downto 0) => D(6 downto 3),
      S(3) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_2_n_0\,
      S(2) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_3_n_0\,
      S(1) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_4_n_0\,
      S(0) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_5_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_usb_stream_0_0_xpm_counter_updn__parameterized2\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    wrst_busy : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_usb_stream_0_0_xpm_counter_updn__parameterized2\ : entity is "xpm_counter_updn";
end \system_usb_stream_0_0_xpm_counter_updn__parameterized2\;

architecture STRUCTURE of \system_usb_stream_0_0_xpm_counter_updn__parameterized2\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \count_value_i_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_count_value_i_reg[11]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_value_i_reg[11]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \count_value_i_reg[3]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \count_value_i_reg[7]_i_1\ : label is 35;
begin
  Q(11 downto 0) <= \^q\(11 downto 0);
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1_n_7\,
      Q => \^q\(0),
      R => wrst_busy
    );
\count_value_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[11]_i_1_n_5\,
      Q => \^q\(10),
      R => wrst_busy
    );
\count_value_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[11]_i_1_n_4\,
      Q => \^q\(11),
      R => wrst_busy
    );
\count_value_i_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[7]_i_1_n_0\,
      CO(3) => \NLW_count_value_i_reg[11]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \count_value_i_reg[11]_i_1_n_1\,
      CO(1) => \count_value_i_reg[11]_i_1_n_2\,
      CO(0) => \count_value_i_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_value_i_reg[11]_i_1_n_4\,
      O(2) => \count_value_i_reg[11]_i_1_n_5\,
      O(1) => \count_value_i_reg[11]_i_1_n_6\,
      O(0) => \count_value_i_reg[11]_i_1_n_7\,
      S(3 downto 0) => \^q\(11 downto 8)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1_n_6\,
      Q => \^q\(1),
      S => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1_n_5\,
      Q => \^q\(2),
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1_n_4\,
      Q => \^q\(3),
      R => wrst_busy
    );
\count_value_i_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_value_i_reg[3]_i_1_n_0\,
      CO(2) => \count_value_i_reg[3]_i_1_n_1\,
      CO(1) => \count_value_i_reg[3]_i_1_n_2\,
      CO(0) => \count_value_i_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^q\(0),
      O(3) => \count_value_i_reg[3]_i_1_n_4\,
      O(2) => \count_value_i_reg[3]_i_1_n_5\,
      O(1) => \count_value_i_reg[3]_i_1_n_6\,
      O(0) => \count_value_i_reg[3]_i_1_n_7\,
      S(3 downto 1) => \^q\(3 downto 1),
      S(0) => S(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1_n_7\,
      Q => \^q\(4),
      R => wrst_busy
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1_n_6\,
      Q => \^q\(5),
      R => wrst_busy
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1_n_5\,
      Q => \^q\(6),
      R => wrst_busy
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1_n_4\,
      Q => \^q\(7),
      R => wrst_busy
    );
\count_value_i_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[3]_i_1_n_0\,
      CO(3) => \count_value_i_reg[7]_i_1_n_0\,
      CO(2) => \count_value_i_reg[7]_i_1_n_1\,
      CO(1) => \count_value_i_reg[7]_i_1_n_2\,
      CO(0) => \count_value_i_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_value_i_reg[7]_i_1_n_4\,
      O(2) => \count_value_i_reg[7]_i_1_n_5\,
      O(1) => \count_value_i_reg[7]_i_1_n_6\,
      O(0) => \count_value_i_reg[7]_i_1_n_7\,
      S(3 downto 0) => \^q\(7 downto 4)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[11]_i_1_n_7\,
      Q => \^q\(8),
      R => wrst_busy
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[11]_i_1_n_6\,
      Q => \^q\(9),
      R => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_usb_stream_0_0_xpm_counter_updn__parameterized3\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 14 downto 0 );
    src_in_bin : out STD_LOGIC_VECTOR ( 14 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \src_gray_ff_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \src_gray_ff_reg[14]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \src_gray_ff_reg[14]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ram_empty_i : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    \count_value_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[0]_1\ : in STD_LOGIC;
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_usb_stream_0_0_xpm_counter_updn__parameterized3\ : entity is "xpm_counter_updn";
end \system_usb_stream_0_0_xpm_counter_updn__parameterized3\;

architecture STRUCTURE of \system_usb_stream_0_0_xpm_counter_updn__parameterized3\ is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \count_value_i[3]_i_2__3_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__3_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__3_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__3_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__3_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__3_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__3_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__3_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[14]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[14]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[14]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[14]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[14]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__3_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__3_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__3_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__3_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__3_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__3_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__3_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__3_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__3_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__3_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__3_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__3_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__3_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__3_n_7\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_19_n_0\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1_n_2\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1_n_3\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_0\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_1\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_2\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_3\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_0\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_1\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_2\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_3\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4_n_0\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4_n_1\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4_n_2\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4_n_3\ : STD_LOGIC;
  signal \NLW_count_value_i_reg[14]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_count_value_i_reg[14]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_value_i_reg[11]_i_1__3\ : label is 35;
  attribute ADDER_THRESHOLD of \count_value_i_reg[14]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \count_value_i_reg[3]_i_1__3\ : label is 35;
  attribute ADDER_THRESHOLD of \count_value_i_reg[7]_i_1__3\ : label is 35;
  attribute ADDER_THRESHOLD of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4\ : label is 35;
begin
  E(0) <= \^e\(0);
  Q(14 downto 0) <= \^q\(14 downto 0);
\count_value_i[3]_i_2__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAA5455"
    )
        port map (
      I0 => ram_empty_i,
      I1 => rd_en,
      I2 => \count_value_i_reg[0]_0\(0),
      I3 => \count_value_i_reg[0]_0\(1),
      I4 => \^q\(0),
      O => \count_value_i[3]_i_2__3_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i_reg[3]_i_1__3_n_7\,
      Q => \^q\(0),
      R => \count_value_i_reg[0]_1\
    );
\count_value_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i_reg[11]_i_1__3_n_5\,
      Q => \^q\(10),
      R => \count_value_i_reg[0]_1\
    );
\count_value_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i_reg[11]_i_1__3_n_4\,
      Q => \^q\(11),
      R => \count_value_i_reg[0]_1\
    );
\count_value_i_reg[11]_i_1__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[7]_i_1__3_n_0\,
      CO(3) => \count_value_i_reg[11]_i_1__3_n_0\,
      CO(2) => \count_value_i_reg[11]_i_1__3_n_1\,
      CO(1) => \count_value_i_reg[11]_i_1__3_n_2\,
      CO(0) => \count_value_i_reg[11]_i_1__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_value_i_reg[11]_i_1__3_n_4\,
      O(2) => \count_value_i_reg[11]_i_1__3_n_5\,
      O(1) => \count_value_i_reg[11]_i_1__3_n_6\,
      O(0) => \count_value_i_reg[11]_i_1__3_n_7\,
      S(3 downto 0) => \^q\(11 downto 8)
    );
\count_value_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i_reg[14]_i_1__0_n_7\,
      Q => \^q\(12),
      R => \count_value_i_reg[0]_1\
    );
\count_value_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i_reg[14]_i_1__0_n_6\,
      Q => \^q\(13),
      R => \count_value_i_reg[0]_1\
    );
\count_value_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i_reg[14]_i_1__0_n_5\,
      Q => \^q\(14),
      R => \count_value_i_reg[0]_1\
    );
\count_value_i_reg[14]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[11]_i_1__3_n_0\,
      CO(3 downto 2) => \NLW_count_value_i_reg[14]_i_1__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \count_value_i_reg[14]_i_1__0_n_2\,
      CO(0) => \count_value_i_reg[14]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_count_value_i_reg[14]_i_1__0_O_UNCONNECTED\(3),
      O(2) => \count_value_i_reg[14]_i_1__0_n_5\,
      O(1) => \count_value_i_reg[14]_i_1__0_n_6\,
      O(0) => \count_value_i_reg[14]_i_1__0_n_7\,
      S(3) => '0',
      S(2 downto 0) => \^q\(14 downto 12)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i_reg[3]_i_1__3_n_6\,
      Q => \^q\(1),
      R => \count_value_i_reg[0]_1\
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i_reg[3]_i_1__3_n_5\,
      Q => \^q\(2),
      R => \count_value_i_reg[0]_1\
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i_reg[3]_i_1__3_n_4\,
      Q => \^q\(3),
      R => \count_value_i_reg[0]_1\
    );
\count_value_i_reg[3]_i_1__3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_value_i_reg[3]_i_1__3_n_0\,
      CO(2) => \count_value_i_reg[3]_i_1__3_n_1\,
      CO(1) => \count_value_i_reg[3]_i_1__3_n_2\,
      CO(0) => \count_value_i_reg[3]_i_1__3_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^q\(0),
      O(3) => \count_value_i_reg[3]_i_1__3_n_4\,
      O(2) => \count_value_i_reg[3]_i_1__3_n_5\,
      O(1) => \count_value_i_reg[3]_i_1__3_n_6\,
      O(0) => \count_value_i_reg[3]_i_1__3_n_7\,
      S(3 downto 1) => \^q\(3 downto 1),
      S(0) => \count_value_i[3]_i_2__3_n_0\
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i_reg[7]_i_1__3_n_7\,
      Q => \^q\(4),
      R => \count_value_i_reg[0]_1\
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i_reg[7]_i_1__3_n_6\,
      Q => \^q\(5),
      R => \count_value_i_reg[0]_1\
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i_reg[7]_i_1__3_n_5\,
      Q => \^q\(6),
      R => \count_value_i_reg[0]_1\
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i_reg[7]_i_1__3_n_4\,
      Q => \^q\(7),
      R => \count_value_i_reg[0]_1\
    );
\count_value_i_reg[7]_i_1__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[3]_i_1__3_n_0\,
      CO(3) => \count_value_i_reg[7]_i_1__3_n_0\,
      CO(2) => \count_value_i_reg[7]_i_1__3_n_1\,
      CO(1) => \count_value_i_reg[7]_i_1__3_n_2\,
      CO(0) => \count_value_i_reg[7]_i_1__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_value_i_reg[7]_i_1__3_n_4\,
      O(2) => \count_value_i_reg[7]_i_1__3_n_5\,
      O(1) => \count_value_i_reg[7]_i_1__3_n_6\,
      O(0) => \count_value_i_reg[7]_i_1__3_n_7\,
      S(3 downto 0) => \^q\(7 downto 4)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i_reg[11]_i_1__3_n_7\,
      Q => \^q\(8),
      R => \count_value_i_reg[0]_1\
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i_reg[11]_i_1__3_n_6\,
      Q => \^q\(9),
      R => \count_value_i_reg[0]_1\
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_0\,
      CO(3 downto 2) => \NLW_gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1_n_2\,
      CO(0) => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \^q\(13 downto 12),
      O(3) => \NLW_gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1_O_UNCONNECTED\(3),
      O(2 downto 0) => src_in_bin(14 downto 12),
      S(3) => '0',
      S(2 downto 0) => \src_gray_ff_reg[14]_0\(2 downto 0)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4_0\(0),
      O => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_19_n_0\
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_0\,
      CO(3) => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_0\,
      CO(2) => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_1\,
      CO(1) => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_2\,
      CO(0) => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(11 downto 8),
      O(3 downto 0) => src_in_bin(11 downto 8),
      S(3 downto 0) => \src_gray_ff_reg[14]\(3 downto 0)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4_n_0\,
      CO(3) => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_0\,
      CO(2) => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_1\,
      CO(1) => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_2\,
      CO(0) => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(7 downto 4),
      O(3 downto 0) => src_in_bin(7 downto 4),
      S(3 downto 0) => \src_gray_ff_reg[7]\(3 downto 0)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4_n_0\,
      CO(2) => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4_n_1\,
      CO(1) => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4_n_2\,
      CO(0) => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(3 downto 0),
      O(3 downto 0) => src_in_bin(3 downto 0),
      S(3 downto 1) => S(2 downto 0),
      S(0) => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_19_n_0\
    );
\gen_sdpram.xpm_memory_base_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FD"
    )
        port map (
      I0 => \count_value_i_reg[0]_0\(1),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => rd_en,
      I3 => ram_empty_i,
      O => \^e\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_usb_stream_0_0_xpm_counter_updn__parameterized3_1\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 14 downto 0 );
    \count_value_i_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    wrst_busy : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_usb_stream_0_0_xpm_counter_updn__parameterized3_1\ : entity is "xpm_counter_updn";
end \system_usb_stream_0_0_xpm_counter_updn__parameterized3_1\;

architecture STRUCTURE of \system_usb_stream_0_0_xpm_counter_updn__parameterized3_1\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \count_value_i_reg[11]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__1_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__1_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__1_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__1_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__1_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__1_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__1_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[14]_i_1_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[14]_i_1_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[14]_i_1_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[14]_i_1_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[14]_i_1_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__1_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__1_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__1_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__1_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__1_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__1_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__1_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__1_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__1_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__1_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__1_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__1_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__1_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__1_n_7\ : STD_LOGIC;
  signal \NLW_count_value_i_reg[14]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_count_value_i_reg[14]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_value_i_reg[11]_i_1__1\ : label is 35;
  attribute ADDER_THRESHOLD of \count_value_i_reg[14]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \count_value_i_reg[3]_i_1__1\ : label is 35;
  attribute ADDER_THRESHOLD of \count_value_i_reg[7]_i_1__1\ : label is 35;
begin
  Q(14 downto 0) <= \^q\(14 downto 0);
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1__1_n_7\,
      Q => \^q\(0),
      R => wrst_busy
    );
\count_value_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[11]_i_1__1_n_5\,
      Q => \^q\(10),
      R => wrst_busy
    );
\count_value_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[11]_i_1__1_n_4\,
      Q => \^q\(11),
      R => wrst_busy
    );
\count_value_i_reg[11]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[7]_i_1__1_n_0\,
      CO(3) => \count_value_i_reg[11]_i_1__1_n_0\,
      CO(2) => \count_value_i_reg[11]_i_1__1_n_1\,
      CO(1) => \count_value_i_reg[11]_i_1__1_n_2\,
      CO(0) => \count_value_i_reg[11]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_value_i_reg[11]_i_1__1_n_4\,
      O(2) => \count_value_i_reg[11]_i_1__1_n_5\,
      O(1) => \count_value_i_reg[11]_i_1__1_n_6\,
      O(0) => \count_value_i_reg[11]_i_1__1_n_7\,
      S(3 downto 0) => \^q\(11 downto 8)
    );
\count_value_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[14]_i_1_n_7\,
      Q => \^q\(12),
      R => wrst_busy
    );
\count_value_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[14]_i_1_n_6\,
      Q => \^q\(13),
      R => wrst_busy
    );
\count_value_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[14]_i_1_n_5\,
      Q => \^q\(14),
      R => wrst_busy
    );
\count_value_i_reg[14]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[11]_i_1__1_n_0\,
      CO(3 downto 2) => \NLW_count_value_i_reg[14]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \count_value_i_reg[14]_i_1_n_2\,
      CO(0) => \count_value_i_reg[14]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_count_value_i_reg[14]_i_1_O_UNCONNECTED\(3),
      O(2) => \count_value_i_reg[14]_i_1_n_5\,
      O(1) => \count_value_i_reg[14]_i_1_n_6\,
      O(0) => \count_value_i_reg[14]_i_1_n_7\,
      S(3) => '0',
      S(2 downto 0) => \^q\(14 downto 12)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1__1_n_6\,
      Q => \^q\(1),
      R => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1__1_n_5\,
      Q => \^q\(2),
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1__1_n_4\,
      Q => \^q\(3),
      R => wrst_busy
    );
\count_value_i_reg[3]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_value_i_reg[3]_i_1__1_n_0\,
      CO(2) => \count_value_i_reg[3]_i_1__1_n_1\,
      CO(1) => \count_value_i_reg[3]_i_1__1_n_2\,
      CO(0) => \count_value_i_reg[3]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^q\(0),
      O(3) => \count_value_i_reg[3]_i_1__1_n_4\,
      O(2) => \count_value_i_reg[3]_i_1__1_n_5\,
      O(1) => \count_value_i_reg[3]_i_1__1_n_6\,
      O(0) => \count_value_i_reg[3]_i_1__1_n_7\,
      S(3 downto 1) => \^q\(3 downto 1),
      S(0) => \count_value_i_reg[3]_0\(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1__1_n_7\,
      Q => \^q\(4),
      R => wrst_busy
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1__1_n_6\,
      Q => \^q\(5),
      R => wrst_busy
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1__1_n_5\,
      Q => \^q\(6),
      R => wrst_busy
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1__1_n_4\,
      Q => \^q\(7),
      R => wrst_busy
    );
\count_value_i_reg[7]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[3]_i_1__1_n_0\,
      CO(3) => \count_value_i_reg[7]_i_1__1_n_0\,
      CO(2) => \count_value_i_reg[7]_i_1__1_n_1\,
      CO(1) => \count_value_i_reg[7]_i_1__1_n_2\,
      CO(0) => \count_value_i_reg[7]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_value_i_reg[7]_i_1__1_n_4\,
      O(2) => \count_value_i_reg[7]_i_1__1_n_5\,
      O(1) => \count_value_i_reg[7]_i_1__1_n_6\,
      O(0) => \count_value_i_reg[7]_i_1__1_n_7\,
      S(3 downto 0) => \^q\(7 downto 4)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[11]_i_1__1_n_7\,
      Q => \^q\(8),
      R => wrst_busy
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[11]_i_1__1_n_6\,
      Q => \^q\(9),
      R => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_usb_stream_0_0_xpm_counter_updn__parameterized4\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 13 downto 0 );
    ram_empty_i : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    \count_value_i_reg[3]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_value_i_reg[1]_0\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_usb_stream_0_0_xpm_counter_updn__parameterized4\ : entity is "xpm_counter_updn";
end \system_usb_stream_0_0_xpm_counter_updn__parameterized4\;

architecture STRUCTURE of \system_usb_stream_0_0_xpm_counter_updn__parameterized4\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \count_value_i[3]_i_2__2_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__2_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__2_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__2_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__2_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__2_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__2_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__2_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[13]_i_1__1_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[13]_i_1__1_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[13]_i_1__1_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__2_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__2_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__2_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__2_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__2_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__2_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__2_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__2_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__2_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__2_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__2_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__2_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__2_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__2_n_7\ : STD_LOGIC;
  signal \NLW_count_value_i_reg[13]_i_1__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_count_value_i_reg[13]_i_1__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_value_i_reg[11]_i_1__2\ : label is 35;
  attribute ADDER_THRESHOLD of \count_value_i_reg[13]_i_1__1\ : label is 35;
  attribute ADDER_THRESHOLD of \count_value_i_reg[3]_i_1__2\ : label is 35;
  attribute ADDER_THRESHOLD of \count_value_i_reg[7]_i_1__2\ : label is 35;
begin
  Q(13 downto 0) <= \^q\(13 downto 0);
\count_value_i[3]_i_2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAA5455"
    )
        port map (
      I0 => ram_empty_i,
      I1 => rd_en,
      I2 => \count_value_i_reg[3]_0\(0),
      I3 => \count_value_i_reg[3]_0\(1),
      I4 => \^q\(0),
      O => \count_value_i[3]_i_2__2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1__2_n_7\,
      Q => \^q\(0),
      S => \count_value_i_reg[1]_0\
    );
\count_value_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i_reg[11]_i_1__2_n_5\,
      Q => \^q\(10),
      R => \count_value_i_reg[1]_0\
    );
\count_value_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i_reg[11]_i_1__2_n_4\,
      Q => \^q\(11),
      R => \count_value_i_reg[1]_0\
    );
\count_value_i_reg[11]_i_1__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[7]_i_1__2_n_0\,
      CO(3) => \count_value_i_reg[11]_i_1__2_n_0\,
      CO(2) => \count_value_i_reg[11]_i_1__2_n_1\,
      CO(1) => \count_value_i_reg[11]_i_1__2_n_2\,
      CO(0) => \count_value_i_reg[11]_i_1__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_value_i_reg[11]_i_1__2_n_4\,
      O(2) => \count_value_i_reg[11]_i_1__2_n_5\,
      O(1) => \count_value_i_reg[11]_i_1__2_n_6\,
      O(0) => \count_value_i_reg[11]_i_1__2_n_7\,
      S(3 downto 0) => \^q\(11 downto 8)
    );
\count_value_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i_reg[13]_i_1__1_n_7\,
      Q => \^q\(12),
      R => \count_value_i_reg[1]_0\
    );
\count_value_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i_reg[13]_i_1__1_n_6\,
      Q => \^q\(13),
      R => \count_value_i_reg[1]_0\
    );
\count_value_i_reg[13]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[11]_i_1__2_n_0\,
      CO(3 downto 1) => \NLW_count_value_i_reg[13]_i_1__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \count_value_i_reg[13]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_count_value_i_reg[13]_i_1__1_O_UNCONNECTED\(3 downto 2),
      O(1) => \count_value_i_reg[13]_i_1__1_n_6\,
      O(0) => \count_value_i_reg[13]_i_1__1_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => \^q\(13 downto 12)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1__2_n_6\,
      Q => \^q\(1),
      R => \count_value_i_reg[1]_0\
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1__2_n_5\,
      Q => \^q\(2),
      R => \count_value_i_reg[1]_0\
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1__2_n_4\,
      Q => \^q\(3),
      R => \count_value_i_reg[1]_0\
    );
\count_value_i_reg[3]_i_1__2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_value_i_reg[3]_i_1__2_n_0\,
      CO(2) => \count_value_i_reg[3]_i_1__2_n_1\,
      CO(1) => \count_value_i_reg[3]_i_1__2_n_2\,
      CO(0) => \count_value_i_reg[3]_i_1__2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^q\(0),
      O(3) => \count_value_i_reg[3]_i_1__2_n_4\,
      O(2) => \count_value_i_reg[3]_i_1__2_n_5\,
      O(1) => \count_value_i_reg[3]_i_1__2_n_6\,
      O(0) => \count_value_i_reg[3]_i_1__2_n_7\,
      S(3 downto 1) => \^q\(3 downto 1),
      S(0) => \count_value_i[3]_i_2__2_n_0\
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1__2_n_7\,
      Q => \^q\(4),
      R => \count_value_i_reg[1]_0\
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1__2_n_6\,
      Q => \^q\(5),
      R => \count_value_i_reg[1]_0\
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1__2_n_5\,
      Q => \^q\(6),
      R => \count_value_i_reg[1]_0\
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1__2_n_4\,
      Q => \^q\(7),
      R => \count_value_i_reg[1]_0\
    );
\count_value_i_reg[7]_i_1__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[3]_i_1__2_n_0\,
      CO(3) => \count_value_i_reg[7]_i_1__2_n_0\,
      CO(2) => \count_value_i_reg[7]_i_1__2_n_1\,
      CO(1) => \count_value_i_reg[7]_i_1__2_n_2\,
      CO(0) => \count_value_i_reg[7]_i_1__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_value_i_reg[7]_i_1__2_n_4\,
      O(2) => \count_value_i_reg[7]_i_1__2_n_5\,
      O(1) => \count_value_i_reg[7]_i_1__2_n_6\,
      O(0) => \count_value_i_reg[7]_i_1__2_n_7\,
      S(3 downto 0) => \^q\(7 downto 4)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i_reg[11]_i_1__2_n_7\,
      Q => \^q\(8),
      R => \count_value_i_reg[1]_0\
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i_reg[11]_i_1__2_n_6\,
      Q => \^q\(9),
      R => \count_value_i_reg[1]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_usb_stream_0_0_xpm_counter_updn__parameterized4_2\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 13 downto 0 );
    D : out STD_LOGIC_VECTOR ( 12 downto 0 );
    \count_value_i_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[14]\ : in STD_LOGIC_VECTOR ( 13 downto 0 );
    wrst_busy : in STD_LOGIC;
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_usb_stream_0_0_xpm_counter_updn__parameterized4_2\ : entity is "xpm_counter_updn";
end \system_usb_stream_0_0_xpm_counter_updn__parameterized4_2\;

architecture STRUCTURE of \system_usb_stream_0_0_xpm_counter_updn__parameterized4_2\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \count_value_i_reg[11]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[13]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[13]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[13]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__0_n_7\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[12]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[12]_i_3_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[12]_i_4_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[12]_i_5_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[14]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[14]_i_3_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_3_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_4_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_5_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_3_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_4_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_5_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[14]_i_1_n_3\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \NLW_count_value_i_reg[13]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_count_value_i_reg[13]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[14]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[14]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_value_i_reg[11]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \count_value_i_reg[13]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \count_value_i_reg[3]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \count_value_i_reg[7]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[14]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1\ : label is 35;
begin
  Q(13 downto 0) <= \^q\(13 downto 0);
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1__0_n_7\,
      Q => \^q\(0),
      S => wrst_busy
    );
\count_value_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[11]_i_1__0_n_5\,
      Q => \^q\(10),
      R => wrst_busy
    );
\count_value_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[11]_i_1__0_n_4\,
      Q => \^q\(11),
      R => wrst_busy
    );
\count_value_i_reg[11]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[7]_i_1__0_n_0\,
      CO(3) => \count_value_i_reg[11]_i_1__0_n_0\,
      CO(2) => \count_value_i_reg[11]_i_1__0_n_1\,
      CO(1) => \count_value_i_reg[11]_i_1__0_n_2\,
      CO(0) => \count_value_i_reg[11]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_value_i_reg[11]_i_1__0_n_4\,
      O(2) => \count_value_i_reg[11]_i_1__0_n_5\,
      O(1) => \count_value_i_reg[11]_i_1__0_n_6\,
      O(0) => \count_value_i_reg[11]_i_1__0_n_7\,
      S(3 downto 0) => \^q\(11 downto 8)
    );
\count_value_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[13]_i_1__0_n_7\,
      Q => \^q\(12),
      R => wrst_busy
    );
\count_value_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[13]_i_1__0_n_6\,
      Q => \^q\(13),
      R => wrst_busy
    );
\count_value_i_reg[13]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[11]_i_1__0_n_0\,
      CO(3 downto 1) => \NLW_count_value_i_reg[13]_i_1__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \count_value_i_reg[13]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_count_value_i_reg[13]_i_1__0_O_UNCONNECTED\(3 downto 2),
      O(1) => \count_value_i_reg[13]_i_1__0_n_6\,
      O(0) => \count_value_i_reg[13]_i_1__0_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => \^q\(13 downto 12)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1__0_n_6\,
      Q => \^q\(1),
      R => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1__0_n_5\,
      Q => \^q\(2),
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1__0_n_4\,
      Q => \^q\(3),
      R => wrst_busy
    );
\count_value_i_reg[3]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_value_i_reg[3]_i_1__0_n_0\,
      CO(2) => \count_value_i_reg[3]_i_1__0_n_1\,
      CO(1) => \count_value_i_reg[3]_i_1__0_n_2\,
      CO(0) => \count_value_i_reg[3]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^q\(0),
      O(3) => \count_value_i_reg[3]_i_1__0_n_4\,
      O(2) => \count_value_i_reg[3]_i_1__0_n_5\,
      O(1) => \count_value_i_reg[3]_i_1__0_n_6\,
      O(0) => \count_value_i_reg[3]_i_1__0_n_7\,
      S(3 downto 1) => \^q\(3 downto 1),
      S(0) => \count_value_i_reg[3]_0\(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1__0_n_7\,
      Q => \^q\(4),
      R => wrst_busy
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1__0_n_6\,
      Q => \^q\(5),
      R => wrst_busy
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1__0_n_5\,
      Q => \^q\(6),
      R => wrst_busy
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1__0_n_4\,
      Q => \^q\(7),
      R => wrst_busy
    );
\count_value_i_reg[7]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[3]_i_1__0_n_0\,
      CO(3) => \count_value_i_reg[7]_i_1__0_n_0\,
      CO(2) => \count_value_i_reg[7]_i_1__0_n_1\,
      CO(1) => \count_value_i_reg[7]_i_1__0_n_2\,
      CO(0) => \count_value_i_reg[7]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_value_i_reg[7]_i_1__0_n_4\,
      O(2) => \count_value_i_reg[7]_i_1__0_n_5\,
      O(1) => \count_value_i_reg[7]_i_1__0_n_6\,
      O(0) => \count_value_i_reg[7]_i_1__0_n_7\,
      S(3 downto 0) => \^q\(7 downto 4)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[11]_i_1__0_n_7\,
      Q => \^q\(8),
      R => wrst_busy
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[11]_i_1__0_n_6\,
      Q => \^q\(9),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(11),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[14]\(11),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[12]_i_2_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(10),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[14]\(10),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[12]_i_3_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(9),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[14]\(9),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[12]_i_4_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(8),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[14]\(8),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[12]_i_5_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[14]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(13),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[14]\(13),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[14]_i_2_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[14]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(12),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[14]\(12),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[14]_i_3_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[14]\(3),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[14]\(2),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_3_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[14]\(1),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_4_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[14]\(0),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_5_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(7),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[14]\(7),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_2_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[14]\(6),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_3_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[14]\(5),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_4_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[14]\(4),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_5_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_0\,
      CO(3) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[12]_i_1_n_0\,
      CO(2) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[12]_i_1_n_1\,
      CO(1) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[12]_i_1_n_2\,
      CO(0) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(11 downto 8),
      O(3 downto 0) => D(10 downto 7),
      S(3) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[12]_i_2_n_0\,
      S(2) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[12]_i_3_n_0\,
      S(1) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[12]_i_4_n_0\,
      S(0) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[12]_i_5_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[14]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[12]_i_1_n_0\,
      CO(3 downto 1) => \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[14]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[14]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^q\(12),
      O(3 downto 2) => \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[14]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => D(12 downto 11),
      S(3 downto 2) => B"00",
      S(1) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[14]_i_2_n_0\,
      S(0) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[14]_i_3_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_0\,
      CO(2) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_1\,
      CO(1) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_2\,
      CO(0) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_3\,
      CYINIT => E(0),
      DI(3 downto 0) => \^q\(3 downto 0),
      O(3 downto 1) => D(2 downto 0),
      O(0) => \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_O_UNCONNECTED\(0),
      S(3) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0\,
      S(2) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_3_n_0\,
      S(1) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_4_n_0\,
      S(0) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_5_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_0\,
      CO(3) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_0\,
      CO(2) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_1\,
      CO(1) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_2\,
      CO(0) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(7 downto 4),
      O(3 downto 0) => D(6 downto 3),
      S(3) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_2_n_0\,
      S(2) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_3_n_0\,
      S(1) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_4_n_0\,
      S(0) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_5_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_usb_stream_0_0_xpm_counter_updn__parameterized5\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 13 downto 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    wrst_busy : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_usb_stream_0_0_xpm_counter_updn__parameterized5\ : entity is "xpm_counter_updn";
end \system_usb_stream_0_0_xpm_counter_updn__parameterized5\;

architecture STRUCTURE of \system_usb_stream_0_0_xpm_counter_updn__parameterized5\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \count_value_i_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[13]_i_1_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[13]_i_1_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[13]_i_1_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_count_value_i_reg[13]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_count_value_i_reg[13]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_value_i_reg[11]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \count_value_i_reg[13]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \count_value_i_reg[3]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \count_value_i_reg[7]_i_1\ : label is 35;
begin
  Q(13 downto 0) <= \^q\(13 downto 0);
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1_n_7\,
      Q => \^q\(0),
      R => wrst_busy
    );
\count_value_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[11]_i_1_n_5\,
      Q => \^q\(10),
      R => wrst_busy
    );
\count_value_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[11]_i_1_n_4\,
      Q => \^q\(11),
      R => wrst_busy
    );
\count_value_i_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[7]_i_1_n_0\,
      CO(3) => \count_value_i_reg[11]_i_1_n_0\,
      CO(2) => \count_value_i_reg[11]_i_1_n_1\,
      CO(1) => \count_value_i_reg[11]_i_1_n_2\,
      CO(0) => \count_value_i_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_value_i_reg[11]_i_1_n_4\,
      O(2) => \count_value_i_reg[11]_i_1_n_5\,
      O(1) => \count_value_i_reg[11]_i_1_n_6\,
      O(0) => \count_value_i_reg[11]_i_1_n_7\,
      S(3 downto 0) => \^q\(11 downto 8)
    );
\count_value_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[13]_i_1_n_7\,
      Q => \^q\(12),
      R => wrst_busy
    );
\count_value_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[13]_i_1_n_6\,
      Q => \^q\(13),
      R => wrst_busy
    );
\count_value_i_reg[13]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[11]_i_1_n_0\,
      CO(3 downto 1) => \NLW_count_value_i_reg[13]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \count_value_i_reg[13]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_count_value_i_reg[13]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \count_value_i_reg[13]_i_1_n_6\,
      O(0) => \count_value_i_reg[13]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => \^q\(13 downto 12)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1_n_6\,
      Q => \^q\(1),
      S => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1_n_5\,
      Q => \^q\(2),
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1_n_4\,
      Q => \^q\(3),
      R => wrst_busy
    );
\count_value_i_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_value_i_reg[3]_i_1_n_0\,
      CO(2) => \count_value_i_reg[3]_i_1_n_1\,
      CO(1) => \count_value_i_reg[3]_i_1_n_2\,
      CO(0) => \count_value_i_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^q\(0),
      O(3) => \count_value_i_reg[3]_i_1_n_4\,
      O(2) => \count_value_i_reg[3]_i_1_n_5\,
      O(1) => \count_value_i_reg[3]_i_1_n_6\,
      O(0) => \count_value_i_reg[3]_i_1_n_7\,
      S(3 downto 1) => \^q\(3 downto 1),
      S(0) => S(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1_n_7\,
      Q => \^q\(4),
      R => wrst_busy
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1_n_6\,
      Q => \^q\(5),
      R => wrst_busy
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1_n_5\,
      Q => \^q\(6),
      R => wrst_busy
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1_n_4\,
      Q => \^q\(7),
      R => wrst_busy
    );
\count_value_i_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[3]_i_1_n_0\,
      CO(3) => \count_value_i_reg[7]_i_1_n_0\,
      CO(2) => \count_value_i_reg[7]_i_1_n_1\,
      CO(1) => \count_value_i_reg[7]_i_1_n_2\,
      CO(0) => \count_value_i_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_value_i_reg[7]_i_1_n_4\,
      O(2) => \count_value_i_reg[7]_i_1_n_5\,
      O(1) => \count_value_i_reg[7]_i_1_n_6\,
      O(0) => \count_value_i_reg[7]_i_1_n_7\,
      S(3 downto 0) => \^q\(7 downto 4)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[11]_i_1_n_7\,
      Q => \^q\(8),
      R => wrst_busy
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[11]_i_1_n_6\,
      Q => \^q\(9),
      R => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_usb_stream_0_0_xpm_fifo_reg_bit is
  port (
    rst_d1 : out STD_LOGIC;
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    d_out_int_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    d_out_int_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    wrst_busy : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    \gen_pf_ic_rc.gpf_ic.prog_full_i_reg\ : in STD_LOGIC;
    prog_full : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_0\ : in STD_LOGIC_VECTOR ( 12 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_usb_stream_0_0_xpm_fifo_reg_bit : entity is "xpm_fifo_reg_bit";
end system_usb_stream_0_0_xpm_fifo_reg_bit;

architecture STRUCTURE of system_usb_stream_0_0_xpm_fifo_reg_bit is
  signal \gen_pf_ic_rc.gpf_ic.prog_full_i_i_3_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.prog_full_i_i_4_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal \^rst_d1\ : STD_LOGIC;
begin
  rst_d1 <= \^rst_d1\;
\count_value_i[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0100"
    )
        port map (
      I0 => \^rst_d1\,
      I1 => wrst_busy,
      I2 => \gen_pf_ic_rc.gpf_ic.prog_full_i_reg\,
      I3 => wr_en,
      I4 => Q(0),
      O => S(0)
    );
\count_value_i[3]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0100"
    )
        port map (
      I0 => \^rst_d1\,
      I1 => wrst_busy,
      I2 => \gen_pf_ic_rc.gpf_ic.prog_full_i_reg\,
      I3 => wr_en,
      I4 => \count_value_i_reg[3]\(0),
      O => d_out_int_reg_0(0)
    );
\count_value_i[3]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0100"
    )
        port map (
      I0 => \^rst_d1\,
      I1 => wrst_busy,
      I2 => \gen_pf_ic_rc.gpf_ic.prog_full_i_reg\,
      I3 => wr_en,
      I4 => \count_value_i_reg[3]_0\(0),
      O => d_out_int_reg_1(0)
    );
d_out_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => wrst_busy,
      Q => \^rst_d1\,
      R => '0'
    );
\gen_pf_ic_rc.gpf_ic.prog_full_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E200E2E2"
    )
        port map (
      I0 => p_1_in,
      I1 => \gen_pf_ic_rc.gpf_ic.prog_full_i_reg\,
      I2 => prog_full,
      I3 => rst,
      I4 => \^rst_d1\,
      I5 => wrst_busy,
      O => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\
    );
\gen_pf_ic_rc.gpf_ic.prog_full_i_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_0\(5),
      I1 => \gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_0\(4),
      I2 => \gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_0\(11),
      I3 => \gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_0\(10),
      I4 => \gen_pf_ic_rc.gpf_ic.prog_full_i_i_3_n_0\,
      I5 => \gen_pf_ic_rc.gpf_ic.prog_full_i_i_4_n_0\,
      O => p_1_in
    );
\gen_pf_ic_rc.gpf_ic.prog_full_i_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55557FFF"
    )
        port map (
      I0 => \gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_0\(12),
      I1 => \gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_0\(0),
      I2 => \gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_0\(2),
      I3 => \gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_0\(1),
      I4 => \gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_0\(3),
      O => \gen_pf_ic_rc.gpf_ic.prog_full_i_i_3_n_0\
    );
\gen_pf_ic_rc.gpf_ic.prog_full_i_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_0\(7),
      I1 => \gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_0\(6),
      I2 => \gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_0\(9),
      I3 => \gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_0\(8),
      O => \gen_pf_ic_rc.gpf_ic.prog_full_i_i_4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_usb_stream_0_0_xpm_fifo_reg_bit_5 is
  port (
    rst_d1 : out STD_LOGIC;
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    d_out_int_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    d_out_int_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    wrst_busy : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    \gen_pf_ic_rc.gpf_ic.prog_full_i_reg\ : in STD_LOGIC;
    prog_full : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_pf_ic_rc.gpf_ic.prog_full_i_reg_0\ : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_usb_stream_0_0_xpm_fifo_reg_bit_5 : entity is "xpm_fifo_reg_bit";
end system_usb_stream_0_0_xpm_fifo_reg_bit_5;

architecture STRUCTURE of system_usb_stream_0_0_xpm_fifo_reg_bit_5 is
  signal \gen_pf_ic_rc.gpf_ic.prog_full_i_i_3_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal \^rst_d1\ : STD_LOGIC;
begin
  rst_d1 <= \^rst_d1\;
\count_value_i[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0100"
    )
        port map (
      I0 => \^rst_d1\,
      I1 => wrst_busy,
      I2 => \gen_pf_ic_rc.gpf_ic.prog_full_i_reg\,
      I3 => wr_en,
      I4 => Q(0),
      O => S(0)
    );
\count_value_i[3]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0100"
    )
        port map (
      I0 => \^rst_d1\,
      I1 => wrst_busy,
      I2 => \gen_pf_ic_rc.gpf_ic.prog_full_i_reg\,
      I3 => wr_en,
      I4 => \count_value_i_reg[3]\(0),
      O => d_out_int_reg_0(0)
    );
\count_value_i[3]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0100"
    )
        port map (
      I0 => \^rst_d1\,
      I1 => wrst_busy,
      I2 => \gen_pf_ic_rc.gpf_ic.prog_full_i_reg\,
      I3 => wr_en,
      I4 => \count_value_i_reg[3]_0\(0),
      O => d_out_int_reg_1(0)
    );
d_out_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => wrst_busy,
      Q => \^rst_d1\,
      R => '0'
    );
\gen_pf_ic_rc.gpf_ic.prog_full_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E200E2E2"
    )
        port map (
      I0 => p_1_in,
      I1 => \gen_pf_ic_rc.gpf_ic.prog_full_i_reg\,
      I2 => prog_full,
      I3 => rst,
      I4 => \^rst_d1\,
      I5 => wrst_busy,
      O => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\
    );
\gen_pf_ic_rc.gpf_ic.prog_full_i_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA00000000"
    )
        port map (
      I0 => \gen_pf_ic_rc.gpf_ic.prog_full_i_reg_0\(9),
      I1 => \gen_pf_ic_rc.gpf_ic.prog_full_i_reg_0\(8),
      I2 => \gen_pf_ic_rc.gpf_ic.prog_full_i_i_3_n_0\,
      I3 => \gen_pf_ic_rc.gpf_ic.prog_full_i_reg_0\(7),
      I4 => \gen_pf_ic_rc.gpf_ic.prog_full_i_reg_0\(0),
      I5 => \gen_pf_ic_rc.gpf_ic.prog_full_i_reg_0\(10),
      O => p_1_in
    );
\gen_pf_ic_rc.gpf_ic.prog_full_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \gen_pf_ic_rc.gpf_ic.prog_full_i_reg_0\(5),
      I1 => \gen_pf_ic_rc.gpf_ic.prog_full_i_reg_0\(4),
      I2 => \gen_pf_ic_rc.gpf_ic.prog_full_i_reg_0\(2),
      I3 => \gen_pf_ic_rc.gpf_ic.prog_full_i_reg_0\(1),
      I4 => \gen_pf_ic_rc.gpf_ic.prog_full_i_reg_0\(3),
      I5 => \gen_pf_ic_rc.gpf_ic.prog_full_i_reg_0\(6),
      O => \gen_pf_ic_rc.gpf_ic.prog_full_i_i_3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_usb_stream_0_0_xpm_fifo_reg_vec is
  port (
    Q : out STD_LOGIC_VECTOR ( 11 downto 0 );
    ram_full_i0 : out STD_LOGIC;
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_0\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    wr_en : in STD_LOGIC;
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\ : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    wrst_busy : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 11 downto 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_usb_stream_0_0_xpm_fifo_reg_vec : entity is "xpm_fifo_reg_vec";
end system_usb_stream_0_0_xpm_fifo_reg_vec;

architecture STRUCTURE of system_usb_stream_0_0_xpm_fifo_reg_vec is
  signal \^q\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_10_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_11_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_4_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_5_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_6_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_7_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_8_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_9_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_n_1\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_n_2\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_n_3\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_n_1\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_n_2\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_n_3\ : STD_LOGIC;
  signal going_full0 : STD_LOGIC;
  signal leaving_full : STD_LOGIC;
  signal \NLW_gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  Q(11 downto 0) <= \^q\(11 downto 0);
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0200"
    )
        port map (
      I0 => wr_en,
      I1 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      I2 => rst_d1,
      I3 => going_full0,
      I4 => leaving_full,
      O => ram_full_i0
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_0\(3),
      I2 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_0\(5),
      I3 => \^q\(5),
      I4 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_0\(4),
      I5 => \^q\(4),
      O => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_10_n_0\
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_0\(0),
      I2 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_0\(2),
      I3 => \^q\(2),
      I4 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_0\(1),
      I5 => \^q\(1),
      O => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_11_n_0\
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(9),
      I1 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(9),
      I2 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(11),
      I3 => \^q\(11),
      I4 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(10),
      I5 => \^q\(10),
      O => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_4_n_0\
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(6),
      I2 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(8),
      I3 => \^q\(8),
      I4 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(7),
      I5 => \^q\(7),
      O => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_5_n_0\
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(3),
      I2 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(5),
      I3 => \^q\(5),
      I4 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(4),
      I5 => \^q\(4),
      O => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_6_n_0\
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(0),
      I2 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(2),
      I3 => \^q\(2),
      I4 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(1),
      I5 => \^q\(1),
      O => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_7_n_0\
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(9),
      I1 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_0\(9),
      I2 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_0\(11),
      I3 => \^q\(11),
      I4 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_0\(10),
      I5 => \^q\(10),
      O => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_8_n_0\
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_0\(6),
      I2 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_0\(8),
      I3 => \^q\(8),
      I4 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_0\(7),
      I5 => \^q\(7),
      O => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_9_n_0\
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => going_full0,
      CO(2) => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_n_1\,
      CO(1) => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_n_2\,
      CO(0) => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_4_n_0\,
      S(2) => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_5_n_0\,
      S(1) => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_6_n_0\,
      S(0) => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_7_n_0\
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => leaving_full,
      CO(2) => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_n_1\,
      CO(1) => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_n_2\,
      CO(0) => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_8_n_0\,
      S(2) => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_9_n_0\,
      S(1) => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_10_n_0\,
      S(0) => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_11_n_0\
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(0),
      Q => \^q\(0),
      R => wrst_busy
    );
\reg_out_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(10),
      Q => \^q\(10),
      R => wrst_busy
    );
\reg_out_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(11),
      Q => \^q\(11),
      R => wrst_busy
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(1),
      Q => \^q\(1),
      R => wrst_busy
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(2),
      Q => \^q\(2),
      R => wrst_busy
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(3),
      Q => \^q\(3),
      R => wrst_busy
    );
\reg_out_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(4),
      Q => \^q\(4),
      R => wrst_busy
    );
\reg_out_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(5),
      Q => \^q\(5),
      R => wrst_busy
    );
\reg_out_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(6),
      Q => \^q\(6),
      R => wrst_busy
    );
\reg_out_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(7),
      Q => \^q\(7),
      R => wrst_busy
    );
\reg_out_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(8),
      Q => \^q\(8),
      R => wrst_busy
    );
\reg_out_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(9),
      Q => \^q\(9),
      R => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_usb_stream_0_0_xpm_fifo_reg_vec_3 is
  port (
    ram_empty_i0 : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \gen_pf_ic_rc.ram_empty_i_reg_i_3_0\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \reg_out_i_reg[11]_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 11 downto 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_usb_stream_0_0_xpm_fifo_reg_vec_3 : entity is "xpm_fifo_reg_vec";
end system_usb_stream_0_0_xpm_fifo_reg_vec_3;

architecture STRUCTURE of system_usb_stream_0_0_xpm_fifo_reg_vec_3 is
  signal \gen_pf_ic_rc.ram_empty_i_i_10_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_11_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_4_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_5_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_6_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_7_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_8_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_9_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_reg_i_2_n_1\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_reg_i_2_n_2\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_reg_i_2_n_3\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_reg_i_3_n_1\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_reg_i_3_n_2\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_reg_i_3_n_3\ : STD_LOGIC;
  signal going_empty0 : STD_LOGIC;
  signal leaving_empty : STD_LOGIC;
  signal \reg_out_i_reg_n_0_[0]\ : STD_LOGIC;
  signal \reg_out_i_reg_n_0_[10]\ : STD_LOGIC;
  signal \reg_out_i_reg_n_0_[11]\ : STD_LOGIC;
  signal \reg_out_i_reg_n_0_[1]\ : STD_LOGIC;
  signal \reg_out_i_reg_n_0_[2]\ : STD_LOGIC;
  signal \reg_out_i_reg_n_0_[3]\ : STD_LOGIC;
  signal \reg_out_i_reg_n_0_[4]\ : STD_LOGIC;
  signal \reg_out_i_reg_n_0_[5]\ : STD_LOGIC;
  signal \reg_out_i_reg_n_0_[6]\ : STD_LOGIC;
  signal \reg_out_i_reg_n_0_[7]\ : STD_LOGIC;
  signal \reg_out_i_reg_n_0_[8]\ : STD_LOGIC;
  signal \reg_out_i_reg_n_0_[9]\ : STD_LOGIC;
  signal \NLW_gen_pf_ic_rc.ram_empty_i_reg_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_pf_ic_rc.ram_empty_i_reg_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
\gen_pf_ic_rc.ram_empty_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00FD0000"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => rd_en,
      I3 => ram_empty_i,
      I4 => going_empty0,
      I5 => leaving_empty,
      O => ram_empty_i0
    );
\gen_pf_ic_rc.ram_empty_i_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \reg_out_i_reg_n_0_[3]\,
      I1 => \gen_pf_ic_rc.ram_empty_i_reg_i_3_0\(3),
      I2 => \gen_pf_ic_rc.ram_empty_i_reg_i_3_0\(5),
      I3 => \reg_out_i_reg_n_0_[5]\,
      I4 => \gen_pf_ic_rc.ram_empty_i_reg_i_3_0\(4),
      I5 => \reg_out_i_reg_n_0_[4]\,
      O => \gen_pf_ic_rc.ram_empty_i_i_10_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \reg_out_i_reg_n_0_[0]\,
      I1 => \gen_pf_ic_rc.ram_empty_i_reg_i_3_0\(0),
      I2 => \gen_pf_ic_rc.ram_empty_i_reg_i_3_0\(2),
      I3 => \reg_out_i_reg_n_0_[2]\,
      I4 => \gen_pf_ic_rc.ram_empty_i_reg_i_3_0\(1),
      I5 => \reg_out_i_reg_n_0_[1]\,
      O => \gen_pf_ic_rc.ram_empty_i_i_11_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \reg_out_i_reg_n_0_[9]\,
      I1 => \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(9),
      I2 => \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(11),
      I3 => \reg_out_i_reg_n_0_[11]\,
      I4 => \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(10),
      I5 => \reg_out_i_reg_n_0_[10]\,
      O => \gen_pf_ic_rc.ram_empty_i_i_4_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \reg_out_i_reg_n_0_[6]\,
      I1 => \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(6),
      I2 => \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(8),
      I3 => \reg_out_i_reg_n_0_[8]\,
      I4 => \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(7),
      I5 => \reg_out_i_reg_n_0_[7]\,
      O => \gen_pf_ic_rc.ram_empty_i_i_5_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \reg_out_i_reg_n_0_[3]\,
      I1 => \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(3),
      I2 => \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(5),
      I3 => \reg_out_i_reg_n_0_[5]\,
      I4 => \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(4),
      I5 => \reg_out_i_reg_n_0_[4]\,
      O => \gen_pf_ic_rc.ram_empty_i_i_6_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \reg_out_i_reg_n_0_[0]\,
      I1 => \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(0),
      I2 => \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(2),
      I3 => \reg_out_i_reg_n_0_[2]\,
      I4 => \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(1),
      I5 => \reg_out_i_reg_n_0_[1]\,
      O => \gen_pf_ic_rc.ram_empty_i_i_7_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \reg_out_i_reg_n_0_[9]\,
      I1 => \gen_pf_ic_rc.ram_empty_i_reg_i_3_0\(9),
      I2 => \gen_pf_ic_rc.ram_empty_i_reg_i_3_0\(11),
      I3 => \reg_out_i_reg_n_0_[11]\,
      I4 => \gen_pf_ic_rc.ram_empty_i_reg_i_3_0\(10),
      I5 => \reg_out_i_reg_n_0_[10]\,
      O => \gen_pf_ic_rc.ram_empty_i_i_8_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \reg_out_i_reg_n_0_[6]\,
      I1 => \gen_pf_ic_rc.ram_empty_i_reg_i_3_0\(6),
      I2 => \gen_pf_ic_rc.ram_empty_i_reg_i_3_0\(8),
      I3 => \reg_out_i_reg_n_0_[8]\,
      I4 => \gen_pf_ic_rc.ram_empty_i_reg_i_3_0\(7),
      I5 => \reg_out_i_reg_n_0_[7]\,
      O => \gen_pf_ic_rc.ram_empty_i_i_9_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_reg_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => going_empty0,
      CO(2) => \gen_pf_ic_rc.ram_empty_i_reg_i_2_n_1\,
      CO(1) => \gen_pf_ic_rc.ram_empty_i_reg_i_2_n_2\,
      CO(0) => \gen_pf_ic_rc.ram_empty_i_reg_i_2_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gen_pf_ic_rc.ram_empty_i_reg_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \gen_pf_ic_rc.ram_empty_i_i_4_n_0\,
      S(2) => \gen_pf_ic_rc.ram_empty_i_i_5_n_0\,
      S(1) => \gen_pf_ic_rc.ram_empty_i_i_6_n_0\,
      S(0) => \gen_pf_ic_rc.ram_empty_i_i_7_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_reg_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => leaving_empty,
      CO(2) => \gen_pf_ic_rc.ram_empty_i_reg_i_3_n_1\,
      CO(1) => \gen_pf_ic_rc.ram_empty_i_reg_i_3_n_2\,
      CO(0) => \gen_pf_ic_rc.ram_empty_i_reg_i_3_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gen_pf_ic_rc.ram_empty_i_reg_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \gen_pf_ic_rc.ram_empty_i_i_8_n_0\,
      S(2) => \gen_pf_ic_rc.ram_empty_i_i_9_n_0\,
      S(1) => \gen_pf_ic_rc.ram_empty_i_i_10_n_0\,
      S(0) => \gen_pf_ic_rc.ram_empty_i_i_11_n_0\
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(0),
      Q => \reg_out_i_reg_n_0_[0]\,
      R => \reg_out_i_reg[11]_0\
    );
\reg_out_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(10),
      Q => \reg_out_i_reg_n_0_[10]\,
      R => \reg_out_i_reg[11]_0\
    );
\reg_out_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(11),
      Q => \reg_out_i_reg_n_0_[11]\,
      R => \reg_out_i_reg[11]_0\
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(1),
      Q => \reg_out_i_reg_n_0_[1]\,
      R => \reg_out_i_reg[11]_0\
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(2),
      Q => \reg_out_i_reg_n_0_[2]\,
      R => \reg_out_i_reg[11]_0\
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(3),
      Q => \reg_out_i_reg_n_0_[3]\,
      R => \reg_out_i_reg[11]_0\
    );
\reg_out_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(4),
      Q => \reg_out_i_reg_n_0_[4]\,
      R => \reg_out_i_reg[11]_0\
    );
\reg_out_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(5),
      Q => \reg_out_i_reg_n_0_[5]\,
      R => \reg_out_i_reg[11]_0\
    );
\reg_out_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(6),
      Q => \reg_out_i_reg_n_0_[6]\,
      R => \reg_out_i_reg[11]_0\
    );
\reg_out_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(7),
      Q => \reg_out_i_reg_n_0_[7]\,
      R => \reg_out_i_reg[11]_0\
    );
\reg_out_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(8),
      Q => \reg_out_i_reg_n_0_[8]\,
      R => \reg_out_i_reg[11]_0\
    );
\reg_out_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(9),
      Q => \reg_out_i_reg_n_0_[9]\,
      R => \reg_out_i_reg[11]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_usb_stream_0_0_xpm_fifo_reg_vec__parameterized1\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 13 downto 0 );
    ram_full_i0 : out STD_LOGIC;
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\ : in STD_LOGIC_VECTOR ( 13 downto 0 );
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_0\ : in STD_LOGIC_VECTOR ( 13 downto 0 );
    wr_en : in STD_LOGIC;
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\ : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    wrst_busy : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 13 downto 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_usb_stream_0_0_xpm_fifo_reg_vec__parameterized1\ : entity is "xpm_fifo_reg_vec";
end \system_usb_stream_0_0_xpm_fifo_reg_vec__parameterized1\;

architecture STRUCTURE of \system_usb_stream_0_0_xpm_fifo_reg_vec__parameterized1\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_10_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_11_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_12_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_13_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_14_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_15_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_5_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_7_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_8_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_9_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_4_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_4_n_1\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_4_n_2\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_4_n_3\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_6_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_6_n_1\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_6_n_2\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_6_n_3\ : STD_LOGIC;
  signal going_full0 : STD_LOGIC;
  signal leaving_full : STD_LOGIC;
  signal \NLW_gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  Q(13 downto 0) <= \^q\(13 downto 0);
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0200"
    )
        port map (
      I0 => wr_en,
      I1 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      I2 => rst_d1,
      I3 => going_full0,
      I4 => leaving_full,
      O => ram_full_i0
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(3),
      I2 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(5),
      I3 => \^q\(5),
      I4 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(4),
      I5 => \^q\(4),
      O => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_10_n_0\
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(0),
      I2 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(2),
      I3 => \^q\(2),
      I4 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(1),
      I5 => \^q\(1),
      O => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_11_n_0\
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(9),
      I1 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_0\(9),
      I2 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_0\(11),
      I3 => \^q\(11),
      I4 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_0\(10),
      I5 => \^q\(10),
      O => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_12_n_0\
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_0\(6),
      I2 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_0\(8),
      I3 => \^q\(8),
      I4 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_0\(7),
      I5 => \^q\(7),
      O => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_13_n_0\
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_0\(3),
      I2 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_0\(5),
      I3 => \^q\(5),
      I4 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_0\(4),
      I5 => \^q\(4),
      O => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_14_n_0\
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_0\(0),
      I2 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_0\(2),
      I3 => \^q\(2),
      I4 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_0\(1),
      I5 => \^q\(1),
      O => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_15_n_0\
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(12),
      I1 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(12),
      I2 => \^q\(13),
      I3 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(13),
      O => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_5_n_0\
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(12),
      I1 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_0\(12),
      I2 => \^q\(13),
      I3 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_0\(13),
      O => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_7_n_0\
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(9),
      I1 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(9),
      I2 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(11),
      I3 => \^q\(11),
      I4 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(10),
      I5 => \^q\(10),
      O => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_8_n_0\
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(6),
      I2 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(8),
      I3 => \^q\(8),
      I4 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(7),
      I5 => \^q\(7),
      O => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_9_n_0\
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_4_n_0\,
      CO(3 downto 1) => \NLW_gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => going_full0,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_5_n_0\
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_6_n_0\,
      CO(3 downto 1) => \NLW_gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_CO_UNCONNECTED\(3 downto 1),
      CO(0) => leaving_full,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_7_n_0\
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_4_n_0\,
      CO(2) => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_4_n_1\,
      CO(1) => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_4_n_2\,
      CO(0) => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_4_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_8_n_0\,
      S(2) => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_9_n_0\,
      S(1) => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_10_n_0\,
      S(0) => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_11_n_0\
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_6_n_0\,
      CO(2) => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_6_n_1\,
      CO(1) => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_6_n_2\,
      CO(0) => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_6_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_6_O_UNCONNECTED\(3 downto 0),
      S(3) => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_12_n_0\,
      S(2) => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_13_n_0\,
      S(1) => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_14_n_0\,
      S(0) => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_15_n_0\
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(0),
      Q => \^q\(0),
      R => wrst_busy
    );
\reg_out_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(10),
      Q => \^q\(10),
      R => wrst_busy
    );
\reg_out_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(11),
      Q => \^q\(11),
      R => wrst_busy
    );
\reg_out_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(12),
      Q => \^q\(12),
      R => wrst_busy
    );
\reg_out_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(13),
      Q => \^q\(13),
      R => wrst_busy
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(1),
      Q => \^q\(1),
      R => wrst_busy
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(2),
      Q => \^q\(2),
      R => wrst_busy
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(3),
      Q => \^q\(3),
      R => wrst_busy
    );
\reg_out_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(4),
      Q => \^q\(4),
      R => wrst_busy
    );
\reg_out_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(5),
      Q => \^q\(5),
      R => wrst_busy
    );
\reg_out_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(6),
      Q => \^q\(6),
      R => wrst_busy
    );
\reg_out_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(7),
      Q => \^q\(7),
      R => wrst_busy
    );
\reg_out_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(8),
      Q => \^q\(8),
      R => wrst_busy
    );
\reg_out_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(9),
      Q => \^q\(9),
      R => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_usb_stream_0_0_xpm_fifo_reg_vec__parameterized1_0\ is
  port (
    ram_empty_i0 : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\ : in STD_LOGIC_VECTOR ( 13 downto 0 );
    \gen_pf_ic_rc.ram_empty_i_reg_i_3_0\ : in STD_LOGIC_VECTOR ( 13 downto 0 );
    \reg_out_i_reg[13]_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 13 downto 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_usb_stream_0_0_xpm_fifo_reg_vec__parameterized1_0\ : entity is "xpm_fifo_reg_vec";
end \system_usb_stream_0_0_xpm_fifo_reg_vec__parameterized1_0\;

architecture STRUCTURE of \system_usb_stream_0_0_xpm_fifo_reg_vec__parameterized1_0\ is
  signal \gen_pf_ic_rc.ram_empty_i_i_10_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_11_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_12_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_13_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_14_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_15_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_5_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_7_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_8_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_9_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_reg_i_4_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_reg_i_4_n_1\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_reg_i_4_n_2\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_reg_i_4_n_3\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_reg_i_6_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_reg_i_6_n_1\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_reg_i_6_n_2\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_reg_i_6_n_3\ : STD_LOGIC;
  signal going_empty0 : STD_LOGIC;
  signal leaving_empty : STD_LOGIC;
  signal \reg_out_i_reg_n_0_[0]\ : STD_LOGIC;
  signal \reg_out_i_reg_n_0_[10]\ : STD_LOGIC;
  signal \reg_out_i_reg_n_0_[11]\ : STD_LOGIC;
  signal \reg_out_i_reg_n_0_[12]\ : STD_LOGIC;
  signal \reg_out_i_reg_n_0_[13]\ : STD_LOGIC;
  signal \reg_out_i_reg_n_0_[1]\ : STD_LOGIC;
  signal \reg_out_i_reg_n_0_[2]\ : STD_LOGIC;
  signal \reg_out_i_reg_n_0_[3]\ : STD_LOGIC;
  signal \reg_out_i_reg_n_0_[4]\ : STD_LOGIC;
  signal \reg_out_i_reg_n_0_[5]\ : STD_LOGIC;
  signal \reg_out_i_reg_n_0_[6]\ : STD_LOGIC;
  signal \reg_out_i_reg_n_0_[7]\ : STD_LOGIC;
  signal \reg_out_i_reg_n_0_[8]\ : STD_LOGIC;
  signal \reg_out_i_reg_n_0_[9]\ : STD_LOGIC;
  signal \NLW_gen_pf_ic_rc.ram_empty_i_reg_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gen_pf_ic_rc.ram_empty_i_reg_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_pf_ic_rc.ram_empty_i_reg_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gen_pf_ic_rc.ram_empty_i_reg_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_pf_ic_rc.ram_empty_i_reg_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_pf_ic_rc.ram_empty_i_reg_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
\gen_pf_ic_rc.ram_empty_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00FD0000"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => rd_en,
      I3 => ram_empty_i,
      I4 => going_empty0,
      I5 => leaving_empty,
      O => ram_empty_i0
    );
\gen_pf_ic_rc.ram_empty_i_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \reg_out_i_reg_n_0_[3]\,
      I1 => \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(3),
      I2 => \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(5),
      I3 => \reg_out_i_reg_n_0_[5]\,
      I4 => \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(4),
      I5 => \reg_out_i_reg_n_0_[4]\,
      O => \gen_pf_ic_rc.ram_empty_i_i_10_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \reg_out_i_reg_n_0_[0]\,
      I1 => \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(0),
      I2 => \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(2),
      I3 => \reg_out_i_reg_n_0_[2]\,
      I4 => \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(1),
      I5 => \reg_out_i_reg_n_0_[1]\,
      O => \gen_pf_ic_rc.ram_empty_i_i_11_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \reg_out_i_reg_n_0_[9]\,
      I1 => \gen_pf_ic_rc.ram_empty_i_reg_i_3_0\(9),
      I2 => \gen_pf_ic_rc.ram_empty_i_reg_i_3_0\(11),
      I3 => \reg_out_i_reg_n_0_[11]\,
      I4 => \gen_pf_ic_rc.ram_empty_i_reg_i_3_0\(10),
      I5 => \reg_out_i_reg_n_0_[10]\,
      O => \gen_pf_ic_rc.ram_empty_i_i_12_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \reg_out_i_reg_n_0_[6]\,
      I1 => \gen_pf_ic_rc.ram_empty_i_reg_i_3_0\(6),
      I2 => \gen_pf_ic_rc.ram_empty_i_reg_i_3_0\(8),
      I3 => \reg_out_i_reg_n_0_[8]\,
      I4 => \gen_pf_ic_rc.ram_empty_i_reg_i_3_0\(7),
      I5 => \reg_out_i_reg_n_0_[7]\,
      O => \gen_pf_ic_rc.ram_empty_i_i_13_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \reg_out_i_reg_n_0_[3]\,
      I1 => \gen_pf_ic_rc.ram_empty_i_reg_i_3_0\(3),
      I2 => \gen_pf_ic_rc.ram_empty_i_reg_i_3_0\(5),
      I3 => \reg_out_i_reg_n_0_[5]\,
      I4 => \gen_pf_ic_rc.ram_empty_i_reg_i_3_0\(4),
      I5 => \reg_out_i_reg_n_0_[4]\,
      O => \gen_pf_ic_rc.ram_empty_i_i_14_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \reg_out_i_reg_n_0_[0]\,
      I1 => \gen_pf_ic_rc.ram_empty_i_reg_i_3_0\(0),
      I2 => \gen_pf_ic_rc.ram_empty_i_reg_i_3_0\(2),
      I3 => \reg_out_i_reg_n_0_[2]\,
      I4 => \gen_pf_ic_rc.ram_empty_i_reg_i_3_0\(1),
      I5 => \reg_out_i_reg_n_0_[1]\,
      O => \gen_pf_ic_rc.ram_empty_i_i_15_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \reg_out_i_reg_n_0_[12]\,
      I1 => \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(12),
      I2 => \reg_out_i_reg_n_0_[13]\,
      I3 => \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(13),
      O => \gen_pf_ic_rc.ram_empty_i_i_5_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \reg_out_i_reg_n_0_[12]\,
      I1 => \gen_pf_ic_rc.ram_empty_i_reg_i_3_0\(12),
      I2 => \reg_out_i_reg_n_0_[13]\,
      I3 => \gen_pf_ic_rc.ram_empty_i_reg_i_3_0\(13),
      O => \gen_pf_ic_rc.ram_empty_i_i_7_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \reg_out_i_reg_n_0_[9]\,
      I1 => \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(9),
      I2 => \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(11),
      I3 => \reg_out_i_reg_n_0_[11]\,
      I4 => \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(10),
      I5 => \reg_out_i_reg_n_0_[10]\,
      O => \gen_pf_ic_rc.ram_empty_i_i_8_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \reg_out_i_reg_n_0_[6]\,
      I1 => \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(6),
      I2 => \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(8),
      I3 => \reg_out_i_reg_n_0_[8]\,
      I4 => \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(7),
      I5 => \reg_out_i_reg_n_0_[7]\,
      O => \gen_pf_ic_rc.ram_empty_i_i_9_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_reg_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \gen_pf_ic_rc.ram_empty_i_reg_i_4_n_0\,
      CO(3 downto 1) => \NLW_gen_pf_ic_rc.ram_empty_i_reg_i_2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => going_empty0,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gen_pf_ic_rc.ram_empty_i_reg_i_2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \gen_pf_ic_rc.ram_empty_i_i_5_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_reg_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \gen_pf_ic_rc.ram_empty_i_reg_i_6_n_0\,
      CO(3 downto 1) => \NLW_gen_pf_ic_rc.ram_empty_i_reg_i_3_CO_UNCONNECTED\(3 downto 1),
      CO(0) => leaving_empty,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gen_pf_ic_rc.ram_empty_i_reg_i_3_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \gen_pf_ic_rc.ram_empty_i_i_7_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_reg_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gen_pf_ic_rc.ram_empty_i_reg_i_4_n_0\,
      CO(2) => \gen_pf_ic_rc.ram_empty_i_reg_i_4_n_1\,
      CO(1) => \gen_pf_ic_rc.ram_empty_i_reg_i_4_n_2\,
      CO(0) => \gen_pf_ic_rc.ram_empty_i_reg_i_4_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gen_pf_ic_rc.ram_empty_i_reg_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \gen_pf_ic_rc.ram_empty_i_i_8_n_0\,
      S(2) => \gen_pf_ic_rc.ram_empty_i_i_9_n_0\,
      S(1) => \gen_pf_ic_rc.ram_empty_i_i_10_n_0\,
      S(0) => \gen_pf_ic_rc.ram_empty_i_i_11_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_reg_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gen_pf_ic_rc.ram_empty_i_reg_i_6_n_0\,
      CO(2) => \gen_pf_ic_rc.ram_empty_i_reg_i_6_n_1\,
      CO(1) => \gen_pf_ic_rc.ram_empty_i_reg_i_6_n_2\,
      CO(0) => \gen_pf_ic_rc.ram_empty_i_reg_i_6_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gen_pf_ic_rc.ram_empty_i_reg_i_6_O_UNCONNECTED\(3 downto 0),
      S(3) => \gen_pf_ic_rc.ram_empty_i_i_12_n_0\,
      S(2) => \gen_pf_ic_rc.ram_empty_i_i_13_n_0\,
      S(1) => \gen_pf_ic_rc.ram_empty_i_i_14_n_0\,
      S(0) => \gen_pf_ic_rc.ram_empty_i_i_15_n_0\
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(0),
      Q => \reg_out_i_reg_n_0_[0]\,
      R => \reg_out_i_reg[13]_0\
    );
\reg_out_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(10),
      Q => \reg_out_i_reg_n_0_[10]\,
      R => \reg_out_i_reg[13]_0\
    );
\reg_out_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(11),
      Q => \reg_out_i_reg_n_0_[11]\,
      R => \reg_out_i_reg[13]_0\
    );
\reg_out_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(12),
      Q => \reg_out_i_reg_n_0_[12]\,
      R => \reg_out_i_reg[13]_0\
    );
\reg_out_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(13),
      Q => \reg_out_i_reg_n_0_[13]\,
      R => \reg_out_i_reg[13]_0\
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(1),
      Q => \reg_out_i_reg_n_0_[1]\,
      R => \reg_out_i_reg[13]_0\
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(2),
      Q => \reg_out_i_reg_n_0_[2]\,
      R => \reg_out_i_reg[13]_0\
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(3),
      Q => \reg_out_i_reg_n_0_[3]\,
      R => \reg_out_i_reg[13]_0\
    );
\reg_out_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(4),
      Q => \reg_out_i_reg_n_0_[4]\,
      R => \reg_out_i_reg[13]_0\
    );
\reg_out_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(5),
      Q => \reg_out_i_reg_n_0_[5]\,
      R => \reg_out_i_reg[13]_0\
    );
\reg_out_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(6),
      Q => \reg_out_i_reg_n_0_[6]\,
      R => \reg_out_i_reg[13]_0\
    );
\reg_out_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(7),
      Q => \reg_out_i_reg_n_0_[7]\,
      R => \reg_out_i_reg[13]_0\
    );
\reg_out_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(8),
      Q => \reg_out_i_reg_n_0_[8]\,
      R => \reg_out_i_reg[13]_0\
    );
\reg_out_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(9),
      Q => \reg_out_i_reg_n_0_[9]\,
      R => \reg_out_i_reg[13]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_usb_stream_0_0_xpm_memory_base is
  port (
    sleep : in STD_LOGIC;
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    injectsbiterra : in STD_LOGIC;
    injectdbiterra : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 8 downto 0 );
    sbiterra : out STD_LOGIC;
    dbiterra : out STD_LOGIC;
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    injectsbiterrb : in STD_LOGIC;
    injectdbiterrb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 8 downto 0 );
    sbiterrb : out STD_LOGIC;
    dbiterrb : out STD_LOGIC
  );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of system_usb_stream_0_0_xpm_memory_base : entity is 12;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of system_usb_stream_0_0_xpm_memory_base : entity is 12;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of system_usb_stream_0_0_xpm_memory_base : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of system_usb_stream_0_0_xpm_memory_base : entity is 9;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of system_usb_stream_0_0_xpm_memory_base : entity is 9;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of system_usb_stream_0_0_xpm_memory_base : entity is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of system_usb_stream_0_0_xpm_memory_base : entity is 1;
  attribute ECC_BIT_RANGE : string;
  attribute ECC_BIT_RANGE of system_usb_stream_0_0_xpm_memory_base : entity is "[7:0]";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of system_usb_stream_0_0_xpm_memory_base : entity is 0;
  attribute ECC_TYPE : string;
  attribute ECC_TYPE of system_usb_stream_0_0_xpm_memory_base : entity is "NONE";
  attribute IGNORE_INIT_SYNTH : integer;
  attribute IGNORE_INIT_SYNTH of system_usb_stream_0_0_xpm_memory_base : entity is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of system_usb_stream_0_0_xpm_memory_base : entity is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of system_usb_stream_0_0_xpm_memory_base : entity is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of system_usb_stream_0_0_xpm_memory_base : entity is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of system_usb_stream_0_0_xpm_memory_base : entity is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of system_usb_stream_0_0_xpm_memory_base : entity is 2;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of system_usb_stream_0_0_xpm_memory_base : entity is 36864;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of system_usb_stream_0_0_xpm_memory_base : entity is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of system_usb_stream_0_0_xpm_memory_base : entity is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of system_usb_stream_0_0_xpm_memory_base : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_usb_stream_0_0_xpm_memory_base : entity is "xpm_memory_base";
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of system_usb_stream_0_0_xpm_memory_base : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of system_usb_stream_0_0_xpm_memory_base : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of system_usb_stream_0_0_xpm_memory_base : entity is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of system_usb_stream_0_0_xpm_memory_base : entity is 4096;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of system_usb_stream_0_0_xpm_memory_base : entity is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of system_usb_stream_0_0_xpm_memory_base : entity is "block";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of system_usb_stream_0_0_xpm_memory_base : entity is 9;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of system_usb_stream_0_0_xpm_memory_base : entity is 9;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of system_usb_stream_0_0_xpm_memory_base : entity is 9;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of system_usb_stream_0_0_xpm_memory_base : entity is 9;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of system_usb_stream_0_0_xpm_memory_base : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of system_usb_stream_0_0_xpm_memory_base : entity is 9;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of system_usb_stream_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of system_usb_stream_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_COL_READ_A : integer;
  attribute P_NUM_COL_READ_A of system_usb_stream_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_COL_READ_B : integer;
  attribute P_NUM_COL_READ_B of system_usb_stream_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_COL_WRITE_A : integer;
  attribute P_NUM_COL_WRITE_A of system_usb_stream_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_COL_WRITE_B : integer;
  attribute P_NUM_COL_WRITE_B of system_usb_stream_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of system_usb_stream_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of system_usb_stream_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of system_usb_stream_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of system_usb_stream_0_0_xpm_memory_base : entity is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of system_usb_stream_0_0_xpm_memory_base : entity is "no";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of system_usb_stream_0_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of system_usb_stream_0_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_COLL_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_COLL_A of system_usb_stream_0_0_xpm_memory_base : entity is 1;
  attribute P_WIDTH_ADDR_LSB_READ_COLL_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_COLL_B of system_usb_stream_0_0_xpm_memory_base : entity is 1;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of system_usb_stream_0_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of system_usb_stream_0_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_COLL_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_COLL_A of system_usb_stream_0_0_xpm_memory_base : entity is 1;
  attribute P_WIDTH_ADDR_LSB_WRITE_COLL_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_COLL_B of system_usb_stream_0_0_xpm_memory_base : entity is 1;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of system_usb_stream_0_0_xpm_memory_base : entity is 12;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of system_usb_stream_0_0_xpm_memory_base : entity is 12;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of system_usb_stream_0_0_xpm_memory_base : entity is 12;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of system_usb_stream_0_0_xpm_memory_base : entity is 12;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of system_usb_stream_0_0_xpm_memory_base : entity is 9;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of system_usb_stream_0_0_xpm_memory_base : entity is 9;
  attribute RAM_DECOMP : string;
  attribute RAM_DECOMP of system_usb_stream_0_0_xpm_memory_base : entity is "auto";
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of system_usb_stream_0_0_xpm_memory_base : entity is 9;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of system_usb_stream_0_0_xpm_memory_base : entity is 9;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of system_usb_stream_0_0_xpm_memory_base : entity is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of system_usb_stream_0_0_xpm_memory_base : entity is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of system_usb_stream_0_0_xpm_memory_base : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of system_usb_stream_0_0_xpm_memory_base : entity is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of system_usb_stream_0_0_xpm_memory_base : entity is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of system_usb_stream_0_0_xpm_memory_base : entity is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of system_usb_stream_0_0_xpm_memory_base : entity is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of system_usb_stream_0_0_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of system_usb_stream_0_0_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of system_usb_stream_0_0_xpm_memory_base : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of system_usb_stream_0_0_xpm_memory_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of system_usb_stream_0_0_xpm_memory_base : entity is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of system_usb_stream_0_0_xpm_memory_base : entity is 9;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of system_usb_stream_0_0_xpm_memory_base : entity is 9;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of system_usb_stream_0_0_xpm_memory_base : entity is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of system_usb_stream_0_0_xpm_memory_base : entity is 2;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of system_usb_stream_0_0_xpm_memory_base : entity is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of system_usb_stream_0_0_xpm_memory_base : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of system_usb_stream_0_0_xpm_memory_base : entity is "soft";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of system_usb_stream_0_0_xpm_memory_base : entity is 12;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of system_usb_stream_0_0_xpm_memory_base : entity is 12;
end system_usb_stream_0_0_xpm_memory_base;

architecture STRUCTURE of system_usb_stream_0_0_xpm_memory_base is
  signal \<const0>\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_INJECTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_INJECTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute \MEM.PORTA.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ : integer;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 4095;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "p1_d8";
  attribute \MEM.PORTA.DATA_LSB\ : integer;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTA.DATA_MSB\ : integer;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 8;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTB.ADDRESS_END\ : integer;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 4095;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "p1_d8";
  attribute \MEM.PORTB.DATA_LSB\ : integer;
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTB.DATA_MSB\ : integer;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 8;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 36864;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "block";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 4095;
  attribute ram_offset : integer;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 8;
begin
  dbiterra <= \<const0>\;
  dbiterrb <= \<const0>\;
  douta(8) <= \<const0>\;
  douta(7) <= \<const0>\;
  douta(6) <= \<const0>\;
  douta(5) <= \<const0>\;
  douta(4) <= \<const0>\;
  douta(3) <= \<const0>\;
  douta(2) <= \<const0>\;
  douta(1) <= \<const0>\;
  douta(0) <= \<const0>\;
  sbiterra <= \<const0>\;
  sbiterrb <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_wr_a.gen_word_narrow.mem_reg\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
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
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"000",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"000",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000011111111",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => dina(8),
      DIPBDIP(3 downto 0) => B"0001",
      DOADO(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => doutb(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => doutb(8),
      ECCPARITY(7 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => wea(0),
      ENBWREN => enb,
      INJECTDBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_INJECTDBITERR_UNCONNECTED\,
      INJECTSBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_INJECTSBITERR_UNCONNECTED\,
      RDADDRECC(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => regceb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => rstb,
      SBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_usb_stream_0_0_xpm_memory_base__parameterized0\ is
  port (
    sleep : in STD_LOGIC;
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 13 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    injectsbiterra : in STD_LOGIC;
    injectdbiterra : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 8 downto 0 );
    sbiterra : out STD_LOGIC;
    dbiterra : out STD_LOGIC;
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 13 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    injectsbiterrb : in STD_LOGIC;
    injectdbiterrb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 8 downto 0 );
    sbiterrb : out STD_LOGIC;
    dbiterrb : out STD_LOGIC
  );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 14;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 14;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 9;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 9;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 1;
  attribute ECC_BIT_RANGE : string;
  attribute ECC_BIT_RANGE of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is "[7:0]";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 0;
  attribute ECC_TYPE : string;
  attribute ECC_TYPE of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is "NONE";
  attribute IGNORE_INIT_SYNTH : integer;
  attribute IGNORE_INIT_SYNTH of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 2;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 147456;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is "xpm_memory_base";
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 16384;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is "block";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 9;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 9;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 9;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 9;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 9;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 1;
  attribute P_NUM_COL_READ_A : integer;
  attribute P_NUM_COL_READ_A of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 1;
  attribute P_NUM_COL_READ_B : integer;
  attribute P_NUM_COL_READ_B of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 1;
  attribute P_NUM_COL_WRITE_A : integer;
  attribute P_NUM_COL_WRITE_A of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 1;
  attribute P_NUM_COL_WRITE_B : integer;
  attribute P_NUM_COL_WRITE_B of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is "no";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_COLL_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_COLL_A of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 1;
  attribute P_WIDTH_ADDR_LSB_READ_COLL_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_COLL_B of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 1;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_COLL_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_COLL_A of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 1;
  attribute P_WIDTH_ADDR_LSB_WRITE_COLL_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_COLL_B of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 1;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 14;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 14;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 14;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 14;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 9;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 9;
  attribute RAM_DECOMP : string;
  attribute RAM_DECOMP of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is "auto";
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 9;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 9;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 0;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 9;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 9;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 2;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is "soft";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 12;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ : entity is 12;
end \system_usb_stream_0_0_xpm_memory_base__parameterized0\;

architecture STRUCTURE of \system_usb_stream_0_0_xpm_memory_base__parameterized0\ is
  signal \<const0>\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_INJECTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_INJECTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_INJECTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_INJECTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_INJECTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_INJECTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_3_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_3_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_3_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_3_INJECTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_3_INJECTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_3_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_3_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_3_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_3_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_3_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_3_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_3_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_4_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_4_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_4_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_4_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \MEM.PORTA.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ : integer;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 16383;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is "p0_d2";
  attribute \MEM.PORTA.DATA_LSB\ : integer;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 0;
  attribute \MEM.PORTA.DATA_MSB\ : integer;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 1;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 0;
  attribute \MEM.PORTB.ADDRESS_END\ : integer;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 16383;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is "p0_d2";
  attribute \MEM.PORTB.DATA_LSB\ : integer;
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 0;
  attribute \MEM.PORTB.DATA_MSB\ : integer;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 1;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 147456;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is "block";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 16383;
  attribute ram_offset : integer;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 1;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 16383;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is "p0_d2";
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 2;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 3;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 0;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 16383;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is "p0_d2";
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 2;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 3;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 147456;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_STYLE of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is "block";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 16383;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 2;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 3;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 16383;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is "p0_d2";
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 4;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 5;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 0;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 16383;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is "p0_d2";
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 4;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 5;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 147456;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_STYLE of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is "block";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 16383;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 4;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 5;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_3\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_3\ : label is 16383;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_3\ : label is "p0_d2";
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_3\ : label is 6;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_3\ : label is 7;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_3\ : label is 0;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_3\ : label is 16383;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_3\ : label is "p0_d2";
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_3\ : label is 6;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_3\ : label is 7;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_3\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_3\ : label is 147456;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_3\ : label is "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_STYLE of \gen_wr_a.gen_word_narrow.mem_reg_3\ : label is "block";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_3\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_3\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_3\ : label is 16383;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_3\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_3\ : label is 6;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_3\ : label is 7;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_4\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_4\ : label is 16383;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_4\ : label is "p0_d1";
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_4\ : label is 8;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_4\ : label is 8;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_4\ : label is 0;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_4\ : label is 16383;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_4\ : label is "p0_d1";
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_4\ : label is 8;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_4\ : label is 8;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_4\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_4\ : label is 147456;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_4\ : label is "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_STYLE of \gen_wr_a.gen_word_narrow.mem_reg_4\ : label is "block";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_4\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_4\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_4\ : label is 16383;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_4\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_4\ : label is 8;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_4\ : label is 8;
begin
  dbiterra <= \<const0>\;
  dbiterrb <= \<const0>\;
  douta(8) <= \<const0>\;
  douta(7) <= \<const0>\;
  douta(6) <= \<const0>\;
  douta(5) <= \<const0>\;
  douta(4) <= \<const0>\;
  douta(3) <= \<const0>\;
  douta(2) <= \<const0>\;
  douta(1) <= \<const0>\;
  douta(0) <= \<const0>\;
  sbiterra <= \<const0>\;
  sbiterrb <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_wr_a.gen_word_narrow.mem_reg_0\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 2,
      READ_WIDTH_B => 2,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 2,
      WRITE_WIDTH_B => 2
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 1) => addra(13 downto 0),
      ADDRARDADDR(0) => '0',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 1) => addrb(13 downto 0),
      ADDRBWRADDR(0) => '0',
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DBITERR_UNCONNECTED\,
      DIADI(31 downto 2) => B"000000000000000000000000000000",
      DIADI(1 downto 0) => dina(1 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000011",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 2) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOBDO_UNCONNECTED\(31 downto 2),
      DOBDO(1 downto 0) => doutb(1 downto 0),
      DOPADOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => wea(0),
      ENBWREN => enb,
      INJECTDBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_INJECTDBITERR_UNCONNECTED\,
      INJECTSBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_INJECTSBITERR_UNCONNECTED\,
      RDADDRECC(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => regceb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => rstb,
      SBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
\gen_wr_a.gen_word_narrow.mem_reg_1\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 2,
      READ_WIDTH_B => 2,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 2,
      WRITE_WIDTH_B => 2
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 1) => addra(13 downto 0),
      ADDRARDADDR(0) => '0',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 1) => addrb(13 downto 0),
      ADDRBWRADDR(0) => '0',
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DBITERR_UNCONNECTED\,
      DIADI(31 downto 2) => B"000000000000000000000000000000",
      DIADI(1 downto 0) => dina(3 downto 2),
      DIBDI(31 downto 0) => B"00000000000000000000000000000011",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 2) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOBDO_UNCONNECTED\(31 downto 2),
      DOBDO(1 downto 0) => doutb(3 downto 2),
      DOPADOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => wea(0),
      ENBWREN => enb,
      INJECTDBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_INJECTDBITERR_UNCONNECTED\,
      INJECTSBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_INJECTSBITERR_UNCONNECTED\,
      RDADDRECC(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => regceb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => rstb,
      SBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
\gen_wr_a.gen_word_narrow.mem_reg_2\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 2,
      READ_WIDTH_B => 2,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 2,
      WRITE_WIDTH_B => 2
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 1) => addra(13 downto 0),
      ADDRARDADDR(0) => '0',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 1) => addrb(13 downto 0),
      ADDRBWRADDR(0) => '0',
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DBITERR_UNCONNECTED\,
      DIADI(31 downto 2) => B"000000000000000000000000000000",
      DIADI(1 downto 0) => dina(5 downto 4),
      DIBDI(31 downto 0) => B"00000000000000000000000000000011",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 2) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOBDO_UNCONNECTED\(31 downto 2),
      DOBDO(1 downto 0) => doutb(5 downto 4),
      DOPADOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => wea(0),
      ENBWREN => enb,
      INJECTDBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_INJECTDBITERR_UNCONNECTED\,
      INJECTSBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_INJECTSBITERR_UNCONNECTED\,
      RDADDRECC(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => regceb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => rstb,
      SBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
\gen_wr_a.gen_word_narrow.mem_reg_3\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 2,
      READ_WIDTH_B => 2,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 2,
      WRITE_WIDTH_B => 2
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 1) => addra(13 downto 0),
      ADDRARDADDR(0) => '0',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 1) => addrb(13 downto 0),
      ADDRBWRADDR(0) => '0',
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => \NLW_gen_wr_a.gen_word_narrow.mem_reg_3_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_gen_wr_a.gen_word_narrow.mem_reg_3_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_3_DBITERR_UNCONNECTED\,
      DIADI(31 downto 2) => B"000000000000000000000000000000",
      DIADI(1 downto 0) => dina(7 downto 6),
      DIBDI(31 downto 0) => B"00000000000000000000000000000011",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_3_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 2) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_3_DOBDO_UNCONNECTED\(31 downto 2),
      DOBDO(1 downto 0) => doutb(7 downto 6),
      DOPADOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_3_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_3_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_3_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => wea(0),
      ENBWREN => enb,
      INJECTDBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_3_INJECTDBITERR_UNCONNECTED\,
      INJECTSBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_3_INJECTSBITERR_UNCONNECTED\,
      RDADDRECC(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_3_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => regceb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => rstb,
      SBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_3_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
\gen_wr_a.gen_word_narrow.mem_reg_4\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(13 downto 0) => addra(13 downto 0),
      ADDRBWRADDR(13 downto 0) => addrb(13 downto 0),
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DIADI(15 downto 1) => B"000000000000000",
      DIADI(0) => dina(8),
      DIBDI(15 downto 0) => B"0000000000000001",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_4_DOADO_UNCONNECTED\(15 downto 0),
      DOBDO(15 downto 1) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_4_DOBDO_UNCONNECTED\(15 downto 1),
      DOBDO(0) => doutb(8),
      DOPADOP(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_4_DOPADOP_UNCONNECTED\(1 downto 0),
      DOPBDOP(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_4_DOPBDOP_UNCONNECTED\(1 downto 0),
      ENARDEN => wea(0),
      ENBWREN => enb,
      REGCEAREGCE => '0',
      REGCEB => regceb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => rstb,
      WEA(1) => wea(0),
      WEA(0) => '1',
      WEBWE(3 downto 0) => B"0000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_usb_stream_0_0_xpm_fifo_rst is
  port (
    \gen_rst_ic.fifo_rd_rst_ic_reg_0\ : out STD_LOGIC;
    wrst_busy : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    wr_rst_busy : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \count_value_i_reg[13]\ : in STD_LOGIC;
    rst_d1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_usb_stream_0_0_xpm_fifo_rst : entity is "xpm_fifo_rst";
end system_usb_stream_0_0_xpm_fifo_rst;

architecture STRUCTURE of system_usb_stream_0_0_xpm_fifo_rst is
  signal \/i__n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\ : signal is "yes";
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\ : signal is "yes";
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\ : signal is "yes";
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\ : signal is "yes";
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\ : signal is "yes";
  signal \gen_rst_ic.curr_rrst_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP of \gen_rst_ic.curr_rrst_state\ : signal is "yes";
  signal \gen_rst_ic.fifo_rd_rst_i\ : STD_LOGIC;
  signal \^gen_rst_ic.fifo_rd_rst_ic_reg_0\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_rd_rst_wr_i\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_ic\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_ic_i_3_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_rd\ : STD_LOGIC;
  signal \gen_rst_ic.next_rrst_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_rst_ic.rst_seq_reentered_i_1_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.rst_seq_reentered_i_2_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.rst_seq_reentered_reg_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.wr_rst_busy_ic_i_1_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.wr_rst_busy_ic_i_2_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \power_on_rst_reg_n_0_[0]\ : STD_LOGIC;
  signal \rst_i__0\ : STD_LOGIC;
  signal \^wrst_busy\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0]\ : label is "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11";
  attribute KEEP of \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1]\ : label is "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11";
  attribute KEEP of \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_rst_ic.fifo_wr_rst_ic_i_2\ : label is "soft_lutpair50";
  attribute DEF_VAL : string;
  attribute DEF_VAL of \gen_rst_ic.rrst_wr_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \gen_rst_ic.rrst_wr_inst\ : label is 2;
  attribute INIT : string;
  attribute INIT of \gen_rst_ic.rrst_wr_inst\ : label is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \gen_rst_ic.rrst_wr_inst\ : label is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \gen_rst_ic.rrst_wr_inst\ : label is 0;
  attribute VERSION : integer;
  attribute VERSION of \gen_rst_ic.rrst_wr_inst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \gen_rst_ic.rrst_wr_inst\ : label is "SYNC_RST";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \gen_rst_ic.rrst_wr_inst\ : label is "TRUE";
  attribute SOFT_HLUTNM of \gen_rst_ic.rst_seq_reentered_i_1\ : label is "soft_lutpair50";
  attribute DEF_VAL of \gen_rst_ic.wrst_rd_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF of \gen_rst_ic.wrst_rd_inst\ : label is 2;
  attribute INIT of \gen_rst_ic.wrst_rd_inst\ : label is "0";
  attribute INIT_SYNC_FF of \gen_rst_ic.wrst_rd_inst\ : label is 1;
  attribute SIM_ASSERT_CHK of \gen_rst_ic.wrst_rd_inst\ : label is 0;
  attribute VERSION of \gen_rst_ic.wrst_rd_inst\ : label is 0;
  attribute XPM_CDC of \gen_rst_ic.wrst_rd_inst\ : label is "SYNC_RST";
  attribute XPM_MODULE of \gen_rst_ic.wrst_rd_inst\ : label is "TRUE";
begin
  \gen_rst_ic.fifo_rd_rst_ic_reg_0\ <= \^gen_rst_ic.fifo_rd_rst_ic_reg_0\;
  wrst_busy <= \^wrst_busy\;
\/i_\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010116"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      O => \/i__n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03030200FFFFFFFF"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I1 => p_0_in,
      I2 => rst,
      I3 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I5 => \/i__n_0\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFEFEEE"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I3 => rst,
      I4 => p_0_in,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0EEE0FFFFEEE0"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I2 => rst,
      I3 => p_0_in,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I5 => \gen_rst_ic.fifo_rd_rst_wr_i\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000C0008"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I1 => \gen_rst_ic.fifo_rd_rst_wr_i\,
      I2 => rst,
      I3 => p_0_in,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004400000044"
    )
        port map (
      I0 => \gen_rst_ic.fifo_rd_rst_wr_i\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I2 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      I3 => rst,
      I4 => p_0_in,
      I5 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \/i__n_0\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I1 => p_0_in,
      I2 => rst,
      I3 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      R => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      R => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      R => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      R => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_sequential_gen_rst_ic.curr_rrst_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gen_rst_ic.curr_rrst_state\(0),
      I1 => \gen_rst_ic.curr_rrst_state\(1),
      O => \gen_rst_ic.next_rrst_state\(1)
    );
\FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_rst_ic.next_rrst_state\(0),
      Q => \gen_rst_ic.curr_rrst_state\(0),
      R => '0'
    );
\FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_rst_ic.next_rrst_state\(1),
      Q => \gen_rst_ic.curr_rrst_state\(1),
      R => '0'
    );
\__0/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \gen_rst_ic.fifo_wr_rst_rd\,
      I1 => \gen_rst_ic.curr_rrst_state\(1),
      I2 => \gen_rst_ic.curr_rrst_state\(0),
      O => \gen_rst_ic.next_rrst_state\(0)
    );
\gen_rst_ic.fifo_rd_rst_ic_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3E"
    )
        port map (
      I0 => \gen_rst_ic.fifo_wr_rst_rd\,
      I1 => \gen_rst_ic.curr_rrst_state\(1),
      I2 => \gen_rst_ic.curr_rrst_state\(0),
      O => \gen_rst_ic.fifo_rd_rst_i\
    );
\gen_rst_ic.fifo_rd_rst_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_rst_ic.fifo_rd_rst_i\,
      Q => \^gen_rst_ic.fifo_rd_rst_ic_reg_0\,
      R => '0'
    );
\gen_rst_ic.fifo_wr_rst_ic_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAFFFFFFEA0000"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I2 => \rst_i__0\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I4 => \gen_rst_ic.fifo_wr_rst_ic_i_3_n_0\,
      I5 => \gen_rst_ic.fifo_wr_rst_ic\,
      O => \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0\
    );
\gen_rst_ic.fifo_wr_rst_ic_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in,
      I1 => rst,
      O => \rst_i__0\
    );
\gen_rst_ic.fifo_wr_rst_ic_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010116"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      O => \gen_rst_ic.fifo_wr_rst_ic_i_3_n_0\
    );
\gen_rst_ic.fifo_wr_rst_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0\,
      Q => \gen_rst_ic.fifo_wr_rst_ic\,
      R => '0'
    );
\gen_rst_ic.rrst_wr_inst\: entity work.system_usb_stream_0_0_xpm_cdc_sync_rst
     port map (
      dest_clk => wr_clk,
      dest_rst => \gen_rst_ic.fifo_rd_rst_wr_i\,
      src_rst => \^gen_rst_ic.fifo_rd_rst_ic_reg_0\
    );
\gen_rst_ic.rst_seq_reentered_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \gen_rst_ic.rst_seq_reentered_i_2_n_0\,
      I1 => rst,
      I2 => p_0_in,
      O => \gen_rst_ic.rst_seq_reentered_i_1_n_0\
    );
\gen_rst_ic.rst_seq_reentered_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00010000"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      I5 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      O => \gen_rst_ic.rst_seq_reentered_i_2_n_0\
    );
\gen_rst_ic.rst_seq_reentered_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_ic.rst_seq_reentered_i_1_n_0\,
      Q => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      R => '0'
    );
\gen_rst_ic.wr_rst_busy_ic_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFEF00"
    )
        port map (
      I0 => rst,
      I1 => p_0_in,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I3 => \gen_rst_ic.wr_rst_busy_ic_i_2_n_0\,
      I4 => \^wrst_busy\,
      O => \gen_rst_ic.wr_rst_busy_ic_i_1_n_0\
    );
\gen_rst_ic.wr_rst_busy_ic_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000116"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      O => \gen_rst_ic.wr_rst_busy_ic_i_2_n_0\
    );
\gen_rst_ic.wr_rst_busy_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_ic.wr_rst_busy_ic_i_1_n_0\,
      Q => \^wrst_busy\,
      R => '0'
    );
\gen_rst_ic.wrst_rd_inst\: entity work.\system_usb_stream_0_0_xpm_cdc_sync_rst__2\
     port map (
      dest_clk => rd_clk,
      dest_rst => \gen_rst_ic.fifo_wr_rst_rd\,
      src_rst => \gen_rst_ic.fifo_wr_rst_ic\
    );
\gen_sdpram.xpm_memory_base_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => wr_en,
      I1 => \count_value_i_reg[13]\,
      I2 => \^wrst_busy\,
      I3 => rst_d1,
      O => E(0)
    );
\power_on_rst_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      Q => \power_on_rst_reg_n_0_[0]\,
      R => '0'
    );
\power_on_rst_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \power_on_rst_reg_n_0_[0]\,
      Q => p_0_in,
      R => '0'
    );
wr_rst_busy_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^wrst_busy\,
      I1 => rst_d1,
      O => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_usb_stream_0_0_xpm_fifo_rst_8 is
  port (
    \gen_rst_ic.fifo_rd_rst_ic_reg_0\ : out STD_LOGIC;
    wrst_busy : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    wr_rst_busy : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \count_value_i_reg[11]\ : in STD_LOGIC;
    rst_d1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_usb_stream_0_0_xpm_fifo_rst_8 : entity is "xpm_fifo_rst";
end system_usb_stream_0_0_xpm_fifo_rst_8;

architecture STRUCTURE of system_usb_stream_0_0_xpm_fifo_rst_8 is
  signal \/i__n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\ : signal is "yes";
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\ : signal is "yes";
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\ : signal is "yes";
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\ : signal is "yes";
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\ : signal is "yes";
  signal \gen_rst_ic.curr_rrst_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP of \gen_rst_ic.curr_rrst_state\ : signal is "yes";
  signal \gen_rst_ic.fifo_rd_rst_i\ : STD_LOGIC;
  signal \^gen_rst_ic.fifo_rd_rst_ic_reg_0\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_rd_rst_wr_i\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_ic\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_ic_i_3_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_rd\ : STD_LOGIC;
  signal \gen_rst_ic.next_rrst_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_rst_ic.rst_seq_reentered_i_1_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.rst_seq_reentered_i_2_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.rst_seq_reentered_reg_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.wr_rst_busy_ic_i_1_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.wr_rst_busy_ic_i_2_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \power_on_rst_reg_n_0_[0]\ : STD_LOGIC;
  signal \rst_i__0\ : STD_LOGIC;
  signal \^wrst_busy\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0]\ : label is "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11";
  attribute KEEP of \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1]\ : label is "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11";
  attribute KEEP of \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_rst_ic.fifo_wr_rst_ic_i_2\ : label is "soft_lutpair22";
  attribute DEF_VAL : string;
  attribute DEF_VAL of \gen_rst_ic.rrst_wr_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \gen_rst_ic.rrst_wr_inst\ : label is 2;
  attribute INIT : string;
  attribute INIT of \gen_rst_ic.rrst_wr_inst\ : label is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \gen_rst_ic.rrst_wr_inst\ : label is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \gen_rst_ic.rrst_wr_inst\ : label is 0;
  attribute VERSION : integer;
  attribute VERSION of \gen_rst_ic.rrst_wr_inst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \gen_rst_ic.rrst_wr_inst\ : label is "SYNC_RST";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \gen_rst_ic.rrst_wr_inst\ : label is "TRUE";
  attribute SOFT_HLUTNM of \gen_rst_ic.rst_seq_reentered_i_1\ : label is "soft_lutpair22";
  attribute DEF_VAL of \gen_rst_ic.wrst_rd_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF of \gen_rst_ic.wrst_rd_inst\ : label is 2;
  attribute INIT of \gen_rst_ic.wrst_rd_inst\ : label is "0";
  attribute INIT_SYNC_FF of \gen_rst_ic.wrst_rd_inst\ : label is 1;
  attribute SIM_ASSERT_CHK of \gen_rst_ic.wrst_rd_inst\ : label is 0;
  attribute VERSION of \gen_rst_ic.wrst_rd_inst\ : label is 0;
  attribute XPM_CDC of \gen_rst_ic.wrst_rd_inst\ : label is "SYNC_RST";
  attribute XPM_MODULE of \gen_rst_ic.wrst_rd_inst\ : label is "TRUE";
begin
  \gen_rst_ic.fifo_rd_rst_ic_reg_0\ <= \^gen_rst_ic.fifo_rd_rst_ic_reg_0\;
  wrst_busy <= \^wrst_busy\;
\/i_\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010116"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      O => \/i__n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03030200FFFFFFFF"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I1 => p_0_in,
      I2 => rst,
      I3 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I5 => \/i__n_0\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFEFEEE"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I3 => rst,
      I4 => p_0_in,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0EEE0FFFFEEE0"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I2 => rst,
      I3 => p_0_in,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I5 => \gen_rst_ic.fifo_rd_rst_wr_i\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000C0008"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I1 => \gen_rst_ic.fifo_rd_rst_wr_i\,
      I2 => rst,
      I3 => p_0_in,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004400000044"
    )
        port map (
      I0 => \gen_rst_ic.fifo_rd_rst_wr_i\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I2 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      I3 => rst,
      I4 => p_0_in,
      I5 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \/i__n_0\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I1 => p_0_in,
      I2 => rst,
      I3 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      R => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      R => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      R => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      R => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_sequential_gen_rst_ic.curr_rrst_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gen_rst_ic.curr_rrst_state\(0),
      I1 => \gen_rst_ic.curr_rrst_state\(1),
      O => \gen_rst_ic.next_rrst_state\(1)
    );
\FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_rst_ic.next_rrst_state\(0),
      Q => \gen_rst_ic.curr_rrst_state\(0),
      R => '0'
    );
\FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_rst_ic.next_rrst_state\(1),
      Q => \gen_rst_ic.curr_rrst_state\(1),
      R => '0'
    );
\__0/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \gen_rst_ic.fifo_wr_rst_rd\,
      I1 => \gen_rst_ic.curr_rrst_state\(1),
      I2 => \gen_rst_ic.curr_rrst_state\(0),
      O => \gen_rst_ic.next_rrst_state\(0)
    );
\gen_rst_ic.fifo_rd_rst_ic_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3E"
    )
        port map (
      I0 => \gen_rst_ic.fifo_wr_rst_rd\,
      I1 => \gen_rst_ic.curr_rrst_state\(1),
      I2 => \gen_rst_ic.curr_rrst_state\(0),
      O => \gen_rst_ic.fifo_rd_rst_i\
    );
\gen_rst_ic.fifo_rd_rst_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_rst_ic.fifo_rd_rst_i\,
      Q => \^gen_rst_ic.fifo_rd_rst_ic_reg_0\,
      R => '0'
    );
\gen_rst_ic.fifo_wr_rst_ic_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAFFFFFFEA0000"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I2 => \rst_i__0\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I4 => \gen_rst_ic.fifo_wr_rst_ic_i_3_n_0\,
      I5 => \gen_rst_ic.fifo_wr_rst_ic\,
      O => \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0\
    );
\gen_rst_ic.fifo_wr_rst_ic_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in,
      I1 => rst,
      O => \rst_i__0\
    );
\gen_rst_ic.fifo_wr_rst_ic_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010116"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      O => \gen_rst_ic.fifo_wr_rst_ic_i_3_n_0\
    );
\gen_rst_ic.fifo_wr_rst_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0\,
      Q => \gen_rst_ic.fifo_wr_rst_ic\,
      R => '0'
    );
\gen_rst_ic.rrst_wr_inst\: entity work.\system_usb_stream_0_0_xpm_cdc_sync_rst__1\
     port map (
      dest_clk => wr_clk,
      dest_rst => \gen_rst_ic.fifo_rd_rst_wr_i\,
      src_rst => \^gen_rst_ic.fifo_rd_rst_ic_reg_0\
    );
\gen_rst_ic.rst_seq_reentered_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \gen_rst_ic.rst_seq_reentered_i_2_n_0\,
      I1 => rst,
      I2 => p_0_in,
      O => \gen_rst_ic.rst_seq_reentered_i_1_n_0\
    );
\gen_rst_ic.rst_seq_reentered_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00010000"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      I5 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      O => \gen_rst_ic.rst_seq_reentered_i_2_n_0\
    );
\gen_rst_ic.rst_seq_reentered_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_ic.rst_seq_reentered_i_1_n_0\,
      Q => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      R => '0'
    );
\gen_rst_ic.wr_rst_busy_ic_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFEF00"
    )
        port map (
      I0 => rst,
      I1 => p_0_in,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I3 => \gen_rst_ic.wr_rst_busy_ic_i_2_n_0\,
      I4 => \^wrst_busy\,
      O => \gen_rst_ic.wr_rst_busy_ic_i_1_n_0\
    );
\gen_rst_ic.wr_rst_busy_ic_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000116"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      O => \gen_rst_ic.wr_rst_busy_ic_i_2_n_0\
    );
\gen_rst_ic.wr_rst_busy_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_ic.wr_rst_busy_ic_i_1_n_0\,
      Q => \^wrst_busy\,
      R => '0'
    );
\gen_rst_ic.wrst_rd_inst\: entity work.\system_usb_stream_0_0_xpm_cdc_sync_rst__3\
     port map (
      dest_clk => rd_clk,
      dest_rst => \gen_rst_ic.fifo_wr_rst_rd\,
      src_rst => \gen_rst_ic.fifo_wr_rst_ic\
    );
\gen_sdpram.xpm_memory_base_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => wr_en,
      I1 => \count_value_i_reg[11]\,
      I2 => \^wrst_busy\,
      I3 => rst_d1,
      O => E(0)
    );
\power_on_rst_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      Q => \power_on_rst_reg_n_0_[0]\,
      R => '0'
    );
\power_on_rst_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \power_on_rst_reg_n_0_[0]\,
      Q => p_0_in,
      R => '0'
    );
wr_rst_busy_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^wrst_busy\,
      I1 => rst_d1,
      O => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_usb_stream_0_0_xpm_fifo_base is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 8 downto 0 );
    full : out STD_LOGIC;
    full_n : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 0 to 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 8 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 0 to 0 );
    underflow : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC
  );
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of system_usb_stream_0_0_xpm_fifo_base : entity is 0;
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of system_usb_stream_0_0_xpm_fifo_base : entity is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of system_usb_stream_0_0_xpm_fifo_base : entity is 0;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of system_usb_stream_0_0_xpm_fifo_base : entity is "0";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of system_usb_stream_0_0_xpm_fifo_base : entity is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of system_usb_stream_0_0_xpm_fifo_base : entity is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of system_usb_stream_0_0_xpm_fifo_base : entity is "16'b0000000000000010";
  attribute EN_AE : string;
  attribute EN_AE of system_usb_stream_0_0_xpm_fifo_base : entity is "1'b0";
  attribute EN_AF : string;
  attribute EN_AF of system_usb_stream_0_0_xpm_fifo_base : entity is "1'b0";
  attribute EN_DVLD : string;
  attribute EN_DVLD of system_usb_stream_0_0_xpm_fifo_base : entity is "1'b0";
  attribute EN_OF : string;
  attribute EN_OF of system_usb_stream_0_0_xpm_fifo_base : entity is "1'b0";
  attribute EN_PE : string;
  attribute EN_PE of system_usb_stream_0_0_xpm_fifo_base : entity is "1'b0";
  attribute EN_PF : string;
  attribute EN_PF of system_usb_stream_0_0_xpm_fifo_base : entity is "1'b1";
  attribute EN_RDC : string;
  attribute EN_RDC of system_usb_stream_0_0_xpm_fifo_base : entity is "1'b0";
  attribute EN_SIM_ASSERT_ERR : string;
  attribute EN_SIM_ASSERT_ERR of system_usb_stream_0_0_xpm_fifo_base : entity is "warning";
  attribute EN_UF : string;
  attribute EN_UF of system_usb_stream_0_0_xpm_fifo_base : entity is "1'b0";
  attribute EN_WACK : string;
  attribute EN_WACK of system_usb_stream_0_0_xpm_fifo_base : entity is "1'b0";
  attribute EN_WDC : string;
  attribute EN_WDC of system_usb_stream_0_0_xpm_fifo_base : entity is "1'b0";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of system_usb_stream_0_0_xpm_fifo_base : entity is "1'b0";
  attribute FIFO_MEMORY_TYPE : integer;
  attribute FIFO_MEMORY_TYPE of system_usb_stream_0_0_xpm_fifo_base : entity is 2;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of system_usb_stream_0_0_xpm_fifo_base : entity is 2;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of system_usb_stream_0_0_xpm_fifo_base : entity is 4096;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of system_usb_stream_0_0_xpm_fifo_base : entity is 0;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of system_usb_stream_0_0_xpm_fifo_base : entity is 36864;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of system_usb_stream_0_0_xpm_fifo_base : entity is 4096;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of system_usb_stream_0_0_xpm_fifo_base : entity is 0;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of system_usb_stream_0_0_xpm_fifo_base : entity is "1'b0";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_usb_stream_0_0_xpm_fifo_base : entity is "xpm_fifo_base";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of system_usb_stream_0_0_xpm_fifo_base : entity is 8;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of system_usb_stream_0_0_xpm_fifo_base : entity is 4091;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of system_usb_stream_0_0_xpm_fifo_base : entity is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of system_usb_stream_0_0_xpm_fifo_base : entity is 3070;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of system_usb_stream_0_0_xpm_fifo_base : entity is 4091;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of system_usb_stream_0_0_xpm_fifo_base : entity is 7;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of system_usb_stream_0_0_xpm_fifo_base : entity is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of system_usb_stream_0_0_xpm_fifo_base : entity is 3072;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of system_usb_stream_0_0_xpm_fifo_base : entity is 1;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of system_usb_stream_0_0_xpm_fifo_base : entity is 13;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of system_usb_stream_0_0_xpm_fifo_base : entity is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of system_usb_stream_0_0_xpm_fifo_base : entity is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of system_usb_stream_0_0_xpm_fifo_base : entity is 12;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of system_usb_stream_0_0_xpm_fifo_base : entity is 9;
  attribute READ_MODE : integer;
  attribute READ_MODE of system_usb_stream_0_0_xpm_fifo_base : entity is 1;
  attribute READ_MODE_LL : integer;
  attribute READ_MODE_LL of system_usb_stream_0_0_xpm_fifo_base : entity is 1;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of system_usb_stream_0_0_xpm_fifo_base : entity is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of system_usb_stream_0_0_xpm_fifo_base : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of system_usb_stream_0_0_xpm_fifo_base : entity is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of system_usb_stream_0_0_xpm_fifo_base : entity is "0002";
  attribute VERSION : integer;
  attribute VERSION of system_usb_stream_0_0_xpm_fifo_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of system_usb_stream_0_0_xpm_fifo_base : entity is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of system_usb_stream_0_0_xpm_fifo_base : entity is 1;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of system_usb_stream_0_0_xpm_fifo_base : entity is 9;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of system_usb_stream_0_0_xpm_fifo_base : entity is 1;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of system_usb_stream_0_0_xpm_fifo_base : entity is 13;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of system_usb_stream_0_0_xpm_fifo_base : entity is 12;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of system_usb_stream_0_0_xpm_fifo_base : entity is 12;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of system_usb_stream_0_0_xpm_fifo_base : entity is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of system_usb_stream_0_0_xpm_fifo_base : entity is 4;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of system_usb_stream_0_0_xpm_fifo_base : entity is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of system_usb_stream_0_0_xpm_fifo_base : entity is 3;
  attribute invalid : integer;
  attribute invalid of system_usb_stream_0_0_xpm_fifo_base : entity is 0;
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of system_usb_stream_0_0_xpm_fifo_base : entity is "soft";
  attribute stage1_valid : integer;
  attribute stage1_valid of system_usb_stream_0_0_xpm_fifo_base : entity is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of system_usb_stream_0_0_xpm_fifo_base : entity is 1;
end system_usb_stream_0_0_xpm_fifo_base;

architecture STRUCTURE of system_usb_stream_0_0_xpm_fifo_base is
  signal \<const0>\ : STD_LOGIC;
  signal count_value_i : STD_LOGIC_VECTOR ( 0 to 0 );
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal diff_pntr_pf_q : STD_LOGIC_VECTOR ( 12 downto 2 );
  signal diff_pntr_pf_q0 : STD_LOGIC_VECTOR ( 12 downto 2 );
  signal \^empty\ : STD_LOGIC;
  signal empty_fwft_i0 : STD_LOGIC;
  signal \^full\ : STD_LOGIC;
  signal \gen_fwft.ram_regout_en\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_0\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_1\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_10\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_11\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_12\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_2\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_4\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_5\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_6\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_7\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_8\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_9\ : STD_LOGIC;
  signal \next_fwft_state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_out : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \^prog_full\ : STD_LOGIC;
  signal ram_empty_i : STD_LOGIC;
  signal ram_empty_i0 : STD_LOGIC;
  signal ram_full_i0 : STD_LOGIC;
  signal rd_pntr_ext : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal rd_pntr_wr : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal rd_pntr_wr_cdc : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \^rd_rst_busy\ : STD_LOGIC;
  signal rdp_inst_n_0 : STD_LOGIC;
  signal rdp_inst_n_26 : STD_LOGIC;
  signal rdpp1_inst_n_0 : STD_LOGIC;
  signal rdpp1_inst_n_1 : STD_LOGIC;
  signal rdpp1_inst_n_10 : STD_LOGIC;
  signal rdpp1_inst_n_11 : STD_LOGIC;
  signal rdpp1_inst_n_2 : STD_LOGIC;
  signal rdpp1_inst_n_3 : STD_LOGIC;
  signal rdpp1_inst_n_4 : STD_LOGIC;
  signal rdpp1_inst_n_5 : STD_LOGIC;
  signal rdpp1_inst_n_6 : STD_LOGIC;
  signal rdpp1_inst_n_7 : STD_LOGIC;
  signal rdpp1_inst_n_8 : STD_LOGIC;
  signal rdpp1_inst_n_9 : STD_LOGIC;
  signal rst_d1 : STD_LOGIC;
  signal rst_d1_inst_n_1 : STD_LOGIC;
  signal rst_d1_inst_n_2 : STD_LOGIC;
  signal rst_d1_inst_n_3 : STD_LOGIC;
  signal rst_d1_inst_n_4 : STD_LOGIC;
  signal wr_pntr_ext : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal wr_pntr_plus1_pf : STD_LOGIC_VECTOR ( 12 downto 1 );
  signal wr_pntr_plus1_pf_carry : STD_LOGIC;
  signal wr_pntr_rd_cdc : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal wrpp2_inst_n_0 : STD_LOGIC;
  signal wrpp2_inst_n_1 : STD_LOGIC;
  signal wrpp2_inst_n_10 : STD_LOGIC;
  signal wrpp2_inst_n_11 : STD_LOGIC;
  signal wrpp2_inst_n_2 : STD_LOGIC;
  signal wrpp2_inst_n_3 : STD_LOGIC;
  signal wrpp2_inst_n_4 : STD_LOGIC;
  signal wrpp2_inst_n_5 : STD_LOGIC;
  signal wrpp2_inst_n_6 : STD_LOGIC;
  signal wrpp2_inst_n_7 : STD_LOGIC;
  signal wrpp2_inst_n_8 : STD_LOGIC;
  signal wrpp2_inst_n_9 : STD_LOGIC;
  signal wrst_busy : STD_LOGIC;
  signal \NLW_gen_cdc_pntr.rd_pntr_cdc_dc_inst_dest_out_bin_UNCONNECTED\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \NLW_gen_cdc_pntr.wr_pntr_cdc_dc_inst_dest_out_bin_UNCONNECTED\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1\ : label is "soft_lutpair23";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 1;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 13;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 2;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 1;
  attribute REG_OUTPUT of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 12;
  attribute XPM_CDC of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 4;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 1;
  attribute REG_OUTPUT of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 13;
  attribute XPM_CDC of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 2;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 1;
  attribute REG_OUTPUT of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 12;
  attribute XPM_CDC of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is "TRUE";
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 12;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 12;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute CASCADE_HEIGHT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute ECC_BIT_RANGE : string;
  attribute ECC_BIT_RANGE of \gen_sdpram.xpm_memory_base_inst\ : label is "[7:0]";
  attribute ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute ECC_TYPE : string;
  attribute ECC_TYPE of \gen_sdpram.xpm_memory_base_inst\ : label is "NONE";
  attribute IGNORE_INIT_SYNTH : integer;
  attribute IGNORE_INIT_SYNTH of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute KEEP_HIERARCHY of \gen_sdpram.xpm_memory_base_inst\ : label is "SOFT";
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE\ : boolean;
  attribute \MEM.ADDRESS_SPACE\ of \gen_sdpram.xpm_memory_base_inst\ : label is std.standard.true;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ : integer;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute \MEM.ADDRESS_SPACE_END\ : integer;
  attribute \MEM.ADDRESS_SPACE_END\ of \gen_sdpram.xpm_memory_base_inst\ : label is 4095;
  attribute \MEM.CORE_MEMORY_WIDTH\ : integer;
  attribute \MEM.CORE_MEMORY_WIDTH\ of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of \gen_sdpram.xpm_memory_base_inst\ : label is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of \gen_sdpram.xpm_memory_base_inst\ : label is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of \gen_sdpram.xpm_memory_base_inst\ : label is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of \gen_sdpram.xpm_memory_base_inst\ : label is 36864;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 4096;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is "block";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_COL_READ_A : integer;
  attribute P_NUM_COL_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_COL_READ_B : integer;
  attribute P_NUM_COL_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_COL_WRITE_A : integer;
  attribute P_NUM_COL_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_COL_WRITE_B : integer;
  attribute P_NUM_COL_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "no";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_READ_COLL_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_COLL_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_WIDTH_ADDR_LSB_READ_COLL_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_COLL_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_COLL_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_COLL_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_WIDTH_ADDR_LSB_WRITE_COLL_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_COLL_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 12;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 12;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 12;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 12;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute RAM_DECOMP : string;
  attribute RAM_DECOMP of \gen_sdpram.xpm_memory_base_inst\ : label is "auto";
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute SIM_ASSERT_CHK of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute VERSION of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WAKEUP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute XPM_MODULE of \gen_sdpram.xpm_memory_base_inst\ : label is "TRUE";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 12;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 12;
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  data_valid <= \<const0>\;
  dbiterr <= \<const0>\;
  empty <= \^empty\;
  full <= \^full\;
  full_n <= \<const0>\;
  overflow <= \<const0>\;
  prog_empty <= \<const0>\;
  prog_full <= \^prog_full\;
  rd_data_count(0) <= \<const0>\;
  rd_rst_busy <= \^rd_rst_busy\;
  sbiterr <= \<const0>\;
  underflow <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_data_count(0) <= \<const0>\;
\FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A85"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => rd_en,
      I2 => curr_fwft_state(1),
      I3 => ram_empty_i,
      O => \next_fwft_state__0\(0)
    );
\FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3FF0"
    )
        port map (
      I0 => ram_empty_i,
      I1 => rd_en,
      I2 => curr_fwft_state(1),
      I3 => curr_fwft_state(0),
      O => \next_fwft_state__0\(1)
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \next_fwft_state__0\(0),
      Q => curr_fwft_state(0),
      R => \^rd_rst_busy\
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \next_fwft_state__0\(1),
      Q => curr_fwft_state(1),
      R => \^rd_rst_busy\
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst\: entity work.\system_usb_stream_0_0_xpm_cdc_gray__parameterized1\
     port map (
      dest_clk => wr_clk,
      dest_out_bin(12 downto 0) => \NLW_gen_cdc_pntr.rd_pntr_cdc_dc_inst_dest_out_bin_UNCONNECTED\(12 downto 0),
      src_clk => rd_clk,
      src_in_bin(12 downto 0) => p_1_out(12 downto 0)
    );
\gen_cdc_pntr.rd_pntr_cdc_inst\: entity work.system_usb_stream_0_0_xpm_cdc_gray
     port map (
      dest_clk => wr_clk,
      dest_out_bin(11 downto 0) => rd_pntr_wr_cdc(11 downto 0),
      src_clk => rd_clk,
      src_in_bin(11 downto 0) => rd_pntr_ext(11 downto 0)
    );
\gen_cdc_pntr.rpw_gray_reg\: entity work.system_usb_stream_0_0_xpm_fifo_reg_vec
     port map (
      D(11 downto 0) => rd_pntr_wr_cdc(11 downto 0),
      Q(11 downto 0) => rd_pntr_wr(11 downto 0),
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\ => \^full\,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(11) => wrpp2_inst_n_0,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(10) => wrpp2_inst_n_1,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(9) => wrpp2_inst_n_2,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(8) => wrpp2_inst_n_3,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(7) => wrpp2_inst_n_4,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(6) => wrpp2_inst_n_5,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(5) => wrpp2_inst_n_6,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(4) => wrpp2_inst_n_7,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(3) => wrpp2_inst_n_8,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(2) => wrpp2_inst_n_9,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(1) => wrpp2_inst_n_10,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(0) => wrpp2_inst_n_11,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_0\(11 downto 0) => wr_pntr_plus1_pf(12 downto 1),
      ram_full_i0 => ram_full_i0,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wrst_busy => wrst_busy
    );
\gen_cdc_pntr.wpr_gray_reg\: entity work.system_usb_stream_0_0_xpm_fifo_reg_vec_3
     port map (
      D(11 downto 0) => wr_pntr_rd_cdc(11 downto 0),
      Q(1 downto 0) => curr_fwft_state(1 downto 0),
      \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(11) => rdpp1_inst_n_0,
      \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(10) => rdpp1_inst_n_1,
      \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(9) => rdpp1_inst_n_2,
      \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(8) => rdpp1_inst_n_3,
      \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(7) => rdpp1_inst_n_4,
      \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(6) => rdpp1_inst_n_5,
      \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(5) => rdpp1_inst_n_6,
      \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(4) => rdpp1_inst_n_7,
      \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(3) => rdpp1_inst_n_8,
      \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(2) => rdpp1_inst_n_9,
      \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(1) => rdpp1_inst_n_10,
      \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(0) => rdpp1_inst_n_11,
      \gen_pf_ic_rc.ram_empty_i_reg_i_3_0\(11 downto 0) => rd_pntr_ext(11 downto 0),
      ram_empty_i => ram_empty_i,
      ram_empty_i0 => ram_empty_i0,
      rd_clk => rd_clk,
      rd_en => rd_en,
      \reg_out_i_reg[11]_0\ => \^rd_rst_busy\
    );
\gen_cdc_pntr.wr_pntr_cdc_dc_inst\: entity work.\system_usb_stream_0_0_xpm_cdc_gray__parameterized0\
     port map (
      dest_clk => rd_clk,
      dest_out_bin(12 downto 0) => \NLW_gen_cdc_pntr.wr_pntr_cdc_dc_inst_dest_out_bin_UNCONNECTED\(12 downto 0),
      src_clk => wr_clk,
      src_in_bin(12 downto 0) => wr_pntr_ext(12 downto 0)
    );
\gen_cdc_pntr.wr_pntr_cdc_inst\: entity work.\system_usb_stream_0_0_xpm_cdc_gray__1\
     port map (
      dest_clk => rd_clk,
      dest_out_bin(11 downto 0) => wr_pntr_rd_cdc(11 downto 0),
      src_clk => wr_clk,
      src_in_bin(11 downto 0) => wr_pntr_ext(11 downto 0)
    );
\gen_fwft.empty_fwft_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F380"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(0),
      I2 => curr_fwft_state(1),
      I3 => \^empty\,
      O => empty_fwft_i0
    );
\gen_fwft.empty_fwft_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => empty_fwft_i0,
      Q => \^empty\,
      S => \^rd_rst_busy\
    );
\gen_fwft.rdpp1_inst\: entity work.system_usb_stream_0_0_xpm_counter_updn_4
     port map (
      Q(11) => rdp_inst_n_0,
      Q(10 downto 0) => rd_pntr_ext(11 downto 1),
      S(2) => \gen_fwft.rdpp1_inst_n_0\,
      S(1) => \gen_fwft.rdpp1_inst_n_1\,
      S(0) => \gen_fwft.rdpp1_inst_n_2\,
      \count_value_i_reg[0]_0\(0) => count_value_i(0),
      \count_value_i_reg[11]\(3) => \gen_fwft.rdpp1_inst_n_8\,
      \count_value_i_reg[11]\(2) => \gen_fwft.rdpp1_inst_n_9\,
      \count_value_i_reg[11]\(1) => \gen_fwft.rdpp1_inst_n_10\,
      \count_value_i_reg[11]\(0) => \gen_fwft.rdpp1_inst_n_11\,
      \count_value_i_reg[12]\(0) => \gen_fwft.rdpp1_inst_n_12\,
      \count_value_i_reg[1]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      \count_value_i_reg[1]_1\ => \^rd_rst_busy\,
      \count_value_i_reg[7]\(3) => \gen_fwft.rdpp1_inst_n_4\,
      \count_value_i_reg[7]\(2) => \gen_fwft.rdpp1_inst_n_5\,
      \count_value_i_reg[7]\(1) => \gen_fwft.rdpp1_inst_n_6\,
      \count_value_i_reg[7]\(0) => \gen_fwft.rdpp1_inst_n_7\,
      ram_empty_i => ram_empty_i,
      rd_clk => rd_clk,
      rd_en => rd_en
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(10),
      Q => diff_pntr_pf_q(10),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(11),
      Q => diff_pntr_pf_q(11),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(12),
      Q => diff_pntr_pf_q(12),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(2),
      Q => diff_pntr_pf_q(2),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(3),
      Q => diff_pntr_pf_q(3),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(4),
      Q => diff_pntr_pf_q(4),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(5),
      Q => diff_pntr_pf_q(5),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(6),
      Q => diff_pntr_pf_q(6),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(7),
      Q => diff_pntr_pf_q(7),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(8),
      Q => diff_pntr_pf_q(8),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(9),
      Q => diff_pntr_pf_q(9),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.prog_full_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rst_d1_inst_n_1,
      Q => \^prog_full\,
      R => '0'
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => ram_full_i0,
      Q => \^full\,
      R => wrst_busy
    );
\gen_pf_ic_rc.ram_empty_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => ram_empty_i0,
      Q => ram_empty_i,
      S => \^rd_rst_busy\
    );
\gen_sdpram.xpm_memory_base_inst\: entity work.system_usb_stream_0_0_xpm_memory_base
     port map (
      addra(11 downto 0) => wr_pntr_ext(11 downto 0),
      addrb(11 downto 0) => rd_pntr_ext(11 downto 0),
      clka => wr_clk,
      clkb => rd_clk,
      dbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\,
      dbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\,
      dina(8 downto 0) => din(8 downto 0),
      dinb(8 downto 0) => B"000000000",
      douta(8 downto 0) => \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\(8 downto 0),
      doutb(8 downto 0) => dout(8 downto 0),
      ena => '0',
      enb => rdp_inst_n_26,
      injectdbiterra => '0',
      injectdbiterrb => '0',
      injectsbiterra => '0',
      injectsbiterrb => '0',
      regcea => '0',
      regceb => \gen_fwft.ram_regout_en\,
      rsta => '0',
      rstb => \^rd_rst_busy\,
      sbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\,
      sbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\,
      sleep => sleep,
      wea(0) => wr_pntr_plus1_pf_carry,
      web(0) => '0'
    );
\gen_sdpram.xpm_memory_base_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"62"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => curr_fwft_state(1),
      I2 => rd_en,
      O => \gen_fwft.ram_regout_en\
    );
rdp_inst: entity work.\system_usb_stream_0_0_xpm_counter_updn__parameterized0\
     port map (
      E(0) => rdp_inst_n_26,
      Q(12) => rdp_inst_n_0,
      Q(11 downto 0) => rd_pntr_ext(11 downto 0),
      S(2) => \gen_fwft.rdpp1_inst_n_0\,
      S(1) => \gen_fwft.rdpp1_inst_n_1\,
      S(0) => \gen_fwft.rdpp1_inst_n_2\,
      \count_value_i_reg[0]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      \count_value_i_reg[0]_1\ => \^rd_rst_busy\,
      \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4_0\(0) => count_value_i(0),
      ram_empty_i => ram_empty_i,
      rd_clk => rd_clk,
      rd_en => rd_en,
      \src_gray_ff_reg[12]\(3) => \gen_fwft.rdpp1_inst_n_8\,
      \src_gray_ff_reg[12]\(2) => \gen_fwft.rdpp1_inst_n_9\,
      \src_gray_ff_reg[12]\(1) => \gen_fwft.rdpp1_inst_n_10\,
      \src_gray_ff_reg[12]\(0) => \gen_fwft.rdpp1_inst_n_11\,
      \src_gray_ff_reg[12]_0\(0) => \gen_fwft.rdpp1_inst_n_12\,
      \src_gray_ff_reg[7]\(3) => \gen_fwft.rdpp1_inst_n_4\,
      \src_gray_ff_reg[7]\(2) => \gen_fwft.rdpp1_inst_n_5\,
      \src_gray_ff_reg[7]\(1) => \gen_fwft.rdpp1_inst_n_6\,
      \src_gray_ff_reg[7]\(0) => \gen_fwft.rdpp1_inst_n_7\,
      src_in_bin(12 downto 0) => p_1_out(12 downto 0)
    );
rdpp1_inst: entity work.\system_usb_stream_0_0_xpm_counter_updn__parameterized1\
     port map (
      E(0) => rdp_inst_n_26,
      Q(11) => rdpp1_inst_n_0,
      Q(10) => rdpp1_inst_n_1,
      Q(9) => rdpp1_inst_n_2,
      Q(8) => rdpp1_inst_n_3,
      Q(7) => rdpp1_inst_n_4,
      Q(6) => rdpp1_inst_n_5,
      Q(5) => rdpp1_inst_n_6,
      Q(4) => rdpp1_inst_n_7,
      Q(3) => rdpp1_inst_n_8,
      Q(2) => rdpp1_inst_n_9,
      Q(1) => rdpp1_inst_n_10,
      Q(0) => rdpp1_inst_n_11,
      \count_value_i_reg[1]_0\ => \^rd_rst_busy\,
      \count_value_i_reg[3]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      ram_empty_i => ram_empty_i,
      rd_clk => rd_clk,
      rd_en => rd_en
    );
rst_d1_inst: entity work.system_usb_stream_0_0_xpm_fifo_reg_bit_5
     port map (
      Q(0) => wrpp2_inst_n_11,
      S(0) => rst_d1_inst_n_2,
      \count_value_i_reg[3]\(0) => wr_pntr_plus1_pf(1),
      \count_value_i_reg[3]_0\(0) => wr_pntr_ext(0),
      d_out_int_reg_0(0) => rst_d1_inst_n_3,
      d_out_int_reg_1(0) => rst_d1_inst_n_4,
      \gen_pf_ic_rc.gpf_ic.prog_full_i_reg\ => \^full\,
      \gen_pf_ic_rc.gpf_ic.prog_full_i_reg_0\(10 downto 0) => diff_pntr_pf_q(12 downto 2),
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\ => rst_d1_inst_n_1,
      prog_full => \^prog_full\,
      rst => rst,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wrst_busy => wrst_busy
    );
wrp_inst: entity work.\system_usb_stream_0_0_xpm_counter_updn__parameterized0_6\
     port map (
      E(0) => wr_pntr_plus1_pf_carry,
      Q(12 downto 0) => wr_pntr_ext(12 downto 0),
      \count_value_i_reg[3]_0\(0) => rst_d1_inst_n_4,
      wr_clk => wr_clk,
      wrst_busy => wrst_busy
    );
wrpp1_inst: entity work.\system_usb_stream_0_0_xpm_counter_updn__parameterized1_7\
     port map (
      D(10 downto 0) => diff_pntr_pf_q0(12 downto 2),
      E(0) => wr_pntr_plus1_pf_carry,
      Q(11 downto 0) => wr_pntr_plus1_pf(12 downto 1),
      \count_value_i_reg[3]_0\(0) => rst_d1_inst_n_3,
      \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[12]\(11 downto 0) => rd_pntr_wr(11 downto 0),
      wr_clk => wr_clk,
      wrst_busy => wrst_busy
    );
wrpp2_inst: entity work.\system_usb_stream_0_0_xpm_counter_updn__parameterized2\
     port map (
      E(0) => wr_pntr_plus1_pf_carry,
      Q(11) => wrpp2_inst_n_0,
      Q(10) => wrpp2_inst_n_1,
      Q(9) => wrpp2_inst_n_2,
      Q(8) => wrpp2_inst_n_3,
      Q(7) => wrpp2_inst_n_4,
      Q(6) => wrpp2_inst_n_5,
      Q(5) => wrpp2_inst_n_6,
      Q(4) => wrpp2_inst_n_7,
      Q(3) => wrpp2_inst_n_8,
      Q(2) => wrpp2_inst_n_9,
      Q(1) => wrpp2_inst_n_10,
      Q(0) => wrpp2_inst_n_11,
      S(0) => rst_d1_inst_n_2,
      wr_clk => wr_clk,
      wrst_busy => wrst_busy
    );
xpm_fifo_rst_inst: entity work.system_usb_stream_0_0_xpm_fifo_rst_8
     port map (
      E(0) => wr_pntr_plus1_pf_carry,
      \count_value_i_reg[11]\ => \^full\,
      \gen_rst_ic.fifo_rd_rst_ic_reg_0\ => \^rd_rst_busy\,
      rd_clk => rd_clk,
      rst => rst,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy,
      wrst_busy => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 8 downto 0 );
    full : out STD_LOGIC;
    full_n : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 0 to 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 8 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 0 to 0 );
    underflow : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC
  );
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is "0";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is "16'b0000000000000010";
  attribute EN_AE : string;
  attribute EN_AE of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is "1'b0";
  attribute EN_AF : string;
  attribute EN_AF of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is "1'b0";
  attribute EN_DVLD : string;
  attribute EN_DVLD of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is "1'b0";
  attribute EN_OF : string;
  attribute EN_OF of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is "1'b0";
  attribute EN_PE : string;
  attribute EN_PE of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is "1'b0";
  attribute EN_PF : string;
  attribute EN_PF of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is "1'b1";
  attribute EN_RDC : string;
  attribute EN_RDC of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is "1'b0";
  attribute EN_SIM_ASSERT_ERR : string;
  attribute EN_SIM_ASSERT_ERR of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is "warning";
  attribute EN_UF : string;
  attribute EN_UF of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is "1'b0";
  attribute EN_WACK : string;
  attribute EN_WACK of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is "1'b0";
  attribute EN_WDC : string;
  attribute EN_WDC of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is "1'b0";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is "1'b0";
  attribute FIFO_MEMORY_TYPE : integer;
  attribute FIFO_MEMORY_TYPE of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is 2;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is 2;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is 16384;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is 147456;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is 16384;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is "1'b0";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is "xpm_fifo_base";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is 8;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is 16379;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is 16366;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is 16379;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is 7;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is 16368;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is 1;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is 15;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is 14;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is 9;
  attribute READ_MODE : integer;
  attribute READ_MODE of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is 1;
  attribute READ_MODE_LL : integer;
  attribute READ_MODE_LL of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is 1;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is "0002";
  attribute VERSION : integer;
  attribute VERSION of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is 1;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is 9;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is 1;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is 15;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is 14;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is 14;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is 4;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is 3;
  attribute invalid : integer;
  attribute invalid of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is "soft";
  attribute stage1_valid : integer;
  attribute stage1_valid of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ : entity is 1;
end \system_usb_stream_0_0_xpm_fifo_base__parameterized0\;

architecture STRUCTURE of \system_usb_stream_0_0_xpm_fifo_base__parameterized0\ is
  signal \<const0>\ : STD_LOGIC;
  signal count_value_i : STD_LOGIC_VECTOR ( 0 to 0 );
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal diff_pntr_pf_q : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal diff_pntr_pf_q0 : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal \^empty\ : STD_LOGIC;
  signal empty_fwft_i0 : STD_LOGIC;
  signal \^full\ : STD_LOGIC;
  signal \gen_fwft.ram_regout_en\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_0\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_1\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_10\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_11\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_12\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_13\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_14\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_2\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_4\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_5\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_6\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_7\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_8\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_9\ : STD_LOGIC;
  signal \next_fwft_state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_out : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \^prog_full\ : STD_LOGIC;
  signal ram_empty_i : STD_LOGIC;
  signal ram_empty_i0 : STD_LOGIC;
  signal ram_full_i0 : STD_LOGIC;
  signal rd_pntr_ext : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal rd_pntr_wr : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal rd_pntr_wr_cdc : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \^rd_rst_busy\ : STD_LOGIC;
  signal rdp_inst_n_0 : STD_LOGIC;
  signal rdp_inst_n_30 : STD_LOGIC;
  signal rdpp1_inst_n_0 : STD_LOGIC;
  signal rdpp1_inst_n_1 : STD_LOGIC;
  signal rdpp1_inst_n_10 : STD_LOGIC;
  signal rdpp1_inst_n_11 : STD_LOGIC;
  signal rdpp1_inst_n_12 : STD_LOGIC;
  signal rdpp1_inst_n_13 : STD_LOGIC;
  signal rdpp1_inst_n_2 : STD_LOGIC;
  signal rdpp1_inst_n_3 : STD_LOGIC;
  signal rdpp1_inst_n_4 : STD_LOGIC;
  signal rdpp1_inst_n_5 : STD_LOGIC;
  signal rdpp1_inst_n_6 : STD_LOGIC;
  signal rdpp1_inst_n_7 : STD_LOGIC;
  signal rdpp1_inst_n_8 : STD_LOGIC;
  signal rdpp1_inst_n_9 : STD_LOGIC;
  signal rst_d1 : STD_LOGIC;
  signal rst_d1_inst_n_1 : STD_LOGIC;
  signal rst_d1_inst_n_2 : STD_LOGIC;
  signal rst_d1_inst_n_3 : STD_LOGIC;
  signal rst_d1_inst_n_4 : STD_LOGIC;
  signal wr_pntr_ext : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal wr_pntr_plus1_pf : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal wr_pntr_plus1_pf_carry : STD_LOGIC;
  signal wr_pntr_rd_cdc : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal wrpp2_inst_n_0 : STD_LOGIC;
  signal wrpp2_inst_n_1 : STD_LOGIC;
  signal wrpp2_inst_n_10 : STD_LOGIC;
  signal wrpp2_inst_n_11 : STD_LOGIC;
  signal wrpp2_inst_n_12 : STD_LOGIC;
  signal wrpp2_inst_n_13 : STD_LOGIC;
  signal wrpp2_inst_n_2 : STD_LOGIC;
  signal wrpp2_inst_n_3 : STD_LOGIC;
  signal wrpp2_inst_n_4 : STD_LOGIC;
  signal wrpp2_inst_n_5 : STD_LOGIC;
  signal wrpp2_inst_n_6 : STD_LOGIC;
  signal wrpp2_inst_n_7 : STD_LOGIC;
  signal wrpp2_inst_n_8 : STD_LOGIC;
  signal wrpp2_inst_n_9 : STD_LOGIC;
  signal wrst_busy : STD_LOGIC;
  signal \NLW_gen_cdc_pntr.rd_pntr_cdc_dc_inst_dest_out_bin_UNCONNECTED\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \NLW_gen_cdc_pntr.wr_pntr_cdc_dc_inst_dest_out_bin_UNCONNECTED\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1\ : label is "soft_lutpair51";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 1;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 15;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 2;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 1;
  attribute REG_OUTPUT of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 14;
  attribute XPM_CDC of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 4;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 1;
  attribute REG_OUTPUT of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 15;
  attribute XPM_CDC of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 2;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 1;
  attribute REG_OUTPUT of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 14;
  attribute XPM_CDC of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is "TRUE";
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 14;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 14;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute CASCADE_HEIGHT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute ECC_BIT_RANGE : string;
  attribute ECC_BIT_RANGE of \gen_sdpram.xpm_memory_base_inst\ : label is "[7:0]";
  attribute ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute ECC_TYPE : string;
  attribute ECC_TYPE of \gen_sdpram.xpm_memory_base_inst\ : label is "NONE";
  attribute IGNORE_INIT_SYNTH : integer;
  attribute IGNORE_INIT_SYNTH of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute KEEP_HIERARCHY of \gen_sdpram.xpm_memory_base_inst\ : label is "SOFT";
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE\ : boolean;
  attribute \MEM.ADDRESS_SPACE\ of \gen_sdpram.xpm_memory_base_inst\ : label is std.standard.true;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ : integer;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute \MEM.ADDRESS_SPACE_END\ : integer;
  attribute \MEM.ADDRESS_SPACE_END\ of \gen_sdpram.xpm_memory_base_inst\ : label is 16383;
  attribute \MEM.CORE_MEMORY_WIDTH\ : integer;
  attribute \MEM.CORE_MEMORY_WIDTH\ of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of \gen_sdpram.xpm_memory_base_inst\ : label is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of \gen_sdpram.xpm_memory_base_inst\ : label is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of \gen_sdpram.xpm_memory_base_inst\ : label is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of \gen_sdpram.xpm_memory_base_inst\ : label is 147456;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 16384;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is "block";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_COL_READ_A : integer;
  attribute P_NUM_COL_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_COL_READ_B : integer;
  attribute P_NUM_COL_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_COL_WRITE_A : integer;
  attribute P_NUM_COL_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_COL_WRITE_B : integer;
  attribute P_NUM_COL_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "no";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_READ_COLL_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_COLL_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_WIDTH_ADDR_LSB_READ_COLL_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_COLL_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_COLL_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_COLL_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_WIDTH_ADDR_LSB_WRITE_COLL_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_COLL_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 14;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 14;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 14;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 14;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute RAM_DECOMP : string;
  attribute RAM_DECOMP of \gen_sdpram.xpm_memory_base_inst\ : label is "auto";
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute SIM_ASSERT_CHK of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute VERSION of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WAKEUP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute XPM_MODULE of \gen_sdpram.xpm_memory_base_inst\ : label is "TRUE";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 12;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 12;
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  data_valid <= \<const0>\;
  dbiterr <= \<const0>\;
  empty <= \^empty\;
  full <= \^full\;
  full_n <= \<const0>\;
  overflow <= \<const0>\;
  prog_empty <= \<const0>\;
  prog_full <= \^prog_full\;
  rd_data_count(0) <= \<const0>\;
  rd_rst_busy <= \^rd_rst_busy\;
  sbiterr <= \<const0>\;
  underflow <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_data_count(0) <= \<const0>\;
\FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A85"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => rd_en,
      I2 => curr_fwft_state(1),
      I3 => ram_empty_i,
      O => \next_fwft_state__0\(0)
    );
\FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3FF0"
    )
        port map (
      I0 => ram_empty_i,
      I1 => rd_en,
      I2 => curr_fwft_state(1),
      I3 => curr_fwft_state(0),
      O => \next_fwft_state__0\(1)
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \next_fwft_state__0\(0),
      Q => curr_fwft_state(0),
      R => \^rd_rst_busy\
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \next_fwft_state__0\(1),
      Q => curr_fwft_state(1),
      R => \^rd_rst_busy\
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst\: entity work.\system_usb_stream_0_0_xpm_cdc_gray__parameterized4\
     port map (
      dest_clk => wr_clk,
      dest_out_bin(14 downto 0) => \NLW_gen_cdc_pntr.rd_pntr_cdc_dc_inst_dest_out_bin_UNCONNECTED\(14 downto 0),
      src_clk => rd_clk,
      src_in_bin(14 downto 0) => p_1_out(14 downto 0)
    );
\gen_cdc_pntr.rd_pntr_cdc_inst\: entity work.\system_usb_stream_0_0_xpm_cdc_gray__parameterized2\
     port map (
      dest_clk => wr_clk,
      dest_out_bin(13 downto 0) => rd_pntr_wr_cdc(13 downto 0),
      src_clk => rd_clk,
      src_in_bin(13 downto 0) => rd_pntr_ext(13 downto 0)
    );
\gen_cdc_pntr.rpw_gray_reg\: entity work.\system_usb_stream_0_0_xpm_fifo_reg_vec__parameterized1\
     port map (
      D(13 downto 0) => rd_pntr_wr_cdc(13 downto 0),
      Q(13 downto 0) => rd_pntr_wr(13 downto 0),
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\ => \^full\,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(13) => wrpp2_inst_n_0,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(12) => wrpp2_inst_n_1,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(11) => wrpp2_inst_n_2,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(10) => wrpp2_inst_n_3,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(9) => wrpp2_inst_n_4,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(8) => wrpp2_inst_n_5,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(7) => wrpp2_inst_n_6,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(6) => wrpp2_inst_n_7,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(5) => wrpp2_inst_n_8,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(4) => wrpp2_inst_n_9,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(3) => wrpp2_inst_n_10,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(2) => wrpp2_inst_n_11,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(1) => wrpp2_inst_n_12,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_0\(0) => wrpp2_inst_n_13,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_0\(13 downto 0) => wr_pntr_plus1_pf(14 downto 1),
      ram_full_i0 => ram_full_i0,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wrst_busy => wrst_busy
    );
\gen_cdc_pntr.wpr_gray_reg\: entity work.\system_usb_stream_0_0_xpm_fifo_reg_vec__parameterized1_0\
     port map (
      D(13 downto 0) => wr_pntr_rd_cdc(13 downto 0),
      Q(1 downto 0) => curr_fwft_state(1 downto 0),
      \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(13) => rdpp1_inst_n_0,
      \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(12) => rdpp1_inst_n_1,
      \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(11) => rdpp1_inst_n_2,
      \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(10) => rdpp1_inst_n_3,
      \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(9) => rdpp1_inst_n_4,
      \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(8) => rdpp1_inst_n_5,
      \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(7) => rdpp1_inst_n_6,
      \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(6) => rdpp1_inst_n_7,
      \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(5) => rdpp1_inst_n_8,
      \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(4) => rdpp1_inst_n_9,
      \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(3) => rdpp1_inst_n_10,
      \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(2) => rdpp1_inst_n_11,
      \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(1) => rdpp1_inst_n_12,
      \gen_pf_ic_rc.ram_empty_i_reg_i_2_0\(0) => rdpp1_inst_n_13,
      \gen_pf_ic_rc.ram_empty_i_reg_i_3_0\(13 downto 0) => rd_pntr_ext(13 downto 0),
      ram_empty_i => ram_empty_i,
      ram_empty_i0 => ram_empty_i0,
      rd_clk => rd_clk,
      rd_en => rd_en,
      \reg_out_i_reg[13]_0\ => \^rd_rst_busy\
    );
\gen_cdc_pntr.wr_pntr_cdc_dc_inst\: entity work.\system_usb_stream_0_0_xpm_cdc_gray__parameterized3\
     port map (
      dest_clk => rd_clk,
      dest_out_bin(14 downto 0) => \NLW_gen_cdc_pntr.wr_pntr_cdc_dc_inst_dest_out_bin_UNCONNECTED\(14 downto 0),
      src_clk => wr_clk,
      src_in_bin(14 downto 0) => wr_pntr_ext(14 downto 0)
    );
\gen_cdc_pntr.wr_pntr_cdc_inst\: entity work.\system_usb_stream_0_0_xpm_cdc_gray__parameterized2__1\
     port map (
      dest_clk => rd_clk,
      dest_out_bin(13 downto 0) => wr_pntr_rd_cdc(13 downto 0),
      src_clk => wr_clk,
      src_in_bin(13 downto 0) => wr_pntr_ext(13 downto 0)
    );
\gen_fwft.empty_fwft_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F380"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(0),
      I2 => curr_fwft_state(1),
      I3 => \^empty\,
      O => empty_fwft_i0
    );
\gen_fwft.empty_fwft_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => empty_fwft_i0,
      Q => \^empty\,
      S => \^rd_rst_busy\
    );
\gen_fwft.rdpp1_inst\: entity work.system_usb_stream_0_0_xpm_counter_updn
     port map (
      Q(13) => rdp_inst_n_0,
      Q(12 downto 0) => rd_pntr_ext(13 downto 1),
      S(2) => \gen_fwft.rdpp1_inst_n_0\,
      S(1) => \gen_fwft.rdpp1_inst_n_1\,
      S(0) => \gen_fwft.rdpp1_inst_n_2\,
      \count_value_i_reg[0]_0\(0) => count_value_i(0),
      \count_value_i_reg[11]\(3) => \gen_fwft.rdpp1_inst_n_8\,
      \count_value_i_reg[11]\(2) => \gen_fwft.rdpp1_inst_n_9\,
      \count_value_i_reg[11]\(1) => \gen_fwft.rdpp1_inst_n_10\,
      \count_value_i_reg[11]\(0) => \gen_fwft.rdpp1_inst_n_11\,
      \count_value_i_reg[14]\(2) => \gen_fwft.rdpp1_inst_n_12\,
      \count_value_i_reg[14]\(1) => \gen_fwft.rdpp1_inst_n_13\,
      \count_value_i_reg[14]\(0) => \gen_fwft.rdpp1_inst_n_14\,
      \count_value_i_reg[1]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      \count_value_i_reg[1]_1\ => \^rd_rst_busy\,
      \count_value_i_reg[7]\(3) => \gen_fwft.rdpp1_inst_n_4\,
      \count_value_i_reg[7]\(2) => \gen_fwft.rdpp1_inst_n_5\,
      \count_value_i_reg[7]\(1) => \gen_fwft.rdpp1_inst_n_6\,
      \count_value_i_reg[7]\(0) => \gen_fwft.rdpp1_inst_n_7\,
      ram_empty_i => ram_empty_i,
      rd_clk => rd_clk,
      rd_en => rd_en
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(10),
      Q => diff_pntr_pf_q(10),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(11),
      Q => diff_pntr_pf_q(11),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(12),
      Q => diff_pntr_pf_q(12),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(13),
      Q => diff_pntr_pf_q(13),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(14),
      Q => diff_pntr_pf_q(14),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(2),
      Q => diff_pntr_pf_q(2),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(3),
      Q => diff_pntr_pf_q(3),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(4),
      Q => diff_pntr_pf_q(4),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(5),
      Q => diff_pntr_pf_q(5),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(6),
      Q => diff_pntr_pf_q(6),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(7),
      Q => diff_pntr_pf_q(7),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(8),
      Q => diff_pntr_pf_q(8),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(9),
      Q => diff_pntr_pf_q(9),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.prog_full_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rst_d1_inst_n_1,
      Q => \^prog_full\,
      R => '0'
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => ram_full_i0,
      Q => \^full\,
      R => wrst_busy
    );
\gen_pf_ic_rc.ram_empty_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => ram_empty_i0,
      Q => ram_empty_i,
      S => \^rd_rst_busy\
    );
\gen_sdpram.xpm_memory_base_inst\: entity work.\system_usb_stream_0_0_xpm_memory_base__parameterized0\
     port map (
      addra(13 downto 0) => wr_pntr_ext(13 downto 0),
      addrb(13 downto 0) => rd_pntr_ext(13 downto 0),
      clka => wr_clk,
      clkb => rd_clk,
      dbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\,
      dbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\,
      dina(8 downto 0) => din(8 downto 0),
      dinb(8 downto 0) => B"000000000",
      douta(8 downto 0) => \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\(8 downto 0),
      doutb(8 downto 0) => dout(8 downto 0),
      ena => '0',
      enb => rdp_inst_n_30,
      injectdbiterra => '0',
      injectdbiterrb => '0',
      injectsbiterra => '0',
      injectsbiterrb => '0',
      regcea => '0',
      regceb => \gen_fwft.ram_regout_en\,
      rsta => '0',
      rstb => \^rd_rst_busy\,
      sbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\,
      sbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\,
      sleep => sleep,
      wea(0) => wr_pntr_plus1_pf_carry,
      web(0) => '0'
    );
\gen_sdpram.xpm_memory_base_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"62"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => curr_fwft_state(1),
      I2 => rd_en,
      O => \gen_fwft.ram_regout_en\
    );
rdp_inst: entity work.\system_usb_stream_0_0_xpm_counter_updn__parameterized3\
     port map (
      E(0) => rdp_inst_n_30,
      Q(14) => rdp_inst_n_0,
      Q(13 downto 0) => rd_pntr_ext(13 downto 0),
      S(2) => \gen_fwft.rdpp1_inst_n_0\,
      S(1) => \gen_fwft.rdpp1_inst_n_1\,
      S(0) => \gen_fwft.rdpp1_inst_n_2\,
      \count_value_i_reg[0]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      \count_value_i_reg[0]_1\ => \^rd_rst_busy\,
      \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4_0\(0) => count_value_i(0),
      ram_empty_i => ram_empty_i,
      rd_clk => rd_clk,
      rd_en => rd_en,
      \src_gray_ff_reg[14]\(3) => \gen_fwft.rdpp1_inst_n_8\,
      \src_gray_ff_reg[14]\(2) => \gen_fwft.rdpp1_inst_n_9\,
      \src_gray_ff_reg[14]\(1) => \gen_fwft.rdpp1_inst_n_10\,
      \src_gray_ff_reg[14]\(0) => \gen_fwft.rdpp1_inst_n_11\,
      \src_gray_ff_reg[14]_0\(2) => \gen_fwft.rdpp1_inst_n_12\,
      \src_gray_ff_reg[14]_0\(1) => \gen_fwft.rdpp1_inst_n_13\,
      \src_gray_ff_reg[14]_0\(0) => \gen_fwft.rdpp1_inst_n_14\,
      \src_gray_ff_reg[7]\(3) => \gen_fwft.rdpp1_inst_n_4\,
      \src_gray_ff_reg[7]\(2) => \gen_fwft.rdpp1_inst_n_5\,
      \src_gray_ff_reg[7]\(1) => \gen_fwft.rdpp1_inst_n_6\,
      \src_gray_ff_reg[7]\(0) => \gen_fwft.rdpp1_inst_n_7\,
      src_in_bin(14 downto 0) => p_1_out(14 downto 0)
    );
rdpp1_inst: entity work.\system_usb_stream_0_0_xpm_counter_updn__parameterized4\
     port map (
      E(0) => rdp_inst_n_30,
      Q(13) => rdpp1_inst_n_0,
      Q(12) => rdpp1_inst_n_1,
      Q(11) => rdpp1_inst_n_2,
      Q(10) => rdpp1_inst_n_3,
      Q(9) => rdpp1_inst_n_4,
      Q(8) => rdpp1_inst_n_5,
      Q(7) => rdpp1_inst_n_6,
      Q(6) => rdpp1_inst_n_7,
      Q(5) => rdpp1_inst_n_8,
      Q(4) => rdpp1_inst_n_9,
      Q(3) => rdpp1_inst_n_10,
      Q(2) => rdpp1_inst_n_11,
      Q(1) => rdpp1_inst_n_12,
      Q(0) => rdpp1_inst_n_13,
      \count_value_i_reg[1]_0\ => \^rd_rst_busy\,
      \count_value_i_reg[3]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      ram_empty_i => ram_empty_i,
      rd_clk => rd_clk,
      rd_en => rd_en
    );
rst_d1_inst: entity work.system_usb_stream_0_0_xpm_fifo_reg_bit
     port map (
      Q(0) => wrpp2_inst_n_13,
      S(0) => rst_d1_inst_n_2,
      \count_value_i_reg[3]\(0) => wr_pntr_plus1_pf(1),
      \count_value_i_reg[3]_0\(0) => wr_pntr_ext(0),
      d_out_int_reg_0(0) => rst_d1_inst_n_3,
      d_out_int_reg_1(0) => rst_d1_inst_n_4,
      \gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_0\(12 downto 0) => diff_pntr_pf_q(14 downto 2),
      \gen_pf_ic_rc.gpf_ic.prog_full_i_reg\ => \^full\,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\ => rst_d1_inst_n_1,
      prog_full => \^prog_full\,
      rst => rst,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wrst_busy => wrst_busy
    );
wrp_inst: entity work.\system_usb_stream_0_0_xpm_counter_updn__parameterized3_1\
     port map (
      E(0) => wr_pntr_plus1_pf_carry,
      Q(14 downto 0) => wr_pntr_ext(14 downto 0),
      \count_value_i_reg[3]_0\(0) => rst_d1_inst_n_4,
      wr_clk => wr_clk,
      wrst_busy => wrst_busy
    );
wrpp1_inst: entity work.\system_usb_stream_0_0_xpm_counter_updn__parameterized4_2\
     port map (
      D(12 downto 0) => diff_pntr_pf_q0(14 downto 2),
      E(0) => wr_pntr_plus1_pf_carry,
      Q(13 downto 0) => wr_pntr_plus1_pf(14 downto 1),
      \count_value_i_reg[3]_0\(0) => rst_d1_inst_n_3,
      \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[14]\(13 downto 0) => rd_pntr_wr(13 downto 0),
      wr_clk => wr_clk,
      wrst_busy => wrst_busy
    );
wrpp2_inst: entity work.\system_usb_stream_0_0_xpm_counter_updn__parameterized5\
     port map (
      E(0) => wr_pntr_plus1_pf_carry,
      Q(13) => wrpp2_inst_n_0,
      Q(12) => wrpp2_inst_n_1,
      Q(11) => wrpp2_inst_n_2,
      Q(10) => wrpp2_inst_n_3,
      Q(9) => wrpp2_inst_n_4,
      Q(8) => wrpp2_inst_n_5,
      Q(7) => wrpp2_inst_n_6,
      Q(6) => wrpp2_inst_n_7,
      Q(5) => wrpp2_inst_n_8,
      Q(4) => wrpp2_inst_n_9,
      Q(3) => wrpp2_inst_n_10,
      Q(2) => wrpp2_inst_n_11,
      Q(1) => wrpp2_inst_n_12,
      Q(0) => wrpp2_inst_n_13,
      S(0) => rst_d1_inst_n_2,
      wr_clk => wr_clk,
      wrst_busy => wrst_busy
    );
xpm_fifo_rst_inst: entity work.system_usb_stream_0_0_xpm_fifo_rst
     port map (
      E(0) => wr_pntr_plus1_pf_carry,
      \count_value_i_reg[13]\ => \^full\,
      \gen_rst_ic.fifo_rd_rst_ic_reg_0\ => \^rd_rst_busy\,
      rd_clk => rd_clk,
      rst => rst,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy,
      wrst_busy => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_usb_stream_0_0_xpm_fifo_async is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 8 downto 0 );
    full : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 0 to 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 8 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 0 to 0 );
    underflow : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC
  );
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of system_usb_stream_0_0_xpm_fifo_async : entity is 0;
  attribute CDC_SYNC_STAGES : integer;
  attribute CDC_SYNC_STAGES of system_usb_stream_0_0_xpm_fifo_async : entity is 2;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of system_usb_stream_0_0_xpm_fifo_async : entity is "0";
  attribute ECC_MODE : string;
  attribute ECC_MODE of system_usb_stream_0_0_xpm_fifo_async : entity is "no_ecc";
  attribute EN_ADV_FEATURE_ASYNC : string;
  attribute EN_ADV_FEATURE_ASYNC of system_usb_stream_0_0_xpm_fifo_async : entity is "16'b0000000000000010";
  attribute EN_SIM_ASSERT_ERR : string;
  attribute EN_SIM_ASSERT_ERR of system_usb_stream_0_0_xpm_fifo_async : entity is "warning";
  attribute FIFO_MEMORY_TYPE : string;
  attribute FIFO_MEMORY_TYPE of system_usb_stream_0_0_xpm_fifo_async : entity is "block";
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of system_usb_stream_0_0_xpm_fifo_async : entity is 0;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of system_usb_stream_0_0_xpm_fifo_async : entity is 4096;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of system_usb_stream_0_0_xpm_fifo_async : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_usb_stream_0_0_xpm_fifo_async : entity is "xpm_fifo_async";
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of system_usb_stream_0_0_xpm_fifo_async : entity is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of system_usb_stream_0_0_xpm_fifo_async : entity is 3072;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of system_usb_stream_0_0_xpm_fifo_async : entity is 0;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of system_usb_stream_0_0_xpm_fifo_async : entity is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of system_usb_stream_0_0_xpm_fifo_async : entity is 2;
  attribute P_READ_MODE : integer;
  attribute P_READ_MODE of system_usb_stream_0_0_xpm_fifo_async : entity is 1;
  attribute P_WAKEUP_TIME : integer;
  attribute P_WAKEUP_TIME of system_usb_stream_0_0_xpm_fifo_async : entity is 2;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of system_usb_stream_0_0_xpm_fifo_async : entity is 1;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of system_usb_stream_0_0_xpm_fifo_async : entity is 9;
  attribute READ_MODE : string;
  attribute READ_MODE of system_usb_stream_0_0_xpm_fifo_async : entity is "fwft";
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of system_usb_stream_0_0_xpm_fifo_async : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of system_usb_stream_0_0_xpm_fifo_async : entity is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of system_usb_stream_0_0_xpm_fifo_async : entity is "0002";
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of system_usb_stream_0_0_xpm_fifo_async : entity is 0;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of system_usb_stream_0_0_xpm_fifo_async : entity is 9;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of system_usb_stream_0_0_xpm_fifo_async : entity is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of system_usb_stream_0_0_xpm_fifo_async : entity is "TRUE";
  attribute dont_touch : string;
  attribute dont_touch of system_usb_stream_0_0_xpm_fifo_async : entity is "true";
end system_usb_stream_0_0_xpm_fifo_async;

architecture STRUCTURE of system_usb_stream_0_0_xpm_fifo_async is
  signal \<const0>\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_almost_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_almost_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_data_valid_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_overflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_prog_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_underflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_wr_ack_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_rd_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_wr_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute CASCADE_HEIGHT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute DOUT_RESET_VALUE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "0";
  attribute ECC_MODE_integer : integer;
  attribute ECC_MODE_integer of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "16'b0000000000000010";
  attribute EN_AE : string;
  attribute EN_AE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute EN_AF : string;
  attribute EN_AF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute EN_DVLD : string;
  attribute EN_DVLD of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute EN_OF : string;
  attribute EN_OF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute EN_PE : string;
  attribute EN_PE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute EN_PF : string;
  attribute EN_PF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_RDC : string;
  attribute EN_RDC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute EN_SIM_ASSERT_ERR of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "warning";
  attribute EN_UF : string;
  attribute EN_UF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute EN_WACK : string;
  attribute EN_WACK of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute EN_WDC : string;
  attribute EN_WDC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute FIFO_MEMORY_TYPE_integer : integer;
  attribute FIFO_MEMORY_TYPE_integer of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 4096;
  attribute FIFO_READ_LATENCY of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 36864;
  attribute FIFO_WRITE_DEPTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 4096;
  attribute FULL_RESET_VALUE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "SOFT";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 8;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 4091;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 3070;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 4091;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 7;
  attribute PROG_EMPTY_THRESH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 10;
  attribute PROG_FULL_THRESH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 3072;
  attribute RD_DATA_COUNT_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 13;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 12;
  attribute READ_DATA_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 9;
  attribute READ_MODE_integer : integer;
  attribute READ_MODE_integer of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute READ_MODE_LL : integer;
  attribute READ_MODE_LL of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute RELATED_CLOCKS of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute USE_ADV_FEATURES of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "0002";
  attribute VERSION : integer;
  attribute VERSION of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute WAKEUP_TIME of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute WRITE_DATA_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 9;
  attribute WR_DATA_COUNT_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 13;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 12;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 12;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 4;
  attribute XPM_MODULE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 3;
  attribute invalid : integer;
  attribute invalid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute stage1_valid : integer;
  attribute stage1_valid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  data_valid <= \<const0>\;
  dbiterr <= \<const0>\;
  overflow <= \<const0>\;
  prog_empty <= \<const0>\;
  rd_data_count(0) <= \<const0>\;
  sbiterr <= \<const0>\;
  underflow <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_data_count(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gnuram_async_fifo.xpm_fifo_base_inst\: entity work.system_usb_stream_0_0_xpm_fifo_base
     port map (
      almost_empty => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_almost_empty_UNCONNECTED\,
      almost_full => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_almost_full_UNCONNECTED\,
      data_valid => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_data_valid_UNCONNECTED\,
      dbiterr => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED\,
      din(8 downto 0) => din(8 downto 0),
      dout(8 downto 0) => dout(8 downto 0),
      empty => empty,
      full => full,
      full_n => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED\,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_overflow_UNCONNECTED\,
      prog_empty => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_prog_empty_UNCONNECTED\,
      prog_full => prog_full,
      rd_clk => rd_clk,
      rd_data_count(0) => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_rd_data_count_UNCONNECTED\(0),
      rd_en => rd_en,
      rd_rst_busy => rd_rst_busy,
      rst => rst,
      sbiterr => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED\,
      sleep => sleep,
      underflow => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_underflow_UNCONNECTED\,
      wr_ack => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_wr_ack_UNCONNECTED\,
      wr_clk => wr_clk,
      wr_data_count(0) => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_wr_data_count_UNCONNECTED\(0),
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_usb_stream_0_0_xpm_fifo_async__parameterized0\ is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 8 downto 0 );
    full : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 0 to 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 8 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 0 to 0 );
    underflow : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC
  );
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of \system_usb_stream_0_0_xpm_fifo_async__parameterized0\ : entity is 0;
  attribute CDC_SYNC_STAGES : integer;
  attribute CDC_SYNC_STAGES of \system_usb_stream_0_0_xpm_fifo_async__parameterized0\ : entity is 2;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of \system_usb_stream_0_0_xpm_fifo_async__parameterized0\ : entity is "0";
  attribute ECC_MODE : string;
  attribute ECC_MODE of \system_usb_stream_0_0_xpm_fifo_async__parameterized0\ : entity is "no_ecc";
  attribute EN_ADV_FEATURE_ASYNC : string;
  attribute EN_ADV_FEATURE_ASYNC of \system_usb_stream_0_0_xpm_fifo_async__parameterized0\ : entity is "16'b0000000000000010";
  attribute EN_SIM_ASSERT_ERR : string;
  attribute EN_SIM_ASSERT_ERR of \system_usb_stream_0_0_xpm_fifo_async__parameterized0\ : entity is "warning";
  attribute FIFO_MEMORY_TYPE : string;
  attribute FIFO_MEMORY_TYPE of \system_usb_stream_0_0_xpm_fifo_async__parameterized0\ : entity is "block";
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of \system_usb_stream_0_0_xpm_fifo_async__parameterized0\ : entity is 0;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of \system_usb_stream_0_0_xpm_fifo_async__parameterized0\ : entity is 16384;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of \system_usb_stream_0_0_xpm_fifo_async__parameterized0\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_usb_stream_0_0_xpm_fifo_async__parameterized0\ : entity is "xpm_fifo_async";
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of \system_usb_stream_0_0_xpm_fifo_async__parameterized0\ : entity is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of \system_usb_stream_0_0_xpm_fifo_async__parameterized0\ : entity is 16368;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of \system_usb_stream_0_0_xpm_fifo_async__parameterized0\ : entity is 0;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of \system_usb_stream_0_0_xpm_fifo_async__parameterized0\ : entity is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of \system_usb_stream_0_0_xpm_fifo_async__parameterized0\ : entity is 2;
  attribute P_READ_MODE : integer;
  attribute P_READ_MODE of \system_usb_stream_0_0_xpm_fifo_async__parameterized0\ : entity is 1;
  attribute P_WAKEUP_TIME : integer;
  attribute P_WAKEUP_TIME of \system_usb_stream_0_0_xpm_fifo_async__parameterized0\ : entity is 2;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of \system_usb_stream_0_0_xpm_fifo_async__parameterized0\ : entity is 1;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of \system_usb_stream_0_0_xpm_fifo_async__parameterized0\ : entity is 9;
  attribute READ_MODE : string;
  attribute READ_MODE of \system_usb_stream_0_0_xpm_fifo_async__parameterized0\ : entity is "fwft";
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of \system_usb_stream_0_0_xpm_fifo_async__parameterized0\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \system_usb_stream_0_0_xpm_fifo_async__parameterized0\ : entity is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of \system_usb_stream_0_0_xpm_fifo_async__parameterized0\ : entity is "0002";
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of \system_usb_stream_0_0_xpm_fifo_async__parameterized0\ : entity is 0;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of \system_usb_stream_0_0_xpm_fifo_async__parameterized0\ : entity is 9;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of \system_usb_stream_0_0_xpm_fifo_async__parameterized0\ : entity is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \system_usb_stream_0_0_xpm_fifo_async__parameterized0\ : entity is "TRUE";
  attribute dont_touch : string;
  attribute dont_touch of \system_usb_stream_0_0_xpm_fifo_async__parameterized0\ : entity is "true";
end \system_usb_stream_0_0_xpm_fifo_async__parameterized0\;

architecture STRUCTURE of \system_usb_stream_0_0_xpm_fifo_async__parameterized0\ is
  signal \<const0>\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_almost_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_almost_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_data_valid_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_overflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_prog_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_underflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_wr_ack_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_rd_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_wr_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute CASCADE_HEIGHT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute DOUT_RESET_VALUE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "0";
  attribute ECC_MODE_integer : integer;
  attribute ECC_MODE_integer of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "16'b0000000000000010";
  attribute EN_AE : string;
  attribute EN_AE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute EN_AF : string;
  attribute EN_AF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute EN_DVLD : string;
  attribute EN_DVLD of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute EN_OF : string;
  attribute EN_OF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute EN_PE : string;
  attribute EN_PE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute EN_PF : string;
  attribute EN_PF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_RDC : string;
  attribute EN_RDC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute EN_SIM_ASSERT_ERR of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "warning";
  attribute EN_UF : string;
  attribute EN_UF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute EN_WACK : string;
  attribute EN_WACK of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute EN_WDC : string;
  attribute EN_WDC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute FIFO_MEMORY_TYPE_integer : integer;
  attribute FIFO_MEMORY_TYPE_integer of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 16384;
  attribute FIFO_READ_LATENCY of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 147456;
  attribute FIFO_WRITE_DEPTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 16384;
  attribute FULL_RESET_VALUE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "SOFT";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 8;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 16379;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 16366;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 16379;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 7;
  attribute PROG_EMPTY_THRESH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 10;
  attribute PROG_FULL_THRESH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 16368;
  attribute RD_DATA_COUNT_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 15;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 14;
  attribute READ_DATA_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 9;
  attribute READ_MODE_integer : integer;
  attribute READ_MODE_integer of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute READ_MODE_LL : integer;
  attribute READ_MODE_LL of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute RELATED_CLOCKS of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute USE_ADV_FEATURES of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "0002";
  attribute VERSION : integer;
  attribute VERSION of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute WAKEUP_TIME of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute WRITE_DATA_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 9;
  attribute WR_DATA_COUNT_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 15;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 14;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 14;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 4;
  attribute XPM_MODULE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 3;
  attribute invalid : integer;
  attribute invalid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute stage1_valid : integer;
  attribute stage1_valid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  data_valid <= \<const0>\;
  dbiterr <= \<const0>\;
  overflow <= \<const0>\;
  prog_empty <= \<const0>\;
  rd_data_count(0) <= \<const0>\;
  sbiterr <= \<const0>\;
  underflow <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_data_count(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gnuram_async_fifo.xpm_fifo_base_inst\: entity work.\system_usb_stream_0_0_xpm_fifo_base__parameterized0\
     port map (
      almost_empty => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_almost_empty_UNCONNECTED\,
      almost_full => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_almost_full_UNCONNECTED\,
      data_valid => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_data_valid_UNCONNECTED\,
      dbiterr => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED\,
      din(8 downto 0) => din(8 downto 0),
      dout(8 downto 0) => dout(8 downto 0),
      empty => empty,
      full => full,
      full_n => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED\,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_overflow_UNCONNECTED\,
      prog_empty => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_prog_empty_UNCONNECTED\,
      prog_full => prog_full,
      rd_clk => rd_clk,
      rd_data_count(0) => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_rd_data_count_UNCONNECTED\(0),
      rd_en => rd_en,
      rd_rst_busy => rd_rst_busy,
      rst => rst,
      sbiterr => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED\,
      sleep => sleep,
      underflow => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_underflow_UNCONNECTED\,
      wr_ack => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_wr_ack_UNCONNECTED\,
      wr_clk => wr_clk,
      wr_data_count(0) => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_wr_data_count_UNCONNECTED\(0),
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_usb_stream_0_0_usb_stream is
  port (
    fx2_pktend_n : out STD_LOGIC;
    status : out STD_LOGIC_VECTOR ( 6 downto 0 );
    fx2_fd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fx2_slwr_n : out STD_LOGIC;
    uvc : out STD_LOGIC;
    raw1_rd : out STD_LOGIC;
    raw0_rd : out STD_LOGIC;
    d_room : out STD_LOGIC;
    prst : in STD_LOGIC;
    pclk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 8 downto 0 );
    clk : in STD_LOGIC;
    cap_rst : in STD_LOGIC;
    fx2_flagb_n : in STD_LOGIC;
    fx2_ifclk : in STD_LOGIC;
    gpio_o : in STD_LOGIC_VECTOR ( 1 downto 0 );
    raw1_dout : in STD_LOGIC_VECTOR ( 7 downto 0 );
    raw0_dout : in STD_LOGIC_VECTOR ( 7 downto 0 );
    raw1_count : in STD_LOGIC_VECTOR ( 13 downto 0 );
    raw0_count : in STD_LOGIC_VECTOR ( 13 downto 0 );
    d_wr : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_usb_stream_0_0_usb_stream : entity is "usb_stream";
end system_usb_stream_0_0_usb_stream;

architecture STRUCTURE of system_usb_stream_0_0_usb_stream is
  signal c2_count : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal c2_dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal c2_rd : STD_LOGIC;
  signal din_0 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal dout : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal full04_in : STD_LOGIC;
  signal ifclk : STD_LOGIC;
  signal mode_sync : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg : string;
  attribute async_reg of mode_sync : signal is "true";
  signal nz0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rd_en : STD_LOGIC;
  signal rd_rst_busy : STD_LOGIC;
  signal s2_din : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s2_wr : STD_LOGIC;
  signal s2_wr0 : STD_LOGIC;
  signal \st_bytes[0]_i_2_n_0\ : STD_LOGIC;
  signal \st_bytes_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \st_bytes_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \st_bytes_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \st_bytes_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \st_bytes_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \st_bytes_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \st_bytes_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \st_bytes_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \st_bytes_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \st_bytes_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \st_bytes_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \st_bytes_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \st_bytes_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \st_bytes_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \st_bytes_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \st_bytes_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \st_bytes_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \st_bytes_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \st_bytes_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \st_bytes_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \st_bytes_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \st_bytes_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \st_bytes_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \st_bytes_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \st_bytes_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \st_bytes_reg_n_0_[0]\ : STD_LOGIC;
  signal \st_bytes_reg_n_0_[10]\ : STD_LOGIC;
  signal \st_bytes_reg_n_0_[11]\ : STD_LOGIC;
  signal \st_bytes_reg_n_0_[1]\ : STD_LOGIC;
  signal \st_bytes_reg_n_0_[2]\ : STD_LOGIC;
  signal \st_bytes_reg_n_0_[3]\ : STD_LOGIC;
  signal \st_bytes_reg_n_0_[4]\ : STD_LOGIC;
  signal \st_bytes_reg_n_0_[5]\ : STD_LOGIC;
  signal \st_bytes_reg_n_0_[6]\ : STD_LOGIC;
  signal \st_bytes_reg_n_0_[7]\ : STD_LOGIC;
  signal \st_bytes_reg_n_0_[8]\ : STD_LOGIC;
  signal \st_bytes_reg_n_0_[9]\ : STD_LOGIC;
  signal st_row_i_1_n_0 : STD_LOGIC;
  signal \^status\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal u_fx2_n_3 : STD_LOGIC;
  signal u_xfifo_i_3_n_0 : STD_LOGIC;
  signal uvc_p : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg of uvc_p : signal is "true";
  signal uvc_sync : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg of uvc_sync : signal is "true";
  signal wr_en : STD_LOGIC;
  signal wr_en0 : STD_LOGIC;
  signal wr_rst_busy : STD_LOGIC;
  signal x_dout : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal x_rd : STD_LOGIC;
  signal x_rd_busy : STD_LOGIC;
  signal x_wr_busy : STD_LOGIC;
  signal \NLW_st_bytes_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_st_bytes_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_u_fifo_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_u_fifo_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_u_fifo_data_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_u_fifo_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_u_fifo_full_UNCONNECTED : STD_LOGIC;
  signal NLW_u_fifo_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_u_fifo_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_u_fifo_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_u_fifo_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_u_fifo_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_u_fifo_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_u_fifo_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_u_xfifo_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_u_xfifo_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_u_xfifo_data_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_u_xfifo_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_u_xfifo_full_UNCONNECTED : STD_LOGIC;
  signal NLW_u_xfifo_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_u_xfifo_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_u_xfifo_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_u_xfifo_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_u_xfifo_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_u_xfifo_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_u_xfifo_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \mode_sync_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \mode_sync_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \mode_sync_reg[1]\ : label is std.standard.true;
  attribute KEEP of \mode_sync_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \mode_sync_reg[2]\ : label is std.standard.true;
  attribute KEEP of \mode_sync_reg[2]\ : label is "yes";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \st_bytes_reg[0]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \st_bytes_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \st_bytes_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \st_bytes_reg[8]_i_1\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of st_row_i_1 : label is "soft_lutpair83";
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of u_fifo : label is 0;
  attribute CDC_SYNC_STAGES : integer;
  attribute CDC_SYNC_STAGES of u_fifo : label is 2;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of u_fifo : label is std.standard.true;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of u_fifo : label is "0";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of u_fifo : label is 0;
  attribute EN_ADV_FEATURE_ASYNC : string;
  attribute EN_ADV_FEATURE_ASYNC of u_fifo : label is "16'b0000000000000010";
  attribute EN_SIM_ASSERT_ERR : string;
  attribute EN_SIM_ASSERT_ERR of u_fifo : label is "warning";
  attribute FIFO_MEMORY_TYPE : integer;
  attribute FIFO_MEMORY_TYPE of u_fifo : label is 0;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of u_fifo : label is 0;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of u_fifo : label is 16384;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of u_fifo : label is 0;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of u_fifo : label is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of u_fifo : label is 16368;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of u_fifo : label is 0;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of u_fifo : label is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of u_fifo : label is 2;
  attribute P_READ_MODE : integer;
  attribute P_READ_MODE of u_fifo : label is 1;
  attribute P_WAKEUP_TIME : integer;
  attribute P_WAKEUP_TIME of u_fifo : label is 2;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of u_fifo : label is 1;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of u_fifo : label is 9;
  attribute READ_MODE : integer;
  attribute READ_MODE of u_fifo : label is 0;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of u_fifo : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of u_fifo : label is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of u_fifo : label is "0002";
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of u_fifo : label is 0;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of u_fifo : label is 9;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of u_fifo : label is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of u_fifo : label is "TRUE";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of u_ifclk : label is "PRIMITIVE";
  attribute CASCADE_HEIGHT of u_xfifo : label is 0;
  attribute CDC_SYNC_STAGES of u_xfifo : label is 2;
  attribute DONT_TOUCH of u_xfifo : label is std.standard.true;
  attribute DOUT_RESET_VALUE of u_xfifo : label is "0";
  attribute ECC_MODE of u_xfifo : label is 0;
  attribute EN_ADV_FEATURE_ASYNC of u_xfifo : label is "16'b0000000000000010";
  attribute EN_SIM_ASSERT_ERR of u_xfifo : label is "warning";
  attribute FIFO_MEMORY_TYPE of u_xfifo : label is 0;
  attribute FIFO_READ_LATENCY of u_xfifo : label is 0;
  attribute FIFO_WRITE_DEPTH of u_xfifo : label is 4096;
  attribute FULL_RESET_VALUE of u_xfifo : label is 0;
  attribute PROG_EMPTY_THRESH of u_xfifo : label is 10;
  attribute PROG_FULL_THRESH of u_xfifo : label is 3072;
  attribute P_COMMON_CLOCK of u_xfifo : label is 0;
  attribute P_ECC_MODE of u_xfifo : label is 0;
  attribute P_FIFO_MEMORY_TYPE of u_xfifo : label is 2;
  attribute P_READ_MODE of u_xfifo : label is 1;
  attribute P_WAKEUP_TIME of u_xfifo : label is 2;
  attribute RD_DATA_COUNT_WIDTH of u_xfifo : label is 1;
  attribute READ_DATA_WIDTH of u_xfifo : label is 9;
  attribute READ_MODE of u_xfifo : label is 0;
  attribute RELATED_CLOCKS of u_xfifo : label is 0;
  attribute SIM_ASSERT_CHK of u_xfifo : label is 0;
  attribute USE_ADV_FEATURES of u_xfifo : label is "0002";
  attribute WAKEUP_TIME of u_xfifo : label is 0;
  attribute WRITE_DATA_WIDTH of u_xfifo : label is 9;
  attribute WR_DATA_COUNT_WIDTH of u_xfifo : label is 1;
  attribute XPM_MODULE of u_xfifo : label is "TRUE";
  attribute SOFT_HLUTNM of u_xfifo_i_1 : label is "soft_lutpair83";
  attribute ASYNC_REG_boolean of \uvc_p_reg[0]\ : label is std.standard.true;
  attribute KEEP of \uvc_p_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \uvc_p_reg[1]\ : label is std.standard.true;
  attribute KEEP of \uvc_p_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \uvc_p_reg[2]\ : label is std.standard.true;
  attribute KEEP of \uvc_p_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \uvc_sync_reg[0]\ : label is std.standard.true;
  attribute KEEP of \uvc_sync_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \uvc_sync_reg[1]\ : label is std.standard.true;
  attribute KEEP of \uvc_sync_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \uvc_sync_reg[2]\ : label is std.standard.true;
  attribute KEEP of \uvc_sync_reg[2]\ : label is "yes";
begin
  status(6 downto 0) <= \^status\(6 downto 0);
  uvc <= uvc_p(2);
d_room_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^status\(6),
      O => d_room
    );
\mode_sync_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => gpio_o(0),
      Q => mode_sync(0),
      R => '0'
    );
\mode_sync_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => mode_sync(0),
      Q => mode_sync(1),
      R => '0'
    );
\mode_sync_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => mode_sync(1),
      Q => mode_sync(2),
      R => '0'
    );
\s2_din_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => x_dout(0),
      Q => s2_din(0),
      R => '0'
    );
\s2_din_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => x_dout(1),
      Q => s2_din(1),
      R => '0'
    );
\s2_din_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => x_dout(2),
      Q => s2_din(2),
      R => '0'
    );
\s2_din_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => x_dout(3),
      Q => s2_din(3),
      R => '0'
    );
\s2_din_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => x_dout(4),
      Q => s2_din(4),
      R => '0'
    );
\s2_din_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => x_dout(5),
      Q => s2_din(5),
      R => '0'
    );
\s2_din_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => x_dout(6),
      Q => s2_din(6),
      R => '0'
    );
\s2_din_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => x_dout(7),
      Q => s2_din(7),
      R => '0'
    );
s2_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => s2_wr0,
      Q => s2_wr,
      R => '0'
    );
\st_bytes[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \st_bytes_reg_n_0_[0]\,
      O => \st_bytes[0]_i_2_n_0\
    );
\st_bytes_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => rd_en,
      D => \st_bytes_reg[0]_i_1_n_7\,
      Q => \st_bytes_reg_n_0_[0]\,
      R => '0'
    );
\st_bytes_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \st_bytes_reg[0]_i_1_n_0\,
      CO(2) => \st_bytes_reg[0]_i_1_n_1\,
      CO(1) => \st_bytes_reg[0]_i_1_n_2\,
      CO(0) => \st_bytes_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \st_bytes_reg[0]_i_1_n_4\,
      O(2) => \st_bytes_reg[0]_i_1_n_5\,
      O(1) => \st_bytes_reg[0]_i_1_n_6\,
      O(0) => \st_bytes_reg[0]_i_1_n_7\,
      S(3) => \st_bytes_reg_n_0_[3]\,
      S(2) => \st_bytes_reg_n_0_[2]\,
      S(1) => \st_bytes_reg_n_0_[1]\,
      S(0) => \st_bytes[0]_i_2_n_0\
    );
\st_bytes_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => rd_en,
      D => \st_bytes_reg[8]_i_1_n_5\,
      Q => \st_bytes_reg_n_0_[10]\,
      R => '0'
    );
\st_bytes_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => rd_en,
      D => \st_bytes_reg[8]_i_1_n_4\,
      Q => \st_bytes_reg_n_0_[11]\,
      R => '0'
    );
\st_bytes_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => rd_en,
      D => \st_bytes_reg[12]_i_1_n_7\,
      Q => \^status\(1),
      R => '0'
    );
\st_bytes_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \st_bytes_reg[8]_i_1_n_0\,
      CO(3 downto 0) => \NLW_st_bytes_reg[12]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_st_bytes_reg[12]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \st_bytes_reg[12]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \^status\(1)
    );
\st_bytes_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => rd_en,
      D => \st_bytes_reg[0]_i_1_n_6\,
      Q => \st_bytes_reg_n_0_[1]\,
      R => '0'
    );
\st_bytes_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => rd_en,
      D => \st_bytes_reg[0]_i_1_n_5\,
      Q => \st_bytes_reg_n_0_[2]\,
      R => '0'
    );
\st_bytes_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => rd_en,
      D => \st_bytes_reg[0]_i_1_n_4\,
      Q => \st_bytes_reg_n_0_[3]\,
      R => '0'
    );
\st_bytes_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => rd_en,
      D => \st_bytes_reg[4]_i_1_n_7\,
      Q => \st_bytes_reg_n_0_[4]\,
      R => '0'
    );
\st_bytes_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \st_bytes_reg[0]_i_1_n_0\,
      CO(3) => \st_bytes_reg[4]_i_1_n_0\,
      CO(2) => \st_bytes_reg[4]_i_1_n_1\,
      CO(1) => \st_bytes_reg[4]_i_1_n_2\,
      CO(0) => \st_bytes_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \st_bytes_reg[4]_i_1_n_4\,
      O(2) => \st_bytes_reg[4]_i_1_n_5\,
      O(1) => \st_bytes_reg[4]_i_1_n_6\,
      O(0) => \st_bytes_reg[4]_i_1_n_7\,
      S(3) => \st_bytes_reg_n_0_[7]\,
      S(2) => \st_bytes_reg_n_0_[6]\,
      S(1) => \st_bytes_reg_n_0_[5]\,
      S(0) => \st_bytes_reg_n_0_[4]\
    );
\st_bytes_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => rd_en,
      D => \st_bytes_reg[4]_i_1_n_6\,
      Q => \st_bytes_reg_n_0_[5]\,
      R => '0'
    );
\st_bytes_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => rd_en,
      D => \st_bytes_reg[4]_i_1_n_5\,
      Q => \st_bytes_reg_n_0_[6]\,
      R => '0'
    );
\st_bytes_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => rd_en,
      D => \st_bytes_reg[4]_i_1_n_4\,
      Q => \st_bytes_reg_n_0_[7]\,
      R => '0'
    );
\st_bytes_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => rd_en,
      D => \st_bytes_reg[8]_i_1_n_7\,
      Q => \st_bytes_reg_n_0_[8]\,
      R => '0'
    );
\st_bytes_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \st_bytes_reg[4]_i_1_n_0\,
      CO(3) => \st_bytes_reg[8]_i_1_n_0\,
      CO(2) => \st_bytes_reg[8]_i_1_n_1\,
      CO(1) => \st_bytes_reg[8]_i_1_n_2\,
      CO(0) => \st_bytes_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \st_bytes_reg[8]_i_1_n_4\,
      O(2) => \st_bytes_reg[8]_i_1_n_5\,
      O(1) => \st_bytes_reg[8]_i_1_n_6\,
      O(0) => \st_bytes_reg[8]_i_1_n_7\,
      S(3) => \st_bytes_reg_n_0_[11]\,
      S(2) => \st_bytes_reg_n_0_[10]\,
      S(1) => \st_bytes_reg_n_0_[9]\,
      S(0) => \st_bytes_reg_n_0_[8]\
    );
\st_bytes_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => rd_en,
      D => \st_bytes_reg[8]_i_1_n_6\,
      Q => \st_bytes_reg_n_0_[9]\,
      R => '0'
    );
st_end_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ifclk,
      CE => '1',
      D => u_fx2_n_3,
      Q => \^status\(0),
      R => '0'
    );
st_row_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => din(8),
      I1 => d_wr,
      I2 => \^status\(2),
      O => st_row_i_1_n_0
    );
st_row_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => '1',
      D => st_row_i_1_n_0,
      Q => \^status\(2),
      R => '0'
    );
u_cfifo2: entity work.system_usb_stream_0_0_byte_fifo
     port map (
      D(0) => full04_in,
      Q(8 downto 0) => c2_count(8 downto 0),
      c2_rd => c2_rd,
      cap_rst => cap_rst,
      clk => clk,
      \count_reg[1]_0\(0) => nz0,
      \count_value_i_reg[0]\ => u_xfifo_i_3_n_0,
      dout(7 downto 0) => c2_dout(7 downto 0),
      empty => \^status\(4),
      mem_reg_1_0(7 downto 0) => s2_din(7 downto 0),
      \out\(0) => mode_sync(2),
      p_0_in(0) => p_0_in(0),
      prog_full => \^status\(5),
      rd_en => x_rd,
      rd_rst_busy => x_rd_busy,
      s2_wr => s2_wr,
      s2_wr0 => s2_wr0,
      s2_wr_reg(0) => uvc_sync(2),
      wr_rst_busy => wr_rst_busy
    );
u_fifo: entity work.\system_usb_stream_0_0_xpm_fifo_async__parameterized0\
     port map (
      almost_empty => NLW_u_fifo_almost_empty_UNCONNECTED,
      almost_full => NLW_u_fifo_almost_full_UNCONNECTED,
      data_valid => NLW_u_fifo_data_valid_UNCONNECTED,
      dbiterr => NLW_u_fifo_dbiterr_UNCONNECTED,
      din(8 downto 0) => din_0(8 downto 0),
      dout(8 downto 0) => dout(8 downto 0),
      empty => \^status\(3),
      full => NLW_u_fifo_full_UNCONNECTED,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => NLW_u_fifo_overflow_UNCONNECTED,
      prog_empty => NLW_u_fifo_prog_empty_UNCONNECTED,
      prog_full => \^status\(5),
      rd_clk => ifclk,
      rd_data_count(0) => NLW_u_fifo_rd_data_count_UNCONNECTED(0),
      rd_en => rd_en,
      rd_rst_busy => rd_rst_busy,
      rst => cap_rst,
      sbiterr => NLW_u_fifo_sbiterr_UNCONNECTED,
      sleep => '0',
      underflow => NLW_u_fifo_underflow_UNCONNECTED,
      wr_ack => NLW_u_fifo_wr_ack_UNCONNECTED,
      wr_clk => clk,
      wr_data_count(0) => NLW_u_fifo_wr_data_count_UNCONNECTED(0),
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy
    );
u_fifo_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => uvc_sync(2),
      I1 => x_dout(8),
      O => din_0(8)
    );
u_fx2: entity work.system_usb_stream_0_0_fx2_writer
     port map (
      dout(8 downto 0) => dout(8 downto 0),
      fx2_fd(7 downto 0) => fx2_fd(7 downto 0),
      fx2_flagb_n => fx2_flagb_n,
      fx2_pktend_n => fx2_pktend_n,
      fx2_pktend_n_reg_0 => u_fx2_n_3,
      fx2_slwr_n => fx2_slwr_n,
      ifclk => ifclk,
      rd_en => rd_en,
      rd_rst_busy => rd_rst_busy,
      status(1) => \^status\(3),
      status(0) => \^status\(0)
    );
u_ifclk: unisim.vcomponents.BUFG
     port map (
      I => fx2_ifclk,
      O => ifclk
    );
u_mux: entity work.system_usb_stream_0_0_stream_mux
     port map (
      D(0) => full04_in,
      Q(8 downto 0) => c2_count(8 downto 0),
      c2_rd => c2_rd,
      cap_rst => cap_rst,
      clk => clk,
      din(7 downto 0) => din_0(7 downto 0),
      dout(7 downto 0) => c2_dout(7 downto 0),
      empty => \^status\(4),
      \gen_wr_a.gen_word_narrow.mem_reg_3\(7 downto 0) => x_dout(7 downto 0),
      \nz_reg[2]_0\(0) => nz0,
      \out\(0) => uvc_sync(2),
      p_0_in(0) => p_0_in(0),
      prog_full => \^status\(5),
      raw0_count(13 downto 0) => raw0_count(13 downto 0),
      raw0_dout(7 downto 0) => raw0_dout(7 downto 0),
      raw0_rd => raw0_rd,
      raw1_count(13 downto 0) => raw1_count(13 downto 0),
      raw1_dout(7 downto 0) => raw1_dout(7 downto 0),
      raw1_rd => raw1_rd,
      rd_rst_busy => x_rd_busy,
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy
    );
u_xfifo: entity work.system_usb_stream_0_0_xpm_fifo_async
     port map (
      almost_empty => NLW_u_xfifo_almost_empty_UNCONNECTED,
      almost_full => NLW_u_xfifo_almost_full_UNCONNECTED,
      data_valid => NLW_u_xfifo_data_valid_UNCONNECTED,
      dbiterr => NLW_u_xfifo_dbiterr_UNCONNECTED,
      din(8 downto 0) => din(8 downto 0),
      dout(8 downto 0) => x_dout(8 downto 0),
      empty => \^status\(4),
      full => NLW_u_xfifo_full_UNCONNECTED,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => NLW_u_xfifo_overflow_UNCONNECTED,
      prog_empty => NLW_u_xfifo_prog_empty_UNCONNECTED,
      prog_full => \^status\(6),
      rd_clk => clk,
      rd_data_count(0) => NLW_u_xfifo_rd_data_count_UNCONNECTED(0),
      rd_en => x_rd,
      rd_rst_busy => x_rd_busy,
      rst => prst,
      sbiterr => NLW_u_xfifo_sbiterr_UNCONNECTED,
      sleep => '0',
      underflow => NLW_u_xfifo_underflow_UNCONNECTED,
      wr_ack => NLW_u_xfifo_wr_ack_UNCONNECTED,
      wr_clk => pclk,
      wr_data_count(0) => NLW_u_xfifo_wr_data_count_UNCONNECTED(0),
      wr_en => wr_en0,
      wr_rst_busy => x_wr_busy
    );
u_xfifo_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => d_wr,
      I1 => x_wr_busy,
      O => wr_en0
    );
u_xfifo_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_rd_busy,
      I1 => \^status\(4),
      O => u_xfifo_i_3_n_0
    );
\uvc_p_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => '1',
      D => gpio_o(1),
      Q => uvc_p(0),
      R => '0'
    );
\uvc_p_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => '1',
      D => uvc_p(0),
      Q => uvc_p(1),
      R => '0'
    );
\uvc_p_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => '1',
      D => uvc_p(1),
      Q => uvc_p(2),
      R => '0'
    );
\uvc_sync_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => gpio_o(1),
      Q => uvc_sync(0),
      R => '0'
    );
\uvc_sync_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => uvc_sync(0),
      Q => uvc_sync(1),
      R => '0'
    );
\uvc_sync_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => uvc_sync(1),
      Q => uvc_sync(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_usb_stream_0_0 is
  port (
    clk : in STD_LOGIC;
    pclk : in STD_LOGIC;
    cap_rst : in STD_LOGIC;
    prst : in STD_LOGIC;
    gpio_o : in STD_LOGIC_VECTOR ( 63 downto 0 );
    d_wr : in STD_LOGIC;
    d_byte : in STD_LOGIC_VECTOR ( 7 downto 0 );
    d_last : in STD_LOGIC;
    d_room : out STD_LOGIC;
    uvc : out STD_LOGIC;
    raw0_rd : out STD_LOGIC;
    raw0_dout : in STD_LOGIC_VECTOR ( 7 downto 0 );
    raw0_count : in STD_LOGIC_VECTOR ( 13 downto 0 );
    raw1_rd : out STD_LOGIC;
    raw1_dout : in STD_LOGIC_VECTOR ( 7 downto 0 );
    raw1_count : in STD_LOGIC_VECTOR ( 13 downto 0 );
    fx2_ifclk : in STD_LOGIC;
    fx2_flagb_n : in STD_LOGIC;
    fx2_fd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fx2_slwr_n : out STD_LOGIC;
    fx2_pktend_n : out STD_LOGIC;
    status : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_usb_stream_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_usb_stream_0_0 : entity is "system_usb_stream_0_0,usb_stream,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_usb_stream_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of system_usb_stream_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_usb_stream_0_0 : entity is "usb_stream,Vivado 2025.2";
end system_usb_stream_0_0;

architecture STRUCTURE of system_usb_stream_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of cap_rst : signal is "xilinx.com:signal:reset:1.0 cap_rst RST";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of cap_rst : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of cap_rst : signal is "XIL_INTERFACENAME cap_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
begin
inst: entity work.system_usb_stream_0_0_usb_stream
     port map (
      cap_rst => cap_rst,
      clk => clk,
      d_room => d_room,
      d_wr => d_wr,
      din(8) => d_last,
      din(7 downto 0) => d_byte(7 downto 0),
      fx2_fd(7 downto 0) => fx2_fd(7 downto 0),
      fx2_flagb_n => fx2_flagb_n,
      fx2_ifclk => fx2_ifclk,
      fx2_pktend_n => fx2_pktend_n,
      fx2_slwr_n => fx2_slwr_n,
      gpio_o(1 downto 0) => gpio_o(21 downto 20),
      pclk => pclk,
      prst => prst,
      raw0_count(13 downto 0) => raw0_count(13 downto 0),
      raw0_dout(7 downto 0) => raw0_dout(7 downto 0),
      raw0_rd => raw0_rd,
      raw1_count(13 downto 0) => raw1_count(13 downto 0),
      raw1_dout(7 downto 0) => raw1_dout(7 downto 0),
      raw1_rd => raw1_rd,
      status(6 downto 0) => status(6 downto 0),
      uvc => uvc
    );
end STRUCTURE;
