--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Command: generate_target bd_34e9.bd
--Design : bd_34e9
--Purpose: IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_34e9 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of bd_34e9 : entity is "bd_34e9,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_34e9,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of bd_34e9 : entity is "zsys_system_ila_2_0.hwdef";
end bd_34e9;

architecture STRUCTURE of bd_34e9 is
  component bd_34e9_ila_lib_0 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component bd_34e9_ila_lib_0;
  signal clk_1 : STD_LOGIC;
  signal probe0_1 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal probe1_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe2_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe3_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal probe4_1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN bd_34e9_clk, FREQ_HZ 100000000, PHASE 0.000";
begin
  clk_1 <= clk;
  probe0_1(9 downto 0) <= probe0(9 downto 0);
  probe1_1(0) <= probe1(0);
  probe2_1(0) <= probe2(0);
  probe3_1(15 downto 0) <= probe3(15 downto 0);
  probe4_1(11 downto 0) <= probe4(11 downto 0);
ila_lib: component bd_34e9_ila_lib_0
     port map (
      clk => clk_1,
      probe0(9 downto 0) => probe0_1(9 downto 0),
      probe1(0) => probe1_1(0),
      probe2(0) => probe2_1(0),
      probe3(15 downto 0) => probe3_1(15 downto 0),
      probe4(11 downto 0) => probe4_1(11 downto 0)
    );
end STRUCTURE;
