-- (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
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

-- IP VLNV: xilinx.com:module_ref:fifo2Uart:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY zsys_fifo2Uart_0_1 IS
  PORT (
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    i_f_wr_en : IN STD_LOGIC;
    o_fifo_full : OUT STD_LOGIC;
    i_ascii : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    o_UART_Tx : OUT STD_LOGIC;
    i_UART_Rx : IN STD_LOGIC;
    end_one_byte : OUT STD_LOGIC;
    o_serial_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    o_fifo_wr_en : OUT STD_LOGIC;
    o_fifo_rd_en : OUT STD_LOGIC;
    o_rst_fifo : OUT STD_LOGIC;
    o_fifo_din : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    i_fifo_dout : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    i_fifo_empty : IN STD_LOGIC;
    i_fifo_full : IN STD_LOGIC
  );
END zsys_fifo2Uart_0_1;

ARCHITECTURE zsys_fifo2Uart_0_1_arch OF zsys_fifo2Uart_0_1 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF zsys_fifo2Uart_0_1_arch: ARCHITECTURE IS "yes";
  COMPONENT fifo2Uart IS
    GENERIC (
      baud_rate : INTEGER;
      freq_clk : INTEGER
    );
    PORT (
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      i_f_wr_en : IN STD_LOGIC;
      o_fifo_full : OUT STD_LOGIC;
      i_ascii : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      o_UART_Tx : OUT STD_LOGIC;
      i_UART_Rx : IN STD_LOGIC;
      end_one_byte : OUT STD_LOGIC;
      o_serial_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      o_fifo_wr_en : OUT STD_LOGIC;
      o_fifo_rd_en : OUT STD_LOGIC;
      o_rst_fifo : OUT STD_LOGIC;
      o_fifo_din : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      i_fifo_dout : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      i_fifo_empty : IN STD_LOGIC;
      i_fifo_full : IN STD_LOGIC
    );
  END COMPONENT fifo2Uart;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF zsys_fifo2Uart_0_1_arch: ARCHITECTURE IS "fifo2Uart,Vivado 2018.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF zsys_fifo2Uart_0_1_arch : ARCHITECTURE IS "zsys_fifo2Uart_0_1,fifo2Uart,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF zsys_fifo2Uart_0_1_arch: ARCHITECTURE IS "zsys_fifo2Uart_0_1,fifo2Uart,{x_ipProduct=Vivado 2018.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=fifo2Uart,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,baud_rate=115200,freq_clk=100000000}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF zsys_fifo2Uart_0_1_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF i_fifo_full: SIGNAL IS "xilinx.com:interface:fifo_write:1.0 F_write FULL";
  ATTRIBUTE X_INTERFACE_INFO OF i_fifo_empty: SIGNAL IS "xilinx.com:interface:fifo_read:1.0 F_read EMPTY";
  ATTRIBUTE X_INTERFACE_INFO OF i_fifo_dout: SIGNAL IS "xilinx.com:interface:fifo_read:1.0 F_read RD_DATA";
  ATTRIBUTE X_INTERFACE_INFO OF o_fifo_din: SIGNAL IS "xilinx.com:interface:fifo_write:1.0 F_write WR_DATA";
  ATTRIBUTE X_INTERFACE_INFO OF o_fifo_rd_en: SIGNAL IS "xilinx.com:interface:fifo_read:1.0 F_read RD_EN";
  ATTRIBUTE X_INTERFACE_INFO OF o_fifo_wr_en: SIGNAL IS "xilinx.com:interface:fifo_write:1.0 F_write WR_EN";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rst: SIGNAL IS "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH";
  ATTRIBUTE X_INTERFACE_INFO OF rst: SIGNAL IS "xilinx.com:signal:reset:1.0 rst RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
BEGIN
  U0 : fifo2Uart
    GENERIC MAP (
      baud_rate => 115200,
      freq_clk => 100000000
    )
    PORT MAP (
      clk => clk,
      rst => rst,
      i_f_wr_en => i_f_wr_en,
      o_fifo_full => o_fifo_full,
      i_ascii => i_ascii,
      o_UART_Tx => o_UART_Tx,
      i_UART_Rx => i_UART_Rx,
      end_one_byte => end_one_byte,
      o_serial_out => o_serial_out,
      o_fifo_wr_en => o_fifo_wr_en,
      o_fifo_rd_en => o_fifo_rd_en,
      o_rst_fifo => o_rst_fifo,
      o_fifo_din => o_fifo_din,
      i_fifo_dout => i_fifo_dout,
      i_fifo_empty => i_fifo_empty,
      i_fifo_full => i_fifo_full
    );
END zsys_fifo2Uart_0_1_arch;
