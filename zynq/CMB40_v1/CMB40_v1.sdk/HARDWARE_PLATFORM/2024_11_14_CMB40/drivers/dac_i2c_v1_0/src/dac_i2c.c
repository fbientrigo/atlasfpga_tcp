

/***************************** Include Files *******************************/
#include "dac_i2c.h"

/************************** Function Definitions ***************************/


u32 command_access(u32 ca_byte) //Escribe el bit de acceso en el IPCORE
{
    u32 mask_ca_byte = 0x000000ff;
    u32 ca_data;
    ca_data = ca_byte & mask_ca_byte;
    return ca_data;
}
u32 dac_byte(u32 data_dac)
{
    u32 mask_dac_byte = 0x000fff00;
    u32 dac_byte;
    dac_byte = (data_dac << 8) & mask_dac_byte;
    return dac_byte;
}

//Leo estado de dac si esta activo
int is_active(u32 BaseAddr)  
{
    return ( Xil_In32(BaseAddr+DAC_I2C_S00_AXI_SLV_REG1_OFFSET) >>1 & 0x00000001);
}

int read_ack_status(u32 BaseAddr) //Lee bit de status del ACK del i2c
{
    return ( Xil_In32(BaseAddr+DAC_I2C_S00_AXI_SLV_REG1_OFFSET) & 0x00000001);
}


void write_dac(u32 BaseAddr,u32 ca_word,u32 data,u32 ADDR)
{
	u32 ca_byte;
	u32 data_dac;
	u32 slvReg2;
	u32 ena_read,update,ADDR01,slvReg0;
    ca_byte = command_access(ca_word);
    data_dac = dac_byte(data);
    slvReg2 = data_dac | ca_byte;  
    
    Xil_Out32(BaseAddr+DAC_I2C_S00_AXI_SLV_REG2_OFFSET,slvReg2); // Escribo en el registro slv_reg2 los bits ca y data    
    ena_read = 0; //Por el momento no implementado
    update = 1 << 1 & 0x00000002; // subo update para enviar datos al DAC
    ADDR01 = (ADDR << 2) & 0x00000004 ;//Selección de que dac enviar la info

    slvReg0 = ((ADDR01 | update | ena_read) & 0x00000007);
    Xil_Out32(BaseAddr+DAC_I2C_S00_AXI_SLV_REG0_OFFSET,slvReg0);// Escribo en el registro slv_reg0 los bits de comandos
    //wait por un tiempo o hasta que este activo...
    //while(is_active(BaseAddr));//Si esta en alto puedo bajar update;
    
    update = 0 << 1 & 0x00000002; // Bajo update
    slvReg0 = ((ADDR01 | update | ena_read) & 0x00000007);
    Xil_Out32(BaseAddr+DAC_I2C_S00_AXI_SLV_REG0_OFFSET,slvReg0);// Escribo en el registro slv_reg0 los bits de comandos

}

//Similar a anterior funcion pero escribes el canal y el dato
int write_dac_voltage(u32 BaseAddr,u32 ch, u32 data,u32 ADDR)
{
	u32 ca_byte;
	u32 data_dac;
	u32 slvReg2;
	u32 ena_read,update,ADDR01,slvReg0;
		
	ca_byte = 0x00000030 | ch; // 3 por que es 0011 que corresponde al comando de escritura y actualizacion del DAC luego los bits de ch son los ultimos 4
	ca_byte = command_access(ca_byte);
	data_dac = dac_byte(data);
	slvReg2 = data_dac | ca_byte;
	
	Xil_Out32(BaseAddr+DAC_I2C_S00_AXI_SLV_REG2_OFFSET,slvReg2); // Escribo en el registro slv_reg2 los bits ca y data
	
	ena_read = 0; //Por el momento no implementado
    update = 1 << 1 & 0x00000002; // subo update para enviar datos al DAC
    ADDR01 = (ADDR << 2) & 0x00000004 ;//Selección de que dac enviar la info
	slvReg0 = ((ADDR01 | update | ena_read) & 0x00000007);
	
	Xil_Out32(BaseAddr+DAC_I2C_S00_AXI_SLV_REG0_OFFSET,slvReg0);// Escribo en el registro slv_reg0 los bits de comandos
	//wait por un tiempo o hasta que este activo...
	//while(is_active(BaseAddr));//Si esta en alto puedo bajar update;
	
	update = 0 << 1 & 0x00000002; // Bajo update
	slvReg0 = ((ADDR01 | update | ena_read) & 0x00000007);
	Xil_Out32(BaseAddr+DAC_I2C_S00_AXI_SLV_REG0_OFFSET,slvReg0);// Escribo en el registro slv_reg0 los bits de comandos
	return 1;
}
