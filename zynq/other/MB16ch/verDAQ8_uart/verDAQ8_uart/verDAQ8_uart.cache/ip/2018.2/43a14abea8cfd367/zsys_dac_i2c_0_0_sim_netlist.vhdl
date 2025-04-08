-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Thu May 19 23:44:48 2022
-- Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zsys_dac_i2c_0_0_sim_netlist.vhdl
-- Design      : zsys_dac_i2c_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z015clg485-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c_dac is
  port (
    scl_o : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    i2c_fail_ACK_reg_0 : out STD_LOGIC;
    sda_o : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    flag_data1_reg : out STD_LOGIC;
    flag_ca_reg : out STD_LOGIC;
    flag_addr_reg : out STD_LOGIC;
    flag_finish_reg : out STD_LOGIC;
    update_dac_reg : out STD_LOGIC;
    flag_data2_reg : out STD_LOGIC;
    start_com_reg : out STD_LOGIC;
    stop_com_reg : out STD_LOGIC;
    Fail_ACK_reg : out STD_LOGIC;
    \FSM_sequential_i2c_states_reg[2]_0\ : out STD_LOGIC;
    \FSM_sequential_i2c_states_reg[1]_0\ : out STD_LOGIC;
    \FSM_sequential_i2c_states_reg[0]_0\ : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    update_dac_reg_0 : in STD_LOGIC;
    sda_i : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    flag_data1_reg_0 : in STD_LOGIC;
    flag_addr_reg_0 : in STD_LOGIC;
    flag_ca_reg_0 : in STD_LOGIC;
    flag_data2_reg_0 : in STD_LOGIC;
    start_com_reg_0 : in STD_LOGIC;
    stop_com_reg_0 : in STD_LOGIC;
    update_dac : in STD_LOGIC;
    \FSM_sequential_i2c_states_reg[0]_1\ : in STD_LOGIC;
    flag_ca_reg_1 : in STD_LOGIC;
    flag_finish_reg_0 : in STD_LOGIC;
    update_dac21_in : in STD_LOGIC;
    \FSM_sequential_i2c_states_reg[2]_1\ : in STD_LOGIC;
    \FSM_sequential_i2c_states_reg[0]_2\ : in STD_LOGIC;
    Fail_ACL_i2c : in STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c_dac;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c_dac is
  signal Data_byte0 : STD_LOGIC;
  signal \Data_byte_reg_n_0_[0]\ : STD_LOGIC;
  signal \Data_byte_reg_n_0_[1]\ : STD_LOGIC;
  signal \Data_byte_reg_n_0_[2]\ : STD_LOGIC;
  signal \Data_byte_reg_n_0_[3]\ : STD_LOGIC;
  signal \Data_byte_reg_n_0_[4]\ : STD_LOGIC;
  signal \Data_byte_reg_n_0_[5]\ : STD_LOGIC;
  signal \Data_byte_reg_n_0_[6]\ : STD_LOGIC;
  signal \Data_byte_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_sequential_i2c_states[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2c_states[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2c_states[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2c_states[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2c_states[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2c_states[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2c_states[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2c_states[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2c_states[2]_i_3__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2c_states[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2c_states[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2c_states[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2c_states[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2c_states[2]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2c_states[2]_i_8_n_0\ : STD_LOGIC;
  signal SCLK_counter : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal SCLK_counter0 : STD_LOGIC;
  signal \SCLK_counter[10]_i_3_n_0\ : STD_LOGIC;
  signal \SCLK_counter[10]_i_4_n_0\ : STD_LOGIC;
  signal \SCLK_counter[10]_i_5_n_0\ : STD_LOGIC;
  signal \SCLK_counter[10]_i_6_n_0\ : STD_LOGIC;
  signal \SCLK_counter[10]_i_7_n_0\ : STD_LOGIC;
  signal \SCLK_counter[10]_i_8_n_0\ : STD_LOGIC;
  signal \SCLK_counter[10]_i_9_n_0\ : STD_LOGIC;
  signal \SCLK_counter[5]_i_2_n_0\ : STD_LOGIC;
  signal \SCLK_counter[9]_i_2_n_0\ : STD_LOGIC;
  signal \SCLK_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \SCLK_counter_reg_n_0_[10]\ : STD_LOGIC;
  signal \SCLK_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \SCLK_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \SCLK_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \SCLK_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \SCLK_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \SCLK_counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \SCLK_counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \SCLK_counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \SCLK_counter_reg_n_0_[9]\ : STD_LOGIC;
  signal \SDA_t0__7\ : STD_LOGIC;
  signal SDA_t_i_1_n_0 : STD_LOGIC;
  signal SDA_t_i_2_n_0 : STD_LOGIC;
  signal SDA_t_i_4_n_0 : STD_LOGIC;
  signal SDA_t_i_5_n_0 : STD_LOGIC;
  signal SDA_t_i_6_n_0 : STD_LOGIC;
  signal SDA_t_i_7_n_0 : STD_LOGIC;
  signal ack_counter : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal ack_counter0 : STD_LOGIC;
  signal \ack_counter[10]_i_10_n_0\ : STD_LOGIC;
  signal \ack_counter[10]_i_11_n_0\ : STD_LOGIC;
  signal \ack_counter[10]_i_4_n_0\ : STD_LOGIC;
  signal \ack_counter[10]_i_5_n_0\ : STD_LOGIC;
  signal \ack_counter[10]_i_6_n_0\ : STD_LOGIC;
  signal \ack_counter[10]_i_7_n_0\ : STD_LOGIC;
  signal \ack_counter[10]_i_8_n_0\ : STD_LOGIC;
  signal \ack_counter[10]_i_9_n_0\ : STD_LOGIC;
  signal \ack_counter[5]_i_2_n_0\ : STD_LOGIC;
  signal \ack_counter[9]_i_2_n_0\ : STD_LOGIC;
  signal \ack_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \ack_counter_reg_n_0_[10]\ : STD_LOGIC;
  signal \ack_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \ack_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \ack_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \ack_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \ack_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \ack_counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \ack_counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \ack_counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \ack_counter_reg_n_0_[9]\ : STD_LOGIC;
  signal active_o_i_1_n_0 : STD_LOGIC;
  signal active_o_i_2_n_0 : STD_LOGIC;
  signal active_o_i_3_n_0 : STD_LOGIC;
  signal active_o_i_4_n_0 : STD_LOGIC;
  signal active_o_o : STD_LOGIC;
  signal clk_delay1_i_1_n_0 : STD_LOGIC;
  signal clk_delay1_reg_n_0 : STD_LOGIC;
  signal \data[7]_i_3_n_0\ : STD_LOGIC;
  signal flag_data1_i_2_n_0 : STD_LOGIC;
  signal freq_counter0 : STD_LOGIC;
  signal \freq_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \freq_counter[10]_i_1_n_0\ : STD_LOGIC;
  signal \freq_counter[10]_i_3_n_0\ : STD_LOGIC;
  signal \freq_counter[10]_i_4_n_0\ : STD_LOGIC;
  signal \freq_counter[10]_i_5_n_0\ : STD_LOGIC;
  signal \freq_counter[10]_i_6_n_0\ : STD_LOGIC;
  signal \freq_counter[10]_i_7_n_0\ : STD_LOGIC;
  signal \freq_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \freq_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \freq_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \freq_counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \freq_counter[5]_i_1_n_0\ : STD_LOGIC;
  signal \freq_counter[6]_i_1_n_0\ : STD_LOGIC;
  signal \freq_counter[6]_i_2_n_0\ : STD_LOGIC;
  signal \freq_counter[7]_i_1_n_0\ : STD_LOGIC;
  signal \freq_counter[8]_i_1_n_0\ : STD_LOGIC;
  signal \freq_counter[9]_i_1_n_0\ : STD_LOGIC;
  signal \freq_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \freq_counter_reg_n_0_[10]\ : STD_LOGIC;
  signal \freq_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \freq_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \freq_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \freq_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \freq_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \freq_counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \freq_counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \freq_counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \freq_counter_reg_n_0_[9]\ : STD_LOGIC;
  signal i2c_busy : STD_LOGIC;
  signal i2c_busy_i_1_n_0 : STD_LOGIC;
  signal i2c_busy_i_2_n_0 : STD_LOGIC;
  signal i2c_fail : STD_LOGIC;
  signal \i2c_fail_ACK0__10\ : STD_LOGIC;
  signal i2c_fail_ACK_i_1_n_0 : STD_LOGIC;
  signal \^i2c_fail_ack_reg_0\ : STD_LOGIC;
  signal i2c_states : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of i2c_states : signal is "yes";
  signal o_sclk_i_1_n_0 : STD_LOGIC;
  signal o_sclk_i_2_n_0 : STD_LOGIC;
  signal o_sclk_i_3_n_0 : STD_LOGIC;
  signal o_sclk_i_4_n_0 : STD_LOGIC;
  signal o_sclk_i_5_n_0 : STD_LOGIC;
  signal o_sclk_i_6_n_0 : STD_LOGIC;
  signal o_sclk_i_7_n_0 : STD_LOGIC;
  signal o_sda : STD_LOGIC;
  signal o_sda_i_11_n_0 : STD_LOGIC;
  signal o_sda_i_12_n_0 : STD_LOGIC;
  signal o_sda_i_13_n_0 : STD_LOGIC;
  signal o_sda_i_14_n_0 : STD_LOGIC;
  signal o_sda_i_15_n_0 : STD_LOGIC;
  signal o_sda_i_16_n_0 : STD_LOGIC;
  signal o_sda_i_1_n_0 : STD_LOGIC;
  signal o_sda_i_3_n_0 : STD_LOGIC;
  signal o_sda_i_4_n_0 : STD_LOGIC;
  signal o_sda_i_6_n_0 : STD_LOGIC;
  signal o_sda_i_7_n_0 : STD_LOGIC;
  signal o_sda_i_8_n_0 : STD_LOGIC;
  signal o_sda_i_9_n_0 : STD_LOGIC;
  signal o_sda_reg_i_10_n_0 : STD_LOGIC;
  signal rec_ack_ok_i_1_n_0 : STD_LOGIC;
  signal rec_ack_ok_i_2_n_0 : STD_LOGIC;
  signal rec_ack_ok_i_3_n_0 : STD_LOGIC;
  signal rec_ack_ok_i_4_n_0 : STD_LOGIC;
  signal rec_ack_ok_reg_n_0 : STD_LOGIC;
  signal \^scl_o\ : STD_LOGIC;
  signal \^sda_o\ : STD_LOGIC;
  signal \^sda_t\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_i2c_states_reg[0]\ : label is "ms_ack:010,ms_send_data:001,ms_start:100,ms_fail:011,ms_stop:110,ms_end_ok:101,ms_idle:000";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_i2c_states_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_i2c_states_reg[1]\ : label is "ms_ack:010,ms_send_data:001,ms_start:100,ms_fail:011,ms_stop:110,ms_end_ok:101,ms_idle:000";
  attribute KEEP of \FSM_sequential_i2c_states_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_i2c_states_reg[2]\ : label is "ms_ack:010,ms_send_data:001,ms_start:100,ms_fail:011,ms_stop:110,ms_end_ok:101,ms_idle:000";
  attribute KEEP of \FSM_sequential_i2c_states_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \SCLK_counter[10]_i_7\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \SCLK_counter[10]_i_8\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of SDA_t_i_5 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of SDA_t_i_7 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ack_counter[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ack_counter[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ack_counter[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \ack_counter[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of active_o_i_4 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \freq_counter[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \freq_counter[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \freq_counter[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \freq_counter[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \freq_counter[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \freq_counter[6]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \freq_counter[8]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \freq_counter[9]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of o_sclk_i_7 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of o_sda_i_16 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of o_sda_i_6 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of o_sda_i_8 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of rec_ack_ok_i_3 : label is "soft_lutpair9";
begin
  i2c_fail_ACK_reg_0 <= \^i2c_fail_ack_reg_0\;
  scl_o <= \^scl_o\;
  sda_o <= \^sda_o\;
  sda_t <= \^sda_t\;
\Data_byte[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => update_dac_reg_0,
      I1 => s00_axi_aresetn,
      I2 => i2c_states(1),
      I3 => i2c_states(0),
      I4 => i2c_states(2),
      O => Data_byte0
    );
\Data_byte_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Data_byte0,
      D => Q(0),
      Q => \Data_byte_reg_n_0_[0]\,
      R => '0'
    );
\Data_byte_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Data_byte0,
      D => Q(1),
      Q => \Data_byte_reg_n_0_[1]\,
      R => '0'
    );
\Data_byte_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Data_byte0,
      D => Q(2),
      Q => \Data_byte_reg_n_0_[2]\,
      R => '0'
    );
\Data_byte_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Data_byte0,
      D => Q(3),
      Q => \Data_byte_reg_n_0_[3]\,
      R => '0'
    );
\Data_byte_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Data_byte0,
      D => Q(4),
      Q => \Data_byte_reg_n_0_[4]\,
      R => '0'
    );
\Data_byte_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Data_byte0,
      D => Q(5),
      Q => \Data_byte_reg_n_0_[5]\,
      R => '0'
    );
\Data_byte_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Data_byte0,
      D => Q(6),
      Q => \Data_byte_reg_n_0_[6]\,
      R => '0'
    );
\Data_byte_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Data_byte0,
      D => Q(7),
      Q => \Data_byte_reg_n_0_[7]\,
      R => '0'
    );
\FSM_sequential_i2c_states[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABBBABA8A888A8A"
    )
        port map (
      I0 => \FSM_sequential_i2c_states[0]_i_2_n_0\,
      I1 => \FSM_sequential_i2c_states[2]_i_4_n_0\,
      I2 => \FSM_sequential_i2c_states[2]_i_5_n_0\,
      I3 => i2c_states(0),
      I4 => SDA_t_i_2_n_0,
      I5 => i2c_states(0),
      O => \FSM_sequential_i2c_states[0]_i_1_n_0\
    );
\FSM_sequential_i2c_states[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00EFFFFF00EF0000"
    )
        port map (
      I0 => flag_finish_reg_0,
      I1 => i2c_fail,
      I2 => \out\(1),
      I3 => \FSM_sequential_i2c_states_reg[0]_2\,
      I4 => \FSM_sequential_i2c_states[2]_i_2__0_n_0\,
      I5 => in0(0),
      O => \FSM_sequential_i2c_states_reg[0]_0\
    );
\FSM_sequential_i2c_states[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F30AF000F30A0"
    )
        port map (
      I0 => o_sclk_i_6_n_0,
      I1 => \FSM_sequential_i2c_states[2]_i_8_n_0\,
      I2 => i2c_states(2),
      I3 => i2c_states(0),
      I4 => i2c_states(1),
      I5 => update_dac_reg_0,
      O => \FSM_sequential_i2c_states[0]_i_2_n_0\
    );
\FSM_sequential_i2c_states[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABBBABA8A888A8A"
    )
        port map (
      I0 => \FSM_sequential_i2c_states[1]_i_2_n_0\,
      I1 => \FSM_sequential_i2c_states[2]_i_4_n_0\,
      I2 => \FSM_sequential_i2c_states[2]_i_5_n_0\,
      I3 => i2c_states(0),
      I4 => SDA_t_i_2_n_0,
      I5 => i2c_states(1),
      O => \FSM_sequential_i2c_states[1]_i_1_n_0\
    );
\FSM_sequential_i2c_states[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06FF0600"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(0),
      I2 => \out\(2),
      I3 => \FSM_sequential_i2c_states[2]_i_2__0_n_0\,
      I4 => in0(1),
      O => \FSM_sequential_i2c_states_reg[1]_0\
    );
\FSM_sequential_i2c_states[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFBAFAFAFFBA"
    )
        port map (
      I0 => \FSM_sequential_i2c_states[1]_i_3_n_0\,
      I1 => \i2c_fail_ACK0__10\,
      I2 => i2c_states(1),
      I3 => i2c_states(0),
      I4 => i2c_states(2),
      I5 => active_o_i_2_n_0,
      O => \FSM_sequential_i2c_states[1]_i_2_n_0\
    );
\FSM_sequential_i2c_states[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => update_dac_reg_0,
      I1 => stop_com_reg_0,
      I2 => start_com_reg_0,
      I3 => i2c_states(1),
      I4 => i2c_states(2),
      O => \FSM_sequential_i2c_states[1]_i_3_n_0\
    );
\FSM_sequential_i2c_states[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEEEFEFE0EEE0E0"
    )
        port map (
      I0 => \FSM_sequential_i2c_states[2]_i_2_n_0\,
      I1 => \FSM_sequential_i2c_states[2]_i_3_n_0\,
      I2 => \FSM_sequential_i2c_states[2]_i_4_n_0\,
      I3 => \FSM_sequential_i2c_states[2]_i_5_n_0\,
      I4 => \FSM_sequential_i2c_states[2]_i_6_n_0\,
      I5 => i2c_states(2),
      O => \FSM_sequential_i2c_states[2]_i_1_n_0\
    );
\FSM_sequential_i2c_states[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800FFFF08000000"
    )
        port map (
      I0 => \out\(1),
      I1 => active_o_o,
      I2 => \out\(2),
      I3 => \out\(0),
      I4 => \FSM_sequential_i2c_states[2]_i_2__0_n_0\,
      I5 => in0(2),
      O => \FSM_sequential_i2c_states_reg[2]_0\
    );
\FSM_sequential_i2c_states[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55FC0F00"
    )
        port map (
      I0 => active_o_i_2_n_0,
      I1 => \i2c_fail_ACK0__10\,
      I2 => i2c_states(0),
      I3 => i2c_states(2),
      I4 => i2c_states(1),
      O => \FSM_sequential_i2c_states[2]_i_2_n_0\
    );
\FSM_sequential_i2c_states[2]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF32"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(0),
      I2 => update_dac,
      I3 => \out\(2),
      I4 => \FSM_sequential_i2c_states[2]_i_3__0_n_0\,
      O => \FSM_sequential_i2c_states[2]_i_2__0_n_0\
    );
\FSM_sequential_i2c_states[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FF00001010"
    )
        port map (
      I0 => i2c_states(0),
      I1 => update_dac_reg_0,
      I2 => \FSM_sequential_i2c_states[2]_i_7_n_0\,
      I3 => \FSM_sequential_i2c_states[2]_i_8_n_0\,
      I4 => i2c_states(1),
      I5 => i2c_states(2),
      O => \FSM_sequential_i2c_states[2]_i_3_n_0\
    );
\FSM_sequential_i2c_states[2]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55550C00"
    )
        port map (
      I0 => active_o_o,
      I1 => i2c_busy,
      I2 => start_com_reg_0,
      I3 => \out\(0),
      I4 => \out\(1),
      O => \FSM_sequential_i2c_states[2]_i_3__0_n_0\
    );
\FSM_sequential_i2c_states[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F2B"
    )
        port map (
      I0 => i2c_states(2),
      I1 => i2c_states(0),
      I2 => i2c_states(1),
      I3 => \SDA_t0__7\,
      O => \FSM_sequential_i2c_states[2]_i_4_n_0\
    );
\FSM_sequential_i2c_states[2]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => i2c_states(2),
      I1 => i2c_states(1),
      O => \FSM_sequential_i2c_states[2]_i_5_n_0\
    );
\FSM_sequential_i2c_states[2]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => i2c_states(0),
      I1 => rec_ack_ok_reg_n_0,
      I2 => SDA_t_i_4_n_0,
      O => \FSM_sequential_i2c_states[2]_i_6_n_0\
    );
\FSM_sequential_i2c_states[2]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => start_com_reg_0,
      I1 => stop_com_reg_0,
      O => \FSM_sequential_i2c_states[2]_i_7_n_0\
    );
\FSM_sequential_i2c_states[2]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFA8"
    )
        port map (
      I0 => active_o_i_3_n_0,
      I1 => \freq_counter_reg_n_0_[3]\,
      I2 => \freq_counter_reg_n_0_[2]\,
      I3 => \freq_counter_reg_n_0_[9]\,
      I4 => \freq_counter_reg_n_0_[10]\,
      O => \FSM_sequential_i2c_states[2]_i_8_n_0\
    );
\FSM_sequential_i2c_states_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^i2c_fail_ack_reg_0\,
      D => \FSM_sequential_i2c_states[0]_i_1_n_0\,
      Q => i2c_states(0)
    );
\FSM_sequential_i2c_states_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^i2c_fail_ack_reg_0\,
      D => \FSM_sequential_i2c_states[1]_i_1_n_0\,
      Q => i2c_states(1)
    );
\FSM_sequential_i2c_states_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^i2c_fail_ack_reg_0\,
      D => \FSM_sequential_i2c_states[2]_i_1_n_0\,
      Q => i2c_states(2)
    );
Fail_ACK_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4440"
    )
        port map (
      I0 => \FSM_sequential_i2c_states_reg[0]_2\,
      I1 => \out\(1),
      I2 => i2c_fail,
      I3 => flag_finish_reg_0,
      I4 => Fail_ACL_i2c,
      O => Fail_ACK_reg
    );
\SCLK_counter[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => i2c_states(2),
      I1 => i2c_states(0),
      I2 => \SCLK_counter_reg_n_0_[0]\,
      O => SCLK_counter(0)
    );
\SCLK_counter[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0404040C"
    )
        port map (
      I0 => i2c_states(1),
      I1 => s00_axi_aresetn,
      I2 => i2c_states(0),
      I3 => i2c_states(2),
      I4 => SDA_t_i_2_n_0,
      I5 => \SCLK_counter[10]_i_3_n_0\,
      O => SCLK_counter0
    );
\SCLK_counter[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => \SCLK_counter_reg_n_0_[8]\,
      I1 => \SCLK_counter[10]_i_4_n_0\,
      I2 => \SCLK_counter_reg_n_0_[7]\,
      I3 => \SCLK_counter_reg_n_0_[9]\,
      I4 => \SCLK_counter[10]_i_5_n_0\,
      I5 => \SCLK_counter_reg_n_0_[10]\,
      O => SCLK_counter(10)
    );
\SCLK_counter[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \SCLK_counter_reg_n_0_[5]\,
      I1 => \SCLK_counter_reg_n_0_[4]\,
      I2 => \SCLK_counter_reg_n_0_[7]\,
      I3 => \SCLK_counter_reg_n_0_[6]\,
      I4 => \SCLK_counter[10]_i_6_n_0\,
      I5 => \SCLK_counter[10]_i_7_n_0\,
      O => \SCLK_counter[10]_i_3_n_0\
    );
\SCLK_counter[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => \SCLK_counter_reg_n_0_[6]\,
      I1 => \SCLK_counter_reg_n_0_[5]\,
      I2 => \SCLK_counter_reg_n_0_[4]\,
      I3 => \SCLK_counter_reg_n_0_[3]\,
      I4 => \SCLK_counter[5]_i_2_n_0\,
      I5 => \SCLK_counter_reg_n_0_[2]\,
      O => \SCLK_counter[10]_i_4_n_0\
    );
\SCLK_counter[10]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i2c_states(0),
      I1 => i2c_states(2),
      O => \SCLK_counter[10]_i_5_n_0\
    );
\SCLK_counter[10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => \SCLK_counter[10]_i_8_n_0\,
      I1 => \SCLK_counter[10]_i_9_n_0\,
      I2 => \SCLK_counter_reg_n_0_[8]\,
      I3 => \SCLK_counter_reg_n_0_[9]\,
      I4 => \SCLK_counter_reg_n_0_[10]\,
      I5 => i2c_states(2),
      O => \SCLK_counter[10]_i_6_n_0\
    );
\SCLK_counter[10]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => \SCLK_counter_reg_n_0_[0]\,
      I1 => \SCLK_counter_reg_n_0_[1]\,
      I2 => \SCLK_counter_reg_n_0_[2]\,
      I3 => \SCLK_counter_reg_n_0_[3]\,
      O => \SCLK_counter[10]_i_7_n_0\
    );
\SCLK_counter[10]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^scl_o\,
      I1 => clk_delay1_reg_n_0,
      O => \SCLK_counter[10]_i_8_n_0\
    );
\SCLK_counter[10]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => i2c_states(1),
      O => \SCLK_counter[10]_i_9_n_0\
    );
