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

/**
 * command_is
 *
 * Compara el contenido del buffer recibido con un comando de referencia para determinar si
 * coincide. Esta función recorre carácter a carácter la cadena y devuelve 1 (TRUE) si la
 * comparación es exitosa, o 0 (FALSE) en caso contrario.
 *
 * Parameters
 * ----------
 * buf : u8*
 *     Buffer recibido que contiene el comando.
 * command : const char*
 *     Comando de referencia contra el cual se compara.
 *
 * Returns
 * -------
 * int
 *     1 si el comando coincide, 0 si no coincide.
 *
 * Ejemplo:
 *     if (command_is(RecvBuffer, "-Shutdown")) {
 *         // Realiza la acción de apagado
 *     }
 */
int command_is (u8 *buf, const char *command){
	for (int i=0; i< strlen(command);i++){
		if (buf[i] != command[i])
			return 0;
	}
	return 1;
}
void DRS4_restart_ROI();
void shutdown_all();


/**
 * main
 *
 * Función principal de la aplicación DAQ. Realiza la inicialización completa del sistema,
 * incluyendo:
 *
 *  - Configuración inicial de la plataforma, DMA y timers.
 *  - Inicialización de la pila lwIP, y configuración de la interfaz de red (usando DHCP o IP
 *    por defecto).
 *  - Llamada a start_application() para poner en marcha el servidor TCP.
 *  - Ejecución del bucle principal (loop_routine), el cual gestiona la recepción/envío de datos,
 *    procesamiento de comandos y control del hardware.
 *
 * Returns
 * -------
 * int
 *     0 si la aplicación finaliza correctamente, o un valor negativo en caso de error.
 *
 * Ejemplo:
 *     int result = main();
 *
 * Flujo general (diagramado en Mermaid):
 *
 *     [Inicio main] --> [Inicialización DMA/Timers] --> [lwIP_init, configurar red] -->
 *                       [start_application()] --> [setup_system()] --> [loop_routine()] --> [Cleanup]
 */
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

/**
 * shutdown_all
 *
 * Realiza el apagado seguro de los módulos críticos del sistema. Esto incluye:
 *
 *  - Detener y apagar el módulo DRS4 mediante DRS4_Safe_shutdown().
 *  - Cerrar la conexión TCP invocando tcp_server_close().
 *  - Apagar las salidas de la CPLD (por ejemplo, mediante CPLD_mezz_power_off()).
 *
 * No recibe parámetros.
 *
 * Ejemplo:
 *     shutdown_all();
 *
 * Nota:
 *     Se invoca cuando se detecta el comando de salida ("-q") o mediante otros flags de
 *     control.
 */
void shutdown_all()
{
	DRS4_Safe_shutdown();
	tcp_server_close(pcb);
	CPLD_mezz_power_off((u8)7);
}

/**
* setup_system
*
* Inicializa y configura los periféricos y módulos críticos del sistema, incluyendo:
*
*  - Inicialización de GPIO (mediante XGpio_Initialize) para controlar señales y resets.
*  - Configuración e inicialización de DACs y ADCs, incluyendo llamadas a init_DACs, setup_DACs y
*    ADC_SPI_init.
*  - Reinicio y configuración de módulos como DRS4 para la adquisición de datos.
*
* Returns
* -------
* int
*     XST_SUCCESS si la configuración fue exitosa, o XST_FAILURE en caso de error.
*
* Ejemplo:
*     if (setup_system() != XST_SUCCESS) {
*         xil_printf("Error al configurar el sistema.\n");
*     }
*/
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
	//////////////////////////////////////////
	xil_printf("Valor en el registro slv_reg0: %d", AXI_ADC_check_status());
	ADC_SPI_init();
	xil_printf("Valor en el registro slv_reg0: %d", AXI_ADC_check_status());
	//////////////////////////////////////////

	XGpio_DiscreteSet(&gpio,2,busy_trigger_mask);

   	return XST_SUCCESS;
}

