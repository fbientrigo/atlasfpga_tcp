

/***************************** Include Files *******************************/
#include "DRS4_firmware.h"

/************************** Function Definitions ***************************/
//Parameter set for sampling at 1GSPS and readout 300 cells

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

void write_DRS4_control_signals(u32 DRS4_base_addr)
{    
    ctrl_sig = DRS4_ctrl_signal();
    Xil_Out32(DRS4_base_addr+DRS4_ctrl_signals,ctrl_sig);
    
}

void write_DRS4_register_signals(u32 DRS4_base_addr)
{
	register_signals = DRS4_register_signal();
	Xil_Out32(DRS4_base_addr+DRS4_register_signals,register_signals);
}
u32 get_states_machine(u32 DRS4_base_addr)
{
    u32 states;
    states = Xil_In32(DRS4_base_addr+DRS4_read_signals) & 0x0000001f;
    return(states);
}
u32 get_stop_cell_SROUT(u32 DRS4_base_addr)
{
    u32 stop_cell;
    stop_cell = (Xil_In32(DRS4_base_addr+DRS4_read_signals) >> 5 ) & 0x0003ff;
    return (stop_cell);
}