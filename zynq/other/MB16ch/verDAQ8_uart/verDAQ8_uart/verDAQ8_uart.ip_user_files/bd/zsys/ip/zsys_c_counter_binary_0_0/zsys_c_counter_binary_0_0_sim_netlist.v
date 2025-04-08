// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Mar  3 13:49:08 2022
// Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/victo/Desktop/Vivados/daq_mb_te0716_v7/daq_mb_te0716_v7.srcs/sources_1/bd/zsys/ip/zsys_c_counter_binary_0_0/zsys_c_counter_binary_0_0_sim_netlist.v
// Design      : zsys_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z015clg485-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "zsys_c_counter_binary_0_0,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module zsys_c_counter_binary_0_0
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 12}, PortType data, PortType.PROP_SRC false" *) output [11:0]Q;

  wire CLK;
  wire [11:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "12" *) 
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
  zsys_c_counter_binary_0_0_c_counter_binary_v12_0_12 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "12" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_12" *) (* downgradeipidentifiedwarnings = "yes" *) 
module zsys_c_counter_binary_0_0_c_counter_binary_v12_0_12
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
  input [11:0]L;
  output THRESH0;
  output [11:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [11:0]Q;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "12" *) 
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
  zsys_c_counter_binary_0_0_c_counter_binary_v12_0_12_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
RWqGIYTq3hMbVfafj3Ly6DDv7PC/biw6gMzzOZ9XdWTvvXxNBM2gPDs8T/WxQEI4Cw8h2WuhCw9o
iwHaG2VU62KClNqo/dOIogWh0Iq3yNjeGOh1L2MfRCPvLOYBAwBxoyoujpvZ814PQaJP4uuxtEGe
vlxM4jjTz4ptQxqvduL3r6ERG7Ms8o4wsIzYANHwbs485gjVUP0b5Zs2k9ZxwBMzrOamlfk1b0FE
x5Hs7UVXZTr/eCQYvk2FgerGy8MV2nD+qe3Txq5nIdXH0BLxy10mkCJJlDlLcrK+24W+gdlnQdlF
1Jvuwi01hifpsWDojuiT+j7WbHcvfceGtmgl6Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
0/3CerwSk2J9l4j6HKM+H5a/7QhlGYoGwiTvvMit7tIIYG54qr85sKeSsH+tzfK6DgfpopvhFTmJ
3kOxDd8dDKdsffN1nU2xj4hECgUqn292icCyiFfyclioJ83AhkG8cC7fh9ww68eB0s+/1L5tKWGM
Y1NO8Uv0gOEovDeSXI/jHL5pt7CT9dGyuqxNiNzZdxG8xSzZfuNdyClq40ijELkIIF0GQvYaQocF
15xSZtEz3vyZPLOnrLK9YDAjvJs6rPKy28nkv3xI10ec12c7YjOnOS/HmcTJJgAySSN1GPK7xHBB
aG+3V+ndbLXTj9ANVSymhaGrf+hhDVo8F4hWdw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8368)
`pragma protect data_block
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
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
