#include "gpio_handler.h"

u32 registro = 0x00000000;

void gpio_set_reg(u32 reg_mask, u32 reg_offset){
	registro = (registro & ~(reg_mask)) | (1 << reg_offset);
	XGpio_DiscreteWrite(&gpio,2,registro);
}

void gpio_unset_reg(u32 reg_mask){
	registro = (registro & ~(reg_mask));
	XGpio_DiscreteWrite(&gpio,2,registro);
}
