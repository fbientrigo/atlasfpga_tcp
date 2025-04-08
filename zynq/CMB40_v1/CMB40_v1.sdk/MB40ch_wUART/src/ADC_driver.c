

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
	//if (AXI_ADC_check_status() == 0x02)
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

/*u32 AXI_ADC_read_regs (u32 ptr_tbr){

	//if (AXI_ADC_check_status() == 0x10
	if (AXI_ADC_check_status() == 0x02)
	{
		// Enable read mode
		u16 pt_addr;
		u16 spi_data;
		u32 result;
		pt_addr = 0x01;
		spi_data = 0x0001;
		result = AXI_ADC_write_reg(pt_addr,spi_data);
		AXI_ADC_mWriteReg(
				AXI_ADC_BaseAddress,
				AXI_ADC_S00_AXI_ctrl_SLV_REG0_OFFSET,0x10);
		AXI_ADC_mWriteReg(
				AXI_ADC_BaseAddress,
				AXI_ADC_S00_action_reg_offset,
				1 << AXI_ADC_S00_adc_read_bit_offset);

		usleep(1000);
		return AXI_ADC_mReadReg(
				AXI_ADC_BaseAddress,
				AXI_ADC_S00_AXI_ctrl_SLV_REG2_OFFSET) >> AXI_ADC_S00_read_bit_offset ;
	}else
		return -1;
	return -2;
}*/


// Function to read from an ADC register
u32 AXI_ADC_read_register(u16 register_address) {
    // Step 1: Write the target register address to the write and pointer register
    AXI_ADC_mWriteReg(AXI_ADC_BaseAddress, AXI_ADC_S00_write_n_pointer_reg_offset,
                      ((u32)register_address << AXI_ADC_S00_pointer_bit_offset));

    // Step 2: Trigger a read operation by setting the `read` bit in the action register
    AXI_ADC_mWriteReg(AXI_ADC_BaseAddress, AXI_ADC_S00_action_reg_offset,
                      (1 << AXI_ADC_S00_adc_read_bit_offset));

    // Step 3: Wait for the `ready` state bit to be set
    while (!(AXI_ADC_check_status() & (1 << AXI_ADC_S00_ready_state_bit_offset))) {
        // Optional: Add a timeout mechanism to prevent infinite loops
    }

    // Step 4: Retrieve the data from the read register
    u32 read_data = AXI_ADC_mReadReg(AXI_ADC_BaseAddress, AXI_ADC_S00_read_reg_offset);

    // Step 5: Return the data
    return read_data;
}

