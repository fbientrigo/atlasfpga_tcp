-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Wed Aug 16 22:34:15 2023
-- Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top zsys_fifo8b_2_axis_0_0 -prefix
--               zsys_fifo8b_2_axis_0_0_ zsys_fifo8b_2_axis_0_0_stub.vhdl
-- Design      : zsys_fifo8b_2_axis_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z015clg485-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zsys_fifo8b_2_axis_0_0 is
  Port ( 
    i_fifo_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_fifo_full : out STD_LOGIC;
    i_fifo_we : in STD_LOGIC;
    i_sending : in STD_LOGIC;
    o_fifo_data_count : out STD_LOGIC_VECTOR ( 3 downto 0 );
    i_force_send : in STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axis_tlast : out STD_LOGIC;
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC
  );

end zsys_fifo8b_2_axis_0_0;

architecture stub of zsys_fifo8b_2_axis_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_fifo_din[7:0],o_fifo_full,i_fifo_we,i_sending,o_fifo_data_count[3:0],i_force_send,m00_axis_tdata[31:0],m00_axis_tstrb[3:0],m00_axis_tlast,m00_axis_tvalid,m00_axis_tready,m00_axis_aclk,m00_axis_aresetn";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "fifo8b_2_axis_v1_0,Vivado 2018.2";
begin
end;
