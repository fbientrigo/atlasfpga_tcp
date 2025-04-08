/*
 * CPLD_driver.c
 *
 *  Created on: 07-07-2023
 *      Author: victor
 */
#include "CPLD_driver.h"


/*
 * Driver file to control ipcore of CPLD of CMB40
 * It will implement functions to assign values to the AXI ip core using the slave
 * registers inside the core.
 *
 *  denable <= slv_reg0(0);
	nshdn <= slv_reg0(1);
	dac_sel <= slv_reg0(3) & slv_reg0(2);
	nRst <= slv_reg0(4);
	mux_cal_signal <= slv_reg0(5);
	ADC_nCS <= slv_reg0(6);
	SPI_mezz_sel <= slv_reg0(9 downto 7);
	SPI_WR_en <= slv_reg0(10);
	-- not for spi, for mux sel output
	mezz_mux <= slv_reg0(13 downto 11);
 *
 */

u32 write_CPLD_signals()
{
	u32 ctrl_signal;
	u16 ctrl_signal_comp;
	u16 cpld_ans = 0;
	int i = 0;
	CPLD_SPI_wr_en = 1;
	//ctrl_signal =   (CPLD_mezz_mux <<13) |  (CPLD_SPI_wr_en << 12) | (CPLD_SPI_mezz_sel<<9)  |  (CPLD_ADC_nCS << 8)
	//		| (CPLD_mux0_1<<7) | (CPLD_mux0_0 <<6) | (CPLD_Tcal <<5)| (CPLD_nRst <<4) | (CPLD_dac_sel1 <<3) |(CPLD_dac_sel0 << 2)
	//		| (CPLD_nshdn << 1) | CPLD_denable;
	ctrl_signal =   (CPLD_mezz_mux <<15) |  (CPLD_SPI_wr_en << 14) | (CPLD_SPI_mezz_sel<<11) | (CPLD_gain_mux<<9) |  (CPLD_ADC_nCS << 8)
				| (CPLD_mux0_1<<7) | (CPLD_mux0_0 <<6) | (CPLD_Tcal <<5)| (CPLD_nRst <<4) | (CPLD_dac_sel1 <<3) |(CPLD_dac_sel0 << 2)
				| (CPLD_nshdn << 1) | CPLD_denable;

	//xil_printf("CPLD word:%x\n",ctrl_signal);
	ctrl_signal_comp = ctrl_signal & 0x00000fff;
	Xil_Out32(CPLD_ctrl_BaseAddr+0,ctrl_signal);
	usleep(20);
	cpld_ans = read_cpld_word();

	while(ctrl_signal_comp != cpld_ans)
	{
		//xil_printf("Attempt: %d\n sent :%x - rec:%x\n",i,ctrl_signal_comp ,cpld_ans);
		//At 10 MHz SPI SCLK sending 13 bit, should sent the word in 1.6 us. Then CPLD answer back 10 bit confirmation in 1.2 us
		Xil_Out32(CPLD_ctrl_BaseAddr+0,ctrl_signal);
		usleep(20);
		cpld_ans = read_cpld_word();

		i++;
		if (i>100) break;
	}
	//if (i>100) xil_printf("cpld_spi_wr_en 1 FAILED!!!!\n");
	//else xil_printf(">>>>>>> cpld_spi_wr_en 1 SUCCESS!\n");

	//Check if the word is the same that have been sent;
	i = 0;
	CPLD_SPI_wr_en = 0;
	//ctrl_signal =   (CPLD_mezz_mux <<13) |  (CPLD_SPI_wr_en << 12) | (CPLD_SPI_mezz_sel<<9)  |  (CPLD_ADC_nCS << 8)
	//				| (CPLD_mux0_1<<7) | (CPLD_mux0_0 <<6) | (CPLD_Tcal <<5)| (CPLD_nRst <<4) | (CPLD_dac_sel1 <<3) |(CPLD_dac_sel0 << 2)
	//				| (CPLD_nshdn << 1) | CPLD_denable;
	ctrl_signal =   (CPLD_mezz_mux <<15) |  (CPLD_SPI_wr_en << 14) | (CPLD_SPI_mezz_sel<<11) | (CPLD_gain_mux<<9) |  (CPLD_ADC_nCS << 8)
				| (CPLD_mux0_1<<7) | (CPLD_mux0_0 <<6) | (CPLD_Tcal <<5)| (CPLD_nRst <<4) | (CPLD_dac_sel1 <<3) |(CPLD_dac_sel0 << 2)
				| (CPLD_nshdn << 1) | CPLD_denable;

	ctrl_signal_comp = ctrl_signal & 0x00000fff;
	cpld_ans = 0;
	//xil_printf("CPLD word:%x\n",ctrl_signal);
	Xil_Out32(CPLD_ctrl_BaseAddr+0,ctrl_signal);
	usleep(20);
	cpld_ans = read_cpld_word();

	while(ctrl_signal_comp != cpld_ans)
	{
		//xil_printf("Attempt: %d\n sent :%x - rec:%x\n",i,ctrl_signal & 0x00000fff ,cpld_ans);
		//At 10 MHz SPI SCLK sending 13 bit, should sent the word in 1.6 us. Then CPLD answer back 10 bit confirmation in 1.2 us
		Xil_Out32(CPLD_ctrl_BaseAddr+0,ctrl_signal);
		usleep(20);
		cpld_ans = read_cpld_word();
		i++;
		if (i>100) break;
	}
	//if (i>100) xil_printf("cpld_spi_wr_en 0 FAILED!!!!\n");
	//else xil_printf(">>>>>>> cpld_spi_wr_en 0 SUCCESS!\n");
	return ctrl_signal;

}

