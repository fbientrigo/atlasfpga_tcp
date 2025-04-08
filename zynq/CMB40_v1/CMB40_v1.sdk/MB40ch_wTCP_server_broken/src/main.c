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



//void print_app_header();

void tcp_fasttmr(void);
void tcp_slowtmr(void);

/* missing declaration in lwIP */
void lwip_init();

#if LWIP_IPV6==0
#if LWIP_DHCP==1
extern volatile int dhcp_timoutcntr;
err_t dhcp_start(struct netif *netif);
#endif
#endif
int dac_set = 0;
extern volatile int TcpFastTmrFlag;
extern volatile int TcpSlowTmrFlag;
static struct netif server_netif;
struct netif *echo_netif;
int rst_fifo = 0;
int en_adc_clk,en_adc;
unsigned char buffer_test[] = "001\t2001\t2002\t2003\t2004\t2005\t2006\t2007\t2008\t2009\n";
int Data_send[1000];
int cpld_ack,send_cpld;
// Datos para la tabla hash //Estos valores cambian a cada rato...buscar otro metodo.
int rst_system = 0;
int adclk_cnt,lclk_cnt;
extern int flag_ready2sent;
extern int flag_sentdata ;
int counter_send;
int en_busy = 0;
int soft_trigg_en = 0;
int shutdown = 0;
int max_count_send = 3000;
int read_GPIO = 0;
int rst_drs4 = 0;
u8 clk_count;
u32 gpio_read;
int DTAP_meas = 0;
u32 delay_GPIO = 4;
int update_delay = 0;
int en_A = 0;
void init_DACs();
int command_is (u8 *buf, const char *command){
	for (int i=0; i< strlen(command);i++){
		if (buf[i] != command[i])
			return 0;
	}
	return 1;
}
void DRS4_restart_ROI();
void shutdown_all();
int main()
{
	//define gain bits
	CPLD_gain_mux = 1; // 1-> RF1: -22dB, 2->RF2: -10dB. 2 bits
	ip_addr_t ipaddr, netmask, gw;
	int Status;
	/* the mac address of the board. this should be unique per board */
	unsigned char mac_ethernet_address[] =
	{ 0x00, 0x0a, 0x35, 0x00, 0x01, 0x02 };

	echo_netif = &server_netif;
    xil_printf("\n---------Start DAQ MB program---------\n");
	//init_platform();
	Status = setup_dma_and_timer();
	xil_printf("\n\n--------Status setup DMA and timer: %d--------\n\n ",Status);

	flag_tcp_done = 0 ;


    ipaddr.addr = 0;
	gw.addr = 0;
	netmask.addr = 0;

	print_app_header();

	lwip_init();
	Status =  setup_interrupt_dma_timer();
	xil_printf("\n\n-----Status setup interrupts: %d-----\n\n ",Status);
	/* Add network interface to the netif_list, and set it as default */
	if (!xemac_add(echo_netif, &ipaddr, &netmask,
						&gw, mac_ethernet_address,
						PLATFORM_EMAC_BASEADDR)) {
		xil_printf("Error adding N/W interface\n\r");
		return -1;
	}

	netif_set_default(echo_netif);

	/* now enable interrupts */

    //platform_enable_interrupts(); Reemplazada por la funcion siguiente

	/* specify that the network if is up */
	netif_set_up(echo_netif);

	/* Create a new DHCP client for this interface.
	 * Note: you must call dhcp_fine_tmr() and dhcp_coarse_tmr() at
	 * the predefined regular intervals after starting the client.
	 */
	dhcp_start(echo_netif);
	dhcp_timoutcntr = 24;

	while(((echo_netif->ip_addr.addr) == 0) && (dhcp_timoutcntr > 0))
		xemacif_input(echo_netif);

	if (dhcp_timoutcntr <= 0)
	{
		if ((echo_netif->ip_addr.addr) == 0)
		{
			xil_printf("DHCP Timeout\r\n");
			xil_printf("Configuring default IP of 192.168.1.10\r\n");
			IP4_ADDR(&(echo_netif->ip_addr),  192, 168,   1, 10);
			IP4_ADDR(&(echo_netif->netmask), 255, 255, 255,  0);
			IP4_ADDR(&(echo_netif->gw),      192, 168,   1,  1);
		}
	}

	ipaddr.addr = echo_netif->ip_addr.addr;
	gw.addr = echo_netif->gw.addr;
	netmask.addr = echo_netif->netmask.addr;
	print_ip_settings(&ipaddr, &netmask, &gw);

	/* start the application (web server, rxtest, txtest, etc..) */
	start_application();

	setup_system();


    xil_printf("buffer length %d \n \n",strlen(buffer));
	//packer();
	/* receive and process packets */
	xil_printf("ip and port --> %d.%d.%d.%d %d\n", ((int)ipaddr.addr)&0xff,((int)ipaddr.addr>>8)&0xff, ((int)ipaddr.addr>>16)&0xff, ((int)ipaddr.addr>>24)&0xff, PORT);

    Status = loop_routine();
	if (Status != XST_SUCCESS) {
		xil_printf("loop routine Failed\r\n");
		return XST_FAILURE;
	}

	print("---Exiting main---\n\r");

  
	/* never reached */
	cleanup_platform();

	return 0;
}