\SCLK_counter[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0220"
    )
        port map (
      I0 => i2c_states(0),
      I1 => i2c_states(2),
      I2 => \SCLK_counter_reg_n_0_[0]\,
      I3 => \SCLK_counter_reg_n_0_[1]\,
      O => SCLK_counter(1)
    );
\SCLK_counter[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"07000800"
    )
        port map (
      I0 => \SCLK_counter_reg_n_0_[1]\,
      I1 => \SCLK_counter_reg_n_0_[0]\,
      I2 => i2c_states(2),
      I3 => i2c_states(0),
      I4 => \SCLK_counter_reg_n_0_[2]\,
      O => SCLK_counter(2)
    );
\SCLK_counter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"007F000000800000"
    )
        port map (
      I0 => \SCLK_counter_reg_n_0_[0]\,
      I1 => \SCLK_counter_reg_n_0_[1]\,
      I2 => \SCLK_counter_reg_n_0_[2]\,
      I3 => i2c_states(2),
      I4 => i2c_states(0),
      I5 => \SCLK_counter_reg_n_0_[3]\,
      O => SCLK_counter(3)
    );
\SCLK_counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => \SCLK_counter_reg_n_0_[2]\,
      I1 => \SCLK_counter_reg_n_0_[1]\,
      I2 => \SCLK_counter_reg_n_0_[0]\,
      I3 => \SCLK_counter_reg_n_0_[3]\,
      I4 => \SCLK_counter[10]_i_5_n_0\,
      I5 => \SCLK_counter_reg_n_0_[4]\,
      O => SCLK_counter(4)
    );
