// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Jun 26 16:44:31 2023
// Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/victo/Desktop/Vivados/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_c_counter_binary_0_0/zsys_c_counter_binary_0_0_sim_netlist.v
// Design      : zsys_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z015clg485-2
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
Ha+NKG/iAuWWke3VozxHXUK7HktCRB1GNYUx2MSTft2Z1dqFpz5g5SBKoPiJnyqDmicSkM0nvTQr
vp3qlF+u3/5FDG+28Q5U7CRHknd04A+T9InqhRZ7FvNzyf8DB9zSJynWxhcDUx4vE9/AEqBiKVa7
A0n4aIF/i8UrqaUgQUh5cgxgaYdf3jpZTn4u0kx8COTNPC3tGB6cktkkSWtl5+gdr4Nx3HZz8tnN
/VvTnfgVNGXy2g738Fkp99g0ay3COxRG4zs5jJxFyB0enKmbPZD4ocTw3yDt7Xtik+Fi09ZX9FiH
RTrWS6fjBZNMcdUsulA2D80up7sCWPWegBZN1w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GKbUvIjgy+UKBEcVlztzCCNu7L5yWmqZO7/qdaeFLZ7uhseKkihc12KgpLw/S7rpdfVWZ9+jap5N
g7i4p2rIo2o1MZZh5M8oS0i2Vzizco/2Oh8dr9baKEbd3iIL3+55G9TAO9/IxUbLycaHZtke7+LG
7+KDZpDZILAM21F5vWSsnFZvc5pcMeqdZdaBrkPBviA9ol/qeot4/Mm0NMQNj0Ram4RAvR0DdDD6
MgtDUocQaJx8VBoEv+enqacf3I1iGblH9mSVVH8LftLM7tivGIPGjwEK+GuhdvuN7PRNF23Xmqlp
MAw+5lbWv100K/ZY2DfIVn9tXr2cqfYsYKUmhQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8368)
`pragma protect data_block
vOzLjSWBmCVXFTLTexbwQiMpjs9S+pFRJeydd7c6ztV5HzrnF0x2SX1J2UtYAJiI4fLB9WIErnWD
826t+3ELsJPEPG7ufqHTTySjaVA+Gtnj20QeM6qV2VHDzysUlPsp4wn8wlsHggCMtwRSiC++0BKU
HkMglOYiWLP1Gcn06AbFbNknfuhKnjemI5N7k6UfjmvkNaAsEmHK2+wgrNfVxSm1P8OBq4cINMDJ
HCjXWw7k1dJiKzv0iiF5RgdH/g4VkGbxviEaLiK/07pWHqgUQMXW7eKmrmNKkCx/IOFNMb5XUBr0
Bp6r8OkcPCi9CKtoXmlrBlbpmhejqXY/5pUsYYAUMoG5J235dsP4pfiDsltVevLAEzfQJ+qRfcqE
IBfdn4YPDiiPNJIClL10bUOcBEYel1oz/Ng4fDB+ZEc4g8C4NasXhV9lVA7zWBwebQF9HD76JKVR
R3rLbPm8MEVCssSdXEYDouaHlzYg9OH/VEtlzRxv8oA2HxGeHnLSURQbZFtCeavdNPXsZNnk1s+j
gs+jOuiyU34S9oENEjzW+D55qdCBttanhXM5WgAwJ+5LnTDyIWv+unhr8UBmiGGSc9NnzXxctFKf
p8jJDRXpoABjYNTiD+vNNzruT7pgWXoEM4GUlC7FQo0nFGVcYVaR8NpqWUdY6zZOjDLrqKF+45dM
h+ZAwa0a5UVZk6XZec/8MobFzHjoauAIf9RUF7QC/91SIuEeT7jZZIXxlTYcVboqRRCxM9ibSQaJ
/mLkbbhZ+62c3Me7wsomrzQImTWaAe2NZkuPuEep7ME1bB1TLXcRMDTdwml9oLWZ9K2av8Y8OEnB
5Z9opCcSHRalrUjzc98OHqcsdvfptBUe+cFrxDiOzqg3il80QORkUxUYFDYcBppqm6/vndxoYdWT
oKOnl2/C6trqjh1Gn367TfJ7mQ5REhsUzyZHlcHnp6NV2mx9pROLw77uXwsbhQ8lSVvTqLYtluiv
0ZMDntrAxX/rtBqo2qGLDioJzU8dXK4gL9wTeJUDfDKsrBoLVgeNwmYAHpgNfRodpN2rxiSI6GbC
H2YPdZSAtHc3KKNO1BG0ERkkQmnXzfPOPLQMTUB3bfY39S2gUHbOFY1oH20DC9CeWtuF8Wvx+w8q
V6TaUBiyC48N8yp1QhS0UP7JmjbbD472RT0VU+c9kE97aTjRrKyzgmc1EAI8+28YFzmsBbm5s/zU
KvBhtHUNIlZ+OiZyc/3D5M4myuLttFgAnwqU9TW1SW8CI48F+jBtS8ZhDg5gi6V6tBUxWIJilPEv
azN6gFa+M+mCcsXcCc4oVCeEVBj55r4f9dATYaUQTV9DMlSN7F/M2AERqwoMpN4zj+na/evfQp1W
3nGVUjBS14a0Z9jzbxXMA1baf9seLDYwYugX9vKVQYMVNXsHW3WToRccgdW9c/SqLT9Rn9ddZGrg
25/uiJSxxsH145D+r/6msaE2qoi72e+ZYX+OXJaq3LaCnGEHaDCTAlSKQdeth0TlqF8kcjxruj1H
wY0xcXMWCM/asO9hlyHzQFimMI0EIHfDx6xD4Z5G4NawLwxUkccbivVpdCk3xPXfZe9nFRi6AMyZ
Eh83HiJk+l6hDUbCIAnM2MoyAYseVFRXisGBLRfeHsuUmbY/aW7fKQL1svOCQrKKabaqQmJ68mHu
bqIjcex/TN8a16ub1fDAGUSgt1gY9WJVmctoPtc/jEYJIOJ5zU/Y3z1M4OYwYMTCtB4NQ6cBDeTk
I8tzbrqXG3Uy1T+QIMDYMhPnqTbXEcymdw1MnPWVf7eWaGDX7Ibfl/6Dgo50c0U5jb8XCkYGbyzn
T0Jbh8Izze9mb3LuuVwe7ee8Cppq9GjE+Iegutm3BmD2izO6H1rXOqzXJTLNLflbTZyMSe//8fjN
Vs/9Ko1XseOG3SJpxDZDNPrjFACRAPXd/RfXjnBLdsQpUVU2fD/gHxDZdwLJB4Gi7Htq73NuK6x2
RZlWqQMuEe0JhKcq712MSyCfYKRCyT6cRJ3nWa9rekIcr7R7Sq8uG+wK/V2scNSoAl4eIeFO9YAP
QKtrkhvYiZwMajC2hi1JeETdPYHnk6LHr2q0xhEn/NKAD/u94lVYwk/XyjB1EWaVyXbThzgib8CZ
w/IBUiNulgEtukfBdN0O9QZX/6a2PrxfyVc82nd1dWGvZ5r907xiAY/CM90v+pjWsNUG/amKo9Yf
sWM2Q5ExJJwEtGEurKZ+fMyVQmyj2Jp0SE6NsPCvvQ4KQd3DQu7dRzJzQx5CtQNCQFbkXqMsl/sw
IJRlNZRBvPoLQtfMXVc7gC6kLWSAjET6zR0d9f7mB1saCw4DrTAA1r0Stx4wXLt0LAZOs/gHNCZC
l2I6LNZA1I1RS4aRt0uev5YbdnLA6TBesMtD3HMsoDK265TDmEFl+mlhu/uKq7qrLNQzOLh3H+O0
fr7q3YPldbWgquXUooba2V4n8u8JY+xh/R3odiMS8sKnS7KWeLpnNxopoaJTHzrVNTZpXaFmTnyS
X/xJFJ15IKplM8hRCNrDzwhwN0+P8HzZBUOr5oQJFCF31vJt61WH+C+flOQBU7GOJ3J8zsv5mwj5
c54r007eWpr0iFYQp3N7Or+Da/Q+QFQOriMZvptbJXFae1IvtKPc1npbPieIKJgoFensSE6XuLCB
oGLkkfDNd7c8BG1JeofeR774FIOFxYOz97/PI8kmKKmzx3DUYQPWUmSjOVFy+mv9YooA3FthHR14
KEP1iV/oiKlSSD8QxaMe95svkO9NO3XyxPFIvpeWpr7KTht6YJNyb19zGiXIWWeAEjCFroSuZyQZ
cClQSDbXPSWby6SWB9aR5MGQo6yKATyGte4Z1PNItxwl2K6bZdHNPVrKx606h4esAzAA60HMdYs+
qhM0axYG0tB0R3m2XMp5Tiwmd80Y3tjYyJdwTRoQ32i0ewM3HxGvUS8Xo/H1Zzq074s8MMpaufXx
GcUkW6gI5clpTEPwHBZVbCwdnZaOIAEEzNrNDUoTdQKmmRw4B3pUemQssf8G+Z6FFpI4sSoofyXU
lkyfNuUntm4h5UQxp5MjPqAYuFAU01CcYEXr0Bk3LmgGQe+9/X6S8vfy27BotLTJA38NLJgNjZ9f
Y0ccN7NmJdBEN7fj9GLdxxJTPEKzVkC9LVftMojl7EkkCCDJTdrhFogvxzfralGBKVmSAiHfolpJ
g3Ks90AZjqUpMsY1p6OQPrN7Y+QfRP64Xr7TAjh+3QyN+1OE8rN5uQbHT0lfsaB/9LmMeh4Bn2zv
awrs4vnKfNyiQtO7b6bJeHx15Pcckv6Sz3eB/cKc1H0xS3g3wh0fcWiHubhhj071kOiws6Ra6Q4j
RTxF3RteTTsLGEsSXHl3K8Is3CyK6ZCgceAJLPDagDx4AjsFsss5tQNp5Sf66g4iPo7TBMff7HKQ
wN25NX/7FXZwuOUJTE23zJYDbzg3F55kC59bquD92bvV/aI+TAXkUfasvJE1UDee0BJtUjjre6sv
ApM7QpRFQH1CsbfnzBPhNcrEtIpnya966horDOzfckZmOu3YIEzuiFCM1abvNRsp9iCEmEaDa040
/r31jbHL2PgTo14sSQPX3Rp2/RsOuEcBZguIxRO15iZAp6EP6awV4MjiH+yXFJCI/HbSd/jmklks
9KXMlqU02jnsHtUnEIdozp3D9Nf+Rf+6GLjxz9kco5hGRYqoGXtLlRLTdNdbZAzhOQdOZUfDF0Hg
s+4sBtvPSbKbCaMXMwctqYfGvVcVFXt72OUrikz/V5vFunPmlYeIpzSndOMeGGEdKqiz/u4ANuSB
7XdDOYR5mvDwLlI4k2sH2Fi7XNJACkH8cBPqIRhnZkCvJk8z8XctwBODr+8HlLU+Hlt17hIY/XPT
mHVC4MerISe0LID6NjjrqSrFZN5GiNGnhMGHTbx7Cy5Xb5i18mEACWRJcL8qx/bLAzyxrhoHyp1z
8ZdCB1Z36Dgcv3qqE7zqyRAFAKbX11K0orL4n7WfPBI4PvrufKFcAwC7RgEdRzZ1hejkZb8p4ufI
1Vqt2cZRnmU6iAzftNAEUQFt2lAp4/0IgWYdBm69aUI8NARme96GUGNkzxRRog8MpnJKokI6U/nM
cPE4ZqcnGK4M3BvyimujJ/OTQuzhX/3dlLD4+m9J8iz+CsgI2QihX3I4a3VQMGA+2XTYPTc7Fqnn
dhu318SzPWYrg4EMpyQWwUelN+t+C0k+eqKwRMBHfl4CLePOm7YmlkhsDG0gw+NQC7QMpq8g5+wL
egHvGR0ZaZkURlZNsusJqDPvEk3/RzNZpQriiGzBqIjel9pR7wtgVbJwhdWXdZFM+1CoY7Ow27eh
2n4xQs35YRh8Tem4TSo4CC4Y9bhR5OsrWj9A+8kHpJ6iELKpUJrACraXQpr17S5N2/rdb9ejLdgF
sJaB//MrxIejuJdeGl3iiAwBASz7XCGeDX8eGJRbyjU5nfspRKZcrtXKQWZbY8XyU8EOWvW76qVA
h1OBSiGI1aHBeaPKeCLLjPCZUM6NHxB7k20+1DDCKw7zfOc3t3wzQejfMB81dDmoQ1AMsBtVbOQX
4fadfi26T9V1z+2ux7rFRVk8w7SvrFuI9rt8KXvJhO3Ckt8xkukjTiiWJvAY7JSQuSB5RGy2xOao
3q2dRSxa1MEd9hN5YjYaPL0VrFs+OVLanTrkJghssyTKu3WNJgHQBcUW0zgMLG7wmtGN0b3wn+Yj
ELYW/jSanFmm9yIurUNJslbNY8wIJgr4PNlFHiGFI10CyELA7mZuCQijo2U75Yyd5t1mreoeT2UY
D8EXHUBObGUFQkI2Tth6Zb3gQes/d8BTm9A8EPXc9Etd0N/GQbaEqkW6pPd3u2BOJy+1DbZVe5jX
/6Ej5MAnhxVLOcEANVroPYY8qUoJba2GbsGsF8umqJ0A3XnxvKPjV2SAPZ8I4ldT9Yy8zxwMpP3l
GN9FYme/olkHgW3rYBu2pnM1ePkT7/yTMoK8/AczwfXRlNmnQyozvL5w2SQSKs8d2m3zq287gAYE
5WPEjji4r9Iu55e/W2loVjTX/5PWkmp2TkKhRlDW6GoWsCkQtLRFhRJJfhTI/EBCUkwpncPhgYfC
7LYy8u1xGycPr4B8jSmLc+qOLXMIGfKlUhcVMEQyQwC/dmP7MLrC95EMlfAjDkD2MggeI8Lu08hd
2L/saqn4XRtm4cSvTwPmldNzkoYg3GuzQKwXDc2/B8/gvRQ1OJRF2V92I0QwvfgjpCIb/FwekCm8
3MoCr8B19M+Fx+N7AwBulJFMxgQxoHyJzByWhvDBI3QeC1zdS5OtgOFHsMTZMGKmm7zCXMRMSFov
2HfIa7sEHxTFOcXxMrQApQjFKbtCrE9x1tFlyuFtFY8N6ZyudLwLL0ADdnd8SkG2NU95jiVfZu48
AP4Uf51uDKA1m4zHwTaFhNlcwL4ySQrqIOUh3K86NnuCwqYHeM583RUJyKBeF3l+hfdE/gESxNv3
by65ajdSLOJeeJAI64/hoKmx4qHinlNnlsJojmEBf0Ixt5BW4r+6NpfBT6aJc4eRdALYsk4rv6Zy
hi5In/C+7TYfDJ0KTjK94/hi8AkYh+qaqTA230H2zc7qA2Kn2/p75YdCMscy+WeKfYJ8GbpK5B+M
VJWgwdSFBs3rMhMc9xvD3NI5PwUIsqSMcHZsDemi7Wkgzf4BgWPxKaHLJZrW3DLFqD4yI1VV4EiK
kOiiT76xYmmxQ/h9Zx2w/0MVmqFFcsOxnny5/hYtN6eSIrC5PLCyOc+FjUP/9CxWlHfoWWIRB8ha
bOzZ+2BAa+OF1wKUoh23jeNuw4devBvKzG8kCwrwe63NPbgWS5Ij6TVgGGIuEJgO6Q0OKt0/rOYO
YGx81xHHgC1F9UdqkWlowRhgUkHIcRFiLeQ+vOkWlBuWnUhl/utnwLzEbRkvaX43vQtN9oUa+Zhg
lpDnapTNot27iFKZyDG76be4SwelGfltjl+IsW0FoTxHN+rxjbE0YZ0zkracabapIU9swdfBIzNp
CuGefTFYHjeJzLcVC4iRltXtHANFcN04ckqOUBGfv3Vt/yQbyfDI6MAnRcH25SN8FEn7bomZSgcw
VSSb0ijMCTjHojefcvOSVdDqsIvvqFjJnT3xOEeucGOcRqrB7VLiA9idAlqsR+xDebTwCykdV4eT
Sh51gBHVp4uY7cf30i7BP1mSnf2dYNKs9a7b1JjZVFtIFiRzrFC1k9TUEb+Mb0RZr/bsTeURy5HB
BVY6hm872+1O2HFiMhgT8eXokRheWxMTm2R+SA/xVVkZubns9HYSgIr8fi4IP+RQf8tuqKGziYjP
5gIz7Z7VIW+d3QMQhRVME/SHxBv0XM346lljVcbr4/pujOOtUnn3sapw+kQM4hHRdtkHYzBxWf08
BSLxenVq5+66CsgqW8kZTb/2ZIf4qnruY+togMc/nnOoANWb4MdeXk/DgGJq+d79AwvRc/Ub3LOC
udYVABrahmb6hIlO424xCy7KCTCfSqz4qzHYSnHU0zbsiggqKtW2jtduSLSvC/YFgTRUXQIZlBrS
fMuQvuKw+53WB0tTnY5tn7HQanizYuzguaib7YV67sGgYGT9xrzGnJrDDP+KqTafOX5bH+YiNo6V
Eizi96e8+XSQOEK9S935qGkGcZrbXgWSmfYneYZoT8rVfbps6L7fKfrQIiZ2PbezGS34MVwHV0tG
ipAVq9al3HWoWYLlI27FkdoaQKa5zx3DzK2QOQ6tWPvIe0yvX+Vtp9Yx7fXmFZg58VFTCGjJiO5T
e3P2lBF/Cv+sUOuGNAF9InSfmtB7iBSVONyJAxHHTdXEFw0HSC/Ptl4YGe3ClwhaFor9HtGyq4dv
Gj/GPck0SLtrscljZN+l4bSMf3pz487rBS1EYldvZQoXoF/4h/xOf3LQDpQDTtaMkQa2YtkL/XQa
qXOIblQvpE3yfhfy/LqnLy/nCUgXq7VH4WszJLxTp/vX+/jb39nTLxubnzxMtAWNOjRZb1SclMBr
uhcwPnYvJcq7oWt9KNDBRIbHz/x2eay/jnglNUFXTkdpacroglt823aPDu4kUL654nCtcJpOi6jA
YU1HNjT2KOTIIFbhIoWcETvCTPCSv5q5AH5iQFA4rqAYHm1oEASiDIHMZWBkETmXKawM0NXHRGg0
2kwxpniZiIr48hQhRyLqZsr4m9rJ8FtMVpxLnOoecy4ZfUc9Hff36jmw92rOto79StmaBWi0TDuw
G8c5TAS7BUlf7dQ17uuS75s16ovkF9am9ARU2p39byr0pcMoQxYf/H54oYaHDHTCIlmvUxXXB+SY
Qk1erxesDZUGnq4kDv6ekilMGC/HNLtwXMaPKVRgIAI89NMrhS4o5IipABcSDmRXhJ4glSSCjQX0
HxYfaUVUppV59Een52S875zGJBN+QnZcUoNZYXRK3hyl6b64nn+38B9gQ783oxckw/vl3EF7OvmB
531kFeBjZalHimON1x7p7QryRqlDbnIQBfxX3p1GOEsUfAVg2jzwEJM+QiTzPxe5ZVgOKkFU1BOY
b6OQu2Ah4cRvzICTrQMBJqn1Bx6fDRGE61w1sDJFfcy6LbRYwWdvxwzEriedAIXvHrVCzhqxdEH6
+DeyDWGNbFVerzJHK1/nxsFNeGl4tNv643l74DHtSosc0SfHLgz4zsKNUKMqSe0t3pfBOAyAdHNG
hEaV4vpjxkXlWe4v8y6RlCHFdVmqHYd1jGPHWNNoLD4Xk1c2AxTA3g0RJj+A2p0GP8Yv4O/aaeV1
A0m33PzBXDptSBU9Ty1N5lePQBWJHbzUdvLmAwApMp80VXi181iAg+Ju31/hNvym2oBmI30EZ4c9
7bJcl2tQ1fWgrAVH+CTKDiw1Aa25YWoBe8ITQpW0rv0kNZPFi1m6hnXtvGVnsq0/NazeWy+9r4jl
XnVNVLkORjwqX2e+sklMwGy4a1pxLDFhL3GOPOYofKPw2RpMZfAe/HG0lEOvpB3eW0be26qDGj4+
Rt6+pzqLQkcYlZ8Lka69ue8a8apLSyQA5pJoYaxOJZXMl56IVPYs24w7Pu4VHEr6t4U4JLholM65
JutTsG2qDlxqUQ5A0Dd6n1QMKaskJtl8tPTHTd3X+7V2rNTafd4T6OK2Xb2Z76+xZE1HAtUAEn6v
TT8TvF7wcK+SDYYqdLLX/x4i20BpTY10L7w66TficpINpRHQDXt4OLbdBKLPWfqipWD8ATwp2xno
NG8HRvwOr4AGalekEyf4VcgoXEEKXr4vPGGZ7qAXYCKhFeD9GgLlfWm3HZdyOyTIW8z7N+F65w3A
jREpVBcqR7sOqLmzmo/dYXxF07ckH976we9z3wATYaU+NLCjdaR9J/k7wSf7PELUjScYaqr2eA3e
linonqe1uJDxh7gPzEe+/GGI8WQTtClCLo6PxCUOK2dXD3jZuzyJWZYjlU8jQaZQpyu54F1Zu4Cn
Cn8jCy2eQsZHijWL6w859yOpeISNPhcofXuw7Ij20BxUNXSgqDrR4zAQ79DGbCzO5U/8GLdWgfpN
0tu5McPk26NbkI6/pufuaZCfu2nrQXdZ6gtyz1RBlio+L8CTWtT1mbDVFdey54cJZupJZsPFp38F
SEfxoNw58hsQkXp6GUV8BGxkONJIlYpAB70Ki/FE1ayHYKQ9D+23ZDQOrFEX1wTJoxWWaLtC5eH/
3EzIlKkCjAZZDFQ1aFrAeucg82mP5fLQdMc6D5sLNdaxkuv1EajmidbB9KRQIJTt75RkUWnKaltI
ysiBBTQLwdC73G0qBKbbiTAuz0Hff7kKg80HldKmTWah+wNL0q2B/TGjjbtRfu4mLpWanWrnhLm/
JaLEaVFW0hXLBzKm+RluAxgKM+3nXQt9ZeKbBkSCVk35oaIqF3zci5LksUW7sXtYJHITsjEMT5E6
3Qc5/QgyO01pfV4gvuwEvF8UNZv4OlB0/bkv+O/Wl6pZr7KDAQyZWFH+9/uMAn4Q5poi99QrzVUS
UlW3CMlw32aDTy94AibW6ULQm9kqGdShgo9f2OyWa/c8ekEn+G8YucNrHgI7duALAh0l21wkCqiT
tpGYI03qAqzEFFrhtRU1G27135ACWj2T5jy8pdpaRSYYb5tc0S0omTXE1YybFORtxOqMs3nkhh1P
bsgHfdRL4RMuytDhsx9J3uQecC+IWyjOJpnvaHqot+0cGTjrBeLI3r8/fCBqGGSfnlUr4aaRR2K/
JXhHJaFTJ+4cFwXqNG4VtJ6kWWKZhkLohJJBbTfs3Ixqv/+mOElHvV7KSUWuO6DHsgCRy9K3dw3C
hrRjYyd2sG9SjVjj72/kENM/X8unvokQM6WHaw47LUOSXr25r+ZN/bfPswVTcbNphlg/qFZmPsNX
RCeBbhyWCusXfuJZ/xKo2lEMUeU6g2/ggPiHCD2dxxSvh+BI/cZhUGIpLHB7YKbZLqER6XMsTJwM
+u3OpRxIj51+8+Y4qlzSpmJAvOyc5SPUJu3GskI8PzOkRkf8051UZlzLQyQS9i4eNFQ3AV92s5Yj
/WrB/OgHqnKrFVYoi2ltQjtFFKMxeavDbVb4rLI8L6R+wUgoxTapL+0TKodVXFIkcUSZrhBYi/M6
JkV0q959S67vPW9Nu8hV0yCCEXsNVhasj2ldaesD4VuGdJrlG9XN2rs8uz0Ru6e7RGCoyhpz1rCF
18FFgx8v0phHF6piNEofKCnGzixlLLqqiBiLArFl2tVeW0MgnECm7uXMgvo5b8L0Jm89kcqM9+sO
srT8igJiVKbSrkxZuEa5heQW/uFFo0c5zl6Xr9N7a55uoH0ii0L3d49KPbe0dhGV0kmzD3Are9bd
Pj/+bN7Kmi5TAw12QvAOpQ21k2m6kAQtbL+/TrBPxvPgfWjXq8ViIrhN/kl9qzWUzWNTcd7PGB7t
57ADhTKSjK6AZeZKs2+pZLFN/1oO9E3CXOEwcRGtorl6GFcWbT+b/M4ZbJiWabV0KxlME0D7ON7F
7TodhzaXLdxKXnaqqW1L9tZ4M4vamcrkhOd/BlWL3MxMB1uKFdrtISNaglysMXsM9+p0uzqBxw6l
lkuTZFx/jStKcesb66xkQH5N66CmseJd7qiR6IddzVcjMj+wxlK+H44Ehaof5G3ioureWzK2IdEE
CtE710zQ4kI5NA51ZM3kOhRDuQgx2vNsXmYMLSWyS2ubG20wXBsprJeNPKSmVtxLYaA6lPY9Z/6r
u0/mSo8NgcpVb3fb438gepHbOwBlPvb1wrPEupvsFJ/5p0AXmG0OJKJtsNVIlUKQhyXzuZVw8p6Q
D6k4cTTxWceACMyxPq3KbcSYcRpqOUKXCas9NekJUjz7LLStLm1AuiNErzDEKzZntcop3oqx229m
km0BMnXg/zPxzgp5KstoNhNfwrr10NlNGXcaWifwF//ANe6IcOHoXMsMwVlOmOD2JGadCVr+fLbx
oiNpDs5Bzk/NloMNalQbhFDev3S1N02i62u96V0+NpujqcotCoYK1UaOy4FRPzrjaHIfTf6TRXbv
O1CIwwmkCYa3M3bBDKbobosea/4uNPNKkPPrbvcQGBa1tKfqGpGw6b+fhGLbxghkBgmCDnmh8HPo
z2gOsWwGCJRoMDaYwotpaEumL4yRJMlbPmE4gJsVJtRY//7Lggx04pf5EtL8xrw0DoflJw5kUMP6
B1pqVjLNLiqw3RHxddlKdTf2C6gW2h/moD9xLYI8pkUjgkmdzvYr8N5Uo+RrmW7/nbVWJXDhAQkq
gf1NC/gzL1A+c7CEepeWJ/HUzIkfZgNWuaM/Uve15NGLo97ei723Ec0CnrWtGhCseUSX9RUPsVsw
Ib8nEUy3zcGg2Rpx2DDWZXlLGhKdQLrD4dBkaYz/yKD3a9Moz7tXtdJnDfEDCahKl5qBg9NUiKmj
TyBHr9QtuMOJB9EZiWNeMJGn4m5ShUVJJqikpGAEK6lDCYCgqUkPBFqavCf93A2GaM38iQv1H/P0
Bo3C9UIyUFOJD4jMLBYUnSs6N+VHcWQO2dbCMRQcCPJGMMEWJpCiUs96cwdQIURa34wIYk1gB1kX
Bk5YlN0ENOa+4YubSXctU0vMm4ZFHQI6/4/mtRR/FPxAu3dUZPlaWHQcwqB2XJgO8gwMWLhULaRR
4z/Th7bt63iG4iPkRgDJF0aY9R3V3aoQNAsLHctscdsysQhcH06lfwhrqNonGQ==
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
