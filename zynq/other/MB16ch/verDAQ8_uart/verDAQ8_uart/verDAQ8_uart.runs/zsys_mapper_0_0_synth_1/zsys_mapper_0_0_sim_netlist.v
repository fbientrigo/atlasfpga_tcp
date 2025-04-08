// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Mar  3 13:46:11 2022
// Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zsys_mapper_0_0_sim_netlist.v
// Design      : zsys_mapper_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z015clg485-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mapper
   (o_out_2,
    o_out_5,
    o_out_6,
    o_out_7,
    o_out_0,
    o_out_1,
    o_out_3,
    o_out_4,
    i_in_2,
    i_in_5,
    i_in_6,
    i_in_7,
    i_in_0,
    i_in_1,
    i_in_3,
    i_in_4);
  output [5:0]o_out_2;
  output [5:0]o_out_5;
  output [5:0]o_out_6;
  output [5:0]o_out_7;
  output [5:0]o_out_0;
  output [5:0]o_out_1;
  output [5:0]o_out_3;
  output [5:0]o_out_4;
  input [5:0]i_in_2;
  input [5:0]i_in_5;
  input [5:0]i_in_6;
  input [5:0]i_in_7;
  input [5:0]i_in_0;
  input [5:0]i_in_1;
  input [5:0]i_in_3;
  input [5:0]i_in_4;

  wire [5:0]i_in_0;
  wire [5:0]i_in_1;
  wire [5:0]i_in_2;
  wire [5:0]i_in_3;
  wire [5:0]i_in_4;
  wire [5:0]i_in_5;
  wire [5:0]i_in_6;
  wire [5:0]i_in_7;
  wire [5:0]o_out_0;
  wire [5:0]o_out_1;
  wire [5:0]o_out_2;
  wire [5:0]o_out_3;
  wire [5:0]o_out_4;
  wire [5:0]o_out_5;
  wire [5:0]o_out_6;
  wire [5:0]o_out_7;

  LUT1 #(
    .INIT(2'h1)) 
    \o_out_0[0]_INST_0 
       (.I0(i_in_0[5]),
        .O(o_out_0[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_out_0[10]_INST_0 
       (.I0(i_in_0[0]),
        .O(o_out_0[5]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_out_0[2]_INST_0 
       (.I0(i_in_0[4]),
        .O(o_out_0[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_out_0[4]_INST_0 
       (.I0(i_in_0[3]),
        .O(o_out_0[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_out_0[6]_INST_0 
       (.I0(i_in_0[2]),
        .O(o_out_0[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_out_0[8]_INST_0 
       (.I0(i_in_0[1]),
        .O(o_out_0[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_out_1[0]_INST_0 
       (.I0(i_in_1[5]),
        .O(o_out_1[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_out_1[10]_INST_0 
       (.I0(i_in_1[0]),
        .O(o_out_1[5]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_out_1[2]_INST_0 
       (.I0(i_in_1[4]),
        .O(o_out_1[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_out_1[4]_INST_0 
       (.I0(i_in_1[3]),
        .O(o_out_1[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_out_1[6]_INST_0 
       (.I0(i_in_1[2]),
        .O(o_out_1[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_out_1[8]_INST_0 
       (.I0(i_in_1[1]),
        .O(o_out_1[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_out_2[11]_INST_0 
       (.I0(i_in_2[0]),
        .O(o_out_2[5]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_out_2[1]_INST_0 
       (.I0(i_in_2[5]),
        .O(o_out_2[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_out_2[3]_INST_0 
       (.I0(i_in_2[4]),
        .O(o_out_2[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_out_2[5]_INST_0 
       (.I0(i_in_2[3]),
        .O(o_out_2[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_out_2[7]_INST_0 
       (.I0(i_in_2[2]),
        .O(o_out_2[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_out_2[9]_INST_0 
       (.I0(i_in_2[1]),
        .O(o_out_2[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_out_3[0]_INST_0 
       (.I0(i_in_3[5]),
        .O(o_out_3[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_out_3[10]_INST_0 
       (.I0(i_in_3[0]),
        .O(o_out_3[5]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_out_3[2]_INST_0 
       (.I0(i_in_3[4]),
        .O(o_out_3[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_out_3[4]_INST_0 
       (.I0(i_in_3[3]),
        .O(o_out_3[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_out_3[6]_INST_0 
       (.I0(i_in_3[2]),
        .O(o_out_3[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_out_3[8]_INST_0 
       (.I0(i_in_3[1]),
        .O(o_out_3[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_out_4[0]_INST_0 
       (.I0(i_in_4[5]),
        .O(o_out_4[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_out_4[10]_INST_0 
       (.I0(i_in_4[0]),
        .O(o_out_4[5]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_out_4[2]_INST_0 
       (.I0(i_in_4[4]),
        .O(o_out_4[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_out_4[4]_INST_0 
       (.I0(i_in_4[3]),
        .O(o_out_4[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_out_4[6]_INST_0 
       (.I0(i_in_4[2]),
        .O(o_out_4[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_out_4[8]_INST_0 
       (.I0(i_in_4[1]),
        .O(o_out_4[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_out_5[11]_INST_0 
       (.I0(i_in_5[0]),
        .O(o_out_5[5]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_out_5[1]_INST_0 
       (.I0(i_in_5[5]),
        .O(o_out_5[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_out_5[3]_INST_0 
       (.I0(i_in_5[4]),
        .O(o_out_5[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_out_5[5]_INST_0 
       (.I0(i_in_5[3]),
        .O(o_out_5[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_out_5[7]_INST_0 
       (.I0(i_in_5[2]),
        .O(o_out_5[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_out_5[9]_INST_0 
       (.I0(i_in_5[1]),
        .O(o_out_5[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_out_6[11]_INST_0 
       (.I0(i_in_6[0]),
        .O(o_out_6[5]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_out_6[1]_INST_0 
       (.I0(i_in_6[5]),
        .O(o_out_6[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_out_6[3]_INST_0 
       (.I0(i_in_6[4]),
        .O(o_out_6[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_out_6[5]_INST_0 
       (.I0(i_in_6[3]),
        .O(o_out_6[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_out_6[7]_INST_0 
       (.I0(i_in_6[2]),
        .O(o_out_6[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_out_6[9]_INST_0 
       (.I0(i_in_6[1]),
        .O(o_out_6[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_out_7[11]_INST_0 
       (.I0(i_in_7[0]),
        .O(o_out_7[5]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_out_7[1]_INST_0 
       (.I0(i_in_7[5]),
        .O(o_out_7[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_out_7[3]_INST_0 
       (.I0(i_in_7[4]),
        .O(o_out_7[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_out_7[5]_INST_0 
       (.I0(i_in_7[3]),
        .O(o_out_7[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_out_7[7]_INST_0 
       (.I0(i_in_7[2]),
        .O(o_out_7[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_out_7[9]_INST_0 
       (.I0(i_in_7[1]),
        .O(o_out_7[4]));
endmodule

(* CHECK_LICENSE_TYPE = "zsys_mapper_0_0,mapper,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "mapper,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (i_in_0,
    i_in_1,
    i_in_2,
    i_in_3,
    i_in_4,
    i_in_5,
    i_in_6,
    i_in_7,
    o_out_0,
    o_out_1,
    o_out_2,
    o_out_3,
    o_out_4,
    o_out_5,
    o_out_6,
    o_out_7);
  input [15:0]i_in_0;
  input [15:0]i_in_1;
  input [15:0]i_in_2;
  input [15:0]i_in_3;
  input [15:0]i_in_4;
  input [15:0]i_in_5;
  input [15:0]i_in_6;
  input [15:0]i_in_7;
  output [11:0]o_out_0;
  output [11:0]o_out_1;
  output [11:0]o_out_2;
  output [11:0]o_out_3;
  output [11:0]o_out_4;
  output [11:0]o_out_5;
  output [11:0]o_out_6;
  output [11:0]o_out_7;

  wire [15:0]i_in_0;
  wire [15:0]i_in_1;
  wire [15:0]i_in_2;
  wire [15:0]i_in_3;
  wire [15:0]i_in_4;
  wire [15:0]i_in_5;
  wire [15:0]i_in_6;
  wire [15:0]i_in_7;
  wire [10:0]\^o_out_0 ;
  wire [10:0]\^o_out_1 ;
  wire [11:1]\^o_out_2 ;
  wire [10:0]\^o_out_3 ;
  wire [10:0]\^o_out_4 ;
  wire [11:1]\^o_out_5 ;
  wire [11:1]\^o_out_6 ;
  wire [11:1]\^o_out_7 ;

  assign o_out_0[11] = i_in_0[0];
  assign o_out_0[10] = \^o_out_0 [10];
  assign o_out_0[9] = i_in_0[1];
  assign o_out_0[8] = \^o_out_0 [8];
  assign o_out_0[7] = i_in_0[2];
  assign o_out_0[6] = \^o_out_0 [6];
  assign o_out_0[5] = i_in_0[3];
  assign o_out_0[4] = \^o_out_0 [4];
  assign o_out_0[3] = i_in_0[4];
  assign o_out_0[2] = \^o_out_0 [2];
  assign o_out_0[1] = i_in_0[5];
  assign o_out_0[0] = \^o_out_0 [0];
  assign o_out_1[11] = i_in_1[0];
  assign o_out_1[10] = \^o_out_1 [10];
  assign o_out_1[9] = i_in_1[1];
  assign o_out_1[8] = \^o_out_1 [8];
  assign o_out_1[7] = i_in_1[2];
  assign o_out_1[6] = \^o_out_1 [6];
  assign o_out_1[5] = i_in_1[3];
  assign o_out_1[4] = \^o_out_1 [4];
  assign o_out_1[3] = i_in_1[4];
  assign o_out_1[2] = \^o_out_1 [2];
  assign o_out_1[1] = i_in_1[5];
  assign o_out_1[0] = \^o_out_1 [0];
  assign o_out_2[11] = \^o_out_2 [11];
  assign o_out_2[10] = i_in_2[8];
  assign o_out_2[9] = \^o_out_2 [9];
  assign o_out_2[8] = i_in_2[9];
  assign o_out_2[7] = \^o_out_2 [7];
  assign o_out_2[6] = i_in_2[10];
  assign o_out_2[5] = \^o_out_2 [5];
  assign o_out_2[4] = i_in_2[11];
  assign o_out_2[3] = \^o_out_2 [3];
  assign o_out_2[2] = i_in_2[12];
  assign o_out_2[1] = \^o_out_2 [1];
  assign o_out_2[0] = i_in_2[13];
  assign o_out_3[11] = i_in_3[0];
  assign o_out_3[10] = \^o_out_3 [10];
  assign o_out_3[9] = i_in_3[1];
  assign o_out_3[8] = \^o_out_3 [8];
  assign o_out_3[7] = i_in_3[2];
  assign o_out_3[6] = \^o_out_3 [6];
  assign o_out_3[5] = i_in_3[3];
  assign o_out_3[4] = \^o_out_3 [4];
  assign o_out_3[3] = i_in_3[4];
  assign o_out_3[2] = \^o_out_3 [2];
  assign o_out_3[1] = i_in_3[5];
  assign o_out_3[0] = \^o_out_3 [0];
  assign o_out_4[11] = i_in_4[0];
  assign o_out_4[10] = \^o_out_4 [10];
  assign o_out_4[9] = i_in_4[1];
  assign o_out_4[8] = \^o_out_4 [8];
  assign o_out_4[7] = i_in_4[2];
  assign o_out_4[6] = \^o_out_4 [6];
  assign o_out_4[5] = i_in_4[3];
  assign o_out_4[4] = \^o_out_4 [4];
  assign o_out_4[3] = i_in_4[4];
  assign o_out_4[2] = \^o_out_4 [2];
  assign o_out_4[1] = i_in_4[5];
  assign o_out_4[0] = \^o_out_4 [0];
  assign o_out_5[11] = \^o_out_5 [11];
  assign o_out_5[10] = i_in_5[8];
  assign o_out_5[9] = \^o_out_5 [9];
  assign o_out_5[8] = i_in_5[9];
  assign o_out_5[7] = \^o_out_5 [7];
  assign o_out_5[6] = i_in_5[10];
  assign o_out_5[5] = \^o_out_5 [5];
  assign o_out_5[4] = i_in_5[11];
  assign o_out_5[3] = \^o_out_5 [3];
  assign o_out_5[2] = i_in_5[12];
  assign o_out_5[1] = \^o_out_5 [1];
  assign o_out_5[0] = i_in_5[13];
  assign o_out_6[11] = \^o_out_6 [11];
  assign o_out_6[10] = i_in_6[8];
  assign o_out_6[9] = \^o_out_6 [9];
  assign o_out_6[8] = i_in_6[9];
  assign o_out_6[7] = \^o_out_6 [7];
  assign o_out_6[6] = i_in_6[10];
  assign o_out_6[5] = \^o_out_6 [5];
  assign o_out_6[4] = i_in_6[11];
  assign o_out_6[3] = \^o_out_6 [3];
  assign o_out_6[2] = i_in_6[12];
  assign o_out_6[1] = \^o_out_6 [1];
  assign o_out_6[0] = i_in_6[13];
  assign o_out_7[11] = \^o_out_7 [11];
  assign o_out_7[10] = i_in_7[8];
  assign o_out_7[9] = \^o_out_7 [9];
  assign o_out_7[8] = i_in_7[9];
  assign o_out_7[7] = \^o_out_7 [7];
  assign o_out_7[6] = i_in_7[10];
  assign o_out_7[5] = \^o_out_7 [5];
  assign o_out_7[4] = i_in_7[11];
  assign o_out_7[3] = \^o_out_7 [3];
  assign o_out_7[2] = i_in_7[12];
  assign o_out_7[1] = \^o_out_7 [1];
  assign o_out_7[0] = i_in_7[13];
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mapper U0
       (.i_in_0(i_in_0[13:8]),
        .i_in_1(i_in_1[13:8]),
        .i_in_2(i_in_2[5:0]),
        .i_in_3(i_in_3[13:8]),
        .i_in_4(i_in_4[13:8]),
        .i_in_5(i_in_5[5:0]),
        .i_in_6(i_in_6[5:0]),
        .i_in_7(i_in_7[5:0]),
        .o_out_0({\^o_out_0 [10],\^o_out_0 [8],\^o_out_0 [6],\^o_out_0 [4],\^o_out_0 [2],\^o_out_0 [0]}),
        .o_out_1({\^o_out_1 [10],\^o_out_1 [8],\^o_out_1 [6],\^o_out_1 [4],\^o_out_1 [2],\^o_out_1 [0]}),
        .o_out_2({\^o_out_2 [11],\^o_out_2 [9],\^o_out_2 [7],\^o_out_2 [5],\^o_out_2 [3],\^o_out_2 [1]}),
        .o_out_3({\^o_out_3 [10],\^o_out_3 [8],\^o_out_3 [6],\^o_out_3 [4],\^o_out_3 [2],\^o_out_3 [0]}),
        .o_out_4({\^o_out_4 [10],\^o_out_4 [8],\^o_out_4 [6],\^o_out_4 [4],\^o_out_4 [2],\^o_out_4 [0]}),
        .o_out_5({\^o_out_5 [11],\^o_out_5 [9],\^o_out_5 [7],\^o_out_5 [5],\^o_out_5 [3],\^o_out_5 [1]}),
        .o_out_6({\^o_out_6 [11],\^o_out_6 [9],\^o_out_6 [7],\^o_out_6 [5],\^o_out_6 [3],\^o_out_6 [1]}),
        .o_out_7({\^o_out_7 [11],\^o_out_7 [9],\^o_out_7 [7],\^o_out_7 [5],\^o_out_7 [3],\^o_out_7 [1]}));
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