\SCLK_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FF000008000000"
    )
        port map (
      I0 => \SCLK_counter_reg_n_0_[4]\,
      I1 => \SCLK_counter_reg_n_0_[3]\,
      I2 => \SCLK_counter[5]_i_2_n_0\,
      I3 => \SCLK_counter_reg_n_0_[2]\,
      I4 => \SCLK_counter[10]_i_5_n_0\,
      I5 => \SCLK_counter_reg_n_0_[5]\,
      O => SCLK_counter(5)
    );
\SCLK_counter[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \SCLK_counter_reg_n_0_[1]\,
      I1 => \SCLK_counter_reg_n_0_[0]\,
      O => \SCLK_counter[5]_i_2_n_0\
    );
\SCLK_counter[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2010"
    )
        port map (
      I0 => \SCLK_counter[9]_i_2_n_0\,
      I1 => i2c_states(2),
      I2 => i2c_states(0),
      I3 => \SCLK_counter_reg_n_0_[6]\,
      O => SCLK_counter(6)
    );
\SCLK_counter[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0D000200"
    )
        port map (
      I0 => \SCLK_counter_reg_n_0_[6]\,
      I1 => \SCLK_counter[9]_i_2_n_0\,
      I2 => i2c_states(2),
      I3 => i2c_states(0),
      I4 => \SCLK_counter_reg_n_0_[7]\,
      O => SCLK_counter(7)
    );
\SCLK_counter[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00BF000000400000"
    )
        port map (
      I0 => \SCLK_counter[9]_i_2_n_0\,
      I1 => \SCLK_counter_reg_n_0_[6]\,
      I2 => \SCLK_counter_reg_n_0_[7]\,
      I3 => i2c_states(2),
      I4 => i2c_states(0),
      I5 => \SCLK_counter_reg_n_0_[8]\,
      O => SCLK_counter(8)
    );
\SCLK_counter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FF000008000000"
    )
        port map (
      I0 => \SCLK_counter_reg_n_0_[7]\,
      I1 => \SCLK_counter_reg_n_0_[6]\,
      I2 => \SCLK_counter[9]_i_2_n_0\,
      I3 => \SCLK_counter_reg_n_0_[8]\,
      I4 => \SCLK_counter[10]_i_5_n_0\,
      I5 => \SCLK_counter_reg_n_0_[9]\,
      O => SCLK_counter(9)
    );
\SCLK_counter[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \SCLK_counter_reg_n_0_[2]\,
      I1 => \SCLK_counter_reg_n_0_[1]\,
      I2 => \SCLK_counter_reg_n_0_[0]\,
      I3 => \SCLK_counter_reg_n_0_[3]\,
      I4 => \SCLK_counter_reg_n_0_[4]\,
      I5 => \SCLK_counter_reg_n_0_[5]\,
      O => \SCLK_counter[9]_i_2_n_0\
    );
\SCLK_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => SCLK_counter0,
      D => SCLK_counter(0),
      Q => \SCLK_counter_reg_n_0_[0]\,
      R => '0'
    );
\SCLK_counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => SCLK_counter0,
      D => SCLK_counter(10),
      Q => \SCLK_counter_reg_n_0_[10]\,
      R => '0'
    );
\SCLK_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => SCLK_counter0,
      D => SCLK_counter(1),
      Q => \SCLK_counter_reg_n_0_[1]\,
      R => '0'
    );
\SCLK_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => SCLK_counter0,
      D => SCLK_counter(2),
      Q => \SCLK_counter_reg_n_0_[2]\,
      R => '0'
    );
\SCLK_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => SCLK_counter0,
      D => SCLK_counter(3),
      Q => \SCLK_counter_reg_n_0_[3]\,
      R => '0'
    );
\SCLK_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => SCLK_counter0,
      D => SCLK_counter(4),
      Q => \SCLK_counter_reg_n_0_[4]\,
      R => '0'
    );
\SCLK_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => SCLK_counter0,
      D => SCLK_counter(5),
      Q => \SCLK_counter_reg_n_0_[5]\,
      R => '0'
    );
\SCLK_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => SCLK_counter0,
      D => SCLK_counter(6),
      Q => \SCLK_counter_reg_n_0_[6]\,
      R => '0'
    );
\SCLK_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => SCLK_counter0,
      D => SCLK_counter(7),
      Q => \SCLK_counter_reg_n_0_[7]\,
      R => '0'
    );
\SCLK_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => SCLK_counter0,
      D => SCLK_counter(8),
      Q => \SCLK_counter_reg_n_0_[8]\,
      R => '0'
    );
\SCLK_counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => SCLK_counter0,
      D => SCLK_counter(9),
      Q => \SCLK_counter_reg_n_0_[9]\,
      R => '0'
    );
SDA_t_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F00A0FF0000A0C00"
    )
        port map (
      I0 => SDA_t_i_2_n_0,
      I1 => \SDA_t0__7\,
      I2 => i2c_states(2),
      I3 => i2c_states(0),
      I4 => i2c_states(1),
      I5 => \^sda_t\,
      O => SDA_t_i_1_n_0
    );
SDA_t_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => SDA_t_i_4_n_0,
      I1 => rec_ack_ok_reg_n_0,
      O => SDA_t_i_2_n_0
    );
SDA_t_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \SCLK_counter_reg_n_0_[6]\,
      I1 => \SCLK_counter_reg_n_0_[5]\,
      I2 => \SCLK_counter_reg_n_0_[4]\,
      I3 => \SCLK_counter_reg_n_0_[3]\,
      I4 => SDA_t_i_5_n_0,
      I5 => SDA_t_i_6_n_0,
      O => \SDA_t0__7\
    );
SDA_t_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555F7F75555FFF7"
    )
        port map (
      I0 => \freq_counter_reg_n_0_[10]\,
      I1 => \freq_counter_reg_n_0_[8]\,
      I2 => o_sda_i_16_n_0,
      I3 => SDA_t_i_7_n_0,
      I4 => \freq_counter_reg_n_0_[9]\,
      I5 => \freq_counter_reg_n_0_[5]\,
      O => SDA_t_i_4_n_0
    );
SDA_t_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \SCLK_counter_reg_n_0_[2]\,
      I1 => \SCLK_counter_reg_n_0_[1]\,
      I2 => \SCLK_counter_reg_n_0_[0]\,
      O => SDA_t_i_5_n_0
    );
SDA_t_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \SCLK_counter_reg_n_0_[7]\,
      I1 => \SCLK_counter_reg_n_0_[8]\,
      I2 => \SCLK_counter_reg_n_0_[9]\,
      I3 => \SCLK_counter_reg_n_0_[10]\,
      I4 => clk_delay1_reg_n_0,
      I5 => \^scl_o\,
      O => SDA_t_i_6_n_0
    );
SDA_t_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FFFFFF"
    )
        port map (
      I0 => \freq_counter_reg_n_0_[0]\,
      I1 => \freq_counter_reg_n_0_[1]\,
      I2 => \freq_counter_reg_n_0_[2]\,
      I3 => \freq_counter_reg_n_0_[3]\,
      I4 => \freq_counter_reg_n_0_[4]\,
      O => SDA_t_i_7_n_0
    );
SDA_t_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^i2c_fail_ack_reg_0\,
      D => SDA_t_i_1_n_0,
      Q => \^sda_t\
    );
\ack_counter[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => i2c_states(2),
      I1 => i2c_states(1),
      I2 => \^scl_o\,
      I3 => rec_ack_ok_reg_n_0,
      I4 => \ack_counter_reg_n_0_[0]\,
      O => ack_counter(0)
    );
\ack_counter[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF080000"
    )
        port map (
      I0 => \i2c_fail_ACK0__10\,
      I1 => \ack_counter[10]_i_4_n_0\,
      I2 => SDA_t_i_2_n_0,
      I3 => \ack_counter[10]_i_5_n_0\,
      I4 => \ack_counter[10]_i_6_n_0\,
      I5 => \ack_counter[10]_i_7_n_0\,
      O => ack_counter0
    );
\ack_counter[10]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \ack_counter_reg_n_0_[3]\,
      I1 => \ack_counter_reg_n_0_[4]\,
      I2 => \ack_counter_reg_n_0_[5]\,
      I3 => \ack_counter_reg_n_0_[7]\,
      I4 => \ack_counter_reg_n_0_[6]\,
      O => \ack_counter[10]_i_10_n_0\
    );
\ack_counter[10]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \ack_counter_reg_n_0_[0]\,
      I1 => \ack_counter_reg_n_0_[1]\,
      I2 => \ack_counter_reg_n_0_[2]\,
      I3 => \ack_counter_reg_n_0_[9]\,
      I4 => \ack_counter_reg_n_0_[8]\,
      I5 => \ack_counter_reg_n_0_[10]\,
      O => \ack_counter[10]_i_11_n_0\
    );
\ack_counter[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B040"
    )
        port map (
      I0 => \ack_counter[10]_i_8_n_0\,
      I1 => \ack_counter_reg_n_0_[9]\,
      I2 => \ack_counter[10]_i_9_n_0\,
      I3 => \ack_counter_reg_n_0_[10]\,
      O => ack_counter(10)
    );
\ack_counter[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33333332"
    )
        port map (
      I0 => \ack_counter[10]_i_10_n_0\,
      I1 => \ack_counter[10]_i_11_n_0\,
      I2 => \ack_counter_reg_n_0_[10]\,
      I3 => \ack_counter_reg_n_0_[8]\,
      I4 => \ack_counter_reg_n_0_[9]\,
      O => \i2c_fail_ACK0__10\
    );
\ack_counter[10]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2022"
    )
        port map (
      I0 => i2c_states(1),
      I1 => i2c_states(2),
      I2 => rec_ack_ok_reg_n_0,
      I3 => \^scl_o\,
      O => \ack_counter[10]_i_4_n_0\
    );
\ack_counter[10]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => i2c_states(2),
      I1 => i2c_states(1),
      I2 => \^scl_o\,
      I3 => rec_ack_ok_reg_n_0,
      I4 => sda_i,
      O => \ack_counter[10]_i_5_n_0\
    );
\ack_counter[10]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => i2c_states(0),
      O => \ack_counter[10]_i_6_n_0\
    );
\ack_counter[10]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => i2c_states(1),
      I2 => i2c_states(0),
      I3 => i2c_states(2),
      I4 => \SDA_t0__7\,
      O => \ack_counter[10]_i_7_n_0\
    );
\ack_counter[10]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F7FF"
    )
        port map (
      I0 => \ack_counter_reg_n_0_[7]\,
      I1 => \ack_counter_reg_n_0_[6]\,
      I2 => \ack_counter[9]_i_2_n_0\,
      I3 => \ack_counter_reg_n_0_[8]\,
      O => \ack_counter[10]_i_8_n_0\
    );
\ack_counter[10]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => rec_ack_ok_reg_n_0,
      I1 => \^scl_o\,
      I2 => i2c_states(1),
      I3 => i2c_states(2),
      O => \ack_counter[10]_i_9_n_0\
    );
\ack_counter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000400000"
    )
        port map (
      I0 => rec_ack_ok_reg_n_0,
      I1 => \^scl_o\,
      I2 => i2c_states(1),
      I3 => i2c_states(2),
      I4 => \ack_counter_reg_n_0_[0]\,
      I5 => \ack_counter_reg_n_0_[1]\,
      O => ack_counter(1)
    );
\ack_counter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \ack_counter[10]_i_9_n_0\,
      I1 => \ack_counter_reg_n_0_[1]\,
      I2 => \ack_counter_reg_n_0_[0]\,
      I3 => \ack_counter_reg_n_0_[2]\,
      O => ack_counter(2)
    );
\ack_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => \ack_counter_reg_n_0_[1]\,
      I1 => \ack_counter_reg_n_0_[0]\,
      I2 => \ack_counter_reg_n_0_[2]\,
      I3 => \ack_counter[10]_i_9_n_0\,
      I4 => \ack_counter_reg_n_0_[3]\,
      O => ack_counter(3)
    );
\ack_counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => \ack_counter_reg_n_0_[2]\,
      I1 => \ack_counter_reg_n_0_[0]\,
      I2 => \ack_counter_reg_n_0_[1]\,
      I3 => \ack_counter_reg_n_0_[3]\,
      I4 => \ack_counter[10]_i_9_n_0\,
      I5 => \ack_counter_reg_n_0_[4]\,
      O => ack_counter(4)
    );
\ack_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000002000"
    )
        port map (
      I0 => \ack_counter[5]_i_2_n_0\,
      I1 => i2c_states(2),
      I2 => i2c_states(1),
      I3 => \^scl_o\,
      I4 => rec_ack_ok_reg_n_0,
      I5 => \ack_counter_reg_n_0_[5]\,
      O => ack_counter(5)
    );
