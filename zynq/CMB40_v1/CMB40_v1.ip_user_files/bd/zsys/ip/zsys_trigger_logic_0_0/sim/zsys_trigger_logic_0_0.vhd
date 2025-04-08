-- (c) Copyright 1995-2024 Xilinx, Inc. All rights reserved.
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

-- IP VLNV: xilinx.com:module_ref:trigger_logic:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY zsys_trigger_logic_0_0 IS
  PORT (
    sys_clk : IN STD_LOGIC;
    areset : IN STD_LOGIC;
    i_busy : IN STD_LOGIC;
    i_in_trigger : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    i_soft_trigger : IN STD_LOGIC;
    i_trigg_select_function : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    i_trigg_mask : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    i_en_soft_trigger : IN STD_LOGIC;
    o_out_trigger : OUT STD_LOGIC
  );
END zsys_trigger_logic_0_0;

ARCHITECTURE zsys_trigger_logic_0_0_arch OF zsys_trigger_logic_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF zsys_trigger_logic_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT trigger_logic IS
    PORT (
      sys_clk : IN STD_LOGIC;
      areset : IN STD_LOGIC;
      i_busy : IN STD_LOGIC;
      i_in_trigger : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      i_soft_trigger : IN STD_LOGIC;
      i_trigg_select_function : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      i_trigg_mask : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      i_en_soft_trigger : IN STD_LOGIC;
      o_out_trigger : OUT STD_LOGIC
    );
  END COMPONENT trigger_logic;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF zsys_trigger_logic_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF sys_clk: SIGNAL IS "XIL_INTERFACENAME sys_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF sys_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 sys_clk CLK";
BEGIN
  U0 : trigger_logic
    PORT MAP (
      sys_clk => sys_clk,
      areset => areset,
      i_busy => i_busy,
      i_in_trigger => i_in_trigger,
      i_soft_trigger => i_soft_trigger,
      i_trigg_select_function => i_trigg_select_function,
      i_trigg_mask => i_trigg_mask,
      i_en_soft_trigger => i_en_soft_trigger,
      o_out_trigger => o_out_trigger
    );
END zsys_trigger_logic_0_0_arch;
