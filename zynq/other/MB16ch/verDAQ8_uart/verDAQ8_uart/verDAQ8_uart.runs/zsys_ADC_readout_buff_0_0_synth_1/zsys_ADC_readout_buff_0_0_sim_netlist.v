// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue Mar  8 23:59:16 2022
// Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zsys_ADC_readout_buff_0_0_sim_netlist.v
// Design      : zsys_ADC_readout_buff_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z015clg485-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ADC_readout_buff
   (o_ADclk_p,
    o_ADclk_n,
    o_Lclk_p,
    o_Lclk_n,
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
    o_ADC_ch7_n,
    i_ADclk_p,
    i_ADclk_n,
    i_Lclk_p,
    i_Lclk_n,
    i_ADC_ch0_p,
    i_ADC_ch0_n,
    i_ADC_ch1_p,
    i_ADC_ch1_n,
    i_ADC_ch2_p,
    i_ADC_ch2_n,
    i_ADC_ch3_p,
    i_ADC_ch3_n,
    i_ADC_ch4_p,
    i_ADC_ch4_n,
    i_ADC_ch5_p,
    i_ADC_ch5_n,
    i_ADC_ch6_p,
    i_ADC_ch6_n,
    i_ADC_ch7_p,
    i_ADC_ch7_n);
  output o_ADclk_p;
  output o_ADclk_n;
  output o_Lclk_p;
  output o_Lclk_n;
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
  input i_ADclk_p;
  input i_ADclk_n;
  input i_Lclk_p;
  input i_Lclk_n;
  input i_ADC_ch0_p;
  input i_ADC_ch0_n;
  input i_ADC_ch1_p;
  input i_ADC_ch1_n;
  input i_ADC_ch2_p;
  input i_ADC_ch2_n;
  input i_ADC_ch3_p;
  input i_ADC_ch3_n;
  input i_ADC_ch4_p;
  input i_ADC_ch4_n;
  input i_ADC_ch5_p;
  input i_ADC_ch5_n;
  input i_ADC_ch6_p;
  input i_ADC_ch6_n;
  input i_ADC_ch7_p;
  input i_ADC_ch7_n;

  wire i_ADC_ch0_n;
  wire i_ADC_ch0_p;
  wire i_ADC_ch1_n;
  wire i_ADC_ch1_p;
  wire i_ADC_ch2_n;
  wire i_ADC_ch2_p;
  wire i_ADC_ch3_n;
  wire i_ADC_ch3_p;
  wire i_ADC_ch4_n;
  wire i_ADC_ch4_p;
  wire i_ADC_ch5_n;
  wire i_ADC_ch5_p;
  wire i_ADC_ch6_n;
  wire i_ADC_ch6_p;
  wire i_ADC_ch7_n;
  wire i_ADC_ch7_p;
  wire i_ADclk_n;
  wire i_ADclk_p;
  wire i_Lclk_n;
  wire i_Lclk_p;
  wire o_ADC_ch0_n;
  wire o_ADC_ch0_p;
  wire o_ADC_ch1_n;
  wire o_ADC_ch1_p;
  wire o_ADC_ch2_n;
  wire o_ADC_ch2_p;
  wire o_ADC_ch3_n;
  wire o_ADC_ch3_p;
  wire o_ADC_ch4_n;
  wire o_ADC_ch4_p;
  wire o_ADC_ch5_n;
  wire o_ADC_ch5_p;
  wire o_ADC_ch6_n;
  wire o_ADC_ch6_p;
  wire o_ADC_ch7_n;
  wire o_ADC_ch7_p;
  wire o_ADclk_n;
  wire o_ADclk_p;
  wire o_Lclk_n;
  wire o_Lclk_p;

  (* box_type = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT ADC_ch0_IBUFDS_inst
       (.I(i_ADC_ch0_p),
        .IB(i_ADC_ch0_n),
        .O(o_ADC_ch0_p),
        .OB(o_ADC_ch0_n));
  (* box_type = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT ADC_ch1_IBUFDS_inst
       (.I(i_ADC_ch1_p),
        .IB(i_ADC_ch1_n),
        .O(o_ADC_ch1_p),
        .OB(o_ADC_ch1_n));
  (* box_type = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT ADC_ch2_IBUFDS_inst
       (.I(i_ADC_ch2_p),
        .IB(i_ADC_ch2_n),
        .O(o_ADC_ch2_p),
        .OB(o_ADC_ch2_n));
  (* box_type = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT ADC_ch3_IBUFDS_inst
       (.I(i_ADC_ch3_p),
        .IB(i_ADC_ch3_n),
        .O(o_ADC_ch3_p),
        .OB(o_ADC_ch3_n));
  (* box_type = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT ADC_ch4_IBUFDS_inst
       (.I(i_ADC_ch4_p),
        .IB(i_ADC_ch4_n),
        .O(o_ADC_ch4_p),
        .OB(o_ADC_ch4_n));
  (* box_type = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT ADC_ch5_IBUFDS_inst
       (.I(i_ADC_ch5_p),
        .IB(i_ADC_ch5_n),
        .O(o_ADC_ch5_p),
        .OB(o_ADC_ch5_n));
  (* box_type = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT ADC_ch6_IBUFDS_inst
       (.I(i_ADC_ch6_p),
        .IB(i_ADC_ch6_n),
        .O(o_ADC_ch6_p),
        .OB(o_ADC_ch6_n));
  (* box_type = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT ADC_ch7_IBUFDS_inst
       (.I(i_ADC_ch7_p),
        .IB(i_ADC_ch7_n),
        .O(o_ADC_ch7_p),
        .OB(o_ADC_ch7_n));
  (* XILINX_LEGACY_PRIM = "IBUFGDS_DIFF_OUT" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT ADclk_IBUFDS_inst
       (.I(i_ADclk_p),
        .IB(i_ADclk_n),
        .O(o_ADclk_p),
        .OB(o_ADclk_n));
  (* XILINX_LEGACY_PRIM = "IBUFGDS_DIFF_OUT" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT Lclk_IBUFDS_inst
       (.I(i_Lclk_p),
        .IB(i_Lclk_n),
        .O(o_Lclk_p),
        .OB(o_Lclk_n));
endmodule

(* CHECK_LICENSE_TYPE = "zsys_ADC_readout_buff_0_0,ADC_readout_buff,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "ADC_readout_buff,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (i_ADclk_p,
    i_ADclk_n,
    i_Lclk_p,
    i_Lclk_n,
    i_ADC_ch0_p,
    i_ADC_ch0_n,
    i_ADC_ch1_p,
    i_ADC_ch1_n,
    i_ADC_ch2_p,
    i_ADC_ch2_n,
    i_ADC_ch3_p,
    i_ADC_ch3_n,
    i_ADC_ch4_p,
    i_ADC_ch4_n,
    i_ADC_ch5_p,
    i_ADC_ch5_n,
    i_ADC_ch6_p,
    i_ADC_ch6_n,
    i_ADC_ch7_p,
    i_ADC_ch7_n,
    o_ADclk_p,
    o_ADclk_n,
    o_Lclk_p,
    o_Lclk_n,
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
  input i_ADclk_p;
  input i_ADclk_n;
  input i_Lclk_p;
  input i_Lclk_n;
  input i_ADC_ch0_p;
  input i_ADC_ch0_n;
  input i_ADC_ch1_p;
  input i_ADC_ch1_n;
  input i_ADC_ch2_p;
  input i_ADC_ch2_n;
  input i_ADC_ch3_p;
  input i_ADC_ch3_n;
  input i_ADC_ch4_p;
  input i_ADC_ch4_n;
  input i_ADC_ch5_p;
  input i_ADC_ch5_n;
  input i_ADC_ch6_p;
  input i_ADC_ch6_n;
  input i_ADC_ch7_p;
  input i_ADC_ch7_n;
  output o_ADclk_p;
  output o_ADclk_n;
  output o_Lclk_p;
  output o_Lclk_n;
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

  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire i_ADC_ch0_n;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire i_ADC_ch0_p;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire i_ADC_ch1_n;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire i_ADC_ch1_p;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire i_ADC_ch2_n;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire i_ADC_ch2_p;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire i_ADC_ch3_n;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire i_ADC_ch3_p;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire i_ADC_ch4_n;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire i_ADC_ch4_p;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire i_ADC_ch5_n;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire i_ADC_ch5_p;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire i_ADC_ch6_n;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire i_ADC_ch6_p;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire i_ADC_ch7_n;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire i_ADC_ch7_p;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire i_ADclk_n;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire i_ADclk_p;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire i_Lclk_n;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire i_Lclk_p;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire o_ADC_ch0_n;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire o_ADC_ch0_p;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire o_ADC_ch1_n;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire o_ADC_ch1_p;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire o_ADC_ch2_n;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire o_ADC_ch2_p;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire o_ADC_ch3_n;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire o_ADC_ch3_p;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire o_ADC_ch4_n;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire o_ADC_ch4_p;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire o_ADC_ch5_n;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire o_ADC_ch5_p;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire o_ADC_ch6_n;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire o_ADC_ch6_p;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire o_ADC_ch7_n;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire o_ADC_ch7_p;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire o_ADclk_n;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire o_ADclk_p;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire o_Lclk_n;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire o_Lclk_p;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ADC_readout_buff U0
       (.i_ADC_ch0_n(i_ADC_ch0_n),
        .i_ADC_ch0_p(i_ADC_ch0_p),
        .i_ADC_ch1_n(i_ADC_ch1_n),
        .i_ADC_ch1_p(i_ADC_ch1_p),
        .i_ADC_ch2_n(i_ADC_ch2_n),
        .i_ADC_ch2_p(i_ADC_ch2_p),
        .i_ADC_ch3_n(i_ADC_ch3_n),
        .i_ADC_ch3_p(i_ADC_ch3_p),
        .i_ADC_ch4_n(i_ADC_ch4_n),
        .i_ADC_ch4_p(i_ADC_ch4_p),
        .i_ADC_ch5_n(i_ADC_ch5_n),
        .i_ADC_ch5_p(i_ADC_ch5_p),
        .i_ADC_ch6_n(i_ADC_ch6_n),
        .i_ADC_ch6_p(i_ADC_ch6_p),
        .i_ADC_ch7_n(i_ADC_ch7_n),
        .i_ADC_ch7_p(i_ADC_ch7_p),
        .i_ADclk_n(i_ADclk_n),
        .i_ADclk_p(i_ADclk_p),
        .i_Lclk_n(i_Lclk_n),
        .i_Lclk_p(i_Lclk_p),
        .o_ADC_ch0_n(o_ADC_ch0_n),
        .o_ADC_ch0_p(o_ADC_ch0_p),
        .o_ADC_ch1_n(o_ADC_ch1_n),
        .o_ADC_ch1_p(o_ADC_ch1_p),
        .o_ADC_ch2_n(o_ADC_ch2_n),
        .o_ADC_ch2_p(o_ADC_ch2_p),
        .o_ADC_ch3_n(o_ADC_ch3_n),
        .o_ADC_ch3_p(o_ADC_ch3_p),
        .o_ADC_ch4_n(o_ADC_ch4_n),
        .o_ADC_ch4_p(o_ADC_ch4_p),
        .o_ADC_ch5_n(o_ADC_ch5_n),
        .o_ADC_ch5_p(o_ADC_ch5_p),
        .o_ADC_ch6_n(o_ADC_ch6_n),
        .o_ADC_ch6_p(o_ADC_ch6_p),
        .o_ADC_ch7_n(o_ADC_ch7_n),
        .o_ADC_ch7_p(o_ADC_ch7_p),
        .o_ADclk_n(o_ADclk_n),
        .o_ADclk_p(o_ADclk_p),
        .o_Lclk_n(o_Lclk_n),
        .o_Lclk_p(o_Lclk_p));
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