\ack_counter[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \ack_counter_reg_n_0_[4]\,
      I1 => \ack_counter_reg_n_0_[3]\,
      I2 => \ack_counter_reg_n_0_[1]\,
      I3 => \ack_counter_reg_n_0_[0]\,
      I4 => \ack_counter_reg_n_0_[2]\,
      O => \ack_counter[5]_i_2_n_0\
    );
\ack_counter[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000001000"
    )
        port map (
      I0 => \ack_counter[9]_i_2_n_0\,
      I1 => i2c_states(2),
      I2 => i2c_states(1),
      I3 => \^scl_o\,
      I4 => rec_ack_ok_reg_n_0,
      I5 => \ack_counter_reg_n_0_[6]\,
      O => ack_counter(6)
    );
\ack_counter[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D020"
    )
        port map (
      I0 => \ack_counter_reg_n_0_[6]\,
      I1 => \ack_counter[9]_i_2_n_0\,
      I2 => \ack_counter[10]_i_9_n_0\,
      I3 => \ack_counter_reg_n_0_[7]\,
      O => ack_counter(7)
    );
\ack_counter[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BF004000"
    )
        port map (
      I0 => \ack_counter[9]_i_2_n_0\,
      I1 => \ack_counter_reg_n_0_[6]\,
      I2 => \ack_counter_reg_n_0_[7]\,
      I3 => \ack_counter[10]_i_9_n_0\,
      I4 => \ack_counter_reg_n_0_[8]\,
      O => ack_counter(8)
    );
\ack_counter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FF000008000000"
    )
        port map (
      I0 => \ack_counter_reg_n_0_[7]\,
      I1 => \ack_counter_reg_n_0_[6]\,
      I2 => \ack_counter[9]_i_2_n_0\,
      I3 => \ack_counter_reg_n_0_[8]\,
      I4 => \ack_counter[10]_i_9_n_0\,
      I5 => \ack_counter_reg_n_0_[9]\,
      O => ack_counter(9)
    );
\ack_counter[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \ack_counter_reg_n_0_[2]\,
      I1 => \ack_counter_reg_n_0_[0]\,
      I2 => \ack_counter_reg_n_0_[1]\,
      I3 => \ack_counter_reg_n_0_[3]\,
      I4 => \ack_counter_reg_n_0_[4]\,
      I5 => \ack_counter_reg_n_0_[5]\,
      O => \ack_counter[9]_i_2_n_0\
    );
\ack_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ack_counter0,
      D => ack_counter(0),
      Q => \ack_counter_reg_n_0_[0]\,
      R => '0'
    );
\ack_counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ack_counter0,
      D => ack_counter(10),
      Q => \ack_counter_reg_n_0_[10]\,
      R => '0'
    );
\ack_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ack_counter0,
      D => ack_counter(1),
      Q => \ack_counter_reg_n_0_[1]\,
      R => '0'
    );
\ack_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ack_counter0,
      D => ack_counter(2),
      Q => \ack_counter_reg_n_0_[2]\,
      R => '0'
    );
\ack_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ack_counter0,
      D => ack_counter(3),
      Q => \ack_counter_reg_n_0_[3]\,
      R => '0'
    );
\ack_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ack_counter0,
      D => ack_counter(4),
      Q => \ack_counter_reg_n_0_[4]\,
      R => '0'
    );
\ack_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ack_counter0,
      D => ack_counter(5),
      Q => \ack_counter_reg_n_0_[5]\,
      R => '0'
    );
\ack_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ack_counter0,
      D => ack_counter(6),
      Q => \ack_counter_reg_n_0_[6]\,
      R => '0'
    );
\ack_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ack_counter0,
      D => ack_counter(7),
      Q => \ack_counter_reg_n_0_[7]\,
      R => '0'
    );
\ack_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ack_counter0,
      D => ack_counter(8),
      Q => \ack_counter_reg_n_0_[8]\,
      R => '0'
    );
\ack_counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ack_counter0,
      D => ack_counter(9),
      Q => \ack_counter_reg_n_0_[9]\,
      R => '0'
    );
active_o_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF00000C00"
    )
        port map (
      I0 => active_o_i_2_n_0,
      I1 => s00_axi_aresetn,
      I2 => i2c_states(1),
      I3 => i2c_states(2),
      I4 => i2c_states(0),
      I5 => active_o_o,
      O => active_o_i_1_n_0
    );
active_o_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEEEFEFEFEFE"
    )
        port map (
      I0 => \freq_counter_reg_n_0_[9]\,
      I1 => \freq_counter_reg_n_0_[10]\,
      I2 => active_o_i_3_n_0,
      I3 => \freq_counter_reg_n_0_[2]\,
      I4 => \freq_counter_reg_n_0_[3]\,
      I5 => active_o_i_4_n_0,
      O => active_o_i_2_n_0
    );
active_o_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \freq_counter_reg_n_0_[8]\,
      I1 => \freq_counter_reg_n_0_[7]\,
      I2 => \freq_counter_reg_n_0_[6]\,
      I3 => \freq_counter_reg_n_0_[5]\,
      I4 => \freq_counter_reg_n_0_[4]\,
      O => active_o_i_3_n_0
    );
active_o_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \freq_counter_reg_n_0_[1]\,
      I1 => \freq_counter_reg_n_0_[0]\,
      O => active_o_i_4_n_0
    );
active_o_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => active_o_i_1_n_0,
      Q => active_o_o,
      R => '0'
    );
clk_delay1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"70E0FFFF70E00000"
    )
        port map (
      I0 => i2c_states(2),
      I1 => i2c_states(0),
      I2 => \^scl_o\,
      I3 => i2c_states(1),
      I4 => s00_axi_aresetn,
      I5 => clk_delay1_reg_n_0,
      O => clk_delay1_i_1_n_0
    );
clk_delay1_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => clk_delay1_i_1_n_0,
      Q => clk_delay1_reg_n_0,
      R => '0'
    );
\data[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA00000000"
    )
        port map (
      I0 => \out\(1),
      I1 => flag_data1_reg_0,
      I2 => flag_addr_reg_0,
      I3 => flag_ca_reg_0,
      I4 => flag_data2_reg_0,
      I5 => \data[7]_i_3_n_0\,
      O => E(0)
    );
\data[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => i2c_fail,
      I1 => s00_axi_aresetn,
      I2 => \out\(2),
      I3 => \out\(0),
      I4 => update_dac_reg_0,
      I5 => i2c_busy,
      O => \data[7]_i_3_n_0\
    );
flag_addr_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02020202FF02FF00"
    )
        port map (
      I0 => \out\(1),
      I1 => update_dac_reg_0,
      I2 => i2c_busy,
      I3 => flag_addr_reg_0,
      I4 => \data[7]_i_3_n_0\,
      I5 => \FSM_sequential_i2c_states_reg[0]_1\,
      O => flag_addr_reg
    );
flag_ca_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAF8F0"
    )
        port map (
      I0 => flag_data1_i_2_n_0,
      I1 => flag_addr_reg_0,
      I2 => flag_ca_reg_0,
      I3 => \data[7]_i_3_n_0\,
      I4 => \FSM_sequential_i2c_states_reg[0]_1\,
      O => flag_ca_reg
    );
flag_data1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFF80FF00"
    )
        port map (
      I0 => flag_data1_i_2_n_0,
      I1 => flag_ca_reg_0,
      I2 => flag_addr_reg_0,
      I3 => flag_data1_reg_0,
      I4 => \data[7]_i_3_n_0\,
      I5 => \FSM_sequential_i2c_states_reg[0]_1\,
      O => flag_data1_reg
    );
flag_data1_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \out\(1),
      I1 => update_dac_reg_0,
      I2 => i2c_busy,
      O => flag_data1_i_2_n_0
    );
flag_data2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAFF08"
    )
        port map (
      I0 => flag_data1_i_2_n_0,
      I1 => \data[7]_i_3_n_0\,
      I2 => flag_ca_reg_1,
      I3 => flag_data2_reg_0,
      I4 => \FSM_sequential_i2c_states_reg[0]_1\,
      O => flag_data2_reg
    );
flag_finish_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAEFFFAAAA2000"
    )
        port map (
      I0 => flag_data1_i_2_n_0,
      I1 => flag_ca_reg_1,
      I2 => flag_data2_reg_0,
      I3 => \data[7]_i_3_n_0\,
      I4 => \FSM_sequential_i2c_states_reg[0]_1\,
      I5 => flag_finish_reg_0,
      O => flag_finish_reg
    );
\freq_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \freq_counter_reg_n_0_[0]\,
      O => \freq_counter[0]_i_1_n_0\
    );
\freq_counter[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => freq_counter0,
      I1 => \freq_counter[10]_i_4_n_0\,
      I2 => \freq_counter[10]_i_5_n_0\,
      I3 => \freq_counter[10]_i_6_n_0\,
      O => \freq_counter[10]_i_1_n_0\
    );
\freq_counter[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"70E0"
    )
        port map (
      I0 => i2c_states(2),
      I1 => i2c_states(0),
      I2 => s00_axi_aresetn,
      I3 => i2c_states(1),
      O => freq_counter0
    );
\freq_counter[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF40000000"
    )
        port map (
      I0 => \freq_counter[10]_i_7_n_0\,
      I1 => \freq_counter_reg_n_0_[6]\,
      I2 => \freq_counter_reg_n_0_[7]\,
      I3 => \freq_counter_reg_n_0_[9]\,
      I4 => \freq_counter_reg_n_0_[8]\,
      I5 => \freq_counter_reg_n_0_[10]\,
      O => \freq_counter[10]_i_3_n_0\
    );
\freq_counter[10]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3001"
    )
        port map (
      I0 => \SDA_t0__7\,
      I1 => active_o_i_2_n_0,
      I2 => i2c_states(1),
      I3 => i2c_states(2),
      O => \freq_counter[10]_i_4_n_0\
    );
\freq_counter[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002020246"
    )
        port map (
      I0 => i2c_states(2),
      I1 => i2c_states(1),
      I2 => o_sclk_i_6_n_0,
      I3 => rec_ack_ok_reg_n_0,
      I4 => active_o_i_2_n_0,
      I5 => i2c_states(0),
      O => \freq_counter[10]_i_5_n_0\
    );
\freq_counter[10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000880F000000"
    )
        port map (
      I0 => SDA_t_i_4_n_0,
      I1 => rec_ack_ok_reg_n_0,
      I2 => \FSM_sequential_i2c_states[2]_i_8_n_0\,
      I3 => i2c_states(0),
      I4 => i2c_states(2),
      I5 => i2c_states(1),
      O => \freq_counter[10]_i_6_n_0\
    );
\freq_counter[10]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \freq_counter_reg_n_0_[5]\,
      I1 => \freq_counter_reg_n_0_[4]\,
      I2 => \freq_counter_reg_n_0_[0]\,
      I3 => \freq_counter_reg_n_0_[1]\,
      I4 => \freq_counter_reg_n_0_[2]\,
      I5 => \freq_counter_reg_n_0_[3]\,
      O => \freq_counter[10]_i_7_n_0\
    );
\freq_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \freq_counter_reg_n_0_[0]\,
      I1 => \freq_counter_reg_n_0_[1]\,
      O => \freq_counter[1]_i_1_n_0\
    );
\freq_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \freq_counter_reg_n_0_[0]\,
      I1 => \freq_counter_reg_n_0_[1]\,
      I2 => \freq_counter_reg_n_0_[2]\,
      O => \freq_counter[2]_i_1_n_0\
    );
\freq_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \freq_counter_reg_n_0_[2]\,
      I1 => \freq_counter_reg_n_0_[1]\,
      I2 => \freq_counter_reg_n_0_[0]\,
      I3 => \freq_counter_reg_n_0_[3]\,
      O => \freq_counter[3]_i_1_n_0\
    );
\freq_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \freq_counter_reg_n_0_[0]\,
      I1 => \freq_counter_reg_n_0_[1]\,
      I2 => \freq_counter_reg_n_0_[2]\,
      I3 => \freq_counter_reg_n_0_[3]\,
      I4 => \freq_counter_reg_n_0_[4]\,
      O => \freq_counter[4]_i_1_n_0\
    );
\freq_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \freq_counter_reg_n_0_[4]\,
      I1 => \freq_counter_reg_n_0_[3]\,
      I2 => \freq_counter_reg_n_0_[2]\,
      I3 => \freq_counter_reg_n_0_[1]\,
      I4 => \freq_counter_reg_n_0_[0]\,
      I5 => \freq_counter_reg_n_0_[5]\,
      O => \freq_counter[5]_i_1_n_0\
    );
