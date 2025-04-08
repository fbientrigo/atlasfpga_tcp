
#ifndef AXI_ADC_H
#define AXI_ADC_H


/****************** Include Files ********************/
#include "xil_types.h"
#include "xstatus.h"
#include "xparameters.h"
#include "sleep.h"

#define AXI_ADC_BaseAddress XPAR_ADC_AXI_ADC_0_S00_AXI_BASEADDR
#define AXI_ADC_S00_AXI_ctrl_SLV_REG0_OFFSET 0
#define AXI_ADC_S00_AXI_ctrl_SLV_REG1_OFFSET 4
#define AXI_ADC_S00_AXI_ctrl_SLV_REG2_OFFSET 8
#define AXI_ADC_S00_AXI_ctrl_SLV_REG3_OFFSET 12

#define AXI_ADC_S00_action_reg_offset			AXI_ADC_S00_AXI_ctrl_SLV_REG0_OFFSET
#define AXI_ADC_S00_write_n_pointer_reg_offset	AXI_ADC_S00_AXI_ctrl_SLV_REG1_OFFSET
#define AXI_ADC_S00_read_reg_offset				AXI_ADC_S00_AXI_ctrl_SLV_REG2_OFFSET


//bits from action register
#define AXI_ADC_S00_adc_conf_bit_offset 		0
#define AXI_ADC_S00_adc_write_bit_offset 		1
#define AXI_ADC_S00_adc_read_bit_offset 		2
#define AXI_ADC_S00_ready_state_bit_offset 		4
#define AXI_ADC_S00_50M_burst_onposedge_offset 	8
#define AXI_ADC_S00_16M_burst_onposedge_offset 	9

//bits from write and pointer register
#define AXI_ADC_S00_write_bit_offset 	0
#define AXI_ADC_S00_pointer_bit_offset 	16

//bits from read register
#define AXI_ADC_S00_read_bit_offset 	16



/**************************** Type Definitions *****************************/
/**
 *
 * Write a value to a AXI_ADC register. A 32 bit write is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is written.
 *
 * @param   BaseAddress is the base address of the AXI_ADCdevice.
 * @param   RegOffset is the register offset from the base to write to.
 * @param   Data is the data written to the register.
 *
 * @return  None.
 *
 * @note
 * C-style signature:
 * 	void AXI_ADC_mWriteReg(u32 BaseAddress, unsigned RegOffset, u32 Data)
 *
 */
#define AXI_ADC_mWriteReg(BaseAddress, RegOffset, Data) \
  	Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))

/**
 *
 * Read a value from a AXI_ADC register. A 32 bit read is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is read from the register. The most significant data
 * will be read as 0.
 *
 * @param   BaseAddress is the base address of the AXI_ADC device.
 * @param   RegOffset is the register offset from the base to write to.
 *
 * @return  Data is the data from the register.
 *
 * @note
 * C-style signature:
 * 	u32 AXI_ADC_mReadReg(u32 BaseAddress, unsigned RegOffset)
 *
 */
#define AXI_ADC_mReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))

/************************** Function Prototypes ****************************/
/**
 *
 * Run a self-test on the driver/device. Note this may be a destructive test if
 * resets of the device are performed.
 *
 * If the hardware system is not built correctly, this function may never
 * return to the caller.
 *
 * @param   baseaddr_p is the base address of the AXI_ADC instance to be worked on.
 *
 * @return
 *
 *    - XST_SUCCESS   if all self-test code passed
 *    - XST_FAILURE   if any self-test code failed
 *
 * @note    Caching must be turned off for this function to work.
 * @note    Self test may fail if data memory and device are not on the same bus.
 *
 */
XStatus AXI_ADC_Reg_SelfTest(void * baseaddr_p);


void AXI_ADC_config (void);
u32 AXI_ADC_check_status (void);
u32 AXI_ADC_check_read_reg (void);
u32 AXI_ADC_read_ptr (u32 ptr_tbr);
u32 AXI_ADC_write_reg (u16 ptr_tbw, u16 data);
u32 AXI_ADC_send_50M_burst (void);
u32 AXI_ADC_send_16M_burst (void);

#endif // AXI_ADC_H
