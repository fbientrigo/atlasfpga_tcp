/*
 * gpio_handler.h
 *
 *  Created on: Dec 6, 2020
 *      Author: Rimsky
 */

#ifndef SRC_GPIO_HANDLER_H_
#define SRC_GPIO_HANDLER_H_

#include "xil_types.h"
#include "xstatus.h"
#include "xil_io.h"
#include "xgpio.h"
/*
#define Trigger_mask 0x00000001
#define TEST_mask 0x00000006
#define DAC_mask 0x00000018
#define VETO_mask 0x00000020
#define MUX_mask 0x000000C0
#define GAIN_mask 0x00000300
#define SHDN_mask 0x00000400
#define TCal_mask 0x00000800

#define Trigger_offset 0
#define TEST_0_offset 1
#define TEST_1_offset 2
#define DAC_0_offset 3
#define DAC_1_offset 4
#define VETO_offset 5
#define MUX_0_offset 6
#define MUX_1_offset 7
#define GAIN_0_offset 8
#define GAIN_1_offset 9
#define SHDN_offset 10
#define TCal_offset 11
*/

#define VETO_mask 0x00000001		//001
#define rst_FIFO_mask 0x00000002	//010
#define test_mask 0x0000000C   		//01100
#define GPIO_DAC_nCLR 	0x00000010	//   010000
#define Gain_ctrl_1_mask 0x00000020		//110_0000
#define Gain_ctrl_2_mask 0x00000040		//110_0000
#define Mux_ctrl_1_mask 0x0000080
#define Mux_ctrl_2_mask 0x0000100
#define nSHDN_mask	0x00000200
#define Tcal_mask	0x00000400
#define RST_mask	0x00000800


#define VETO_offset 0
#define rst_FIFO_offset 1
#define TEST_0_offset 2
#define TEST_1_offset 3
#define DAC_0_offset 4
#define DAC_1_offset 5
#define trigger_DRS4 6

/*
#define MUX_0_offset 6
#define MUX_1_offset 7
#define GAIN_0_offset 8
#define GAIN_1_offset 9
#define SHDN_offset 10
#define TCal_offset 11
*/
#define DAC_references_offset DAC_0_offset
#define DAC_threshold_offset DAC_1_offset
#define GAIN_att_offset DAC_1_offset
#define GAIN_uni_offset DAC_0_offset
/*
#define MUX_signal_offset MUX_1_offset
#define MUX_cal_offset MUX_0_offset
*/
XGpio gpio;

void gpio_set_reg(u32 reg_mask, u32 reg_offset);
void gpio_unset_reg(u32 reg_mask);


#endif /* SRC_GPIO_HANDLER_H_ */
