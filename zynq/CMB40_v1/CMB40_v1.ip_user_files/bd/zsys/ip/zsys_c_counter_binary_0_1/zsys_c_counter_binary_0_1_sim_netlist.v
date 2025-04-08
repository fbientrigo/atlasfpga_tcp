// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Aug 14 13:17:58 2023
// Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/victo/Desktop/Vivados/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_c_counter_binary_0_1/zsys_c_counter_binary_0_1_sim_netlist.v
// Design      : zsys_c_counter_binary_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z015clg485-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "zsys_c_counter_binary_0_1,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module zsys_c_counter_binary_0_1
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN zsys_AXI_ADC_0_0_o_data_clk" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 8}, PortType data, PortType.PROP_SRC false" *) output [7:0]Q;

  wire CLK;
  wire [7:0]Q;
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
  (* C_WIDTH = "8" *) 
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
  zsys_c_counter_binary_0_1_c_counter_binary_v12_0_12 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "8" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_12" *) (* downgradeipidentifiedwarnings = "yes" *) 
module zsys_c_counter_binary_0_1_c_counter_binary_v12_0_12
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
  input [7:0]L;
  output THRESH0;
  output [7:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [7:0]Q;
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
  (* C_WIDTH = "8" *) 
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
  zsys_c_counter_binary_0_1_c_counter_binary_v12_0_12_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
kta00jeIV1xFM/zwv0mlWA89u/8WR0R4vPhjb/kh2mAgeBnPnovRjZ5BQTLgH43xlVIZRrfBoSMI
O2cCrcBhWL737+/mnbBzQD3ptSOsHtbdQvj/E8qrdIqFgi59/NqgwhJHqt6LT/3LhL5LffQyJsA6
GQ4gm7WghWG8ItsU6kDlrGEYWWPcifaSiQOuJ62XrdExvHbxW8S0ePzipKLparafjiRNglyHIdoc
zdtk4De0JfUTivJ7e88cOuKEJQyJ9e9Csh/LMIW3SDAXv5uRq1xwCefXajugxwmnsKfkIRHml2VP
JVas7H3AeW5ESO2QWjxm4GC9X4JJz+z5IszZuA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zninvVuCsxKiuNOwCdJMZ2CWOzur026YR2del8x4Oi/FGfNSYtuvZneP2MHA31tl13wzg6mvaVhh
XmvP4FT4phOYTpETDKV1LXPDX8FNyecDNatdBB8C7LwWF3t+SdDqc5XyR+koFYL9lTGLfnGyY+nZ
5b75e1coKMRsyKdEO7XF3HMG9cxd39BXay2EerU51tHUyXQASmeouUfgBUsSDRP1N+jKFyjRCpan
Uhswl06hA7pXWinaLdae2i0rCRxeieHgphIUlIiCU7oGsg0JLtE36yOljsIM5O0QF+fKkmN03/qX
zeZhIrDfr3zzA6zYD8itGRX5CSayddKR14l0jw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6592)
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
