/*
 * xaxidma_controller.h
 *
 *  Created on: Feb 1, 2021
 *      Author: Rimsky
 */

#ifndef SRC_XAXIDMA_CONTROLLER_H_
#define SRC_XAXIDMA_CONTROLLER_H_

#include "xaxidma.h"
#include "xparameters.h"
#include "xil_exception.h"
#include "xdebug.h"
#include "tcp_com.h"
#include "gpio_handler.h"

#ifdef __aarch64__
#include "xil_mmu.h"
#endif

#ifdef XPAR_UARTNS550_0_BASEADDR
#include "xuartns550_l.h"       /* to use uartns550 */
#endif

#ifndef DEBUG
extern void xil_printf(const char *format, ...);
#endif

#ifdef XPAR_INTC_0_DEVICE_ID
 #include "xintc.h"
#else
 #include "xscugic.h"
#endif

/******************** Constant Definitions **********************************/
/*
 * Device hardware build related constants.
 */

#define DMA_DEV_ID		XPAR_AXIDMA_0_DEVICE_ID

#ifdef XPAR_AXI_7SDDR_0_S_AXI_BASEADDR
#define DDR_BASE_ADDR		XPAR_AXI_7SDDR_0_S_AXI_BASEADDR
#elif XPAR_MIG7SERIES_0_BASEADDR
#define DDR_BASE_ADDR	XPAR_MIG7SERIES_0_BASEADDR
#elif XPAR_MIG_0_BASEADDR
#define DDR_BASE_ADDR	XPAR_MIG_0_BASEADDR
#elif XPAR_PSU_DDR_0_S_AXI_BASEADDR
#define DDR_BASE_ADDR	XPAR_PSU_DDR_0_S_AXI_BASEADDR
#endif

#ifndef DDR_BASE_ADDR
#warning CHECK FOR THE VALID DDR ADDRESS IN XPARAMETERS.H, \
			DEFAULT SET TO 0x01000000
#define MEM_BASE_ADDR		0x01000000
#else
#define MEM_BASE_ADDR		(DDR_BASE_ADDR + 0x1000000)
#endif

#ifdef XPAR_INTC_0_DEVICE_ID
#define RX_INTR_ID		XPAR_INTC_0_AXIDMA_0_S2MM_INTROUT_VEC_ID
#define TX_INTR_ID		XPAR_INTC_0_AXIDMA_0_MM2S_INTROUT_VEC_ID
#else
#define RX_INTR_ID		XPAR_FABRIC_AXIDMA_0_S2MM_INTROUT_VEC_ID
#define TX_INTR_ID		XPAR_FABRIC_AXIDMA_0_MM2S_INTROUT_VEC_ID
#endif

#define RX_BD_SPACE_BASE	(MEM_BASE_ADDR)
#define RX_BD_SPACE_HIGH	(MEM_BASE_ADDR + 0x0000FFFF)
#define TX_BD_SPACE_BASE	(MEM_BASE_ADDR + 0x00010000)
#define TX_BD_SPACE_HIGH	(MEM_BASE_ADDR + 0x0001FFFF)
#define TX_BUFFER_BASE		(MEM_BASE_ADDR + 0x00100000)
#define RX_BUFFER_BASE 		(MEM_BASE_ADDR + 0x00300000)
#define RX_BUFFER_HIGH		(MEM_BASE_ADDR + 0x104FFFFF)

#ifdef XPAR_INTC_0_DEVICE_ID
#define INTC_DEVICE_ID          XPAR_INTC_0_DEVICE_ID
#else
#define INTC_DEVICE_ID          XPAR_SCUGIC_SINGLE_DEVICE_ID
#endif

/* Timeout loop counter for reset
 */
#define RESET_TIMEOUT_COUNTER	10000

/*
 * Buffer and Buffer Descriptor related constant definition
 */
#define MAX_PKT_LEN		0x0F230
#define MARK_UNCACHEABLE        0x701
#define MAX_STORED_EVENTS	0x1F // (RX_BUFFER_HIGH - RX_BUFFER_BASE) / MAX_PKT_LEN
/*
 * Number of BDs in the transfer example
 * We show how to submit multiple BDs for one transmit.
 * The receive side gets one completion per transfer.
 */
#define NUMBER_OF_BDS_PER_PKT		1
#define NUMBER_OF_PKTS_TO_TRANSFER 	10
#define NUMBER_OF_BDS_TO_TRANSFER	(NUMBER_OF_PKTS_TO_TRANSFER * \
						NUMBER_OF_BDS_PER_PKT)

/* The interrupt coalescing threshold and delay timer threshold
 * Valid range is 1 to 255
 *
 * We set the coalescing threshold to be the total number of packets.
 * The receive side will only get one completion interrupt for this example.
 */
#define COALESCING_COUNT		NUMBER_OF_PKTS_TO_TRANSFER
#define DELAY_TIMER_COUNT		100

#ifdef XPAR_INTC_0_DEVICE_ID
 #define INTC		XIntc
 #define INTC_HANDLER	XIntc_InterruptHandler
#else
 #define INTC		XScuGic
 #define INTC_HANDLER	XScuGic_InterruptHandler
#endif

/**************************** Type Definitions *******************************/


/***************** Macros (Inline Functions) Definitions *********************/


/************************** Function Prototypes ******************************/
#ifdef XPAR_UARTNS550_0_BASEADDR
static void Uart550_Setup(void);
#endif

int CheckData(int Length, u8 StartValue);
void TxCallBack(XAxiDma_BdRing * TxRingPtr);
void TxIntrHandler(void *Callback);
void RxCallBack(XAxiDma_BdRing * RxRingPtr);
void RxIntrHandler(void *Callback);
void process_n_send_data(int cont,int max_counts);
void cleanup_buffer();

int setup_DMA(void);

int SetupIntrSystem(INTC * IntcInstancePtr,
			   XAxiDma * AxiDmasPtr, u16 TxIntrId, u16 RxIntrId);
void DisableIntrSystem(INTC * IntcInstancePtr,
					u16 TxIntrId, u16 RxIntrId);

int RxSetup(XAxiDma * AxiDmaInstPtr);
int TxSetup(XAxiDma * AxiDmaInstPtr);
int SendPacket(XAxiDma * AxiDmaInstPtr);

/************************** Variable Definitions *****************************/
/*
 * Device instance definitions
 */
XAxiDma AxiDma;


static INTC Intc;	/* Instance of the Interrupt Controller */

/*
 * Flags interrupt handlers use to notify the application context the events.
 */
volatile int TxDone;
volatile int RxDone;
volatile int Error;
int c_glob_ev;
int start_send_event;
/*
 * Buffer for transmit packet. Must be 32-bit aligned to be used by DMA.
 */
static u32 *Packet = (u32 *) TX_BUFFER_BASE;

// pointer to the address being read.
static u8 *read_pointer = (u8 *) RX_BUFFER_BASE;

//n_events_to acquire
volatile int n_events ;

#endif /* SRC_XAXIDMA_CONTROLLER_H_ */
