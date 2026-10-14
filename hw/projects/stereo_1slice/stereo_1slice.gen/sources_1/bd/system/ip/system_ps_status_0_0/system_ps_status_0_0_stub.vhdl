-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Wed Oct 14 08:43:41 2026
-- Host        : LAPTOP-THBQET7J running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/stereo-depth-cam/hw/projects/stereo_1slice/stereo_1slice.gen/sources_1/bd/system/ip/system_ps_status_0_0/system_ps_status_0_0_stub.vhdl
-- Design      : system_ps_status_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_ps_status_0_0 is
  Port ( 
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

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_ps_status_0_0 : entity is "system_ps_status_0_0,ps_status,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of system_ps_status_0_0 : entity is "system_ps_status_0_0,ps_status,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=ps_status,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_ps_status_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of system_ps_status_0_0 : entity is "module_ref";
end system_ps_status_0_0;

architecture stub of system_ps_status_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "pclk,prst,gpio_o[63:0],gpio_i[63:0],genlock[31:0],usb_status[6:0],depth_overrun,front_dbg[19:0],hub_state[3:0],frame_led0,frame_led1,led[1:0]";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "ps_status,Vivado 2025.2";
begin
end;
