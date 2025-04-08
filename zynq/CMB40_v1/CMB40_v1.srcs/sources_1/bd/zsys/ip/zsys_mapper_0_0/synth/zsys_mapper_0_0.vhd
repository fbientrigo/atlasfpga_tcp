-- (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
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

-- IP VLNV: xilinx.com:module_ref:mapper:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY zsys_mapper_0_0 IS
  PORT (
    i_in_0 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    i_in_1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    i_in_2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    i_in_3 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    i_in_4 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    i_in_5 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    i_in_6 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    i_in_7 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    o_out_0 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    o_out_1 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    o_out_2 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    o_out_3 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    o_out_4 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    o_out_5 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    o_out_6 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    o_out_7 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
  );
END zsys_mapper_0_0;

ARCHITECTURE zsys_mapper_0_0_arch OF zsys_mapper_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF zsys_mapper_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT mapper IS
    PORT (
      i_in_0 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      i_in_1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      i_in_2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      i_in_3 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      i_in_4 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      i_in_5 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      i_in_6 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      i_in_7 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      o_out_0 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      o_out_1 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      o_out_2 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      o_out_3 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      o_out_4 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      o_out_5 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      o_out_6 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      o_out_7 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
    );
  END COMPONENT mapper;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF zsys_mapper_0_0_arch: ARCHITECTURE IS "mapper,Vivado 2018.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF zsys_mapper_0_0_arch : ARCHITECTURE IS "zsys_mapper_0_0,mapper,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF zsys_mapper_0_0_arch: ARCHITECTURE IS "zsys_mapper_0_0,mapper,{x_ipProduct=Vivado 2018.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=mapper,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF zsys_mapper_0_0_arch: ARCHITECTURE IS "module_ref";
BEGIN
  U0 : mapper
    PORT MAP (
      i_in_0 => i_in_0,
      i_in_1 => i_in_1,
      i_in_2 => i_in_2,
      i_in_3 => i_in_3,
      i_in_4 => i_in_4,
      i_in_5 => i_in_5,
      i_in_6 => i_in_6,
      i_in_7 => i_in_7,
      o_out_0 => o_out_0,
      o_out_1 => o_out_1,
      o_out_2 => o_out_2,
      o_out_3 => o_out_3,
      o_out_4 => o_out_4,
      o_out_5 => o_out_5,
      o_out_6 => o_out_6,
      o_out_7 => o_out_7
    );
END zsys_mapper_0_0_arch;
