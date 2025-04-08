/******************************************************************************
*
* Copyright (C) 2009 - 2017 Xilinx, Inc.  All rights reserved.
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

#include <stdio.h>
#include <string.h>
#include "xparameters.h"
#include "main.h"
#include "xil_printf.h"
/* defined by each RAW mode application */

int DAC_flag = 0;
int rst_fifo = 0;
int DRS4_restart = 0;
int update_DRS4 = 0;
int update_DAC = 0;
int rst = 0;
int test_pul1 = 0;
int test_pul2 = 0;
unsigned char buffer_test[] = "001\t2001\t2002\t2003\t2004\t2005\t2006\t2007\t2008\t2009\n";
int Data_send[1000];
// Datos para la tabla hash //Estos valores cambian a cada rato...buscar otro metodo.


extern int flag_ready2sent;
extern int flag_sentdata ;
int counter_send;
int max_count_send = 3000;

int command_is (u8 *buf, const char *command){
	for (int i=0; i< strlen(command);i++){
		if (buf[i] != command[i])
			return 0;
	}
	return 1;
}
void DRS4_restart_ROI();

int main()
{
	//ip_addr_t ipaddr, netmask, gw;
	int Status;
    xil_printf("\n---------Start DAQ MB program---------\n");
	//init_platform();
	/* Add network interface to the netif_list, and set it as default */
    usleep(3000000);
    setup_system();
    //Status = loop_routine();
	//if (Status != XST_SUCCESS) {
	//	xil_printf("loop routine Failed\r\n");
	//	return XST_FAILURE;
	//}
    while(1)
    {
    	if(DAC_flag == 1)
    	{
    		init_DACs();
    		usleep(100);
    		setup_DACs();
    		DAC_flag = 0;
    	}
    	if(test_pul1 == 1)
    		XGpio_DiscreteSet(&gpio,2,test_mask & (1<<2)); // 10
    	else if(test_pul1 == 0)
        	XGpio_DiscreteClear(&gpio,2,test_mask & (1<<2)); // 10
    	if(test_pul2 == 1)
			XGpio_DiscreteSet(&gpio,2,test_mask & (1<<3)); // 10
		else if(test_pul2 == 0)
			XGpio_DiscreteClear(&gpio,2,test_mask & (1<<3)); // 10


    }
	print("---Fin inicializacion---\n\r");

  
	/* never reached */

	return 0;
}


int setup_system ()
{
	int Status;
	XUartPs_Config *Config;

	xil_printf("---setting up system---\n\r");
// Reset signal
	//Xil_Out32(XSLCR_LVL_SHFTR_EN_ADDR, 0x0A);  //Before reset , it is better to disable Level shifter
	//Xil_Out32(XSLCR_UNLOCK_ADDR, XSLCR_UNLOCK_CODE);
	//Xil_Out32(XSLCR_FPGA_RST_CTRL_ADDR, 0x0F);


	//Xil_Out32(XSLCR_FPGA_RST_CTRL_ADDR, 0x00);
	//Xil_Out32(XSLCR_LOCK_ADDR, XSLCR_LOCK_CODE);

	//Xil_Out32(XSLCR_LVL_SHFTR_EN_ADDR, 0xF);  //After reset , it is better to enable Level shifter

	Status = XGpio_Initialize(&gpio, GPIO_DEVICE_ID);

	if (Status != XST_SUCCESS) {
		xil_printf("#ERROR#: Gpio Initialization Failed\r\n");
		return XST_FAILURE;
	}

	XGpio_DiscreteClear(&gpio,2,0xffffffff); // All output to 0
	//Xil_Out32(XSLCR_UNLOCK_ADDR, XSLCR_UNLOCK_CODE);
	//Xil_Out32(XSLCR_FPGA_RST_CTRL_ADDR, 0x0F);
	XGpio_DiscreteSet(&gpio,2,RST_mask);

	Status = XGpio_Initialize(&gpio, GPIO_DEVICE_ID);
		if (Status != XST_SUCCESS) {
			xil_printf("#ERROR#: Gpio Initialization Failed\r\n");
			return XST_FAILURE;
		}
	XGpio_DiscreteClear(&gpio,2,nSHDN_mask);
	usleep(1000000);
	XGpio_DiscreteClear(&gpio,2,RST_mask);

	XGpio_DiscreteClear(&gpio,2,0xffffffff); // All output to 0

	//Activo voltaje de mezzanina
	XGpio_DiscreteSet(&gpio,2,nSHDN_mask);
	xil_printf("Enable MezzO \n");

	usleep(500);
	//Habilito DACs
	XGpio_DiscreteSet(&gpio,2,GPIO_DAC_nCLR);
	usleep(100);
	//Habilito voltage interno de referencia de 2.5[V]
	init_DACs();
	usleep(200);
	init_DACs();
	usleep(200);
	setup_DACs();
	usleep(200);
	setup_DACs();
	xil_printf("Enable DACs \n");

	usleep(200);
	//Habilito DRS4



	usleep(100);
	//Habilito señal senoidal
	XGpio_DiscreteSet(&gpio,2,Tcal_mask);
	xil_printf("Disable sinewave\n");


   	////////////////////////////////RESET DE FIFOS y habilito interrupcion de trigger
	XGpio_DiscreteClear(&gpio,2,rst_FIFO_mask);				//Reset de FIFOs
	usleep(2000);
	XGpio_DiscreteSet(&gpio,2,rst_FIFO_mask );
	xil_printf("Enable trigger and Fifo \n");

	DRS4_Safe_shutdown();
	usleep(100);
	DRS4_restart_ROI();
	usleep(500);
	DRS4_restart_ROI();
	usleep(2000);

	//Activo gain para ganancia maxima
	XGpio_DiscreteSet(&gpio,2,Gain_ctrl_1_mask); // 10
	XGpio_DiscreteClear(&gpio,2,Gain_ctrl_2_mask);
	xil_printf("Set gain to 10\n");

	//Mux selecciona señal de prueba analoga (10) //set mux_Ctrl1 y clear mux_ctrl_2 para activar senoidal
	XGpio_DiscreteSet(&gpio,2,Mux_ctrl_1_mask);
	XGpio_DiscreteClear(&gpio,2,Mux_ctrl_2_mask);
	xil_printf("Set Mux to 10\n");

	xil_printf("Enable DRS4 \n");
   	return XST_SUCCESS;
}

