/*
 * DRS4_driver.c
 *
 *  Created on: Apr 22, 2020
 *      Author: Rimsky
 */

#include "DRS4_driver.h"


u32 state1, state2, state3, state4;


void DRS4_Init (){
	refclk_counter = 24; //Formula is (DRS4_CLK*1024/GSPS)
	readout_cells= 1024;
	conf_bits = 7;
	delay_trig = 255;
	axi_rst = 1;
	nReset = 0;
	SR_init = 0;
	Conf_reg_init = 0;
	ROI = 0;
	Full_read = 0;
	write_DRS4_control_signals(DRS4_base_addr);
	axi_rst = 0;
	write_DRS4_control_signals(DRS4_base_addr);
	nReset = 1;
	usleep (10);
	write_DRS4_control_signals(DRS4_base_addr);
}

int DRS4_config (){
	int state = 0;
	write_DRS4_register_signals(DRS4_base_addr); // VERY IMPORTANT!!!
	SR_init = 1;
	write_DRS4_control_signals(DRS4_base_addr);
	usleep(110);
	state = get_states_machine(DRS4_base_addr); //empirically here is ready
	if (state != 2){
		xil_printf("#ERROR#: failed SR_init\n");
		SR_init = 0;
		return -1;
	}
	SR_init = 0;
	Conf_reg_init = 1;
	write_DRS4_control_signals(DRS4_base_addr);
	usleep(50);
	state = get_states_machine(DRS4_base_addr); //empirically here is ready
	xil_printf("State %d",state);
	if (state != 5){
		xil_printf("#ERROR#: failed Conf_reg_init\n");
		Conf_reg_init = 0;
		return -1;
	}
	Conf_reg_init = 0;
	return 0;
}

int DRS4_start_ROI(){
	int state = 0;
	ROI = 1;
	write_DRS4_control_signals(DRS4_base_addr); //empirically here is ready few clocks after
	usleep(5);
	state = get_states_machine(DRS4_base_addr);
	xil_printf("State %d",state);

	if (state != 6){
		xil_printf("#ERROR#: failed to star ROI\n");
		ROI = 0;
		return -1;
	}
	ROI = 0;
	return 0;
}
int DRS4_start_FullRO(){
	int state = 0;
	Full_read = 1;
	write_DRS4_control_signals(DRS4_base_addr); //empirically here is ready few clocks after
	usleep(1);
	state = get_states_machine(DRS4_base_addr);
	if (state != 13){
		xil_printf("#ERROR#: failed to star FullRO, state: %d\n",state);
		Full_read = 0;
		return -1;
	}
	Full_read = 0;
	return 0;
}

void DRS4_Safe_shutdown (){
	axi_rst = 1;
	nReset = 1;
	SR_init = 0;
	Conf_reg_init = 0;
	ROI = 0;
	Full_read = 0;
	write_DRS4_control_signals(DRS4_base_addr);
	nReset = 0;
	write_DRS4_control_signals(DRS4_base_addr);

	axi_rst = 0;
	nReset = 1;
}

