/*
 * DRS4_driver.c
 *
 *  Created on: Apr 22, 2020
 *      Author: Rimsky
 */

#include "DRS4_driver.h"

u32 ctrl_sig,register_signals;
u32 SR_init = 0;
u32 Conf_reg_init = 0;
u32 ROI = 0;
u32 Full_read = 0;
u32 refclk_counter = 24; //Formula is (DRS4_CLK*1024/GSPS)
u32 readout_cells = 1024;
u32 conf_bits = 7;
u32 delay_trig = 30; //must be always greater than zero
u32 axi_rst = 1;
u32 states_vector = 0;
u32 stop_cell = 0;
u32 ROFS = 0;
u32 nReset = 0;

u32 state1, state2, state3, state4;


void DRS4_Init (){
	axi_rst = 1;
	DRS_start_adq = 0;
	nReset = 0;
	SR_init = 0;
	Conf_reg_init = 0;
	ROI = 0;
	Full_read = 0;
	write_DRS4_control_signals();
	axi_rst = 0;
	write_DRS4_control_signals();
	nReset = 1;
	usleep (10);
	write_DRS4_control_signals();
}

int DRS4_config (){
	int state = 0;
	write_DRS4_register_signals(); // VERY IMPORTANT!!!
	SR_init = 1;
	write_DRS4_control_signals();
	usleep(110);
	state = get_states_machine(); //empirically here is ready
	if (state != 2){
		xil_printf("#ERROR#: failed SR_init\n");
		return -1;
	}
	SR_init = 0;
	Conf_reg_init = 1;
	write_DRS4_control_signals();
	usleep(50);
	state = get_states_machine(); //empirically here is ready
	if (state != 5){
		xil_printf("#ERROR#: failed Conf_reg_init\n");
		return -1;
	}
	Conf_reg_init = 0;
	return 0;
}

int DRS4_start_ROI(){
	int state = 0;
	ROI = 1;
	write_DRS4_control_signals(); //empirically here is ready few clocks after
	usleep(1);
	state = get_states_machine();
	if (state != 6){
		xil_printf("#ERROR#: failed to star ROI: current state is %d\n", state);
		return -1;
	}
	ROI = 0;
	return 0;
}
int DRS4_start_FullRO(){
	int state = 0;
	Full_read = 1;
	write_DRS4_control_signals(); //empirically here is ready few clocks after
	usleep(1);
	state = get_states_machine();
	if (state != 21){
		xil_printf("#ERROR#: failed to star FullRO\n");
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
	write_DRS4_control_signals();
	nReset = 0;
	write_DRS4_control_signals();

	axi_rst = 0;
	nReset = 1;
	xil_printf("DRS4 shutdown complete\n");

}

u32 DRS4_ctrl_signal ()
{
	u32 ctrl_signal;
	u32 mask = 0x00000001;
	ctrl_signal = nReset & mask;
	ctrl_signal = ctrl_signal | ((SR_init  << 1) & (mask << 1));
	ctrl_signal = ctrl_signal | ((Conf_reg_init << 2) & (mask << 2));
	ctrl_signal = ctrl_signal | ((ROI  <<  3) & (mask << 3));
	ctrl_signal = ctrl_signal | ((Full_read  << 4) & (mask << 4));
	ctrl_signal = ctrl_signal | ((axi_rst  << 5) & (mask << 5));
	ctrl_signal = ctrl_signal | ((ROFS  << 6) & (mask << 6));
	ctrl_signal = ctrl_signal | ((DRS_start_adq  << 7) & (mask << 7));

	return ctrl_signal;

}

u32 DRS4_register_signal()
{
	u32 mask_refclk = 0x0000007F;
	u32 mask_readout_cells = 0x000FFF80;
	u32 mask_config_bits = 0x00700000;
	u32 mask_trigger_delay = 0x7F800000;

	u32 register_signal = 0;

	register_signal = refclk_counter & mask_refclk;
	register_signal = register_signal | ((readout_cells<<7) & mask_readout_cells);
	register_signal = register_signal | ((conf_bits<<20) & mask_config_bits);
	register_signal = register_signal | ((delay_trig<<23) & mask_trigger_delay);

	return register_signal;

}

void write_DRS4_control_signals()
{
    ctrl_sig = DRS4_ctrl_signal();
    Xil_Out32(DRS4_base_addr+DRS4_ctrl_signals,ctrl_sig);

}

void write_DRS4_register_signals()
{
	register_signals = DRS4_register_signal();
	Xil_Out32(DRS4_base_addr+DRS4_register_signals,register_signals);
}
u32 get_states_machine()
{
    u32 states;
    states = Xil_In32(DRS4_base_addr+DRS4_read_signals) & 0x0000001f;
    return(states);
}
u32 get_stop_cell_SROUT()
{
    u32 stop_cell;
    stop_cell = (Xil_In32(DRS4_base_addr+DRS4_read_signals) >> 5 ) & 0x0003ff;
    return (stop_cell);
}
