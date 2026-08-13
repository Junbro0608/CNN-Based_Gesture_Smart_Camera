-- (c) Copyright 1995-2026 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:gray_128x128:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY system_gray_128x128_0_0 IS
  PORT (
    aclk : IN STD_LOGIC;
    aresetn : IN STD_LOGIC;
    cap_tdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    cap_tvalid : IN STD_LOGIC;
    cap_tready : OUT STD_LOGIC;
    cap_tlast : IN STD_LOGIC;
    cap_tuser : IN STD_LOGIC;
    busy : IN STD_LOGIC;
    start : OUT STD_LOGIC;
    cnn_rd_addr : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
    cnn_rd_data : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    cnn_enable : IN STD_LOGIC;
    spi_rd_addr : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
    spi_rd_data : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    spi_active : IN STD_LOGIC
  );
END system_gray_128x128_0_0;

ARCHITECTURE system_gray_128x128_0_0_arch OF system_gray_128x128_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF system_gray_128x128_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT gray_128x128 IS
    GENERIC (
      GW : INTEGER;
      GH : INTEGER
    );
    PORT (
      aclk : IN STD_LOGIC;
      aresetn : IN STD_LOGIC;
      cap_tdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      cap_tvalid : IN STD_LOGIC;
      cap_tready : OUT STD_LOGIC;
      cap_tlast : IN STD_LOGIC;
      cap_tuser : IN STD_LOGIC;
      busy : IN STD_LOGIC;
      start : OUT STD_LOGIC;
      cnn_rd_addr : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
      cnn_rd_data : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      cnn_enable : IN STD_LOGIC;
      spi_rd_addr : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
      spi_rd_data : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      spi_active : IN STD_LOGIC
    );
  END COMPONENT gray_128x128;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF system_gray_128x128_0_0_arch: ARCHITECTURE IS "gray_128x128,Vivado 2020.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF system_gray_128x128_0_0_arch : ARCHITECTURE IS "system_gray_128x128_0_0,gray_128x128,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF system_gray_128x128_0_0_arch: ARCHITECTURE IS "system_gray_128x128_0_0,gray_128x128,{x_ipProduct=Vivado 2020.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=gray_128x128,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,GW=128,GH=128}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF system_gray_128x128_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF cap_tuser: SIGNAL IS "xilinx.com:interface:axis:1.0 cap TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF cap_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 cap TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF cap_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 cap TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF cap_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 cap TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF cap_tdata: SIGNAL IS "XIL_INTERFACENAME cap, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF cap_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 cap TDATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF aresetn: SIGNAL IS "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 aresetn RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF aclk: SIGNAL IS "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF cap, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 aclk CLK";
BEGIN
  U0 : gray_128x128
    GENERIC MAP (
      GW => 128,
      GH => 128
    )
    PORT MAP (
      aclk => aclk,
      aresetn => aresetn,
      cap_tdata => cap_tdata,
      cap_tvalid => cap_tvalid,
      cap_tready => cap_tready,
      cap_tlast => cap_tlast,
      cap_tuser => cap_tuser,
      busy => busy,
      start => start,
      cnn_rd_addr => cnn_rd_addr,
      cnn_rd_data => cnn_rd_data,
      cnn_enable => cnn_enable,
      spi_rd_addr => spi_rd_addr,
      spi_rd_data => spi_rd_data,
      spi_active => spi_active
    );
END system_gray_128x128_0_0_arch;
