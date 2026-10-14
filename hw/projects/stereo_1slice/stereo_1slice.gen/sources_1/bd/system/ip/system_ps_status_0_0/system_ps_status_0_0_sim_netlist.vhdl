-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Wed Oct 14 08:43:41 2026
-- Host        : LAPTOP-THBQET7J running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/stereo-depth-cam/hw/projects/stereo_1slice/stereo_1slice.gen/sources_1/bd/system/ip/system_ps_status_0_0/system_ps_status_0_0_sim_netlist.vhdl
-- Design      : system_ps_status_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_ps_status_0_0_ps_status is
  port (
    gpio_i : out STD_LOGIC_VECTOR ( 7 downto 0 );
    led : out STD_LOGIC_VECTOR ( 0 to 0 );
    front_dbg : in STD_LOGIC_VECTOR ( 19 downto 0 );
    hub_state : in STD_LOGIC_VECTOR ( 3 downto 0 );
    usb_status : in STD_LOGIC_VECTOR ( 6 downto 0 );
    gpio_o : in STD_LOGIC_VECTOR ( 1 downto 0 );
    frame_led1 : in STD_LOGIC;
    depth_overrun : in STD_LOGIC;
    prst : in STD_LOGIC;
    pclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_ps_status_0_0_ps_status : entity is "ps_status";
end system_ps_status_0_0_ps_status;

architecture STRUCTURE of system_ps_status_0_0_ps_status is
  signal overrun_seen_i_1_n_0 : STD_LOGIC;
  signal st_flags : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \led[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of overrun_seen_i_1 : label is "soft_lutpair0";
begin
\gpio_i[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => front_dbg(4),
      I1 => hub_state(0),
      I2 => usb_status(0),
      I3 => gpio_o(1),
      I4 => gpio_o(0),
      I5 => front_dbg(12),
      O => gpio_i(0)
    );
\gpio_i[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => front_dbg(5),
      I1 => hub_state(1),
      I2 => usb_status(1),
      I3 => gpio_o(1),
      I4 => gpio_o(0),
      I5 => front_dbg(13),
      O => gpio_i(1)
    );
\gpio_i[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => front_dbg(6),
      I1 => hub_state(2),
      I2 => usb_status(2),
      I3 => gpio_o(1),
      I4 => gpio_o(0),
      I5 => front_dbg(14),
      O => gpio_i(2)
    );
\gpio_i[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => front_dbg(7),
      I1 => hub_state(3),
      I2 => usb_status(3),
      I3 => gpio_o(1),
      I4 => gpio_o(0),
      I5 => front_dbg(15),
      O => gpio_i(3)
    );
\gpio_i[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => front_dbg(8),
      I1 => front_dbg(0),
      I2 => usb_status(4),
      I3 => gpio_o(1),
      I4 => gpio_o(0),
      I5 => front_dbg(16),
      O => gpio_i(4)
    );
\gpio_i[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => front_dbg(9),
      I1 => front_dbg(1),
      I2 => usb_status(5),
      I3 => gpio_o(1),
      I4 => gpio_o(0),
      I5 => front_dbg(17),
      O => gpio_i(5)
    );
\gpio_i[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => front_dbg(10),
      I1 => front_dbg(2),
      I2 => usb_status(6),
      I3 => gpio_o(1),
      I4 => gpio_o(0),
      I5 => front_dbg(18),
      O => gpio_i(6)
    );
\gpio_i[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => front_dbg(11),
      I1 => front_dbg(3),
      I2 => st_flags(7),
      I3 => gpio_o(1),
      I4 => gpio_o(0),
      I5 => front_dbg(19),
      O => gpio_i(7)
    );
\led[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => frame_led1,
      I1 => st_flags(7),
      O => led(0)
    );
overrun_seen_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => st_flags(7),
      I1 => depth_overrun,
      I2 => prst,
      O => overrun_seen_i_1_n_0
    );
overrun_seen_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => '1',
      D => overrun_seen_i_1_n_0,
      Q => st_flags(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_ps_status_0_0 is
  port (
    pclk : in STD_LOGIC;
    prst : in STD_LOGIC;
    gpio_o : in STD_LOGIC_VECTOR ( 63 downto 0 );
    gpio_i : out STD_LOGIC_VECTOR ( 63 downto 0 );
    genlock : in STD_LOGIC_VECTOR ( 31 downto 0 );
    usb_status : in STD_LOGIC_VECTOR ( 6 downto 0 );
    depth_overrun : in STD_LOGIC;
    front_dbg : in STD_LOGIC_VECTOR ( 19 downto 0 );
    hub_state : in STD_LOGIC_VECTOR ( 3 downto 0 );
    frame_led0 : in STD_LOGIC;
    frame_led1 : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_ps_status_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_ps_status_0_0 : entity is "system_ps_status_0_0,ps_status,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_ps_status_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of system_ps_status_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_ps_status_0_0 : entity is "ps_status,Vivado 2025.2";
end system_ps_status_0_0;

architecture STRUCTURE of system_ps_status_0_0 is
  signal \^frame_led0\ : STD_LOGIC;
  signal \^genlock\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^gpio_i\ : STD_LOGIC_VECTOR ( 31 downto 24 );
  signal \^gpio_o\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \^led\ : STD_LOGIC_VECTOR ( 1 to 1 );
begin
  \^frame_led0\ <= frame_led0;
  \^genlock\(31 downto 0) <= genlock(31 downto 0);
  \^gpio_o\(23 downto 0) <= gpio_o(23 downto 0);
  gpio_i(63 downto 32) <= \^genlock\(31 downto 0);
  gpio_i(31 downto 24) <= \^gpio_i\(31 downto 24);
  gpio_i(23 downto 0) <= \^gpio_o\(23 downto 0);
  led(1) <= \^led\(1);
  led(0) <= \^frame_led0\;
inst: entity work.system_ps_status_0_0_ps_status
     port map (
      depth_overrun => depth_overrun,
      frame_led1 => frame_led1,
      front_dbg(19 downto 0) => front_dbg(19 downto 0),
      gpio_i(7 downto 0) => \^gpio_i\(31 downto 24),
      gpio_o(1 downto 0) => \^gpio_o\(23 downto 22),
      hub_state(3 downto 0) => hub_state(3 downto 0),
      led(0) => \^led\(1),
      pclk => pclk,
      prst => prst,
      usb_status(6 downto 0) => usb_status(6 downto 0)
    );
end STRUCTURE;