u8 read_CPLD_status(){
	u8 cpld_wr_status;
	cpld_wr_status = Xil_In32(CPLD_ctrl_BaseAddr+4) & 0x00000001;
	return cpld_wr_status;

}
// Read 12 bit word from cpld module.
u16 read_cpld_word()
{
	u16 cpld_word;
	cpld_word = (Xil_In32(CPLD_ctrl_BaseAddr+4) & 0x00001ffe)>>1;
	//cpld_word = (Xil_In32(CPLD_ctrl_BaseAddr+4) & 0x00007ffe)>>1;
	return cpld_word;
}
/*
 * Initialization rutine for mezzanines
 */
void Mezz_CPLD_init(u8 mezz_sel){
	u32 status;
	u32 ack_cpld;
	//CPLD_mezz_mux = 3;
	CPLD_SPI_mezz_sel = mezz_sel;
	CPLD_ADC_nCS = 0;
	CPLD_nRst = 0;
	CPLD_dac_sel1 = 1;
	CPLD_dac_sel0 = 0;
	CPLD_mux0_0 = 0;
	CPLD_mux0_1 = 1;
	CPLD_Tcal = 0;
	CPLD_nshdn = 1;
	CPLD_denable = 0;
	//Power on mezzanine;
	status = write_CPLD_signals();
	//xil_printf("CPLD status:%d\n\n", status);
	//ack_cpld = read_cpld_word();
	//xil_printf("CPLD ack:%d\n\n", ack_cpld);

	//wait 10 ms;
	usleep(10000);
	CPLD_nRst = 0;//??? already is 0
	status =write_CPLD_signals();
	//xil_printf("CPLD status:%d\n\n", status);
	//ack_cpld = read_cpld_word();
	//xil_printf("CPLD ack:%d\n\n", ack_cpld);
	//wait 50 ns min
	usleep(1);
	CPLD_ADC_nCS = 1;
	status =write_CPLD_signals();
	//xil_printf("CPLD status:%u\n\n", status);
	//ack_cpld = read_cpld_word();
	//xil_printf("CPLD ack:%u\n\n", ack_cpld);
	usleep(1);
	CPLD_nRst = 1; //Habilito chips.
	status =write_CPLD_signals();
	CPLD_dac_sel1 = 1;
	CPLD_dac_sel0 = 0;
	status =write_CPLD_signals();
	//xil_printf("CPLD status:%d\n\n", status);

	//Aqui inicializo DACs


}
void CPLD_mezz_power_off(u8 mezz_sel)
{
	u32 status;
	CPLD_mezz_mux = 0;
	CPLD_SPI_mezz_sel = mezz_sel;
	CPLD_ADC_nCS = 0;
	CPLD_nRst = 1;
	CPLD_dac_sel1 = 0;
	CPLD_dac_sel0 = 0;
	CPLD_mux0_0 = 0;
	CPLD_mux0_1 = 0;
	CPLD_Tcal = 0;
	CPLD_nshdn = 0;
	CPLD_denable = 0;
	//Power on mezzanine;
	status = write_CPLD_signals();
	xil_printf("Power down mezzanine %x \n\n",mezz_sel);
	usleep(100);

}





