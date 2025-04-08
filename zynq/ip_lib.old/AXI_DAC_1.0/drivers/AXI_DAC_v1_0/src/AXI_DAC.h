
#ifndef AXI_DAC_H
#define AXI_DAC_H


/****************** Include Files ********************/
#include "xil_types.h"
#include "xstatus.h"
#include "xparameters.h"
#include "xil_io.h"
#include "sleep.h"

#define AXI_DAC_S00_AXI_SLV_REG0_OFFSET 0
#define AXI_DAC_S00_AXI_SLV_REG1_OFFSET 4
#define AXI_DAC_S00_AXI_SLV_REG2_OFFSET 8
#define AXI_DAC_S00_AXI_SLV_REG3_OFFSET 12

#define AXI_DAC_S00_action_reg_offset 	AXI_DAC_S00_AXI_SLV_REG0_OFFSET
#define AXI_DAC_S00_DAC_reg_offset 		AXI_DAC_S00_AXI_SLV_REG1_OFFSET
#define AXI_DAC_S00_pointer_reg_offset 	AXI_DAC_S00_AXI_SLV_REG2_OFFSET

#define AXI_DAC_S00_dac_conf_bit_offset 	0
#define AXI_DAC_S00_dac_write_bit_offset 	1
#define AXI_DAC_S00_dac_read_bit_offset 	2
#define AXI_DAC_S00_read_pointer_bit_offset 3
#define AXI_DAC_S00_ready_state_bit_offset 	4

#define AXI_DAC_S00_DAC_n_bit_offset 		16
#define AXI_DAC_S00_DAC_value_bit_offset 	0
#define AXI_DAC_S00_ptr_content_bit_offset 	16
#define AXI_DAC_S00_ptr_tbr_bit_offset 		0

/**************************** Type Definitions *****************************/
/**
 *
 * Write a value to a AXI_DAC register. A 32 bit write is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is written.
 *
 * @param   BaseAddress is the base address of the AXI_DACdevice.
 * @param   RegOffset is the register offset from the base to write to.
 * @param   Data is the data written to the register.
 *
 * @return  None.
 *
 * @note
 * C-style signature:
 * 	void AXI_DAC_mWriteReg(u32 BaseAddress, unsigned RegOffset, u32 Data)
 *
 */
#define AXI_DAC_mWriteReg(BaseAddress, RegOffset, Data) \
  	Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))

/**
 *
 * Read a value from a AXI_DAC register. A 32 bit read is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is read from the register. The most significant data
 * will be read as 0.
 *
 * @param   BaseAddress is the base address of the AXI_DAC device.
 * @param   RegOffset is the register offset from the base to write to.
 *
 * @return  Data is the data from the register.
 *
 * @note
 * C-style signature:
 * 	u32 AXI_DAC_mReadReg(u32 BaseAddress, unsigned RegOffset)
 *
 */
#define AXI_DAC_mReadReg(BaseAddress, RegOffset) \
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
 * @param   baseaddr_p is the base address of the AXI_DAC instance to be worked on.
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
XStatus AXI_DAC_Reg_SelfTest(void * baseaddr_p);

void AXI_DAC_config (void);
u32 AXI_DAC_check_status (void);
int AXI_DAC_set_ch (u32 DAC_n, u32 DAC_value);
u32 AXI_DAC_read_ch (u32 DAC_n);
u32 AXI_DAC_read_ptr (u32 ptr_tbr);
u32 AXI_DAC_check_DAC_reg (void);

#endif // AXI_DAC_H