\freq_counter[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF00008000"
    )
        port map (
      I0 => \freq_counter_reg_n_0_[3]\,
      I1 => \freq_counter_reg_n_0_[2]\,
      I2 => \freq_counter_reg_n_0_[1]\,
      I3 => \freq_counter_reg_n_0_[0]\,
      I4 => \freq_counter[6]_i_2_n_0\,
      I5 => \freq_counter_reg_n_0_[6]\,
      O => \freq_counter[6]_i_1_n_0\
    );
\freq_counter[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \freq_counter_reg_n_0_[4]\,
      I1 => \freq_counter_reg_n_0_[5]\,
      O => \freq_counter[6]_i_2_n_0\
    );
\freq_counter[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \freq_counter_reg_n_0_[6]\,
      I1 => \freq_counter[10]_i_7_n_0\,
      I2 => \freq_counter_reg_n_0_[7]\,
      O => \freq_counter[7]_i_1_n_0\
    );
\freq_counter[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => \freq_counter_reg_n_0_[7]\,
      I1 => \freq_counter_reg_n_0_[6]\,
      I2 => \freq_counter[10]_i_7_n_0\,
      I3 => \freq_counter_reg_n_0_[8]\,
      O => \freq_counter[8]_i_1_n_0\
    );
\freq_counter[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFF2000"
    )
        port map (
      I0 => \freq_counter_reg_n_0_[8]\,
      I1 => \freq_counter[10]_i_7_n_0\,
      I2 => \freq_counter_reg_n_0_[6]\,
      I3 => \freq_counter_reg_n_0_[7]\,
      I4 => \freq_counter_reg_n_0_[9]\,
      O => \freq_counter[9]_i_1_n_0\
    );
\freq_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => freq_counter0,
      D => \freq_counter[0]_i_1_n_0\,
      Q => \freq_counter_reg_n_0_[0]\,
      R => \freq_counter[10]_i_1_n_0\
    );
\freq_counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => freq_counter0,
      D => \freq_counter[10]_i_3_n_0\,
      Q => \freq_counter_reg_n_0_[10]\,
      R => \freq_counter[10]_i_1_n_0\
    );
\freq_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => freq_counter0,
      D => \freq_counter[1]_i_1_n_0\,
      Q => \freq_counter_reg_n_0_[1]\,
      R => \freq_counter[10]_i_1_n_0\
    );
\freq_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => freq_counter0,
      D => \freq_counter[2]_i_1_n_0\,
      Q => \freq_counter_reg_n_0_[2]\,
      R => \freq_counter[10]_i_1_n_0\
    );
\freq_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => freq_counter0,
      D => \freq_counter[3]_i_1_n_0\,
      Q => \freq_counter_reg_n_0_[3]\,
      R => \freq_counter[10]_i_1_n_0\
    );
\freq_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => freq_counter0,
      D => \freq_counter[4]_i_1_n_0\,
      Q => \freq_counter_reg_n_0_[4]\,
      R => \freq_counter[10]_i_1_n_0\
    );
\freq_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => freq_counter0,
      D => \freq_counter[5]_i_1_n_0\,
      Q => \freq_counter_reg_n_0_[5]\,
      R => \freq_counter[10]_i_1_n_0\
    );
\freq_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => freq_counter0,
      D => \freq_counter[6]_i_1_n_0\,
      Q => \freq_counter_reg_n_0_[6]\,
      R => \freq_counter[10]_i_1_n_0\
    );
\freq_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => freq_counter0,
      D => \freq_counter[7]_i_1_n_0\,
      Q => \freq_counter_reg_n_0_[7]\,
      R => \freq_counter[10]_i_1_n_0\
    );
\freq_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => freq_counter0,
      D => \freq_counter[8]_i_1_n_0\,
      Q => \freq_counter_reg_n_0_[8]\,
      R => \freq_counter[10]_i_1_n_0\
    );
\freq_counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => freq_counter0,
      D => \freq_counter[9]_i_1_n_0\,
      Q => \freq_counter_reg_n_0_[9]\,
      R => \freq_counter[10]_i_1_n_0\
    );
i2c_busy_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAFF2A00"
    )
        port map (
      I0 => i2c_busy_i_2_n_0,
      I1 => i2c_states(0),
      I2 => i2c_states(1),
      I3 => s00_axi_aresetn,
      I4 => i2c_busy,
      O => i2c_busy_i_1_n_0
    );
i2c_busy_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33FF77FF33FF77FC"
    )
        port map (
      I0 => \FSM_sequential_i2c_states[2]_i_8_n_0\,
      I1 => i2c_states(2),
      I2 => \FSM_sequential_i2c_states[2]_i_7_n_0\,
      I3 => i2c_states(0),
      I4 => i2c_states(1),
      I5 => update_dac_reg_0,
      O => i2c_busy_i_2_n_0
    );
i2c_busy_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => i2c_busy_i_1_n_0,
      Q => i2c_busy,
      R => '0'
    );
i2c_fail_ACK_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBAA0000AA00"
    )
        port map (
      I0 => i2c_states(0),
      I1 => \i2c_fail_ACK0__10\,
      I2 => SDA_t_i_2_n_0,
      I3 => i2c_states(1),
      I4 => i2c_states(2),
      I5 => i2c_fail,
      O => i2c_fail_ACK_i_1_n_0
    );
i2c_fail_ACK_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^i2c_fail_ack_reg_0\,
      D => i2c_fail_ACK_i_1_n_0,
      Q => i2c_fail
    );
o_sclk_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => o_sclk_i_2_n_0,
      I1 => o_sclk_i_3_n_0,
      I2 => o_sclk_i_4_n_0,
      I3 => o_sclk_i_5_n_0,
      I4 => \^scl_o\,
      O => o_sclk_i_1_n_0
    );
o_sclk_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"043404370C3C0C3C"
    )
        port map (
      I0 => active_o_i_2_n_0,
      I1 => i2c_states(2),
      I2 => i2c_states(0),
      I3 => \^scl_o\,
      I4 => rec_ack_ok_reg_n_0,
      I5 => i2c_states(1),
      O => o_sclk_i_2_n_0
    );
o_sclk_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000D00"
    )
        port map (
      I0 => i2c_states(0),
      I1 => active_o_i_2_n_0,
      I2 => i2c_states(1),
      I3 => s00_axi_aresetn,
      I4 => i2c_states(2),
      O => o_sclk_i_3_n_0
    );
o_sclk_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => SDA_t_i_4_n_0,
      I1 => active_o_i_2_n_0,
      I2 => i2c_states(2),
      I3 => i2c_states(0),
      I4 => s00_axi_aresetn,
      I5 => rec_ack_ok_reg_n_0,
      O => o_sclk_i_4_n_0
    );
o_sclk_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5B000000"
    )
        port map (
      I0 => i2c_states(0),
      I1 => o_sclk_i_6_n_0,
      I2 => i2c_states(1),
      I3 => s00_axi_aresetn,
      I4 => i2c_states(2),
      O => o_sclk_i_5_n_0
    );
o_sclk_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
        port map (
      I0 => o_sclk_i_7_n_0,
      I1 => \freq_counter_reg_n_0_[8]\,
      I2 => \freq_counter_reg_n_0_[9]\,
      I3 => \freq_counter_reg_n_0_[6]\,
      I4 => \freq_counter_reg_n_0_[7]\,
      I5 => \freq_counter_reg_n_0_[10]\,
      O => o_sclk_i_6_n_0
    );
o_sclk_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00F800"
    )
        port map (
      I0 => \freq_counter_reg_n_0_[1]\,
      I1 => \freq_counter_reg_n_0_[2]\,
      I2 => \freq_counter_reg_n_0_[3]\,
      I3 => \freq_counter_reg_n_0_[5]\,
      I4 => \freq_counter_reg_n_0_[4]\,
      O => o_sclk_i_7_n_0
    );
o_sclk_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => o_sclk_i_1_n_0,
      Q => \^scl_o\,
      R => '0'
    );
o_sda_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => o_sda_i_3_n_0,
      I1 => o_sda_i_4_n_0,
      I2 => o_sda,
      I3 => \^sda_o\,
      O => o_sda_i_1_n_0
    );
o_sda_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => o_sda_i_15_n_0,
      I1 => \SCLK_counter_reg_n_0_[4]\,
      I2 => \SCLK_counter_reg_n_0_[3]\,
      I3 => \SCLK_counter_reg_n_0_[6]\,
      I4 => \SCLK_counter_reg_n_0_[5]\,
      I5 => o_sda_i_7_n_0,
      O => o_sda_i_11_n_0
    );
o_sda_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => o_sda_i_16_n_0,
      I1 => \freq_counter[6]_i_2_n_0\,
      I2 => \freq_counter_reg_n_0_[0]\,
      I3 => \freq_counter_reg_n_0_[1]\,
      I4 => \freq_counter_reg_n_0_[3]\,
      I5 => \freq_counter_reg_n_0_[2]\,
      O => o_sda_i_12_n_0
    );
o_sda_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CACAFFF0CACA0F00"
    )
        port map (
      I0 => \Data_byte_reg_n_0_[6]\,
      I1 => \Data_byte_reg_n_0_[4]\,
      I2 => \SCLK_counter_reg_n_0_[1]\,
      I3 => \Data_byte_reg_n_0_[7]\,
      I4 => \SCLK_counter_reg_n_0_[0]\,
      I5 => \Data_byte_reg_n_0_[5]\,
      O => o_sda_i_13_n_0
    );
o_sda_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CACAFFF0CACA0F00"
    )
        port map (
      I0 => \Data_byte_reg_n_0_[2]\,
      I1 => \Data_byte_reg_n_0_[0]\,
      I2 => \SCLK_counter_reg_n_0_[1]\,
      I3 => \Data_byte_reg_n_0_[3]\,
      I4 => \SCLK_counter_reg_n_0_[0]\,
      I5 => \Data_byte_reg_n_0_[1]\,
      O => o_sda_i_14_n_0
    );
o_sda_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \SCLK_counter_reg_n_0_[10]\,
      I1 => \SCLK_counter_reg_n_0_[9]\,
      I2 => \SCLK_counter_reg_n_0_[8]\,
      I3 => \SCLK_counter_reg_n_0_[7]\,
      O => o_sda_i_15_n_0
    );
o_sda_i_16: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \freq_counter_reg_n_0_[7]\,
      I1 => \freq_counter_reg_n_0_[6]\,
      O => o_sda_i_16_n_0
    );
o_sda_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^i2c_fail_ack_reg_0\
    );
o_sda_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CECE000000FF0000"
    )
        port map (
      I0 => o_sda_i_6_n_0,
      I1 => o_sda_i_7_n_0,
      I2 => o_sda_i_8_n_0,
      I3 => active_o_i_2_n_0,
      I4 => i2c_states(2),
      I5 => o_sda_i_9_n_0,
      O => o_sda_i_3_n_0
    );
o_sda_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20232020"
    )
        port map (
      I0 => o_sda_reg_i_10_n_0,
      I1 => i2c_states(2),
      I2 => i2c_states(0),
      I3 => update_dac_reg_0,
      I4 => start_com_reg_0,
      O => o_sda_i_4_n_0
    );
o_sda_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF000000FF08FF"
    )
        port map (
      I0 => o_sda_i_11_n_0,
      I1 => o_sda_i_12_n_0,
      I2 => \^scl_o\,
      I3 => i2c_states(0),
      I4 => i2c_states(2),
      I5 => i2c_states(1),
      O => o_sda
    );
o_sda_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \freq_counter_reg_n_0_[7]\,
      I1 => \freq_counter_reg_n_0_[6]\,
      I2 => \freq_counter_reg_n_0_[3]\,
      I3 => \freq_counter_reg_n_0_[5]\,
      I4 => \freq_counter_reg_n_0_[4]\,
      O => o_sda_i_6_n_0
    );
o_sda_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \freq_counter_reg_n_0_[9]\,
      I1 => \freq_counter_reg_n_0_[10]\,
      I2 => \freq_counter_reg_n_0_[8]\,
      O => o_sda_i_7_n_0
    );
o_sda_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \freq_counter_reg_n_0_[2]\,
      I1 => \freq_counter_reg_n_0_[1]\,
      I2 => \freq_counter_reg_n_0_[0]\,
      O => o_sda_i_8_n_0
    );
o_sda_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i2c_states(1),
      I1 => i2c_states(2),
      I2 => i2c_states(0),
      O => o_sda_i_9_n_0
    );
o_sda_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^i2c_fail_ack_reg_0\,
      D => o_sda_i_1_n_0,
      Q => \^sda_o\
    );
o_sda_reg_i_10: unisim.vcomponents.MUXF7
     port map (
      I0 => o_sda_i_13_n_0,
      I1 => o_sda_i_14_n_0,
      O => o_sda_reg_i_10_n_0,
      S => \SCLK_counter_reg_n_0_[2]\
    );
