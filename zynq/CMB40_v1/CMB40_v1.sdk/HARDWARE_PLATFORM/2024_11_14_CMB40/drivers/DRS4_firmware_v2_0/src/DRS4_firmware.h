
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

//#define DRS4_base_addr XPAR_DRS4_FIRMWARE_0_S00_AXI_BASEADDR

u32 ctrl_sig,register_signals;
u32 SR_init;
u32 Conf_reg_init;
u32 ROI;
u32 Full_read;
u32 refclk_counter; //Formula is (DRS4_CLK*1024/GSPS)
u32 readout_cells;
u32 conf_bits;
u32 delay_trig;
u32 axi_rst;
u32 states_vector;
u32 stop_cell;
u32 ROFS,start_adq;
u32 nReset;

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
void write_DRS4_control_signals(u32 DRS4_base_addr);
void write_DRS4_register_signals(u32 DRS4_base_addr);

u32 get_states_machine(u32 DRS4_base_addr);
u32 get_stop_cell_SROUT(u32 DRS4_base_addr);
#endif // DRS4_FIRMWARE_H
