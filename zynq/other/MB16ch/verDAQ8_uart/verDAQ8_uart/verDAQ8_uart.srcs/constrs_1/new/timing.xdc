#defines the real input pin clock, default is 50% duty cycle
set tperiod 6.666;
create_clock -period $tperiod -name Lclk0  [get_ports {B0_LCLK_P}]

#create a virtual clock with opposite edges than Lclk, so it is like the signal that is really generating data_clk
#defines the clock "seen" by the logic (because we take the data from the negative output) so is inverted
#create_generated_clock  -name Lclk_B -source [get_ports {B0_LCLK_P}] -invert -divide_by 1 -add -master_clock Lclk [get_pins microprocessor_subsystem_i/ADC_readout_buff_0/U0/o_Lclk]

#create the generated clock, define the edges from Lclk, best choice. 
# 6 veces mas lento que LCLK y proviene de AD_CLK este reloj
create_generated_clock -name data_clk -source [get_ports {B0_LCLK_P}] -edges {2 8 14} -add -master_clock Lclk0 [get_pins -hier -filter {NAME =~ */bufr_ad_n/O}]

create_generated_clock -name data_clk_G -source [get_pins -hier -filter {NAME =~ */bufr_ad_n/O}] -edges {2 8 14} -add -master_clock Lclk0 [get_pins -hier -filter {NAME =~ */data_clk_bufg/BUFG_O*}]
# Set two clocks as asynchronous
set_clock_groups -asynchronous  -group [get_clocks -include_generated_clocks Lclk*]
          