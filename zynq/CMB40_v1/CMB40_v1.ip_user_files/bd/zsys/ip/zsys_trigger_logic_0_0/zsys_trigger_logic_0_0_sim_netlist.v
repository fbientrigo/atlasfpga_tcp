// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Tue Dec  3 15:03:41 2024
// Host        : ifraba-HP-Pavilion-Laptop-15-eg2xxx running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_trigger_logic_0_0/zsys_trigger_logic_0_0_sim_netlist.v
// Design      : zsys_trigger_logic_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z015clg485-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "zsys_trigger_logic_0_0,trigger_logic,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "trigger_logic,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module zsys_trigger_logic_0_0
   (sys_clk,
    areset,
    i_busy,
    i_in_trigger,
    i_soft_trigger,
    i_trigg_select_function,
    i_trigg_mask,
    i_en_soft_trigger,
    o_out_trigger);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 sys_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME sys_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_0_FCLK_CLK0" *) input sys_clk;
  input areset;
  input i_busy;
  input [7:0]i_in_trigger;
  input i_soft_trigger;
  input [2:0]i_trigg_select_function;
  input [7:0]i_trigg_mask;
  input i_en_soft_trigger;
  output o_out_trigger;

  wire areset;
  wire i_en_soft_trigger;
  wire [7:0]i_in_trigger;
  wire i_soft_trigger;
  wire [7:0]i_trigg_mask;
  wire [2:0]i_trigg_select_function;
  wire o_out_trigger;
  wire sys_clk;

  zsys_trigger_logic_0_0_trigger_logic U0
       (.areset(areset),
        .i_en_soft_trigger(i_en_soft_trigger),
        .i_in_trigger(i_in_trigger),
        .i_soft_trigger(i_soft_trigger),
        .i_trigg_mask(i_trigg_mask),
        .i_trigg_select_function(i_trigg_select_function),
        .o_out_trigger(o_out_trigger),
        .sys_clk(sys_clk));
endmodule

