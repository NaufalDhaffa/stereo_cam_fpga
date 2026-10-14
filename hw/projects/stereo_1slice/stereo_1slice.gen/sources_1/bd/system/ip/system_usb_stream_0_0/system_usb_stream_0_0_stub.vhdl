-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Wed Oct 14 08:43:52 2026
-- Host        : LAPTOP-THBQET7J running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/stereo-depth-cam/hw/projects/stereo_1slice/stereo_1slice.gen/sources_1/bd/system/ip/system_usb_stream_0_0/system_usb_stream_0_0_stub.vhdl
-- Design      : system_usb_stream_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_usb_stream_0_0 is
  Port ( 
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

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_usb_stream_0_0 : entity is "system_usb_stream_0_0,usb_stream,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of system_usb_stream_0_0 : entity is "system_usb_stream_0_0,usb_stream,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=usb_stream,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,FIFO_AW=13}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_usb_stream_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of system_usb_stream_0_0 : entity is "module_ref";
end system_usb_stream_0_0;

architecture stub of system_usb_stream_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk,pclk,cap_rst,prst,gpio_o[63:0],d_wr,d_byte[7:0],d_last,d_room,uvc,raw0_rd,raw0_dout[7:0],raw0_count[13:0],raw1_rd,raw1_dout[7:0],raw1_count[13:0],fx2_ifclk,fx2_flagb_n,fx2_fd[7:0],fx2_slwr_n,fx2_pktend_n,status[6:0]";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of cap_rst : signal is "xilinx.com:signal:reset:1.0 cap_rst RST";
  attribute X_INTERFACE_MODE of cap_rst : signal is "slave";
  attribute X_INTERFACE_PARAMETER of cap_rst : signal is "XIL_INTERFACENAME cap_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "usb_stream,Vivado 2025.2";
begin
end;