/**
 * ADC_SPI_init
 *
 * Configura el ADC mediante la interfaz SPI. Realiza los siguientes pasos:
 *
 *  - Inicializa la comunicación con el ADC mediante señales de control (por ejemplo, CPLD_ADC_nCS).
 *  - Envía secuencias de comandos para resetear y configurar registros del ADC.
 *  - Configura patrones de prueba (ramp o valor constante) y modos de transferencia (LSB/MSB primero).
 *
 * No recibe parámetros.
 *
 * Ejemplo:
 *     ADC_SPI_init();
 *
 * Nota:
 *     La función utiliza funciones auxiliares como AXI_ADC_write_reg y Xil_In32 para la lectura/escritura
 *     de registros.
 */
void ADC_SPI_init()
{
	u16 pt_addr;
	u16 spi_data;
	u32 result;
	u32 cpld_status;

	xil_printf("Empieza configuracion del ADC\n");

	CPLD_ADC_nCS = 0;
	cpld_status = write_CPLD_signals();
	CPLD_ADC_nCS = 1;
	cpld_status = write_CPLD_signals();

	// Enables data write
	AXI_ADC_mWriteReg(
			AXI_ADC_BaseAddress,
			AXI_ADC_S00_action_reg_offset,
			1 << AXI_ADC_S00_ready_state_bit_offset);
	//Reset by software
	CPLD_ADC_nCS = 0;
	cpld_status = write_CPLD_signals();
	usleep(500);
	pt_addr = 0x00;
	spi_data = 0x0001;
	result = AXI_ADC_write_reg(pt_addr,spi_data);
	xil_printf("Result: %d\n",result);
	CPLD_ADC_nCS = 1;
	cpld_status = write_CPLD_signals();
	usleep(500);

	// Enables data write
	AXI_ADC_mWriteReg(
			AXI_ADC_BaseAddress,
			AXI_ADC_S00_action_reg_offset,
			1 << AXI_ADC_S00_ready_state_bit_offset);
	// Return from reset
	CPLD_ADC_nCS = 0;
	cpld_status = write_CPLD_signals();
	usleep(500);
	pt_addr = 0x00;
	spi_data = 0x0000;
	result = AXI_ADC_write_reg(pt_addr,spi_data);
	xil_printf("Result: %d\n",result);
	usleep(500);
	CPLD_ADC_nCS = 1;
	cpld_status = write_CPLD_signals();
	usleep(500);

	// Enables data write
	AXI_ADC_mWriteReg(
			AXI_ADC_BaseAddress,
			AXI_ADC_S00_action_reg_offset,
			1 << AXI_ADC_S00_ready_state_bit_offset);
	// Sync pattern enabled; all the channels should send the test pattern at the same time
	CPLD_ADC_nCS = 0;
	cpld_status = write_CPLD_signals();
	usleep(500);
	pt_addr = 0x45;
	spi_data = 0x0010;
	result = AXI_ADC_write_reg(pt_addr,spi_data);
	xil_printf("Result: %d\n",result);
	usleep(500);
	CPLD_ADC_nCS = 1;
	cpld_status = write_CPLD_signals();
	usleep(500);

	// Enables data write
	AXI_ADC_mWriteReg(
			AXI_ADC_BaseAddress,
			AXI_ADC_S00_action_reg_offset,
			1 << AXI_ADC_S00_ready_state_bit_offset);
	// Configuration of test pattern
	CPLD_ADC_nCS = 0;
	cpld_status = write_CPLD_signals();
	usleep(500);
	pt_addr = 0x25;
	//spi_data = 0b0000000101001111; // Ramp pattern
	spi_data = 0b0000000100010011; // Single constant value pattern
	//spi_data = 0b0000000100100011; // 2 constant values pattern
	result = AXI_ADC_write_reg(pt_addr,spi_data);
	xil_printf("Result: %d\n",result);
	usleep(500);
	CPLD_ADC_nCS = 1;
	cpld_status = write_CPLD_signals();
	usleep(500);

	// Enables data write
	AXI_ADC_mWriteReg(
			AXI_ADC_BaseAddress,
			AXI_ADC_S00_action_reg_offset,
			1 << AXI_ADC_S00_ready_state_bit_offset);
	// Second register to configurate test pattern
	CPLD_ADC_nCS = 0;
	cpld_status = write_CPLD_signals();
	usleep(500);
	pt_addr = 0x26;
	spi_data = 0b1111000000000000;
	result = AXI_ADC_write_reg(pt_addr,spi_data);
	xil_printf("Result: %d\n",result);
	usleep(500);
	CPLD_ADC_nCS = 1;
	cpld_status = write_CPLD_signals();
	usleep(500);

	// Enables data write
	AXI_ADC_mWriteReg(
			AXI_ADC_BaseAddress,
			AXI_ADC_S00_action_reg_offset,
			1 << AXI_ADC_S00_ready_state_bit_offset);
	// Set LSB first sent, or MSB first sent.
	CPLD_ADC_nCS = 0;
	cpld_status = write_CPLD_signals();
	usleep(500);
	pt_addr = 0x46;
	//spi_data = 0x8208; //MSB first and 12 bits data communication
	spi_data = 0x8200;  //LSB first and 12 bits data communication
	result = AXI_ADC_write_reg(pt_addr,spi_data);
	xil_printf("Result: %d\n",result);
	usleep(500);
	CPLD_ADC_nCS = 1;
	cpld_status = write_CPLD_signals();
	usleep(500);

	// Enables data write
	AXI_ADC_mWriteReg(
			AXI_ADC_BaseAddress,
			AXI_ADC_S00_action_reg_offset,
			1 << AXI_ADC_S00_ready_state_bit_offset);
	// Interleaved mode disabled
	CPLD_ADC_nCS = 0;
	cpld_status = write_CPLD_signals();
	usleep(500);
	pt_addr = 0x07;
	spi_data = 0x0000; // Disables interleave; see table 55 (page 79) of the ADS5296's datasheet.
	result = AXI_ADC_write_reg(pt_addr,spi_data);
	xil_printf("Result: %d\n",result);
	usleep(500);
	CPLD_ADC_nCS = 1;
	cpld_status = write_CPLD_signals();
	usleep(500);

	// Enables data write
	AXI_ADC_mWriteReg(
			AXI_ADC_BaseAddress,
			AXI_ADC_S00_action_reg_offset,
			1 << AXI_ADC_S00_ready_state_bit_offset);
	// Interleaved mode disabled
	CPLD_ADC_nCS = 0;
	cpld_status = write_CPLD_signals();
	usleep(500);
	pt_addr = 0x40;
	spi_data = 0x8000; // Disables interleave; see table 55 (page 79) of the ADS5296's datasheet.
	result = AXI_ADC_write_reg(pt_addr,spi_data);
	xil_printf("Result: %d\n",result);
	usleep(500);
	CPLD_ADC_nCS = 1;
	cpld_status = write_CPLD_signals();
	usleep(500);

	// Enables data write
	AXI_ADC_mWriteReg(
			AXI_ADC_BaseAddress,
			AXI_ADC_S00_action_reg_offset,
			1 << AXI_ADC_S00_ready_state_bit_offset);
	// Invert channels that are inverted by hardware are inverted again to compensate.
	CPLD_ADC_nCS = 0;
	cpld_status = write_CPLD_signals();
	usleep(500);
	pt_addr = 0x24;
	spi_data = 0x00CE;
	result = AXI_ADC_write_reg(pt_addr,spi_data);
	xil_printf("Result: %d\n",result);
	usleep(500);
	CPLD_ADC_nCS = 1;
	cpld_status = write_CPLD_signals();
	usleep(500);

	// Disables data write
	AXI_ADC_mWriteReg(
			AXI_ADC_BaseAddress,
			AXI_ADC_S00_action_reg_offset, 0);

	xil_printf("Termina configuracion del ADC\n");

}


