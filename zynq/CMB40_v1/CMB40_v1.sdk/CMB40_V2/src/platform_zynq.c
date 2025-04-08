/******************************************************************************
*
* Copyright (C) 2010 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/
/*
* platform_zynq.c
*
* Zynq platform specific functions.
*
* 02/29/2012: UART initialization is removed. Timer initializations are
* removed. All unnecessary include files and hash defines are removed.
* 03/01/2013: Timer initialization is added back. Support for SI #692601 is
* added in the timer callback. The SI #692601 refers to the following issue.
*
* The EmacPs has a HW bug on the Rx path for heavy Rx traffic.
* Under heavy Rx traffic because of the HW bug there are times when the Rx path
* becomes unresponsive. The workaround for it is to check for the Rx path for
* traffic (by reading the stats registers regularly). If the stats register
* does not increment for sometime (proving no Rx traffic), the function resets
* the Rx data path.
*
* </pre>
 */

#ifdef __arm__

#include "xparameters.h"
#include "xparameters_ps.h"	/* defines XPAR values */
#include "xil_cache.h"
#include "xscugic.h"
#include "lwip/tcp.h"
#include "xil_printf.h"
#include "platform.h"
#include "platform_config.h"
#include "netif/xadapter.h"
#ifdef PLATFORM_ZYNQ
#include "xscutimer.h"
#include "xaxidma_controller.h"
#define INTC_DEVICE_ID		XPAR_SCUGIC_SINGLE_DEVICE_ID
#define TIMER_DEVICE_ID		XPAR_SCUTIMER_DEVICE_ID
#define INTC_BASE_ADDR		XPAR_SCUGIC_0_CPU_BASEADDR
#define INTC_DIST_BASE_ADDR	XPAR_SCUGIC_0_DIST_BASEADDR
#define TIMER_IRPT_INTR		XPAR_SCUTIMER_INTR

#define RESET_RX_CNTR_LIMIT	400

void tcp_fasttmr(void);
void tcp_slowtmr(void);

static XScuTimer TimerInstance;

#ifndef USE_SOFTETH_ON_ZYNQ
static int ResetRxCntr = 0;
#endif

extern struct netif *echo_netif;

volatile int TcpFastTmrFlag = 0;
volatile int TcpSlowTmrFlag = 0;

#if LWIP_DHCP==1
volatile int dhcp_timoutcntr = 24;
void dhcp_fine_tmr();
void dhcp_coarse_tmr();
#endif

void
timer_callback(XScuTimer * TimerInstance)
{
	static int DetectEthLinkStatus = 0;
	/* we need to call tcp_fasttmr & tcp_slowtmr at intervals specified
	 * by lwIP. It is not important that the timing is absoluetly accurate.
	 */
	static int odd = 1;
#if LWIP_DHCP==1
    static int dhcp_timer = 0;
#endif
	DetectEthLinkStatus++;
	 TcpFastTmrFlag = 1;

	odd = !odd;
#ifndef USE_SOFTETH_ON_ZYNQ
	ResetRxCntr++;
#endif
	if (odd) {
#if LWIP_DHCP==1
		dhcp_timer++;
		dhcp_timoutcntr--;
#endif
		TcpSlowTmrFlag = 1;
#if LWIP_DHCP==1
		dhcp_fine_tmr();
		if (dhcp_timer >= 120) {
			dhcp_coarse_tmr();
			dhcp_timer = 0;
		}
#endif
	}

	/* For providing an SW alternative for the SI #692601. Under heavy
	 * Rx traffic if at some point the Rx path becomes unresponsive, the
	 * following API call will ensures a SW reset of the Rx path. The
	 * API xemacpsif_resetrx_on_no_rxdata is called every 100 milliseconds.
	 * This ensures that if the above HW bug is hit, in the worst case,
	 * the Rx path cannot become unresponsive for more than 100
	 * milliseconds.
	 */
#ifndef USE_SOFTETH_ON_ZYNQ
	if (ResetRxCntr >= RESET_RX_CNTR_LIMIT) {
		xemacpsif_resetrx_on_no_rxdata(echo_netif);
		ResetRxCntr = 0;
	}
#endif
	/* For detecting Ethernet phy link status periodically */
	if (DetectEthLinkStatus == ETH_LINK_DETECT_INTERVAL) {
		eth_link_detect(echo_netif);
		DetectEthLinkStatus = 0;
	}
//Sección para envio de process_n_data, cuando es 8 en process_n_send_data se libera el BDs

	XScuTimer_ClearInterruptStatus(TimerInstance);
}

