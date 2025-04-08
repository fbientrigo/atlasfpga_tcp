// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Thu Nov 21 17:21:09 2024
// Host        : ifraba-HP-Pavilion-Laptop-15-eg2xxx running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_Lvds_Rx_top_0_1/zsys_Lvds_Rx_top_0_1_sim_netlist.v
// Design      : zsys_Lvds_Rx_top_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z015clg485-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "zsys_Lvds_Rx_top_0_1,Lvds_Rx_top,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Lvds_Rx_top,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module zsys_Lvds_Rx_top_0_1
   (SysRst,
    Lclk,
    AdClk,
    DataInChP,
    DataInChN,
    AnalyseOut,
    ChOut_0,
    ChOut_1);
  input SysRst;
  input Lclk;
  input AdClk;
  input [7:0]DataInChP;
  input [7:0]DataInChN;
  output AnalyseOut;
  output [11:0]ChOut_0;
  output [11:0]ChOut_1;

  wire AdClk;
  wire [11:0]ChOut_0;
  wire [11:0]ChOut_1;
  wire [7:0]DataInChP;
  wire Lclk;
  wire SysRst;

  zsys_Lvds_Rx_top_0_1_Lvds_Rx_top U0
       (.AdClk(AdClk),
        .ChOut_0(ChOut_0),
        .ChOut_1(ChOut_1),
        .DataInChP(DataInChP[1:0]),
        .Lclk(Lclk),
        .SysRst(SysRst));
endmodule

(* ORIG_REF_NAME = "AdcReceiver" *) 
module zsys_Lvds_Rx_top_0_1_AdcReceiver
   (ChOut_0,
    ChOut_1,
    AdClk,
    C,
    IntReceiverRst,
    IntRxClkNot,
    DataInChP);
  output [11:0]ChOut_0;
  output [11:0]ChOut_1;
  input AdClk;
  input C;
  input IntReceiverRst;
  input IntRxClkNot;
  input [1:0]DataInChP;

  wire AdClk;
  wire C;
  wire [11:0]ChOut_0;
  wire [11:0]ChOut_1;
  wire [1:0]DataInChP;
  wire IntReceiverRst;
  wire IntRxClkNot;
  wire IntRxDatMuxEna;
  wire IntRxEnaMuxN;
  wire IntRxEnaMuxP;

  zsys_Lvds_Rx_top_0_1_Receiver TheRec0
       (.C(C),
        .ChOut_0(ChOut_0),
        .DataInChP(DataInChP[0]),
        .IntReceiverRst(IntReceiverRst),
        .IntRxClkNot(IntRxClkNot),
        .IntRxDatMuxEna(IntRxDatMuxEna),
        .IntRxEnaMuxN(IntRxEnaMuxN),
        .IntRxEnaMuxP(IntRxEnaMuxP));
  zsys_Lvds_Rx_top_0_1_Receiver_0 TheRec1
       (.C(C),
        .ChOut_1(ChOut_1),
        .DataInChP(DataInChP[1]),
        .IntReceiverRst(IntReceiverRst),
        .IntRxClkNot(IntRxClkNot),
        .IntRxDatMuxEna(IntRxDatMuxEna),
        .IntRxEnaMuxN(IntRxEnaMuxN),
        .IntRxEnaMuxP(IntRxEnaMuxP));
  zsys_Lvds_Rx_top_0_1_RxTiming TheTime
       (.AdClk(AdClk),
        .C(C),
        .IntReceiverRst(IntReceiverRst),
        .IntRxClkNot(IntRxClkNot),
        .IntRxDatMuxEna(IntRxDatMuxEna),
        .IntRxEnaMuxN(IntRxEnaMuxN),
        .IntRxEnaMuxP(IntRxEnaMuxP));
endmodule

