-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Wed Oct 14 08:43:03 2026
-- Host        : LAPTOP-THBQET7J running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/stereo-depth-cam/hw/projects/stereo_1slice/stereo_1slice.gen/sources_1/bd/system/ip/system_cam_input_0_0/system_cam_input_0_0_stub.vhdl
-- Design      : system_cam_input_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_cam_input_0_0 is
  Port ( 
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

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_cam_input_0_0 : entity is "system_cam_input_0_0,cam_input,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of system_cam_input_0_0 : entity is "system_cam_input_0_0,cam_input,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=cam_input,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,FIFO_AW=13}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_cam_input_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of system_cam_input_0_0 : entity is "module_ref";
end system_cam_input_0_0;

architecture stub of system_cam_input_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk,pclk,gpio_o[63:0],cam_d[7:0],cam_pclk,cam_vsync,cam_href,cam_pwdn,cam2_d[7:0],cam2_pclk,cam2_vsync,cam2_href,cam2_pwdn,cap_rst,prst,raw0_rd,raw0_dout[7:0],raw0_count[13:0],raw1_rd,raw1_dout[7:0],raw1_count[13:0],rows_gray0[9:0],rows_gray1[9:0],sof_toggle0,sof_toggle1,frame_base0[15:0],frame_base1[15:0],rd_addr0[15:0],rd_addr1[15:0],rd_data0[7:0],rd_data1[7:0],start_us1[31:0],genlock[31:0],frame_led0,frame_led1";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of cap_rst : signal is "xilinx.com:signal:reset:1.0 cap_rst RST";
  attribute X_INTERFACE_MODE of cap_rst : signal is "master";
  attribute X_INTERFACE_PARAMETER of cap_rst : signal is "XIL_INTERFACENAME cap_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "cam_input,Vivado 2025.2";
begin
end;
