-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Wed Oct 14 08:36:09 2026
-- Host        : LAPTOP-THBQET7J running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/stereo-depth-cam/hw/projects/stereo_2slice/stereo_2slice.gen/sources_1/bd/system/ip/system_frame_format_0_0/system_frame_format_0_0_stub.vhdl
-- Design      : system_frame_format_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_frame_format_0_0 is
  Port ( 
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

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_frame_format_0_0 : entity is "system_frame_format_0_0,frame_format,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of system_frame_format_0_0 : entity is "system_frame_format_0_0,frame_format,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=frame_format,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,W=200,H=148}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_frame_format_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of system_frame_format_0_0 : entity is "module_ref";
end system_frame_format_0_0;

architecture stub of system_frame_format_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk,rst,px_valid,px_y[9:0],px_x[9:0],px_disp[11:0],hdr_start,l_valid,l_first,l_luma[7:0],start_us[31:0],uvc,out_room,out_wr,out_byte[7:0],out_last";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_MODE of rst : signal is "slave";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "frame_format,Vivado 2025.2";
begin
end;
