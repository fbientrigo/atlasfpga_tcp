// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu May 19 23:46:05 2022
// Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/victo/Desktop/Vivados/verDAQ8_uart/verDAQ8_uart.srcs/sources_1/bd/zsys/ip/zsys_reset_init_0_0/zsys_reset_init_0_0_sim_netlist.v
// Design      : zsys_reset_init_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z015clg485-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "zsys_reset_init_0_0,reset_init,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "reset_init,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module zsys_reset_init_0_0
   (clk,
    rst,
    input_start);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_0_FCLK_CLK0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW" *) output rst;
  input input_start;

  wire clk;
  wire input_start;
  wire rst;

  zsys_reset_init_0_0_reset_init U0
       (.clk(clk),
        .input_start(input_start),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "reset_init" *) 
module zsys_reset_init_0_0_reset_init
   (rst,
    clk,
    input_start);
  output rst;
  input clk;
  input input_start;

  wire clk;
  wire counter;
  wire \counter[2]_i_1_n_0 ;
  wire [4:0]counter_reg__0;
  wire flag_reset_i_1_n_0;
  wire flag_reset_reg_n_0;
  wire input_start;
  wire [4:0]p_0_in;
  wire rst;
  wire rst__0_n_0;
  wire rst_i_1_n_0;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(counter_reg__0[0]),
        .I1(counter_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter[2]_i_1 
       (.I0(counter_reg__0[0]),
        .I1(counter_reg__0[1]),
        .I2(counter_reg__0[2]),
        .O(\counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter[3]_i_1 
       (.I0(counter_reg__0[1]),
        .I1(counter_reg__0[0]),
        .I2(counter_reg__0[2]),
        .I3(counter_reg__0[3]),
        .O(p_0_in[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_1 
       (.I0(flag_reset_reg_n_0),
        .I1(input_start),
        .O(counter));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter[4]_i_2 
       (.I0(counter_reg__0[2]),
        .I1(counter_reg__0[0]),
        .I2(counter_reg__0[1]),
        .I3(counter_reg__0[3]),
        .I4(counter_reg__0[4]),
        .O(p_0_in[4]));
  FDRE \counter_reg[0] 
       (.C(clk),
        .CE(counter),
        .D(p_0_in[0]),
        .Q(counter_reg__0[0]),
        .R(1'b0));
  FDRE \counter_reg[1] 
       (.C(clk),
        .CE(counter),
        .D(p_0_in[1]),
        .Q(counter_reg__0[1]),
        .R(1'b0));
  FDRE \counter_reg[2] 
       (.C(clk),
        .CE(counter),
        .D(\counter[2]_i_1_n_0 ),
        .Q(counter_reg__0[2]),
        .R(1'b0));
  FDRE \counter_reg[3] 
       (.C(clk),
        .CE(counter),
        .D(p_0_in[3]),
        .Q(counter_reg__0[3]),
        .R(1'b0));
  FDRE \counter_reg[4] 
       (.C(clk),
        .CE(counter),
        .D(p_0_in[4]),
        .Q(counter_reg__0[4]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAA2A)) 
    flag_reset_i_1
       (.I0(flag_reset_reg_n_0),
        .I1(counter_reg__0[2]),
        .I2(counter_reg__0[3]),
        .I3(rst__0_n_0),
        .I4(counter_reg__0[4]),
        .I5(input_start),
        .O(flag_reset_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    flag_reset_reg
       (.C(clk),
        .CE(1'b1),
        .D(flag_reset_i_1_n_0),
        .Q(flag_reset_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    rst__0
       (.I0(counter_reg__0[1]),
        .I1(counter_reg__0[0]),
        .O(rst__0_n_0));
  LUT6 #(
    .INIT(64'h0000000057555555)) 
    rst_i_1
       (.I0(flag_reset_reg_n_0),
        .I1(counter_reg__0[4]),
        .I2(rst__0_n_0),
        .I3(counter_reg__0[3]),
        .I4(counter_reg__0[2]),
        .I5(input_start),
        .O(rst_i_1_n_0));
  FDRE rst_reg
       (.C(clk),
        .CE(1'b1),
        .D(rst_i_1_n_0),
        .Q(rst),
        .R(1'b0));
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
