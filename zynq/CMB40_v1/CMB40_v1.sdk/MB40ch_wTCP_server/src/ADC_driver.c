

/***************************** Include Files *******************************/
#include "ADC_driver.h"

/************************** Function Definitions ***************************/

void AXI_ADC_config (void){

	AXI_ADC_mWriteReg(
			AXI_ADC_BaseAddress,
			AXI_ADC_S00_action_reg_offset,
			1 << AXI_ADC_S00_adc_conf_bit_offset);
}


u32 AXI_ADC_check_status (void){

	return AXI_ADC_mReadReg(
			AXI_ADC_BaseAddress,
			AXI_ADC_S00_action_reg_offset);
}

u32 AXI_ADC_check_read_reg (void){

	return AXI_ADC_mReadReg(
			AXI_ADC_BaseAddress,
			AXI_ADC_S00_read_reg_offset);
}

u32 AXI_ADC_send_50M_burst (void){

	if (AXI_ADC_check_status() == 0x10)
	{
		AXI_ADC_mWriteReg(
				AXI_ADC_BaseAddress,
				AXI_ADC_S00_action_reg_offset,
			(1 << AXI_ADC_S00_50M_burst_onposedge_offset)
			);
		usleep(10);
		AXI_ADC_mWriteReg(
				AXI_ADC_BaseAddress,
				AXI_ADC_S00_action_reg_offset,
			(0 << AXI_ADC_S00_50M_burst_onposedge_offset)
			);

		return 0;
	}else
		return -1;
	return -2;
}

u32 AXI_ADC_send_16M_burst (void){

	if (AXI_ADC_check_status() == 0x10)
	{
		AXI_ADC_mWriteReg(
				AXI_ADC_BaseAddress,
				AXI_ADC_S00_action_reg_offset,
			(1 << AXI_ADC_S00_16M_burst_onposedge_offset)
			);
		usleep(10);
		AXI_ADC_mWriteReg(
				AXI_ADC_BaseAddress,
				AXI_ADC_S00_action_reg_offset,
			(0 << AXI_ADC_S00_16M_burst_onposedge_offset)
			);

		return 0;
	}else
		return -1;
	return -2;
}


u32 AXI_ADC_read_ptr (u32 ptr_tbr){

	if (AXI_ADC_check_status() == 0x10)
	{
		AXI_ADC_mWriteReg(
				AXI_ADC_BaseAddress,
				AXI_ADC_S00_read_reg_offset,
			(ptr_tbr << AXI_ADC_S00_pointer_bit_offset)
			);
		AXI_ADC_mWriteReg(
				AXI_ADC_BaseAddress,
				AXI_ADC_S00_action_reg_offset,
				1 << AXI_ADC_S00_adc_read_bit_offset);

		usleep(1000);
		return AXI_ADC_mReadReg(
				AXI_ADC_BaseAddress,
				AXI_ADC_S00_read_reg_offset) >> AXI_ADC_S00_read_bit_offset ;
	}else
		return -1;
	return -2;
}

u32 AXI_ADC_write_reg (u16 ptr_tbw, u16 data){

	if (AXI_ADC_check_status() == 0x10)
	{
		AXI_ADC_mWriteReg(
				AXI_ADC_BaseAddress,
				AXI_ADC_S00_write_n_pointer_reg_offset,
			(ptr_tbw << AXI_ADC_S00_pointer_bit_offset) | (data << AXI_ADC_S00_write_bit_offset)
			);
		AXI_ADC_mWriteReg(
				AXI_ADC_BaseAddress,
				AXI_ADC_S00_action_reg_offset,
				1 << AXI_ADC_S00_adc_write_bit_offset);

		usleep(1000);
		AXI_ADC_check_status();
	}else
		return -1;
	return -2;
}

