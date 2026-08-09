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

-- IP VLNV: xilinx.com:module_ref:CNN_accelerator:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY system_CNN_accelerator_1_0 IS
  PORT (
    sysclk : IN STD_LOGIC;
    rst_n : IN STD_LOGIC;
    start : IN STD_LOGIC;
    sw : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    done : OUT STD_LOGIC;
    busy : OUT STD_LOGIC;
    result : OUT STD_LOGIC;
    img_raddr : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
    img_rdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    led : OUT STD_LOGIC;
    uart_data : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
  );
END system_CNN_accelerator_1_0;

ARCHITECTURE system_CNN_accelerator_1_0_arch OF system_CNN_accelerator_1_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF system_CNN_accelerator_1_0_arch: ARCHITECTURE IS "yes";
  COMPONENT CNN_accelerator IS
    GENERIC (
      WT_DEPTH : INTEGER;
      MAX_LAYER_WORDS : INTEGER;
      WT_DATA_WIDTH : INTEGER;
      DATA_ADDR_WIDTH : INTEGER;
      DATA_DATA_WIDTH : INTEGER;
      IMG_ADDR_WIDH : INTEGER;
      IMG_DATA_WIDH : INTEGER
    );
    PORT (
      sysclk : IN STD_LOGIC;
      rst_n : IN STD_LOGIC;
      start : IN STD_LOGIC;
      sw : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      done : OUT STD_LOGIC;
      busy : OUT STD_LOGIC;
      result : OUT STD_LOGIC;
      img_raddr : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
      img_rdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      led : OUT STD_LOGIC;
      uart_data : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
    );
  END COMPONENT CNN_accelerator;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF system_CNN_accelerator_1_0_arch: ARCHITECTURE IS "CNN_accelerator,Vivado 2020.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF system_CNN_accelerator_1_0_arch : ARCHITECTURE IS "system_CNN_accelerator_1_0,CNN_accelerator,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF system_CNN_accelerator_1_0_arch: ARCHITECTURE IS "system_CNN_accelerator_1_0,CNN_accelerator,{x_ipProduct=Vivado 2020.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=CNN_accelerator,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,WT_DEPTH=11243,MAX_LAYER_WORDS=8224,WT_DATA_WIDTH=64,DATA_ADDR_WIDTH=65536,DATA_DATA_WIDTH=8,IMG_ADDR_WIDH=128,IMG_DATA_WIDH=8}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF system_CNN_accelerator_1_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF rst_n: SIGNAL IS "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF rst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 rst_n RST";
BEGIN
  U0 : CNN_accelerator
    GENERIC MAP (
      WT_DEPTH => 11243,
      MAX_LAYER_WORDS => 8224,
      WT_DATA_WIDTH => 64,
      DATA_ADDR_WIDTH => 65536,
      DATA_DATA_WIDTH => 8,
      IMG_ADDR_WIDH => 128,
      IMG_DATA_WIDH => 8
    )
    PORT MAP (
      sysclk => sysclk,
      rst_n => rst_n,
      start => start,
      sw => sw,
      done => done,
      busy => busy,
      result => result,
      img_raddr => img_raddr,
      img_rdata => img_rdata,
      led => led,
      uart_data => uart_data
    );
END system_CNN_accelerator_1_0_arch;