void shutdown_all()
{
	DRS4_Safe_shutdown();
	tcp_server_close(pcb);
	CPLD_mezz_power_off((u8)7);
}
int setup_system ()
{
	int Status;
	u32 cpld_status;
	XUartPs_Config *Config;

	xil_printf("---setting up system---\n\r");

	Status = XGpio_Initialize(&gpio, GPIO_DEVICE_ID);
	Status = XGpio_Initialize(&gpio1,XPAR_GPIO_1_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		xil_printf("#ERROR#: Gpio Initialization Failed\r\n");
		return XST_FAILURE;
	}
	XGpio_DiscreteClear(&gpio,2,0xffffffff); // All output to 0
	Status = XGpio_DiscreteRead(&gpio,1);
	xil_printf("Status GPIO: %d\r\n", Status);

	/*
	 *
	 * Debug section, all mezzanine will be broadcast to test CMB40 for first time
	 *
	 *
	 */
	//First, sent CPLD to init status of all mezzanines.
	CPLD_mezz_power_off((u8)7);
	usleep(1000);
	CPLD_mezz_mux = 1; //7 Broadcast conf for DRS4.
	CPLD_SPI_mezz_sel = 1;//b"111" to enable ctrl signals go to the 5 mezzanine boards
	//Initialization of Mezzanines boards using CPLD

	Mezz_CPLD_init(CPLD_SPI_mezz_sel);

	//Initi and setup of DACs. Enable 2.5 V ref
	xil_printf("Initialize DACs\n");
	XGpio_DiscreteClear(&gpio,2,DAC_nCLR_mask);
	usleep(500);
	XGpio_DiscreteSet(&gpio,2,DAC_nCLR_mask);
	usleep(500);
	init_DACs();
	setup_DACs();
	xil_printf("Setup DACs voltages\n");
	xil_printf("Initialize SPI of ADC\n");
	//ADC_SPI_init();
	Xil_In32(XPAR_CPLD_CTRL_0_S00_AXI_BASEADDR+8);
   	//Fifo resets
	XGpio_DiscreteClear(&gpio,2,rst_FIFO_mask);
	usleep(2000);
	XGpio_DiscreteSet(&gpio,2,rst_FIFO_mask);

	//DRS4 init.

	DRS4_Safe_shutdown();
	usleep(100);
	DRS4_restart_ROI();
	usleep(500);
	DRS4_restart_ROI();
	usleep(2000);

	//default trigger configuration.
	//0 enable auto trigger with a counter on FPGA. 1 Disable.
	XGpio_DiscreteSet(&gpio,2,soft_trigger_mask);
	XGpio_DiscreteClear(&gpio,2,trigg_function_mask);// disable trigger function
	XGpio_DiscreteSet(&gpio,2,trigg_function_mask&(1<<trigg_function_offset));// 001: OR, 010: AND, others: none
	XGpio_DiscreteSet(&gpio,2,trigg_input_mask);


	XGpio_DiscreteSet(&gpio1,1,delay_GPIO);
	xil_printf("Cpld status: %d \n\n",cpld_status);


	//Start of ADC ref clk
	XGpio_DiscreteSet(&gpio,2,ADC_refclk_mask);

	//wait 10 ms after refclk is enable.
	usleep(10000);
	//Chip select of all ADC enable for SPI comm
	CPLD_ADC_nCS = 0;
	cpld_status = write_CPLD_signals();
	//xil_printf("ADC nCS pull down: Cpld status: %d \n\n",cpld_status);

	//ADC setup register routine here!

	XGpio_DiscreteSet(&gpio,2,busy_trigger_mask);

   	return XST_SUCCESS;
}

