// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Wed Oct 14 08:43:04 2026
// Host        : LAPTOP-THBQET7J running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/stereo-depth-cam/hw/projects/stereo_1slice/stereo_1slice.gen/sources_1/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0_stub.v
// Design      : system_processing_system7_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "system_processing_system7_0_0,processing_system7_v5_5_processing_system7,{}" *) (* CORE_GENERATION_INFO = "system_processing_system7_0_0,processing_system7_v5_5_processing_system7,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=processing_system7,x_ipVersion=5.5,x_ipCoreRevision=8,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_EN_EMIO_PJTAG=0,C_EN_EMIO_ENET0=1,C_EN_EMIO_ENET1=0,C_EN_EMIO_TRACE=0,C_INCLUDE_TRACE_BUFFER=0,C_TRACE_BUFFER_FIFO_SIZE=128,USE_TRACE_DATA_EDGE_DETECTOR=0,C_TRACE_PIPELINE_WIDTH=8,C_TRACE_BUFFER_CLOCK_DELAY=12,C_EMIO_GPIO_WIDTH=64,C_INCLUDE_ACP_TRANS_CHECK=0,C_USE_DEFAULT_ACP_USER_VAL=0,C_S_AXI_ACP_ARUSER_VAL=31,C_S_AXI_ACP_AWUSER_VAL=31,C_M_AXI_GP0_ID_WIDTH=12,C_M_AXI_GP0_ENABLE_STATIC_REMAP=0,C_M_AXI_GP1_ID_WIDTH=12,C_M_AXI_GP1_ENABLE_STATIC_REMAP=0,C_S_AXI_GP0_ID_WIDTH=6,C_S_AXI_GP1_ID_WIDTH=6,C_S_AXI_ACP_ID_WIDTH=3,C_S_AXI_HP0_ID_WIDTH=6,C_S_AXI_HP0_DATA_WIDTH=64,C_S_AXI_HP1_ID_WIDTH=6,C_S_AXI_HP1_DATA_WIDTH=64,C_S_AXI_HP2_ID_WIDTH=6,C_S_AXI_HP2_DATA_WIDTH=64,C_S_AXI_HP3_ID_WIDTH=6,C_S_AXI_HP3_DATA_WIDTH=64,C_M_AXI_GP0_THREAD_ID_WIDTH=12,C_M_AXI_GP1_THREAD_ID_WIDTH=12,C_NUM_F2P_INTR_INPUTS=1,C_IRQ_F2P_MODE=DIRECT,C_DQ_WIDTH=32,C_DQS_WIDTH=4,C_DM_WIDTH=4,C_MIO_PRIMITIVE=54,C_TRACE_INTERNAL_WIDTH=2,C_USE_AXI_NONSECURE=0,C_USE_M_AXI_GP0=0,C_USE_M_AXI_GP1=0,C_USE_S_AXI_GP0=0,C_USE_S_AXI_GP1=0,C_USE_S_AXI_HP0=0,C_USE_S_AXI_HP1=0,C_USE_S_AXI_HP2=0,C_USE_S_AXI_HP3=0,C_USE_S_AXI_ACP=0,C_PS7_SI_REV=PRODUCTION,C_FCLK_CLK0_BUF=TRUE,C_FCLK_CLK1_BUF=TRUE,C_FCLK_CLK2_BUF=FALSE,C_FCLK_CLK3_BUF=FALSE,C_PACKAGE_NAME=clg400,C_GP0_EN_MODIFIABLE_TXN=1,C_GP1_EN_MODIFIABLE_TXN=1}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* X_CORE_INFO = "processing_system7_v5_5_processing_system7,Vivado 2025.2" *) 
module system_processing_system7_0_0(ENET0_GMII_TX_EN, ENET0_GMII_TX_ER, 
  ENET0_MDIO_MDC, ENET0_MDIO_O, ENET0_MDIO_T, ENET0_GMII_TXD, ENET0_GMII_COL, ENET0_GMII_CRS, 
  ENET0_GMII_RX_CLK, ENET0_GMII_RX_DV, ENET0_GMII_RX_ER, ENET0_GMII_TX_CLK, ENET0_MDIO_I, 
  ENET0_EXT_INTIN, ENET0_GMII_RXD, GPIO_I, GPIO_O, GPIO_T, I2C0_SDA_I, I2C0_SDA_O, I2C0_SDA_T, 
  I2C0_SCL_I, I2C0_SCL_O, I2C0_SCL_T, I2C1_SDA_I, I2C1_SDA_O, I2C1_SDA_T, I2C1_SCL_I, I2C1_SCL_O, 
  I2C1_SCL_T, FCLK_CLK0, FCLK_CLK1, FCLK_RESET0_N, MIO, DDR_CAS_n, DDR_CKE, DDR_Clk_n, DDR_Clk, 
  DDR_CS_n, DDR_DRSTB, DDR_ODT, DDR_RAS_n, DDR_WEB, DDR_BankAddr, DDR_Addr, DDR_VRN, DDR_VRP, DDR_DM, 
  DDR_DQ, DDR_DQS_n, DDR_DQS, PS_SRSTB, PS_CLK, PS_PORB)
