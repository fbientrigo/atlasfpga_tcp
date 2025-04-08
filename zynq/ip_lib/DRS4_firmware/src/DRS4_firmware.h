
#ifndef DRS4_FIRMWARE_H
#define DRS4_FIRMWARE_H


/****************** Include Files ********************/
#include "xil_types.h"
#include "xstatus.h"
#include "xil_io.h"

#define DRS4_FIRMWARE_S00_AXI_SLV_REG0_OFFSET 0
#define DRS4_FIRMWARE_S00_AXI_SLV_REG1_OFFSET 4
#define DRS4_FIRMWARE_S00_AXI_SLV_REG2_OFFSET 8
#define DRS4_FIRMWARE_S00_AXI_SLV_REG3_OFFSET 12


#define DRS4_ctrl_signals DRS4_FIRMWARE_S00_AXI_SLV_REG0_OFFSET
#define DRS4_register_signals DRS4_FIRMWARE_S00_AXI_SLV_REG1_OFFSET
#define DRS4_read_signals DRS4_FIRMWARE_S00_AXI_SLV_REG2_OFFSET

#define DRS4_base_addr XPAR_DRS4_FIRMWARE_0_S00_AXI_BASEADDR

/**************************** Type Definitions *****************************/
/**
 *
 * Write a value to a DRS4_FIRMWARE register. A 32 bit write is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is written.
 *
 * @param   BaseAddress is the base address of the DRS4_FIRMWAREdevice.
 * @param   RegOffset is the register offset from the base to write to.
 * @param   Data is the data written to the register.
 *
 * @return  None.
 *
 * @note
 * C-style signature:
 * 	void DRS4_FIRMWARE_mWriteReg(u32 BaseAddress, unsigned RegOffset, u32 Data)
 *
 */
#define DRS4_FIRMWARE_mWriteReg(BaseAddress, RegOffset, Data) \
  	Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))

/**
 *
 * Read a value from a DRS4_FIRMWARE register. A 32 bit read is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is read from the register. The most significant data
 * will be read as 0.
 *
 * @param   BaseAddress is the base address of the DRS4_FIRMWARE device.
 * @param   RegOffset is the register offset from the base to write to.
 *
 * @return  Data is the data from the register.
 *
 * @note
 * C-style signature:
 * 	u32 DRS4_FIRMWARE_mReadReg(u32 BaseAddress, unsigned RegOffset)
 *
 */
#define DRS4_FIRMWARE_mReadReg(BaseAddress, RegOffset) \
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
 * @param   baseaddr_p is the base address of the DRS4_FIRMWARE instance to be worked on.
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
XStatus DRS4_FIRMWARE_Reg_SelfTest(void * baseaddr_p);
u32 DRS4_ctrl_signal ();
u32 DRS4_register_signal();
void write_DRS4_control_signals();
void write_DRS4_register_signals();

u32 get_states_machine();
u32 get_stop_cell_SROUT();
#endif // DRS4_FIRMWARE_H