void ADC_SPI_init()
{
	//u32 AXI_ADC_write_reg (u16 ptr_tbw, u16 data)
	u16 pt_addr;
	u16 spi_data;
	u32 result;
	//First, enable LVDS on ADS5287.
	pt_addr = 0x0042;
	spi_data = 0x8001; //Enable diff_CLK for LVDS. Default is disable.

	result = AXI_ADC_write_reg(pt_addr,spi_data);
	xil_printf("ADC SPI R:%u", result);


}
void init_DACs()
{
	u32 command_access_b,data_byte;

	command_access_b = 0x80; //8 bits
	data_byte = 0x001; // 12 bits
	//DAC 0
	write_dac(dac_baseaddr,command_access_b,data_byte,0);
	usleep(1000);
	while(is_active(dac_baseaddr)==1); // Espero que modulo DAC termine rutina de env�o de datos

	//DAC 1
	write_dac(dac_baseaddr,command_access_b,data_byte,1);
	usleep(1000);

}

int setup_DACs(void){
	  	usleep (1000);
	  	//DAC 0 ser� el del DRS4
	  	//DAC 1 ser� el del comparador para triggers
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

				if (TcpFastTmrFlag) {
					tcp_fasttmr();
					TcpFastTmrFlag = 0;

				}
				if (TcpSlowTmrFlag) {
					tcp_slowtmr();
					TcpSlowTmrFlag = 0;
					if(start_send_event==1 && c_glob_ev <=1 && flag_ready2sent)
					{
						flag_senddata = 1;
						process_n_send_data(c_glob_ev,1);
						usleep(100);
						if(c_glob_ev >= 1)
						{
							flag_senddata = 0 ;
							start_send_event = 0;
						}
						c_glob_ev++;
					}

							//Cuando los flags esten habilitados se envian los datos con la funcion transfer_data()
							//Deberia suponer que esto se ejecutar� a un tiempo suficiente?
				}

				if(flag_senddata && flag_ready2sent)
									{
										flag_senddata = 0;

										flag_ready2sent = 0;

										transfer_data(buffer);

									}
				xemacif_input(echo_netif); //recepcion de paquetes constantemente


				if (RecvBuffer[0] == '-' && RecvBuffer[1] == 'q') {


					memset(buffer, 0, strlen(buffer));
					snprintf(buffer,40,"\nDRS4 was shuted down... \nEnd program");
					flag_senddata = 1;
					shutdown_all();
					break;
				}
				if(soft_trigg_en == 1)
				{
					soft_trigg_en = 0;
					if(soft_trig == 1)
								{
									XGpio_DiscreteClear(&gpio,2,soft_trigger_mask);
									soft_trig = 0;
								}
									else
								{
									soft_trig = 1;
									XGpio_DiscreteSet(&gpio,2,soft_trigger_mask);
								}

				}
				if(shutdown==1)
					shutdown_all();
				if(send_cpld == 1)
				{
					send_cpld = 0;
					write_CPLD_signals();
				}
				if(en_busy==1)
				{
					en_busy = 0;
					XGpio_DiscreteClear(&gpio,2,busy_trigger_mask);
				}

				if(read_GPIO==1)
				{
					read_GPIO = 0;

					gpio_read = XGpio_DiscreteRead(&gpio,1);
					adclk_cnt = Xil_In32(AXI_ADC_BaseAddress+8);
					lclk_cnt = (adclk_cnt >> 16) & 0xffff ;
					adclk_cnt = adclk_cnt & 0xffff;
					clk_count = gpio_read >>23;
					xil_printf("clk count of ADCLK is %u,\t total read %u\n",clk_count,gpio_read);
					xil_printf("ADclk %d\tLCLK: %d",adclk_cnt, lclk_cnt);

				}
				if(rst_fifo==1)
				{
						XGpio_DiscreteClear(&gpio,2,rst_FIFO_mask);
						usleep(2000);
				}
				else if(rst_fifo == 0)
					XGpio_DiscreteSet(&gpio,2,rst_FIFO_mask);
				if(dac_set ==1)
				{
					dac_set = 0;
					init_DACs();
					setup_DACs();
				}
				if(DTAP_meas ==1)
				{
					DTAP_meas = 0;
					xil_printf("DTAP: %.3f - %.3f - %.3f - %.3f - %.3f\n",DRS4_DTAP_meas((int)1),DRS4_DTAP_meas((int)2)
							,DRS4_DTAP_meas((int)3),DRS4_DTAP_meas((int)4),DRS4_DTAP_meas((int)5));

				}
				if(rst_system == 1)
				{
					rst_system = 0;
					setup_system();
				}
				if(rst_drs4 == 1)
				{
					//rst_drs4 = 0;
					usleep(1000000);
					DRS4_restart_ROI();
				}
				if(update_delay ==1)
				{
					update_delay = 0;
					XGpio_DiscreteWrite(&gpio1,1,delay_GPIO);
				}
				if(en_A == 1)
					XGpio_DiscreteSet(&gpio,2,en_A_vec);
				else if(en_A == 0)
					XGpio_DiscreteClear(&gpio,2,en_A_vec);


	}
	return XST_SUCCESS;
}
void DRS4_restart_ROI(){
	int state;
	int cpld_status;
	CPLD_denable = 0;
	cpld_status = write_CPLD_signals();
   	DRS4_Init();
   	state = get_states_machine();
   	xil_printf("#INFO#: DRS4  init: state is %x\n", state);

   	DRS4_config();
   	CPLD_denable = 1;
   	cpld_status = write_CPLD_signals();
   	//Once denable is high, lets proceed with the DRS4 init and readout.
   	DRS_start_adq = 1;
   	write_DRS4_control_signals();
   	state = get_states_machine();
   	DRS4_start_ROI();
   	state = get_states_machine();
   	xil_printf("#INFO#: DRS4 started ROI: state is %x\n", state);

}


