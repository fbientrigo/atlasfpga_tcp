-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Sat May 21 23:52:20 2022
-- Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zsys_fifo2Uart_0_1_stub.vhdl
-- Design      : zsys_fifo2Uart_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z015clg485-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    i_f_wr_en : in STD_LOGIC;
    o_fifo_full : out STD_LOGIC;
    i_ascii : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_UART_Tx : out STD_LOGIC;
    i_UART_Rx : in STD_LOGIC;
    end_one_byte : out STD_LOGIC;
    o_serial_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_fifo_wr_en : out STD_LOGIC;
    o_fifo_rd_en : out STD_LOGIC;
    o_rst_fifo : out STD_LOGIC;
    o_fifo_din : out STD_LOGIC_VECTOR ( 7 downto 0 );
    i_fifo_dout : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_fifo_empty : in STD_LOGIC;
    i_fifo_full : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,i_f_wr_en,o_fifo_full,i_ascii[7:0],o_UART_Tx,i_UART_Rx,end_one_byte,o_serial_out[7:0],o_fifo_wr_en,o_fifo_rd_en,o_rst_fifo,o_fifo_din[7:0],i_fifo_dout[7:0],i_fifo_empty,i_fifo_full";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "fifo2Uart,Vivado 2018.2";
begin
end;
