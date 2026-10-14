-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Wed Oct 14 08:43:04 2026
-- Host        : LAPTOP-THBQET7J running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/stereo-depth-cam/hw/projects/stereo_1slice/stereo_1slice.gen/sources_1/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0_stub.vhdl
-- Design      : system_processing_system7_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_processing_system7_0_0 is
  Port ( 
    ENET0_GMII_TX_EN : out STD_LOGIC_VECTOR ( 0 to 0 );
    ENET0_GMII_TX_ER : out STD_LOGIC_VECTOR ( 0 to 0 );
    ENET0_MDIO_MDC : out STD_LOGIC;
    ENET0_MDIO_O : out STD_LOGIC;
    ENET0_MDIO_T : out STD_LOGIC;
    ENET0_GMII_TXD : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ENET0_GMII_COL : in STD_LOGIC;
    ENET0_GMII_CRS : in STD_LOGIC;
    ENET0_GMII_RX_CLK : in STD_LOGIC;
    ENET0_GMII_RX_DV : in STD_LOGIC;
    ENET0_GMII_RX_ER : in STD_LOGIC;
    ENET0_GMII_TX_CLK : in STD_LOGIC;
    ENET0_MDIO_I : in STD_LOGIC;
    ENET0_EXT_INTIN : in STD_LOGIC;
    ENET0_GMII_RXD : in STD_LOGIC_VECTOR ( 7 downto 0 );
    GPIO_I : in STD_LOGIC_VECTOR ( 63 downto 0 );
    GPIO_O : out STD_LOGIC_VECTOR ( 63 downto 0 );
    GPIO_T : out STD_LOGIC_VECTOR ( 63 downto 0 );
    I2C0_SDA_I : in STD_LOGIC;
    I2C0_SDA_O : out STD_LOGIC;
    I2C0_SDA_T : out STD_LOGIC;
    I2C0_SCL_I : in STD_LOGIC;
    I2C0_SCL_O : out STD_LOGIC;
    I2C0_SCL_T : out STD_LOGIC;
    I2C1_SDA_I : in STD_LOGIC;
    I2C1_SDA_O : out STD_LOGIC;
    I2C1_SDA_T : out STD_LOGIC;
    I2C1_SCL_I : in STD_LOGIC;
    I2C1_SCL_O : out STD_LOGIC;
    I2C1_SCL_T : out STD_LOGIC;
    FCLK_CLK0 : out STD_LOGIC;
    FCLK_CLK1 : out STD_LOGIC;
    FCLK_RESET0_N : out STD_LOGIC;
    MIO : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    DDR_CAS_n : inout STD_LOGIC;
    DDR_CKE : inout STD_LOGIC;
    DDR_Clk_n : inout STD_LOGIC;
    DDR_Clk : inout STD_LOGIC;
    DDR_CS_n : inout STD_LOGIC;
    DDR_DRSTB : inout STD_LOGIC;
    DDR_ODT : inout STD_LOGIC;
    DDR_RAS_n : inout STD_LOGIC;
    DDR_WEB : inout STD_LOGIC;
    DDR_BankAddr : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_Addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_VRN : inout STD_LOGIC;
    DDR_VRP : inout STD_LOGIC;
    DDR_DM : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQ : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_DQS_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQS : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    PS_SRSTB : inout STD_LOGIC;
    PS_CLK : inout STD_LOGIC;
    PS_PORB : inout STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_processing_system7_0_0 : entity is "system_processing_system7_0_0,processing_system7_v5_5_processing_system7,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of system_processing_system7_0_0 : entity is "system_processing_system7_0_0,processing_system7_v5_5_processing_system7,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=processing_system7,x_ipVersion=5.5,x_ipCoreRevision=8,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_EN_EMIO_PJTAG=0,C_EN_EMIO_ENET0=1,C_EN_EMIO_ENET1=0,C_EN_EMIO_TRACE=0,C_INCLUDE_TRACE_BUFFER=0,C_TRACE_BUFFER_FIFO_SIZE=128,USE_TRACE_DATA_EDGE_DETECTOR=0,C_TRACE_PIPELINE_WIDTH=8,C_TRACE_BUFFER_CLOCK_DELAY=12,C_EMIO_GPIO_WIDTH=64,C_INCLUDE_ACP_TRANS_CHECK=0,C_USE_DEFAULT_ACP_USER_VAL=0,C_S_AXI_ACP_ARUSER_VAL=31,C_S_AXI_ACP_AWUSER_VAL=31,C_M_AXI_GP0_ID_WIDTH=12,C_M_AXI_GP0_ENABLE_STATIC_REMAP=0,C_M_AXI_GP1_ID_WIDTH=12,C_M_AXI_GP1_ENABLE_STATIC_REMAP=0,C_S_AXI_GP0_ID_WIDTH=6,C_S_AXI_GP1_ID_WIDTH=6,C_S_AXI_ACP_ID_WIDTH=3,C_S_AXI_HP0_ID_WIDTH=6,C_S_AXI_HP0_DATA_WIDTH=64,C_S_AXI_HP1_ID_WIDTH=6,C_S_AXI_HP1_DATA_WIDTH=64,C_S_AXI_HP2_ID_WIDTH=6,C_S_AXI_HP2_DATA_WIDTH=64,C_S_AXI_HP3_ID_WIDTH=6,C_S_AXI_HP3_DATA_WIDTH=64,C_M_AXI_GP0_THREAD_ID_WIDTH=12,C_M_AXI_GP1_THREAD_ID_WIDTH=12,C_NUM_F2P_INTR_INPUTS=1,C_IRQ_F2P_MODE=DIRECT,C_DQ_WIDTH=32,C_DQS_WIDTH=4,C_DM_WIDTH=4,C_MIO_PRIMITIVE=54,C_TRACE_INTERNAL_WIDTH=2,C_USE_AXI_NONSECURE=0,C_USE_M_AXI_GP0=0,C_USE_M_AXI_GP1=0,C_USE_S_AXI_GP0=0,C_USE_S_AXI_GP1=0,C_USE_S_AXI_HP0=0,C_USE_S_AXI_HP1=0,C_USE_S_AXI_HP2=0,C_USE_S_AXI_HP3=0,C_USE_S_AXI_ACP=0,C_PS7_SI_REV=PRODUCTION,C_FCLK_CLK0_BUF=TRUE,C_FCLK_CLK1_BUF=TRUE,C_FCLK_CLK2_BUF=FALSE,C_FCLK_CLK3_BUF=FALSE,C_PACKAGE_NAME=clg400,C_GP0_EN_MODIFIABLE_TXN=1,C_GP1_EN_MODIFIABLE_TXN=1}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_processing_system7_0_0 : entity is "yes";
