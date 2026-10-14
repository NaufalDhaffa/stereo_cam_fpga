-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
-- -------------------------------------------------------------------------------
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-- DO NOT MODIFY THIS FILE.

-- MODULE VLNV: amd.com:blockdesign:system:1.0

-- The following code must appear in the VHDL architecture header.

-- COMP_TAG     ------ Begin cut for COMPONENT Declaration ------
COMPONENT system
  PORT (
    DDR_cas_n : INOUT STD_LOGIC;
    DDR_cke : INOUT STD_LOGIC;
    DDR_ck_n : INOUT STD_LOGIC;
    DDR_ck_p : INOUT STD_LOGIC;
    DDR_cs_n : INOUT STD_LOGIC;
    DDR_reset_n : INOUT STD_LOGIC;
    DDR_odt : INOUT STD_LOGIC;
    DDR_ras_n : INOUT STD_LOGIC;
    DDR_we_n : INOUT STD_LOGIC;
    DDR_ba : INOUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    DDR_addr : INOUT STD_LOGIC_VECTOR(14 DOWNTO 0);
    DDR_dm : INOUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    DDR_dq : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    DDR_dqs_n : INOUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    DDR_dqs_p : INOUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    FIXED_IO_mio : INOUT STD_LOGIC_VECTOR(53 DOWNTO 0);
    FIXED_IO_ddr_vrn : INOUT STD_LOGIC;
    FIXED_IO_ddr_vrp : INOUT STD_LOGIC;
    FIXED_IO_ps_srstb : INOUT STD_LOGIC;
    FIXED_IO_ps_clk : INOUT STD_LOGIC;
    FIXED_IO_ps_porb : INOUT STD_LOGIC;
    cam_d : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    cam_pclk : IN STD_LOGIC;
    cam_vsync : IN STD_LOGIC;
    cam_href : IN STD_LOGIC;
    cam_pwdn : OUT STD_LOGIC;
    cam2_d : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    cam2_pclk : IN STD_LOGIC;
    cam2_vsync : IN STD_LOGIC;
    cam2_href : IN STD_LOGIC;
    cam2_pwdn : OUT STD_LOGIC;
    fx2_ifclk : IN STD_LOGIC;
    fx2_flagb_n : IN STD_LOGIC;
    fx2_fd : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    fx2_slwr_n : OUT STD_LOGIC;
    fx2_pktend_n : OUT STD_LOGIC;
    led : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    cam_sccb_sda_i : IN STD_LOGIC;
    cam_sccb_sda_o : OUT STD_LOGIC;
    cam_sccb_sda_t : OUT STD_LOGIC;
    cam_sccb_scl_i : IN STD_LOGIC;
    cam_sccb_scl_o : OUT STD_LOGIC;
    cam_sccb_scl_t : OUT STD_LOGIC;
    cam2_sccb_sda_i : IN STD_LOGIC;
    cam2_sccb_sda_o : OUT STD_LOGIC;
    cam2_sccb_sda_t : OUT STD_LOGIC;
    cam2_sccb_scl_i : IN STD_LOGIC;
    cam2_sccb_scl_o : OUT STD_LOGIC;
    cam2_sccb_scl_t : OUT STD_LOGIC;
    eth_rx_clk : IN STD_LOGIC;
    eth_rxd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    eth_rx_dv : IN STD_LOGIC;
    eth_tx_clk : IN STD_LOGIC;
    eth_tx_en : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    eth_txd : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    eth_mdio_mdc : OUT STD_LOGIC;
    eth_mdio_mdio_o : OUT STD_LOGIC;
    eth_mdio_mdio_t : OUT STD_LOGIC;
    eth_mdio_mdio_i : IN STD_LOGIC
  );
END COMPONENT;
-- COMP_TAG_END ------  End cut for COMPONENT Declaration  ------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

-- INST_TAG     ------ Begin cut for INSTANTIATION Template ------
your_instance_name : system
  PORT MAP (
    DDR_cas_n => DDR_cas_n,
    DDR_cke => DDR_cke,
    DDR_ck_n => DDR_ck_n,
    DDR_ck_p => DDR_ck_p,
    DDR_cs_n => DDR_cs_n,
    DDR_reset_n => DDR_reset_n,
    DDR_odt => DDR_odt,
    DDR_ras_n => DDR_ras_n,
    DDR_we_n => DDR_we_n,
    DDR_ba => DDR_ba,
    DDR_addr => DDR_addr,
    DDR_dm => DDR_dm,
    DDR_dq => DDR_dq,
    DDR_dqs_n => DDR_dqs_n,
    DDR_dqs_p => DDR_dqs_p,
    FIXED_IO_mio => FIXED_IO_mio,
    FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
    FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
    FIXED_IO_ps_clk => FIXED_IO_ps_clk,
    FIXED_IO_ps_porb => FIXED_IO_ps_porb,
    cam_d => cam_d,
    cam_pclk => cam_pclk,
    cam_vsync => cam_vsync,
    cam_href => cam_href,
    cam_pwdn => cam_pwdn,
    cam2_d => cam2_d,
    cam2_pclk => cam2_pclk,
    cam2_vsync => cam2_vsync,
    cam2_href => cam2_href,
    cam2_pwdn => cam2_pwdn,
    fx2_ifclk => fx2_ifclk,
    fx2_flagb_n => fx2_flagb_n,
    fx2_fd => fx2_fd,
    fx2_slwr_n => fx2_slwr_n,
    fx2_pktend_n => fx2_pktend_n,
    led => led,
    cam_sccb_sda_i => cam_sccb_sda_i,
    cam_sccb_sda_o => cam_sccb_sda_o,
    cam_sccb_sda_t => cam_sccb_sda_t,
    cam_sccb_scl_i => cam_sccb_scl_i,
    cam_sccb_scl_o => cam_sccb_scl_o,
    cam_sccb_scl_t => cam_sccb_scl_t,
    cam2_sccb_sda_i => cam2_sccb_sda_i,
    cam2_sccb_sda_o => cam2_sccb_sda_o,
    cam2_sccb_sda_t => cam2_sccb_sda_t,
    cam2_sccb_scl_i => cam2_sccb_scl_i,
    cam2_sccb_scl_o => cam2_sccb_scl_o,
    cam2_sccb_scl_t => cam2_sccb_scl_t,
    eth_rx_clk => eth_rx_clk,
    eth_rxd => eth_rxd,
    eth_rx_dv => eth_rx_dv,
    eth_tx_clk => eth_tx_clk,
    eth_tx_en => eth_tx_en,
    eth_txd => eth_txd,
    eth_mdio_mdc => eth_mdio_mdc,
    eth_mdio_mdio_o => eth_mdio_mdio_o,
    eth_mdio_mdio_t => eth_mdio_mdio_t,
    eth_mdio_mdio_i => eth_mdio_mdio_i
  );
-- INST_TAG_END ------  End cut for INSTANTIATION Template  ------

-- You must compile the wrapper file system.vhd when simulating
-- the module, system. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.
