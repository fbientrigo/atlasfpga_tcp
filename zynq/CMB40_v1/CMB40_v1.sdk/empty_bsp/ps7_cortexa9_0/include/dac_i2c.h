
#ifndef DAC_I2C_H
#define DAC_I2C_H


/****************** Include Files ********************/
#include "xil_types.h"
#include "xstatus.h"
#include "xil_io.h"

#define DAC_I2C_S00_AXI_SLV_REG0_OFFSET 0
#define DAC_I2C_S00_AXI_SLV_REG1_OFFSET 4
#define DAC_I2C_S00_AXI_SLV_REG2_OFFSET 8
#define DAC_I2C_S00_AXI_SLV_REG3_OFFSET 12


/**************************** Type Definitions *****************************/
/**
 *
 * Write a value to a DAC_I2C register. A 32 bit write is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is written.
 *
 * @param   BaseAddress is the base address of the DAC_I2Cdevice.
 * @param   RegOffset is the register offset from the base to write to.
 * @param   Data is the data written to the register.
 *
 * @return  None.
 *
 * @note
 * C-style signature:
 * 	void DAC_I2C_mWriteReg(u32 BaseAddress, unsigned RegOffset, u32 Data)
 *
 */
#define DAC_I2C_mWriteReg(BaseAddress, RegOffset, Data) \
  	Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))

/**
 *
 * Read a value from a DAC_I2C register. A 32 bit read is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is read from the register. The most significant data
 * will be read as 0.
 *
 * @param   BaseAddress is the base address of the DAC_I2C device.
 * @param   RegOffset is the register offset from the base to write to.
 *
 * @return  Data is the data from the register.
 *
 * @note
 * C-style signature:
 * 	u32 DAC_I2C_mReadReg(u32 BaseAddress, unsigned RegOffset)
 *
 */
#define DAC_I2C_mReadReg(BaseAddress, RegOffset) \
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
 * @param   baseaddr_p is the base address of the DAC_I2C instance to be worked on.
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
XStatus DAC_I2C_Reg_SelfTest(void * baseaddr_p);

u32 command_access(u32 ca_byte); //Escribe el bit de acceso en el IPCORE
u32 dac_byte(u32 data_dac); // esta función escribe en el IPCORE el dato
int write_dac_voltage(u32 BaseAddr,u32 ch, u32 data,u32 ADDR);
void write_dac(u32 BaseAddr,u32 ca_byte,u32 data,u32 ADDR);
void read_dac(u32 BaseAddr); // habilitar lectura de i2c
int read_ack_status(u32 BaseAddr); //Lee bit de status del ACK del i2c

int is_active();
#endif // DAC_I2C_H
