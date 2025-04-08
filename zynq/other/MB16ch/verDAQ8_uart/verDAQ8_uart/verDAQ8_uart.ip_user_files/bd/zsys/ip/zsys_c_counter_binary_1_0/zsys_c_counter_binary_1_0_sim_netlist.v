// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Mar  3 13:50:01 2022
// Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/victo/Desktop/Vivados/daq_mb_te0716_v7/daq_mb_te0716_v7.srcs/sources_1/bd/zsys/ip/zsys_c_counter_binary_1_0/zsys_c_counter_binary_1_0_sim_netlist.v
// Design      : zsys_c_counter_binary_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z015clg485-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "zsys_c_counter_binary_1_0,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module zsys_c_counter_binary_1_0
   (CLK,
    CE,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_AXI_ADC_v1_0_0_0_o_data_clk" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 20} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 20}" *) output [19:0]Q;

  wire CE;
  wire CLK;
  wire [19:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "20" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  zsys_c_counter_binary_1_0_c_counter_binary_v12_0_12 U0
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "20" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_12" *) (* downgradeipidentifiedwarnings = "yes" *) 
module zsys_c_counter_binary_1_0_c_counter_binary_v12_0_12
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [19:0]L;
  output THRESH0;
  output [19:0]Q;

  wire \<const1> ;
  wire CE;
  wire CLK;
  wire [19:0]Q;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "20" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  zsys_c_counter_binary_1_0_c_counter_binary_v12_0_12_viv i_synth
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
RhedCTftnR/lFLJouqVu00X8CC4TkDlMiW/WeWJSYDyQHVO1xW1z9+hmgAziXI4s3uGElBs9cXRS
4yVMV7QH0w==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
qX90FYlZfOA3sZpcv0rrvWRKCSlr3skWpeAe5OSxHcZPsVQFyY0hhWVDtP/vB+dV9hIUwAN29Fn9
+L9OEXYMlIw5gH6s9NmquAs3lmPRLTrrpKJWdvf6+b+LeG9CPwLz87bXAk4qQW80zUHBaDKDLV3q
pd/gEf8Y3st+mLOGjNU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
chpH3Rj5RAirYZHkpJvTu4EJpydPPSy15v646y2lN/1w3bwHI+M8EpLMBjimx8uIWRJZ6dDWPR8E
zkwK1TMroEKFaL8IkFMSHPyzqbrH9l1jxYFs0ee8Itp8Rg8qenv5RXM+h4JRTtRmzHk1A8s8zeKY
MgXzIBCAzBa/vSgzDuDaUnO8r8f/5KtRjmE28JLNXXAxyijBrMTCiIHMRJZL5/+LgUyVq7/Zr5yx
7kuNGWv7Q0wESEqhsQbK6UNel5ak1cor7647dYJgIxnNZ6jGVJPkqi8ydAIZ0z0Dy4txBvVaMyP6
2kYYnbVN6S6q6yr/QcJHEOgefF59B/8JuWzdoQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Z2XauOF3/9FUIv1kEFfEtdy93+zHY5q9dH1pJCNLytoWWhhJBfCI5Uc2w/fQLrvVw2Ivy0/rs9qH
9fomTNECWeCphNDVpWGNcFDGE51jt6SDWt7FmgfZq4iXN7XWrfmkQa4DB7QbtSBHCMcBT53TKbDH
suKNhAWMV0htWeNEgN4Y0biiz8U4RLT1stdsMMtEzfYVhtrTmFWLihJ/9gJ01pm/kv4OB2cJEslg
sjbxCE2B4Y1uSj93tnBAw4/f2RYGfPcSrkaXkNgOYK2dc5NQgd82XvP8siAK/ETcZQ1lBK367Rxv
nlr6QUMwKALmjLVe/IThpCRGbOSy3QykkwnpHw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
F/mF2RV90mf5PFUZZUjMej6jQS+Qx16uCeiDQxUX+H+O2yjP6UECegDbtLmGk9algbDuGBCE0KgZ
HzSxX5pMwDq1J7nFyBsu1dGyu8NeJxfu0fFA/qS/SYJSTtwnZ/eIj09mNLJ3w8wGR87ke1ETTRpx
4Ni9DzGJ/aaWFaUenL/x4UWS9yqlaNi5Utcpa4kcUHC6fW0asZsThZJBqpArO54TF40nxZAD+V82
6mBGFOKUzgmHqXNsbVif4JqUd63LG8YWxjrOeesq61xzyjw9caQMuA9v/5sQslCFaeSt2atgqyaA
y4mcm0kU60s6mYqJr4KZt8DWG7LPGoIjhjpnMg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YNrNxIZl8p2OCPz+4Y4awQ09ZZ41X8EdKu2SX1gXfB3qoV3EOXf4eFHtYJ+bFIccfEIqPfZ+dnr7
udcSDAJMcxqZe+YNk5hTq+uX4PlnQH/IVlkgyYiDhQ7aRIS5pwtIRC3biXn80933ov4zlWLI+ZBq
bG8lodZjxKh6HZPWi7s=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eWToRZf4bzAQhHTj44yEkOqolJ3BOvlBPKnKoDCpSvCHSrnRcJKgOd47PnboABTqLVstQenz8AFe
rWHBbaad7KOIh3LsEXBwDHKDdby7iDAB5nd3j2Wp7qiHOv7WpIJ5RG1GMQa8+QXHMVaV4jSvsdmt
d0D9H0WEVaqrSFW2ucpsMYNE0LnKcSJ1SejKOcgISzaGJgXcmEAOVAOnCDPc4slwc3dt7Jne1KvY
i66An36Mfhhd1b0RikMf4yqpM+uVrL5XWIP+TBtw3iQRE0ZkUSn3K0My73/2vKKBfwyV0c+M/Il+
aMxNaD44Gq+/f6zGjkelgMEI4BjB5rs1KRvSCg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VwHeGPkOwvPfEPinFmhKge9yR/871N2h8AsAqlug4T/qm8DISNgt6Oo05gvxQKN9Mn9m6dT/tOCX
STE9xwY5YEu6atMHebuW2jUy+0oOETpMZgz4LmnFNpRBmtHucJGCXJl//keK23OzW2Wwt/Tj3Str
c/O0aizhJN0mWtyIeXTujTkJEcjSu3na/Vxny7Jmm1n5IISoJcT1/MH3efFxw+Ibe4fTEt054hRO
l69phZyu3Z9XAy3/UNLYqvPygmzN4LF17xtL+FFHL0wMVg+Q5w860hyh50iPZNOchDfMSvnidiDp
o6X06b9a60GStDHTUHyT9Z0VyPomjcV8quhcGQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bA7oOW5xlT3uKdyfoFXYTk1vKTEUhuR4Unqee1wl1xUcfQ6Ji6iDJa9RerkMaPCiGioHJz+yTs/y
Wjq6EmWTu82F2QF1fI8GOD6injNTp2R4afPWPSpQsOX3kTXNHfDvoMWRe//tYg6ZHaLAS7NtOHtV
CUigcqcTIhFYUd0T3wEjmPTbeuOeW+PekllNwUscpdOO/krW31Pm2f9D1i98jr779AO9y0sIygsX
TP3JSisrOAJivtgNv755+u5xapkVGnfLaYMzOXL75DzGMqr+RwE4B1Qcsh1wBCD1zCBd/LrnGWRF
Lqki8fjEZcmLmtWlHHYArToz38SAo0O7zf5RpQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12160)
`pragma protect data_block
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
AFcqPciwXzeBgKCTqg2OamwwEw==
`pragma protect end_protected
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