rec_ack_ok_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5350737350504040"
    )
        port map (
      I0 => \FSM_sequential_i2c_states[2]_i_5_n_0\,
      I1 => rec_ack_ok_i_2_n_0,
      I2 => rec_ack_ok_i_3_n_0,
      I3 => SDA_t_i_2_n_0,
      I4 => rec_ack_ok_i_4_n_0,
      I5 => rec_ack_ok_reg_n_0,
      O => rec_ack_ok_i_1_n_0
    );
rec_ack_ok_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => i2c_states(1),
      I1 => s00_axi_aresetn,
      I2 => i2c_states(0),
      I3 => i2c_states(2),
      O => rec_ack_ok_i_2_n_0
    );
rec_ack_ok_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clk_delay1_reg_n_0,
      I1 => \^scl_o\,
      O => rec_ack_ok_i_3_n_0
    );
rec_ack_ok_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => i2c_states(0),
      I2 => i2c_states(2),
      O => rec_ack_ok_i_4_n_0
    );
rec_ack_ok_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => rec_ack_ok_i_1_n_0,
      Q => rec_ack_ok_reg_n_0,
      R => '0'
    );
start_com_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF2FF00000200"
    )
        port map (
      I0 => \out\(0),
      I1 => i2c_busy,
      I2 => \out\(2),
      I3 => s00_axi_aresetn,
      I4 => \out\(1),
      I5 => start_com_reg_0,
      O => start_com_reg
    );
stop_com_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFFCF00400000"
    )
        port map (
      I0 => i2c_busy,
      I1 => \out\(1),
      I2 => s00_axi_aresetn,
      I3 => \out\(2),
      I4 => \out\(0),
      I5 => stop_com_reg_0,
      O => stop_com_reg
    );
update_dac_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F000F20FF00FF00"
    )
        port map (
      I0 => update_dac21_in,
      I1 => i2c_fail,
      I2 => \FSM_sequential_i2c_states_reg[2]_1\,
      I3 => update_dac_reg_0,
      I4 => i2c_busy,
      I5 => \out\(1),
      O => update_dac_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c_control is
  port (
    scl_o : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    sda_o : out STD_LOGIC;
    Fail_ACL_i2c : out STD_LOGIC;
    active_o : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    sda_i : in STD_LOGIC;
    ADDR0_se : in STD_LOGIC;
    update_dac : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \command_access_byte_i_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c_control;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c_control is
  signal Fail_ACK_i_2_n_0 : STD_LOGIC;
  signal \^fail_acl_i2c\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^active_o\ : STD_LOGIC;
  signal \active_o_i_1__0_n_0\ : STD_LOGIC;
  signal ca_byte : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ca_byte0 : STD_LOGIC;
  signal dac_inst_n_10 : STD_LOGIC;
  signal dac_inst_n_11 : STD_LOGIC;
  signal dac_inst_n_12 : STD_LOGIC;
  signal dac_inst_n_13 : STD_LOGIC;
  signal dac_inst_n_14 : STD_LOGIC;
  signal dac_inst_n_15 : STD_LOGIC;
  signal dac_inst_n_16 : STD_LOGIC;
  signal dac_inst_n_5 : STD_LOGIC;
  signal dac_inst_n_6 : STD_LOGIC;
  signal dac_inst_n_7 : STD_LOGIC;
  signal dac_inst_n_8 : STD_LOGIC;
  signal dac_inst_n_9 : STD_LOGIC;
  signal data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data0 : STD_LOGIC;
  signal \data[0]_i_1_n_0\ : STD_LOGIC;
  signal \data[1]_i_1_n_0\ : STD_LOGIC;
  signal \data[2]_i_1_n_0\ : STD_LOGIC;
  signal \data[3]_i_1_n_0\ : STD_LOGIC;
  signal \data[4]_i_1_n_0\ : STD_LOGIC;
  signal \data[5]_i_1_n_0\ : STD_LOGIC;
  signal \data[6]_i_1_n_0\ : STD_LOGIC;
  signal \data[7]_i_2_n_0\ : STD_LOGIC;
  signal data_lsb : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal data_msb : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal flag_addr_reg_n_0 : STD_LOGIC;
  signal flag_ca_reg_n_0 : STD_LOGIC;
  signal flag_data1_i_3_n_0 : STD_LOGIC;
  signal flag_data1_reg_n_0 : STD_LOGIC;
  signal flag_data2_reg_n_0 : STD_LOGIC;
  signal flag_finish_i_2_n_0 : STD_LOGIC;
  signal flag_finish_reg_n_0 : STD_LOGIC;
  signal i2c_states : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of i2c_states : signal is "yes";
  signal start_com_reg_n_0 : STD_LOGIC;
  signal stop_com_reg_n_0 : STD_LOGIC;
  signal update_dac21_in : STD_LOGIC;
  signal update_dac_i_3_n_0 : STD_LOGIC;
  signal update_dac_reg_n_0 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_i2c_states_reg[0]\ : label is "i2c_start:001,i2c_sending:010,i2c_stop:011,i2c_idle:000,iSTATE:100";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_i2c_states_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_i2c_states_reg[1]\ : label is "i2c_start:001,i2c_sending:010,i2c_stop:011,i2c_idle:000,iSTATE:100";
  attribute KEEP of \FSM_sequential_i2c_states_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_i2c_states_reg[2]\ : label is "i2c_start:001,i2c_sending:010,i2c_stop:011,i2c_idle:000,iSTATE:100";
  attribute KEEP of \FSM_sequential_i2c_states_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of flag_finish_i_2 : label is "soft_lutpair11";
begin
  Fail_ACL_i2c <= \^fail_acl_i2c\;
  SR(0) <= \^sr\(0);
  active_o <= \^active_o\;
\FSM_sequential_i2c_states_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => dac_inst_n_16,
      Q => i2c_states(0)
    );
\FSM_sequential_i2c_states_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => dac_inst_n_15,
      Q => i2c_states(1)
    );
\FSM_sequential_i2c_states_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => dac_inst_n_14,
      Q => i2c_states(2)
    );
Fail_ACK_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i2c_states(0),
      I1 => i2c_states(2),
      O => Fail_ACK_i_2_n_0
    );
Fail_ACK_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => dac_inst_n_13,
      Q => \^fail_acl_i2c\
    );
\active_o_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFE00"
    )
        port map (
      I0 => i2c_states(2),
      I1 => i2c_states(0),
      I2 => i2c_states(1),
      I3 => s00_axi_aresetn,
      I4 => \^active_o\,
      O => \active_o_i_1__0_n_0\
    );
active_o_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \active_o_i_1__0_n_0\,
      Q => \^active_o\,
      R => '0'
    );
\ca_byte_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ca_byte0,
      D => \command_access_byte_i_reg[7]\(0),
      Q => ca_byte(0),
      R => '0'
    );
\ca_byte_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ca_byte0,
      D => \command_access_byte_i_reg[7]\(1),
      Q => ca_byte(1),
      R => '0'
    );
\ca_byte_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ca_byte0,
      D => \command_access_byte_i_reg[7]\(2),
      Q => ca_byte(2),
      R => '0'
    );
\ca_byte_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ca_byte0,
      D => \command_access_byte_i_reg[7]\(3),
      Q => ca_byte(3),
      R => '0'
    );
\ca_byte_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ca_byte0,
      D => \command_access_byte_i_reg[7]\(4),
      Q => ca_byte(4),
      R => '0'
    );
\ca_byte_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ca_byte0,
      D => \command_access_byte_i_reg[7]\(5),
      Q => ca_byte(5),
      R => '0'
    );
\ca_byte_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ca_byte0,
      D => \command_access_byte_i_reg[7]\(6),
      Q => ca_byte(6),
      R => '0'
    );
\ca_byte_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ca_byte0,
      D => \command_access_byte_i_reg[7]\(7),
      Q => ca_byte(7),
      R => '0'
    );
dac_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c_dac
     port map (
      E(0) => data0,
      \FSM_sequential_i2c_states_reg[0]_0\ => dac_inst_n_16,
      \FSM_sequential_i2c_states_reg[0]_1\ => flag_data1_i_3_n_0,
      \FSM_sequential_i2c_states_reg[0]_2\ => Fail_ACK_i_2_n_0,
      \FSM_sequential_i2c_states_reg[1]_0\ => dac_inst_n_15,
      \FSM_sequential_i2c_states_reg[2]_0\ => dac_inst_n_14,
      \FSM_sequential_i2c_states_reg[2]_1\ => update_dac_i_3_n_0,
      Fail_ACK_reg => dac_inst_n_13,
      Fail_ACL_i2c => \^fail_acl_i2c\,
      Q(7 downto 0) => data(7 downto 0),
      flag_addr_reg => dac_inst_n_7,
      flag_addr_reg_0 => flag_addr_reg_n_0,
      flag_ca_reg => dac_inst_n_6,
      flag_ca_reg_0 => flag_ca_reg_n_0,
      flag_ca_reg_1 => flag_finish_i_2_n_0,
      flag_data1_reg => dac_inst_n_5,
      flag_data1_reg_0 => flag_data1_reg_n_0,
      flag_data2_reg => dac_inst_n_10,
      flag_data2_reg_0 => flag_data2_reg_n_0,
      flag_finish_reg => dac_inst_n_8,
      flag_finish_reg_0 => flag_finish_reg_n_0,
      i2c_fail_ACK_reg_0 => \^sr\(0),
      in0(2 downto 0) => i2c_states(2 downto 0),
      \out\(2 downto 0) => i2c_states(2 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      scl_o => scl_o,
      sda_i => sda_i,
      sda_o => sda_o,
      sda_t => sda_t,
      start_com_reg => dac_inst_n_11,
      start_com_reg_0 => start_com_reg_n_0,
      stop_com_reg => dac_inst_n_12,
      stop_com_reg_0 => stop_com_reg_n_0,
      update_dac => update_dac,
      update_dac21_in => update_dac21_in,
      update_dac_reg => dac_inst_n_9,
      update_dac_reg_0 => update_dac_reg_n_0
    );
\data[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => data_msb(0),
      I1 => flag_data1_reg_n_0,
      I2 => ca_byte(0),
      I3 => flag_addr_reg_n_0,
      I4 => flag_ca_reg_n_0,
      O => \data[0]_i_1_n_0\
    );
\data[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => data_msb(1),
      I1 => flag_data1_reg_n_0,
      I2 => ca_byte(1),
      I3 => flag_addr_reg_n_0,
      I4 => flag_ca_reg_n_0,
      O => \data[1]_i_1_n_0\
    );
\data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CCAAAAF0CCAAAA"
    )
        port map (
      I0 => ADDR0_se,
      I1 => ca_byte(2),
      I2 => data_msb(2),
      I3 => flag_ca_reg_n_0,
      I4 => flag_addr_reg_n_0,
      I5 => flag_data1_reg_n_0,
      O => \data[2]_i_1_n_0\
    );
\data[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => data_msb(3),
      I1 => flag_data1_reg_n_0,
      I2 => ca_byte(3),
      I3 => flag_addr_reg_n_0,
      I4 => flag_ca_reg_n_0,
      O => \data[3]_i_1_n_0\
    );
\data[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E4FFE4FFFFFF00FF"
    )
        port map (
      I0 => flag_data1_reg_n_0,
      I1 => data_msb(4),
      I2 => data_lsb(4),
      I3 => flag_addr_reg_n_0,
      I4 => ca_byte(4),
      I5 => flag_ca_reg_n_0,
      O => \data[4]_i_1_n_0\
    );
\data[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA00CA000A00CA00"
    )
        port map (
      I0 => ca_byte(5),
      I1 => data_msb(5),
      I2 => flag_ca_reg_n_0,
      I3 => flag_addr_reg_n_0,
      I4 => flag_data1_reg_n_0,
      I5 => data_lsb(5),
      O => \data[5]_i_1_n_0\
    );
\data[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA00CA000A00CA00"
    )
        port map (
      I0 => ca_byte(6),
      I1 => data_msb(6),
      I2 => flag_ca_reg_n_0,
      I3 => flag_addr_reg_n_0,
      I4 => flag_data1_reg_n_0,
      I5 => data_lsb(6),
      O => \data[6]_i_1_n_0\
    );
\data[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E4FFE4FFFFFF00FF"
    )
        port map (
      I0 => flag_data1_reg_n_0,
      I1 => data_msb(7),
      I2 => data_lsb(7),
      I3 => flag_addr_reg_n_0,
      I4 => ca_byte(7),
      I5 => flag_ca_reg_n_0,
      O => \data[7]_i_2_n_0\
    );
\data_lsb[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => i2c_states(1),
      I1 => s00_axi_aresetn,
      I2 => i2c_states(2),
      I3 => i2c_states(0),
      O => ca_byte0
    );
\data_lsb_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ca_byte0,
      D => Q(0),
      Q => data_lsb(4),
      R => '0'
    );
\data_lsb_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ca_byte0,
      D => Q(1),
      Q => data_lsb(5),
      R => '0'
    );
\data_lsb_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ca_byte0,
      D => Q(2),
      Q => data_lsb(6),
      R => '0'
    );
