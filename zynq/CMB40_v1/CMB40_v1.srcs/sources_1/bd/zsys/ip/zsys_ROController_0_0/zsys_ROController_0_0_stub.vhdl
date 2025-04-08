-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Mon Aug 21 12:20:44 2023
-- Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/victo/Desktop/Vivados/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_ROController_0_0/zsys_ROController_0_0_stub.vhdl
-- Design      : zsys_ROController_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z015clg485-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zsys_ROController_0_0 is
  Port ( 
    sys_clk : in STD_LOGIC;
    i_data_clk : in STD_LOGIC;
    i_data_ch0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    i_data_ch1 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    i_data_ch2 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    i_data_ch3 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    i_data_ch4 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    i_data_ch5 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    i_data_ch6 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    i_data_ch7 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    i_rst : in STD_LOGIC;
    i_veto : in STD_LOGIC;
    i_trigger : in STD_LOGIC;
    i_DRS4_DWRITEn : in STD_LOGIC;
    o_busy : out STD_LOGIC;
    i_post_trig_wind : in STD_LOGIC_VECTOR ( 11 downto 0 );
    i_pre_trig_wind : in STD_LOGIC_VECTOR ( 11 downto 0 );
    o_trig_RO_end : out STD_LOGIC;
    i_stop_cell_ready : in STD_LOGIC;
    i_stop_cell : in STD_LOGIC_VECTOR ( 9 downto 0 );
    o_wr_fifo_data : out STD_LOGIC_VECTOR ( 96 downto 0 );
    o_wr_fifo_en : out STD_LOGIC;
    i_wr_fifo_full : in STD_LOGIC;
    o_wr_fifo_clk : out STD_LOGIC;
    i_rd_fifo_data : in STD_LOGIC_VECTOR ( 96 downto 0 );
    o_rd_fifo_en : out STD_LOGIC;
    i_rd_fifo_empty : in STD_LOGIC;
    o_rd_fifo_clk : out STD_LOGIC;
    i_rd_data_count : in STD_LOGIC_VECTOR ( 11 downto 0 );
    o_outfifo_wr_en : out STD_LOGIC;
    i_next_fifo_full : in STD_LOGIC;
    o_ascii : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_send_data_control_debug_states : out STD_LOGIC_VECTOR ( 4 downto 0 );
    o_read_proc_st_debug_states : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_ro_proc_st_debug_states : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );

end zsys_ROController_0_0;

architecture stub of zsys_ROController_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "sys_clk,i_data_clk,i_data_ch0[11:0],i_data_ch1[11:0],i_data_ch2[11:0],i_data_ch3[11:0],i_data_ch4[11:0],i_data_ch5[11:0],i_data_ch6[11:0],i_data_ch7[11:0],i_rst,i_veto,i_trigger,i_DRS4_DWRITEn,o_busy,i_post_trig_wind[11:0],i_pre_trig_wind[11:0],o_trig_RO_end,i_stop_cell_ready,i_stop_cell[9:0],o_wr_fifo_data[96:0],o_wr_fifo_en,i_wr_fifo_full,o_wr_fifo_clk,i_rd_fifo_data[96:0],o_rd_fifo_en,i_rd_fifo_empty,o_rd_fifo_clk,i_rd_data_count[11:0],o_outfifo_wr_en,i_next_fifo_full,o_ascii[7:0],o_send_data_control_debug_states[4:0],o_read_proc_st_debug_states[3:0],o_ro_proc_st_debug_states[2:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "ROController,Vivado 2018.2";
begin
end;
