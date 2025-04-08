/*
 * CPLD_driver.h
 *
 *  Created on: 06-07-2023
 *      Author: victor
 */

#ifndef SRC_CPLD_DRIVER_H_
#define SRC_CPLD_DRIVER_H_
/*
 * Driver file to control ipcore of CPLD of CMB40
 * It will implement functions to assign values to the AXI ip core using the slave
 * registers inside the core.
 *
 * denable <= slv_reg0(0);
 * nshdn <= slv_reg0(1);
 * dac_sel <= slv_reg0(3) & slv_reg0(2);
 * nRst <= slv_reg0(4);
 * mux_cal_signal <= slv_reg0(5);
 * SPI_mezz_sel <= slv_reg0(8 downto 6);
 * SPI_WR_en <= slv_reg0(9);
 * mezz_mux <= slv_reg0(12 downto 10);
 * slv_reg1(0) <= wr_rdy;
 *
 *
 */
#include "sleep.h"

#include "xil_types.h"
#include "xstatus.h"
#include "xil_io.h"



#define CPLD_ctrl_BaseAddr XPAR_CPLD_CTRL_0_S00_AXI_BASEADDR

u16 CPLD_denable,CPLD_nshdn,CPLD_dac_sel1,CPLD_dac_sel0,CPLD_nRst,CPLD_mux0_0,CPLD_mux0_1,CPLD_Tcal,
CPLD_ADC_nCS,CPLD_SPI_mezz_sel, CPLD_SPI_wr_en,CPLD_mezz_mux,CPLD_gain_mux;
u16 CPLD_wr_rdy;
u32 write_CPLD_signals();
u16 read_cpld_word();
u8 read_CPLD_status();
void Mezz_CPLD_init(u8 mezz_sel);
void CPLD_mezz_power_off(u8 mezz_sel);



#endif /* SRC_CPLD_DRIVER_H_ */