void platform_setup_timer(void)
{
	int Status = XST_SUCCESS;
	XScuTimer_Config *ConfigPtr;
	int TimerLoadValue = 0;

	ConfigPtr = XScuTimer_LookupConfig(TIMER_DEVICE_ID);
	Status = XScuTimer_CfgInitialize(&TimerInstance, ConfigPtr,
			ConfigPtr->BaseAddr);
	if (Status != XST_SUCCESS) {

		xil_printf("In %s: Scutimer Cfg initialization failed...\r\n",
		__func__);
		return;
	}

	Status = XScuTimer_SelfTest(&TimerInstance);
	if (Status != XST_SUCCESS) {
		xil_printf("In %s: Scutimer Self test failed...\r\n",
		__func__);
		return;

	}

	XScuTimer_EnableAutoReload(&TimerInstance);
	/*
	 * Set for 250 milli seconds timeout.
	 */
	TimerLoadValue = XPAR_CPU_CORTEXA9_0_CPU_CLK_FREQ_HZ / 8;

	XScuTimer_LoadTimer(&TimerInstance, TimerLoadValue);
	return;
}
//Podemos fusionar aquí la interrupcion del DMA
void platform_setup_interrupts(void)
{
	Xil_ExceptionInit();

	XScuGic_DeviceInitialize(INTC_DEVICE_ID);

	/*
	 * Connect the interrupt controller interrupt handler to the hardware
	 * interrupt handling logic in the processor.
	 */
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_IRQ_INT,
			(Xil_ExceptionHandler)XScuGic_DeviceInterruptHandler,
			(void *)INTC_DEVICE_ID);


	/*
	 * Connect the device driver handler that will be called when an
	 * interrupt for the device occurs, the handler defined above performs
	 * the specific interrupt processing for the device.
	 */
	XScuGic_RegisterHandler(INTC_BASE_ADDR, TIMER_IRPT_INTR,
					(Xil_ExceptionHandler)timer_callback,
					(void *)&TimerInstance);
	/*
	 * Enable the interrupt for scu timer.
	 */
	XScuGic_EnableIntr(INTC_DIST_BASE_ADDR, TIMER_IRPT_INTR);

	return;
}

void platform_enable_interrupts()
{
	/*
	 * Enable non-critical exceptions.
	 */
	Xil_ExceptionEnableMask(XIL_EXCEPTION_IRQ);
	XScuTimer_EnableInterrupt(&TimerInstance);
	XScuTimer_Start(&TimerInstance);

	return;
}

void init_platform()
{

	platform_setup_timer();

	platform_setup_interrupts();

	return;
}

void cleanup_platform()
{
	Xil_ICacheDisable();
	Xil_DCacheDisable();
	return;
}


/*
 * Setup e inicializacion de timers y de interrupciones del DMA, previo a
 *
 *
 *	SetupIntrSystem(&Intc, &AxiDma, TX_INTR_ID, RX_INTR_ID);
 */