void init_DACs()
{
	u32 command_access_b,data_byte;

	command_access_b = 0x80; //8 bits
	data_byte = 0x001; // 12 bits
	//DAC 0
	write_dac(dac_baseaddr,command_access_b,data_byte,0);
	usleep(1000);
	while(is_active(dac_baseaddr)==1); // Espero que modulo DAC termine rutina de envío de datos

	//DAC 1
	write_dac(dac_baseaddr,command_access_b,data_byte,1);
	usleep(1000);

}

int setup_DACs(void){
	u32 state;
	  	usleep (1000);
	  	//DAC 0 será el del DRS4
	  	//DAC 1 será el del comparador para triggers
	  	for (u32 i=0; i<8; i++){
			write_dac_voltage(dac_baseaddr,i,dac_values[i],0);
			while(is_active(dac_baseaddr)==1);
	 	  	usleep (1000);
	  	  // include error returning   here
	  	}
	  	usleep(2000);
	  	//Actualizo DAC1;
	  	for (u32 i=0; i<8; i++){
			write_dac_voltage(dac_baseaddr,i,trigger_values[i],1);
			while(is_active(dac_baseaddr)==1);
	 	  	usleep (1000);
	  	  // include error returning   here
	  	}
	   	// include error returning   here

		return XST_SUCCESS;
}

int loop_routine(void){

	xil_printf("---------------------\n\n starting command mode, no more than 15 characters per line!\n");


	while (1) {
		if(rst == 1)
		{
			XGpio_DiscreteSet(&gpio,2,RST_mask);
		}
		else if(rst==0)
		{
			XGpio_DiscreteClear(&gpio,2,RST_mask);
		}
		if(rst_fifo == 1)
		{

			XGpio_DiscreteClear(&gpio,2,rst_FIFO_mask);				//Reset de FIFOs
			usleep(2000);
			XGpio_DiscreteSet(&gpio,2,rst_FIFO_mask );
		}

		if(DRS4_restart == 1)
		{
			//int DRS4_restart = 0;
			//int update_DRS4 = 0;
			//int update_DRS4 = 0;
			DRS4_restart = 0;
		    DRS4_restart_ROI();

		}

		if(update_DRS4==1)
		{
			//int update_DRS4 = 0;
			//int update_DRS4 = 0;

			update_DRS4 = 0;
			write_DRS4_register_signals(DRS4_base_addr);
		}
		if(update_DAC == 1)
		{
			//int update_DRS4 = 0;
			update_DAC = 0;
			setup_DACs();
		}

	}
	return XST_SUCCESS;
}
void DRS4_restart_ROI(){
	int state;
   	DRS4_Init();
   	state = get_states_machine(DRS4_base_addr);
   	xil_printf("#INFO#: DRS4  init: state is %x\n", state);

   	DRS4_config();
   	state = get_states_machine(DRS4_base_addr);
   	DRS4_start_ROI();
   	state = get_states_machine(DRS4_base_addr);
   	xil_printf("#INFO#: DRS4 started ROI: state is %x\n", state);

	usleep(2000);
   	state = setup_DACs();


}