err_t recv_callback(void *arg, struct tcp_pcb *tpcb,
                               struct pbuf *p, err_t err)
{
	unsigned int ReceivedCount = 0;
		int value = 0;
		int state = 0;
		int ch=0;
		int Status;
		unsigned char mess[40];
	//unsigned char rec_msg[10]; //Mensajes de comm con el pc, de 5 caracteres,
	//unsigned long hash_msg; //codificacion de mensajes recibidos en tabla hash...en este caso primero se envian mensajes y se lee el numero y luego se crea el mensaje
	//int comp_string; //No funciono la comparaci�n de string, al parecer python y C operan distinto...cosas extra�as al usar strcmp() en el procesador;
	/* do not read the packet if we are not in ESTABLISHED state */
	if (!p) {
		tcp_close(tpcb);
		tcp_recv(tpcb, NULL);
		return ERR_OK;
	}

	/* indicate that the packet has been received */
	 //De donde viene p ? en que momento se inicializa ? se pasa por argumento a la funcion pero esta funcion en algun lado se debe incializar
	tcp_recved(tpcb, p->len);

	//Lectura de mensaje recibido
	memcpy(RecvBuffer, p -> payload, 16);
	memset(buffer, 0, strlen(buffer));
	xil_printf("strlen:%d, mess:%s\n",strlen(RecvBuffer),RecvBuffer);
		if (command_is(RecvBuffer,"-DRS4GetState")){ // state return
			state = get_states_machine();
			xil_printf("DRS4 state is %x\n", state);
			memset(buffer, 0, strlen(buffer));
			snprintf(buffer,40,"DRS4 state is %x\n", state);
			flag_senddata = 1;

		}
		if (command_is(RecvBuffer,"-Shutdown")){ //DRS4 safe shutdown
			DRS4_Safe_shutdown();
			state = get_states_machine();
			xil_printf("DRS4 was shuted down, state is %x\n", state);
			memset(buffer, 0, strlen(buffer));
			snprintf(buffer,40,"\nDRS4 was shuted down, state is %x\n", state);
			flag_senddata = 1;
		}
		if (command_is(RecvBuffer,"-DRS4Restart")){ //DRS4 safe restart
			DRS4_restart_ROI();

			memset(buffer, 0, strlen(buffer));
			snprintf(buffer,40,"DRS4 restarting\n");
			flag_senddata = 1;

		}
		if (command_is(RecvBuffer,"-get_event")) {
//					XGpio_DiscreteWrite(&gpio,2,0x20);
			//usleep (30);
			c_glob_ev = 0;
			process_n_send_data(c_glob_ev,1);
			c_glob_ev++;
			//start_send_event = 1;
			flag_senddata= 1 ;
			xil_printf("\n# sending data\n");
//					XGpio_DiscreteWrite(&gpio,2,0x0);
//					state = XGpio_DiscreteRead(&gpio,1);
//					xil_printf("\n# state = %x", state);
//					trigger_counter = (state >> 12) & 0xFFF;
		}
		if (command_is(RecvBuffer,"-check")) {
//					state = XGpio_DiscreteRead(&gpio,1);
			xil_printf("\n# event buffer = %x\n", RxDone);
//					trigger_counter = (state >> 12) & 0xFFF;
			memset(buffer, 0, strlen(buffer));
			snprintf(buffer,40,"\n# event buffer = %x\n", RxDone);
			flag_senddata = 1;
		}

