// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Fri Dec 13 09:13:22 2024
// Host        : ifraba-HP-Pavilion-Laptop-15-eg2xxx running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_Lvds_Rx_top_0_0/zsys_Lvds_Rx_top_0_0_sim_netlist.v
// Design      : zsys_Lvds_Rx_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z015clg485-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "zsys_Lvds_Rx_top_0_0,Lvds_Rx_top,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Lvds_Rx_top,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module zsys_Lvds_Rx_top_0_0
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

  zsys_Lvds_Rx_top_0_0_Lvds_Rx_top U0
       (.AdClk(AdClk),
        .ChOut_0(ChOut_0),
        .ChOut_1(ChOut_1),
        .DataInChP(DataInChP[1:0]),
        .Lclk(Lclk),
        .SysRst(SysRst));
endmodule

(* ORIG_REF_NAME = "AdcReceiver" *) 
module zsys_Lvds_Rx_top_0_0_AdcReceiver
   (ChOut_0,
    ChOut_1,
    AdClk,
    RxClk,
    IntReceiverRst,
    IntRxClkNot,
    DataInChP);
  output [11:0]ChOut_0;
  output [11:0]ChOut_1;
  input AdClk;
  input RxClk;
  input IntReceiverRst;
  input IntRxClkNot;
  input [1:0]DataInChP;

  wire AdClk;
  wire [11:0]ChOut_0;
  wire [11:0]ChOut_1;
  wire [1:0]DataInChP;
  wire IntReceiverRst;
  wire IntRxClkNot;
  wire IntRxDatMuxEna;
  wire IntRxEnaMuxN;
  wire IntRxEnaMuxP;
  wire RxClk;

  zsys_Lvds_Rx_top_0_0_Receiver TheRec0
       (.ChOut_0(ChOut_0),
        .DataInChP(DataInChP[0]),
        .IntReceiverRst(IntReceiverRst),
        .IntRxClkNot(IntRxClkNot),
        .IntRxDatMuxEna(IntRxDatMuxEna),
        .IntRxEnaMuxN(IntRxEnaMuxN),
        .IntRxEnaMuxP(IntRxEnaMuxP),
        .RxClk(RxClk));
  zsys_Lvds_Rx_top_0_0_Receiver_0 TheRec1
       (.ChOut_1(ChOut_1),
        .DataInChP(DataInChP[1]),
        .IntReceiverRst(IntReceiverRst),
        .IntRxClkNot(IntRxClkNot),
        .IntRxDatMuxEna(IntRxDatMuxEna),
        .IntRxEnaMuxN(IntRxEnaMuxN),
        .IntRxEnaMuxP(IntRxEnaMuxP),
        .RxClk(RxClk));
  zsys_Lvds_Rx_top_0_0_RxTiming TheTime
       (.AdClk(AdClk),
        .IntReceiverRst(IntReceiverRst),
        .IntRxClkNot(IntRxClkNot),
        .IntRxDatMuxEna(IntRxDatMuxEna),
        .IntRxEnaMuxN(IntRxEnaMuxN),
        .IntRxEnaMuxP(IntRxEnaMuxP),
        .RxClk(RxClk));
endmodule