\data_lsb_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ca_byte0,
      D => Q(3),
      Q => data_lsb(7),
      R => '0'
    );
\data_msb_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ca_byte0,
      D => Q(4),
      Q => data_msb(0),
      R => '0'
    );
\data_msb_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ca_byte0,
      D => Q(5),
      Q => data_msb(1),
      R => '0'
    );
\data_msb_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ca_byte0,
      D => Q(6),
      Q => data_msb(2),
      R => '0'
    );
\data_msb_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ca_byte0,
      D => Q(7),
      Q => data_msb(3),
      R => '0'
    );
\data_msb_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ca_byte0,
      D => Q(8),
      Q => data_msb(4),
      R => '0'
    );
\data_msb_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ca_byte0,
      D => Q(9),
      Q => data_msb(5),
      R => '0'
    );
\data_msb_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ca_byte0,
      D => Q(10),
      Q => data_msb(6),
      R => '0'
    );
\data_msb_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ca_byte0,
      D => Q(11),
      Q => data_msb(7),
      R => '0'
    );
\data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => data0,
      D => \data[0]_i_1_n_0\,
      Q => data(0),
      R => '0'
    );
\data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => data0,
      D => \data[1]_i_1_n_0\,
      Q => data(1),
      R => '0'
    );
\data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => data0,
      D => \data[2]_i_1_n_0\,
      Q => data(2),
      R => '0'
    );
\data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => data0,
      D => \data[3]_i_1_n_0\,
      Q => data(3),
      R => '0'
    );
\data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => data0,
      D => \data[4]_i_1_n_0\,
      Q => data(4),
      R => '0'
    );
\data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => data0,
      D => \data[5]_i_1_n_0\,
      Q => data(5),
      R => '0'
    );
\data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => data0,
      D => \data[6]_i_1_n_0\,
      Q => data(6),
      R => '0'
    );
\data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => data0,
      D => \data[7]_i_2_n_0\,
      Q => data(7),
      R => '0'
    );
flag_addr_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => dac_inst_n_7,
      Q => flag_addr_reg_n_0,
      R => '0'
    );
flag_ca_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => dac_inst_n_6,
      Q => flag_ca_reg_n_0,
      R => '0'
    );
flag_data1_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => i2c_states(0),
      I1 => i2c_states(2),
      I2 => s00_axi_aresetn,
      I3 => i2c_states(1),
      O => flag_data1_i_3_n_0
    );
flag_data1_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => dac_inst_n_5,
      Q => flag_data1_reg_n_0,
      R => '0'
    );
flag_data2_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => dac_inst_n_10,
      Q => flag_data2_reg_n_0,
      R => '0'
    );
flag_finish_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => flag_ca_reg_n_0,
      I1 => flag_addr_reg_n_0,
      I2 => flag_data1_reg_n_0,
      O => flag_finish_i_2_n_0
    );
flag_finish_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => dac_inst_n_8,
      Q => flag_finish_reg_n_0,
      R => '0'
    );
start_com_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => dac_inst_n_11,
      Q => start_com_reg_n_0,
      R => '0'
    );
stop_com_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => dac_inst_n_12,
      Q => stop_com_reg_n_0,
      R => '0'
    );
update_dac_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => flag_data1_reg_n_0,
      I1 => flag_addr_reg_n_0,
      I2 => flag_ca_reg_n_0,
      I3 => flag_data2_reg_n_0,
      O => update_dac21_in
    );
update_dac_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => i2c_states(2),
      I2 => i2c_states(0),
      O => update_dac_i_3_n_0
    );
update_dac_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => dac_inst_n_9,
      Q => update_dac_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dac_i2c_v1_0_S00_AXI is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    Fail_ACL_i2c : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    scl_o : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    sda_o : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    sda_i : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dac_i2c_v1_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dac_i2c_v1_0_S00_AXI is
  signal ADDR0_se : STD_LOGIC;
  signal \^fail_acl_i2c\ : STD_LOGIC;
  signal Fail_ack_axi : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal active_o : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal command_access_byte_i : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \data_byte_i_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_byte_i_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_byte_i_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_byte_i_reg_n_0_[3]\ : STD_LOGIC;
  signal ena_read0_out : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rst_i : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[9]\ : STD_LOGIC;
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg1[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[1]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[9]\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg_rden : STD_LOGIC;
  signal \slv_reg_wren__2\ : STD_LOGIC;
  signal update_dac : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \axi_awaddr[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of axi_awready_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \slv_reg2[31]_i_2\ : label is "soft_lutpair13";
begin
  Fail_ACL_i2c <= \^fail_acl_i2c\;
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
ADDR0_se_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ena_read0_out,
      D => \slv_reg0_reg_n_0_[2]\,
      Q => ADDR0_se,
      R => '0'
    );
Fail_ack_axi_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ena_read0_out,
      D => \^fail_acl_i2c\,
      Q => Fail_ack_axi,
      R => '0'
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      S => rst_i
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      S => rst_i
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => rst_i
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^s_axi_awready\,
      I4 => axi_awaddr(2),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^s_axi_awready\,
      I4 => axi_awaddr(3),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => axi_awaddr(2),
      R => rst_i
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => axi_awaddr(3),
      R => rst_i
    );
axi_awready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^s_axi_awready\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => rst_i
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7444444444444444"
    )
        port map (
      I0 => s00_axi_bready,
      I1 => \^s00_axi_bvalid\,
      I2 => s00_axi_awvalid,
      I3 => \^s_axi_awready\,
      I4 => \^s_axi_wready\,
      I5 => s00_axi_wvalid,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => rst_i
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(0),
      I1 => \slv_reg0_reg_n_0_[0]\,
      I2 => slv_reg3(0),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[0]\,
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(10),
      I1 => \slv_reg0_reg_n_0_[10]\,
      I2 => slv_reg3(10),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[10]\,
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(11),
      I1 => \slv_reg0_reg_n_0_[11]\,
      I2 => slv_reg3(11),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[11]\,
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(12),
      I1 => \slv_reg0_reg_n_0_[12]\,
      I2 => slv_reg3(12),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[12]\,
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(13),
      I1 => \slv_reg0_reg_n_0_[13]\,
      I2 => slv_reg3(13),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[13]\,
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(14),
      I1 => \slv_reg0_reg_n_0_[14]\,
      I2 => slv_reg3(14),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[14]\,
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(15),
      I1 => \slv_reg0_reg_n_0_[15]\,
      I2 => slv_reg3(15),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[15]\,
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(16),
      I1 => \slv_reg0_reg_n_0_[16]\,
      I2 => slv_reg3(16),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[16]\,
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(17),
      I1 => \slv_reg0_reg_n_0_[17]\,
      I2 => slv_reg3(17),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[17]\,
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(18),
      I1 => \slv_reg0_reg_n_0_[18]\,
      I2 => slv_reg3(18),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[18]\,
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(19),
      I1 => \slv_reg0_reg_n_0_[19]\,
      I2 => slv_reg3(19),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[19]\,
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(1),
      I1 => \slv_reg0_reg_n_0_[1]\,
      I2 => slv_reg3(1),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[1]\,
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(20),
      I1 => \slv_reg0_reg_n_0_[20]\,
      I2 => slv_reg3(20),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[20]\,
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(21),
      I1 => \slv_reg0_reg_n_0_[21]\,
      I2 => slv_reg3(21),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[21]\,
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(22),
      I1 => \slv_reg0_reg_n_0_[22]\,
      I2 => slv_reg3(22),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[22]\,
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(23),
      I1 => \slv_reg0_reg_n_0_[23]\,
      I2 => slv_reg3(23),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[23]\,
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(24),
      I1 => \slv_reg0_reg_n_0_[24]\,
      I2 => slv_reg3(24),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[24]\,
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(25),
      I1 => \slv_reg0_reg_n_0_[25]\,
      I2 => slv_reg3(25),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[25]\,
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(26),
      I1 => \slv_reg0_reg_n_0_[26]\,
      I2 => slv_reg3(26),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[26]\,
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(27),
      I1 => \slv_reg0_reg_n_0_[27]\,
      I2 => slv_reg3(27),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[27]\,
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(28),
      I1 => \slv_reg0_reg_n_0_[28]\,
      I2 => slv_reg3(28),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[28]\,
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(29),
      I1 => \slv_reg0_reg_n_0_[29]\,
      I2 => slv_reg3(29),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[29]\,
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(2),
      I1 => \slv_reg0_reg_n_0_[2]\,
      I2 => slv_reg3(2),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[2]\,
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(30),
      I1 => \slv_reg0_reg_n_0_[30]\,
      I2 => slv_reg3(30),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[30]\,
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      O => slv_reg_rden
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(31),
      I1 => \slv_reg0_reg_n_0_[31]\,
      I2 => slv_reg3(31),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[31]\,
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(3),
      I1 => \slv_reg0_reg_n_0_[3]\,
      I2 => slv_reg3(3),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[3]\,
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(4),
      I1 => \slv_reg0_reg_n_0_[4]\,
      I2 => slv_reg3(4),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[4]\,
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(5),
      I1 => \slv_reg0_reg_n_0_[5]\,
      I2 => slv_reg3(5),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[5]\,
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(6),
      I1 => \slv_reg0_reg_n_0_[6]\,
      I2 => slv_reg3(6),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[6]\,
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(7),
      I1 => \slv_reg0_reg_n_0_[7]\,
      I2 => slv_reg3(7),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[7]\,
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(8),
      I1 => \slv_reg0_reg_n_0_[8]\,
      I2 => slv_reg3(8),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[8]\,
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(9),
      I1 => \slv_reg0_reg_n_0_[9]\,
      I2 => slv_reg3(9),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[9]\,
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => rst_i
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => rst_i
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => rst_i
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => rst_i
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => rst_i
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => rst_i
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => rst_i
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => rst_i
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => rst_i
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => rst_i
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => rst_i
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => rst_i
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => rst_i
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => rst_i
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => rst_i
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => rst_i
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => rst_i
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => rst_i
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => rst_i
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => rst_i
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => rst_i
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => rst_i
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => rst_i
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => rst_i
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => rst_i
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => rst_i
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => rst_i
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => rst_i
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => rst_i
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => rst_i
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => rst_i
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => rst_i
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => rst_i
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => rst_i
    );
\command_access_byte_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ena_read0_out,
      D => \slv_reg2_reg_n_0_[0]\,
      Q => command_access_byte_i(0),
      R => '0'
    );
\command_access_byte_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ena_read0_out,
      D => \slv_reg2_reg_n_0_[1]\,
      Q => command_access_byte_i(1),
      R => '0'
    );
\command_access_byte_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ena_read0_out,
      D => \slv_reg2_reg_n_0_[2]\,
      Q => command_access_byte_i(2),
      R => '0'
    );
\command_access_byte_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ena_read0_out,
      D => \slv_reg2_reg_n_0_[3]\,
      Q => command_access_byte_i(3),
      R => '0'
    );
\command_access_byte_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ena_read0_out,
      D => \slv_reg2_reg_n_0_[4]\,
      Q => command_access_byte_i(4),
      R => '0'
    );
\command_access_byte_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ena_read0_out,
      D => \slv_reg2_reg_n_0_[5]\,
      Q => command_access_byte_i(5),
      R => '0'
    );
\command_access_byte_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ena_read0_out,
      D => \slv_reg2_reg_n_0_[6]\,
      Q => command_access_byte_i(6),
      R => '0'
    );
\command_access_byte_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ena_read0_out,
      D => \slv_reg2_reg_n_0_[7]\,
      Q => command_access_byte_i(7),
      R => '0'
    );
\data_byte_i[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAAAAAA"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_wready\,
      I3 => \^s_axi_awready\,
      I4 => s00_axi_awvalid,
      O => ena_read0_out
    );
\data_byte_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ena_read0_out,
      D => \slv_reg2_reg_n_0_[8]\,
      Q => \data_byte_i_reg_n_0_[0]\,
      R => '0'
    );
\data_byte_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ena_read0_out,
      D => \slv_reg2_reg_n_0_[18]\,
      Q => p_0_in(6),
      R => '0'
    );
\data_byte_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ena_read0_out,
      D => \slv_reg2_reg_n_0_[19]\,
      Q => p_0_in(7),
      R => '0'
    );
\data_byte_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ena_read0_out,
      D => \slv_reg2_reg_n_0_[9]\,
      Q => \data_byte_i_reg_n_0_[1]\,
      R => '0'
    );
\data_byte_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ena_read0_out,
      D => \slv_reg2_reg_n_0_[10]\,
      Q => \data_byte_i_reg_n_0_[2]\,
      R => '0'
    );
\data_byte_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ena_read0_out,
      D => \slv_reg2_reg_n_0_[11]\,
      Q => \data_byte_i_reg_n_0_[3]\,
      R => '0'
    );