		if (command_is(RecvBuffer,"-VETO 0")) {
			xil_printf("\n# VETO set to FALSE");
			memset(buffer, 0, strlen(buffer));
			snprintf(buffer,40,"\n# VETO set to FALSE");
			flag_senddata = 1;
			user_VETO = FALSE;
			XGpio_DiscreteClear(&gpio,2,VETO_mask);
			//gpio_write_reg(VETO_mask,VETO_offset,0);
		}
		if (command_is(RecvBuffer,"-cleanup")) {
			xil_printf("\n# cleaning up the event buffer");
			memset(buffer, 0, strlen(buffer));
			snprintf(buffer,40,"\n# cleaning up the event buffer");
			flag_senddata = 1;
			cleanup_buffer();
		}
		if (command_is(RecvBuffer,"-get_trig_state")) {
			state = XGpio_DiscreteRead(&gpio,1);
			xil_printf("\n# state = %x\n", state >> 24);
			memset(buffer, 0, strlen(buffer));
			snprintf(buffer,40,"\n# state = %x\n", state >> 24);
			flag_senddata = 1;
		}
		if (command_is(RecvBuffer,"-get_gpio_conf")) {
					state = XGpio_DiscreteRead(&gpio,2);
					xil_printf("\n# state = %x\n", state);
					memset(buffer, 0, strlen(buffer));
					snprintf(buffer,40,"\n# state = %x\n", state);
					flag_senddata = 1;
		}
		if (command_is(RecvBuffer,"-set_n_event ")) {
			value = atoi(&(RecvBuffer[13]));
			if (value > 1024) {
				n_events = 1024;
			}else if (value < 1) {
				n_events = 1;
			} else{
				n_events = value;
			}
			memset(buffer, 0, strlen(buffer));
			snprintf(buffer,40,"\n# n events set to  = %d", n_events);
			flag_senddata = 1;
			xil_printf("\n# n events set to  = %d", n_events);
		}

