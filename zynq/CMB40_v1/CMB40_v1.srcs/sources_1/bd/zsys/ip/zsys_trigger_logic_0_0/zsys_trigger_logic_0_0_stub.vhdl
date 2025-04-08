-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Tue Dec  3 15:03:41 2024
-- Host        : ifraba-HP-Pavilion-Laptop-15-eg2xxx running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_trigger_logic_0_0/zsys_trigger_logic_0_0_stub.vhdl
-- Design      : zsys_trigger_logic_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z015clg485-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zsys_trigger_logic_0_0 is
  Port ( 
    sys_clk : in STD_LOGIC;
    areset : in STD_LOGIC;
    i_busy : in STD_LOGIC;
    i_in_trigger : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_soft_trigger : in STD_LOGIC;
    i_trigg_select_function : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_trigg_mask : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_en_soft_trigger : in STD_LOGIC;
    o_out_trigger : out STD_LOGIC
  );

end zsys_trigger_logic_0_0;

architecture stub of zsys_trigger_logic_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "sys_clk,areset,i_busy,i_in_trigger[7:0],i_soft_trigger,i_trigg_select_function[2:0],i_trigg_mask[7:0],i_en_soft_trigger,o_out_trigger";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "trigger_logic,Vivado 2018.2";
begin
end;