/**
 * init_DACs
 *
 * Inicializa el hardware del DAC ejecutando secuencias de comando para configurar cada canal.
 * Se escribe un comando de acceso y se espera hasta que el DAC finalice la rutina de envío.
 *
 * No recibe parámetros.
 *
 * Ejemplo:
 *     init_DACs();
 */
void init_DACs()
{
	u32 command_access_b,data_byte;

	command_access_b = 0x80; //8 bits
	data_byte = 0x001; // 12 bits
	//DAC 0
	write_dac(dac_baseaddr,command_access_b,data_byte,0);
	usleep(1000);
	while(is_active(dac_baseaddr)==1); // Espero que modulo DAC termine rutina de envï¿½o de datos

	//DAC 1
	write_dac(dac_baseaddr,command_access_b,data_byte,1);
	usleep(1000);

}

/**
 * setup_DACs
 *
 * Configura los DACs con los valores requeridos para las señales de control. Para cada canal se
 * envía el valor deseado (por ejemplo, dac_values para el DRS4 y trigger_values para el comparador
 * de triggers), verificando que cada operación se realice de forma secuencial.
 *
 * Returns
 * -------
 * int
 *     XST_SUCCESS si la configuración fue exitosa.
 *
 * Ejemplo:
 *     if (setup_DACs() != XST_SUCCESS) {
 *         xil_printf("Error al configurar los DACs.\n");
 *     }
 */
