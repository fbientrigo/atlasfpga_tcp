

/***************************** Include Files *******************************/
#include "AXI_DAC.h"

/************************** Function Definitions ***************************/

void AXI_DAC_config (void){

	AXI_DAC_mWriteReg(
			XPAR_AXI_DAC_0_S00_AXI_BASEADDR,
			AXI_DAC_S00_action_reg_offset,
			1 << AXI_DAC_S00_dac_conf_bit_offset);
}


u32 AXI_DAC_check_status (void){

	return AXI_DAC_mReadReg(
			XPAR_AXI_DAC_0_S00_AXI_BASEADDR,
			AXI_DAC_S00_action_reg_offset);
}
u32 AXI_DAC_check_DAC_reg (void){

	return AXI_DAC_mReadReg(
			XPAR_AXI_DAC_0_S00_AXI_BASEADDR,
			AXI_DAC_S00_DAC_reg_offset);
}
int AXI_DAC_set_ch (u32 DAC_n, u32 DAC_value){

	if (AXI_DAC_check_status() != 0x10)
	{
		usleep(1000); // give some time, just in case..
		if (AXI_DAC_check_status() != 0x10)
		{
			return -1; // there might be some problem
		}

	}
	if (DAC_value > 4065){
		return -2;
	}
	AXI_DAC_mWriteReg(
		XPAR_AXI_DAC_0_S00_AXI_BASEADDR,
		AXI_DAC_S00_DAC_reg_offset,
		(DAC_n << AXI_DAC_S00_DAC_n_bit_offset) + (DAC_value << AXI_DAC_S00_DAC_value_bit_offset)
		);
	AXI_DAC_mWriteReg(
		XPAR_AXI_DAC_0_S00_AXI_BASEADDR,
		AXI_DAC_S00_action_reg_offset,
		1 << AXI_DAC_S00_dac_write_bit_offset
		);

	return 0;
}

u32 AXI_DAC_read_ch (u32 DAC_n){

	if (AXI_DAC_check_status() == 0x10)
	{
		AXI_DAC_mWriteReg(
			XPAR_AXI_DAC_0_S00_AXI_BASEADDR,
			AXI_DAC_S00_DAC_reg_offset,
			(DAC_n << AXI_DAC_S00_DAC_n_bit_offset)
			);
		AXI_DAC_mWriteReg(
				XPAR_AXI_DAC_0_S00_AXI_BASEADDR,
				AXI_DAC_S00_action_reg_offset,
				1 << AXI_DAC_S00_dac_read_bit_offset);
		/*
		 * *The above instruction trigger acquisition from device, which comunnicates with i2c protocol
		 * assumes 100KHz Baudrate, about 28 clock cycles are required.
		 * assumes 1000us is enough to get an answer
		 */
		usleep(500);
		return AXI_DAC_mReadReg(
				XPAR_AXI_DAC_0_S00_AXI_BASEADDR,
				AXI_DAC_S00_pointer_reg_offset);
	}else
		return -1;
	return -2;
}

u32 AXI_DAC_read_ptr (u32 ptr_tbr){

	if (AXI_DAC_check_status() == 0x10)
	{
		AXI_DAC_mWriteReg(
			XPAR_AXI_DAC_0_S00_AXI_BASEADDR,
			AXI_DAC_S00_pointer_reg_offset,
			(ptr_tbr << AXI_DAC_S00_ptr_tbr_bit_offset)
			);
		AXI_DAC_mWriteReg(
				XPAR_AXI_DAC_0_S00_AXI_BASEADDR,
				AXI_DAC_S00_action_reg_offset,
				1 << AXI_DAC_S00_read_pointer_bit_offset);
		/*
		 * *The above instruction trigger acquisition from device, which comunnicates with i2c protocol
		 * assumes 100KHz Baudrate, about 35 clock cycles are required.
		 * empirically 1000us is enough to get an answer
		 */
		usleep(1000);
		return AXI_DAC_mReadReg(
				XPAR_AXI_DAC_0_S00_AXI_BASEADDR,
				AXI_DAC_S00_pointer_reg_offset);
	}else
		return -1;
	return -2;
}