(* ORIG_REF_NAME = "Lvds_Rx_top" *) 
module zsys_Lvds_Rx_top_0_0_Lvds_Rx_top
   (ChOut_0,
    ChOut_1,
    AdClk,
    DataInChP,
    Lclk,
    SysRst);
  output [11:0]ChOut_0;
  output [11:0]ChOut_1;
  input AdClk;
  input [1:0]DataInChP;
  input Lclk;
  input SysRst;

  wire AdClk;
  wire [11:0]ChOut_0;
  wire [11:0]ChOut_1;
  wire [1:0]DataInChP;
  wire IntLclkDcmBufg;
  wire IntLclkDcmDvBufg;
  wire IntLclkDcmLocked;
  wire IntLclkDcmPhaseDone;
  wire IntLclkDcmPhsClkLocked;
  wire IntReceiverRst;
  wire IntRxClkDv;
  wire IntRxClkNot;
  wire Lclk;
  wire PSEN;
  wire PSINCDEC;
  wire RxClk;
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
  wire [15:0]NLW_LclkDcm_DO_UNCONNECTED;

  zsys_Lvds_Rx_top_0_0_AdcReceiver AdcCh10
       (.AdClk(AdClk),
        .ChOut_0(ChOut_0),
        .ChOut_1(ChOut_1),
        .DataInChP(DataInChP),
        .IntReceiverRst(IntReceiverRst),
        .IntRxClkNot(IntRxClkNot),
        .RxClk(RxClk));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG LclkBufg
       (.I(IntLclkDcmBufg),
        .O(RxClk));
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
       (.CLKFBIN(RxClk),
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
        .LOCKED(IntLclkDcmLocked),
        .PSCLK(IntRxClkDv),
        .PSDONE(IntLclkDcmPhaseDone),
        .PSEN(PSEN),
        .PSINCDEC(PSINCDEC),
        .PWRDWN(1'b0),
        .RST(SysRst));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG LclkDvBufg
       (.I(IntLclkDcmDvBufg),
        .O(IntRxClkDv));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG LclkNotBufg
       (.I(clk180),
        .O(IntRxClkNot));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    RxRstFf
       (.C(RxClk),
        .CE(1'b1),
        .D(IntLclkDcmPhsClkLocked),
        .PRE(SysRst),
        .Q(IntReceiverRst));
  zsys_Lvds_Rx_top_0_0_PhaseControlFullRange ThePhaseCtrl
       (.CLK(IntRxClkDv),
        .IntLclkDcmLocked(IntLclkDcmLocked),
        .IntLclkDcmPhaseDone(IntLclkDcmPhaseDone),
        .IntLclkDcmPhsClkLocked(IntLclkDcmPhsClkLocked),
        .Lclk(Lclk),
        .PSEN(PSEN),
        .PSINCDEC(PSINCDEC),
        .RxClk(RxClk),
        .SysRst(SysRst));
endmodule

(* ORIG_REF_NAME = "PhaseControlFullRange" *) 
module zsys_Lvds_Rx_top_0_0_PhaseControlFullRange
   (IntLclkDcmPhsClkLocked,
    PSINCDEC,
    PSEN,
    Lclk,
    RxClk,
    CLK,
    IntLclkDcmPhaseDone,
    IntLclkDcmLocked,
    SysRst);
  output IntLclkDcmPhsClkLocked;
  output PSINCDEC;
  output PSEN;
  input Lclk;
  input RxClk;
  input CLK;
  input IntLclkDcmPhaseDone;
  input IntLclkDcmLocked;
  input SysRst;

  wire CLK;
  wire \FSM_sequential_IntState[0]_i_1_n_0 ;
  wire \FSM_sequential_IntState[1]_i_1_n_0 ;
  wire \FSM_sequential_IntState[2]_i_1_n_0 ;
  wire \FSM_sequential_IntState[2]_i_3_n_0 ;
  wire \FSM_sequential_IntState[2]_i_4_n_0 ;
  wire \FSM_sequential_IntState[2]_i_5_n_0 ;
  wire \FSM_sequential_IntState[2]_i_6_n_0 ;
  wire \FSM_sequential_IntState[2]_i_7_n_0 ;
  wire \FSM_sequential_IntState[2]_i_8_n_0 ;
  wire IntAction_i_1_n_0;
  wire IntAction_i_2_n_0;
  wire IntAction_reg_n_0;
  wire IntCal0;
  wire IntCal1;
  wire IntCal2;
  wire IntCal2A;
  wire IntCal2_i_1_n_0;
  wire IntCalValid;
  wire IntCalValid_reg_n_0;
  wire \IntCount[0]_i_1_n_0 ;
  wire \IntCount[1]_i_1_n_0 ;
  wire \IntCount[2]_i_1_n_0 ;
  wire \IntCount[3]_i_1_n_0 ;
  wire IntCount_n_0;
  wire [3:0]IntCount_reg__0;
  wire [3:0]IntHyst;
  wire \IntHyst[3]_i_1_n_0 ;
  wire \IntHyst[3]_i_3_n_0 ;
  wire \IntHyst[3]_i_4_n_0 ;
  wire \IntHyst[3]_i_5_n_0 ;
  wire [3:0]IntHyst_1;
  wire IntLclkDcmLocked;
  wire IntLclkDcmPhaseDone;
  wire IntLclkDcmPhsClkLocked;
  wire IntLockedIn;
  wire IntOldIntCal2;
  wire IntOldIntCal2_i_1_n_0;
  wire [8:0]IntPs0;
  wire IntPs0Bcd;
  wire [8:0]IntPs1;
  wire \IntPs1[8]_i_2_n_0 ;
  wire \IntPs1[8]_i_3_n_0 ;
  wire \IntPs1[8]_i_4_n_0 ;
  wire IntPs1_0;
  wire [8:0]IntPs3;
  wire \IntPs3[0]_i_1_n_0 ;
  wire \IntPs3[1]_i_1_n_0 ;
  wire \IntPs3[2]_i_1_n_0 ;
  wire \IntPs3[3]_i_1_n_0 ;
  wire \IntPs3[4]_i_1_n_0 ;
  wire \IntPs3[5]_i_1_n_0 ;
  wire \IntPs3[6]_i_1_n_0 ;
  wire \IntPs3[7]_i_1_n_0 ;
  wire \IntPs3[8]_i_1_n_0 ;
  wire \IntPs3[8]_i_2_n_0 ;
  wire IntPsDone;
  wire IntPsEn;
  wire IntPsEn_i_1_n_0;
  wire IntPsIncDec_i_1_n_0;
  wire IntState;
  (* RTL_KEEP = "yes" *) wire [2:0]IntState__0;
  wire \Int[5]_i_2_n_0 ;
  wire \Int[7]_i_2_n_0 ;
  wire \Int[8]_i_3_n_0 ;
  wire \Int[8]_i_4_n_0 ;
  wire \Int_reg_n_0_[0] ;
  wire \Int_reg_n_0_[1] ;
  wire \Int_reg_n_0_[2] ;
  wire \Int_reg_n_0_[3] ;
  wire \Int_reg_n_0_[4] ;
  wire \Int_reg_n_0_[5] ;
  wire \Int_reg_n_0_[6] ;
  wire \Int_reg_n_0_[7] ;
  wire \Int_reg_n_0_[8] ;
  wire [7:0]L;
  wire Lclk;
  wire LockedOut_i_1_n_0;
  wire PSEN;
  wire PSINCDEC;
  wire RxClk;
  wire SysRst;
  wire \eqOp_inferred__2/i__carry_n_1 ;
  wire \eqOp_inferred__2/i__carry_n_2 ;
  wire \eqOp_inferred__2/i__carry_n_3 ;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire [8:8]in7;
  wire [8:0]p_0_out;
  wire \plusOp_inferred__0/i__carry__0_n_0 ;
  wire \plusOp_inferred__0/i__carry__0_n_1 ;
  wire \plusOp_inferred__0/i__carry__0_n_2 ;
  wire \plusOp_inferred__0/i__carry__0_n_3 ;
  wire \plusOp_inferred__0/i__carry_n_0 ;
  wire \plusOp_inferred__0/i__carry_n_1 ;
  wire \plusOp_inferred__0/i__carry_n_2 ;
  wire \plusOp_inferred__0/i__carry_n_3 ;
  wire [3:3]\NLW_eqOp_inferred__2/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_eqOp_inferred__2/i__carry_O_UNCONNECTED ;
  wire [0:0]\NLW_plusOp_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_plusOp_inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [3:1]\NLW_plusOp_inferred__0/i__carry__1_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'hBFB0)) 
    \FSM_sequential_IntState[0]_i_1 
       (.I0(IntState__0[2]),
        .I1(IntState__0[0]),
        .I2(IntState),
        .I3(IntState__0[0]),
        .O(\FSM_sequential_IntState[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h06FF0600)) 
    \FSM_sequential_IntState[1]_i_1 
       (.I0(IntState__0[1]),
        .I1(IntState__0[0]),
        .I2(IntState__0[2]),
        .I3(IntState),
        .I4(IntState__0[1]),
        .O(\FSM_sequential_IntState[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF8FFF800)) 
    \FSM_sequential_IntState[2]_i_1 
       (.I0(IntState__0[1]),
        .I1(IntState__0[0]),
        .I2(IntState__0[2]),
        .I3(IntState),
        .I4(IntState__0[2]),
        .O(\FSM_sequential_IntState[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEFEEEEEEEFF)) 
    \FSM_sequential_IntState[2]_i_2 
       (.I0(\FSM_sequential_IntState[2]_i_3_n_0 ),
        .I1(\FSM_sequential_IntState[2]_i_4_n_0 ),
        .I2(\eqOp_inferred__2/i__carry_n_1 ),
        .I3(\FSM_sequential_IntState[2]_i_5_n_0 ),
        .I4(IntAction_i_2_n_0),
        .I5(IntState__0[2]),
        .O(IntState));
  LUT6 #(
    .INIT(64'hFFFFF000F800F000)) 
    \FSM_sequential_IntState[2]_i_3 
       (.I0(\IntPs1[8]_i_3_n_0 ),
        .I1(\FSM_sequential_IntState[2]_i_6_n_0 ),
        .I2(\IntPs1[8]_i_4_n_0 ),
        .I3(\FSM_sequential_IntState[2]_i_7_n_0 ),
        .I4(\IntHyst[3]_i_3_n_0 ),
        .I5(\FSM_sequential_IntState[2]_i_8_n_0 ),
        .O(\FSM_sequential_IntState[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4444444444404040)) 
    \FSM_sequential_IntState[2]_i_4 
       (.I0(IntState__0[1]),
        .I1(\IntPs1[8]_i_4_n_0 ),
        .I2(\Int_reg_n_0_[7] ),
        .I3(\Int_reg_n_0_[6] ),
        .I4(\Int[8]_i_3_n_0 ),
        .I5(\Int_reg_n_0_[8] ),
        .O(\FSM_sequential_IntState[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_IntState[2]_i_5 
       (.I0(IntState__0[0]),
        .I1(IntState__0[1]),
        .O(\FSM_sequential_IntState[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_sequential_IntState[2]_i_6 
       (.I0(\Int_reg_n_0_[2] ),
        .I1(\Int_reg_n_0_[1] ),
        .I2(\Int_reg_n_0_[0] ),
        .O(\FSM_sequential_IntState[2]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_IntState[2]_i_7 
       (.I0(IntState__0[1]),
        .I1(IntState__0[0]),
        .O(\FSM_sequential_IntState[2]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \FSM_sequential_IntState[2]_i_8 
       (.I0(IntHyst[0]),
        .I1(IntHyst[1]),
        .I2(IntHyst[2]),
        .I3(IntState__0[0]),
        .I4(IntHyst[3]),
        .O(\FSM_sequential_IntState[2]_i_8_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:101,iSTATE0:100,iSTATE1:000,iSTATE2:001,iSTATE3:010,iSTATE4:011," *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_IntState_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(SysRst),
        .D(\FSM_sequential_IntState[0]_i_1_n_0 ),
        .Q(IntState__0[0]));
  (* FSM_ENCODED_STATES = "iSTATE:101,iSTATE0:100,iSTATE1:000,iSTATE2:001,iSTATE3:010,iSTATE4:011," *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_IntState_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(SysRst),
        .D(\FSM_sequential_IntState[1]_i_1_n_0 ),
        .Q(IntState__0[1]));
  (* FSM_ENCODED_STATES = "iSTATE:101,iSTATE0:100,iSTATE1:000,iSTATE2:001,iSTATE3:010,iSTATE4:011," *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_IntState_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(SysRst),
        .D(\FSM_sequential_IntState[2]_i_1_n_0 ),
        .Q(IntState__0[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IOB = "TRUE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    FdRegIntCal0
       (.C(RxClk),
        .CE(1'b1),
        .D(Lclk),
        .Q(IntCal0),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "x0y0" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    FdRegIntCal1
       (.C(RxClk),
        .CE(1'b1),
        .D(IntCal0),
        .Q(IntCal1),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* RLOC = "x1y0" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    FdRegIntCal2
       (.C(CLK),
        .CE(1'b1),
        .D(IntCal1),
        .Q(IntCal2A),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    FdRetimePsDone
       (.C(CLK),
        .CE(1'b1),
        .D(IntLclkDcmPhaseDone),
        .Q(IntPsDone),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    FdRetimelocKed
       (.C(CLK),
        .CE(1'b1),
        .D(IntLclkDcmLocked),
        .Q(IntLockedIn),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h1112FFFF11121112)) 
    IntAction_i_1
       (.I0(IntState__0[2]),
        .I1(IntAction_i_2_n_0),
        .I2(IntState__0[0]),
        .I3(IntState__0[1]),
        .I4(IntPsDone),
        .I5(IntAction_reg_n_0),
        .O(IntAction_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    IntAction_i_2
       (.I0(IntLockedIn),
        .I1(IntAction_reg_n_0),
        .I2(IntCalValid_reg_n_0),
        .O(IntAction_i_2_n_0));
  FDCE IntAction_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(SysRst),
        .D(IntAction_i_1_n_0),
        .Q(IntAction_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFE8000)) 
    IntCal2_i_1
       (.I0(IntCount_reg__0[0]),
        .I1(IntCount_reg__0[1]),
        .I2(IntCount_reg__0[3]),
        .I3(IntCount_reg__0[2]),
        .I4(IntCal2),
        .O(IntCal2_i_1_n_0));
  FDCE IntCal2_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(SysRst),
        .D(IntCal2_i_1_n_0),
        .Q(IntCal2));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8001)) 
    IntCalValid_i_1
       (.I0(IntCount_reg__0[0]),
        .I1(IntCount_reg__0[1]),
        .I2(IntCount_reg__0[3]),
        .I3(IntCount_reg__0[2]),
        .O(IntCalValid));
  FDCE IntCalValid_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(SysRst),
        .D(IntCalValid),
        .Q(IntCalValid_reg_n_0));
  LUT5 #(
    .INIT(32'h7FFFFFFE)) 
    IntCount
       (.I0(IntCal2A),
        .I1(IntCount_reg__0[0]),
        .I2(IntCount_reg__0[1]),
        .I3(IntCount_reg__0[2]),
        .I4(IntCount_reg__0[3]),
        .O(IntCount_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \IntCount[0]_i_1 
       (.I0(IntCount_reg__0[0]),
        .O(\IntCount[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \IntCount[1]_i_1 
       (.I0(IntCount_reg__0[0]),
        .I1(IntCal2A),
        .I2(IntCount_reg__0[1]),
        .O(\IntCount[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \IntCount[2]_i_1 
       (.I0(IntCount_reg__0[0]),
        .I1(IntCal2A),
        .I2(IntCount_reg__0[2]),
        .I3(IntCount_reg__0[1]),
        .O(\IntCount[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \IntCount[3]_i_1 
       (.I0(IntCal2A),
        .I1(IntCount_reg__0[0]),
        .I2(IntCount_reg__0[1]),
        .I3(IntCount_reg__0[3]),
        .I4(IntCount_reg__0[2]),
        .O(\IntCount[3]_i_1_n_0 ));
  FDCE \IntCount_reg[0] 
       (.C(CLK),
        .CE(IntCount_n_0),
        .CLR(SysRst),
        .D(\IntCount[0]_i_1_n_0 ),
        .Q(IntCount_reg__0[0]));
  FDCE \IntCount_reg[1] 
       (.C(CLK),
        .CE(IntCount_n_0),
        .CLR(SysRst),
        .D(\IntCount[1]_i_1_n_0 ),
        .Q(IntCount_reg__0[1]));
  FDCE \IntCount_reg[2] 
       (.C(CLK),
        .CE(IntCount_n_0),
        .CLR(SysRst),
        .D(\IntCount[2]_i_1_n_0 ),
        .Q(IntCount_reg__0[2]));
  FDPE \IntCount_reg[3] 
       (.C(CLK),
        .CE(IntCount_n_0),
        .D(\IntCount[3]_i_1_n_0 ),
        .PRE(SysRst),
        .Q(IntCount_reg__0[3]));
  LUT4 #(
    .INIT(16'h00EF)) 
    \IntHyst[0]_i_1 
       (.I0(IntState__0[2]),
        .I1(IntState__0[1]),
        .I2(IntState__0[0]),
        .I3(IntHyst[0]),
        .O(IntHyst_1[0]));
  LUT5 #(
    .INIT(32'h00EFEF00)) 
    \IntHyst[1]_i_1 
       (.I0(IntState__0[2]),
        .I1(IntState__0[1]),
        .I2(IntState__0[0]),
        .I3(IntHyst[1]),
        .I4(IntHyst[0]),
        .O(IntHyst_1[1]));
  LUT6 #(
    .INIT(64'h00EFEF00EF00EF00)) 
    \IntHyst[2]_i_1 
       (.I0(IntState__0[2]),
        .I1(IntState__0[1]),
        .I2(IntState__0[0]),
        .I3(IntHyst[2]),
        .I4(IntHyst[0]),
        .I5(IntHyst[1]),
        .O(IntHyst_1[2]));
  LUT6 #(
    .INIT(64'h2060602020202020)) 
    \IntHyst[3]_i_1 
       (.I0(IntState__0[1]),
        .I1(IntState__0[0]),
        .I2(\IntHyst[3]_i_3_n_0 ),
        .I3(IntCal2),
        .I4(IntOldIntCal2),
        .I5(\IntHyst[3]_i_4_n_0 ),
        .O(\IntHyst[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h28888888)) 
    \IntHyst[3]_i_2 
       (.I0(\IntHyst[3]_i_5_n_0 ),
        .I1(IntHyst[3]),
        .I2(IntHyst[2]),
        .I3(IntHyst[1]),
        .I4(IntHyst[0]),
        .O(IntHyst_1[3]));
  LUT4 #(
    .INIT(16'h0020)) 
    \IntHyst[3]_i_3 
       (.I0(IntCalValid_reg_n_0),
        .I1(IntAction_reg_n_0),
        .I2(IntLockedIn),
        .I3(IntState__0[2]),
        .O(\IntHyst[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \IntHyst[3]_i_4 
       (.I0(\Int_reg_n_0_[8] ),
        .I1(\Int[8]_i_3_n_0 ),
        .I2(\Int_reg_n_0_[6] ),
        .I3(\Int_reg_n_0_[7] ),
        .O(\IntHyst[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \IntHyst[3]_i_5 
       (.I0(IntState__0[0]),
        .I1(IntState__0[1]),
        .I2(IntState__0[2]),
        .O(\IntHyst[3]_i_5_n_0 ));
  FDCE \IntHyst_reg[0] 
       (.C(CLK),
        .CE(\IntHyst[3]_i_1_n_0 ),
        .CLR(SysRst),
        .D(IntHyst_1[0]),
        .Q(IntHyst[0]));
  FDCE \IntHyst_reg[1] 
       (.C(CLK),
        .CE(\IntHyst[3]_i_1_n_0 ),
        .CLR(SysRst),
        .D(IntHyst_1[1]),
        .Q(IntHyst[1]));
  FDCE \IntHyst_reg[2] 
       (.C(CLK),
        .CE(\IntHyst[3]_i_1_n_0 ),
        .CLR(SysRst),
        .D(IntHyst_1[2]),
        .Q(IntHyst[2]));
  FDCE \IntHyst_reg[3] 
       (.C(CLK),
        .CE(\IntHyst[3]_i_1_n_0 ),
        .CLR(SysRst),
        .D(IntHyst_1[3]),
        .Q(IntHyst[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    IntOldIntCal2_i_1
       (.I0(IntCal2),
        .I1(IntCalValid_reg_n_0),
        .I2(IntAction_reg_n_0),
        .I3(IntLockedIn),
        .I4(IntOldIntCal2),
        .O(IntOldIntCal2_i_1_n_0));
  FDCE IntOldIntCal2_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(SysRst),
        .D(IntOldIntCal2_i_1_n_0),
        .Q(IntOldIntCal2));
  LUT6 #(
    .INIT(64'h0040400000000000)) 
    \IntPs0[8]_i_1 
       (.I0(IntState__0[1]),
        .I1(IntState__0[0]),
        .I2(\IntHyst[3]_i_3_n_0 ),
        .I3(IntCal2),
        .I4(IntOldIntCal2),
        .I5(\IntHyst[3]_i_4_n_0 ),
        .O(IntPs0Bcd));
  FDCE \IntPs0_reg[0] 
       (.C(CLK),
        .CE(IntPs0Bcd),
        .CLR(SysRst),
        .D(\Int_reg_n_0_[0] ),
        .Q(IntPs0[0]));
  FDCE \IntPs0_reg[1] 
       (.C(CLK),
        .CE(IntPs0Bcd),
        .CLR(SysRst),
        .D(\Int_reg_n_0_[1] ),
        .Q(IntPs0[1]));
  FDCE \IntPs0_reg[2] 
       (.C(CLK),
        .CE(IntPs0Bcd),
        .CLR(SysRst),
        .D(\Int_reg_n_0_[2] ),
        .Q(IntPs0[2]));
  FDCE \IntPs0_reg[3] 
       (.C(CLK),
        .CE(IntPs0Bcd),
        .CLR(SysRst),
        .D(\Int_reg_n_0_[3] ),
        .Q(IntPs0[3]));
  FDCE \IntPs0_reg[4] 
       (.C(CLK),
        .CE(IntPs0Bcd),
        .CLR(SysRst),
        .D(\Int_reg_n_0_[4] ),
        .Q(IntPs0[4]));
  FDCE \IntPs0_reg[5] 
       (.C(CLK),
        .CE(IntPs0Bcd),
        .CLR(SysRst),
        .D(\Int_reg_n_0_[5] ),
        .Q(IntPs0[5]));
  FDCE \IntPs0_reg[6] 
       (.C(CLK),
        .CE(IntPs0Bcd),
        .CLR(SysRst),
        .D(\Int_reg_n_0_[6] ),
        .Q(IntPs0[6]));
  FDCE \IntPs0_reg[7] 
       (.C(CLK),
        .CE(IntPs0Bcd),
        .CLR(SysRst),
        .D(\Int_reg_n_0_[7] ),
        .Q(IntPs0[7]));
  FDCE \IntPs0_reg[8] 
       (.C(CLK),
        .CE(IntPs0Bcd),
        .CLR(SysRst),
        .D(\Int_reg_n_0_[8] ),
        .Q(IntPs0[8]));
  LUT3 #(
    .INIT(8'h80)) 
    \IntPs1[8]_i_1 
       (.I0(IntState__0[1]),
        .I1(IntState__0[0]),
        .I2(\IntPs1[8]_i_2_n_0 ),
        .O(IntPs1_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF08000000)) 
    \IntPs1[8]_i_2 
       (.I0(\IntHyst[3]_i_3_n_0 ),
        .I1(\IntPs1[8]_i_3_n_0 ),
        .I2(\Int_reg_n_0_[0] ),
        .I3(\Int_reg_n_0_[1] ),
        .I4(\Int_reg_n_0_[2] ),
        .I5(\IntPs1[8]_i_4_n_0 ),
        .O(\IntPs1[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \IntPs1[8]_i_3 
       (.I0(\Int_reg_n_0_[3] ),
        .I1(\Int_reg_n_0_[4] ),
        .I2(\Int_reg_n_0_[5] ),
        .I3(\Int_reg_n_0_[6] ),
        .I4(\Int_reg_n_0_[8] ),
        .I5(\Int_reg_n_0_[7] ),
        .O(\IntPs1[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000040004000000)) 
    \IntPs1[8]_i_4 
       (.I0(IntState__0[2]),
        .I1(IntLockedIn),
        .I2(IntAction_reg_n_0),
        .I3(IntCalValid_reg_n_0),
        .I4(IntCal2),
        .I5(IntOldIntCal2),
        .O(\IntPs1[8]_i_4_n_0 ));
  FDCE \IntPs1_reg[0] 
       (.C(CLK),
        .CE(IntPs1_0),
        .CLR(SysRst),
        .D(\Int_reg_n_0_[0] ),
        .Q(IntPs1[0]));
  FDCE \IntPs1_reg[1] 
       (.C(CLK),
        .CE(IntPs1_0),
        .CLR(SysRst),
        .D(\Int_reg_n_0_[1] ),
        .Q(IntPs1[1]));
  FDCE \IntPs1_reg[2] 
       (.C(CLK),
        .CE(IntPs1_0),
        .CLR(SysRst),
        .D(\Int_reg_n_0_[2] ),
        .Q(IntPs1[2]));
  FDCE \IntPs1_reg[3] 
       (.C(CLK),
        .CE(IntPs1_0),
        .CLR(SysRst),
        .D(\Int_reg_n_0_[3] ),
        .Q(IntPs1[3]));
  FDCE \IntPs1_reg[4] 
       (.C(CLK),
        .CE(IntPs1_0),
        .CLR(SysRst),
        .D(\Int_reg_n_0_[4] ),
        .Q(IntPs1[4]));
  FDCE \IntPs1_reg[5] 
       (.C(CLK),
        .CE(IntPs1_0),
        .CLR(SysRst),
        .D(\Int_reg_n_0_[5] ),
        .Q(IntPs1[5]));
  FDCE \IntPs1_reg[6] 
       (.C(CLK),
        .CE(IntPs1_0),
        .CLR(SysRst),
        .D(\Int_reg_n_0_[6] ),
        .Q(IntPs1[6]));
  FDCE \IntPs1_reg[7] 
       (.C(CLK),
        .CE(IntPs1_0),
        .CLR(SysRst),
        .D(\Int_reg_n_0_[7] ),
        .Q(IntPs1[7]));
  FDCE \IntPs1_reg[8] 
       (.C(CLK),
        .CE(IntPs1_0),
        .CLR(SysRst),
        .D(\Int_reg_n_0_[8] ),
        .Q(IntPs1[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \IntPs3[0]_i_1 
       (.I0(L[0]),
        .O(\IntPs3[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \IntPs3[1]_i_1 
       (.I0(L[0]),
        .I1(L[1]),
        .O(\IntPs3[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \IntPs3[2]_i_1 
       (.I0(L[0]),
        .I1(L[1]),
        .I2(L[2]),
        .O(\IntPs3[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \IntPs3[3]_i_1 
       (.I0(L[1]),
        .I1(L[0]),
        .I2(L[2]),
        .I3(L[3]),
        .O(\IntPs3[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \IntPs3[4]_i_1 
       (.I0(L[2]),
        .I1(L[0]),
        .I2(L[1]),
        .I3(L[3]),
        .I4(L[4]),
        .O(\IntPs3[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \IntPs3[5]_i_1 
       (.I0(L[3]),
        .I1(L[1]),
        .I2(L[0]),
        .I3(L[2]),
        .I4(L[4]),
        .I5(L[5]),
        .O(\IntPs3[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \IntPs3[6]_i_1 
       (.I0(\IntPs3[8]_i_2_n_0 ),
        .I1(L[6]),
        .O(\IntPs3[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \IntPs3[7]_i_1 
       (.I0(L[6]),
        .I1(\IntPs3[8]_i_2_n_0 ),
        .I2(L[7]),
        .O(\IntPs3[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \IntPs3[8]_i_1 
       (.I0(L[6]),
        .I1(\IntPs3[8]_i_2_n_0 ),
        .I2(L[7]),
        .O(\IntPs3[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \IntPs3[8]_i_2 
       (.I0(L[5]),
        .I1(L[3]),
        .I2(L[1]),
        .I3(L[0]),
        .I4(L[2]),
        .I5(L[4]),
        .O(\IntPs3[8]_i_2_n_0 ));
  FDCE \IntPs3_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(SysRst),
        .D(\IntPs3[0]_i_1_n_0 ),
        .Q(IntPs3[0]));
  FDCE \IntPs3_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(SysRst),
        .D(\IntPs3[1]_i_1_n_0 ),
        .Q(IntPs3[1]));
  FDCE \IntPs3_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(SysRst),
        .D(\IntPs3[2]_i_1_n_0 ),
        .Q(IntPs3[2]));
  FDCE \IntPs3_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(SysRst),
        .D(\IntPs3[3]_i_1_n_0 ),
        .Q(IntPs3[3]));
  FDCE \IntPs3_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(SysRst),
        .D(\IntPs3[4]_i_1_n_0 ),
        .Q(IntPs3[4]));
  FDCE \IntPs3_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(SysRst),
        .D(\IntPs3[5]_i_1_n_0 ),
        .Q(IntPs3[5]));
  FDCE \IntPs3_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(SysRst),
        .D(\IntPs3[6]_i_1_n_0 ),
        .Q(IntPs3[6]));
  FDCE \IntPs3_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(SysRst),
        .D(\IntPs3[7]_i_1_n_0 ),
        .Q(IntPs3[7]));
  FDCE \IntPs3_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(SysRst),
        .D(\IntPs3[8]_i_1_n_0 ),
        .Q(IntPs3[8]));
  LUT5 #(
    .INIT(32'h00FF0056)) 
    IntPsEn_i_1
       (.I0(IntState__0[2]),
        .I1(IntState__0[1]),
        .I2(IntState__0[0]),
        .I3(IntAction_i_2_n_0),
        .I4(PSEN),
        .O(IntPsEn_i_1_n_0));
  FDCE IntPsEn_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(SysRst),
        .D(IntPsEn_i_1_n_0),
        .Q(PSEN));
  LUT5 #(
    .INIT(32'hAAAAAA8A)) 
    IntPsIncDec_i_1
       (.I0(PSINCDEC),
        .I1(IntAction_i_2_n_0),
        .I2(IntState__0[2]),
        .I3(IntState__0[1]),
        .I4(IntState__0[0]),
        .O(IntPsIncDec_i_1_n_0));
  FDPE IntPsIncDec_reg
       (.C(CLK),
        .CE(1'b1),
        .D(IntPsIncDec_i_1_n_0),
        .PRE(SysRst),
        .Q(PSINCDEC));
  LUT1 #(
    .INIT(2'h1)) 
    \Int[0]_i_1 
       (.I0(\Int_reg_n_0_[0] ),
        .O(p_0_out[0]));
  LUT5 #(
    .INIT(32'hF10E0EF1)) 
    \Int[1]_i_1 
       (.I0(IntState__0[0]),
        .I1(IntState__0[1]),
        .I2(IntState__0[2]),
        .I3(\Int_reg_n_0_[1] ),
        .I4(\Int_reg_n_0_[0] ),
        .O(p_0_out[1]));
  LUT6 #(
    .INIT(64'hABFFFF54540000AB)) 
    \Int[2]_i_1 
       (.I0(IntState__0[2]),
        .I1(IntState__0[1]),
        .I2(IntState__0[0]),
        .I3(\Int_reg_n_0_[1] ),
        .I4(\Int_reg_n_0_[0] ),
        .I5(\Int_reg_n_0_[2] ),
        .O(p_0_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hBFFD4002)) 
    \Int[3]_i_1 
       (.I0(\Int[8]_i_4_n_0 ),
        .I1(\Int_reg_n_0_[2] ),
        .I2(\Int_reg_n_0_[0] ),
        .I3(\Int_reg_n_0_[1] ),
        .I4(\Int_reg_n_0_[3] ),
        .O(p_0_out[3]));
  LUT6 #(
    .INIT(64'hBFFFFFFD40000002)) 
    \Int[4]_i_1 
       (.I0(\Int[8]_i_4_n_0 ),
        .I1(\Int_reg_n_0_[3] ),
        .I2(\Int_reg_n_0_[1] ),
        .I3(\Int_reg_n_0_[0] ),
        .I4(\Int_reg_n_0_[2] ),
        .I5(\Int_reg_n_0_[4] ),
        .O(p_0_out[4]));
  LUT6 #(
    .INIT(64'h888ABBBA77754445)) 
    \Int[5]_i_1 
       (.I0(\Int[5]_i_2_n_0 ),
        .I1(IntState__0[2]),
        .I2(IntState__0[1]),
        .I3(IntState__0[0]),
        .I4(\Int[7]_i_2_n_0 ),
        .I5(\Int_reg_n_0_[5] ),
        .O(p_0_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \Int[5]_i_2 
       (.I0(\Int_reg_n_0_[3] ),
        .I1(\Int_reg_n_0_[1] ),
        .I2(\Int_reg_n_0_[0] ),
        .I3(\Int_reg_n_0_[2] ),
        .I4(\Int_reg_n_0_[4] ),
        .O(\Int[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8BBB7444)) 
    \Int[6]_i_1 
       (.I0(\Int[8]_i_3_n_0 ),
        .I1(\Int[8]_i_4_n_0 ),
        .I2(\Int_reg_n_0_[5] ),
        .I3(\Int[7]_i_2_n_0 ),
        .I4(\Int_reg_n_0_[6] ),
        .O(p_0_out[6]));
  LUT6 #(
    .INIT(64'hCFFFBBBB30004444)) 
    \Int[7]_i_1 
       (.I0(\Int[8]_i_3_n_0 ),
        .I1(\Int[8]_i_4_n_0 ),
        .I2(\Int[7]_i_2_n_0 ),
        .I3(\Int_reg_n_0_[5] ),
        .I4(\Int_reg_n_0_[6] ),
        .I5(\Int_reg_n_0_[7] ),
        .O(p_0_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \Int[7]_i_2 
       (.I0(\Int_reg_n_0_[3] ),
        .I1(\Int_reg_n_0_[1] ),
        .I2(\Int_reg_n_0_[0] ),
        .I3(\Int_reg_n_0_[2] ),
        .I4(\Int_reg_n_0_[4] ),
        .O(\Int[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000E00000)) 
    \Int[8]_i_1 
       (.I0(IntState__0[1]),
        .I1(IntState__0[0]),
        .I2(IntCalValid_reg_n_0),
        .I3(IntAction_reg_n_0),
        .I4(IntLockedIn),
        .I5(IntState__0[2]),
        .O(IntPsEn));
  LUT6 #(
    .INIT(64'hFE01FFFFFE010000)) 
    \Int[8]_i_2 
       (.I0(\Int[8]_i_3_n_0 ),
        .I1(\Int_reg_n_0_[6] ),
        .I2(\Int_reg_n_0_[7] ),
        .I3(\Int_reg_n_0_[8] ),
        .I4(\Int[8]_i_4_n_0 ),
        .I5(in7),
        .O(p_0_out[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \Int[8]_i_3 
       (.I0(\Int_reg_n_0_[4] ),
        .I1(\Int_reg_n_0_[2] ),
        .I2(\Int_reg_n_0_[0] ),
        .I3(\Int_reg_n_0_[1] ),
        .I4(\Int_reg_n_0_[3] ),
        .I5(\Int_reg_n_0_[5] ),
        .O(\Int[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hAB)) 
    \Int[8]_i_4 
       (.I0(IntState__0[2]),
        .I1(IntState__0[1]),
        .I2(IntState__0[0]),
        .O(\Int[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \Int[8]_i_5 
       (.I0(\Int[7]_i_2_n_0 ),
        .I1(\Int_reg_n_0_[7] ),
        .I2(\Int_reg_n_0_[6] ),
        .I3(\Int_reg_n_0_[5] ),
        .I4(\Int_reg_n_0_[8] ),
        .O(in7));
  FDCE \Int_reg[0] 
       (.C(CLK),
        .CE(IntPsEn),
        .CLR(SysRst),
        .D(p_0_out[0]),
        .Q(\Int_reg_n_0_[0] ));
  FDCE \Int_reg[1] 
       (.C(CLK),
        .CE(IntPsEn),
        .CLR(SysRst),
        .D(p_0_out[1]),
        .Q(\Int_reg_n_0_[1] ));
  FDCE \Int_reg[2] 
       (.C(CLK),
        .CE(IntPsEn),
        .CLR(SysRst),
        .D(p_0_out[2]),
        .Q(\Int_reg_n_0_[2] ));
  FDCE \Int_reg[3] 
       (.C(CLK),
        .CE(IntPsEn),
        .CLR(SysRst),
        .D(p_0_out[3]),
        .Q(\Int_reg_n_0_[3] ));
  FDCE \Int_reg[4] 
       (.C(CLK),
        .CE(IntPsEn),
        .CLR(SysRst),
        .D(p_0_out[4]),
        .Q(\Int_reg_n_0_[4] ));
  FDCE \Int_reg[5] 
       (.C(CLK),
        .CE(IntPsEn),
        .CLR(SysRst),
        .D(p_0_out[5]),
        .Q(\Int_reg_n_0_[5] ));
  FDCE \Int_reg[6] 
       (.C(CLK),
        .CE(IntPsEn),
        .CLR(SysRst),
        .D(p_0_out[6]),
        .Q(\Int_reg_n_0_[6] ));
  FDCE \Int_reg[7] 
       (.C(CLK),
        .CE(IntPsEn),
        .CLR(SysRst),
        .D(p_0_out[7]),
        .Q(\Int_reg_n_0_[7] ));
  FDCE \Int_reg[8] 
       (.C(CLK),
        .CE(IntPsEn),
        .CLR(SysRst),
        .D(p_0_out[8]),
        .Q(\Int_reg_n_0_[8] ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00040000)) 
    LockedOut_i_1
       (.I0(IntAction_i_2_n_0),
        .I1(\eqOp_inferred__2/i__carry_n_1 ),
        .I2(IntState__0[0]),
        .I3(IntState__0[1]),
        .I4(IntState__0[2]),
        .I5(IntLclkDcmPhsClkLocked),
        .O(LockedOut_i_1_n_0));
  FDCE LockedOut_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(SysRst),
        .D(LockedOut_i_1_n_0),
        .Q(IntLclkDcmPhsClkLocked));
  CARRY4 \eqOp_inferred__2/i__carry 
       (.CI(1'b0),
        .CO({\NLW_eqOp_inferred__2/i__carry_CO_UNCONNECTED [3],\eqOp_inferred__2/i__carry_n_1 ,\eqOp_inferred__2/i__carry_n_2 ,\eqOp_inferred__2/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_eqOp_inferred__2/i__carry_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_1
       (.I0(IntPs0[7]),
        .I1(IntPs1[7]),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_2
       (.I0(IntPs0[6]),
        .I1(IntPs1[6]),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_3
       (.I0(IntPs0[5]),
        .I1(IntPs1[5]),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_4
       (.I0(IntPs0[4]),
        .I1(IntPs1[4]),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_1
       (.I0(IntPs0[8]),
        .I1(IntPs1[8]),
        .O(i__carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1
       (.I0(IntPs3[8]),
        .I1(\Int_reg_n_0_[8] ),
        .I2(IntPs3[7]),
        .I3(\Int_reg_n_0_[7] ),
        .I4(\Int_reg_n_0_[6] ),
        .I5(IntPs3[6]),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_1__0
       (.I0(IntPs0[3]),
        .I1(IntPs1[3]),
        .O(i__carry_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2
       (.I0(IntPs3[5]),
        .I1(\Int_reg_n_0_[5] ),
        .I2(IntPs3[4]),
        .I3(\Int_reg_n_0_[4] ),
        .I4(\Int_reg_n_0_[3] ),
        .I5(IntPs3[3]),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_2__0
       (.I0(IntPs0[2]),
        .I1(IntPs1[2]),
        .O(i__carry_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3
       (.I0(IntPs3[2]),
        .I1(\Int_reg_n_0_[2] ),
        .I2(IntPs3[1]),
        .I3(\Int_reg_n_0_[1] ),
        .I4(\Int_reg_n_0_[0] ),
        .I5(IntPs3[0]),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_3__0
       (.I0(IntPs0[1]),
        .I1(IntPs1[1]),
        .O(i__carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_4
       (.I0(IntPs0[0]),
        .I1(IntPs1[0]),
        .O(i__carry_i_4_n_0));
  CARRY4 \plusOp_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\plusOp_inferred__0/i__carry_n_0 ,\plusOp_inferred__0/i__carry_n_1 ,\plusOp_inferred__0/i__carry_n_2 ,\plusOp_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI(IntPs0[3:0]),
        .O({L[2:0],\NLW_plusOp_inferred__0/i__carry_O_UNCONNECTED [0]}),
        .S({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4_n_0}));
  CARRY4 \plusOp_inferred__0/i__carry__0 
       (.CI(\plusOp_inferred__0/i__carry_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__0_n_0 ,\plusOp_inferred__0/i__carry__0_n_1 ,\plusOp_inferred__0/i__carry__0_n_2 ,\plusOp_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(IntPs0[7:4]),
        .O(L[6:3]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  CARRY4 \plusOp_inferred__0/i__carry__1 
       (.CI(\plusOp_inferred__0/i__carry__0_n_0 ),
        .CO(\NLW_plusOp_inferred__0/i__carry__1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_plusOp_inferred__0/i__carry__1_O_UNCONNECTED [3:1],L[7]}),
        .S({1'b0,1'b0,1'b0,i__carry__1_i_1_n_0}));
endmodule

(* ORIG_REF_NAME = "Receiver" *) 
module zsys_Lvds_Rx_top_0_0_Receiver
   (ChOut_0,
    DataInChP,
    RxClk,
    IntRxClkNot,
    IntRxEnaMuxN,
    IntReceiverRst,
    IntRxEnaMuxP,
    IntRxDatMuxEna);
  output [11:0]ChOut_0;
  input [0:0]DataInChP;
  input RxClk;
  input IntRxClkNot;
  input IntRxEnaMuxN;
  input IntReceiverRst;
  input IntRxEnaMuxP;
  input IntRxDatMuxEna;

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
  wire RxClk;

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
       (.C(RxClk),
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
       (.C(RxClk),
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
       (.C(RxClk),
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
       (.C(RxClk),
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
       (.C(RxClk),
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
       (.C(RxClk),
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
       (.C(RxClk),
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
       (.C(RxClk),
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
       (.C(RxClk),
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
       (.C(RxClk),
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
       (.C(RxClk),
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
       (.C(RxClk),
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
       (.C(RxClk),
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
module zsys_Lvds_Rx_top_0_0_Receiver_0
   (ChOut_1,
    DataInChP,
    RxClk,
    IntRxClkNot,
    IntRxEnaMuxN,
    IntReceiverRst,
    IntRxEnaMuxP,
    IntRxDatMuxEna);
  output [11:0]ChOut_1;
  input [0:0]DataInChP;
  input RxClk;
  input IntRxClkNot;
  input IntRxEnaMuxN;
  input IntReceiverRst;
  input IntRxEnaMuxP;
  input IntRxDatMuxEna;

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
  wire RxClk;

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
       (.C(RxClk),
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
       (.C(RxClk),
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
       (.C(RxClk),
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
       (.C(RxClk),
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
       (.C(RxClk),
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
       (.C(RxClk),
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
       (.C(RxClk),
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
       (.C(RxClk),
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
       (.C(RxClk),
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
       (.C(RxClk),
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
       (.C(RxClk),
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
       (.C(RxClk),
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
       (.C(RxClk),
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
module zsys_Lvds_Rx_top_0_0_RxTiming
   (IntRxEnaMuxP,
    IntRxEnaMuxN,
    IntRxDatMuxEna,
    AdClk,
    RxClk,
    IntReceiverRst,
    IntRxClkNot);
  output IntRxEnaMuxP;
  output IntRxEnaMuxN;
  output IntRxDatMuxEna;
  input AdClk;
  input RxClk;
  input IntReceiverRst;
  input IntRxClkNot;

  wire AdClk;
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
  wire RxClk;

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
       (.C(RxClk),
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
       (.C(RxClk),
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
       (.C(RxClk),
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
       (.C(RxClk),
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
       (.C(RxClk),
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
