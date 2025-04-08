// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Mar  6 23:28:38 2022
// Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/victo/Desktop/Vivados/daq_mb_te0716_v7/daq_mb_te0716_v7.srcs/sources_1/bd/zsys/ip/zsys_c_counter_binary_1_1/zsys_c_counter_binary_1_1_sim_netlist.v
// Design      : zsys_c_counter_binary_1_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z015clg485-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "zsys_c_counter_binary_1_1,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module zsys_c_counter_binary_1_1
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_AXI_ADC_v1_0_0_0_o_data_clk" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 10} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 10}" *) output [9:0]Q;

  wire CLK;
  wire [9:0]Q;
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
  (* C_WIDTH = "10" *) 
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
  zsys_c_counter_binary_1_1_c_counter_binary_v12_0_12 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "10" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_12" *) (* downgradeipidentifiedwarnings = "yes" *) 
module zsys_c_counter_binary_1_1_c_counter_binary_v12_0_12
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
  input [9:0]L;
  output THRESH0;
  output [9:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [9:0]Q;
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
  (* C_WIDTH = "10" *) 
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
  zsys_c_counter_binary_1_1_c_counter_binary_v12_0_12_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
IAvjEsTmbS48BdubNPBpOM2ylLXE4rH9EzVIS1UgYSGmqYXZuBeVUUVXaX7mxgXmxgG2DhzHB8/4
DnU1zLg6ukWLVu6zgt5omqRCgOcfs+MQ074BaMoSXTR8a38YmObUaH0rq4zuJmfxwAiye0mkZe2p
2tFwNvlwX0YVxJ6YsV7rTH117nqFXs7FtJtqTKNy2XS7aaCsg3k56hfYSYpYhx6AZ0+idkpd5CvB
l1+MSlWSxmoHONGz1PHl2I+b4P0HPFX0z5/EX4p9STl918B01b+KWT7PA7UK0Ox04/z1IIquw/eu
rUUUyDrV5iTHLczE27oIAD3O+oBYk+oYsaDjow==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RF9wek9KoWVsk6hezcBLPeQES5p09W7aSzlO6C2Ki/bRnRLj9ey8QyVNzy9nodwvQLb3cu73XeQm
SHBkU7NveL4zSCbFCb44QYu7glc7kzM73KA27H2znO3rx63DO/E4bOdJYx++xnWaBqe6CxOsecuK
enSSsFwSLQaPGCeqeS8z97GHmqMBC0nytfI94I9GWbViNmCeYN0RwNETdvbmXhfukipHpzslwYAn
Bt9Gp7H8eQGdSbuxfYscNgE7Ox7cfG9v9kITkDjG5ABHj0EnrJc4FM5vt/8/lF3GEZx0fs+Z8Q8e
qGt0nYx+LR0QWOONUMIg7iy3QfDpMCC/C+TWXg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7952)
`pragma protect data_block
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
Gp3m4XzhEApl7OV4AWYnM27RX70923yMjCk1d4g=
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