end system_processing_system7_0_0;

architecture stub of system_processing_system7_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "ENET0_GMII_TX_EN[0:0],ENET0_GMII_TX_ER[0:0],ENET0_MDIO_MDC,ENET0_MDIO_O,ENET0_MDIO_T,ENET0_GMII_TXD[7:0],ENET0_GMII_COL,ENET0_GMII_CRS,ENET0_GMII_RX_CLK,ENET0_GMII_RX_DV,ENET0_GMII_RX_ER,ENET0_GMII_TX_CLK,ENET0_MDIO_I,ENET0_EXT_INTIN,ENET0_GMII_RXD[7:0],GPIO_I[63:0],GPIO_O[63:0],GPIO_T[63:0],I2C0_SDA_I,I2C0_SDA_O,I2C0_SDA_T,I2C0_SCL_I,I2C0_SCL_O,I2C0_SCL_T,I2C1_SDA_I,I2C1_SDA_O,I2C1_SDA_T,I2C1_SCL_I,I2C1_SCL_O,I2C1_SCL_T,FCLK_CLK0,FCLK_CLK1,FCLK_RESET0_N,MIO[53:0],DDR_CAS_n,DDR_CKE,DDR_Clk_n,DDR_Clk,DDR_CS_n,DDR_DRSTB,DDR_ODT,DDR_RAS_n,DDR_WEB,DDR_BankAddr[2:0],DDR_Addr[14:0],DDR_VRN,DDR_VRP,DDR_DM[3:0],DDR_DQ[31:0],DDR_DQS_n[3:0],DDR_DQS[3:0],PS_SRSTB,PS_CLK,PS_PORB";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ENET0_GMII_TX_EN : signal is "xilinx.com:interface:gmii:1.0 GMII_ETHERNET_0 TX_EN";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of ENET0_GMII_TX_EN : signal is "master";
  attribute X_INTERFACE_INFO of ENET0_GMII_TX_ER : signal is "xilinx.com:interface:gmii:1.0 GMII_ETHERNET_0 TX_ER";
  attribute X_INTERFACE_INFO of ENET0_MDIO_MDC : signal is "xilinx.com:interface:mdio:1.0 MDIO_ETHERNET_0 MDC";
  attribute X_INTERFACE_MODE of ENET0_MDIO_MDC : signal is "master";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ENET0_MDIO_MDC : signal is "XIL_INTERFACENAME MDIO_ETHERNET_0, CAN_DEBUG false";
  attribute X_INTERFACE_INFO of ENET0_MDIO_O : signal is "xilinx.com:interface:mdio:1.0 MDIO_ETHERNET_0 MDIO_O";
  attribute X_INTERFACE_INFO of ENET0_MDIO_T : signal is "xilinx.com:interface:mdio:1.0 MDIO_ETHERNET_0 MDIO_T";
  attribute X_INTERFACE_INFO of ENET0_GMII_TXD : signal is "xilinx.com:interface:gmii:1.0 GMII_ETHERNET_0 TXD";
  attribute X_INTERFACE_INFO of ENET0_GMII_COL : signal is "xilinx.com:interface:gmii:1.0 GMII_ETHERNET_0 COL";
  attribute X_INTERFACE_INFO of ENET0_GMII_CRS : signal is "xilinx.com:interface:gmii:1.0 GMII_ETHERNET_0 CRS";
  attribute X_INTERFACE_INFO of ENET0_GMII_RX_CLK : signal is "xilinx.com:interface:gmii:1.0 GMII_ETHERNET_0 RX_CLK";
  attribute X_INTERFACE_INFO of ENET0_GMII_RX_DV : signal is "xilinx.com:interface:gmii:1.0 GMII_ETHERNET_0 RX_DV";
  attribute X_INTERFACE_INFO of ENET0_GMII_RX_ER : signal is "xilinx.com:interface:gmii:1.0 GMII_ETHERNET_0 RX_ER";
  attribute X_INTERFACE_INFO of ENET0_GMII_TX_CLK : signal is "xilinx.com:interface:gmii:1.0 GMII_ETHERNET_0 TX_CLK";
  attribute X_INTERFACE_INFO of ENET0_MDIO_I : signal is "xilinx.com:interface:mdio:1.0 MDIO_ETHERNET_0 MDIO_I";
  attribute X_INTERFACE_INFO of ENET0_EXT_INTIN : signal is "xilinx.com:signal:interrupt:1.0 ENET0_EXT_INTIN INTERRUPT";
  attribute X_INTERFACE_MODE of ENET0_EXT_INTIN : signal is "master";
  attribute X_INTERFACE_PARAMETER of ENET0_EXT_INTIN : signal is "XIL_INTERFACENAME ENET0_EXT_INTIN, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of ENET0_GMII_RXD : signal is "xilinx.com:interface:gmii:1.0 GMII_ETHERNET_0 RXD";
  attribute X_INTERFACE_INFO of GPIO_I : signal is "xilinx.com:interface:gpio:1.0 GPIO_0 TRI_I";
  attribute X_INTERFACE_MODE of GPIO_I : signal is "master";
  attribute X_INTERFACE_INFO of GPIO_O : signal is "xilinx.com:interface:gpio:1.0 GPIO_0 TRI_O";
  attribute X_INTERFACE_INFO of GPIO_T : signal is "xilinx.com:interface:gpio:1.0 GPIO_0 TRI_T";
  attribute X_INTERFACE_INFO of I2C0_SDA_I : signal is "xilinx.com:interface:iic:1.0 IIC_0 SDA_I";
  attribute X_INTERFACE_MODE of I2C0_SDA_I : signal is "master";
  attribute X_INTERFACE_INFO of I2C0_SDA_O : signal is "xilinx.com:interface:iic:1.0 IIC_0 SDA_O";
  attribute X_INTERFACE_INFO of I2C0_SDA_T : signal is "xilinx.com:interface:iic:1.0 IIC_0 SDA_T";
  attribute X_INTERFACE_INFO of I2C0_SCL_I : signal is "xilinx.com:interface:iic:1.0 IIC_0 SCL_I";
  attribute X_INTERFACE_INFO of I2C0_SCL_O : signal is "xilinx.com:interface:iic:1.0 IIC_0 SCL_O";
  attribute X_INTERFACE_INFO of I2C0_SCL_T : signal is "xilinx.com:interface:iic:1.0 IIC_0 SCL_T";
  attribute X_INTERFACE_INFO of I2C1_SDA_I : signal is "xilinx.com:interface:iic:1.0 IIC_1 SDA_I";
  attribute X_INTERFACE_MODE of I2C1_SDA_I : signal is "master";
  attribute X_INTERFACE_INFO of I2C1_SDA_O : signal is "xilinx.com:interface:iic:1.0 IIC_1 SDA_O";
  attribute X_INTERFACE_INFO of I2C1_SDA_T : signal is "xilinx.com:interface:iic:1.0 IIC_1 SDA_T";
  attribute X_INTERFACE_INFO of I2C1_SCL_I : signal is "xilinx.com:interface:iic:1.0 IIC_1 SCL_I";
  attribute X_INTERFACE_INFO of I2C1_SCL_O : signal is "xilinx.com:interface:iic:1.0 IIC_1 SCL_O";
  attribute X_INTERFACE_INFO of I2C1_SCL_T : signal is "xilinx.com:interface:iic:1.0 IIC_1 SCL_T";
  attribute X_INTERFACE_INFO of FCLK_CLK0 : signal is "xilinx.com:signal:clock:1.0 FCLK_CLK0 CLK";
  attribute X_INTERFACE_MODE of FCLK_CLK0 : signal is "master";
  attribute X_INTERFACE_PARAMETER of FCLK_CLK0 : signal is "XIL_INTERFACENAME FCLK_CLK0, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of FCLK_CLK1 : signal is "xilinx.com:signal:clock:1.0 FCLK_CLK1 CLK";
  attribute X_INTERFACE_MODE of FCLK_CLK1 : signal is "master";
  attribute X_INTERFACE_PARAMETER of FCLK_CLK1 : signal is "XIL_INTERFACENAME FCLK_CLK1, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of FCLK_RESET0_N : signal is "xilinx.com:signal:reset:1.0 FCLK_RESET0_N RST";
  attribute X_INTERFACE_MODE of FCLK_RESET0_N : signal is "master";
  attribute X_INTERFACE_PARAMETER of FCLK_RESET0_N : signal is "XIL_INTERFACENAME FCLK_RESET0_N, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of MIO : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO";
  attribute X_INTERFACE_MODE of MIO : signal is "master";
  attribute X_INTERFACE_PARAMETER of MIO : signal is "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false";
  attribute X_INTERFACE_INFO of DDR_CAS_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CAS_N";
  attribute X_INTERFACE_MODE of DDR_CAS_n : signal is "master";
  attribute X_INTERFACE_PARAMETER of DDR_CAS_n : signal is "XIL_INTERFACENAME DDR, CAN_DEBUG false, TIMEPERIOD_PS 1250, MEMORY_TYPE COMPONENTS, DATA_WIDTH 8, CS_ENABLED true, DATA_MASK_ENABLED true, SLOT Single, MEM_ADDR_MAP ROW_COLUMN_BANK, BURST_LENGTH 8, AXI_ARBITRATION_SCHEME TDM, CAS_LATENCY 11, CAS_WRITE_LATENCY 11";
  attribute X_INTERFACE_INFO of DDR_CKE : signal is "xilinx.com:interface:ddrx:1.0 DDR CKE";
  attribute X_INTERFACE_INFO of DDR_Clk_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_N";
  attribute X_INTERFACE_INFO of DDR_Clk : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_P";
  attribute X_INTERFACE_INFO of DDR_CS_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CS_N";
  attribute X_INTERFACE_INFO of DDR_DRSTB : signal is "xilinx.com:interface:ddrx:1.0 DDR RESET_N";
  attribute X_INTERFACE_INFO of DDR_ODT : signal is "xilinx.com:interface:ddrx:1.0 DDR ODT";
  attribute X_INTERFACE_INFO of DDR_RAS_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RAS_N";
  attribute X_INTERFACE_INFO of DDR_WEB : signal is "xilinx.com:interface:ddrx:1.0 DDR WE_N";
  attribute X_INTERFACE_INFO of DDR_BankAddr : signal is "xilinx.com:interface:ddrx:1.0 DDR BA";
  attribute X_INTERFACE_INFO of DDR_Addr : signal is "xilinx.com:interface:ddrx:1.0 DDR ADDR";
  attribute X_INTERFACE_INFO of DDR_VRN : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN";
  attribute X_INTERFACE_INFO of DDR_VRP : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP";
  attribute X_INTERFACE_INFO of DDR_DM : signal is "xilinx.com:interface:ddrx:1.0 DDR DM";
  attribute X_INTERFACE_INFO of DDR_DQ : signal is "xilinx.com:interface:ddrx:1.0 DDR DQ";
  attribute X_INTERFACE_INFO of DDR_DQS_n : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_N";
  attribute X_INTERFACE_INFO of DDR_DQS : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_P";
  attribute X_INTERFACE_INFO of PS_SRSTB : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB";
  attribute X_INTERFACE_INFO of PS_CLK : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK";
  attribute X_INTERFACE_INFO of PS_PORB : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "processing_system7_v5_5_processing_system7,Vivado 2025.2";
begin
end;