int setup_DACs(void){
	  	usleep (1000);
	  	//DAC 0 serï¿½ el del DRS4
	  	//DAC 1 serï¿½ el del comparador para triggers
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

/**
 * loop_routine
 *
 * Bucle principal de ejecución que se encarga de:
 *
 *  - Verificar y procesar los flags de los timers TCP (TcpFastTmrFlag y TcpSlowTmrFlag) y
 *    llamar a tcp_fasttmr() y tcp_slowtmr() respectivamente.
 *  - Evaluar el estado de flags como flag_senddata y flag_ready2sent para invocar transfer_data()
 *    y enviar datos.
 *  - Gestionar la recepción constante de paquetes mediante xemacif_input().
 *  - Procesar comandos recibidos mediante RecvBuffer; por ejemplo, comandos para reiniciar o
 *    apagar el sistema ("-q", "-DRS4GetState", "-Shutdown", etc.).
 *  - Controlar diversos flags y acciones relacionadas con hardware (GPIO, DAC, ADC, DRS4, etc.).
 *
 * Returns
 * -------
 * int
 *     XST_SUCCESS si el bucle se ejecuta correctamente.
 *
 * Ejemplo:
 *     int status = loop_routine();
 *
 * Diagrama de flujo resumido (ver mapa Mermaid en la documentación anterior):
 *
 *     [Inicio loop_routine] --> [Verificar timers] --> [Envía datos si flag_senddata && flag_ready2sent]
 *     --> [Procesar comandos recibidos] --> [Acciones de hardware] --> [Repetir ciclo]
 */
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
							//Deberia suponer que esto se ejecutarï¿½ a un tiempo suficiente?
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

				/////////////////////////////////////////////////////////////////
				/////////
			    /*c_glob_ev = 0;
			    xil_printf("Previo a funcion process_n_send_data.\n");
			    process_n_send_data(c_glob_ev, 1);  // Simulate ADC data acquisition
			    xil_printf("Post a funcion process_n_send_data.\n");
			    c_glob_ev++;
			    // Print ADC data (assuming it's stored in 'buffer' or a relevant variable)
			    xil_printf("ADC Data for event: %d\n", buffer);*/
			    //////////////////////////////////////////////////////////////////

				//xil_printf("ip and port --> %d.%d.%d.%d %d\n", ((int)ipaddr.addr)&0xff,((int)ipaddr.addr>>8)&0xff, ((int)ipaddr.addr>>16)&0xff, ((int)ipaddr.addr>>24)&0xff, PORT);

	}
	return XST_SUCCESS;
}