int setup_dma_and_timer()
{
	//Declaracion de variables para timer
	int Status = XST_SUCCESS;
	XScuTimer_Config *ConfigPtr;
	int TimerLoadValue = 0;
	//Declaraion para variables DMA
	XAxiDma_Config *Config;
	XScuGic_Config *IntcConfig; //Estructura con más atributos que XScuTimer_Config, la cual tiene solo 2.

	///////////////////////////////Inicializacion///////////////////////////////

	c_glob_ev = 0; // Contador de envios de TCP
	start_send_event = 0;
	ConfigPtr = XScuTimer_LookupConfig(TIMER_DEVICE_ID);

	IntcConfig = XScuGic_LookupConfig(INTC_DEVICE_ID); //Esto es equivalente a lo anterior, mismo resultado pero puntero distinto

	//!!!!!!Esta función deshabilita interrupciones! por que instancia XScuGic_Stop() la cual deshabilita todas!!!
	Status = XScuGic_CfgInitialize(&Intc, IntcConfig,IntcConfig->CpuBaseAddress);
			if (Status != XST_SUCCESS) {
				return XST_FAILURE;
			}
	/////Esta no reinicia lo hace. Asi que irá despues
	Status = XScuTimer_CfgInitialize(&TimerInstance, ConfigPtr,	ConfigPtr->BaseAddr);
	if (Status != XST_SUCCESS) {

		xil_printf("In %s: Scutimer Cfg initialization failed...\r\n",
		__func__);
		return XST_FAILURE;
	}


	Config = XAxiDma_LookupConfig(DMA_DEV_ID); //Diferencia entre esto y XScuGic_LookupConfig ?? Que busca en config table de una estructura de DMA
		if (!Config) {
			xil_printf("No config found for %d\r\n", DMA_DEV_ID);

			return XST_FAILURE;
		}
		///
	XAxiDma_CfgInitialize(&AxiDma, Config);
	if(!XAxiDma_HasSg(&AxiDma)) {
			xil_printf("Device configured as Simple mode \r\n");
			return XST_FAILURE;
		}

	Status = XScuTimer_SelfTest(&TimerInstance);
	if (Status != XST_SUCCESS) {
		xil_printf("In %s: Scutimer Self test failed...\r\n",
		__func__);
		return;

	}

	XScuTimer_EnableAutoReload(&TimerInstance);
	/*
	 * Set for 250 milli seconds timeout.
	 */
	TimerLoadValue = XPAR_CPU_CORTEXA9_0_CPU_CLK_FREQ_HZ / 8;

	XScuTimer_LoadTimer(&TimerInstance, TimerLoadValue);

	///////////////////////////////Setup ///////////////////////////////

	/* Set up TX/RX channels to be ready to transmit and receive packets */
	Status = TxSetup(&AxiDma);

	if (Status != XST_SUCCESS) {

		xil_printf("Failed TX setup\r\n");
		return XST_FAILURE;
	}

	Status = RxSetup(&AxiDma);
	if (Status != XST_SUCCESS) {

		xil_printf("Failed RX setup\r\n");
		return XST_FAILURE;
	}
	return XST_SUCCESS;
}
/*
 * Ingreso y registro de interrupcion en la memoria
 *
 *
 */
int setup_interrupt_dma_timer()
{
	//////Comun a todas las interrupciones
	int Status;
	XAxiDma_BdRing *TxRingPtr = XAxiDma_GetTxRing(&AxiDma);
	XAxiDma_BdRing *RxRingPtr = XAxiDma_GetRxRing(&AxiDma);

	Xil_ExceptionInit();

	XScuGic_DeviceInitialize(INTC_DEVICE_ID); //Comun en DMA y timers
	/*
		 * Connect the interrupt controller interrupt handler to the hardware
		 * interrupt handling logic in the processor.
		 */
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_IRQ_INT,
				(Xil_ExceptionHandler)XScuGic_DeviceInterruptHandler,
				(void *)INTC_DEVICE_ID);


	/*
	 * Connect the device driver handler that will be called when an
	 * interrupt for the device occurs, the handler defined above performs
	 * the specific interrupt processing for the device.
	 */
	XScuGic_RegisterHandler(INTC_BASE_ADDR, TIMER_IRPT_INTR,
					(Xil_ExceptionHandler)timer_callback,
					(void *)&TimerInstance);

	//Register DMA interrupt
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
				(Xil_ExceptionHandler)INTC_HANDLER,
				(void *)&Intc);

	/*
	 * Enable the interrupt for scu timer.
	 */

	XScuGic_EnableIntr(INTC_DIST_BASE_ADDR, TIMER_IRPT_INTR);


	XScuGic_SetPriorityTriggerType(&Intc, TX_INTR_ID, 0xA0, 0x3);

	XScuGic_SetPriorityTriggerType(&Intc, RX_INTR_ID, 0xA0, 0x3);
		/*
		 * Connect the device driver handler that will be called when an
		 * interrupt for the device occurs, the handler defined above performs
		 * the specific interrupt processing for the device.
		 */
	Status = XScuGic_Connect(&Intc, TX_INTR_ID,
					(Xil_InterruptHandler)TxIntrHandler,
					TxRingPtr);
	if (Status != XST_SUCCESS) {
			return Status;
		}

	Status = XScuGic_Connect(&Intc, RX_INTR_ID,
					(Xil_InterruptHandler)RxIntrHandler,
					RxRingPtr);
	if (Status != XST_SUCCESS) {
			return Status;
		}
	XScuGic_Enable(&Intc, TX_INTR_ID);
	XScuGic_Enable(&Intc, RX_INTR_ID);


	Xil_ExceptionEnable(); //Xil_ExceptionEnableMask esto es equivalente.
	XScuTimer_EnableInterrupt(&TimerInstance);
	XScuTimer_Start(&TimerInstance);


	return XST_SUCCESS;

}
#endif
#endif

