/*
 * main.h
 *
 *  Created on: Apr 22, 2020
 *      Author: Rimsky
 */

#ifndef SRC_MAIN_H_
#define SRC_MAIN_H_

#include <stdio.h>
#include "xparameters.h"
#include "xil_cache.h"
//#include "xuartlite.h"
#include "xuartps_hw.h"
#include "xuartps.h"
#include "xil_printf.h"
#include "sleep.h"
#include "xgpio.h"
//#include "AXI_DAC.h"
#include "dac_i2c.h"
#include "ADC_driver.h"
//#include "xintc.h"
#include "xstatus.h"
//#include "DRS4_firmware.h"
#include "DRS4_driver.h"
#include "gpio_handler.h"
//#include "xaxidma_controller.h"
//#include "tcp_com.h"
#include "xil_misc_psreset_api.h"
#include "platform_config.h"
//#define UARTLITE_DEVICE_ID	XPAR_UARTLITE_0_DEVICE_ID
#define TEST_BUFFER_SIZE 1024 	//tamaño del buffer interno es 16 byte
#define dac_baseaddr XPAR_DAC_I2C_0_S00_AXI_BASEADDR

//#define GPIO_DEVICE_ID  XPAR_GPIO_0_DEVICE_ID

/************************** Function Prototypes ******************************/
int UartLitePolledExample(u16 DeviceId);
int UartLiteInit(u16 DeviceId);
int test_routine_1(void);
int test_routine_adc(void);
int loop_routine(void);
void test_routine_3 (void);
int setup_DACs(void);
int setup_system (void);
//static XUartLite UartLite;		/* Instance of the UartLite Device */
//static XIntc InterruptController; /* Instance of the Interrupt Controller Device */
XUartPs UartPs	;

u8 SendBuffer[TEST_BUFFER_SIZE];	/* Buffer for Transmitting Data */
u8 RecvBuffer[TEST_BUFFER_SIZE];	/* Buffer for Receiving Data */

u32 UART_BAUD_RATE = 115200; 		//one can set BAUD RATE as desired inside the allowed range

int dac0, dac1, dac2, dac3;
int set_dac = FALSE;
int get_dac = FALSE;
int routine_dac = FALSE;
int routine_adc = FALSE;
int adc_config = FALSE;
int adc_send_burst = FALSE;
int adc_read_last = FALSE;
int trigger = FALSE;
int trigger_counter = 0;

int dac_ch = 0;
int dac_val = 0;

_Bool user_VETO = FALSE;
//u32 states_vector,stop_cell;

/*
//dac_values
[0]		: Vcc/2 = 1.65[V], Vcm en el amplificador
[1]		: CAL+ para obtener 1.3[V]
[2]		: CAL- para obtener 1.3[V]
[3]		:ADC_VCM (disconnected)
[4]				:BIAS 0.7 [V] ¿?
[5]		2456	:ROF seteado en 1.5 [V] 2000 gives 1.25V
*/
u32 dac_values[8] = \
{ 1351,	\
 0,	\
 1064,	\
 0,	\
 1064,		\
 1024,	\
 0, \
 573};

u32 trigger_values[8] = \
{ 1000,	\
 1000,	\
 1000,	\
 1000,	\
 1000,		\
 1000,	\
 1000,	\
 1000	};
void bin(unsigned n)
{
    if (n > 1)
    bin(n>>1);

    xil_printf("%d", n & 1);
}


#endif /* SRC_MAIN_H_ */