(* ORIG_REF_NAME = "Lvds_Rx_top" *) 
module zsys_Lvds_Rx_top_0_1_Lvds_Rx_top
   (ChOut_0,
    ChOut_1,
    AdClk,
    DataInChP,
    SysRst,
    Lclk);
  output [11:0]ChOut_0;
  output [11:0]ChOut_1;
  input AdClk;
  input [1:0]DataInChP;
  input SysRst;
  input Lclk;

  wire AdClk;
  wire C;
  wire [11:0]ChOut_0;
  wire [11:0]ChOut_1;
  wire D;
  wire [1:0]DataInChP;
  wire IntLclkDcmBufg;
  wire IntLclkDcmDvBufg;
  wire IntReceiverRst;
  wire IntRxClkNot;
  wire LOCKED;
  wire Lclk;
  wire SysRst;
  wire clk180;
  wire NLW_LclkDcm_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_LclkDcm_CLKINSTOPPED_UNCONNECTED;
  wire NLW_LclkDcm_CLKOUT0_UNCONNECTED;
  wire NLW_LclkDcm_CLKOUT0B_UNCONNECTED;
  wire NLW_LclkDcm_CLKOUT1_UNCONNECTED;
  wire NLW_LclkDcm_CLKOUT1B_UNCONNECTED;
  wire NLW_LclkDcm_CLKOUT2_UNCONNECTED;
  wire NLW_LclkDcm_CLKOUT2B_UNCONNECTED;
  wire NLW_LclkDcm_CLKOUT3_UNCONNECTED;
  wire NLW_LclkDcm_CLKOUT3B_UNCONNECTED;
  wire NLW_LclkDcm_CLKOUT5_UNCONNECTED;
  wire NLW_LclkDcm_CLKOUT6_UNCONNECTED;
  wire NLW_LclkDcm_DRDY_UNCONNECTED;
  wire NLW_LclkDcm_PSDONE_UNCONNECTED;
  wire [15:0]NLW_LclkDcm_DO_UNCONNECTED;
  wire NLW_LclkDvBufg_O_UNCONNECTED;

  zsys_Lvds_Rx_top_0_1_AdcReceiver AdcCh10
       (.AdClk(AdClk),
        .C(C),
        .ChOut_0(ChOut_0),
        .ChOut_1(ChOut_1),
        .DataInChP(DataInChP),
        .IntReceiverRst(IntReceiverRst),
        .IntRxClkNot(IntRxClkNot));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG LclkBufg
       (.I(IntLclkDcmBufg),
        .O(C));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DSS_MODE = "NONE" *) 
  (* SIM_MODE = "SAFE" *) 
  (* XILINX_LEGACY_PRIM = "DCM" *) 
  (* XILINX_TRANSFORM_PINMAP = "STATUS[7]:DO[7] STATUS[6]:DO[6] STATUS[5]:DO[5] STATUS[4]:DO[4] STATUS[3]:DO[3] STATUS[2]:DO[2] STATUS[1]:DO[1] STATUS[0]:DO[0] CLKIN:CLKIN1 CLKFX:CLKOUT0 CLKFX180:CLKOUT0B CLK2X:CLKOUT1 CLK2X180:CLKOUT1B CLK90:CLKOUT2 CLK270:CLKOUT2B CLKDV:CLKOUT4 CLK0:CLKFBOUT CLK180:CLKFBOUTB CLKFB:CLKFBIN" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(8.000000),
    .CLKFBOUT_PHASE(-0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(1.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(4),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(8),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(90.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(8),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(16),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(1),
    .IS_PSINCDEC_INVERTED(1'b1),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .STARTUP_WAIT("FALSE")) 
    LclkDcm
       (.CLKFBIN(C),
        .CLKFBOUT(IntLclkDcmBufg),
        .CLKFBOUTB(clk180),
        .CLKFBSTOPPED(NLW_LclkDcm_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(Lclk),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_LclkDcm_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(NLW_LclkDcm_CLKOUT0_UNCONNECTED),
        .CLKOUT0B(NLW_LclkDcm_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(NLW_LclkDcm_CLKOUT1_UNCONNECTED),
        .CLKOUT1B(NLW_LclkDcm_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_LclkDcm_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_LclkDcm_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_LclkDcm_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_LclkDcm_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(IntLclkDcmDvBufg),
        .CLKOUT5(NLW_LclkDcm_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_LclkDcm_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_LclkDcm_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_LclkDcm_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(LOCKED),
        .PSCLK(1'b0),
        .PSDONE(NLW_LclkDcm_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(SysRst));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG LclkDvBufg
       (.I(IntLclkDcmDvBufg),
        .O(NLW_LclkDvBufg_O_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG LclkNotBufg
       (.I(clk180),
        .O(IntRxClkNot));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    RxRstFf
       (.C(C),
        .CE(1'b1),
        .D(D),
        .PRE(SysRst),
        .Q(IntReceiverRst));
  LUT1 #(
    .INIT(2'h1)) 
    RxRstFf_i_1
       (.I0(LOCKED),
        .O(D));
endmodule

(* ORIG_REF_NAME = "Receiver" *) 
module zsys_Lvds_Rx_top_0_1_Receiver
   (ChOut_0,
    DataInChP,
    C,
    IntRxClkNot,
    IntRxEnaMuxN,
    IntReceiverRst,
    IntRxEnaMuxP,
    IntRxDatMuxEna);
  output [11:0]ChOut_0;
  input [0:0]DataInChP;
  input C;
  input IntRxClkNot;
  input IntRxEnaMuxN;
  input IntReceiverRst;
  input IntRxEnaMuxP;
  input IntRxDatMuxEna;

  wire C;
  wire [11:0]ChOut_0;
  wire [0:0]DataInChP;
  wire [5:0]IntParDatOutN;
  wire [5:0]IntParDatOutP;
  wire IntReceiverRst;
  wire IntRxClkNot;
  wire IntRxDatInN;
  wire IntRxDatInP;
  wire IntRxDatMuxEna;
  wire [5:0]IntRxDatShftN;
  wire [5:0]IntRxDatShftP;
  wire IntRxEnaMuxN;
  wire IntRxEnaMuxP;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IOB = "TRUE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    FfIobN
       (.C(IntRxClkNot),
        .CE(1'b1),
        .D(DataInChP),
        .Q(IntRxDatInN),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IOB = "TRUE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    FfIobP
       (.C(C),
        .CE(1'b1),
        .D(DataInChP),
        .Q(IntRxDatInP),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X3Y0" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FfMuxN1
       (.C(IntRxClkNot),
        .CE(IntRxEnaMuxN),
        .CLR(IntReceiverRst),
        .D(IntRxDatShftN[0]),
        .Q(IntParDatOutN[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X3Y2" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FfMuxN11
       (.C(IntRxClkNot),
        .CE(IntRxEnaMuxN),
        .CLR(IntReceiverRst),
        .D(IntRxDatShftN[5]),
        .Q(IntParDatOutN[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X3Y0" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FfMuxN3
       (.C(IntRxClkNot),
        .CE(IntRxEnaMuxN),
        .CLR(IntReceiverRst),
        .D(IntRxDatShftN[1]),
        .Q(IntParDatOutN[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X3Y1" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FfMuxN5
       (.C(IntRxClkNot),
        .CE(IntRxEnaMuxN),
        .CLR(IntReceiverRst),
        .D(IntRxDatShftN[2]),
        .Q(IntParDatOutN[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X3Y1" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FfMuxN7
       (.C(IntRxClkNot),
        .CE(IntRxEnaMuxN),
        .CLR(IntReceiverRst),
        .D(IntRxDatShftN[3]),
        .Q(IntParDatOutN[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X3Y2" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FfMuxN9
       (.C(IntRxClkNot),
        .CE(IntRxEnaMuxN),
        .CLR(IntReceiverRst),
        .D(IntRxDatShftN[4]),
        .Q(IntParDatOutN[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X2Y0" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FfMuxP0
       (.C(C),
        .CE(IntRxEnaMuxP),
        .CLR(IntReceiverRst),
        .D(IntRxDatShftP[0]),
        .Q(IntParDatOutP[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X2Y2" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FfMuxP10
       (.C(C),
        .CE(IntRxEnaMuxP),
        .CLR(IntReceiverRst),
        .D(IntRxDatShftP[5]),
        .Q(IntParDatOutP[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X2Y0" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FfMuxP2
       (.C(C),
        .CE(IntRxEnaMuxP),
        .CLR(IntReceiverRst),
        .D(IntRxDatShftP[1]),
        .Q(IntParDatOutP[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X2Y1" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FfMuxP4
       (.C(C),
        .CE(IntRxEnaMuxP),
        .CLR(IntReceiverRst),
        .D(IntRxDatShftP[2]),
        .Q(IntParDatOutP[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X2Y1" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FfMuxP6
       (.C(C),
        .CE(IntRxEnaMuxP),
        .CLR(IntReceiverRst),
        .D(IntRxDatShftP[3]),
        .Q(IntParDatOutP[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X2Y2" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FfMuxP8
       (.C(C),
        .CE(IntRxEnaMuxP),
        .CLR(IntReceiverRst),
        .D(IntRxDatShftP[4]),
        .Q(IntParDatOutP[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X0Y0" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    FfShft0
       (.C(C),
        .CE(1'b1),
        .D(IntRxDatShftP[1]),
        .Q(IntRxDatShftP[0]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X1Y0" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    FfShft1
       (.C(IntRxClkNot),
        .CE(1'b1),
        .D(IntRxDatShftN[1]),
        .Q(IntRxDatShftN[0]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X0Y2" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    FfShft10
       (.C(C),
        .CE(1'b1),
        .D(IntRxDatInP),
        .Q(IntRxDatShftP[5]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X1Y2" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    FfShft11
       (.C(IntRxClkNot),
        .CE(1'b1),
        .D(IntRxDatInN),
        .Q(IntRxDatShftN[5]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X0Y0" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    FfShft2
       (.C(C),
        .CE(1'b1),
        .D(IntRxDatShftP[2]),
        .Q(IntRxDatShftP[1]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X1Y0" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    FfShft3
       (.C(IntRxClkNot),
        .CE(1'b1),
        .D(IntRxDatShftN[2]),
        .Q(IntRxDatShftN[1]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X0Y1" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    FfShft4
       (.C(C),
        .CE(1'b1),
        .D(IntRxDatShftP[3]),
        .Q(IntRxDatShftP[2]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X1Y1" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    FfShft5
       (.C(IntRxClkNot),
        .CE(1'b1),
        .D(IntRxDatShftN[3]),
        .Q(IntRxDatShftN[2]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X0Y1" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    FfShft6
       (.C(C),
        .CE(1'b1),
        .D(IntRxDatShftP[4]),
        .Q(IntRxDatShftP[3]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X1Y1" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    FfShft7
       (.C(IntRxClkNot),
        .CE(1'b1),
        .D(IntRxDatShftN[4]),
        .Q(IntRxDatShftN[3]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X0Y2" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    FfShft8
       (.C(C),
        .CE(1'b1),
        .D(IntRxDatShftP[5]),
        .Q(IntRxDatShftP[4]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X1Y2" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    FfShft9
       (.C(IntRxClkNot),
        .CE(1'b1),
        .D(IntRxDatShftN[5]),
        .Q(IntRxDatShftN[4]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X2Y0" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    LutMux0
       (.I0(IntParDatOutN[0]),
        .I1(IntParDatOutP[0]),
        .I2(IntRxDatMuxEna),
        .O(ChOut_0[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X3Y0" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    LutMux1
       (.I0(IntParDatOutP[0]),
        .I1(IntParDatOutN[0]),
        .I2(IntRxDatMuxEna),
        .O(ChOut_0[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X2Y2" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    LutMux10
       (.I0(IntParDatOutN[5]),
        .I1(IntParDatOutP[5]),
        .I2(IntRxDatMuxEna),
        .O(ChOut_0[10]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X3Y2" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    LutMux11
       (.I0(IntParDatOutP[5]),
        .I1(IntParDatOutN[5]),
        .I2(IntRxDatMuxEna),
        .O(ChOut_0[11]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X2Y0" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    LutMux2
       (.I0(IntParDatOutN[1]),
        .I1(IntParDatOutP[1]),
        .I2(IntRxDatMuxEna),
        .O(ChOut_0[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X3Y0" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    LutMux3
       (.I0(IntParDatOutP[1]),
        .I1(IntParDatOutN[1]),
        .I2(IntRxDatMuxEna),
        .O(ChOut_0[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X2Y1" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    LutMux4
       (.I0(IntParDatOutN[2]),
        .I1(IntParDatOutP[2]),
        .I2(IntRxDatMuxEna),
        .O(ChOut_0[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X3Y1" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    LutMux5
       (.I0(IntParDatOutP[2]),
        .I1(IntParDatOutN[2]),
        .I2(IntRxDatMuxEna),
        .O(ChOut_0[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X2Y1" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    LutMux6
       (.I0(IntParDatOutN[3]),
        .I1(IntParDatOutP[3]),
        .I2(IntRxDatMuxEna),
        .O(ChOut_0[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X3Y1" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    LutMux7
       (.I0(IntParDatOutP[3]),
        .I1(IntParDatOutN[3]),
        .I2(IntRxDatMuxEna),
        .O(ChOut_0[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X2Y2" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    LutMux8
       (.I0(IntParDatOutN[4]),
        .I1(IntParDatOutP[4]),
        .I2(IntRxDatMuxEna),
        .O(ChOut_0[8]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X3Y2" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    LutMux9
       (.I0(IntParDatOutP[4]),
        .I1(IntParDatOutN[4]),
        .I2(IntRxDatMuxEna),
        .O(ChOut_0[9]));
endmodule

(* ORIG_REF_NAME = "Receiver" *) 
module zsys_Lvds_Rx_top_0_1_Receiver_0
   (ChOut_1,
    DataInChP,
    C,
    IntRxClkNot,
    IntRxEnaMuxN,
    IntReceiverRst,
    IntRxEnaMuxP,
    IntRxDatMuxEna);
  output [11:0]ChOut_1;
  input [0:0]DataInChP;
  input C;
  input IntRxClkNot;
  input IntRxEnaMuxN;
  input IntReceiverRst;
  input IntRxEnaMuxP;
  input IntRxDatMuxEna;

  wire C;
  wire [11:0]ChOut_1;
  wire [0:0]DataInChP;
  wire [5:0]IntParDatOutN;
  wire [5:0]IntParDatOutP;
  wire IntReceiverRst;
  wire IntRxClkNot;
  wire IntRxDatInN;
  wire IntRxDatInP;
  wire IntRxDatMuxEna;
  wire [5:0]IntRxDatShftN;
  wire [5:0]IntRxDatShftP;
  wire IntRxEnaMuxN;
  wire IntRxEnaMuxP;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IOB = "TRUE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    FfIobN
       (.C(IntRxClkNot),
        .CE(1'b1),
        .D(DataInChP),
        .Q(IntRxDatInN),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IOB = "TRUE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    FfIobP
       (.C(C),
        .CE(1'b1),
        .D(DataInChP),
        .Q(IntRxDatInP),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X3Y0" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FfMuxN1
       (.C(IntRxClkNot),
        .CE(IntRxEnaMuxN),
        .CLR(IntReceiverRst),
        .D(IntRxDatShftN[0]),
        .Q(IntParDatOutN[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X3Y2" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FfMuxN11
       (.C(IntRxClkNot),
        .CE(IntRxEnaMuxN),
        .CLR(IntReceiverRst),
        .D(IntRxDatShftN[5]),
        .Q(IntParDatOutN[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X3Y0" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FfMuxN3
       (.C(IntRxClkNot),
        .CE(IntRxEnaMuxN),
        .CLR(IntReceiverRst),
        .D(IntRxDatShftN[1]),
        .Q(IntParDatOutN[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X3Y1" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FfMuxN5
       (.C(IntRxClkNot),
        .CE(IntRxEnaMuxN),
        .CLR(IntReceiverRst),
        .D(IntRxDatShftN[2]),
        .Q(IntParDatOutN[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X3Y1" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FfMuxN7
       (.C(IntRxClkNot),
        .CE(IntRxEnaMuxN),
        .CLR(IntReceiverRst),
        .D(IntRxDatShftN[3]),
        .Q(IntParDatOutN[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X3Y2" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FfMuxN9
       (.C(IntRxClkNot),
        .CE(IntRxEnaMuxN),
        .CLR(IntReceiverRst),
        .D(IntRxDatShftN[4]),
        .Q(IntParDatOutN[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X2Y0" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FfMuxP0
       (.C(C),
        .CE(IntRxEnaMuxP),
        .CLR(IntReceiverRst),
        .D(IntRxDatShftP[0]),
        .Q(IntParDatOutP[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X2Y2" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FfMuxP10
       (.C(C),
        .CE(IntRxEnaMuxP),
        .CLR(IntReceiverRst),
        .D(IntRxDatShftP[5]),
        .Q(IntParDatOutP[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X2Y0" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FfMuxP2
       (.C(C),
        .CE(IntRxEnaMuxP),
        .CLR(IntReceiverRst),
        .D(IntRxDatShftP[1]),
        .Q(IntParDatOutP[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X2Y1" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FfMuxP4
       (.C(C),
        .CE(IntRxEnaMuxP),
        .CLR(IntReceiverRst),
        .D(IntRxDatShftP[2]),
        .Q(IntParDatOutP[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X2Y1" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FfMuxP6
       (.C(C),
        .CE(IntRxEnaMuxP),
        .CLR(IntReceiverRst),
        .D(IntRxDatShftP[3]),
        .Q(IntParDatOutP[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X2Y2" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FfMuxP8
       (.C(C),
        .CE(IntRxEnaMuxP),
        .CLR(IntReceiverRst),
        .D(IntRxDatShftP[4]),
        .Q(IntParDatOutP[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X0Y0" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    FfShft0
       (.C(C),
        .CE(1'b1),
        .D(IntRxDatShftP[1]),
        .Q(IntRxDatShftP[0]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X1Y0" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    FfShft1
       (.C(IntRxClkNot),
        .CE(1'b1),
        .D(IntRxDatShftN[1]),
        .Q(IntRxDatShftN[0]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X0Y2" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    FfShft10
       (.C(C),
        .CE(1'b1),
        .D(IntRxDatInP),
        .Q(IntRxDatShftP[5]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X1Y2" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    FfShft11
       (.C(IntRxClkNot),
        .CE(1'b1),
        .D(IntRxDatInN),
        .Q(IntRxDatShftN[5]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X0Y0" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    FfShft2
       (.C(C),
        .CE(1'b1),
        .D(IntRxDatShftP[2]),
        .Q(IntRxDatShftP[1]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X1Y0" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    FfShft3
       (.C(IntRxClkNot),
        .CE(1'b1),
        .D(IntRxDatShftN[2]),
        .Q(IntRxDatShftN[1]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X0Y1" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    FfShft4
       (.C(C),
        .CE(1'b1),
        .D(IntRxDatShftP[3]),
        .Q(IntRxDatShftP[2]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X1Y1" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    FfShft5
       (.C(IntRxClkNot),
        .CE(1'b1),
        .D(IntRxDatShftN[3]),
        .Q(IntRxDatShftN[2]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X0Y1" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    FfShft6
       (.C(C),
        .CE(1'b1),
        .D(IntRxDatShftP[4]),
        .Q(IntRxDatShftP[3]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X1Y1" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    FfShft7
       (.C(IntRxClkNot),
        .CE(1'b1),
        .D(IntRxDatShftN[4]),
        .Q(IntRxDatShftN[3]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X0Y2" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    FfShft8
       (.C(C),
        .CE(1'b1),
        .D(IntRxDatShftP[5]),
        .Q(IntRxDatShftP[4]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X1Y2" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    FfShft9
       (.C(IntRxClkNot),
        .CE(1'b1),
        .D(IntRxDatShftN[5]),
        .Q(IntRxDatShftN[4]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X2Y0" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    LutMux0
       (.I0(IntParDatOutN[0]),
        .I1(IntParDatOutP[0]),
        .I2(IntRxDatMuxEna),
        .O(ChOut_1[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X3Y0" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    LutMux1
       (.I0(IntParDatOutP[0]),
        .I1(IntParDatOutN[0]),
        .I2(IntRxDatMuxEna),
        .O(ChOut_1[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X2Y2" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    LutMux10
       (.I0(IntParDatOutN[5]),
        .I1(IntParDatOutP[5]),
        .I2(IntRxDatMuxEna),
        .O(ChOut_1[10]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X3Y2" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    LutMux11
       (.I0(IntParDatOutP[5]),
        .I1(IntParDatOutN[5]),
        .I2(IntRxDatMuxEna),
        .O(ChOut_1[11]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X2Y0" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    LutMux2
       (.I0(IntParDatOutN[1]),
        .I1(IntParDatOutP[1]),
        .I2(IntRxDatMuxEna),
        .O(ChOut_1[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X3Y0" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    LutMux3
       (.I0(IntParDatOutP[1]),
        .I1(IntParDatOutN[1]),
        .I2(IntRxDatMuxEna),
        .O(ChOut_1[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X2Y1" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    LutMux4
       (.I0(IntParDatOutN[2]),
        .I1(IntParDatOutP[2]),
        .I2(IntRxDatMuxEna),
        .O(ChOut_1[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X3Y1" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    LutMux5
       (.I0(IntParDatOutP[2]),
        .I1(IntParDatOutN[2]),
        .I2(IntRxDatMuxEna),
        .O(ChOut_1[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X2Y1" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    LutMux6
       (.I0(IntParDatOutN[3]),
        .I1(IntParDatOutP[3]),
        .I2(IntRxDatMuxEna),
        .O(ChOut_1[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X3Y1" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    LutMux7
       (.I0(IntParDatOutP[3]),
        .I1(IntParDatOutN[3]),
        .I2(IntRxDatMuxEna),
        .O(ChOut_1[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X2Y2" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    LutMux8
       (.I0(IntParDatOutN[4]),
        .I1(IntParDatOutP[4]),
        .I2(IntRxDatMuxEna),
        .O(ChOut_1[8]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X3Y2" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    LutMux9
       (.I0(IntParDatOutP[4]),
        .I1(IntParDatOutN[4]),
        .I2(IntRxDatMuxEna),
        .O(ChOut_1[9]));
endmodule

(* ORIG_REF_NAME = "RxTiming" *) 
module zsys_Lvds_Rx_top_0_1_RxTiming
   (IntRxEnaMuxP,
    IntRxEnaMuxN,
    IntRxDatMuxEna,
    AdClk,
    C,
    IntReceiverRst,
    IntRxClkNot);
  output IntRxEnaMuxP;
  output IntRxEnaMuxN;
  output IntRxDatMuxEna;
  input AdClk;
  input C;
  input IntReceiverRst;
  input IntRxClkNot;

  wire AdClk;
  wire C;
  wire CE;
  wire D5_out;
  wire D6_out;
  wire FfOneP_n_0;
  wire FfRiseN_i_1_n_0;
  wire FfRiseP_i_1_n_0;
  wire IntReceiverRst;
  wire IntRiseFfN;
  wire IntRiseFfP;
  wire IntRiseLatchN;
  wire IntRxClkNot;
  wire IntRxDatMuxEna;
  wire IntRxEnaMuxN;
  wire IntRxEnaMuxP;
  wire IntRxSyncN;
  wire IntSyncOneN;
  wire IntSyncTwoN;
  wire IntSyncTwoP;
  wire Q;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X3Y0" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FfDmuxEna
       (.C(IntRxClkNot),
        .CE(CE),
        .CLR(FfRiseN_i_1_n_0),
        .D(1'b1),
        .Q(IntRxDatMuxEna));
  LUT2 #(
    .INIT(4'h8)) 
    FfDmuxEna_i_1
       (.I0(IntRiseLatchN),
        .I1(IntRiseFfN),
        .O(CE));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X1Y0" *) 
  (* XILINX_LEGACY_PRIM = "FDC" *) 
  FDCE #(
    .INIT(1'b0)) 
    FfEmuxN
       (.C(IntRxClkNot),
        .CE(1'b1),
        .CLR(IntReceiverRst),
        .D(D5_out),
        .Q(IntRxEnaMuxN));
  LUT3 #(
    .INIT(8'h01)) 
    FfEmuxN_i_1
       (.I0(IntSyncOneN),
        .I1(IntRxSyncN),
        .I2(IntSyncTwoN),
        .O(D5_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X3Y1" *) 
  (* XILINX_LEGACY_PRIM = "FDC" *) 
  FDCE #(
    .INIT(1'b0)) 
    FfEmuxP
       (.C(C),
        .CE(1'b1),
        .CLR(IntReceiverRst),
        .D(D6_out),
        .Q(IntRxEnaMuxP));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h01)) 
    FfEmuxP_i_1
       (.I0(FfOneP_n_0),
        .I1(IntSyncTwoP),
        .I2(Q),
        .O(D6_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IOB = "TRUE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    FfIobSn
       (.C(IntRxClkNot),
        .CE(1'b1),
        .D(AdClk),
        .Q(IntRxSyncN),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IOB = "TRUE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    FfIobSp
       (.C(C),
        .CE(1'b1),
        .D(AdClk),
        .Q(Q),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X0Y0" *) 
  (* XILINX_LEGACY_PRIM = "FDC" *) 
  FDCE #(
    .INIT(1'b0)) 
    FfOneN
       (.C(IntRxClkNot),
        .CE(1'b1),
        .CLR(IntReceiverRst),
        .D(IntRxSyncN),
        .Q(IntSyncOneN));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X0Y1" *) 
  (* XILINX_LEGACY_PRIM = "FDC" *) 
  FDCE #(
    .INIT(1'b0)) 
    FfOneP
       (.C(C),
        .CE(1'b1),
        .CLR(IntReceiverRst),
        .D(Q),
        .Q(FfOneP_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X2Y0" *) 
  (* XILINX_LEGACY_PRIM = "FDC" *) 
  FDCE #(
    .INIT(1'b0)) 
    FfRiseN
       (.C(IntRxClkNot),
        .CE(1'b1),
        .CLR(IntReceiverRst),
        .D(FfRiseN_i_1_n_0),
        .Q(IntRiseFfN));
  LUT2 #(
    .INIT(4'h2)) 
    FfRiseN_i_1
       (.I0(IntRxSyncN),
        .I1(IntSyncOneN),
        .O(FfRiseN_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X1Y1" *) 
  (* XILINX_LEGACY_PRIM = "FDC" *) 
  FDCE #(
    .INIT(1'b0)) 
    FfRiseP
       (.C(C),
        .CE(1'b1),
        .CLR(IntReceiverRst),
        .D(FfRiseP_i_1_n_0),
        .Q(IntRiseFfP));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    FfRiseP_i_1
       (.I0(Q),
        .I1(FfOneP_n_0),
        .O(FfRiseP_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X1Y0" *) 
  (* XILINX_LEGACY_PRIM = "FDC" *) 
  FDCE #(
    .INIT(1'b0)) 
    FfTwoN
       (.C(IntRxClkNot),
        .CE(1'b1),
        .CLR(IntReceiverRst),
        .D(IntSyncOneN),
        .Q(IntSyncTwoN));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X1Y1" *) 
  (* XILINX_LEGACY_PRIM = "FDC" *) 
  FDCE #(
    .INIT(1'b0)) 
    FfTwoP
       (.C(C),
        .CE(1'b1),
        .CLR(IntReceiverRst),
        .D(FfOneP_n_0),
        .Q(IntSyncTwoP));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "X2Y1" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    LdRiseN
       (.CLR(1'b0),
        .D(IntRiseFfP),
        .G(IntRxClkNot),
        .GE(1'b1),
        .Q(IntRiseLatchN));
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
