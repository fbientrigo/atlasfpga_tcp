// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Wed Dec  4 12:19:06 2024
// Host        : ifraba-HP-Pavilion-Laptop-15-eg2xxx running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_DRS_A_test_0_0/zsys_DRS_A_test_0_0_sim_netlist.v
// Design      : zsys_DRS_A_test_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z015clg485-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "zsys_DRS_A_test_0_0,DRS_A_test,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "DRS_A_test,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module zsys_DRS_A_test_0_0
   (A_vec,
    i_RSRLOAD,
    i_SRIN,
    i_dwrite,
    i_SRCLK,
    i_en_test,
    i_nrst,
    o_A_vec,
    o_RSRLOAD,
    o_dwrite,
    o_SRCLK,
    o_SRIN,
    i_clk);
  input [3:0]A_vec;
  input i_RSRLOAD;
  input i_SRIN;
  input i_dwrite;
  input i_SRCLK;
  input i_en_test;
  input i_nrst;
  output [3:0]o_A_vec;
  output o_RSRLOAD;
  output o_dwrite;
  output o_SRCLK;
  output o_SRIN;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 i_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME i_clk, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_0_FCLK_CLK1" *) input i_clk;

  wire [3:0]A_vec;
  wire i_RSRLOAD;
  wire i_SRCLK;
  wire i_SRIN;
  wire i_clk;
  wire i_dwrite;
  wire i_en_test;
  wire i_nrst;
  wire [3:0]o_A_vec;
  wire o_RSRLOAD;
  wire o_SRCLK;
  wire o_SRIN;
  wire o_dwrite;

  zsys_DRS_A_test_0_0_DRS_A_test U0
       (.A_vec(A_vec),
        .i_RSRLOAD(i_RSRLOAD),
        .i_SRCLK(i_SRCLK),
        .i_SRIN(i_SRIN),
        .i_clk(i_clk),
        .i_dwrite(i_dwrite),
        .i_en_test(i_en_test),
        .i_nrst(i_nrst),
        .o_A_vec(o_A_vec),
        .o_RSRLOAD(o_RSRLOAD),
        .o_SRCLK(o_SRCLK),
        .o_SRIN(o_SRIN),
        .o_dwrite(o_dwrite));
endmodule

