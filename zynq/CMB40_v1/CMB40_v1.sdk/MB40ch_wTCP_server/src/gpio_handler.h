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


#define soft_trigger_mask 0x00000001	//--001
#define rst_FIFO_mask 0x00000002 	//---010
#define busy_trigger_mask 0x00000004 	//----100
#define ADC_refclk_mask 0x00000008	//---1000
#define trigg_function_mask 0x00000070//--0111_0000
#define trigg_input_mask 0x00007F80// 0111_1111_1000_0000
#define VETO_mask 0x00008000		//Pos 15
#define Rst_gral_mask 0x00010000		//Pos 16
#define en_A_vec 0x00020000		//Pos 17
#define DAC_nCLR_mask 0x00040000 // ---100_0000_0000_0000_0000 pos 18


#define soft_trigger_offset 0
#define rst_FIFO_offset 1
#define busy_trigger_offset 2
#define ADC_refclk_offset 3
#define trigg_function_offset 6
#define trigg_input_offset 14
#define VETO_offset 15
#define Rst_gral_offset 16


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
XGpio gpio,gpio1;


int soft_trig;	//Variable to enable or disable soft trigger
void gpio_write_reg(u32 reg_mask, u32 reg_offset, u32 data);
void gpio_unset_reg(u32 reg_mask,u32 reg_offset,u32 data);


#endif /* SRC_GPIO_HANDLER_H_ */
