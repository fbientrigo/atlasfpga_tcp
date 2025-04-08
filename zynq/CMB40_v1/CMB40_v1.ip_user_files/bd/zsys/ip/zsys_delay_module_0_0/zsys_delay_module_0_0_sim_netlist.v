// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Sep 25 14:18:26 2023
// Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/victo/Desktop/Vivados/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_delay_module_0_0/zsys_delay_module_0_0_sim_netlist.v
// Design      : zsys_delay_module_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z015clg485-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "zsys_delay_module_0_0,delay_module,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "delay_module,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module zsys_delay_module_0_0
   (delay_sel,
    signal_in,
    signal_out);
  input [9:0]delay_sel;
  input signal_in;
  output signal_out;

  wire [9:0]delay_sel;
  wire signal_in;
  wire signal_out;

  zsys_delay_module_0_0_delay_module U0
       (.delay_sel(delay_sel[1:0]),
        .signal_in(signal_in),
        .signal_out(signal_out));
endmodule

(* ORIG_REF_NAME = "delay_module" *) 
module zsys_delay_module_0_0_delay_module
   (signal_out,
    signal_in,
    delay_sel);
  output signal_out;
  input signal_in;
  input [1:0]delay_sel;

  wire [1:0]delay_sel;
  (* DONT_TOUCH *) wire [30:0]sig_delay;
  wire signal_out;

  assign sig_delay[0] = signal_in;
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \LUT1_gen[10].LUT1_inst 
       (.I0(sig_delay[9]),
        .O(sig_delay[10]));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \LUT1_gen[11].LUT1_inst 
       (.I0(sig_delay[10]),
        .O(sig_delay[11]));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \LUT1_gen[12].LUT1_inst 
       (.I0(sig_delay[11]),
        .O(sig_delay[12]));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \LUT1_gen[13].LUT1_inst 
       (.I0(sig_delay[12]),
        .O(sig_delay[13]));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \LUT1_gen[14].LUT1_inst 
       (.I0(sig_delay[13]),
        .O(sig_delay[14]));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \LUT1_gen[15].LUT1_inst 
       (.I0(sig_delay[14]),
        .O(sig_delay[15]));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \LUT1_gen[16].LUT1_inst 
       (.I0(sig_delay[15]),
        .O(sig_delay[16]));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \LUT1_gen[17].LUT1_inst 
       (.I0(sig_delay[16]),
        .O(sig_delay[17]));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \LUT1_gen[18].LUT1_inst 
       (.I0(sig_delay[17]),
        .O(sig_delay[18]));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \LUT1_gen[19].LUT1_inst 
       (.I0(sig_delay[18]),
        .O(sig_delay[19]));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \LUT1_gen[1].LUT1_inst 
       (.I0(sig_delay[0]),
        .O(sig_delay[1]));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \LUT1_gen[20].LUT1_inst 
       (.I0(sig_delay[19]),
        .O(sig_delay[20]));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \LUT1_gen[21].LUT1_inst 
       (.I0(sig_delay[20]),
        .O(sig_delay[21]));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \LUT1_gen[22].LUT1_inst 
       (.I0(sig_delay[21]),
        .O(sig_delay[22]));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \LUT1_gen[23].LUT1_inst 
       (.I0(sig_delay[22]),
        .O(sig_delay[23]));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \LUT1_gen[24].LUT1_inst 
       (.I0(sig_delay[23]),
        .O(sig_delay[24]));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \LUT1_gen[25].LUT1_inst 
       (.I0(sig_delay[24]),
        .O(sig_delay[25]));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \LUT1_gen[26].LUT1_inst 
       (.I0(sig_delay[25]),
        .O(sig_delay[26]));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \LUT1_gen[27].LUT1_inst 
       (.I0(sig_delay[26]),
        .O(sig_delay[27]));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \LUT1_gen[28].LUT1_inst 
       (.I0(sig_delay[27]),
        .O(sig_delay[28]));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \LUT1_gen[29].LUT1_inst 
       (.I0(sig_delay[28]),
        .O(sig_delay[29]));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \LUT1_gen[2].LUT1_inst 
       (.I0(sig_delay[1]),
        .O(sig_delay[2]));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \LUT1_gen[30].LUT1_inst 
       (.I0(sig_delay[29]),
        .O(sig_delay[30]));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \LUT1_gen[3].LUT1_inst 
       (.I0(sig_delay[2]),
        .O(sig_delay[3]));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \LUT1_gen[4].LUT1_inst 
       (.I0(sig_delay[3]),
        .O(sig_delay[4]));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \LUT1_gen[5].LUT1_inst 
       (.I0(sig_delay[4]),
        .O(sig_delay[5]));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \LUT1_gen[6].LUT1_inst 
       (.I0(sig_delay[5]),
        .O(sig_delay[6]));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \LUT1_gen[7].LUT1_inst 
       (.I0(sig_delay[6]),
        .O(sig_delay[7]));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \LUT1_gen[8].LUT1_inst 
       (.I0(sig_delay[7]),
        .O(sig_delay[8]));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \LUT1_gen[9].LUT1_inst 
       (.I0(sig_delay[8]),
        .O(sig_delay[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_out__0
       (.I0(sig_delay[24]),
        .I1(sig_delay[16]),
        .I2(delay_sel[1]),
        .I3(sig_delay[8]),
        .I4(delay_sel[0]),
        .I5(sig_delay[0]),
        .O(signal_out));
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