(* ORIG_REF_NAME = "trigger_logic" *) 
module zsys_trigger_logic_0_0_trigger_logic
   (o_out_trigger,
    sys_clk,
    areset,
    i_in_trigger,
    i_en_soft_trigger,
    i_soft_trigger,
    i_trigg_select_function,
    i_trigg_mask);
  output o_out_trigger;
  input sys_clk;
  input areset;
  input [7:0]i_in_trigger;
  input i_en_soft_trigger;
  input i_soft_trigger;
  input [2:0]i_trigg_select_function;
  input [7:0]i_trigg_mask;

  wire areset;
  wire [3:0]count_delay;
  wire \count_delay[0]_i_1_n_0 ;
  wire \count_delay[1]_i_1_n_0 ;
  wire \count_delay[2]_i_1_n_0 ;
  wire \count_delay[3]_i_2_n_0 ;
  wire \gen_rise[0].rise_input_reg_n_0_[0] ;
  wire i_en_soft_trigger;
  wire [7:0]i_in_trigger;
  wire i_soft_trigger;
  wire [7:0]i_trigg_mask;
  wire [2:0]i_trigg_select_function;
  wire o_out_trigger;
  wire o_out_trigger0_out;
  wire o_out_trigger1;
  wire p_0_in;
  wire p_11_in;
  wire p_13_in;
  wire p_1_in3_in;
  wire p_3_in;
  wire p_5_in;
  wire p_7_in;
  wire p_9_in;
  wire samp_out;
  wire samp_out_i_10_n_0;
  wire samp_out_i_1_n_0;
  wire samp_out_i_2_n_0;
  wire samp_out_i_3_n_0;
  wire samp_out_i_4_n_0;
  wire samp_out_i_5_n_0;
  wire samp_out_i_6_n_0;
  wire samp_out_i_7_n_0;
  wire samp_out_i_8_n_0;
  wire samp_out_i_9_n_0;
  wire sys_clk;
  wire unset_input;
  wire unset_out;
  wire unset_out_i_1_n_0;
  wire unset_out_i_2_n_0;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_delay[0]_i_1 
       (.I0(count_delay[0]),
        .O(\count_delay[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0DF0)) 
    \count_delay[1]_i_1 
       (.I0(count_delay[2]),
        .I1(count_delay[3]),
        .I2(count_delay[1]),
        .I3(count_delay[0]),
        .O(\count_delay[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h3C8C)) 
    \count_delay[2]_i_1 
       (.I0(count_delay[3]),
        .I1(count_delay[2]),
        .I2(count_delay[0]),
        .I3(count_delay[1]),
        .O(\count_delay[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_delay[3]_i_1 
       (.I0(i_soft_trigger),
        .I1(i_en_soft_trigger),
        .I2(samp_out),
        .O(o_out_trigger1));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \count_delay[3]_i_2 
       (.I0(count_delay[3]),
        .I1(count_delay[1]),
        .I2(count_delay[2]),
        .I3(count_delay[0]),
        .O(\count_delay[3]_i_2_n_0 ));
  FDCE \count_delay_reg[0] 
       (.C(sys_clk),
        .CE(o_out_trigger1),
        .CLR(areset),
        .D(\count_delay[0]_i_1_n_0 ),
        .Q(count_delay[0]));
  FDCE \count_delay_reg[1] 
       (.C(sys_clk),
        .CE(o_out_trigger1),
        .CLR(areset),
        .D(\count_delay[1]_i_1_n_0 ),
        .Q(count_delay[1]));
  FDCE \count_delay_reg[2] 
       (.C(sys_clk),
        .CE(o_out_trigger1),
        .CLR(areset),
        .D(\count_delay[2]_i_1_n_0 ),
        .Q(count_delay[2]));
  FDCE \count_delay_reg[3] 
       (.C(sys_clk),
        .CE(o_out_trigger1),
        .CLR(areset),
        .D(\count_delay[3]_i_2_n_0 ),
        .Q(count_delay[3]));
  FDCE \gen_rise[0].rise_input_reg[0] 
       (.C(i_in_trigger[0]),
        .CE(1'b1),
        .CLR(unset_input),
        .D(1'b1),
        .Q(\gen_rise[0].rise_input_reg_n_0_[0] ));
  FDCE \gen_rise[1].rise_input_reg[1] 
       (.C(i_in_trigger[1]),
        .CE(1'b1),
        .CLR(unset_input),
        .D(1'b1),
        .Q(p_13_in));
  FDCE \gen_rise[2].rise_input_reg[2] 
       (.C(i_in_trigger[2]),
        .CE(1'b1),
        .CLR(unset_input),
        .D(1'b1),
        .Q(p_11_in));
  FDCE \gen_rise[3].rise_input_reg[3] 
       (.C(i_in_trigger[3]),
        .CE(1'b1),
        .CLR(unset_input),
        .D(1'b1),
        .Q(p_9_in));
  FDCE \gen_rise[4].rise_input_reg[4] 
       (.C(i_in_trigger[4]),
        .CE(1'b1),
        .CLR(unset_input),
        .D(1'b1),
        .Q(p_7_in));
  FDCE \gen_rise[5].rise_input_reg[5] 
       (.C(i_in_trigger[5]),
        .CE(1'b1),
        .CLR(unset_input),
        .D(1'b1),
        .Q(p_5_in));
  FDCE \gen_rise[6].rise_input_reg[6] 
       (.C(i_in_trigger[6]),
        .CE(1'b1),
        .CLR(unset_input),
        .D(1'b1),
        .Q(p_3_in));
  FDCE \gen_rise[7].rise_input_reg[7] 
       (.C(i_in_trigger[7]),
        .CE(1'b1),
        .CLR(unset_input),
        .D(1'b1),
        .Q(p_1_in3_in));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFF70000)) 
    o_out_trigger_i_1
       (.I0(count_delay[0]),
        .I1(count_delay[2]),
        .I2(count_delay[1]),
        .I3(count_delay[3]),
        .I4(o_out_trigger1),
        .O(o_out_trigger0_out));
  FDCE o_out_trigger_reg
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(areset),
        .D(o_out_trigger0_out),
        .Q(o_out_trigger));
  LUT6 #(
    .INIT(64'h000000002E2E2E22)) 
    samp_out_i_1
       (.I0(samp_out_i_2_n_0),
        .I1(i_trigg_select_function[0]),
        .I2(i_trigg_select_function[1]),
        .I3(samp_out_i_3_n_0),
        .I4(samp_out_i_4_n_0),
        .I5(i_trigg_select_function[2]),
        .O(samp_out_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    samp_out_i_10
       (.I0(p_11_in),
        .I1(i_trigg_mask[2]),
        .I2(p_13_in),
        .I3(i_trigg_mask[1]),
        .O(samp_out_i_10_n_0));
  LUT5 #(
    .INIT(32'h00000002)) 
    samp_out_i_2
       (.I0(i_trigg_select_function[1]),
        .I1(samp_out_i_5_n_0),
        .I2(samp_out_i_6_n_0),
        .I3(samp_out_i_7_n_0),
        .I4(samp_out_i_8_n_0),
        .O(samp_out_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    samp_out_i_3
       (.I0(i_trigg_mask[7]),
        .I1(p_1_in3_in),
        .I2(i_trigg_mask[0]),
        .I3(\gen_rise[0].rise_input_reg_n_0_[0] ),
        .I4(samp_out_i_9_n_0),
        .O(samp_out_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    samp_out_i_4
       (.I0(i_trigg_mask[3]),
        .I1(p_9_in),
        .I2(i_trigg_mask[4]),
        .I3(p_7_in),
        .I4(samp_out_i_10_n_0),
        .O(samp_out_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h22F2)) 
    samp_out_i_5
       (.I0(i_trigg_mask[4]),
        .I1(p_7_in),
        .I2(i_trigg_mask[3]),
        .I3(p_9_in),
        .O(samp_out_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h22F2)) 
    samp_out_i_6
       (.I0(i_trigg_mask[2]),
        .I1(p_11_in),
        .I2(i_trigg_mask[1]),
        .I3(p_13_in),
        .O(samp_out_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h22F2)) 
    samp_out_i_7
       (.I0(i_trigg_mask[0]),
        .I1(\gen_rise[0].rise_input_reg_n_0_[0] ),
        .I2(i_trigg_mask[7]),
        .I3(p_1_in3_in),
        .O(samp_out_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h22F2)) 
    samp_out_i_8
       (.I0(i_trigg_mask[6]),
        .I1(p_3_in),
        .I2(i_trigg_mask[5]),
        .I3(p_5_in),
        .O(samp_out_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    samp_out_i_9
       (.I0(p_3_in),
        .I1(i_trigg_mask[6]),
        .I2(p_5_in),
        .I3(i_trigg_mask[5]),
        .O(samp_out_i_9_n_0));
  FDCE samp_out_reg
       (.C(samp_out_i_1_n_0),
        .CE(1'b1),
        .CLR(unset_out),
        .D(1'b1),
        .Q(samp_out));
  LUT1 #(
    .INIT(2'h1)) 
    unset_input_i_1
       (.I0(unset_input),
        .O(p_0_in));
  FDPE unset_input_reg
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_0_in),
        .PRE(areset),
        .Q(unset_input));
  LUT6 #(
    .INIT(64'hFFFF000054045404)) 
    unset_out_i_1
       (.I0(unset_out_i_2_n_0),
        .I1(samp_out),
        .I2(i_en_soft_trigger),
        .I3(i_soft_trigger),
        .I4(unset_out),
        .I5(areset),
        .O(unset_out_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    unset_out_i_2
       (.I0(count_delay[3]),
        .I1(count_delay[1]),
        .I2(count_delay[2]),
        .I3(count_delay[0]),
        .O(unset_out_i_2_n_0));
  FDRE unset_out_reg
       (.C(sys_clk),
        .CE(1'b1),
        .D(unset_out_i_1_n_0),
        .Q(unset_out),
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