/**
 * DRS4_restart_ROI
 *
 * Reinicia el módulo DRS4, que se encarga de la adquisición de datos. La función realiza:
 *
 *  - La deshabilitación temporal de la señal (CPLD_denable) para preparar la reconfiguración.
 *  - Llamadas a DRS4_Init() para reiniciar el módulo y a DRS4_config() para reconfigurar sus parámetros.
 *  - Se reactiva la señal de denenable y se inician el control y la adquisición con DRS4_start_ROI().
 *  - Finalmente, se consulta y se imprime el estado de la máquina de estados del DRS4.
 *
 * No recibe parámetros.
 *
 * Ejemplo:
 *     DRS4_restart_ROI();
 *
 * Nota:
 *     Es crítica para reactivar la adquisición en caso de fallos o para iniciar un nuevo ciclo.
 */
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


/**
 * recv_callback
 *
 * Callback que se invoca cuando se reciben datos a través de la conexión TCP. Esta función:
 *
 *  - Verifica el estado de la conexión y libera el pbuf recibido (tcp_recved).
 *  - Copia los primeros 16 caracteres del payload al buffer global RecvBuffer.
 *  - Compara el contenido del mensaje recibido contra comandos predefinidos (por ejemplo, "-DRS4GetState",
 *    "-Shutdown", "-DRS4Restart", "-get_event", "-check", "-soft_trig", etc.) utilizando la función auxiliar
 *    command_is().
 *  - Según el comando recibido, invoca funciones como get_states_machine(), DRS4_Safe_shutdown(),
 *    DRS4_restart_ROI() o process_n_send_data(), y prepara una respuesta en el buffer global "buffer".
 *
 * Parameters
 * ----------
 * arg : void*
 *     Argumento de callback (usado para identificar la conexión).
 * tpcb : struct tcp_pcb*
 *     Puntero a la estructura PCB de la conexión TCP.
 * p : struct pbuf*
 *     pbuf recibido que contiene el mensaje.
 * err : err_t
 *     Código de error de la operación, en caso de existir.
 *
 * Returns
 * -------
 * err_t
 *     ERR_OK si el procesamiento fue exitoso.
 *
 * Ejemplo:
 *     // Se asigna en start_application() para que se invoque al recibir datos:
 *     tcp_recv(pcb, recv_callback);
 *
 * Detalle:
 *     La función utiliza memcpy para copiar los datos, snprintf para formatear la respuesta,
 *     y modifica flags globales (flag_senddata) para indicar que se deben enviar respuestas.
 */
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
	//int comp_string; //No funciono la comparaciï¿½n de string, al parecer python y C operan distinto...cosas extraï¿½as al usar strcmp() en el procesador;
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
			//flag_senddata = 1 ;
			flag_senddata = 0 ;
			xil_printf("\n# sending data\n");
//					XGpio_DiscreteWrite(&gpio,2,0x0);
//					state = XGpio_DiscreteRead(&gpio,1);
//					xil_printf("\n# state = %x", state);
//					trigger_counter = (state >> 12) & 0xFFF;
			xil_printf("TCP Buffer to be sent:<----\n%s\n--->\n",buffer);
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

/**
 * DRS4_DTAP_meas
 *
 * Realiza una medición de frecuencia o contador (DTAP) para un mezzanine especificado.
 * Lee registros de monitoreo (CLK_MON) en función del parámetro "sel_mezz" (de 1 a 5) y calcula
 * la frecuencia como:
 *
 *         DTAP_freq = (contador / 8192.0) * 100.0
 *
 * Parameters
 * ----------
 * sel_mezz : int
 *     Selecciona el mezzanine (1 a 5) para el que se realiza la medición.
 *
 * Returns
 * -------
 * float
 *     La frecuencia calculada en función del contador leído.
 *
 * Ejemplo:
 *     float freq = DRS4_DTAP_meas(3);
 *
 * Nota:
 *     Si se ingresa un valor fuera del rango [1,5], se imprime un mensaje de error y se retorna 0.0.
 */
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


