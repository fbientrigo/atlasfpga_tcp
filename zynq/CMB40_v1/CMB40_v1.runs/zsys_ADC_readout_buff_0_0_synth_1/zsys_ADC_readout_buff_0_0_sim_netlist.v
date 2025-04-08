// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Aug  3 16:47:46 2023
// Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zsys_ADC_readout_buff_0_0_sim_netlist.v
// Design      : zsys_ADC_readout_buff_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z015clg485-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ADC_readout_buff
   (o_ADclk,
    o_Lclk,
    i_ADclk,
    i_Lclk);
  output o_ADclk;
  output o_Lclk;
  input i_ADclk;
  input i_Lclk;

  wire i_ADclk;
  wire i_Lclk;
  wire o_ADclk;
  wire o_Lclk;

  (* box_type = "PRIMITIVE" *) 
  BUFG BUFG_inst_ADCLK
       (.I(i_ADclk),
        .O(o_ADclk));
  (* box_type = "PRIMITIVE" *) 
  BUFG BUFG_inst_LCLK
       (.I(i_Lclk),
        .O(o_Lclk));
endmodule

(* CHECK_LICENSE_TYPE = "zsys_ADC_readout_buff_0_0,ADC_readout_buff,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "ADC_readout_buff,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (i_ADclk,
    i_Lclk,
    i_ADC_ch_p,
    i_ADC_ch_n,
    o_ADclk,
    o_Lclk,
    o_ADC_ch0_p,
    o_ADC_ch0_n,
    o_ADC_ch1_p,
    o_ADC_ch1_n,
    o_ADC_ch2_p,
    o_ADC_ch2_n,
    o_ADC_ch3_p,
    o_ADC_ch3_n,
    o_ADC_ch4_p,
    o_ADC_ch4_n,
    o_ADC_ch5_p,
    o_ADC_ch5_n,
    o_ADC_ch6_p,
    o_ADC_ch6_n,
    o_ADC_ch7_p,
    o_ADC_ch7_n);
  input i_ADclk;
  input i_Lclk;
  input [7:0]i_ADC_ch_p;
  input [7:0]i_ADC_ch_n;
  output o_ADclk;
  output o_Lclk;
  output o_ADC_ch0_p;
  output o_ADC_ch0_n;
  output o_ADC_ch1_p;
  output o_ADC_ch1_n;
  output o_ADC_ch2_p;
  output o_ADC_ch2_n;
  output o_ADC_ch3_p;
  output o_ADC_ch3_n;
  output o_ADC_ch4_p;
  output o_ADC_ch4_n;
  output o_ADC_ch5_p;
  output o_ADC_ch5_n;
  output o_ADC_ch6_p;
  output o_ADC_ch6_n;
  output o_ADC_ch7_p;
  output o_ADC_ch7_n;

  wire [7:0]i_ADC_ch_n;
  wire [7:0]i_ADC_ch_p;
  wire i_ADclk;
  wire i_Lclk;
  wire o_ADclk;
  wire o_Lclk;

  assign o_ADC_ch0_n = i_ADC_ch_n[0];
  assign o_ADC_ch0_p = i_ADC_ch_p[0];
  assign o_ADC_ch1_n = i_ADC_ch_n[1];
  assign o_ADC_ch1_p = i_ADC_ch_p[1];
  assign o_ADC_ch2_n = i_ADC_ch_n[2];
  assign o_ADC_ch2_p = i_ADC_ch_p[2];
  assign o_ADC_ch3_n = i_ADC_ch_n[3];
  assign o_ADC_ch3_p = i_ADC_ch_p[3];
  assign o_ADC_ch4_n = i_ADC_ch_n[4];
  assign o_ADC_ch4_p = i_ADC_ch_p[4];
  assign o_ADC_ch5_n = i_ADC_ch_n[5];
  assign o_ADC_ch5_p = i_ADC_ch_p[5];
  assign o_ADC_ch6_n = i_ADC_ch_n[6];
  assign o_ADC_ch6_p = i_ADC_ch_p[6];
  assign o_ADC_ch7_n = i_ADC_ch_n[7];
  assign o_ADC_ch7_p = i_ADC_ch_p[7];
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ADC_readout_buff U0
       (.i_ADclk(i_ADclk),
        .i_Lclk(i_Lclk),
        .o_ADclk(o_ADclk),
        .o_Lclk(o_Lclk));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
