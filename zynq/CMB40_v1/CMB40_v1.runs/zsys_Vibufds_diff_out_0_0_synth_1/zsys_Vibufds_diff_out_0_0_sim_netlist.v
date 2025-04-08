// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Sep 18 16:50:42 2023
// Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zsys_Vibufds_diff_out_0_0_sim_netlist.v
// Design      : zsys_Vibufds_diff_out_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z015clg485-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Vibufds_diff_out
   (o_MUXOUT_P,
    o_MUXOUT_N,
    MUXOUT_P,
    MUXOUT_N);
  output [7:0]o_MUXOUT_P;
  output [7:0]o_MUXOUT_N;
  input [7:0]MUXOUT_P;
  input [7:0]MUXOUT_N;

  wire [7:0]MUXOUT_N;
  wire [7:0]MUXOUT_P;
  wire [7:0]o_MUXOUT_N;
  wire [7:0]o_MUXOUT_P;

  (* box_type = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT \adc_buf_gen[0].IBUFDS_DIFF_OUT_inst 
       (.I(MUXOUT_P[0]),
        .IB(MUXOUT_N[0]),
        .O(o_MUXOUT_P[0]),
        .OB(o_MUXOUT_N[0]));
  (* box_type = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT \adc_buf_gen[1].IBUFDS_DIFF_OUT_inst 
       (.I(MUXOUT_P[1]),
        .IB(MUXOUT_N[1]),
        .O(o_MUXOUT_P[1]),
        .OB(o_MUXOUT_N[1]));
  (* box_type = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT \adc_buf_gen[2].IBUFDS_DIFF_OUT_inst 
       (.I(MUXOUT_P[2]),
        .IB(MUXOUT_N[2]),
        .O(o_MUXOUT_P[2]),
        .OB(o_MUXOUT_N[2]));
  (* box_type = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT \adc_buf_gen[3].IBUFDS_DIFF_OUT_inst 
       (.I(MUXOUT_P[3]),
        .IB(MUXOUT_N[3]),
        .O(o_MUXOUT_P[3]),
        .OB(o_MUXOUT_N[3]));
  (* box_type = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT \adc_buf_gen[4].IBUFDS_DIFF_OUT_inst 
       (.I(MUXOUT_P[4]),
        .IB(MUXOUT_N[4]),
        .O(o_MUXOUT_P[4]),
        .OB(o_MUXOUT_N[4]));
  (* box_type = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT \adc_buf_gen[5].IBUFDS_DIFF_OUT_inst 
       (.I(MUXOUT_P[5]),
        .IB(MUXOUT_N[5]),
        .O(o_MUXOUT_P[5]),
        .OB(o_MUXOUT_N[5]));
  (* box_type = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT \adc_buf_gen[6].IBUFDS_DIFF_OUT_inst 
       (.I(MUXOUT_P[6]),
        .IB(MUXOUT_N[6]),
        .O(o_MUXOUT_P[6]),
        .OB(o_MUXOUT_N[6]));
  (* box_type = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT \adc_buf_gen[7].IBUFDS_DIFF_OUT_inst 
       (.I(MUXOUT_P[7]),
        .IB(MUXOUT_N[7]),
        .O(o_MUXOUT_P[7]),
        .OB(o_MUXOUT_N[7]));
endmodule

(* CHECK_LICENSE_TYPE = "zsys_Vibufds_diff_out_0_0,Vibufds_diff_out,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Vibufds_diff_out,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (MUXOUT_P,
    MUXOUT_N,
    o_MUXOUT_P,
    o_MUXOUT_N);
  input [7:0]MUXOUT_P;
  input [7:0]MUXOUT_N;
  output [7:0]o_MUXOUT_P;
  output [7:0]o_MUXOUT_N;

  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire [7:0]MUXOUT_N;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire [7:0]MUXOUT_P;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire [7:0]o_MUXOUT_N;
  (* DIFF_TERM *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire [7:0]o_MUXOUT_P;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Vibufds_diff_out U0
       (.MUXOUT_N(MUXOUT_N),
        .MUXOUT_P(MUXOUT_P),
        .o_MUXOUT_N(o_MUXOUT_N),
        .o_MUXOUT_P(o_MUXOUT_P));
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
