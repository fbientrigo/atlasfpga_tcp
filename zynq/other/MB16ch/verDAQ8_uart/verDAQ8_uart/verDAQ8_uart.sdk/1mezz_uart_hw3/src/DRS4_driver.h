/*
 * DRS4_driver.h
 *
 *  Created on: Apr 22, 2020
 *      Author: Rimsky
 */

#ifndef SRC_DRS4_DRIVER_H_
#define SRC_DRS4_DRIVER_H_

#include "DRS4_firmware.h"
#include "sleep.h"

//#define DRS4_base_addr XPAR_DRS4_FIRMWARE_0_S00_AXI_BASEADDR
#warning CHECK FOR the right DRS4 base address the one xparameters is wrong
#define DRS4_base_addr  0x43C20000 // for some reason baseaddress was wrong

void DRS4_Init ();
int DRS4_config ();
int DRS4_start_ROI();
int DRS4_start_FullRO();
void DRS4_Safe_shutdown ();



#endif /* SRC_DRS4_DRIVER_H_ */