		if (command_is(RecvBuffer,"-h")){ //return a list of commands
			memset(buffer, 0, strlen(buffer));
			snprintf(buffer,372,"\nList of available commands:\n"
					"-DRS4Shutdown\n"
					"-DRS4Restart\n"
					"-DRS4GetState\n"
					"-q : exit and shutdown system\n"
					"-get_event : get the event\n"
					"-check : check status of the buffer\n"
					"-auto_trig_on : set auto trigger on, every 7s app.\n"
					"-auto_trig_off : set auto trigger off\n");

			/*
			xil_printf("\nList of available commands:\n");
			xil_printf("-DRS4Shutdown\n");
			xil_printf("-DRS4Restart\n");
			xil_printf("-DRS4GetState\n");
			xil_printf("-q : exit and shutdown system\n");
			xil_printf("-get_event : get the event\n");
			xil_printf("-check : check status\n");
			xil_printf("-auto_trig_on : set auto trigger on, every 7s app.\n");
			xil_printf("-auto_trig_off : set auto trigger off\n");
			*/
			xil_printf(buffer);
			flag_senddata = 1;
		}
		if (command_is(RecvBuffer,"-soft_trig")){

			snprintf(buffer,40,"\nSoft_trig command\n");
			flag_senddata = 1;
			usleep(10);
			if(soft_trig == 1)
			{
				XGpio_DiscreteClear(&gpio,2,soft_trigger_mask);
				soft_trig = 0;
			}
				else
			{
				soft_trig = 1;
				XGpio_DiscreteSet(&gpio,2,soft_trigger_mask);
			}

		}
		if (command_is(RecvBuffer,"-auto_trig_off")){
					snprintf(buffer,40,"\nSoft_trig is OFF\n");
					flag_senddata = 1;
					usleep(10);
					soft_trig = 1;
					XGpio_DiscreteSet(&gpio,2,soft_trigger_mask);//assert reset in FIT, interrupt disable
		}
		if (command_is(RecvBuffer,"-auto_trig_on")){
							snprintf(buffer,40,"\nAUTO trigger on. Every 7s app.\n");
							flag_senddata = 1;
							usleep(10);
							soft_trig = 0;
							XGpio_DiscreteClear(&gpio,2,soft_trigger_mask); //clear reset in FIT, interrupt enabled
		}
		if (command_is(RecvBuffer,"-rst_fifo")){

			XGpio_DiscreteSet(&gpio,2,rst_FIFO_mask);
			snprintf(buffer,40,"\nManual trigger RO\n");
			flag_senddata = 1;
			usleep(10);
			XGpio_DiscreteClear(&gpio,2,rst_FIFO_mask);


		}


	//				XUartLite_EnableInterrupt(&UartLite);

	pbuf_free(p);

	return ERR_OK;
}

float DRS4_DTAP_meas(int sel_mezz)
{
	u32 cnt_value = 0;
	float DTAP_freq = 0.0;
	switch(sel_mezz)
	{
		case 1 :
			cnt_value = Xil_In32(XPAR_CLK_MON_0_S00_AXI_BASEADDR+CLK_MON_S00_AXI_SLV_REG0_OFFSET) & 0x000000ff;
			break;
		case 2:
			cnt_value = (Xil_In32(XPAR_CLK_MON_0_S00_AXI_BASEADDR+CLK_MON_S00_AXI_SLV_REG0_OFFSET)>>15) & 0x000000ff;
			break;
		case 3 :
			cnt_value = Xil_In32(XPAR_CLK_MON_0_S00_AXI_BASEADDR+CLK_MON_S00_AXI_SLV_REG1_OFFSET) & 0x000000ff;
			break;
		case 4:
			cnt_value = (Xil_In32(XPAR_CLK_MON_0_S00_AXI_BASEADDR+CLK_MON_S00_AXI_SLV_REG1_OFFSET)>>15) & 0x000000ff;
			break;
		case 5 :
			cnt_value = Xil_In32(XPAR_CLK_MON_0_S00_AXI_BASEADDR+CLK_MON_S00_AXI_SLV_REG2_OFFSET) & 0x000000ff;
			break;
		default:
			xil_printf("Not a valid value for DTAP meass \n");
			return 0.0;

	}
	DTAP_freq = (float)cnt_value/8192.0*100.0;
	return(DTAP_freq);

}


