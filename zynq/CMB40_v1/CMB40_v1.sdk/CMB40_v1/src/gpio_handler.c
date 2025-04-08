#include "gpio_handler.h"

u32 registro = 0x00000000;

void gpio_write_reg(u32 reg_mask, u32 reg_offset, u32 data){
	XGpio_DiscreteWrite(&gpio,2,reg_mask & (data<<reg_offset)); //

}

void gpio_unset_reg(u32 reg_mask,u32 reg_offset,u32 data){
	XGpio_DiscreteClear(&gpio,2,reg_mask & (data<<reg_offset)); //
}