/* synthesis syn_black_box black_box_pad_pin="ENET0_GMII_TX_EN[0:0],ENET0_GMII_TX_ER[0:0],ENET0_MDIO_MDC,ENET0_MDIO_O,ENET0_MDIO_T,ENET0_GMII_TXD[7:0],ENET0_GMII_COL,ENET0_GMII_CRS,ENET0_GMII_RX_DV,ENET0_GMII_RX_ER,ENET0_MDIO_I,ENET0_EXT_INTIN,ENET0_GMII_RXD[7:0],GPIO_I[63:0],GPIO_O[63:0],GPIO_T[63:0],I2C0_SDA_I,I2C0_SDA_O,I2C0_SDA_T,I2C0_SCL_I,I2C0_SCL_O,I2C0_SCL_T,I2C1_SDA_I,I2C1_SDA_O,I2C1_SDA_T,I2C1_SCL_I,I2C1_SCL_O,I2C1_SCL_T,FCLK_RESET0_N,MIO[53:0],DDR_CAS_n,DDR_CKE,DDR_Clk_n,DDR_Clk,DDR_CS_n,DDR_DRSTB,DDR_ODT,DDR_RAS_n,DDR_WEB,DDR_BankAddr[2:0],DDR_Addr[14:0],DDR_VRN,DDR_VRP,DDR_DM[3:0],DDR_DQ[31:0],DDR_DQS_n[3:0],DDR_DQS[3:0],PS_SRSTB,PS_CLK,PS_PORB" */
/* synthesis syn_force_seq_prim="ENET0_GMII_RX_CLK" */
/* synthesis syn_force_seq_prim="ENET0_GMII_TX_CLK" */
/* synthesis syn_force_seq_prim="FCLK_CLK0" */
/* synthesis syn_force_seq_prim="FCLK_CLK1" */;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gmii:1.0 GMII_ETHERNET_0 TX_EN" *) (* X_INTERFACE_MODE = "master" *) output [0:0]ENET0_GMII_TX_EN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gmii:1.0 GMII_ETHERNET_0 TX_ER" *) output [0:0]ENET0_GMII_TX_ER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 MDIO_ETHERNET_0 MDC" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME MDIO_ETHERNET_0, CAN_DEBUG false" *) output ENET0_MDIO_MDC;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 MDIO_ETHERNET_0 MDIO_O" *) output ENET0_MDIO_O;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 MDIO_ETHERNET_0 MDIO_T" *) output ENET0_MDIO_T;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gmii:1.0 GMII_ETHERNET_0 TXD" *) output [7:0]ENET0_GMII_TXD;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gmii:1.0 GMII_ETHERNET_0 COL" *) input ENET0_GMII_COL;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gmii:1.0 GMII_ETHERNET_0 CRS" *) input ENET0_GMII_CRS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gmii:1.0 GMII_ETHERNET_0 RX_CLK" *) input ENET0_GMII_RX_CLK /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gmii:1.0 GMII_ETHERNET_0 RX_DV" *) input ENET0_GMII_RX_DV;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gmii:1.0 GMII_ETHERNET_0 RX_ER" *) input ENET0_GMII_RX_ER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gmii:1.0 GMII_ETHERNET_0 TX_CLK" *) input ENET0_GMII_TX_CLK /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 MDIO_ETHERNET_0 MDIO_I" *) input ENET0_MDIO_I;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 ENET0_EXT_INTIN INTERRUPT" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ENET0_EXT_INTIN, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) input ENET0_EXT_INTIN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gmii:1.0 GMII_ETHERNET_0 RXD" *) input [7:0]ENET0_GMII_RXD;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_0 TRI_I" *) (* X_INTERFACE_MODE = "master" *) input [63:0]GPIO_I;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_0 TRI_O" *) output [63:0]GPIO_O;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_0 TRI_T" *) output [63:0]GPIO_T;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_0 SDA_I" *) (* X_INTERFACE_MODE = "master" *) input I2C0_SDA_I;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_0 SDA_O" *) output I2C0_SDA_O;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_0 SDA_T" *) output I2C0_SDA_T;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_0 SCL_I" *) input I2C0_SCL_I;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_0 SCL_O" *) output I2C0_SCL_O;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_0 SCL_T" *) output I2C0_SCL_T;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_1 SDA_I" *) (* X_INTERFACE_MODE = "master" *) input I2C1_SDA_I;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_1 SDA_O" *) output I2C1_SDA_O;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_1 SDA_T" *) output I2C1_SDA_T;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_1 SCL_I" *) input I2C1_SCL_I;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_1 SCL_O" *) output I2C1_SCL_O;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_1 SCL_T" *) output I2C1_SCL_T;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 FCLK_CLK0 CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FCLK_CLK0, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) output FCLK_CLK0 /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 FCLK_CLK1 CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FCLK_CLK1, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0" *) output FCLK_CLK1 /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 FCLK_RESET0_N RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FCLK_RESET0_N, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output FCLK_RESET0_N;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *) inout [53:0]MIO;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, CAN_DEBUG false, TIMEPERIOD_PS 1250, MEMORY_TYPE COMPONENTS, DATA_WIDTH 8, CS_ENABLED true, DATA_MASK_ENABLED true, SLOT Single, MEM_ADDR_MAP ROW_COLUMN_BANK, BURST_LENGTH 8, AXI_ARBITRATION_SCHEME TDM, CAS_LATENCY 11, CAS_WRITE_LATENCY 11" *) inout DDR_CAS_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *) inout DDR_CKE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *) inout DDR_Clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *) inout DDR_Clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *) inout DDR_CS_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *) inout DDR_DRSTB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *) inout DDR_ODT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *) inout DDR_RAS_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *) inout DDR_WEB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *) inout [2:0]DDR_BankAddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *) inout [14:0]DDR_Addr;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *) inout DDR_VRN;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *) inout DDR_VRP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *) inout [3:0]DDR_DM;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *) inout [31:0]DDR_DQ;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *) inout [3:0]DDR_DQS_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *) inout [3:0]DDR_DQS;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *) inout PS_SRSTB;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *) inout PS_CLK;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *) inout PS_PORB;
endmodule