\data_byte_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ena_read0_out,
      D => \slv_reg2_reg_n_0_[12]\,
      Q => p_0_in(0),
      R => '0'
    );
\data_byte_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ena_read0_out,
      D => \slv_reg2_reg_n_0_[13]\,
      Q => p_0_in(1),
      R => '0'
    );
\data_byte_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ena_read0_out,
      D => \slv_reg2_reg_n_0_[14]\,
      Q => p_0_in(2),
      R => '0'
    );
\data_byte_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ena_read0_out,
      D => \slv_reg2_reg_n_0_[15]\,
      Q => p_0_in(3),
      R => '0'
    );
\data_byte_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ena_read0_out,
      D => \slv_reg2_reg_n_0_[16]\,
      Q => p_0_in(4),
      R => '0'
    );
\data_byte_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ena_read0_out,
      D => \slv_reg2_reg_n_0_[17]\,
      Q => p_0_in(5),
      R => '0'
    );
inst_i2c_control: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c_control
     port map (
      ADDR0_se => ADDR0_se,
      Fail_ACL_i2c => \^fail_acl_i2c\,
      Q(11 downto 4) => p_0_in(7 downto 0),
      Q(3) => \data_byte_i_reg_n_0_[3]\,
      Q(2) => \data_byte_i_reg_n_0_[2]\,
      Q(1) => \data_byte_i_reg_n_0_[1]\,
      Q(0) => \data_byte_i_reg_n_0_[0]\,
      SR(0) => rst_i,
      active_o => active_o,
      \command_access_byte_i_reg[7]\(7 downto 0) => command_access_byte_i(7 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      scl_o => scl_o,
      sda_i => sda_i,
      sda_o => sda_o,
      sda_t => sda_t,
      update_dac => update_dac
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => \slv_reg_wren__2\,
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(1),
      O => \slv_reg0[15]_i_1_n_0\
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => \slv_reg_wren__2\,
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(2),
      O => \slv_reg0[23]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => \slv_reg_wren__2\,
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(3),
      O => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => \slv_reg_wren__2\,
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(0),
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_reg0_reg_n_0_[0]\,
      R => rst_i
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg0_reg_n_0_[10]\,
      R => rst_i
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg0_reg_n_0_[11]\,
      R => rst_i
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg0_reg_n_0_[12]\,
      R => rst_i
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg0_reg_n_0_[13]\,
      R => rst_i
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg0_reg_n_0_[14]\,
      R => rst_i
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg0_reg_n_0_[15]\,
      R => rst_i
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg0_reg_n_0_[16]\,
      R => rst_i
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg0_reg_n_0_[17]\,
      R => rst_i
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg0_reg_n_0_[18]\,
      R => rst_i
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg0_reg_n_0_[19]\,
      R => rst_i
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg0_reg_n_0_[1]\,
      R => rst_i
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg0_reg_n_0_[20]\,
      R => rst_i
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg0_reg_n_0_[21]\,
      R => rst_i
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg0_reg_n_0_[22]\,
      R => rst_i
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg0_reg_n_0_[23]\,
      R => rst_i
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg0_reg_n_0_[24]\,
      R => rst_i
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg0_reg_n_0_[25]\,
      R => rst_i
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg0_reg_n_0_[26]\,
      R => rst_i
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg0_reg_n_0_[27]\,
      R => rst_i
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg0_reg_n_0_[28]\,
      R => rst_i
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg0_reg_n_0_[29]\,
      R => rst_i
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg0_reg_n_0_[2]\,
      R => rst_i
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg0_reg_n_0_[30]\,
      R => rst_i
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg0_reg_n_0_[31]\,
      R => rst_i
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg0_reg_n_0_[3]\,
      R => rst_i
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg0_reg_n_0_[4]\,
      R => rst_i
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg0_reg_n_0_[5]\,
      R => rst_i
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg0_reg_n_0_[6]\,
      R => rst_i
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg0_reg_n_0_[7]\,
      R => rst_i
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg0_reg_n_0_[8]\,
      R => rst_i
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg0_reg_n_0_[9]\,
      R => rst_i
    );
\slv_reg1[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \slv_reg_wren__2\,
      I2 => Fail_ack_axi,
      I3 => \slv_reg1[1]_i_2_n_0\,
      I4 => slv_reg1(0),
      O => \slv_reg1[0]_i_1_n_0\
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => \slv_reg_wren__2\,
      I3 => s00_axi_wstrb(1),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \slv_reg_wren__2\,
      I2 => active_o,
      I3 => \slv_reg1[1]_i_2_n_0\,
      I4 => slv_reg1(1),
      O => \slv_reg1[1]_i_1_n_0\
    );
\slv_reg1[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08FF"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => s00_axi_wstrb(0),
      I2 => axi_awaddr(3),
      I3 => \slv_reg_wren__2\,
      O => \slv_reg1[1]_i_2_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => \slv_reg_wren__2\,
      I3 => s00_axi_wstrb(2),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => \slv_reg_wren__2\,
      I3 => s00_axi_wstrb(3),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => \slv_reg_wren__2\,
      I3 => s00_axi_wstrb(0),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg1[0]_i_1_n_0\,
      Q => slv_reg1(0),
      R => rst_i
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg1(10),
      R => rst_i
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg1(11),
      R => rst_i
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg1(12),
      R => rst_i
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg1(13),
      R => rst_i
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg1(14),
      R => rst_i
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg1(15),
      R => rst_i
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg1(16),
      R => rst_i
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg1(17),
      R => rst_i
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg1(18),
      R => rst_i
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg1(19),
      R => rst_i
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg1[1]_i_1_n_0\,
      Q => slv_reg1(1),
      R => rst_i
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg1(20),
      R => rst_i
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg1(21),
      R => rst_i
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg1(22),
      R => rst_i
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg1(23),
      R => rst_i
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg1(24),
      R => rst_i
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg1(25),
      R => rst_i
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg1(26),
      R => rst_i
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg1(27),
      R => rst_i
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg1(28),
      R => rst_i
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg1(29),
      R => rst_i
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg1(2),
      R => rst_i
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg1(30),
      R => rst_i
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg1(31),
      R => rst_i
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg1(3),
      R => rst_i
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg1(4),
      R => rst_i
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg1(5),
      R => rst_i
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg1(6),
      R => rst_i
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg1(7),
      R => rst_i
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg1(8),
      R => rst_i
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg1(9),
      R => rst_i
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => \slv_reg_wren__2\,
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(1),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => \slv_reg_wren__2\,
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(2),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => \slv_reg_wren__2\,
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(3),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^s_axi_awready\,
      I2 => \^s_axi_wready\,
      I3 => s00_axi_wvalid,
      O => \slv_reg_wren__2\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => \slv_reg_wren__2\,
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(0),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_reg2_reg_n_0_[0]\,
      R => rst_i
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg2_reg_n_0_[10]\,
      R => rst_i
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg2_reg_n_0_[11]\,
      R => rst_i
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg2_reg_n_0_[12]\,
      R => rst_i
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg2_reg_n_0_[13]\,
      R => rst_i
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg2_reg_n_0_[14]\,
      R => rst_i
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg2_reg_n_0_[15]\,
      R => rst_i
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg2_reg_n_0_[16]\,
      R => rst_i
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg2_reg_n_0_[17]\,
      R => rst_i
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg2_reg_n_0_[18]\,
      R => rst_i
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg2_reg_n_0_[19]\,
      R => rst_i
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg2_reg_n_0_[1]\,
      R => rst_i
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg2_reg_n_0_[20]\,
      R => rst_i
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg2_reg_n_0_[21]\,
      R => rst_i
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg2_reg_n_0_[22]\,
      R => rst_i
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg2_reg_n_0_[23]\,
      R => rst_i
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg2_reg_n_0_[24]\,
      R => rst_i
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg2_reg_n_0_[25]\,
      R => rst_i
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg2_reg_n_0_[26]\,
      R => rst_i
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg2_reg_n_0_[27]\,
      R => rst_i
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg2_reg_n_0_[28]\,
      R => rst_i
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg2_reg_n_0_[29]\,
      R => rst_i
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg2_reg_n_0_[2]\,
      R => rst_i
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg2_reg_n_0_[30]\,
      R => rst_i
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg2_reg_n_0_[31]\,
      R => rst_i
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg2_reg_n_0_[3]\,
      R => rst_i
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg2_reg_n_0_[4]\,
      R => rst_i
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg2_reg_n_0_[5]\,
      R => rst_i
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg2_reg_n_0_[6]\,
      R => rst_i
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg2_reg_n_0_[7]\,
      R => rst_i
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg2_reg_n_0_[8]\,
      R => rst_i
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg2_reg_n_0_[9]\,
      R => rst_i
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => \slv_reg_wren__2\,
      I3 => s00_axi_wstrb(1),
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => \slv_reg_wren__2\,
      I3 => s00_axi_wstrb(2),
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => \slv_reg_wren__2\,
      I3 => s00_axi_wstrb(3),
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => \slv_reg_wren__2\,
      I3 => s00_axi_wstrb(0),
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg3(0),
      R => rst_i
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg3(10),
      R => rst_i
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg3(11),
      R => rst_i
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg3(12),
      R => rst_i
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg3(13),
      R => rst_i
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg3(14),
      R => rst_i
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg3(15),
      R => rst_i
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg3(16),
      R => rst_i
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg3(17),
      R => rst_i
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg3(18),
      R => rst_i
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg3(19),
      R => rst_i
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg3(1),
      R => rst_i
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg3(20),
      R => rst_i
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg3(21),
      R => rst_i
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg3(22),
      R => rst_i
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg3(23),
      R => rst_i
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => rst_i
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => rst_i
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg3(26),
      R => rst_i
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg3(27),
      R => rst_i
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg3(28),
      R => rst_i
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg3(29),
      R => rst_i
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg3(2),
      R => rst_i
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => rst_i
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => rst_i
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg3(3),
      R => rst_i
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg3(4),
      R => rst_i
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg3(5),
      R => rst_i
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg3(6),
      R => rst_i
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg3(7),
      R => rst_i
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg3(8),
      R => rst_i
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg3(9),
      R => rst_i
    );
update_dac_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ena_read0_out,
      D => \slv_reg0_reg_n_0_[1]\,
      Q => update_dac,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dac_i2c_v1_0 is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    Fail_ACL_i2c : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    scl_o : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    sda_o : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    sda_i : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dac_i2c_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dac_i2c_v1_0 is
begin
dac_i2c_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dac_i2c_v1_0_S00_AXI
     port map (
      Fail_ACL_i2c => Fail_ACL_i2c,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      scl_o => scl_o,
      sda_i => sda_i,
      sda_o => sda_o,
      sda_t => sda_t
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    sda_i : in STD_LOGIC;
    sda_o : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    scl_i : in STD_LOGIC;
    scl_o : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    Fail_ACL_i2c : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "zsys_dac_i2c_0_0,dac_i2c_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "dac_i2c_v1_0,Vivado 2018.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_0_FCLK_CLK0";
  attribute x_interface_info of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute x_interface_parameter of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW";
  attribute x_interface_info of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute x_interface_info of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute x_interface_info of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute x_interface_info of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute x_interface_info of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute x_interface_info of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute x_interface_info of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute x_interface_info of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute x_interface_info of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute x_interface_info of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute x_interface_info of scl_i : signal is "xilinx.com:interface:iic:1.0 DAC_I2C SCL_I";
  attribute x_interface_info of scl_o : signal is "xilinx.com:interface:iic:1.0 DAC_I2C SCL_O";
  attribute x_interface_info of scl_t : signal is "xilinx.com:interface:iic:1.0 DAC_I2C SCL_T";
  attribute x_interface_info of sda_i : signal is "xilinx.com:interface:iic:1.0 DAC_I2C SDA_I";
  attribute x_interface_parameter of sda_i : signal is "XIL_INTERFACENAME DAC_I2C, BOARD.ASSOCIATED_PARAM IIC_BOARD_INTERFACE";
  attribute x_interface_info of sda_o : signal is "xilinx.com:interface:iic:1.0 DAC_I2C SDA_O";
  attribute x_interface_info of sda_t : signal is "xilinx.com:interface:iic:1.0 DAC_I2C SDA_T";
  attribute x_interface_info of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute x_interface_info of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute x_interface_info of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute x_interface_parameter of s00_axi_awaddr : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 1e+08, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute x_interface_info of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute x_interface_info of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute x_interface_info of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute x_interface_info of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute x_interface_info of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute x_interface_info of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
  scl_t <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dac_i2c_v1_0
     port map (
      Fail_ACL_i2c => Fail_ACL_i2c,
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      scl_o => scl_o,
      sda_i => sda_i,
      sda_o => sda_o,
      sda_t => sda_t
    );
end STRUCTURE;
