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

-- IP VLNV: xilinx.com:module_ref:ADC_readout_buff:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY zsys_ADC_readout_buff_0_0 IS
  PORT (
    i_ADclk : IN STD_LOGIC;
    i_Lclk : IN STD_LOGIC;
    i_ADC_ch_p : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    i_ADC_ch_n : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    o_ADclk : OUT STD_LOGIC;
    o_Lclk : OUT STD_LOGIC;
    o_ADC_ch0_p : OUT STD_LOGIC;
    o_ADC_ch0_n : OUT STD_LOGIC;
    o_ADC_ch1_p : OUT STD_LOGIC;
    o_ADC_ch1_n : OUT STD_LOGIC;
    o_ADC_ch2_p : OUT STD_LOGIC;
    o_ADC_ch2_n : OUT STD_LOGIC;
    o_ADC_ch3_p : OUT STD_LOGIC;
    o_ADC_ch3_n : OUT STD_LOGIC;
    o_ADC_ch4_p : OUT STD_LOGIC;
    o_ADC_ch4_n : OUT STD_LOGIC;
    o_ADC_ch5_p : OUT STD_LOGIC;
    o_ADC_ch5_n : OUT STD_LOGIC;
    o_ADC_ch6_p : OUT STD_LOGIC;
    o_ADC_ch6_n : OUT STD_LOGIC;
    o_ADC_ch7_p : OUT STD_LOGIC;
    o_ADC_ch7_n : OUT STD_LOGIC
  );
END zsys_ADC_readout_buff_0_0;

ARCHITECTURE zsys_ADC_readout_buff_0_0_arch OF zsys_ADC_readout_buff_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF zsys_ADC_readout_buff_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT ADC_readout_buff IS
    PORT (
      i_ADclk : IN STD_LOGIC;
      i_Lclk : IN STD_LOGIC;
      i_ADC_ch_p : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      i_ADC_ch_n : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      o_ADclk : OUT STD_LOGIC;
      o_Lclk : OUT STD_LOGIC;
      o_ADC_ch0_p : OUT STD_LOGIC;
      o_ADC_ch0_n : OUT STD_LOGIC;
      o_ADC_ch1_p : OUT STD_LOGIC;
      o_ADC_ch1_n : OUT STD_LOGIC;
      o_ADC_ch2_p : OUT STD_LOGIC;
      o_ADC_ch2_n : OUT STD_LOGIC;
      o_ADC_ch3_p : OUT STD_LOGIC;
      o_ADC_ch3_n : OUT STD_LOGIC;
      o_ADC_ch4_p : OUT STD_LOGIC;
      o_ADC_ch4_n : OUT STD_LOGIC;
      o_ADC_ch5_p : OUT STD_LOGIC;
      o_ADC_ch5_n : OUT STD_LOGIC;
      o_ADC_ch6_p : OUT STD_LOGIC;
      o_ADC_ch6_n : OUT STD_LOGIC;
      o_ADC_ch7_p : OUT STD_LOGIC;
      o_ADC_ch7_n : OUT STD_LOGIC
    );
  END COMPONENT ADC_readout_buff;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF zsys_ADC_readout_buff_0_0_arch: ARCHITECTURE IS "module_ref";
BEGIN
  U0 : ADC_readout_buff
    PORT MAP (
      i_ADclk => i_ADclk,
      i_Lclk => i_Lclk,
      i_ADC_ch_p => i_ADC_ch_p,
      i_ADC_ch_n => i_ADC_ch_n,
      o_ADclk => o_ADclk,
      o_Lclk => o_Lclk,
      o_ADC_ch0_p => o_ADC_ch0_p,
      o_ADC_ch0_n => o_ADC_ch0_n,
      o_ADC_ch1_p => o_ADC_ch1_p,
      o_ADC_ch1_n => o_ADC_ch1_n,
      o_ADC_ch2_p => o_ADC_ch2_p,
      o_ADC_ch2_n => o_ADC_ch2_n,
      o_ADC_ch3_p => o_ADC_ch3_p,
      o_ADC_ch3_n => o_ADC_ch3_n,
      o_ADC_ch4_p => o_ADC_ch4_p,
      o_ADC_ch4_n => o_ADC_ch4_n,
      o_ADC_ch5_p => o_ADC_ch5_p,
      o_ADC_ch5_n => o_ADC_ch5_n,
      o_ADC_ch6_p => o_ADC_ch6_p,
      o_ADC_ch6_n => o_ADC_ch6_n,
      o_ADC_ch7_p => o_ADC_ch7_p,
      o_ADC_ch7_n => o_ADC_ch7_n
    );
END zsys_ADC_readout_buff_0_0_arch;