(* ORIG_REF_NAME = "DRS_A_test" *) 
module zsys_DRS_A_test_0_0_DRS_A_test
   (o_A_vec,
    o_RSRLOAD,
    o_dwrite,
    o_SRCLK,
    o_SRIN,
    i_clk,
    i_nrst,
    i_en_test,
    A_vec,
    i_RSRLOAD,
    i_dwrite,
    i_SRCLK,
    i_SRIN);
  output [3:0]o_A_vec;
  output o_RSRLOAD;
  output o_dwrite;
  output o_SRCLK;
  output o_SRIN;
  input i_clk;
  input i_nrst;
  input i_en_test;
  input [3:0]A_vec;
  input i_RSRLOAD;
  input i_dwrite;
  input i_SRCLK;
  input i_SRIN;

  wire [3:0]A_vec;
  wire i_RSRLOAD;
  wire i_SRCLK;
  wire i_SRIN;
  wire i_clk;
  wire i_dwrite;
  wire i_en_test;
  wire i_nrst;
  wire [3:0]o_A_vec;
  wire \o_A_vec[0]_i_1_n_0 ;
  wire \o_A_vec[1]_i_1_n_0 ;
  wire \o_A_vec[2]_i_1_n_0 ;
  wire \o_A_vec[3]_i_1_n_0 ;
  wire o_RSRLOAD;
  wire o_RSRLOAD_i_1_n_0;
  wire o_SRCLK;
  wire o_SRCLK_i_1_n_0;
  wire o_SRIN;
  wire o_SRIN_i_1_n_0;
  wire o_dwrite;
  wire o_dwrite_i_1_n_0;
  wire p_1_in;
  wire p_2_in;
  wire [0:0]p_4_out;
  wire \sim_clk[0]_i_2_n_0 ;
  wire \sim_clk[1]_i_1_n_0 ;
  wire \sim_clk[2]_i_1_n_0 ;
  wire \sim_clk[3]_i_1_n_0 ;
  wire \sim_clk_reg_n_0_[0] ;
  wire \sim_clk_reg_n_0_[3] ;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_A_vec[0]_i_1 
       (.I0(\sim_clk_reg_n_0_[0] ),
        .I1(i_en_test),
        .I2(A_vec[0]),
        .O(\o_A_vec[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_A_vec[1]_i_1 
       (.I0(p_1_in),
        .I1(i_en_test),
        .I2(A_vec[1]),
        .O(\o_A_vec[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_A_vec[2]_i_1 
       (.I0(p_2_in),
        .I1(i_en_test),
        .I2(A_vec[2]),
        .O(\o_A_vec[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_A_vec[3]_i_1 
       (.I0(\sim_clk_reg_n_0_[3] ),
        .I1(i_en_test),
        .I2(A_vec[3]),
        .O(\o_A_vec[3]_i_1_n_0 ));
  FDRE \o_A_vec_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\o_A_vec[0]_i_1_n_0 ),
        .Q(o_A_vec[0]),
        .R(1'b0));
  FDRE \o_A_vec_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\o_A_vec[1]_i_1_n_0 ),
        .Q(o_A_vec[1]),
        .R(1'b0));
  FDRE \o_A_vec_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\o_A_vec[2]_i_1_n_0 ),
        .Q(o_A_vec[2]),
        .R(1'b0));
  FDRE \o_A_vec_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\o_A_vec[3]_i_1_n_0 ),
        .Q(o_A_vec[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    o_RSRLOAD_i_1
       (.I0(\sim_clk_reg_n_0_[0] ),
        .I1(i_en_test),
        .I2(i_RSRLOAD),
        .O(o_RSRLOAD_i_1_n_0));
  FDRE o_RSRLOAD_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(o_RSRLOAD_i_1_n_0),
        .Q(o_RSRLOAD),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    o_SRCLK_i_1
       (.I0(\sim_clk_reg_n_0_[0] ),
        .I1(i_en_test),
        .I2(i_SRCLK),
        .O(o_SRCLK_i_1_n_0));
  FDRE o_SRCLK_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(o_SRCLK_i_1_n_0),
        .Q(o_SRCLK),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    o_SRIN_i_1
       (.I0(p_2_in),
        .I1(i_en_test),
        .I2(i_SRIN),
        .O(o_SRIN_i_1_n_0));
  FDRE o_SRIN_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(o_SRIN_i_1_n_0),
        .Q(o_SRIN),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    o_dwrite_i_1
       (.I0(p_1_in),
        .I1(i_en_test),
        .I2(i_dwrite),
        .O(o_dwrite_i_1_n_0));
  FDRE o_dwrite_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(o_dwrite_i_1_n_0),
        .Q(o_dwrite),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \sim_clk[0]_i_1 
       (.I0(\sim_clk_reg_n_0_[0] ),
        .O(p_4_out));
  LUT1 #(
    .INIT(2'h1)) 
    \sim_clk[0]_i_2 
       (.I0(i_nrst),
        .O(\sim_clk[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sim_clk[1]_i_1 
       (.I0(\sim_clk_reg_n_0_[0] ),
        .I1(p_1_in),
        .O(\sim_clk[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sim_clk[2]_i_1 
       (.I0(p_1_in),
        .I1(\sim_clk_reg_n_0_[0] ),
        .I2(p_2_in),
        .O(\sim_clk[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \sim_clk[3]_i_1 
       (.I0(p_2_in),
        .I1(\sim_clk_reg_n_0_[0] ),
        .I2(p_1_in),
        .I3(\sim_clk_reg_n_0_[3] ),
        .O(\sim_clk[3]_i_1_n_0 ));
  FDCE \sim_clk_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(\sim_clk[0]_i_2_n_0 ),
        .D(p_4_out),
        .Q(\sim_clk_reg_n_0_[0] ));
  FDCE \sim_clk_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(\sim_clk[0]_i_2_n_0 ),
        .D(\sim_clk[1]_i_1_n_0 ),
        .Q(p_1_in));
  FDCE \sim_clk_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(\sim_clk[0]_i_2_n_0 ),
        .D(\sim_clk[2]_i_1_n_0 ),
        .Q(p_2_in));
  FDCE \sim_clk_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(\sim_clk[0]_i_2_n_0 ),
        .D(\sim_clk[3]_i_1_n_0 ),
        .Q(\sim_clk_reg_n_0_[3] ));
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
